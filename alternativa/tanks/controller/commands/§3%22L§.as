package alternativa.tanks.controller.commands
{
   import alternativa.tanks.controller.events.§7"c§;
   import alternativa.tanks.service.IEntranceServerFacade;
   import org.robotlegs.mvcs.Command;
   
   public class §3"L§ extends Command
   {
      [Inject]
      public var event:§7"c§;
      
      [Inject]
      public var entranceGateway:IEntranceServerFacade;
      
      public function §3"L§()
      {
         super();
      }
      
      override public function execute() : void
      {
         this.entranceGateway.§7!d§(this.event.§include const implements§);
      }
   }
}

