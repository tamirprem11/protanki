package §static const catch§
{
   import §9"9§.§=!t§;
   import §9"9§.§continue var with§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.MipMapping;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   import flash.display.BlendMode;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   
   public class §8,§ extends §super for static§ implements §=!t§
   {
      private static const SIZE:Number = 256;
      
      private static const §with const if§:Number = 2;
      
      private static const §implements const final§:Class = §case return§;
      
      private static const §if set function§:TextureMaterial = new TextureMaterial(new §implements const final§().bitmapData,false,true,MipMapping.PER_PIXEL,§with const if§);
      
      private static const §#>§:Class = §break var get§;
      
      private static const §dynamic set final§:TextureMaterial = new TextureMaterial(new §#>§().bitmapData,false,true,MipMapping.PER_PIXEL,§with const if§);
      
      private static const §%"6§:Class = §catch for case§;
      
      private static const §while each§:TextureMaterial = new TextureMaterial(new §%"6§().bitmapData,false,true,MipMapping.PER_PIXEL,§with const if§);
      
      private static const §else for package§:Class = §switch for function§;
      
      private static const §implements set var§:TextureMaterial = new TextureMaterial(new §else for package§().bitmapData,false,true,MipMapping.PER_PIXEL,§with const if§);
      
      private static const §-V§:Number = 100;
      
      private static const §[v§:Number = 300;
      
      private static const §=""§:Number = 500;
      
      private static const §throw const switch§:Number = 1000;
      
      private static const §with var case§:Number = 0.3;
      
      private static const §-6§:Number = 1.3;
      
      private static const §4!M§:Number = Math.PI / 2;
      
      private static const §else case§:Number = 3;
      
      private var sprite:Sprite3D;
      
      private var §"!7§:OmniLight = new OmniLight(0,0,0);
      
      private var container:§3!O§;
      
      private var §4o§:§continue var with§;
      
      private var alive:Boolean;
      
      private var time:Number;
      
      public function §8,§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.sprite);
         if(GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained)
         {
            param1.addChild(this.§"!7§);
         }
      }
      
      public function init(param1:Sprite3D, param2:§continue var with§, param3:Vector3) : void
      {
         this.sprite = param1;
         this.§4o§ = param2;
         param1.width = SIZE;
         param1.height = SIZE;
         param1.originX = 0.5;
         param1.originY = 0.5;
         param1.softAttenuation = 50;
         param1.useLight = false;
         param1.useShadowMap = false;
         param1.shadowMapAlphaThreshold = 2;
         param1.depthMapAlphaThreshold = 2;
         param1.blendMode = BlendMode.ADD;
         if(param1.name.indexOf("1") >= 0)
         {
            param1.material = §if set function§;
            this.§"!7§.color = 16727074;
         }
         else if(param1.name.indexOf("2") >= 0)
         {
            param1.material = §dynamic set final§;
            this.§"!7§.color = 6356736;
         }
         else if(param1.name.indexOf("3") >= 0)
         {
            param1.material = §while each§;
            this.§"!7§.color = 34047;
         }
         else if(param1.name.indexOf("4") >= 0)
         {
            param1.material = §implements set var§;
            this.§"!7§.color = 16771584;
         }
         this.§"!7§.intensity = 0.7;
         this.§"!7§.attenuationBegin = §[v§;
         this.§"!7§.attenuationEnd = §throw const switch§;
         this.§"!7§.calculateBounds();
         var _loc4_:Number = 200;
         var _loc5_:Number = param1.x - param3.x;
         var _loc6_:Number = param1.y - param3.y;
         var _loc7_:Number = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
         this.§"!7§.x = param1.x + _loc5_ * _loc4_ / _loc7_;
         this.§"!7§.y = param1.y + _loc6_ * _loc4_ / _loc7_;
         this.§"!7§.z = param1.z + _loc4_ / 2;
         this.time = Math.random() * §else case§;
         this.alive = true;
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(!this.alive)
         {
            return false;
         }
         this.§4o§.§true for if§(this.sprite,param2,param1);
         var _loc3_:Number = param1 / 1000;
         this.time += _loc3_;
         this.time %= §else case§;
         var _loc4_:Number = Math.sin(Math.PI * 2 * this.time / §else case§) * 0.5 + 0.5;
         var _loc5_:Number = §with var case§ + (§-6§ - §with var case§) * _loc4_;
         this.sprite.scaleX = _loc5_;
         this.sprite.scaleY = _loc5_;
         this.sprite.scaleZ = _loc5_;
         this.sprite.rotation += §4!M§ * _loc3_ * _loc4_;
         this.§"!7§.attenuationBegin = §-V§ + (§[v§ - §-V§) * _loc4_;
         this.§"!7§.attenuationEnd = §=""§ + (§throw const switch§ - §=""§) * _loc4_;
         return true;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.sprite);
         if(GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained)
         {
            this.container.removeChild(this.§"!7§);
         }
         this.sprite = null;
         this.container = null;
         this.§4o§.destroy();
         this.§4o§ = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
   }
}

