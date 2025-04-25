package §7!-§
{
   import §@"?§.§!!i§;
   import §@"?§.§^!s§;
   import §@"?§.§include var set§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.physics.Body;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import alternativa.tanks.models.weapon.§continue set dynamic§;
   import §dynamic package§.§6"d§;
   import §dynamic package§.§]"P§;
   import §dynamic package§.§throw const function§;
   
   public class §+"&§ extends §^!s§ implements §include var set§, §?"[§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private static const §`"O§:Vector3 = new Vector3();
      
      private static const §>"@§:Vector3 = new Vector3();
      
      private static const vector:Vector3 = new Vector3();
      
      private static const §native for function§:RayHit = new RayHit();
      
      public function §+"&§()
      {
         super();
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§!!i§ = getInitParam();
         var _loc3_:§while for try§ = null;
         if(_loc2_ != null)
         {
            _loc3_ = new §while for try§(§#",§.§8! §(_loc2_.radiusOfMaxSplashDamage),§#",§.§8! §(_loc2_.splashDamageRadius),_loc2_.minSplashDamagePercent,_loc2_.impactForce * §continue set dynamic§.§ !0§.getNumber());
         }
         param1.putParams(§while for try§,_loc3_);
      }
      
      public function §=X§(param1:ClientObject, param2:Vector3, param3:Number, param4:Body, param5:Vector.<String> = null, param6:Vector.<Number> = null) : Boolean
      {
         var _loc7_:§6"d§ = null;
         var _loc8_:Body = null;
         var _loc9_:Tank = null;
         var _loc10_:Vector3 = null;
         var _loc11_:Number = NaN;
         var _loc12_:§while for try§ = §while for try§(param1.getParams(§while for try§));
         if(_loc12_ == null)
         {
            return false;
         }
         var _loc13_:Number = _loc12_.§,"U§() * _loc12_.§,"U§();
         var _loc14_:§throw const function§ = battleService.§try var final§().§`"N§();
         for each(_loc7_ in _loc14_.getTankBodies())
         {
            _loc8_ = _loc7_.body;
            _loc9_ = _loc8_.tank;
            if(_loc9_.state == §extends var dynamic§.§<"]§ && _loc8_ != param4)
            {
               _loc10_ = _loc9_.§<J§().state.position;
               §`"O§.diff(_loc10_,param2);
               _loc11_ = §`"O§.lengthSqr();
               if(_loc11_ <= _loc13_)
               {
                  if(!this.§false const static§(_loc9_,param2))
                  {
                     if(param5 != null && param6 != null)
                     {
                        param5.push(_loc9_.§&"N§().id);
                        param6.push(Math.sqrt(_loc11_) * 0.01);
                     }
                     §>"@§.copy(§`"O§);
                     §>"@§.normalize();
                     _loc9_.§class set set§(_loc9_.§<J§().state.position,§>"@§,param3 * _loc12_.§do const class§(Math.sqrt(_loc11_)));
                  }
               }
            }
         }
         return true;
      }
      
      private function §false const static§(param1:Tank, param2:Vector3) : Boolean
      {
         var _loc3_:Body = param1.§<J§();
         var _loc4_:Number = 0.75 * param1.§1_§();
         return this.§>!9§(param2,_loc3_,0) && this.§>!9§(param2,_loc3_,-_loc4_) && this.§>!9§(param2,_loc3_,_loc4_);
      }
      
      private function §>!9§(param1:Vector3, param2:Body, param3:Number) : Boolean
      {
         vector.reset(0,param3,0);
         vector.transform3(param2.baseMatrix);
         vector.add(param2.state.position);
         vector.subtract(param1);
         var _loc4_:§throw const function§ = battleService.§try var final§().§`"N§();
         return _loc4_.raycastStatic(param1,vector,§]"P§.§return set for§,1,null,§native for function§);
      }
   }
}

