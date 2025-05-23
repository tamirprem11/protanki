package com.hurlant.util.der
{
   import com.hurlant.util.Hex;
   import flash.utils.ByteArray;
   
   public class ByteString extends ByteArray implements IAsn1Type
   {
      private var type:uint;
      
      private var len:uint;
      
      public function ByteString(param1:uint = 4, param2:uint = 0)
      {
         super();
         this.type = param1;
         this.len = param2;
      }
      
      public function getLength() : uint
      {
         return this.len;
      }
      
      public function getType() : uint
      {
         return this.type;
      }
      
      public function toDER() : ByteArray
      {
         return DER.wrapDER(this.type,this);
      }
      
      override public function toString() : String
      {
         return DER.indent + "ByteString[" + this.type + "][" + this.len + "][" + Hex.fromArray(this) + "]";
      }
   }
}

