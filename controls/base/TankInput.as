package controls.base
{
   import base.DiscreteSprite;
   import controls.TextFieldUtf8;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.events.MouseEvent;
   import flash.system.Capabilities;
   import flash.text.AntiAliasType;
   import flash.text.GridFitType;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import fonts.TanksFontService;
   import utils.FontParamsUtil;
   
   public class TankInput extends DiscreteSprite
   {
      private static const §0"1§:Class = §function const default§;
      
      private static const §super const const§:Class = §import var function§;
      
      private static const leftClass:Class = §include for get§;
      
      private static const §include for implements§:Class = §final var each§;
      
      private static const rightClass:Class = §catch const finally§;
      
      private static const §]"O§:Class = §function for case§;
      
      public static const §switch default§:int = 5;
      
      public static const §@!-§:int = 30;
      
      public static const §<"G§:int = 212;
      
      private static const §break const implements§:int = 3;
      
      private static const §class get§:int = 7;
      
      private static const §for const var§:RegExp = /^(\w*) (\d*),(\d*),(\d*),(\d*)$/;
      
      private const format:TextFormat = TanksFontService.getTextFormat(12);
      
      private const bg:DiscreteSprite = new DiscreteSprite();
      
      private const §>J§:Shape = new Shape();
      
      private const §continue for switch§:Shape = new Shape();
      
      private const §else throw§:Shape = new Shape();
      
      private const bmpLeft:BitmapData = new leftClass().bitmapData;
      
      private const bmpCenter:BitmapData = new §0"1§().bitmapData;
      
      private const bmpRight:BitmapData = new rightClass().bitmapData;
      
      private const bmpLeftWrong:BitmapData = new §include for implements§().bitmapData;
      
      private const bmpCenterWrong:BitmapData = new §super const const§().bitmapData;
      
      private const bmpRightWrong:BitmapData = new §]"O§().bitmapData;
      
      public var textField:TextField;
      
      private var _hidden:Boolean;
      
      private var _valid:Boolean = true;
      
      private var _width:int;
      
      private var _height:int;
      
      public function TankInput()
      {
         super();
         addChild(this.bg);
         this.bg.addChild(this.§>J§);
         this.bg.addChild(this.§continue for switch§);
         this.bg.addChild(this.§else throw§);
         this.§<"e§();
         this.height = §@!-§;
         this.width = §<"G§;
      }
      
      private function §<"e§() : void
      {
         var _loc1_:String = Capabilities.version;
         var _loc2_:Object = §for const var§.exec(_loc1_);
         if(_loc2_ != null && Number(_loc2_[2] + "." + _loc2_[3]) < 10.1)
         {
            this.textField = new TextFieldUtf8();
         }
         else
         {
            this.textField = new TextField();
         }
         this.textField.defaultTextFormat = this.format;
         this.textField.antiAliasType = AntiAliasType.ADVANCED;
         this.textField.gridFitType = GridFitType.PIXEL;
         this.textField.embedFonts = TanksFontService.isEmbedFonts();
         this.textField.type = TextFieldType.INPUT;
         this.textField.x = §break const implements§;
         this.textField.y = §class get§;
         this.§;!C§();
         this.textField.sharpness = FontParamsUtil.SHARPNESS_TANK_INPUT_BASE;
         this.textField.thickness = FontParamsUtil.THICKNESS_TANK_INPUT_BASE;
         this.textField.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.textField.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addChild(this.textField);
      }
      
      private function §;!C§() : void
      {
         this.textField.height = this._height - 2 * §switch default§;
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.IBEAM;
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         Mouse.cursor = MouseCursor.AUTO;
      }
      
      public function set enable(param1:Boolean) : void
      {
         this.textField.type = param1 ? TextFieldType.INPUT : TextFieldType.DYNAMIC;
         this.textField.selectable = param1;
         this.textField.mouseEnabled = param1;
         this.textField.mouseWheelEnabled = param1;
         this.textField.tabEnabled = param1;
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = int(param1);
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = int(param1);
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = Math.ceil(param1);
         this.textField.width = this._width - 6;
         this.draw();
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = Math.ceil(param1);
         this.§;!C§();
         this.draw();
      }
      
      public function set align(param1:String) : void
      {
         this.format.align = param1;
         this.§class var include§();
      }
      
      private function §class var include§() : void
      {
         this.textField.defaultTextFormat = this.format;
         this.textField.setTextFormat(this.format);
      }
      
      public function clear() : void
      {
         this.textField.text = "";
         this.validValue = true;
      }
      
      override public function set tabIndex(param1:int) : void
      {
         this.textField.tabIndex = param1;
      }
      
      public function set restrict(param1:String) : void
      {
         this.textField.restrict = param1;
      }
      
      public function set maxChars(param1:int) : void
      {
         this.textField.maxChars = param1;
      }
      
      public function get value() : String
      {
         return this.textField.text;
      }
      
      public function set value(param1:String) : void
      {
         this.textField.text = param1;
      }
      
      public function set hidden(param1:Boolean) : void
      {
         this._hidden = param1;
         this.textField.displayAsPassword = this._hidden;
      }
      
      public function get hidden() : Boolean
      {
         return this._hidden;
      }
      
      public function set validValue(param1:Boolean) : void
      {
         this._valid = param1;
         this.draw();
      }
      
      public function get validValue() : Boolean
      {
         return this._valid;
      }
      
      private function draw() : void
      {
         var _loc1_:Graphics = this.§>J§.graphics;
         _loc1_.clear();
         _loc1_.beginBitmapFill(this._valid ? this.bmpLeft : this.bmpLeftWrong);
         _loc1_.drawRect(0,0,§switch default§,this._height);
         _loc1_.endFill();
         this.§>J§.x = 0;
         this.§>J§.y = 0;
         var _loc2_:Graphics = this.§continue for switch§.graphics;
         _loc2_.clear();
         _loc2_.beginBitmapFill(this._valid ? this.bmpCenter : this.bmpCenterWrong);
         _loc2_.drawRect(0,0,this._width - 2 * §switch default§,this._height);
         _loc2_.endFill();
         this.§continue for switch§.x = §switch default§;
         this.§continue for switch§.y = 0;
         var _loc3_:Graphics = this.§else throw§.graphics;
         _loc3_.clear();
         _loc3_.beginBitmapFill(this._valid ? this.bmpRight : this.bmpRightWrong);
         _loc3_.drawRect(0,0,§switch default§,this._height);
         _loc3_.endFill();
         this.§else throw§.x = this._width - §switch default§;
         this.§else throw§.y = 0;
      }
   }
}

