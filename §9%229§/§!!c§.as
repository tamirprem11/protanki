package §9"9§
{
   import alternativa.math.Vector3;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §!!c§
   {
      private static var pool:§!!c§;
      
      public static const §override set dynamic§:int = 1000000;
      
      private static const §extends const case§:Number = 1000;
      
      private static const §`!]§:Number = 5000;
      
      private static const §default native§:Number = 5;
      
      internal var nextInPool:§!!c§;
      
      private var §break in§:Number;
      
      private var §+"^§:Number;
      
      private var sound:Sound;
      
      private var §const default§:SoundChannel;
      
      private var transform:SoundTransform = new SoundTransform(0);
      
      private var §=!u§:Number = 1;
      
      private var §@w§:Number = 1;
      
      private var §>"[§:Number = 1;
      
      public function §!!c§(param1:Sound, param2:Number, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.init(param1,param2,param3,param4,param5);
      }
      
      public static function create(param1:Sound, param2:Number = 1, param3:Number = 1000, param4:Number = 5000, param5:Number = 5) : §!!c§
      {
         var _loc6_:§!!c§ = null;
         if(pool == null)
         {
            return new §!!c§(param1,param3,param4,param5,param2);
         }
         _loc6_ = pool;
         _loc6_.init(param1,param3,param4,param5,param2);
         pool = _loc6_.nextInPool;
         _loc6_.nextInPool = null;
         return _loc6_;
      }
      
      public static function destroy(param1:§!!c§) : void
      {
         param1.clear();
         if(pool == null)
         {
            pool = param1;
         }
         else
         {
            param1.nextInPool = pool;
            pool = param1;
         }
      }
      
      public function §;3§() : Boolean
      {
         return this.§const default§ != null;
      }
      
      public function get channel() : SoundChannel
      {
         return this.§const default§;
      }
      
      public function get position() : Number
      {
         return this.§const default§ == null ? Number(0) : Number(this.§const default§.position);
      }
      
      public function init(param1:Sound, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         this.sound = param1;
         this.§break in§ = param2;
         this.§@w§ = param5;
         this.§+"^§ = (Math.sqrt(param4) - 1) / (param3 - param2);
         this.volume = 1;
      }
      
      public function clear() : void
      {
         this.stop();
         this.sound = null;
      }
      
      public function get §']§() : Number
      {
         return this.§@w§;
      }
      
      public function set §']§(param1:Number) : void
      {
         this.§@w§ = param1;
         this.§&!J§();
      }
      
      public function get volume() : Number
      {
         return this.§=!u§;
      }
      
      public function set volume(param1:Number) : void
      {
         this.§=!u§ = param1;
         this.§&!J§();
      }
      
      public function §8"4§(param1:Vector3, param2:Vector3, param3:Vector3, param4:SoundTransform) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = param2.x - param1.x;
         var _loc7_:Number = param2.y - param1.y;
         var _loc8_:Number = param2.z - param1.z;
         var _loc9_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_ + _loc8_ * _loc8_);
         if(_loc9_ < this.§break in§)
         {
            param4.volume = 1;
            param4.pan = 0;
         }
         else
         {
            _loc5_ = 1 + this.§+"^§ * (_loc9_ - this.§break in§);
            _loc5_ = 1 / (_loc5_ * _loc5_);
            param4.volume = _loc5_;
            _loc9_ = 1 / _loc9_;
            _loc6_ *= _loc9_;
            _loc7_ *= _loc9_;
            _loc8_ *= _loc9_;
            param4.pan = (_loc6_ * param3.x + _loc7_ * param3.y + _loc8_ * param3.z) * (1 - _loc5_);
         }
      }
      
      public function §#"g§(param1:Vector3, param2:Vector3, param3:Vector3) : void
      {
         if(this.§const default§ != null)
         {
            this.§8"4§(param1,param2,param3,this.transform);
            this.transform.volume *= this.§>"[§;
            this.§const default§.soundTransform = this.transform;
         }
      }
      
      public function play(param1:int, param2:int) : SoundChannel
      {
         if(this.§const default§ != null)
         {
            this.§const default§.stop();
         }
         return this.§const default§ = this.sound.play(param1,param2);
      }
      
      public function stop() : void
      {
         if(this.§const default§ != null)
         {
            this.§const default§.stop();
            this.§const default§ = null;
         }
      }
      
      private function §&!J§() : void
      {
         this.§>"[§ = this.§@w§ * this.§=!u§;
      }
   }
}

