package alternativa.tanks.controller.commands.goto
{
   import alternativa.tanks.controller.events.showform.ShowExternalEntranceFormEvent;
   import alternativa.tanks.controller.events.socialnetwork.NavigationExternalEvent;
   import org.robotlegs.mvcs.Command;
   
   public class GoToExternalRegistrationCommand extends Command
   {
      [Inject]
      public var event:NavigationExternalEvent;
      
      public function GoToExternalRegistrationCommand()
      {
         super();
      }
      
      override public function execute() : void
      {
         dispatch(new ShowExternalEntranceFormEvent(ShowExternalEntranceFormEvent.REGISTRATION_FORM,this.event.socialNetworkId,null,false));
      }
   }
}

