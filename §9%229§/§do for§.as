package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.engine3d.§package var package§;
   import §default var get§.§3!O§;
   
   public class §do for§ extends §super for static§ implements §=!t§
   {
      private static const §^X§:Number = 100;
      
      private var §native var get§:Number;
      
      protected var scale:Number;
      
      protected var §return var package§:Number;
      
      protected var §="I§:§'!U§;
      
      private var currentTime:int;
      
      private var maxTime:int;
      
      private var container:§3!O§;
      
      public function §do for§(param1:§default const static§)
      {
         super(param1);
         this.§="I§ = new §'!U§(§^X§);
         this.§="I§.useShadowMap = false;
         this.§="I§.useLight = false;
         this.§="I§.shadowMapAlphaThreshold = 2;
         this.§="I§.depthMapAlphaThreshold = 2;
         this.§="I§.softAttenuation = 0;
      }
      
      public function init(param1:Number, param2:Vector3, param3:Vector3, param4:§package var package§, param5:Number) : void
      {
         this.§="I§.init(param4,0.001 * param4.fps);
         this.maxTime = this.§="I§.§continue final§();
         this.currentTime = 0;
         this.§native var get§ = 0.001 * param5;
         this.§return var package§ = param1 / §^X§;
         this.scale = this.§return var package§;
         this.§="I§.x = param2.x;
         this.§="I§.y = param2.y;
         this.§="I§.z = param2.z;
         this.§="I§.rotationX = param3.x;
         this.§="I§.rotationY = param3.y;
         this.§="I§.rotationZ = param3.z;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§="I§);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(this.currentTime >= this.maxTime)
         {
            return false;
         }
         this.§="I§.setTime(this.currentTime);
         this.currentTime += param1;
         this.§="I§.scaleX = this.scale;
         this.§="I§.scaleY = this.scale;
         this.scale = this.§return var package§ + this.§return var package§ * this.§native var get§ * this.currentTime;
         return true;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.§="I§);
         this.container = null;
         this.§="I§.clear();
         recycle();
      }
      
      public function kill() : void
      {
         this.currentTime = this.maxTime;
      }
   }
}

