package alternativa.tanks.model.presents
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.gui.presents.NewPresentsAlert;
   import alternativa.tanks.gui.presents.NewPresentsAlertEvent;
   import alternativa.tanks.service.notificationcategories.INotificationGarageCategoriesService;
   import projects.tanks.client.commons.types.ItemViewCategoryEnum;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class NewPresentsShowingModel
   {
      [Inject]
      public static var notificationGarageCategoriesService:INotificationGarageCategoriesService;
      
      public function NewPresentsShowingModel()
      {
         super();
      }
      
      public function showAlert() : void
      {
         var _loc1_:NewPresentsAlert = new NewPresentsAlert();
         _loc1_.addEventListener(NewPresentsAlertEvent.ACCEPT,this.accept);
         _loc1_.addEventListener(NewPresentsAlertEvent.CANCEL,this.cancel);
         notificationGarageCategoriesService.§class case§(ItemViewCategoryEnum.GIVEN_PRESENTS);
      }
      
      private function cancel(param1:NewPresentsAlertEvent) : void
      {
         this.closeDialog(NewPresentsAlert(param1.target));
      }
      
      private function accept(param1:NewPresentsAlertEvent) : void
      {
         this.closeDialog(NewPresentsAlert(param1.target));
         Network(OSGi.getInstance().getService(INetworker)).send("lobby;showPresents");
      }
      
      private function closeDialog(param1:NewPresentsAlert) : void
      {
         param1.removeEventListener(NewPresentsAlertEvent.ACCEPT,this.accept);
         param1.removeEventListener(NewPresentsAlertEvent.CANCEL,this.cancel);
      }
   }
}

