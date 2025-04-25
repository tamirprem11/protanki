package alternativa.tanks.models.weapon.shaft
{
   import §4!V§.§"B§;
   import §4!V§.§;W§;
   import §4!V§.§do set var§;
   import §]<§.§switch const for§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.object.ClientObject;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.utils.GraphicsUtils;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import flash.media.Sound;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import §switch var switch§.§-i§;
   import §with const catch§.§in const import§;
   
   public class §&"7§ extends §"B§ implements §;W§, §include var while§
   {
      [Inject]
      public static var §true const function§:EffectsMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      public function §&"7§()
      {
         super();
      }
      
      private static function §^"^§(param1:String) : BitmapFilter
      {
         var _loc2_:§in const import§ = §in const import§(object.adapt(§in const import§));
         return _loc2_.createFilter(param1);
      }
      
      private static function getTextureAnimation(param1:MultiframeImageResource, param2:BitmapFilter, param3:Number) : §package var package§
      {
         var _loc4_:§package var package§ = GraphicsUtils.getFilteredTextureAnimationFromResource(§true const function§,param1,param2);
         _loc4_.material.resolution = param3 / param1.frameWidth;
         return _loc4_;
      }
      
      private static function §get var return§(param1:BitmapData, param2:BitmapFilter) : TextureMaterial
      {
         var _loc3_:BitmapData = GraphicsUtils.createFilteredImage(param1,param2);
         var _loc4_:TextureMaterial = §true const function§.getMaterial(_loc3_);
         _loc4_.resolution = §-i§.WIDTH / _loc3_.width;
         return _loc4_;
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc2_:§do set var§ = getInitParam();
         var _loc3_:Sound = _loc2_.targetingSound.sound;
         var _loc4_:Sound = _loc2_.zoomModeSound.sound;
         var _loc5_:Sound = _loc2_.shotSound.sound;
         var _loc6_:Sound = _loc2_.explosionSound.sound;
         var _loc7_:BitmapFilter = §^"^§("def");
         var _loc8_:§package var package§ = getTextureAnimation(_loc2_.muzzleFlashTexture,_loc7_,§7G§.§&0§);
         var _loc9_:§package var package§ = getTextureAnimation(_loc2_.explosionTexture,_loc7_,§7G§.§implements for return§);
         var _loc10_:TextureMaterial = §get var return§(_loc2_.trailTexture.data,_loc7_);
         var _loc11_:TextureMaterial = §true const function§.getMaterial(_loc2_.hitMarkTexture.data);
         var _loc12_:Number = 500;
         var _loc13_:§9!R§ = new §9!R§(_loc5_,_loc6_,_loc4_,_loc3_,_loc8_,_loc10_,_loc9_,_loc11_,_loc12_);
         var _loc14_:§switch const for§ = §switch const for§(object.adapt(§switch const for§));
         _loc13_.§while const default§ = _loc14_.§in var const§("shot");
         _loc13_.§class for use§ = _loc14_.§in var const§("hit");
         param1.putParams(§9!R§,_loc13_);
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§9!R§ = §9!R§(param1.getParams(§9!R§));
         §true const function§.releaseMaterial(_loc2_.§7"^§);
         §true const function§.releaseMaterial(_loc2_.§continue try§.material);
         §true const function§.releaseMaterial(_loc2_.§,_§.material);
         §true const function§.releaseMaterial(_loc2_.§try for const§);
      }
      
      public function §native const finally§(param1:ClientObject) : §7G§
      {
         var _loc2_:§9!R§ = §9!R§(param1.getParams(§9!R§));
         return new §7G§(_loc2_,battleService);
      }
   }
}

