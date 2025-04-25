package alternativa.tanks.controller.commands.socialnetwork
{
   import alternativa.tanks.controller.events.socialnetwork.ExternalLoginEvent;
   import alternativa.tanks.service.IEntranceServerFacade;
   import alternativa.tanks.service.§return const§;
   import org.robotlegs.mvcs.Command;
   
   public class ExternalLoginCommand extends Command
   {
      [Inject]
      public var entranceGateway:IEntranceServerFacade;
      
      [Inject]
      public var loginEvent:ExternalLoginEvent;
      
      [Inject]
      public var sharedObjects:§return const§;
      
      public function ExternalLoginCommand()
      {
         super();
      }
      
      override public function execute() : void
      {
         this.sharedObjects.§false set with§ = this.loginEvent.callsign;
         this.entranceGateway.§implements const default§(this.loginEvent.callsign,this.loginEvent.password);
      }
   }
}

