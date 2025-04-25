package alternativa.tanks.gui
{
   import assets.Diamond;
   import controls.DefaultButton;
   import flash.events.MouseEvent;
   
   public class ReferalStatButton extends DefaultButton
   {
      private static var crystalIcon:Diamond = new Diamond();
      
      private var _numCrystals:int;
      
      private var _enable:Boolean = true;
      
      public function ReferalStatButton()
      {
         super();
         addChild(crystalIcon);
         crystalIcon.y = 10;
      }
      
      public function set numCrystals(param1:int) : void
      {
         this._numCrystals = param1;
      }
      
      override public function set width(param1:Number) : void
      {
         super.width = int(param1);
         stateDOWN.width = stateOFF.width = stateOVER.width = stateUP.width = this.width;
         _label.width = this.width - 4 - crystalIcon.width;
      }
      
      override public function get width() : Number
      {
         return super.width;
      }
      
      override public function set label(param1:String) : void
      {
         super.label = param1;
         crystalIcon.x = _label.textWidth + (_label.width - _label.textWidth) / 2 + 7;
      }
      
      override protected function onMouseEvent(param1:MouseEvent) : void
      {
         if(this._enable)
         {
            switch(param1.type)
            {
               case MouseEvent.MOUSE_OVER:
                  setState(2);
                  _label.y = 6;
                  crystalIcon.y = 10;
                  break;
               case MouseEvent.MOUSE_OUT:
                  setState(1);
                  _label.y = 6;
                  crystalIcon.y = 10;
                  break;
               case MouseEvent.MOUSE_DOWN:
                  setState(3);
                  _label.y = 7;
                  crystalIcon.y = 11;
                  break;
               case MouseEvent.MOUSE_UP:
                  setState(1);
                  _label.y = 6;
                  crystalIcon.y = 10;
            }
         }
      }
      
      override public function set enable(param1:Boolean) : void
      {
         this._enable = param1;
         if(this._enable)
         {
            addListeners();
         }
         else
         {
            removeListeners();
         }
      }
      
      override public function get enable() : Boolean
      {
         return this._enable;
      }
   }
}

