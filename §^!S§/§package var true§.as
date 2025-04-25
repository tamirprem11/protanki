package §^!S§
{
   import §9"9§.§%"^§;
   import §9"9§.§8Z§;
   import §9"9§.§=!t§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.engine3d.§package var package§;
   import §default var get§.§3!O§;
   
   public class §package var true§ extends §super for static§ implements §=!t§
   {
      private var position:Vector3 = new Vector3();
      
      private var direction:Vector3 = new Vector3();
      
      private var currentTime:int;
      
      private var maxTime:int;
      
      private var §="I§:§8Z§;
      
      private var container:§3!O§;
      
      public function §package var true§(param1:§default const static§)
      {
         super(param1);
         this.§="I§ = new §8Z§(30,200,0,-100,0);
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:§package var package§) : void
      {
         this.position.copy(param1);
         this.direction.copy(param2);
         this.§="I§.init(param3,0.001 * param3.fps);
         this.maxTime = this.§="I§.§continue final§();
         this.currentTime = 0;
         this.§="I§.x = param1.x;
         this.§="I§.y = param1.y;
         this.§="I§.z = param1.z;
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(this.currentTime >= this.maxTime)
         {
            return false;
         }
         this.§="I§.setTime(this.currentTime);
         this.currentTime += param1;
         §%"^§.§true var throw§(this.§="I§,this.position,this.direction,param2.position);
         return true;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§="I§);
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

