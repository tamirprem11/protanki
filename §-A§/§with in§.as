package §-A§
{
   import §;"h§.§'=§;
   import §;"h§.§if set if§;
   import alternativa.tanks.service.IEntranceClientFacade;
   import platform.client.fp10.core.model.IObjectLoadListener;
   
   public class §with in§ extends §'=§ implements §if set if§, IObjectLoadListener
   {
      [Inject]
      public static var facade:IEntranceClientFacade;
      
      public function §with in§()
      {
         super();
      }
      
      public function serverHalt() : void
      {
         facade.serverHalt();
      }
      
      public function objectLoaded() : void
      {
         if(getInitParam().serverHalt)
         {
            facade.serverHalt();
         }
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

