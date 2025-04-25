package §5!Y§
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§if var function§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.models.tank.§finally const class§;
   
   public class §>!G§ implements §override const do§
   {
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private var user:ClientObject;
      
      private var rankIndex:int;
      
      public function §>!G§(param1:ClientObject, param2:int)
      {
         super();
         this.user = param1;
         this.rankIndex = param2;
         battleEventDispatcher.§7i§(§if var function§,this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:§native var function§ = null;
         var _loc3_:§if var function§ = §if var function§(param1);
         var _loc4_:§finally const class§ = §finally const class§(OSGi.getInstance().getService(§finally const class§));
         if(_loc3_.tank == _loc4_.getTankData(this.user).tank)
         {
            _loc2_ = §native var function§(OSGi.getInstance().getService(§native var function§));
            _loc2_.§each var§(_loc3_.tank,this.rankIndex);
            this.close();
         }
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.user = null;
         battleEventDispatcher.§,"7§(§if var function§,this);
      }
   }
}

