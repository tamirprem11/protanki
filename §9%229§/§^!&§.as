package §9"9§
{
   import alternativa.math.Vector3;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   
   public class §^!&§
   {
      public static const §final var finally§:int = 0;
      
      public static const IDLE:int = 1;
      
      public static const §implements var implements§:int = 2;
      
      public static const §8S§:int = 3;
      
      public static const §try for if§:int = 4;
      
      private static const §null for null§:Number = 0.001;
      
      private static const §switch var include§:int = 80;
      
      private var mode:int = 0;
      
      private var §throw const do§:§!!c§;
      
      private var §9!;§:§!!c§;
      
      private var §4!7§:§!!c§;
      
      private var §7!W§:§!!c§;
      
      private var channel:SoundChannel;
      
      private var §true var final§:Boolean;
      
      private var §4"-§:Number = 1;
      
      public function §^!&§(param1:Sound, param2:Sound, param3:Sound)
      {
         super();
         var _loc4_:Number = 1;
         this.§9!;§ = §!!c§.create(param1,2);
         this.§4!7§ = §!!c§.create(param2,_loc4_);
         this.§7!W§ = §!!c§.create(param3,_loc4_);
         this.§throw const do§ = this.§9!;§;
      }
      
      public function update(param1:int, param2:Vector3, param3:Vector3, param4:Vector3) : void
      {
         if(this.mode != §final var finally§)
         {
            if(this.§true var final§)
            {
               this.§throw const do§.volume -= §null for null§ * param1;
               if(this.§throw const do§.volume < this.§4"-§)
               {
                  this.§true var final§ = false;
                  this.stop();
                  this.§throw const do§ = this.§9!;§;
                  this.§throw const do§.volume = this.mode == IDLE ? Number(2) : Number(3);
                  this.§throw const do§.play(§switch var include§,10000);
               }
            }
            this.§throw const do§.§#"g§(param2,param3,param4);
         }
      }
      
      public function §dynamic const while§() : void
      {
         if(this.mode != §final var finally§)
         {
            this.mode = §final var finally§;
            this.stop();
         }
      }
      
      public function §]!y§() : void
      {
         if(this.mode != IDLE)
         {
            if(this.mode == §final var finally§)
            {
               this.§throw const do§ = this.§9!;§;
               this.§throw const do§.volume = 1;
               this.§throw const do§.play(§switch var include§,1000);
            }
            else if(this.§throw const do§ != this.§9!;§)
            {
               this.§true var final§ = true;
               this.§4"-§ = 0.2;
            }
            this.mode = IDLE;
         }
      }
      
      public function §'6§() : void
      {
         if(this.mode == §implements var implements§ || this.mode == §8S§)
         {
            return;
         }
         this.§true var final§ = false;
         this.mode = §implements var implements§;
         this.§throw const do§.stop();
         this.§throw const do§ = this.§4!7§;
         this.§throw const do§.volume = 1;
         this.channel = this.§throw const do§.play(0,0);
         if(this.channel != null)
         {
            this.channel.addEventListener(Event.SOUND_COMPLETE,this.§true false§);
         }
      }
      
      public function §]!P§() : void
      {
         if(this.mode != §try for if§)
         {
            if(this.mode == IDLE)
            {
               if(!this.§true var final§)
               {
                  this.§throw const do§.volume = 3;
               }
            }
            else
            {
               this.§true var final§ = true;
            }
            this.§4"-§ = 0.6;
            this.mode = §try for if§;
         }
      }
      
      public function stop() : void
      {
         if(this.channel != null)
         {
            this.channel.removeEventListener(Event.SOUND_COMPLETE,this.§true false§);
            this.channel = null;
         }
         this.§throw const do§.stop();
      }
      
      public function destroy() : void
      {
         this.stop();
         §!!c§.destroy(this.§9!;§);
         this.§9!;§ = null;
         §!!c§.destroy(this.§4!7§);
         this.§4!7§ = null;
         §!!c§.destroy(this.§7!W§);
         this.§7!W§ = null;
      }
      
      private function §true false§(param1:Event) : void
      {
         if(this.channel == null || this.mode != §implements var implements§)
         {
            return;
         }
         this.channel.removeEventListener(Event.SOUND_COMPLETE,this.§true false§);
         this.mode = §8S§;
         this.§7!W§.volume = this.§4!7§.volume;
         this.§throw const do§ = this.§7!W§;
         this.§throw const do§.play(§switch var include§,1000);
      }
   }
}

