package §class const import§
{
   import alternativa.tanks.service.IEntranceClientFacade;
   import §function var import§.§const do§;
   import §function var import§.§with set switch§;
   import platform.client.fp10.core.model.IObjectLoadListener;
   
   public class §-;§ extends §with set switch§ implements §const do§, §with const continue§, IObjectLoadListener
   {
      [Inject]
      public static var clientFacade:IEntranceClientFacade;
      
      public function §-;§()
      {
         super();
      }
      
      public function objectLoaded() : void
      {
         clientFacade.inviteEnabled = getInitParam().enabled;
      }
      
      public function inviteNotFound() : void
      {
         clientFacade.inviteNotFound();
      }
      
      public function inviteFree() : void
      {
         clientFacade.§switch for do§();
      }
      
      public function inviteAlreadyActivated(param1:String) : void
      {
         clientFacade.inviteAlreadyActivated(param1);
      }
      
      public function §=W§(param1:String) : void
      {
         server.§"!r§(param1);
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function objectUnloaded() : void
      {
      }
      
      public function objectUnloadedPost() : void
      {
      }
   }
}

