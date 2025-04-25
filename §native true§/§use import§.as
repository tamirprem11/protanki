package §native true§
{
   import §9"9§.§=!t§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   
   public class §use import§ extends §super for static§ implements §=!t§
   {
      private var §>0§:Sprite3D;
      
      private var delay:int;
      
      private var time:int;
      
      private var §catch const with§:Number;
      
      private var §native for case§:Number;
      
      private var §;D§:Number;
      
      private var x:Number;
      
      private var y:Number;
      
      private var z:Number;
      
      private var object:Object3D;
      
      private var container:§3!O§;
      
      public function §use import§(param1:§default const static§)
      {
         super(param1);
         this.§>0§ = new Sprite3D(10,10);
      }
      
      public function init(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Object3D, param12:TextureMaterial, param13:String) : void
      {
         this.delay = param1;
         this.§>0§.width = param2;
         this.§>0§.height = param3;
         this.§>0§.calculateBounds();
         this.§>0§.rotation = param4;
         this.§catch const with§ = param5;
         this.§native for case§ = param6;
         this.§;D§ = param7;
         this.x = param8;
         this.y = param9;
         this.z = param10;
         this.object = param11;
         this.§>0§.material = param12;
         this.§>0§.softAttenuation = 150;
         this.§>0§.depthMapAlphaThreshold = 2;
         this.§>0§.shadowMapAlphaThreshold = 2;
         this.§>0§.useShadowMap = false;
         this.§>0§.useLight = false;
         this.§>0§.blendMode = param13;
         this.§>0§.alpha = 0;
         this.time = 0;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§>0§);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         var _loc3_:Number = NaN;
         if(this.z >= this.§catch const with§)
         {
            return false;
         }
         this.§>0§.x = this.object.x + this.x;
         this.§>0§.y = this.object.y + this.y;
         this.§>0§.z = this.object.z + this.z;
         this.time += param1;
         if(this.time >= this.delay)
         {
            this.z += this.§catch const with§ * this.§;D§ * param1 * 0.001;
            if(this.z < this.§native for case§)
            {
               this.§>0§.alpha = this.z / this.§native for case§;
            }
            else
            {
               _loc3_ = (this.z - this.§native for case§) / (this.§catch const with§ - this.§native for case§);
               this.§>0§.alpha = 1 - _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_ * _loc3_;
            }
            if(this.§>0§.alpha < 0)
            {
               this.§>0§.alpha = 0;
            }
            if(this.§>0§.alpha > 1)
            {
               this.§>0§.alpha = 1;
            }
         }
         else
         {
            this.§>0§.alpha = 0;
         }
         return true;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.§>0§);
         this.container = null;
         this.§>0§.material = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.z = this.§catch const with§;
         this.§>0§.alpha = 0;
      }
   }
}

