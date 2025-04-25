package platform.client.core.general.resourcelocale.format
{
   import flash.utils.ByteArray;
   
   public class ImagePair
   {
      private var _key:String;
      
      private var _value:ByteArray;
      
      public function ImagePair(param1:String = null, param2:ByteArray = null)
      {
         super();
         this._key = param1;
         this._value = param2;
      }
      
      public function get key() : String
      {
         return this._key;
      }
      
      public function set key(param1:String) : void
      {
         this._key = param1;
      }
      
      public function get value() : ByteArray
      {
         return this._value;
      }
      
      public function set value(param1:ByteArray) : void
      {
         this._value = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "ImagePair [";
         _loc1_ += "key = " + this.key + " ";
         _loc1_ += "value = " + this.value + " ";
         return _loc1_ + "]";
      }
   }
}

