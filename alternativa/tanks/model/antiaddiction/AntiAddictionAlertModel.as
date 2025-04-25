package alternativa.tanks.model.antiaddiction
{
   import alternativa.model.IModel;
   import alternativa.model.IObjectLoadListener;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.service.IModelService;
   import alternativa.tanks.gui.AntiAddictionWindow;
   import alternativa.tanks.model.panel.IPanel;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import projects.tanks.client.panel.model.antiaddictionalert.AntiAddictionAlertModelBase;
   import projects.tanks.client.panel.model.antiaddictionalert.IAntiAddictionAlertModelBase;
   import services.alertservice.Alert;
   
   public class AntiAddictionAlertModel extends AntiAddictionAlertModelBase implements IAntiAddictionAlert, IAntiAddictionAlertModelBase, IObjectLoadListener
   {
      private var dialogsLayer:DisplayObjectContainer;
      
      private var antiAddictionWindow:AntiAddictionWindow;
      
      private var clientObject:ClientObject;
      
      public function AntiAddictionAlertModel()
      {
         super();
         _interfaces.push(IModel);
         _interfaces.push(IAntiAddictionAlertModelBase);
         _interfaces.push(IAntiAddictionAlert);
         _interfaces.push(IObjectLoadListener);
      }
      
      public function showAntiAddictionAlert(param1:ClientObject, param2:int) : void
      {
         this.showAntiAddictionWindow(param2);
      }
      
      public function setIdNumberCheckResult(param1:ClientObject, param2:Boolean) : void
      {
         var _loc3_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc4_:IPanel = _loc3_.getModelsByInterface(IPanel)[0] as IPanel;
         if(this.antiAddictionWindow != null && this.dialogsLayer.contains(this.antiAddictionWindow))
         {
            if(!param2)
            {
               _loc4_._showMessage("该身份证错误,请重新输入");
               this.antiAddictionWindow.enableButtons();
            }
            else
            {
               _loc4_._showMessage("您的身份证信息已通过验证");
               this.dialogsLayer.removeChild(this.antiAddictionWindow);
            }
         }
      }
      
      public function setIdNumberAndRealName(param1:String, param2:String) : void
      {
      }
      
      private function showAntiAddictionWindow(param1:int) : void
      {
         var _loc4_:String = null;
         var _loc5_:Alert = null;
         var _loc2_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc3_:IPanel = _loc2_.getModelsByInterface(IPanel)[0] as IPanel;
         if(param1 >= 210)
         {
            if(this.antiAddictionWindow != null && this.dialogsLayer.contains(this.antiAddictionWindow))
            {
               this.dialogsLayer.removeChild(this.antiAddictionWindow);
            }
            this.antiAddictionWindow = new AntiAddictionWindow(param1);
            this.antiAddictionWindow.addEventListener(Event.COMPLETE,this.onIDCardEntered);
            this.antiAddictionWindow.addEventListener(Event.CANCEL,this.onIDCardCanceled);
            this.dialogsLayer.addChild(this.antiAddictionWindow);
            this.alignAntiAddictionWindow();
         }
         else
         {
            _loc4_ = "";
            if(param1 >= 180)
            {
               _loc4_ = "您累计在线时间已满3小时，请您下线休息，做适当身体活动。";
            }
            else if(param1 >= 120)
            {
               _loc4_ = "您累计在线时间已满2小时。";
            }
            else if(param1 >= 60)
            {
               _loc4_ = "您累计在线时间已满1小时。";
            }
            _loc5_ = new Alert();
            this.dialogsLayer.addChild(_loc5_);
         }
      }
      
      private function onIDCardEntered(param1:Event) : void
      {
         this.setIdNumberAndRealName(this.antiAddictionWindow.realNameInput.value,this.antiAddictionWindow.idCardInput.value);
         this.antiAddictionWindow.disableButtons();
      }
      
      private function onIDCardCanceled(param1:Event) : void
      {
         var _loc2_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc3_:IPanel = _loc2_.getModelsByInterface(IPanel)[0] as IPanel;
         this.dialogsLayer.removeChild(this.antiAddictionWindow);
      }
      
      private function alignAntiAddictionWindow(param1:Event = null) : void
      {
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         this.clientObject = param1;
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         if(this.antiAddictionWindow != null && this.dialogsLayer.contains(this.antiAddictionWindow))
         {
            this.dialogsLayer.removeChild(this.antiAddictionWindow);
         }
      }
   }
}

