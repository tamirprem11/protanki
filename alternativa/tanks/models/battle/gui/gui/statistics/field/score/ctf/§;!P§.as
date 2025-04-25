package alternativa.tanks.models.battle.gui.gui.statistics.field.score.ctf
{
   public class §;!P§
   {
      public var §static use§:uint;
      
      private var §true for throw§:Number;
      
      private var §[D§:Number;
      
      private var §"!N§:Number;
      
      public function §;!P§(param1:uint, param2:uint)
      {
         super();
         this.§static use§ = param1;
         this.§true for throw§ = (param2 >> 16 & 0xFF) - (param1 >> 16 & 0xFF);
         this.§[D§ = (param2 >> 8 & 0xFF) - (param1 >> 8 & 0xFF);
         this.§"!N§ = (param2 & 0xFF) - (param1 & 0xFF);
      }
      
      public function interpolate(param1:Number) : uint
      {
         var _loc2_:int = (this.§static use§ >> 16 & 0xFF) + param1 * this.§true for throw§;
         var _loc3_:int = (this.§static use§ >> 8 & 0xFF) + param1 * this.§[D§;
         var _loc4_:int = (this.§static use§ & 0xFF) + param1 * this.§"!N§;
         return _loc2_ << 16 | _loc3_ << 8 | _loc4_;
      }
   }
}

