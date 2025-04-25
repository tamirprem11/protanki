package §;",§
{
   import §]<§.§switch const for§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.object.ClientObject;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.utils.GraphicsUtils;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import §try case§.§3L§;
   import §try case§.§9+§;
   import §try case§.§else extends§;
   import §with const catch§.§in const import§;
   
   public class §true for var§ extends §else extends§ implements §3L§, §include break§
   {
      [Inject]
      public static var §true const function§:EffectsMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      public function §true for var§()
      {
         super();
      }
      
      private static function §while var if§(param1:MultiframeImageResource, param2:BitmapFilter) : §package var package§
      {
         return getTextureAnimation(param1,§-!s§.§9"?§,param2);
      }
      
      private static function getTextureAnimation(param1:MultiframeImageResource, param2:Number, param3:BitmapFilter) : §package var package§
      {
         var _loc4_:§package var package§ = GraphicsUtils.getFilteredTextureAnimationFromResource(§true const function§,param1,param3);
         _loc4_.material.resolution = param2 / param1.frameWidth;
         return _loc4_;
      }
      
      private static function §1">§(param1:String) : BitmapFilter
      {
         var _loc2_:§in const import§ = §in const import§(object.adapt(§in const import§));
         return _loc2_.createFilter(param1);
      }
      
      private static function §case override§(param1:MultiframeImageResource, param2:BitmapFilter) : §package var package§
      {
         return getTextureAnimation(param1,§-!s§.§include const default§,param2);
      }
      
      private static function §?"?§(param1:MultiframeImageResource, param2:BitmapFilter) : §package var package§
      {
         return getTextureAnimation(param1,§-!s§.§include const default§,param2);
      }
      
      private static function §>5§(param1:ImageResource) : TextureMaterial
      {
         var _loc2_:BitmapData = param1.data;
         var _loc3_:TextureMaterial = §true const function§.getMaterial(_loc2_);
         _loc3_.resolution = §class var import§.§&0§ / _loc2_.height;
         return _loc3_;
      }
      
      private static function §get var return§(param1:BitmapData, param2:BitmapFilter) : TextureMaterial
      {
         var _loc3_:TextureMaterial = §true const function§.getMaterial(param1);
         _loc3_.resolution = §-!s§.§package var throw§ / param1.height;
         return _loc3_;
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc2_:§9+§ = getInitParam();
         var _loc3_:§1n§ = new §1n§();
         _loc3_.§var var switch§ = §while var if§(_loc2_.shotTexture,§1">§("shot"));
         _loc3_.§,_§ = §case override§(_loc2_.explosionTexture,§1">§("expl"));
         _loc3_.§8"N§ = §?"?§(_loc2_.bumpFlashTexture,§1">§("expl"));
         _loc3_.§catch var implements§ = §>5§(_loc2_.shotFlashTexture);
         _loc3_.§0!D§ = §get var return§(_loc2_.tailTrailTexutre.data,§1">§("trail"));
         _loc3_.shotSound = _loc2_.shotSound.sound;
         _loc3_.ricochetSound = _loc2_.ricochetSound.sound;
         _loc3_.explosionSound = _loc2_.§!"d§.sound;
         var _loc4_:§switch const for§ = §switch const for§(object.adapt(§switch const for§));
         _loc3_.§while const default§ = _loc4_.§in var const§("shot");
         _loc3_.§default const null§ = _loc4_.§in var const§("ricochet");
         _loc3_.§class for use§ = _loc4_.§in var const§("hit");
         _loc3_.§3_§ = _loc4_.§in var const§("bullet");
         param1.putParams(§1n§,_loc3_);
         param1.putParams(§class var import§,new §class var import§(battleService,_loc3_));
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§1n§ = this.§["Y§(param1);
         §true const function§.releaseMaterial(_loc2_.§,_§.material);
         §true const function§.releaseMaterial(_loc2_.§8"N§.material);
         §true const function§.releaseMaterial(_loc2_.§var var switch§.material);
         §true const function§.releaseMaterial(_loc2_.§catch var implements§);
         §true const function§.releaseMaterial(_loc2_.§0!D§);
      }
      
      public function §["Y§(param1:ClientObject) : §1n§
      {
         return §1n§(param1.getParams(§1n§));
      }
      
      public function §try break§(param1:ClientObject) : §class var import§
      {
         return §class var import§(param1.getParams(§class var import§));
      }
   }
}

