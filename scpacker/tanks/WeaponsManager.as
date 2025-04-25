package scpacker.tanks
{
   import §+_§.§9!b§;
   import §3!Y§.§+"@§;
   import §4!V§.§do set var§;
   import §7![§.§in implements§;
   import §7!v§.§&+§;
   import §7"-§.§=!T§;
   import §;!S§.§2!,§;
   import §;",§.§true for var§;
   import §["<§.§6"X§;
   import §]!N§.§^!'§;
   import §^!S§.§8E§;
   import §^"f§.§@!y§;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.register.ClientClass;
   import alternativa.tanks.models.weapon.shaft.§&"7§;
   import alternativa.types.Long;
   import §each var import§.§ !e§;
   import §each var import§.§implements set break§;
   import §each var import§.§throw var each§;
   import §false const return§.§8"R§;
   import §false const return§.§use for class§;
   import §final for do§.§implements each§;
   import flash.utils.Dictionary;
   import §in var in§.§6!l§;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   import platform.client.fp10.core.type.IGameObject;
   import §return in§.§@y§;
   import §return in§.§native var use§;
   import §super for implements§.§native finally§;
   import §switch set while§.§static const break§;
   import §try case§.§9+§;
   import §var for var§.§continue var while§;
   
   public class WeaponsManager
   {
      public static var resourceRegistry:ResourceRegistry = OSGi.getInstance().getService(ResourceRegistry) as ResourceRegistry;
      
      public static var modelRegistry:ModelRegistry = OSGi.getInstance().getService(ModelRegistry) as ModelRegistry;
      
      public static var shotDatas:Dictionary = new Dictionary();
      
      public static var specialEntity:Dictionary = new Dictionary();
      
      private static var railgunSFXModels:Dictionary = new Dictionary();
      
      private static var smokySFXModels:Dictionary = new Dictionary();
      
      private static var flamethrowerSFXModels:Dictionary = new Dictionary();
      
      private static var twinsSFXModels:Dictionary = new Dictionary();
      
      private static var isidaSFXModels:Dictionary = new Dictionary();
      
      private static var thunderSFXModels:Dictionary = new Dictionary();
      
      private static var frezeeSFXModels:Dictionary = new Dictionary();
      
      private static var ricochetSFXModels:Dictionary = new Dictionary();
      
      private static var shaftSFXModel:Dictionary = new Dictionary();
      
      private static var turretObjects:Dictionary = new Dictionary();
      
      public function WeaponsManager()
      {
         super();
      }
      
      public static function §final for dynamic§(param1:ClientObject, param2:ClientObject, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:§@y§ = OSGi.getInstance().getService(§native var use§) as §@y§;
         if(_loc7_ == null)
         {
            _loc7_ = new §@y§();
            OSGi.getInstance().registerService(§native var use§,_loc7_);
         }
         _loc7_.initObject(param2,param3,param4,param5,param6);
      }
      
      public static function initBCSH(param1:Object, param2:IGameObject) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:§8"R§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc3_:Vector.<§8"R§> = new Vector.<§8"R§>();
         for each(_loc4_ in param1.bcsh)
         {
            _loc5_ = new §8"R§();
            _loc5_.brightness = _loc4_.brightness;
            _loc5_.contrast = _loc4_.contrast;
            _loc5_.hue = _loc4_.hue;
            _loc5_.key = _loc4_.key;
            _loc5_.saturation = _loc4_.saturation;
            _loc3_.push(_loc5_);
         }
         Model.object = param2;
         modelRegistry.getModel(param2.gameClass.models[3]).putInitParams(new §use for class§(_loc3_));
         ObjectLoadListener(modelRegistry.getModel(param2.gameClass.models[3])).objectLoaded();
         Model.popObject();
      }
      
      public static function initLighting(param1:Object, param2:IGameObject) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:§implements set break§ = null;
         var _loc6_:* = undefined;
         var _loc7_:§ !e§ = null;
         if(param1 == null)
         {
            return;
         }
         var _loc3_:Vector.<§implements set break§> = new Vector.<§implements set break§>();
         for each(_loc4_ in param1.lighting)
         {
            _loc5_ = new §implements set break§();
            _loc5_.name = _loc4_.name;
            _loc5_.§&"`§ = new Vector.<§ !e§>();
            for each(_loc6_ in _loc4_.light)
            {
               _loc7_ = new § !e§();
               _loc7_.attenuationBegin = _loc6_.attenuationBegin;
               _loc7_.attenuationEnd = _loc6_.attenuationEnd;
               _loc7_.color = _loc6_.color;
               _loc7_.intensity = _loc6_.intensity;
               _loc7_.time = _loc6_.time;
               _loc5_.§&"`§.push(_loc7_);
            }
            _loc3_.push(_loc5_);
         }
         Model.object = param2;
         modelRegistry.getModel(param2.gameClass.models[4]).putInitParams(new §throw var each§(_loc3_));
         Model.popObject();
      }
      
      public static function getRailgunSFX(param1:ClientObject, param2:Object = null) : §8E§
      {
         var _loc3_:§8E§ = null;
         var _loc4_:§+"@§ = null;
         if(railgunSFXModels == null)
         {
            railgunSFXModels = new Dictionary();
         }
         if(param2 != null)
         {
            railgunSFXModels[param1.id] = new §8E§();
            _loc4_ = new §+"@§();
            _loc4_.chargingPart1 = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.chargingPart1)));
            _loc4_.chargingPart2 = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.chargingPart2)));
            _loc4_.chargingPart3 = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.chargingPart3)));
            _loc4_.hitMarkTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.hitMarkTexture)));
            _loc4_.powTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.powTexture)));
            _loc4_.ringsTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.ringsTexture)));
            _loc4_.shotSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.shotSound)));
            _loc4_.smokeImage = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.smokeImage)));
            _loc4_.sphereTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.sphereTexture)));
            _loc4_.trailImage = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.trailImage)));
            railgunSFXModels[param1.id].putInitParams(_loc4_);
            railgunSFXModels[param1.id].objectLoadedPost(param1);
         }
         return railgunSFXModels[param1.id];
      }
      
      public static function getSmokySFX(param1:ClientObject, param2:Object = null) : §continue var while§
      {
         var _loc3_:§continue var while§ = null;
         var _loc4_:§^!'§ = null;
         if(smokySFXModels == null)
         {
            smokySFXModels = new Dictionary();
         }
         if(param2 != null)
         {
            _loc4_ = new §^!'§();
            _loc4_.criticalHitSize = param2.criticalHitSize;
            _loc4_.criticalHitTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.criticalHitTexture)));
            _loc4_.explosionMarkTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionMarkTexture)));
            _loc4_.explosionSize = param2.explosionSize;
            _loc4_.explosionSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionSound)));
            _loc4_.explosionTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionTexture)));
            _loc4_.shotSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.shotSound)));
            _loc4_.shotTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.shotTexture)));
            smokySFXModels[param1.id] = new §continue var while§();
            smokySFXModels[param1.id].putInitParams(_loc4_);
            smokySFXModels[param1.id].objectLoaded(param1);
         }
         return smokySFXModels[param1.id];
      }
      
      public static function getFlamethrowerSFX(param1:ClientObject, param2:Object = null) : §implements each§
      {
         var _loc3_:§6"X§ = null;
         var _loc4_:Vector.<§&+§> = null;
         var _loc5_:* = undefined;
         var _loc6_:§&+§ = null;
         if(flamethrowerSFXModels == null)
         {
            flamethrowerSFXModels = new Dictionary();
         }
         if(param2 != null)
         {
            flamethrowerSFXModels[param1.id] = new §implements each§();
            _loc3_ = new §6"X§();
            _loc3_.fireTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.fireTexture)));
            _loc3_.flameSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.flameSound)));
            _loc3_.muzzlePlaneTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.muzzlePlaneTexture)));
            flamethrowerSFXModels[param1.id].putInitParams(_loc3_);
            flamethrowerSFXModels[param1.id].objectLoaded(param1);
            _loc4_ = new Vector.<§&+§>();
            for each(_loc5_ in param2.colorTransform)
            {
               _loc6_ = new §&+§(_loc5_.redMultiplier,_loc5_.greenMultiplier,_loc5_.blueMultiplier,_loc5_.alphaMultiplier,_loc5_.redOffset,_loc5_.greenOffset,_loc5_.blueOffset,_loc5_.alphaOffset,_loc5_.t);
               _loc4_.push(_loc6_);
            }
            flamethrowerSFXModels[param1.id].initColorTransform(param1,_loc4_);
         }
         return flamethrowerSFXModels[param1.id];
      }
      
      public static function getTwinsSFX(param1:ClientObject, param2:Object = null) : §in implements§
      {
         var _loc3_:§=!T§ = null;
         if(twinsSFXModels == null)
         {
            twinsSFXModels = new Dictionary();
         }
         if(param2 != null)
         {
            twinsSFXModels[param1.id] = new §in implements§();
            _loc3_ = new §=!T§();
            _loc3_.explosionTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionTexture)));
            _loc3_.hitMarkTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.hitMarkTexture)));
            _loc3_.muzzleFlashTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.muzzleFlashTexture)));
            _loc3_.shotSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.shotSound)));
            _loc3_.shotTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.shotTexture)));
            twinsSFXModels[param1.id].putInitParams(_loc3_);
            twinsSFXModels[param1.id].objectLoadedPost(param1);
         }
         return twinsSFXModels[param1.id];
      }
      
      public static function getIsidaSFX(param1:ClientObject, param2:Object = null) : §native finally§
      {
         var _loc3_:§6!l§ = null;
         if(isidaSFXModels == null)
         {
            isidaSFXModels = new Dictionary();
         }
         if(param2 != null)
         {
            isidaSFXModels[param1.id] = new §native finally§();
            _loc3_ = new §6!l§();
            _loc3_.damagingBall = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.damagingBall)));
            _loc3_.damagingRay = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.damagingRay)));
            _loc3_.damagingSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.damagingSound)));
            _loc3_.healingBall = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.healingBall)));
            _loc3_.healingRay = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.healingRay)));
            _loc3_.healingSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.healingSound)));
            _loc3_.idleSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.idleSound)));
            isidaSFXModels[param1.id].putInitParams(_loc3_);
            isidaSFXModels[param1.id].objectLoadedPost(param1);
         }
         return isidaSFXModels[param1.id];
      }
      
      public static function getThunderSFX(param1:ClientObject, param2:Object = null) : §2!,§
      {
         var _loc3_:§9!b§ = null;
         if(thunderSFXModels == null)
         {
            thunderSFXModels = new Dictionary();
         }
         if(param2 != null)
         {
            thunderSFXModels[param1.id] = new §2!,§();
            _loc3_ = new §9!b§();
            _loc3_.explosionMarkTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionMarkTexture)));
            _loc3_.explosionSize = param2.explosionSize;
            _loc3_.explosionSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionSound)));
            _loc3_.explosionTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionTexture)));
            _loc3_.shotSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.shotSound)));
            _loc3_.shotTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.shotTexture)));
            thunderSFXModels[param1.id].putInitParams(_loc3_);
            thunderSFXModels[param1.id].objectLoaded(param1);
         }
         return thunderSFXModels[param1.id];
      }
      
      public static function getFrezeeSFXModel(param1:ClientObject, param2:Object = null) : §@!y§
      {
         var _loc3_:§static const break§ = null;
         if(frezeeSFXModels == null)
         {
            frezeeSFXModels = new Dictionary();
         }
         if(param2 != null)
         {
            frezeeSFXModels[param1.id] = new §@!y§();
            _loc3_ = new §static const break§();
            _loc3_.particleSpeed = param2.particleSpeed;
            _loc3_.particleTextureResource = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.particleTextureResource)));
            _loc3_.planeTextureResource = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.planeTextureResource)));
            _loc3_.shotSoundResource = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.shotSoundResource)));
            frezeeSFXModels[param1.id].putInitParams(_loc3_);
            frezeeSFXModels[param1.id].objectLoaded(param1);
         }
         return frezeeSFXModels[param1.id];
      }
      
      public static function getRicochetSFXModel(param1:ClientObject, param2:Object = null) : §true for var§
      {
         var _loc3_:§true for var§ = null;
         var _loc4_:§9+§ = null;
         if(ricochetSFXModels == null)
         {
            ricochetSFXModels = new Dictionary();
         }
         if(param2 != null)
         {
            ricochetSFXModels[param1.id] = new §true for var§();
            _loc4_ = new §9+§();
            _loc4_.bumpFlashTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.bumpFlashTexture)));
            _loc4_.explosionTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionTexture)));
            _loc4_.§!"d§ = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionSound)));
            _loc4_.ricochetSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.ricochetSound)));
            _loc4_.shotFlashTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.shotFlashTexture)));
            _loc4_.shotSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.shotSound)));
            _loc4_.shotTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.shotTexture)));
            _loc4_.tailTrailTexutre = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.tailTrailTexutre)));
            ricochetSFXModels[param1.id].putInitParams(_loc4_);
            ricochetSFXModels[param1.id].objectLoadedPost(param1);
         }
         return ricochetSFXModels[param1.id];
      }
      
      public static function getShaftSFX(param1:ClientObject, param2:Object = null) : §&"7§
      {
         var _loc3_:§&"7§ = null;
         var _loc4_:§do set var§ = null;
         if(shaftSFXModel == null)
         {
            shaftSFXModel = new Dictionary();
         }
         if(param2 != null)
         {
            shaftSFXModel[param1.id] = new §&"7§();
            _loc4_ = new §do set var§();
            _loc4_.explosionSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionSound)));
            _loc4_.explosionTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.explosionTexture)));
            _loc4_.hitMarkTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.hitMarkTexture)));
            _loc4_.muzzleFlashTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,param2.muzzleFlashTexture)));
            _loc4_.shotSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.shotSound)));
            _loc4_.targetingSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.targetingSound)));
            _loc4_.trailTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,param2.trailTexture)));
            _loc4_.zoomModeSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,param2.zoomModeSound)));
            shaftSFXModel[param1.id].putInitParams(_loc4_);
            shaftSFXModel[param1.id].objectLoadedPost(param1);
         }
         return shaftSFXModel[param1.id];
      }
      
      public static function getObjectFor(param1:String) : ClientObject
      {
         if(turretObjects[param1] == null)
         {
            turretObjects[param1] = initObject(param1);
         }
         return turretObjects[param1];
      }
      
      public static function clearSFXModel(param1:ClientObject) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(shaftSFXModel != null)
         {
            if(shaftSFXModel[param1.id] != null)
            {
               shaftSFXModel[param1.id].objectUnloaded(param1);
               delete shaftSFXModel[param1.id];
            }
         }
         if(thunderSFXModels != null)
         {
            if(thunderSFXModels[param1.id] != null)
            {
               thunderSFXModels[param1.id].objectUnloaded(param1);
               delete thunderSFXModels[param1.id];
            }
         }
         if(ricochetSFXModels != null)
         {
            if(ricochetSFXModels[param1.id] != null)
            {
               ricochetSFXModels[param1.id].objectUnloaded(param1);
               delete ricochetSFXModels[param1.id];
            }
         }
         if(frezeeSFXModels != null)
         {
            if(frezeeSFXModels[param1.id] != null)
            {
               frezeeSFXModels[param1.id].objectUnloaded(param1);
               delete frezeeSFXModels[param1.id];
            }
         }
         if(isidaSFXModels != null)
         {
            if(isidaSFXModels[param1.id] != null)
            {
               isidaSFXModels[param1.id].objectUnloaded(param1);
               delete isidaSFXModels[param1.id];
            }
         }
         if(twinsSFXModels != null)
         {
            if(twinsSFXModels[param1.id] != null)
            {
               twinsSFXModels[param1.id].objectUnloaded(param1);
               delete twinsSFXModels[param1.id];
            }
         }
         if(flamethrowerSFXModels != null)
         {
            if(flamethrowerSFXModels[param1.id] != null)
            {
               flamethrowerSFXModels[param1.id].objectUnloaded(param1);
               delete flamethrowerSFXModels[param1.id];
            }
         }
         if(smokySFXModels != null)
         {
            if(smokySFXModels[param1.id] != null)
            {
               smokySFXModels[param1.id].objectUnloaded(param1);
               delete smokySFXModels[param1.id];
            }
         }
         if(railgunSFXModels != null)
         {
            if(railgunSFXModels[param1.id] != null)
            {
               railgunSFXModels[param1.id].objectUnloaded(param1);
               delete railgunSFXModels[param1.id];
            }
         }
      }
      
      private static function initObject(param1:String) : ClientObject
      {
         return new ClientObject(param1,new ClientClass(param1,null,param1,null),param1,null);
      }
      
      public static function destroy() : void
      {
         isidaSFXModels = null;
         twinsSFXModels = null;
         flamethrowerSFXModels = null;
         smokySFXModels = null;
         railgunSFXModels = null;
         thunderSFXModels = null;
         ricochetSFXModels = null;
         frezeeSFXModels = null;
         shaftSFXModel = null;
      }
   }
}

