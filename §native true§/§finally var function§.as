package §native true§
{
   import §9"9§.§=!t§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   import flash.display.BlendMode;
   
   public class §finally var function§ extends §super for static§ implements §=!t§
   {
      private static const §^X§:Number = 300;
      
      private var §extends var static§:§extends var set§;
      
      private var delay:int;
      
      private var time:int;
      
      private var height:Number;
      
      private var §catch const with§:Number;
      
      private var §;D§:Number;
      
      private var §6m§:Number;
      
      private var x:Number;
      
      private var y:Number;
      
      private var z:Number;
      
      private var turret:Object3D;
      
      private var container:§3!O§;
      
      public function §finally var function§(param1:§default const static§)
      {
         super(param1);
         this.§extends var static§ = new §extends var set§(§^X§);
         this.§extends var static§.blendMode = BlendMode.ADD;
      }
      
      public function init(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Object3D, param11:TextureMaterial) : void
      {
         this.delay = param1;
         this.§extends var static§.scaleX = param2 / §^X§;
         this.height = param3;
         this.§catch const with§ = param4;
         this.§;D§ = param5;
         this.§6m§ = param6;
         this.x = param7;
         this.y = param8;
         this.z = param9;
         this.turret = param10;
         this.§extends var static§.init(param11);
         this.§extends var static§.softAttenuation = 150;
         this.§extends var static§.depthMapAlphaThreshold = 2;
         this.§extends var static§.shadowMapAlphaThreshold = 2;
         this.§extends var static§.useShadowMap = false;
         this.§extends var static§.useLight = false;
         this.§extends var static§.alpha = 0;
         this.time = 0;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§extends var static§);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(this.height >= this.§catch const with§ && this.§extends var static§.alpha <= 0)
         {
            return false;
         }
         this.§extends var static§.x = this.turret.x + this.x;
         this.§extends var static§.y = this.turret.y + this.y;
         this.§extends var static§.z = this.turret.z + this.z;
         this.§extends var static§.rotationZ = param2.rotationZ;
         this.time += param1;
         if(this.time >= this.delay)
         {
            if(this.height < this.§catch const with§)
            {
               this.height += this.§catch const with§ * this.§;D§ * param1 * 0.001;
               if(this.height >= this.§catch const with§)
               {
                  this.height = this.§catch const with§;
               }
               this.§extends var static§.scaleZ = this.height / §^X§;
               this.§extends var static§.alpha = this.height / this.§catch const with§;
            }
            else
            {
               this.§extends var static§.alpha -= this.§6m§ * param1 * 0.001;
               if(this.§extends var static§.alpha < 0)
               {
                  this.§extends var static§.alpha = 0;
               }
            }
         }
         return true;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.§extends var static§);
         this.container = null;
         this.turret = null;
         this.§extends var static§.clear();
         recycle();
      }
      
      public function kill() : void
      {
         this.height = this.§catch const with§;
         this.§extends var static§.alpha = 0;
      }
   }
}

