package projects.tanks.client.garage.models.item.kit
{
   import platform.client.fp10.core.resource.types.ImageResource;
   
   public class §?!$§
   {
      private var §]"F§:int;
      
      private var _image:ImageResource;
      
      private var §8!t§:Vector.<KitItem>;
      
      public function §?!$§(param1:int = 0, param2:ImageResource = null, param3:Vector.<KitItem> = null)
      {
         super();
         this.§]"F§ = param1;
         this._image = param2;
         this.§8!t§ = param3;
      }
      
      public function get discountInPercent() : int
      {
         return this.§]"F§;
      }
      
      public function set discountInPercent(param1:int) : void
      {
         this.§]"F§ = param1;
      }
      
      public function get image() : ImageResource
      {
         return this._image;
      }
      
      public function set image(param1:ImageResource) : void
      {
         this._image = param1;
      }
      
      public function get kitItems() : Vector.<KitItem>
      {
         return this.§8!t§;
      }
      
      public function set kitItems(param1:Vector.<KitItem>) : void
      {
         this.§8!t§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "GarageKitCC [";
         _loc1_ += "discountInPercent = " + this.discountInPercent + " ";
         _loc1_ += "image = " + this.image + " ";
         _loc1_ += "kitItems = " + this.kitItems + " ";
         return _loc1_ + "]";
      }
   }
}

