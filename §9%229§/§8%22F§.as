package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.camera.§for for native§;
   import flash.events.Event;
   import flash.media.SoundChannel;
   
   public class §8"F§ extends §super for static§ implements §3"B§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var position:Vector3 = new Vector3();
      
      private var sound:§!!c§;
      
      private var §8-§:int;
      
      private var startTime:int;
      
      private var channel:SoundChannel;
      
      private var _enabled:Boolean = false;
      
      private var §!8§:Boolean = false;
      
      private var listener:§3!x§;
      
      public function §8"F§(param1:§default const static§)
      {
         super(param1);
      }
      
      public static function create(param1:Vector3, param2:§!!c§, param3:int = 0, param4:int = 0, param5:§3!x§ = null) : §8"F§
      {
         var _loc6_:§8"F§ = §8"F§(battleService.§#!o§().getObject(§8"F§));
         _loc6_.init(param1,param2,param3,param4,param5);
         return _loc6_;
      }
      
      public function init(param1:Vector3, param2:§!!c§, param3:int = 0, param4:int = 0, param5:§3!x§ = null) : void
      {
         this.position.copy(param1);
         this.sound = param2;
         this.§8-§ = param3;
         this.startTime = param4;
         this.listener = param5;
         this._enabled = false;
         this.§!8§ = false;
      }
      
      public function play(param1:int, param2:§for for native§) : void
      {
         this.§8-§ -= param1;
         if(this.§8-§ > 0)
         {
            return;
         }
         if(!this.§!8§)
         {
            this.§!8§ = true;
            this.channel = this.sound.play(this.startTime,1);
            if(this.channel == null)
            {
               return;
            }
            this.channel.addEventListener(Event.SOUND_COMPLETE,this.§<!8§);
         }
         this.sound.§#"g§(param2.position,this.position,param2.§throw var continue§);
      }
      
      public function destroy() : void
      {
         §!!c§.destroy(this.sound);
         this.sound = null;
         this.§<!8§(null);
         if(this.listener != null)
         {
            this.listener.§null const try§(this);
            this.listener = null;
         }
         recycle();
      }
      
      public function kill() : void
      {
         this._enabled = false;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this._enabled == param1)
         {
            return;
         }
         if(!(this._enabled = param1))
         {
            this.§<!8§(null);
         }
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.x = this.position.x;
         param1.y = this.position.y;
         param1.z = this.position.z;
      }
      
      public function get §function throw§() : int
      {
         return this._enabled ? int(1) : int(0);
      }
      
      private function §<!8§(param1:Event) : void
      {
         if(this.channel != null)
         {
            this.channel.removeEventListener(Event.SOUND_COMPLETE,this.§<!8§);
         }
         this._enabled = false;
         this.channel = null;
      }
   }
}

