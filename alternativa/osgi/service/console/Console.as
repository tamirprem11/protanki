package alternativa.osgi.service.console
{
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.command.FormattedOutput;
   import alternativa.osgi.service.console.variables.ConsoleVar;
   import alternativa.utils.CircularStringBuffer;
   import alternativa.utils.ICircularStringBuffer;
   import alternativa.utils.IStringBufferIterator;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   import flash.utils.setTimeout;
   
   public class Console implements IConsole
   {
      private static const DEFAULT_BG_COLOR:uint = 16777215;
      
      private static const DEFAULT_FONT_COLOR:uint = 0;
      
      private static const DEFAULT_TEXT_FORMAT:TextFormat = new TextFormat("Courier New",12,DEFAULT_FONT_COLOR);
      
      private static const INPUT_HEIGHT:int = 20;
      
      private static const LINE_SPLITTER:RegExp = /\n|\r|\n\r/;
      
      private static const TOKENIZER:RegExp = /(?:[^"\s]+)|(?:"[^"]*")/g;
      
      private var stage:Stage;
      
      private var container:Sprite = new Sprite();
      
      private var outputContainer:Sprite;
      
      private var input:TextField;
      
      private var textFields:Vector.<TextField> = new Vector.<TextField>();
      
      private var charWidth:int;
      
      private var charHeight:int;
      
      private var hSpacing:int = 0;
      
      private var preventInput:Boolean;
      
      private var visible:Boolean;
      
      private var commandHistory:Array = [];
      
      private var commandHistoryIndex:int = 0;
      
      private var variables:Object = {};
      
      private var numPageLines:int;
      
      private var lineWidth:int;
      
      private var topPageLine:int;
      
      private var buffer:ICircularStringBuffer;
      
      private var _widthPercent:int;
      
      private var _heightPercent:int;
      
      private var align:int;
      
      private var consoleBackgroundColor:uint = 16777215;
      
      private var consoleForegroundColor:uint = 0;
      
      private var _alpha:Number = 1;
      
      private var filter:String;
      
      private var commandService:CommandService;
      
      private var lastException:Error;
      
      public function Console(param1:CommandService, param2:Stage, param3:int, param4:int, param5:int, param6:int)
      {
         super();
         this.commandService = param1;
         this.stage = param2;
         this.buffer = new CircularStringBuffer(15000);
         this.calcTextMetrics(param2);
         this.initInput();
         this.initOutput();
         this.setSize(param3,param4);
         this.horizontalAlignment = param5;
         this.vericalAlignment = param6;
         param2.addEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
         param2.addEventListener(Event.RESIZE,this.onResize);
         param1.registerCommand("console","hide","Спрятать консоль",[],this.onHide);
         param1.registerCommand("console","copy","Скопировать содержимое консоли в буфер обмена",[],this.copyConsoleContent);
         param1.registerCommand("cmd","clear","Очистить консоль",[],this.clearConsole);
         param1.registerCommand("cmd","e","Показать последний exception",[],this.showException);
         param1.registerCommand("console","height","Установить высоту консоли",[int],this.onConsoleHeight);
         param1.registerCommand("console","width","Установить ширину консоли",[int],this.onConsoleWidth);
         param1.registerCommand("console","halign","Выравнивание по горизонтали",[int],this.onHorizontalAlign);
         param1.registerCommand("console","valign","Выравнивание по вертикали",[int],this.onVerticalAlign);
         param1.registerCommand("console","alpha","Установить прозрачность консоли",[Number],this.onAlpha);
         param1.registerCommand("console","bg","Установить цвет фона",[uint],this.onBackgroundColor);
         param1.registerCommand("console","fg","Установить цвет шрифта",[uint],this.onForegroundColor);
         param1.registerCommand("vars","list","Посмотреть список переменных",[],this.showVarsList);
         param1.registerCommand("vars","show","Посмотреть переменную",[String],this.showVar);
         param1.registerCommand("vars","set","Установить значение переменной",[String,String],this.setVar);
      }
      
      private function setVar(param1:FormattedOutput, param2:String, param3:String) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:ConsoleVar = this.variables[param2];
         if(_loc6_ != null)
         {
            _loc4_ = _loc6_.toString();
            _loc5_ = _loc6_.acceptInput(param3);
            if(_loc5_ == null)
            {
               param1.addText("New value " + _loc6_.toString() + ", old value=" + _loc4_);
               return;
            }
            throw new ConsoleVarChangeError(param2,param3,_loc5_);
         }
         throw new ConsoleVarNotFoundError(param2);
      }
      
      private function showVar(param1:FormattedOutput, param2:String) : void
      {
         var _loc3_:ConsoleVar = this.variables[param2];
         if(_loc3_ != null)
         {
            param1.addText(_loc3_.toString());
            return;
         }
         throw new ConsoleVarNotFoundError(param2);
      }
      
      private function showVarsList(param1:FormattedOutput) : void
      {
         var _loc2_:* = null;
         for(_loc2_ in this.variables)
         {
            param1.addText(_loc2_);
         }
      }
      
      private function showException(param1:FormattedOutput) : void
      {
         if(this.lastException)
         {
            param1.addText(this.lastException.getStackTrace());
         }
      }
      
      public function addVariable(param1:ConsoleVar) : void
      {
         this.variables[param1.getName()] = param1;
      }
      
      public function removeVariable(param1:String) : void
      {
         delete this.variables[param1];
      }
      
      public function set horizontalAlignment(param1:int) : void
      {
         param1 = this.clamp(param1,1,3);
         this.align = this.align & ~3 | param1;
         this.updateAlignment();
      }
      
      public function get horizontalAlignment() : int
      {
         return this.align & 3;
      }
      
      public function set vericalAlignment(param1:int) : void
      {
         param1 = this.clamp(param1,1,3);
         this.align = this.align & ~0x0C | param1 << 2;
         this.updateAlignment();
      }
      
      public function get vericalAlignment() : int
      {
         return this.align >> 2 & 3;
      }
      
      public function addText(param1:String) : void
      {
         var _loc2_:* = this.buffer.size - this.topPageLine <= this.numPageLines;
         var _loc3_:int = this.addLine(param1);
         if(_loc2_)
         {
            this.scrollOutput(_loc3_);
         }
      }
      
      public function addPrefixedText(param1:String, param2:String) : void
      {
         var _loc3_:* = this.buffer.size - this.topPageLine <= this.numPageLines;
         var _loc4_:int = this.addPrefixedLine(param1,param2);
         if(_loc3_)
         {
            this.scrollOutput(_loc4_);
         }
      }
      
      public function addLines(param1:Vector.<String>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:* = this.buffer.size - this.topPageLine <= this.numPageLines;
         for each(_loc3_ in param1)
         {
            _loc2_ += this.addLine(_loc3_);
         }
         if(_loc4_)
         {
            this.scrollOutput(_loc2_);
         }
      }
      
      public function addPrefixedLines(param1:String, param2:Vector.<String>) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:* = this.buffer.size - this.topPageLine <= this.numPageLines;
         for each(_loc4_ in param2)
         {
            _loc3_ += this.addPrefixedLine(param1,_loc4_);
         }
         if(_loc5_)
         {
            this.scrollOutput(_loc3_);
         }
      }
      
      public function show() : void
      {
         if(this.visible)
         {
            return;
         }
         this.stage.addChild(this.container);
         this.stage.focus = this.input;
         this.visible = true;
         this.onResize(null);
         this.scrollOutput(0);
      }
      
      public function hide() : void
      {
         if(this.stage == null)
         {
            return;
         }
         if(this.visible)
         {
            this.stage.removeChild(this.container);
            this.stage.focus = this.stage;
            this.visible = false;
         }
      }
      
      public function isVisible() : Boolean
      {
         return this.visible;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         param1 = this.clamp(param1,1,100);
         param2 = this.clamp(param2,1,100);
         if(param1 == this._widthPercent && param2 == this._heightPercent)
         {
            return;
         }
         this._widthPercent = param1;
         this._heightPercent = param2;
         this.updateSize();
         this.updateAlignment();
      }
      
      public function set width(param1:int) : void
      {
         this.setSize(param1,this._heightPercent);
      }
      
      public function get width() : int
      {
         return this._widthPercent;
      }
      
      public function set height(param1:int) : void
      {
         this.setSize(this._widthPercent,param1);
      }
      
      public function get height() : int
      {
         return this._heightPercent;
      }
      
      public function hideDelayed(param1:uint) : void
      {
         setTimeout(this.hide,param1);
      }
      
      public function executeCommand(param1:String) : void
      {
         var len:int;
         var text:String = param1;
         if(text.match(/^\s*$/))
         {
            return;
         }
         len = int(this.commandHistory.length);
         if(len == 0 || this.commandHistory[len - 1] != text)
         {
            this.commandHistory.push(text);
         }
         this.commandHistoryIndex = len + 1;
         try
         {
            this.commandService.execute(text,this);
            return;
         }
         catch(e:Error)
         {
            addText(e.message);
            lastException = e;
            return;
         }
      }
      
      public function set alpha(param1:Number) : void
      {
         this._alpha = param1;
         this.updateSize();
      }
      
      public function get alpha() : Number
      {
         return this._alpha;
      }
      
      private function calcTextMetrics(param1:Stage) : void
      {
         var _loc2_:TextField = new TextField();
         _loc2_.defaultTextFormat = DEFAULT_TEXT_FORMAT;
         _loc2_.text = "j";
         param1.addChild(_loc2_);
         this.charWidth = _loc2_.textWidth;
         this.charHeight = _loc2_.textHeight + 4;
         param1.removeChild(_loc2_);
      }
      
      private function initInput() : void
      {
         this.input = new TextField();
         this.input.defaultTextFormat = DEFAULT_TEXT_FORMAT;
         this.input.height = INPUT_HEIGHT;
         this.input.type = TextFieldType.INPUT;
         this.input.background = true;
         this.input.backgroundColor = DEFAULT_BG_COLOR;
         this.input.border = true;
         this.input.borderColor = DEFAULT_FONT_COLOR;
         this.input.addEventListener(KeyboardEvent.KEY_DOWN,this.onInputKeyDown);
         this.input.addEventListener(KeyboardEvent.KEY_UP,this.onInputKeyUp);
         this.input.addEventListener(TextEvent.TEXT_INPUT,this.onTextInput);
         this.container.addChild(this.input);
      }
      
      private function initOutput() : void
      {
         this.outputContainer = new Sprite();
         this.outputContainer.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         this.container.addChild(this.outputContainer);
      }
      
      private function resizeOutput(param1:int, param2:int) : void
      {
         this.numPageLines = param2 / (this.charHeight + this.hSpacing);
         this.lineWidth = param1 / this.charWidth - 1;
         this.updateTextFields(param1);
         this.scrollOutput(0);
         var _loc3_:Graphics = this.outputContainer.graphics;
         _loc3_.clear();
         _loc3_.beginFill(this.consoleBackgroundColor,this._alpha);
         _loc3_.drawRect(0,0,param1,param2);
         _loc3_.endFill();
      }
      
      private function updateTextFields(param1:int) : void
      {
         var _loc2_:TextField = null;
         while(this.textFields.length > this.numPageLines)
         {
            this.outputContainer.removeChild(this.textFields.pop());
         }
         while(this.textFields.length < this.numPageLines)
         {
            this.createTextField();
         }
         var _loc3_:int = this.charHeight + this.hSpacing;
         var _loc4_:int = 0;
         while(_loc4_ < this.textFields.length)
         {
            _loc2_ = this.textFields[_loc4_];
            _loc2_.y = _loc4_ * _loc3_;
            _loc2_.width = param1;
            _loc4_++;
         }
      }
      
      private function createTextField() : void
      {
         var _loc1_:TextField = new TextField();
         _loc1_.height = this.charHeight;
         _loc1_.defaultTextFormat = DEFAULT_TEXT_FORMAT;
         _loc1_.tabEnabled = false;
         _loc1_.selectable = true;
         this.outputContainer.addChild(_loc1_);
         this.textFields.push(_loc1_);
      }
      
      private function scrollOutput(param1:int) : void
      {
         this.topPageLine += param1;
         if(this.topPageLine + this.numPageLines > this.buffer.size)
         {
            this.topPageLine = this.buffer.size - this.numPageLines;
         }
         if(this.topPageLine < 0)
         {
            this.topPageLine = 0;
         }
         this.updateOutput();
      }
      
      private function updateOutput() : void
      {
         if(this.container.parent != null)
         {
            this.printPage();
         }
      }
      
      private function printPage() : void
      {
         var _loc1_:int = 0;
         var _loc2_:IStringBufferIterator = this.buffer.getIterator(this.topPageLine);
         while(_loc1_ < this.numPageLines && _loc2_.hasNext())
         {
            TextField(this.textFields[_loc1_++]).text = _loc2_.getNext();
         }
         while(_loc1_ < this.numPageLines)
         {
            TextField(this.textFields[_loc1_++]).text = "";
         }
      }
      
      private function onInputKeyDown(param1:KeyboardEvent) : void
      {
         if(this.isToggleKey(param1))
         {
            this.preventInput = true;
         }
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               this.processInput();
               break;
            case Keyboard.ESCAPE:
               if(this.input.text != "")
               {
                  this.input.text = "";
               }
               else
               {
                  this.hideDelayed(50);
               }
               break;
            case Keyboard.UP:
               this.historyUp();
               break;
            case Keyboard.DOWN:
               this.historyDown();
               break;
            case Keyboard.PAGE_UP:
               this.scrollOutput(-this.numPageLines);
               break;
            case Keyboard.PAGE_DOWN:
               this.scrollOutput(this.numPageLines);
         }
         param1.stopPropagation();
      }
      
      private function onInputKeyUp(param1:KeyboardEvent) : void
      {
         if(!this.isToggleKey(param1))
         {
            param1.stopPropagation();
         }
      }
      
      private function onTextInput(param1:TextEvent) : void
      {
         if(this.preventInput)
         {
            param1.preventDefault();
            this.preventInput = false;
         }
      }
      
      private function isToggleKey(param1:KeyboardEvent) : Boolean
      {
         return param1.keyCode == 75 && param1.ctrlKey && param1.shiftKey;
      }
      
      private function processInput() : void
      {
         this.scrollOutput(this.buffer.size);
         var _loc1_:String = this.input.text;
         this.input.text = "";
         this.addText("> " + _loc1_);
         this.executeCommand(_loc1_);
      }
      
      private function historyUp() : void
      {
         if(this.commandHistoryIndex == 0)
         {
            return;
         }
         --this.commandHistoryIndex;
         var _loc1_:String = this.commandHistory[this.commandHistoryIndex];
         this.input.text = _loc1_ == null ? "" : _loc1_;
      }
      
      private function historyDown() : void
      {
         ++this.commandHistoryIndex;
         if(this.commandHistoryIndex >= this.commandHistory.length)
         {
            this.commandHistoryIndex = this.commandHistory.length;
            this.input.text = "";
         }
         else
         {
            this.input.text = this.commandHistory[this.commandHistoryIndex];
         }
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         if(this.isToggleKey(param1))
         {
            if(this.visible)
            {
               this.hide();
            }
            else
            {
               this.show();
            }
         }
      }
      
      private function onResize(param1:Event) : void
      {
         this.updateSize();
         this.updateAlignment();
      }
      
      private function addLine(param1:String) : int
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Array = param1.split(LINE_SPLITTER);
         for each(_loc3_ in _loc5_)
         {
            if(!(this.filter && _loc3_.indexOf(this.filter) < 0))
            {
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  this.buffer.add(_loc3_.substr(_loc4_,this.lineWidth));
                  _loc2_++;
                  _loc4_ += this.lineWidth;
               }
            }
         }
         return _loc2_;
      }
      
      private function addPrefixedLine(param1:String, param2:String) : int
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Array = param2.split(LINE_SPLITTER);
         var _loc7_:int = this.lineWidth - param1.length;
         for each(_loc4_ in _loc6_)
         {
            if(!(this.filter && _loc4_.indexOf(this.filter) < 0))
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_.length)
               {
                  this.buffer.add(param1 + _loc4_.substr(_loc5_,_loc7_));
                  _loc3_++;
                  _loc5_ += _loc7_;
               }
            }
         }
         return _loc3_;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         this.scrollOutput(-param1.delta);
      }
      
      private function clamp(param1:int, param2:int, param3:int) : int
      {
         if(param1 < param2)
         {
            return param2;
         }
         if(param1 > param3)
         {
            return param3;
         }
         return param1;
      }
      
      private function updateSize() : void
      {
         var _loc1_:int = 0.01 * this._heightPercent * this.stage.stageHeight;
         var _loc2_:int = 0.01 * this._widthPercent * this.stage.stageWidth;
         var _loc3_:int = _loc1_ - INPUT_HEIGHT;
         this.resizeOutput(_loc2_,_loc3_);
         this.input.y = _loc3_;
         this.input.width = _loc2_;
      }
      
      private function updateAlignment() : void
      {
         var _loc1_:* = this.align & 3;
         switch(_loc1_)
         {
            case 1:
               this.container.x = 0;
               break;
            case 2:
               this.container.x = this.stage.stageWidth - this.container.width;
               break;
            case 3:
               this.container.x = this.stage.stageWidth - this.container.width >> 1;
         }
         var _loc2_:* = this.align >> 2 & 3;
         switch(_loc2_)
         {
            case 1:
               this.container.y = 0;
               break;
            case 2:
               this.container.y = this.stage.stageHeight - this.container.height;
               break;
            case 3:
               this.container.y = this.stage.stageHeight - this.container.height >> 1;
         }
      }
      
      private function onHide(param1:FormattedOutput) : void
      {
         this.hideDelayed(100);
      }
      
      private function copyConsoleContent(param1:FormattedOutput) : void
      {
         var _loc2_:IStringBufferIterator = this.buffer.getIterator(0);
         var _loc3_:String = "Console content:\r\n";
         while(_loc2_.hasNext())
         {
            _loc3_ += _loc2_.getNext() + "\r\n";
         }
         System.setClipboard(_loc3_);
         this.addText("Content has been copied to clipboard");
      }
      
      private function clearConsole(param1:FormattedOutput) : void
      {
         this.buffer.clear();
         this.scrollOutput(0);
      }
      
      private function onHorizontalAlign(param1:FormattedOutput, param2:int) : void
      {
         this.horizontalAlignment = param2;
      }
      
      private function onVerticalAlign(param1:FormattedOutput, param2:int) : void
      {
         this.vericalAlignment = param2;
      }
      
      private function onConsoleWidth(param1:FormattedOutput, param2:int) : void
      {
         this.setSize(param2,this._heightPercent);
      }
      
      private function onConsoleHeight(param1:FormattedOutput, param2:int) : void
      {
         this.setSize(this._widthPercent,param2);
      }
      
      private function onAlpha(param1:FormattedOutput, param2:Number) : void
      {
         this.alpha = param2;
      }
      
      private function onBackgroundColor(param1:FormattedOutput, param2:uint) : void
      {
         this.updateSize();
         this.input.backgroundColor = param2;
         param1.addText("Background color set to " + param2);
      }
      
      private function onForegroundColor(param1:FormattedOutput, param2:uint) : void
      {
         var _loc3_:TextField = null;
         DEFAULT_TEXT_FORMAT.color = param2;
         this.input.textColor = param2;
         this.input.defaultTextFormat = DEFAULT_TEXT_FORMAT;
         for each(_loc3_ in this.textFields)
         {
            _loc3_.textColor = param2;
            _loc3_.defaultTextFormat = DEFAULT_TEXT_FORMAT;
         }
         param1.addText("Foreground color set to " + param2);
      }
      
      private function printVars(param1:IConsole, param2:Array) : void
      {
         this.printVariables(param2[0],false);
      }
      
      private function printVarsValues(param1:IConsole, param2:Array) : void
      {
         this.printVariables(param2[0],true);
      }
      
      private function printVariables(param1:String, param2:Boolean) : void
      {
         var _loc3_:* = null;
         var _loc4_:ConsoleVar = null;
         var _loc5_:String = null;
         var _loc6_:Array = [];
         for(_loc3_ in this.variables)
         {
            if(param1 == null || param1 == "" || _loc3_.indexOf(param1) == 0)
            {
               _loc4_ = this.variables[_loc3_];
               _loc6_.push(param2 ? _loc3_ + " = " + _loc4_.toString() : _loc3_);
            }
         }
         if(_loc6_.length > 0)
         {
            _loc6_.sort();
            for each(_loc5_ in _loc6_)
            {
               this.addText(_loc5_);
            }
         }
      }
      
      public function setCommandHandler(param1:String, param2:Function) : void
      {
      }
      
      public function removeCommandHandler(param1:String) : void
      {
      }
   }
}

