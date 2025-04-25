package controls.containers
{
   import flash.display.DisplayObject;
   
   public class §1"C§ extends §0U§
   {
      public function §1"C§()
      {
         super();
      }
      
      override protected function §>=§(param1:DisplayObject) : void
      {
         if(items.length < 2)
         {
            height = param1.y + int(param1.height);
            width = Math.max(width,param1.x + §else function§(param1));
            return;
         }
         var _loc2_:DisplayObject = items[items.length - 2];
         var _loc3_:int = param1.y;
         param1.y = _loc2_.y + int(_loc2_.height) + §]!%§() + param1.y;
         height = _loc2_.y + int(_loc2_.height) + §]!%§() + _loc3_ + int(param1.height);
         width = Math.max(int(width),param1.x + §else function§(param1));
      }
      
      override protected function §,w§(param1:int, param2:DisplayObject) : void
      {
         if(param1 <= 0)
         {
            width = 0;
            height = 0;
            return;
         }
         if(param1 == items.length)
         {
            width = this.§use set if§();
            height = items[items.length - 1].y + int(items[items.length - 1].height);
            return;
         }
         var _loc3_:int = items[param1].y - param2.y;
         var _loc4_:int = param1;
         while(_loc4_ < items.length)
         {
            items[_loc4_].y -= _loc3_;
            _loc4_++;
         }
         height = items[items.length - 1].y + int(items[items.length - 1].height);
         width = this.§use set if§();
      }
      
      private function §use set if§() : int
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = 0;
         for each(_loc1_ in items)
         {
            _loc2_ = Math.max(_loc2_,_loc1_.x + §else function§(_loc1_));
         }
         return _loc2_;
      }
   }
}

