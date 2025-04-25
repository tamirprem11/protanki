package §class const catch§
{
   import §9"9§.§3"B§;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   
   public class §1![§ implements §6!X§
   {
      private static const §=K§:int = 10;
      
      private static const §use set while§:int = 21;
      
      private static const _position:Vector3 = new Vector3();
      
      private var effects:Vector.<§=%§> = new Vector.<§=%§>();
      
      private var §class const§:int;
      
      private var §for const if§:Dictionary = new Dictionary();
      
      private var §function throw§:int;
      
      private var §each var with§:Boolean;
      
      public function §1![§()
      {
         super();
      }
      
      public static function §continue var catch§(param1:Sound) : §6!X§
      {
         var _loc2_:SoundChannel = param1.play(0,1,new SoundTransform(0));
         if(_loc2_ != null)
         {
            _loc2_.stop();
            return new §1![§();
         }
         return new §super set else§();
      }
      
      public function §return case§(param1:Boolean) : void
      {
         this.§each var with§ = param1;
      }
      
      public function §const set const§(param1:Sound, param2:int = 0, param3:int = 0, param4:SoundTransform = null) : SoundChannel
      {
         var _loc5_:SoundChannel = null;
         if(this.§'!X§(param1))
         {
            _loc5_ = param1.play(param2,param3,param4);
            if(_loc5_ != null)
            {
               this.§6G§(_loc5_);
            }
            return _loc5_;
         }
         return null;
      }
      
      private function §'!X§(param1:Sound) : Boolean
      {
         return !this.§each var with§ && this.§function throw§ < §=K§ && param1 != null;
      }
      
      public function §9^§(param1:SoundChannel) : void
      {
         if(param1 != null && this.§for const if§[param1] != null)
         {
            this.§final for super§(param1);
         }
      }
      
      public function §>!p§() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.§for const if§)
         {
            this.§final for super§(_loc1_ as SoundChannel);
         }
      }
      
      public function §return const null§(param1:§3"B§) : void
      {
         if(this.§throw for do§(param1))
         {
            param1.enabled = true;
            this.effects.push(§=%§.create(0,param1));
            ++this.§class const§;
         }
      }
      
      private function §throw for do§(param1:§3"B§) : Boolean
      {
         return !this.§each var with§ && param1 != null && this.§7"g§(param1) < 0;
      }
      
      public function §%q§(param1:§3"B§) : void
      {
         var _loc2_:§=%§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§class const§)
         {
            _loc2_ = this.effects[_loc3_];
            if(_loc2_.§=">§ == param1)
            {
               param1.destroy();
               §=%§.destroy(_loc2_);
               this.effects.splice(_loc3_,1);
               --this.§class const§;
               return;
            }
            _loc3_++;
         }
      }
      
      public function §^!O§() : void
      {
         var _loc1_:§=%§ = null;
         while(this.effects.length > 0)
         {
            _loc1_ = this.effects.pop();
            _loc1_.§=">§.destroy();
            §=%§.destroy(_loc1_);
         }
         this.§class const§ = 0;
      }
      
      public function §false extends§(param1:int, param2:§for for native§) : void
      {
         var _loc3_:int = 0;
         if(this.§class const§ > 0)
         {
            this.§set const try§(param2.position);
            _loc3_ = this.§dynamic null§(param1,param2);
            this.§<E§(_loc3_);
         }
      }
      
      private function §dynamic null§(param1:int, param2:§for for native§) : int
      {
         var _loc3_:§=%§ = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < this.§class const§)
         {
            _loc3_ = this.effects[_loc4_];
            _loc5_ = _loc3_.§=">§.§function throw§;
            if(_loc5_ == 0)
            {
               _loc3_.§=">§.destroy();
               §=%§.destroy(_loc3_);
               this.effects.splice(_loc4_,1);
               --this.§class const§;
               _loc4_--;
            }
            else if(_loc6_ + _loc5_ > §use set while§)
            {
               if(_loc6_ == §use set while§)
               {
                  break;
               }
               _loc3_.§=">§.enabled = false;
            }
            else
            {
               _loc3_.§=">§.enabled = true;
               _loc3_.§=">§.play(param1,param2);
               _loc6_ += _loc5_;
            }
            _loc4_++;
         }
         return _loc4_;
      }
      
      private function §<E§(param1:int) : void
      {
         var _loc2_:§=%§ = null;
         var _loc3_:int = param1;
         while(_loc3_ < this.§class const§)
         {
            _loc2_ = this.effects[_loc3_];
            _loc2_.§=">§.enabled = false;
            if(_loc2_.§=">§.§function throw§ == 0)
            {
               _loc2_.§=">§.destroy();
               §=%§.destroy(_loc2_);
               this.effects.splice(_loc3_,1);
               --this.§class const§;
               _loc3_--;
            }
            _loc3_++;
         }
      }
      
      private function §6G§(param1:SoundChannel) : void
      {
         param1.addEventListener(Event.SOUND_COMPLETE,this.§<!8§);
         this.§for const if§[param1] = true;
         ++this.§function throw§;
      }
      
      private function §final for super§(param1:SoundChannel) : void
      {
         param1.stop();
         param1.removeEventListener(Event.SOUND_COMPLETE,this.§<!8§);
         delete this.§for const if§[param1];
         --this.§function throw§;
      }
      
      private function §<!8§(param1:Event) : void
      {
         this.§9^§(param1.target as SoundChannel);
      }
      
      private function §7"g§(param1:§3"B§) : int
      {
         var _loc2_:§=%§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§class const§)
         {
            _loc2_ = this.effects[_loc3_];
            if(_loc2_.§=">§ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      private function §set const try§(param1:Vector3) : void
      {
         var §8!V§:Vector3 = param1;
         var §final for include§:Vector3 = §8!V§;
         this.§dynamic for override§(§final for include§);
         this.effects.sort(function(param1:§=%§, param2:§=%§):Number
         {
            return param1.§!!1§ - param2.§!!1§;
         });
      }
      
      private function §dynamic for override§(param1:Vector3) : void
      {
         var _loc2_:§=%§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         while(_loc6_ < this.§class const§)
         {
            _loc2_ = this.effects[_loc6_];
            _loc2_.§=">§.readPosition(_position);
            _loc3_ = param1.x - _position.x;
            _loc4_ = param1.y - _position.y;
            _loc5_ = param1.z - _position.z;
            _loc2_.§!!1§ = _loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_;
            _loc6_++;
         }
      }
   }
}

