package §const set false§
{
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.utils.BitMask;
   import alternativa.tanks.utils.MathUtils;
   
   public class §8!^§
   {
      public static const §5?§:int = 0;
      
      public static const §dynamic set static§:int = 1;
      
      public static const §%Q§:int = 2;
      
      public static const §include function§:int = 3;
      
      public static const §2"-§:int = 4;
      
      protected var §set const import§:int;
      
      protected var native:int;
      
      private var tank:Tank;
      
      private var §%"L§:BitMask = new BitMask();
      
      public function §8!^§(param1:Tank)
      {
         super();
         this.tank = param1;
      }
      
      public function isEnabled() : Boolean
      {
         return this.§%"L§.isEmpty();
      }
      
      public function lock(param1:int) : void
      {
         var _loc2_:Boolean = this.isEnabled();
         this.§%"L§.setBits(param1);
         if(_loc2_ && !this.isEnabled())
         {
            this.§',§(0);
         }
      }
      
      public function unlock(param1:int) : void
      {
         var _loc2_:Boolean = this.isEnabled();
         this.§%"L§.clearBits(param1);
         if(this.isEnabled() && !_loc2_)
         {
            this.§',§(this.§set const import§);
         }
      }
      
      public function §use const extends§() : int
      {
         return this.isEnabled() ? int(this.§set const import§) : int(0);
      }
      
      public function §each const class§(param1:int) : void
      {
         this.§set const import§ = param1;
         if(this.isEnabled())
         {
            this.§',§(param1);
         }
      }
      
      private function §',§(param1:int) : void
      {
         var _loc2_:int = this.native;
         this.native = param1;
         var _loc3_:int = MathUtils.getBitValue(param1,§5?§) - MathUtils.getBitValue(param1,§dynamic set static§);
         var _loc4_:Number = MathUtils.getBitValue(param1,§%Q§) - MathUtils.getBitValue(param1,§include function§);
         this.tank.§@"5§(_loc3_,_loc4_,MathUtils.getBitValue(param1,§2"-§) == 1);
         if(_loc2_ != this.native)
         {
            this.§final set if§(this.native);
         }
      }
      
      protected function §final set if§(param1:int) : void
      {
      }
      
      protected function §try set null§() : Tank
      {
         return this.tank;
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.tank = null;
      }
   }
}

