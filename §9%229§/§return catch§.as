package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.lights.TubeLight;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   
   public class §return catch§ extends §super for static§ implements §=!t§
   {
      private static const §default for class§:Number = 1.5;
      
      private static const position:Vector3 = new Vector3();
      
      private static const §catch for try§:Vector3 = new Vector3();
      
      private var light:TubeLight;
      
      private var §4o§:§continue var with§;
      
      private var §@"3§:§continue var with§;
      
      private var animation:§,!"§;
      
      private var currentTime:int;
      
      private var §@p§:int;
      
      private var §]"B§:Boolean;
      
      private var alive:Boolean;
      
      private var target:Object3D;
      
      private var container:§3!O§;
      
      public function §return catch§(param1:§default const static§)
      {
         super(param1);
         this.light = new TubeLight(0,0,0,0,0);
         this.target = new Object3D();
      }
      
      public function init(param1:§continue var with§, param2:§continue var with§, param3:§,!"§, param4:Boolean = false) : void
      {
         this.§super each§(param1,param2,param3.§implements set import§(),param3,param4);
      }
      
      public function §super each§(param1:§continue var with§, param2:§continue var with§, param3:int, param4:§,!"§, param5:Boolean = false) : void
      {
         this.§4o§ = param1;
         this.§@"3§ = param2;
         this.§@p§ = param3;
         this.currentTime = 0;
         this.animation = param4;
         this.§]"B§ = param5;
         this.alive = true;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.light);
         param1.addChild(this.target);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.alive)
         {
            this.animation.§<"F§(this.light,this.currentTime,this.§@p§);
            this.§4o§.§true for if§(this.light,param2,param1);
            this.§@"3§.§true for if§(this.target,param2,param1);
            this.currentTime += param1;
            position.x = this.light.x;
            position.y = this.light.y;
            position.z = this.light.z;
            §catch for try§.x = this.target.x;
            §catch for try§.y = this.target.y;
            §catch for try§.z = this.target.z;
            _loc3_ = Vector3.distanceBetween(position,§catch for try§);
            _loc4_ = param2.farClipping / §default for class§;
            _loc3_ = _loc3_ > _loc4_ ? Number(_loc4_) : Number(_loc3_);
            this.light.length = _loc3_;
            if(this.currentTime > this.§@p§)
            {
               if(this.§]"B§)
               {
                  this.currentTime %= this.§@p§;
               }
               else
               {
                  this.alive = false;
               }
            }
            this.light.lookAt(this.target.x,this.target.y,this.target.z);
            this.light.falloff = this.light.attenuationEnd - this.light.attenuationBegin;
            return this.alive;
         }
         return false;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.light);
         this.container.removeChild(this.target);
         this.container = null;
         this.animation = null;
         this.§4o§ = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
   }
}

