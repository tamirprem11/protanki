package alternativa.tanks.models.battle.gui.gui.statistics.field.score.ctf
{
   public class §break var class§
   {
      public var values:Vector.<Number>;
      
      private var maxValue:Number;
      
      private var minValue:Number;
      
      private var §extends use§:Vector.<int>;
      
      private var §null each§:Vector.<Number>;
      
      private var §!"§:int;
      
      private var speeds:Vector.<Number>;
      
      private var §%!?§:Vector.<int>;
      
      private var §while for dynamic§:Number;
      
      private var §=8§:int = 0;
      
      public function §break var class§(param1:Number, param2:Number, param3:Vector.<int>, param4:Vector.<Number>)
      {
         super();
         this.minValue = param1;
         this.maxValue = param2;
         this.§extends use§ = param3;
         this.§null each§ = param4;
         this.§while for dynamic§ = param2 - param1;
         this.§!"§ = param3.length;
         this.speeds = new Vector.<Number>(this.§!"§);
         this.§%!?§ = new Vector.<int>(this.§!"§);
         this.values = new Vector.<Number>(this.§!"§);
      }
      
      public function start(param1:int) : void
      {
         if(this.§=8§ == 0)
         {
            this.init(param1);
         }
         ++this.§=8§;
      }
      
      public function stop() : void
      {
         --this.§=8§;
      }
      
      public function update(param1:int, param2:int) : void
      {
         if(this.§=8§ <= 0)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§!"§)
         {
            this.values[_loc3_] += this.speeds[_loc3_] * param2;
            if(this.values[_loc3_] > this.maxValue)
            {
               this.values[_loc3_] = this.maxValue;
            }
            if(this.values[_loc3_] < this.minValue)
            {
               this.values[_loc3_] = this.minValue;
            }
            if(param1 >= this.§%!?§[_loc3_])
            {
               this.§%!?§[_loc3_] += this.§extends use§[_loc3_];
               if(this.speeds[_loc3_] < 0)
               {
                  this.speeds[_loc3_] = this.§false set§(1,this.§null each§[_loc3_],this.§extends use§[_loc3_]);
               }
               else
               {
                  this.speeds[_loc3_] = this.§false set§(-1,this.§null each§[_loc3_],this.§extends use§[_loc3_]);
               }
            }
            _loc3_++;
         }
      }
      
      private function init(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!"§)
         {
            this.speeds[_loc2_] = this.§false set§(-1,this.§null each§[_loc2_],this.§extends use§[_loc2_]);
            this.values[_loc2_] = this.maxValue;
            this.§%!?§[_loc2_] = param1 + this.§extends use§[_loc2_];
            _loc2_++;
         }
      }
      
      private function §false set§(param1:Number, param2:Number, param3:int) : Number
      {
         return param1 * param2 * this.§while for dynamic§ / param3;
      }
   }
}

