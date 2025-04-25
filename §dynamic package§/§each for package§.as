package §dynamic package§
{
   import alternativa.tanks.utils.BitVector;
   
   public class §each for package§
   {
      private static const §4I§:int = 64;
      
      private static const instance:§each for package§ = new §each for package§();
      
      private const ids:Vector.<int> = new Vector.<int>(§4I§,true);
      
      private const §!`§:BitVector = new BitVector(§4I§);
      
      private var §0!H§:int;
      
      public function §each for package§()
      {
         super();
         this.reset();
      }
      
      public static function §6!n§() : int
      {
         return instance.§implements const true§();
      }
      
      public static function §[!&§(param1:int) : void
      {
         instance.release(param1);
      }
      
      public static function §class var each§() : void
      {
         instance.reset();
      }
      
      public function §implements const true§() : int
      {
         var _loc1_:int = 0;
         if(this.§0!H§ < §4I§)
         {
            _loc1_ = this.ids[this.§0!H§++];
            this.§!`§.setBit(_loc1_);
            return _loc1_;
         }
         throw new Error();
      }
      
      public function release(param1:int) : void
      {
         if(this.§!`§.getBit(param1) == 1)
         {
            this.§!`§.clearBit(param1);
            var _loc2_:* = --this.§0!H§;
            this.ids[_loc2_] = param1;
         }
      }
      
      public function reset() : void
      {
         this.§0!H§ = 0;
         var _loc1_:int = 0;
         while(_loc1_ < §4I§)
         {
            this.ids[_loc1_] = _loc1_;
            _loc1_++;
         }
         this.§!`§.clear();
      }
   }
}

