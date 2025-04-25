package §each var class§
{
   import platform.client.fp10.core.resource.types.ImageResource;
   
   public class §8!`§
   {
      private var _count:int;
      
      private var §try var set§:ImageResource;
      
      public function §8!`§(param1:int = 0, param2:ImageResource = null)
      {
         super();
         this._count = param1;
         this.§try var set§ = param2;
      }
      
      public function get count() : int
      {
         return this._count;
      }
      
      public function set count(param1:int) : void
      {
         this._count = param1;
      }
      
      public function get itemImage() : ImageResource
      {
         return this.§try var set§;
      }
      
      public function set itemImage(param1:ImageResource) : void
      {
         this.§try var set§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "WeeklyQuestRewardItem [";
         _loc1_ += "count = " + this.count + " ";
         _loc1_ += "itemImage = " + this.itemImage + " ";
         return _loc1_ + "]";
      }
   }
}

