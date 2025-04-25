package projects.tanks.client.garage.models.item.present
{
   import platform.client.fp10.core.resource.types.ImageResource;
   
   public class PresentItemCC
   {
      private var _date:Number;
      
      private var _image:ImageResource;
      
      private var _presenter:String;
      
      private var _text:String;
      
      private var _id:int;
      
      public function PresentItemCC(param1:Number = 0, param2:ImageResource = null, param3:String = null, param4:String = null, param5:int = 0)
      {
         super();
         this._date = param1;
         this._image = param2;
         this._presenter = param3;
         this._text = param4;
         this._id = param5;
      }
      
      public function get date() : Number
      {
         return this._date;
      }
      
      public function set date(param1:Number) : void
      {
         this._date = param1;
      }
      
      public function get image() : ImageResource
      {
         return this._image;
      }
      
      public function set image(param1:ImageResource) : void
      {
         this._image = param1;
      }
      
      public function get presenter() : String
      {
         return this._presenter;
      }
      
      public function set presenter(param1:String) : void
      {
         this._presenter = param1;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function set text(param1:String) : void
      {
         this._text = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "PresentItemCC [";
         _loc1_ += "date = " + this.date + " ";
         _loc1_ += "image = " + this.image + " ";
         _loc1_ += "presenter = " + this.presenter + " ";
         _loc1_ += "text = " + this.text + " ";
         _loc1_ += "id = " + this.id + " ";
         return _loc1_ + "]";
      }
   }
}

