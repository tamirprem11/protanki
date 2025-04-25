package §9"9§
{
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.camera.§for for native§;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   
   public class §8"_§ implements §3"B§
   {
      private static const §8"b§:Vector3 = new Vector3();
      
      private var §return const function§:Tank;
      
      private var §default var final§:§^!&§;
      
      private var §continue for while§:§!!c§;
      
      private var §-`§:int = 1;
      
      private var _enabled:Boolean = false;
      
      private var §for const true§:Boolean;
      
      public function §8"_§(param1:Sound, param2:Sound, param3:Sound, param4:Sound)
      {
         super();
         this.§default var final§ = new §^!&§(param1,param2,param3);
         this.§continue for while§ = §!!c§.create(param4,0.5,500,2000,5);
      }
      
      public function §]!y§() : void
      {
         this.§-`§ = §^!&§.IDLE;
         if(this._enabled)
         {
            this.§default var final§.§]!y§();
         }
      }
      
      public function §'6§() : void
      {
         this.§-`§ = §^!&§.§implements var implements§;
         if(this._enabled)
         {
            this.§default var final§.§'6§();
         }
      }
      
      public function §]!P§() : void
      {
         this.§-`§ = §^!&§.§try for if§;
         if(this._enabled)
         {
            this.§default var final§.§]!P§();
         }
      }
      
      public function §each for function§(param1:Tank) : void
      {
         this.§return const function§ = param1;
      }
      
      public function §override for case§(param1:Boolean) : void
      {
         var _loc2_:SoundChannel = null;
         if(this._enabled)
         {
            if(param1 && this.§for const true§)
            {
               if(!this.§continue for while§.§;3§())
               {
                  _loc2_ = this.§continue for while§.play(100,0);
                  if(_loc2_ != null)
                  {
                     _loc2_.addEventListener(Event.SOUND_COMPLETE,this.§if const static§);
                  }
               }
            }
            else if(this.§continue for while§.§;3§())
            {
               this.§continue for while§.stop();
            }
         }
      }
      
      private function §if const static§(param1:Event) : void
      {
         if(this.§for const true§)
         {
            this.§continue for while§.play(3000,9999);
         }
      }
      
      public function set §catch const in§(param1:Boolean) : void
      {
         if(this.§for const true§ != param1)
         {
            this.§for const true§ = param1;
            if(!this.§for const true§)
            {
               this.§continue for while§.stop();
            }
         }
      }
      
      public function play(param1:int, param2:§for for native§) : void
      {
         if(this.§return const function§ != null && this._enabled)
         {
            §8"b§.copy(this.§return const function§.§<J§().state.position);
            this.§default var final§.update(param1,param2.position,§8"b§,param2.§throw var continue§);
            this.§continue for while§.§#"g§(param2.position,§8"b§,param2.§throw var continue§);
         }
      }
      
      public function destroy() : void
      {
         this.§default var final§.stop();
         this.§continue for while§.stop();
      }
      
      public function kill() : void
      {
      }
      
      public function get §function throw§() : int
      {
         return 2;
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.copy(this.§return const function§.§<J§().state.position);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this._enabled != param1)
         {
            this._enabled = param1;
            this.§class const false§();
         }
      }
      
      private function §class const false§() : void
      {
         if(this._enabled)
         {
            switch(this.§-`§)
            {
               case §^!&§.IDLE:
                  this.§default var final§.§]!y§();
                  break;
               case §^!&§.§implements var implements§:
                  this.§default var final§.§'6§();
                  break;
               case §^!&§.§try for if§:
                  this.§default var final§.§]!P§();
            }
         }
         else
         {
            this.§continue for while§.stop();
            this.§default var final§.§dynamic const while§();
         }
      }
   }
}

