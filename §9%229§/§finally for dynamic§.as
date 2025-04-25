package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   
   public class §finally for dynamic§ extends §super for static§ implements §=!t§
   {
      public static const §try var super§:Number = 1 / 2.2;
      
      private var light:OmniLight;
      
      private var time:int;
      
      private var currentTime:int;
      
      private var §class default§:Number;
      
      private var container:§3!O§;
      
      private var §4",§:Number;
      
      public function §finally for dynamic§(param1:§default const static§)
      {
         super(param1);
         this.light = new OmniLight(0,0,0);
      }
      
      public function init(param1:OmniLight, param2:int, param3:Number = 0.45454545454545453) : void
      {
         this.light.intensity = param1.intensity;
         this.light.color = param1.color;
         this.light.attenuationBegin = param1.attenuationBegin;
         this.light.attenuationEnd = param1.attenuationEnd;
         this.light.x = param1.x;
         this.light.y = param1.y;
         this.light.z = param1.z;
         this.light.calculateBounds();
         this.time = param2;
         this.§class default§ = param3;
         this.§4",§ = param1.intensity;
         this.currentTime = 0;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.light);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         this.currentTime += param1;
         this.currentTime = Math.min(this.currentTime,this.time);
         var _loc3_:Number = 1 - this.currentTime / this.time;
         this.light.intensity = this.§4",§ * Math.pow(_loc3_,this.§class default§);
         return this.currentTime < this.time;
      }
      
      public function destroy() : void
      {
         if(this.container != null)
         {
            this.container.removeChild(this.light);
            this.container = null;
         }
         recycle();
      }
      
      public function kill() : void
      {
         this.light = null;
      }
   }
}

