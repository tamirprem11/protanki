package alternativa.tanks.view.registration
{
   import controls.DefaultIconButton;
   import controls.FBButton;
   import controls.TankWindow;
   import controls.VKButton;
   import controls.base.LabelBase;
   
   public class ExternalEntranceForm extends TankWindow
   {
      public var snButton:DefaultIconButton;
      
      public var infoLabel:LabelBase;
      
      private var _margin:int = 20;
      
      private var _border:int = 25;
      
      private var _space:int = 5;
      
      public function ExternalEntranceForm(param1:int, param2:int, param3:String, param4:Boolean)
      {
         var _loc6_:int = 0;
         this.infoLabel = new LabelBase();
         this.infoLabel.text = param3;
         this.snButton = param4 ? new VKButton() : new FBButton();
         this.snButton.width = 102;
         var _loc5_:int = this.snButton.width + this.infoLabel.width + this._space + 2 * this._border;
         param1 = Math.min(_loc5_,param1);
         super(param1,param2);
         addChild(this.infoLabel);
         addChild(this.snButton);
         _loc6_ = (param1 - this.snButton.width - this.infoLabel.width - this._space) / 2;
         this.infoLabel.x = _loc6_;
         this.infoLabel.y = this._margin + this._space;
         this.snButton.x = param1 - this.snButton.width - _loc6_;
         this.snButton.y = this.infoLabel.y - 7;
      }
   }
}

