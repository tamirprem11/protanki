package alternativa.tanks.controller.commands.goto
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.controller.events.showform.ShowFormEvent;
   import org.robotlegs.mvcs.Command;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class GoToRestorePasswordCommand extends Command
   {
      public function GoToRestorePasswordCommand()
      {
         super();
      }
      
      override public function execute() : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("restore;set_state");
         dispatch(new ShowFormEvent(ShowFormEvent.SHOW_RESTORE_PASSWORD_FORM));
      }
   }
}

