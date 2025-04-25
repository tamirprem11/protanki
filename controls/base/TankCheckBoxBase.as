package controls.base
{
   import controls.TankCheckBox;
   import controls.checkbox.CheckBoxEvent;
   
   public class TankCheckBoxBase extends TankCheckBox
   {
      private var _labelBase:LabelBase;
      
      public function TankCheckBoxBase()
      {
         super();
         this._labelBase = new LabelBase();
         this._labelBase.x = 29;
         this._labelBase.y = 7;
         addChild(this._labelBase);
      }
      
      override public function set label(param1:String) : void
      {
         this._labelBase.text = param1;
      }
      
      override public function changeState() : void
      {
         super.changeState;
         typeChek.visible = checked;
         dispatchEvent(new CheckBoxEvent(CheckBoxEvent.STATE_CHANGED));
      }
   }
}

