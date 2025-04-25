package §;!S§
{
   import §+_§.§9!b§;
   import §+_§.§class for each§;
   import §+_§.§dynamic set else§;
   import §]<§.§switch const for§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.object.ClientObject;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.utils.GraphicsUtils;
   import flash.display.BitmapData;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   
   public class §2!,§ extends §class for each§ implements §dynamic set else§, §4![§
   {
      [Inject]
      public static var §true const function§:EffectsMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      public function §2!,§()
      {
         super();
      }
      
      private static function §>5§(param1:ImageResource) : TextureMaterial
      {
         var _loc2_:BitmapData = param1.data;
         var _loc3_:TextureMaterial = §true const function§.getMaterial(_loc2_);
         _loc3_.resolution = §9"C§.§throw package§ / _loc2_.height;
         return _loc3_;
      }
      
      private static function §case override§(param1:MultiframeImageResource, param2:Number) : §package var package§
      {
         var _loc3_:§package var package§ = GraphicsUtils.getTextureAnimationFromResource(§true const function§,param1);
         _loc3_.material.resolution = param2 / param1.frameWidth;
         return _loc3_;
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded(param1:ClientObject) : void
      {
         var _loc2_:§9!b§ = getInitParam();
         var _loc3_:§include for const§ = new §include for const§();
         _loc3_.§catch var implements§ = §>5§(_loc2_.shotTexture);
         _loc3_.§,_§ = §case override§(_loc2_.explosionTexture,_loc2_.explosionSize);
         _loc3_.explosionSize = _loc2_.explosionSize;
         _loc3_.shotSound = _loc2_.shotSound.sound;
         _loc3_.explosionSound = _loc2_.explosionSound.sound;
         _loc3_.§%"f§ = §true const function§.getMaterial(_loc2_.explosionMarkTexture.data);
         var _loc4_:§switch const for§ = §switch const for§(object.adapt(§switch const for§));
         _loc3_.§while const default§ = _loc4_.§in var const§("shot");
         _loc3_.§class for use§ = _loc4_.§in var const§("hit");
         param1.putParams(§include for const§,_loc3_);
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§include for const§ = §include for const§(param1.getParams(§include for const§));
         §true const function§.releaseMaterial(_loc2_.§catch var implements§);
         §true const function§.releaseMaterial(_loc2_.§,_§.material);
         §true const function§.releaseMaterial(_loc2_.§%"f§);
      }
      
      public function §native const finally§(param1:ClientObject) : §2`§
      {
         return new §if for use§(battleService,§include for const§(param1.getParams(§include for const§)));
      }
   }
}

