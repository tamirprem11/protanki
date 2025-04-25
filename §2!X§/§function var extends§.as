package §2!X§
{
   import §8"W§.§]"!§;
   import §?l§.§]Z§;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.§null set else§;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.models.tank.§<!C§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §function var extends§ implements §&O§, §]Z§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var §native for continue§:§<!C§ = new §<!C§();
      
      private var §,!y§:§]"!§;
      
      public function §function var extends§()
      {
         super();
      }
      
      public function localTankLoaded() : void
      {
         var _loc1_:Boolean = battleService.§!";§();
         this.§,!y§ = new §]"!§(§7!n§.§extends set var§.tank,this.§native for continue§,_loc1_);
      }
      
      public function §finally const set§() : void
      {
         battleService.§^r§(true);
         var _loc1_:§catch for const§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         _loc1_.§super const switch§(§7!n§.§extends set var§.user,§null set else§.PAUSE);
         _loc1_.§const for package§(§7!n§.§extends set var§.user).§switch in§(§null set else§.PAUSE,true);
      }
      
      public function §6B§() : void
      {
         battleService.§^r§(false);
         var _loc1_:§catch for const§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         _loc1_.§,"8§(§7!n§.§extends set var§.user,§null set else§.PAUSE);
         _loc1_.§const for package§(§7!n§.§extends set var§.user).§finally var use§(§null set else§.PAUSE);
         this.§package const do§();
         Network(OSGi.getInstance().getService(INetworker)).send("battle;disablePause");
      }
      
      public function §package const do§() : void
      {
         this.§native for continue§.reset(battleService.§super set const§());
      }
      
      public function getPauseSupport() : §]"!§
      {
         return this.§,!y§;
      }
   }
}

