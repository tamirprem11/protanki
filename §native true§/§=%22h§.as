package §native true§
{
   import §9"9§.§=!t§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   import flash.display.BlendMode;
   
   public class §="h§ extends §super for static§ implements §=!t§
   {
      private static const vector:Vector3 = new Vector3();
      
      private var §7T§:Sprite3D;
      
      private var delay:int;
      
      private var time:int;
      
      private var §switch const null§:Number;
      
      private var direction:Boolean;
      
      private var turret:Object3D;
      
      private var state:int;
      
      private var container:§3!O§;
      
      public function §="h§(param1:§default const static§)
      {
         super(param1);
         this.§7T§ = new Sprite3D(10,10);
         this.§7T§.blendMode = BlendMode.ADD;
      }
      
      public function init(param1:int, param2:Number, param3:Number, param4:Boolean, param5:Object3D, param6:TextureMaterial) : void
      {
         this.delay = param1;
         this.§7T§.width = param2;
         this.§7T§.height = param2;
         this.§7T§.calculateBounds();
         this.§switch const null§ = param3;
         this.direction = param4;
         this.turret = param5;
         param6.resolution = 5;
         this.§7T§.material = param6;
         this.§7T§.scaleX = 1;
         this.§7T§.scaleY = 1;
         this.§7T§.scaleZ = 1;
         this.§7T§.rotation = 0;
         this.§7T§.alpha = 0;
         this.state = 0;
         this.§7T§.softAttenuation = 150;
         this.§7T§.depthMapAlphaThreshold = 2;
         this.§7T§.shadowMapAlphaThreshold = 2;
         this.§7T§.useShadowMap = false;
         this.§7T§.useLight = false;
         this.time = 0;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§7T§);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.state == 2)
         {
            return false;
         }
         var _loc6_:Number = 0.7 * 5;
         var _loc7_:Number = _loc6_ / 3;
         var _loc8_:Number = 0.2;
         _loc3_ = 300;
         vector.x = param2.x - this.turret.x;
         vector.y = param2.y - this.turret.y;
         vector.z = param2.z - this.turret.z;
         vector.normalize();
         vector.scale(_loc3_);
         this.§7T§.x = this.turret.x + vector.x;
         this.§7T§.y = this.turret.y + vector.y;
         this.§7T§.z = this.turret.z + vector.z + 30;
         this.time += param1;
         if(this.time >= this.delay)
         {
            if(this.direction)
            {
               this.§7T§.rotation += _loc8_ * param1 * 0.001;
            }
            else
            {
               this.§7T§.rotation -= _loc8_ * param1 * 0.001;
            }
            if(this.state == 0)
            {
               _loc4_ = _loc6_ * param1 * 0.001;
               this.§7T§.scaleX += _loc4_;
               this.§7T§.scaleY += _loc4_;
               this.§7T§.scaleZ += _loc4_;
               if(this.§7T§.scaleX > this.§switch const null§)
               {
                  this.§7T§.scaleX = this.§switch const null§;
                  this.§7T§.scaleY = this.§switch const null§;
                  this.§7T§.scaleZ = this.§switch const null§;
                  this.state = 1;
               }
               this.§7T§.alpha = (this.§7T§.scaleX - 1) / (this.§switch const null§ - 1);
            }
            else if(this.state == 1)
            {
               _loc5_ = _loc7_ * param1 * 0.001;
               this.§7T§.scaleX -= _loc5_;
               this.§7T§.scaleY -= _loc5_;
               this.§7T§.scaleZ -= _loc5_;
               if(this.§7T§.scaleX < 1)
               {
                  this.§7T§.scaleX = 1;
                  this.§7T§.scaleY = 1;
                  this.§7T§.scaleZ = 1;
                  this.state = 2;
               }
               this.§7T§.alpha = (this.§7T§.scaleX - 1) / (this.§switch const null§ - 1) - 0.1;
            }
         }
         return true;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.§7T§);
         this.container = null;
         this.§7T§.material = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.state = 2;
         this.§7T§.alpha = 0;
      }
   }
}

