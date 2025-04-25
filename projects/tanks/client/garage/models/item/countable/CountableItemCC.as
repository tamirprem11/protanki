package projects.tanks.client.garage.models.item.countable
{
   public class CountableItemCC
   {
      private var _count:int;
      
      public function CountableItemCC(param1:int = 0)
      {
         super();
         this._count = param1;
      }
      
      public function get count() : int
      {
         return this._count;
      }
      
      public function set count(param1:int) : void
      {
         this._count = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "CountableItemCC [";
         _loc1_ += "count = " + this.count + " ";
         return _loc1_ + "]";
      }
   }
}

