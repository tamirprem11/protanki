package alternativa.tanks.view
{
   import alternativa.tanks.controller.events.§7"c§;
   import alternativa.tanks.controller.events.InviteCheckResultEvent;
   import alternativa.tanks.view.events.§else set false§;
   import alternativa.tanks.view.forms.§true while§;
   import org.robotlegs.mvcs.Mediator;
   
   public class §&!K§ extends Mediator
   {
      [Inject]
      public var view:§true while§;
      
      public function §&!K§()
      {
         super();
      }
      
      override public function onRegister() : void
      {
         addViewListener(§else set false§.OK_BUTTON_CLICKED,this.§continue continue§,§else set false§);
         addContextListener(InviteCheckResultEvent.INVITE_CODE_DOES_NOT_EXIST,this.§-M§,InviteCheckResultEvent);
      }
      
      private function §-M§(param1:InviteCheckResultEvent) : void
      {
         this.view.showInviteError();
      }
      
      private function §continue continue§(param1:§else set false§) : void
      {
         dispatch(new §7"c§(this.view.code));
      }
   }
}

