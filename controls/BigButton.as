package controls
{
   import assets.button.bigbutton_DOWN_CENTER;
   import assets.button.bigbutton_DOWN_LEFT;
   import assets.button.bigbutton_DOWN_RIGHT;
   import assets.button.bigbutton_OFF_CENTER;
   import assets.button.bigbutton_OFF_LEFT;
   import assets.button.bigbutton_OFF_RIGHT;
   import assets.button.bigbutton_OVER_CENTER;
   import assets.button.bigbutton_OVER_LEFT;
   import assets.button.bigbutton_OVER_RIGHT;
   import assets.button.bigbutton_UP_CENTER;
   import assets.button.bigbutton_UP_LEFT;
   import assets.button.bigbutton_UP_RIGHT;
   import assets.icons.icon_SHORTAGE_ENERGY;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormatAlign;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol270")]
   public class BigButton extends MovieClip
   {
      public static const SHORTAGE_ENERGY:BitmapData = new icon_SHORTAGE_ENERGY(35,35);
      
      protected var stateUP:BigButtonState = new BigButtonState();
      
      protected var stateOVER:BigButtonState = new BigButtonState();
      
      protected var stateDOWN:BigButtonState = new BigButtonState();
      
      protected var stateOFF:BigButtonState = new BigButtonState();
      
      protected var _label:Label = new Label();
      
      protected var _info:Label = new Label();
      
      protected var _icon:Bitmap = new Bitmap();
      
      protected var _width:int = 100;
      
      protected var _enable:Boolean = true;
      
      public function BigButton()
      {
         super();
         this.configUI();
         this.enable = true;
         tabEnabled = false;
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = int(param1);
         this.stateDOWN.width = this.stateOFF.width = this.stateOVER.width = this.stateUP.width = this._width;
         this._info.width = this._label.width = this._width - 4;
         if(this._icon.bitmapData != null)
         {
            this._icon.x = this._width - this._icon.width - 6;
            this._icon.y = int(25 - this._icon.height / 2);
            this._label.width = this._width - 4 - this._icon.width;
         }
      }
      
      public function set label(param1:String) : void
      {
         this._label.text = param1;
      }
      
      public function set info(param1:String) : void
      {
         this._info.htmlText = param1;
      }
      
      public function set icon(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this._icon.visible = true;
            this._label.width = this._width - 4 - this._icon.width;
         }
         else
         {
            this._label.width = this._width - 4;
            this._icon.visible = false;
         }
         this._icon.bitmapData = param1;
         this.width = this._width;
      }
      
      private function configUI() : void
      {
         addChild(this.stateOFF);
         addChild(this.stateDOWN);
         addChild(this.stateOVER);
         addChild(this.stateUP);
         addChild(this._label);
         addChild(this._icon);
         this._info.align = this._label.align = TextFormatAlign.CENTER;
         this._info.autoSize = this._label.autoSize = TextFieldAutoSize.NONE;
         this._info.selectable = this._label.selectable = false;
         this._info.x = this._label.x = 2;
         this._label.y = 15;
         this._info.y = 24;
         this._label.height = 24;
         this._info.height = 20;
         this._label.size = 14;
         this._info.mouseEnabled = this._label.mouseEnabled = false;
         this._info.filters = this._label.filters = [new DropShadowFilter(1,45,0,0.7,1,1,1)];
         this.stateUP.bmpLeft = new bigbutton_UP_LEFT(1,1);
         this.stateUP.bmpCenter = new bigbutton_UP_CENTER(1,1);
         this.stateUP.bmpRight = new bigbutton_UP_RIGHT(1,1);
         this.stateOVER.bmpLeft = new bigbutton_OVER_LEFT(1,1);
         this.stateOVER.bmpCenter = new bigbutton_OVER_CENTER(1,1);
         this.stateOVER.bmpRight = new bigbutton_OVER_RIGHT(1,1);
         this.stateDOWN.bmpLeft = new bigbutton_DOWN_LEFT(1,1);
         this.stateDOWN.bmpCenter = new bigbutton_DOWN_CENTER(1,1);
         this.stateDOWN.bmpRight = new bigbutton_DOWN_RIGHT(1,1);
         this.stateOFF.bmpLeft = new bigbutton_OFF_LEFT(1,1);
         this.stateOFF.bmpCenter = new bigbutton_OFF_CENTER(1,1);
         this.stateOFF.bmpRight = new bigbutton_OFF_RIGHT(1,1);
         this.width = 120;
      }
      
      public function set enable(param1:Boolean) : void
      {
         this._enable = param1;
         if(this._enable)
         {
            this.addListeners();
         }
         else
         {
            this.removeListeners();
         }
      }
      
      public function get enable() : Boolean
      {
         return this._enable;
      }
      
      protected function addListeners() : void
      {
         this.setState(1);
         buttonMode = true;
         mouseEnabled = true;
         mouseChildren = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseEvent);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseEvent);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseEvent);
         addEventListener(MouseEvent.MOUSE_UP,this.onMouseEvent);
      }
      
      protected function removeListeners() : void
      {
         this.setState(0);
         buttonMode = false;
         mouseEnabled = false;
         mouseChildren = false;
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseEvent);
         removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseEvent);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseEvent);
         removeEventListener(MouseEvent.MOUSE_UP,this.onMouseEvent);
      }
      
      protected function onMouseEvent(param1:MouseEvent) : void
      {
         if(this._enable)
         {
            switch(param1.type)
            {
               case MouseEvent.MOUSE_OVER:
                  this.setState(2);
                  this._label.y = 15;
                  this._info.y = 24;
                  break;
               case MouseEvent.MOUSE_OUT:
                  this.setState(1);
                  this._label.y = 15;
                  this._info.y = 24;
                  break;
               case MouseEvent.MOUSE_DOWN:
                  this.setState(3);
                  this._label.y = 16;
                  this._info.y = 25;
                  break;
               case MouseEvent.MOUSE_UP:
                  this.setState(1);
                  this._label.y = 15;
                  this._info.y = 24;
            }
            if(this._icon != null)
            {
               this._icon.y = int(25 - this._icon.height / 2) + (param1.type == MouseEvent.MOUSE_DOWN ? 1 : 0);
            }
         }
      }
      
      protected function setState(param1:int = 0) : void
      {
         switch(param1)
         {
            case 0:
               this.stateOFF.alpha = 1;
               this.stateUP.alpha = 0;
               this.stateOVER.alpha = 0;
               this.stateDOWN.alpha = 0;
               break;
            case 1:
               this.stateOFF.alpha = 0;
               this.stateUP.alpha = 1;
               this.stateOVER.alpha = 0;
               this.stateDOWN.alpha = 0;
               break;
            case 2:
               this.stateOFF.alpha = 0;
               this.stateUP.alpha = 0;
               this.stateOVER.alpha = 1;
               this.stateDOWN.alpha = 0;
               break;
            case 3:
               this.stateOFF.alpha = 0;
               this.stateUP.alpha = 0;
               this.stateOVER.alpha = 0;
               this.stateDOWN.alpha = 1;
         }
      }
   }
}

