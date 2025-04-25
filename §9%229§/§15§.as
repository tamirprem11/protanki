package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import flash.events.Event;
   import flash.media.SoundChannel;
   
   public class §15§ extends §super for static§ implements §3"B§
   {
      private static const §7"X§:Vector3 = new Vector3();
      
      private var sound:§!!c§;
      
      private var §8-§:int;
      
      private var startTime:int;
      
      private var §[!r§:int;
      
      private var object:Object3D;
      
      private var channel:SoundChannel;
      
      private var alive:Boolean;
      
      private var time:int;
      
      private var §import use§:Number;
      
      private var §[e§:Number;
      
      private var listener:§3!x§;
      
      public function §15§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function §import for true§(param1:§!!c§, param2:Object3D, param3:§3!x§ = null) : void
      {
         this.init(param1,param2,0,1,0,param3);
      }
      
      public function init(param1:§!!c§, param2:Object3D, param3:int = 0, param4:int = 1, param5:int = 0, param6:§3!x§ = null) : void
      {
         this.sound = param1;
         this.object = param2;
         this.§8-§ = param3;
         this.§[!r§ = param4;
         this.startTime = param5;
         this.listener = param6;
         this.alive = true;
         this.time = 0;
         this.§import use§ = param1.volume;
         this.§[e§ = 0;
      }
      
      public function play(param1:int, param2:§for for native§) : void
      {
         if(!this.alive)
         {
            return;
         }
         if(this.time < this.§8-§)
         {
            this.time += param1;
            return;
         }
         if(!this.sound.§;3§())
         {
            this.channel = this.sound.play(this.startTime,this.§[!r§);
            if(this.channel != null)
            {
               this.channel.addEventListener(Event.SOUND_COMPLETE,this.§<!8§);
            }
         }
         §7"X§.x = this.object.x;
         §7"X§.y = this.object.y;
         §7"X§.z = this.object.z;
         if(this.§[e§ > 0)
         {
            this.§import use§ -= this.§[e§ * param1;
            if(this.§import use§ <= 0)
            {
               this.§[e§ = 0;
               this.§import use§ = 0;
            }
            this.sound.volume = this.§import use§;
         }
         this.sound.§#"g§(param2.position,§7"X§,param2.§throw var continue§);
      }
      
      public function destroy() : void
      {
         this.§7!F§();
         §!!c§.destroy(this.sound);
         this.object = null;
         this.sound = null;
         if(this.listener != null)
         {
            this.listener.§null const try§(this);
            this.listener = null;
         }
         recycle();
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(!param1)
         {
            this.§7!F§();
         }
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.x = this.object.x;
         param1.y = this.object.y;
         param1.z = this.object.z;
      }
      
      public function get §function throw§() : int
      {
         return this.alive ? int(1) : int(0);
      }
      
      public function §default for while§(param1:int) : void
      {
         this.§[e§ = this.§import use§ / param1;
      }
      
      private function §<!8§(param1:Event) : void
      {
         this.§7!F§();
         this.alive = false;
      }
      
      private function §7!F§() : void
      {
         if(this.channel != null)
         {
            this.channel.removeEventListener(Event.SOUND_COMPLETE,this.§<!8§);
            this.channel = null;
         }
         this.sound.stop();
         if(this.§[!r§ <= 1)
         {
            this.alive = false;
         }
      }
   }
}

