package §^!S§
{
   import §3!Y§.§+"@§;
   import §3!Y§.§52§;
   import §3!Y§.§static set catch§;
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
   import §with const catch§.§in const import§;
   
   public class §8E§ extends §52§ implements §static set catch§, §]!&§
   {
      [Inject]
      public static var §true const function§:EffectsMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      private const §extends else§:§<"X§ = new §<"X§();
      
      public function §8E§()
      {
         super();
      }
      
      private static function getTextureAnimation(param1:MultiframeImageResource, param2:Number, param3:BitmapFilter) : §package var package§
      {
         var _loc4_:§package var package§ = GraphicsUtils.getFilteredTextureAnimationFromResource(§true const function§,param1,param3);
         _loc4_.material.resolution = param2 / param1.frameWidth;
         return _loc4_;
      }
      
      private static function §get var return§(param1:BitmapData, param2:BitmapFilter) : TextureMaterial
      {
         var _loc3_:BitmapData = GraphicsUtils.createFilteredImage(param1,param2);
         var _loc4_:TextureMaterial = §true const function§.getMaterial(_loc3_);
         _loc4_.repeat = true;
         return _loc4_;
      }
      
      private static function §1">§(param1:String) : BitmapFilter
      {
         var _loc2_:§in const import§ = §in const import§(object.adapt(§in const import§));
         return _loc2_.createFilter(param1);
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc2_:§+"@§ = getInitParam();
         var _loc3_:§import for else§ = new §import for else§();
         var _loc4_:BitmapFilter = §1">§("trail");
         _loc3_.§7"^§ = §get var return§(_loc2_.trailImage.data,_loc4_);
         _loc3_.§default do§ = §get var return§(_loc2_.smokeImage.data,_loc4_);
         _loc3_.§try for const§ = §true const function§.getMaterial(_loc2_.hitMarkTexture.data);
         _loc3_.§`B§ = this.§^"e§(_loc2_.chargingPart1,_loc2_.chargingPart2,_loc2_.chargingPart3,§1">§("charge"));
         _loc3_.§override const set§ = getTextureAnimation(_loc2_.ringsTexture,§super const else§.§return for const§,_loc4_);
         _loc3_.§+"P§ = getTextureAnimation(_loc2_.sphereTexture,§super const else§.§class const package§,_loc4_);
         _loc3_.§import for catch§ = getTextureAnimation(_loc2_.powTexture,§super const else§.§[,§,_loc4_);
         _loc3_.sound = _loc2_.shotSound.sound;
         var _loc5_:§switch const for§ = §switch const for§(object.adapt(§switch const for§));
         _loc3_.§default const include§ = _loc5_.§in var const§("charge");
         _loc3_.§while const default§ = _loc5_.§in var const§("shot");
         _loc3_.§class for use§ = _loc5_.§in var const§("hit");
         _loc3_.§54§ = _loc5_.§in var const§("rail");
         param1.putParams(§import for else§,_loc3_);
      }
      
      private function §^"e§(param1:ImageResource, param2:ImageResource, param3:ImageResource, param4:BitmapFilter) : §package var package§
      {
         var _loc5_:BitmapData = GraphicsUtils.createFilteredImage(this.§extends else§.getTexture(param1,param2,param3),param4);
         var _loc6_:int = _loc5_.height;
         var _loc7_:§package var package§ = GraphicsUtils.getTextureAnimation(§true const function§,_loc5_,_loc6_,_loc6_);
         _loc7_.material.resolution = §super const else§.§finally var null§ / _loc6_;
         return _loc7_;
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§import for else§ = §import for else§(param1.getParams(§import for else§));
         §true const function§.releaseMaterial(_loc2_.§7"^§);
         §true const function§.releaseMaterial(_loc2_.§default do§);
         §true const function§.releaseMaterial(_loc2_.§`B§.material);
         §true const function§.releaseMaterial(_loc2_.§try for const§);
         §true const function§.releaseMaterial(_loc2_.§override const set§.material);
         §true const function§.releaseMaterial(_loc2_.§+"P§.material);
         §true const function§.releaseMaterial(_loc2_.§import for catch§.material);
      }
      
      public function §native const finally§(param1:ClientObject) : §<"'§
      {
         return new §super const else§(§import for else§(param1.getParams(§import for else§)),battleService);
      }
   }
}

