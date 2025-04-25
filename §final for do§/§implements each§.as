package §final for do§
{
   import §+"O§.§with if§;
   import §7!v§.§&+§;
   import §8!1§.§9m§;
   import §["<§.§1!;§;
   import §["<§.§6"X§;
   import §["<§.§super const in§;
   import §]<§.§switch const for§;
   import alternativa.object.ClientObject;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.utils.GraphicsUtils;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   
   public class §implements each§ extends §super const in§ implements §1!;§, §use var package§
   {
      [Inject]
      public static var §true const function§:EffectsMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      public function §implements each§()
      {
         super();
      }
      
      private static function §break const default§(param1:MultiframeImageResource) : §package var package§
      {
         var _loc2_:§package var package§ = GraphicsUtils.getTextureAnimationFromResource(§true const function§,param1);
         _loc2_.material.resolution = §^"P§.§continue const use§ / param1.frameWidth;
         return _loc2_;
      }
      
      private static function §false set super§(param1:MultiframeImageResource) : §package var package§
      {
         var _loc2_:§package var package§ = GraphicsUtils.getTextureAnimationFromResource(§true const function§,param1);
         _loc2_.material.resolution = §^"P§.§null const override§ / param1.frameWidth;
         return _loc2_;
      }
      
      public function initColorTransform(param1:ClientObject, param2:Vector.<§&+§>) : void
      {
         var _loc3_:§9m§ = §9m§(param1.getParams(§9m§));
         _loc3_.§&!#§ = param2;
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§6"X§ = getInitParam();
         var _loc3_:§9m§ = new §9m§();
         _loc3_.§&c§ = §break const default§(_loc2_.fireTexture);
         _loc3_.§try var else§ = §false set super§(_loc2_.muzzlePlaneTexture);
         _loc3_.§[!V§ = _loc2_.flameSound.sound;
         _loc3_.particleSpeed = §^"P§.§catch false§;
         var _loc4_:§switch const for§ = §switch const for§(object.adapt(§switch const for§));
         _loc3_.§override for extends§ = _loc4_.§in var const§("start");
         _loc3_.§in const in§ = _loc4_.§in var const§("loop");
         _loc3_.§finally class§ = _loc4_.§in var const§("startFire");
         _loc3_.§do const package§ = _loc4_.§in var const§("loopFire");
         param1.putParams(§9m§,_loc3_);
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§9m§ = §9m§(param1.getParams(§9m§));
         §true const function§.releaseMaterial(_loc2_.§&c§.material);
         §true const function§.releaseMaterial(_loc2_.§try var else§.material);
      }
      
      public function §8c§(param1:Number, param2:Number, param3:ClientObject) : §with if§
      {
         var _loc4_:§9m§ = §9m§(param3.getParams(§9m§));
         return new §6"-§(battleService.§#!o§(),param1,param2,_loc4_);
      }
   }
}

