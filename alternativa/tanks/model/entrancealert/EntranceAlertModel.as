package alternativa.tanks.model.entrancealert
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.service.IModelService;
   import alternativa.tanks.gui.EntranceAlertWindow;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import projects.tanks.client.panel.model.entrancealert.EntranceAlertModelBase;
   import projects.tanks.client.panel.model.entrancealert.IEntranceAlertModelBase;
   
   public class EntranceAlertModel extends EntranceAlertModelBase implements IEntranceAlertModelBase
   {
      private var window:EntranceAlertWindow;
      
      public function EntranceAlertModel()
      {
         super();
         var _loc1_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
      }
      
      public function showAlert(param1:ClientObject) : void
      {
         this.window = new EntranceAlertWindow();
         this.window.closeButton.addEventListener(MouseEvent.CLICK,this.closeWindow);
         this.alignWindow(null);
      }
      
      private function alignWindow(param1:Event) : void
      {
      }
      
      private function closeWindow(param1:MouseEvent = null) : void
      {
      }
   }
}

