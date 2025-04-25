package alternativa.tanks.models.tank.spawn
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import flash.utils.getTimer;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class §5n§ implements §do for switch§
   {
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      private var tankObject:IGameObject;
      
      private var endTime:int;
      
      public function §5n§(param1:int, param2:IGameObject)
      {
         super();
         this.tankObject = param2;
         this.endTime = getTimer() + param1;
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         if(param1 >= this.endTime && !lobbyLayoutService.isWindowOpenOverBattle() && !lobbyLayoutService.isSwitchInProgress())
         {
            §catch for const§(OSGi.getInstance().getService(§finally const class§)).setReadyToPlace();
         }
      }
      
      public function §null set catch§(param1:IGameObject) : void
      {
         this.tankObject = param1;
      }
   }
}

