package §set const case§
{
   import flash.display.DisplayObject;
   
   public class GridLayout
   {
      private var topX:int;
      
      private var topY:int;
      
      private var columnWidth:int;
      
      private var rowHeight:int;
      
      private var §if var use§:int;
      
      public function GridLayout(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         this.topX = param1;
         this.topY = param2;
         this.columnWidth = param3;
         this.rowHeight = param4;
      }
      
      public function layout(param1:Array) : int
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc6_:int = 0;
         while(_loc6_ < param1.length)
         {
            _loc3_ = param1[_loc6_];
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc3_[_loc4_] != null)
               {
                  _loc5_ = _loc3_[_loc4_];
                  _loc5_.x = this.topX + _loc4_ * this.columnWidth;
                  _loc5_.y = this.topY + _loc6_ * this.rowHeight + this.§if var use§ * _loc6_;
                  _loc2_ = _loc5_.y + _loc5_.height;
               }
               _loc4_++;
            }
            _loc6_++;
         }
         return _loc2_;
      }
      
      public function §final set dynamic§() : int
      {
         return this.§if var use§;
      }
      
      public function §finally const break§(param1:int) : void
      {
         this.§if var use§ = param1;
      }
   }
}

