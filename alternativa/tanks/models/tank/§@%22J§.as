package alternativa.tanks.models.tank
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.BodyState;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§if var function§;
   import alternativa.tanks.battle.events.§implements in§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.battle.§var set set§;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   import alternativa.utils.clearDictionary;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.type.AutoClosable;
   
   public class §@"J§ implements §var set set§, AutoClosable, §override const do§
   {
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var battleService:BattleService;
      
      private static const §final import§:EncryptedNumber = new EncryptedNumberImpl(7000);
      
      private static const §try var use§:EncryptedNumber = new EncryptedNumberImpl(7050);
      
      private var §&"X§:Tank;
      
      private var §'K§:§return const if§;
      
      private const §]!S§:Dictionary = new Dictionary();
      
      public function §@"J§(param1:Tank, param2:Dictionary)
      {
         super();
         this.§&"X§ = param1;
         this.§else set catch§(param2);
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§if var function§,this.§get set catch§);
         this.§'K§.§import var get§(§implements in§,this.§try for native§);
         this.§'K§.§""'§();
      }
      
      private function §else set catch§(param1:Dictionary) : void
      {
         var _loc2_:Tank = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_ != this.§&"X§)
            {
               this.§]!S§[_loc2_] = true;
            }
         }
      }
      
      private function §get set catch§(param1:§if var function§) : void
      {
         if(param1.tank != this.§&"X§)
         {
            this.§]!S§[param1.tank] = true;
         }
      }
      
      private function §try for native§(param1:§implements in§) : void
      {
         if(param1.tank != this.§&"X§)
         {
            delete this.§]!S§[param1.tank];
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function §2;§() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:§,6§ = battleService.§catch include§();
         var _loc3_:§for for native§ = _loc2_.§function var break§();
         var _loc4_:Vector3 = _loc3_.position;
         for(_loc1_ in this.§]!S§)
         {
            this.§]>§(_loc1_,_loc4_);
         }
      }
      
      private function §]>§(param1:Tank, param2:Vector3) : void
      {
         if(param1.tankData.health > 0)
         {
            if(this.§&"X§.§4r§(param1.teamType))
            {
               param1.§ !G§();
            }
            else
            {
               this.§7!+§(param1,param2);
            }
         }
         else
         {
            param1.§implements for case§();
         }
      }
      
      private function §7!+§(param1:Tank, param2:Vector3) : void
      {
         var _loc3_:Body = param1.§<J§();
         var _loc4_:BodyState = _loc3_.state;
         var _loc5_:Vector3 = _loc4_.position;
         var _loc6_:Number = _loc5_.x - param2.x;
         var _loc7_:Number = _loc5_.y - param2.y;
         var _loc8_:Number = _loc5_.z - param2.z;
         var _loc9_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_);
         if(_loc9_ >= §try var use§.getNumber() || param1.§#f§(param2))
         {
            param1.§implements for case§();
         }
         else if(_loc9_ < §final import§.getNumber())
         {
            param1.§ !G§();
         }
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.§'K§.§const var false§();
         this.§'K§ = null;
         this.§&"X§ = null;
         clearDictionary(this.§]!S§);
      }
   }
}

