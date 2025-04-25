package alternativa.tanks.model.shop
{
   import flash.display.Sprite;
   
   public class ShopCategoryViewGrid extends Sprite
   {
      public var columnCount:int = 3;
      
      public var columnSpacing:int = 3;
      
      public var items:Vector.<ItemBase>;
      
      public function ShopCategoryViewGrid()
      {
         super();
         this.items = new Vector.<ItemBase>();
      }
      
      public function addItem(param1:ItemBase) : void
      {
         param1.gridPosition = this.items.length;
         this.items.push(param1);
         addChild(param1);
      }
      
      public function render() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = int(this.items.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc1_ = _loc4_ % this.columnCount;
            _loc2_ = _loc4_ / this.columnCount;
            this.items[_loc4_].x = _loc1_ * this.items[_loc4_].width + _loc1_ * this.columnSpacing;
            this.items[_loc4_].y = _loc2_ * this.items[_loc4_].height + _loc2_ * this.columnSpacing;
            _loc4_++;
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:ItemBase = null;
         for each(_loc1_ in this.items)
         {
            _loc1_.destroy();
         }
         this.items = null;
      }
   }
}

