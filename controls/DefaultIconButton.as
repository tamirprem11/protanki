package controls
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   
   public class DefaultIconButton extends DefaultButton
   {
      protected var _icon:Bitmap;
      
      public function DefaultIconButton(param1:BitmapData = null)
      {
         super();
         if(param1 != null)
         {
            this.icon = param1;
         }
      }
      
      public function set icon(param1:BitmapData) : void
      {
         this._icon = new Bitmap(param1);
         addChild(this._icon);
         this._icon.x = 3;
         this._icon.y = 3;
         this.width = _width;
      }
      
      override public function set width(param1:Number) : void
      {
         _width = int(param1);
         stateDOWN.width = stateOFF.width = stateOVER.width = stateUP.width = _width;
         if(this._icon != null)
         {
            _label.x = 20;
            _label.width = _width - 22;
         }
         else
         {
            _label.x = 2;
            _label.width = _width - 4;
         }
      }
      
      override protected function onMouseEvent(param1:MouseEvent) : void
      {
         if(enable)
         {
            switch(param1.type)
            {
               case MouseEvent.MOUSE_OVER:
                  setState(2);
                  _label.y = 6;
                  if(this._icon != null)
                  {
                     this._icon.y = 3;
                  }
                  break;
               case MouseEvent.MOUSE_OUT:
                  setState(1);
                  _label.y = 6;
                  if(this._icon != null)
                  {
                     this._icon.y = 3;
                  }
                  break;
               case MouseEvent.MOUSE_DOWN:
                  setState(3);
                  _label.y = 7;
                  if(this._icon != null)
                  {
                     this._icon.y = 4;
                  }
                  break;
               case MouseEvent.MOUSE_UP:
                  setState(1);
                  _label.y = 6;
                  if(this._icon != null)
                  {
                     this._icon.y = 3;
                  }
            }
         }
      }
   }
}

