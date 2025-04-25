package §var for var§
{
   import §]!N§.§9"4§;
   import §]!N§.§^!'§;
   import §]!N§.§const else§;
   import §]<§.§switch const for§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.object.ClientObject;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.models.weapon.smoky.§&"I§;
   import alternativa.tanks.models.weapon.smoky.§1"§;
   import alternativa.tanks.utils.GraphicsUtils;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   
   public class §continue var while§ extends §9"4§ implements §const else§, §class for break§
   {
      [Inject]
      public static var §true const function§:EffectsMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      public function §continue var while§()
      {
         super();
      }
      
      private static function §>5§(param1:ImageResource) : TextureMaterial
      {
         var _loc2_:TextureMaterial = §true const function§.getMaterial(param1.data);
         _loc2_.resolution = §1"§.§-"_§ / param1.data.height;
         return _loc2_;
      }
      
      private static function § !3§(param1:MultiframeImageResource, param2:int) : §package var package§
      {
         var _loc3_:§package var package§ = GraphicsUtils.getTextureAnimationFromResource(§true const function§,param1);
         _loc3_.material.resolution = param2 / param1.frameWidth;
         return _loc3_;
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§^!'§ = getInitParam();
         var _loc3_:§function set static§ = new §function set static§();
         _loc3_.§catch var implements§ = §>5§(_loc2_.shotTexture);
         _loc3_.§,_§ = § !3§(_loc2_.explosionTexture,_loc2_.explosionSize);
         _loc3_.§%"f§ = §true const function§.getMaterial(_loc2_.explosionMarkTexture.data);
         _loc3_.§>!"§ = § !3§(_loc2_.criticalHitTexture,_loc2_.criticalHitSize);
         _loc3_.criticalHitSize = _loc2_.criticalHitSize;
         _loc3_.shotSound = _loc2_.shotSound.sound;
         _loc3_.explosionSound = _loc2_.explosionSound.sound;
         _loc3_.explosionSize = _loc2_.explosionSize;
         var _loc4_:§switch const for§ = §switch const for§(object.adapt(§switch const for§));
         _loc3_.§while const default§ = _loc4_.§in var const§("shot");
         _loc3_.§class for use§ = _loc4_.§in var const§("hit");
         param1.putParams(§function set static§,_loc3_);
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§function set static§ = §function set static§(param1.getParams(§function set static§));
         §true const function§.releaseMaterial(_loc2_.§catch var implements§);
         §true const function§.releaseMaterial(_loc2_.§,_§.material);
         §true const function§.releaseMaterial(_loc2_.§%"f§);
         §true const function§.releaseMaterial(_loc2_.§>!"§.material);
      }
      
      public function §native const finally§(param1:ClientObject) : §&"I§
      {
         var _loc2_:§function set static§ = §function set static§(param1.getParams(§function set static§));
         return new §""R§(battleService.§try var final§().§`b§(),battleService.§#!o§(),_loc2_);
      }
   }
}

