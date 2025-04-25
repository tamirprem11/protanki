package §^"f§
{
   import §+"O§.§with if§;
   import §8!1§.§9m§;
   import §]<§.§switch const for§;
   import alternativa.object.ClientObject;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.utils.GraphicsUtils;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import §switch set while§.§-!N§;
   import §switch set while§.§static const break§;
   import §switch set while§.§try const§;
   
   public class §@!y§ extends §try const§ implements §-!N§, §?"T§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §true const function§:EffectsMaterialRegistry;
      
      public function §@!y§()
      {
         super();
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§static const break§ = getInitParam();
         var _loc3_:§9m§ = new §9m§();
         _loc3_.§&c§ = this.§break const default§(_loc2_.particleTextureResource);
         _loc3_.§try var else§ = this.§false set super§(_loc2_.planeTextureResource);
         _loc3_.particleSpeed = §#",§.§8! §(_loc2_.particleSpeed);
         _loc3_.§[!V§ = _loc2_.shotSoundResource.sound;
         var _loc4_:§switch const for§ = §switch const for§(object.adapt(§switch const for§));
         _loc3_.§override for extends§ = _loc4_.§in var const§("start");
         _loc3_.§in const in§ = _loc4_.§in var const§("loop");
         _loc3_.§finally class§ = _loc4_.§in var const§("startFire");
         _loc3_.§do const package§ = _loc4_.§in var const§("loopFire");
         param1.putParams(§9m§,_loc3_);
      }
      
      private function §break const default§(param1:MultiframeImageResource) : §package var package§
      {
         var _loc2_:§package var package§ = GraphicsUtils.getTextureAnimationFromResource(§true const function§,param1);
         _loc2_.material.resolution = §1!H§.§continue const use§ / param1.frameWidth;
         return _loc2_;
      }
      
      private function §false set super§(param1:MultiframeImageResource) : §package var package§
      {
         var _loc2_:§package var package§ = GraphicsUtils.getTextureAnimationFromResource(§true const function§,param1);
         _loc2_.material.resolution = §1!H§.§null const override§ / param1.frameWidth;
         return _loc2_;
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§9m§ = §9m§(param1.getParams(§9m§));
         §true const function§.releaseMaterial(_loc2_.§&c§.material);
         §true const function§.releaseMaterial(_loc2_.§try var else§.material);
      }
      
      public function §1"H§(param1:Number, param2:Number, param3:ClientObject) : §with if§
      {
         var _loc4_:§9m§ = §9m§(param3.getParams(§9m§));
         return new §`"S§(battleService.§#!o§(),param1,param2,_loc4_);
      }
   }
}

