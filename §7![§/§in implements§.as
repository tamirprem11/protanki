package §7![§
{
   import §7"-§.§=!T§;
   import §7"-§.§const var extends§;
   import §7"-§.§throw set get§;
   import §]<§.§switch const for§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.object.ClientObject;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.utils.GraphicsUtils;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import §with const catch§.§in const import§;
   
   public class §in implements§ extends §throw set get§ implements §const var extends§, §extends for try§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §true const function§:EffectsMaterialRegistry;
      
      public function §in implements§()
      {
         super();
      }
      
      private static function §>5§(param1:BitmapData, param2:BitmapFilter) : TextureMaterial
      {
         var _loc3_:BitmapData = GraphicsUtils.createFilteredImage(param1,param2);
         var _loc4_:TextureMaterial = §true const function§.getMaterial(_loc3_);
         _loc4_.resolution = §super for override§.§'!C§ / param1.height;
         return _loc4_;
      }
      
      private static function §if true§(param1:MultiframeImageResource, param2:BitmapFilter) : §package var package§
      {
         return getTextureAnimation(param1,param2,§true var native§.§9"?§);
      }
      
      private static function §case override§(param1:MultiframeImageResource, param2:BitmapFilter) : §package var package§
      {
         return getTextureAnimation(param1,param2,§true var native§.§include const default§);
      }
      
      private static function getTextureAnimation(param1:MultiframeImageResource, param2:BitmapFilter, param3:Number) : §package var package§
      {
         var _loc4_:§package var package§ = GraphicsUtils.getFilteredTextureAnimationFromResource(§true const function§,param1,param2);
         _loc4_.material.resolution = param3 / param1.frameWidth;
         return _loc4_;
      }
      
      private static function §1">§(param1:String) : BitmapFilter
      {
         var _loc2_:§in const import§ = §in const import§(object.adapt(§in const import§));
         return _loc2_.createFilter(param1);
      }
      
      private static function §include var default§(param1:§<!&§) : void
      {
         §true const function§.releaseMaterial(param1.§catch var implements§);
         §true const function§.releaseMaterial(param1.§var var switch§.material);
         §true const function§.releaseMaterial(param1.§,_§.material);
         §true const function§.releaseMaterial(param1.§try for const§);
      }
      
      public function §continue var false§(param1:ClientObject) : §super for override§
      {
         return §super for override§(param1.getParams(§super for override§));
      }
      
      public function §++§(param1:ClientObject) : §<!&§
      {
         return §<!&§(param1.getParams(§<!&§));
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc2_:§=!T§ = getInitParam();
         var _loc3_:§<!&§ = new §<!&§();
         _loc3_.§catch var implements§ = §>5§(_loc2_.muzzleFlashTexture.data,§1">§("flash"));
         _loc3_.§var var switch§ = §if true§(_loc2_.shotTexture,§1">§("shot"));
         _loc3_.§,_§ = §case override§(_loc2_.explosionTexture,§1">§("expl"));
         _loc3_.§try for const§ = §true const function§.getMaterial(_loc2_.hitMarkTexture.data);
         _loc3_.shotSound = _loc2_.shotSound.sound;
         var _loc4_:§switch const for§ = §switch const for§(object.adapt(§switch const for§));
         _loc3_.§70§ = _loc4_.§in var const§("shot");
         _loc3_.§1"g§ = _loc4_.§in var const§("bullet");
         _loc3_.§do var override§ = _loc4_.§in var const§("hit");
         param1.putParams(§<!&§,_loc3_);
         param1.putParams(§super for override§,new §super for override§(battleService,_loc3_));
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded(param1:ClientObject) : void
      {
         §include var default§(this.§++§(param1));
      }
   }
}

