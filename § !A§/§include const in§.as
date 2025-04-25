package § !A§
{
   import §1"O§.§break extends§;
   import §8"W§.§get const throw§;
   import alternativa.object.ClientObject;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import §continue const for§.§if const dynamic§;
   import §use for package§.§-E§;
   import §use for package§.§;!@§;
   
   public class §include const in§ extends §-E§ implements §;!@§
   {
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      public function §include const in§()
      {
         super();
      }
      
      public function localTankLoaded(param1:ClientObject) : void
      {
         param1.putParams(§get const throw§,new §get const throw§(param1));
      }
      
      [Obfuscation(rename="false")]
      public function onDeathScheduled(param1:int) : void
      {
         battleEventDispatcher.dispatchEvent(new §if const dynamic§(param1));
      }
      
      [Obfuscation(rename="false")]
      public function die(param1:int) : void
      {
      }
      
      [Obfuscation(rename="false")]
      public function onReload(param1:ClientObject) : void
      {
         battleEventDispatcher.dispatchEvent(new §break extends§(param1.id));
      }
   }
}

