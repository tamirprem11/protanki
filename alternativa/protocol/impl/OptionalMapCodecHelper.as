package alternativa.protocol.impl
{
   import alternativa.protocol.OptionalMap;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   
   public class OptionalMapCodecHelper
   {
      private static const INPLACE_MASK_FLAG:int = 128;
      
      private static const MASK_LENGTH_2_BYTES_FLAG:int = 64;
      
      private static const INPLACE_MASK_1_BYTES:int = 32;
      
      private static const INPLACE_MASK_3_BYTES:int = 96;
      
      private static const INPLACE_MASK_2_BYTES:int = 64;
      
      private static const MASK_LENGTH_1_BYTE:int = 128;
      
      private static const MASK_LEGTH_3_BYTE:int = 12582912;
      
      public function OptionalMapCodecHelper()
      {
         super();
      }
      
      public static function encodeNullMap(param1:OptionalMap, param2:ByteArray) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = param1.getSize();
         var _loc9_:ByteArray = param1.getMap();
         if(_loc8_ <= 5)
         {
            param2.writeByte(int((_loc9_[0] & 0xFF) >>> 3));
         }
         else if(_loc8_ <= 13)
         {
            param2.writeByte(int(((_loc9_[0] & 0xFF) >>> 3) + INPLACE_MASK_1_BYTES));
            param2.writeByte(((_loc9_[1] & 0xFF) >>> 3) + (_loc9_[0] << 5));
         }
         else if(_loc8_ <= 21)
         {
            param2.writeByte(int(((_loc9_[0] & 0xFF) >>> 3) + INPLACE_MASK_2_BYTES));
            param2.writeByte(int(((_loc9_[1] & 0xFF) >>> 3) + (_loc9_[0] << 5)));
            param2.writeByte(int(((_loc9_[2] & 0xFF) >>> 3) + (_loc9_[1] << 5)));
         }
         else if(_loc8_ <= 29)
         {
            param2.writeByte(int(((_loc9_[0] & 0xFF) >>> 3) + INPLACE_MASK_3_BYTES));
            param2.writeByte(int(((_loc9_[1] & 0xFF) >>> 3) + (_loc9_[0] << 5)));
            param2.writeByte(int(((_loc9_[2] & 0xFF) >>> 3) + (_loc9_[1] << 5)));
            param2.writeByte(int(((_loc9_[3] & 0xFF) >>> 3) + (_loc9_[2] << 5)));
         }
         else if(_loc8_ <= 504)
         {
            _loc3_ = (_loc8_ >>> 3) + ((_loc8_ & 7) == 0 ? 0 : 1);
            _loc4_ = int((_loc3_ & 0xFF) + MASK_LENGTH_1_BYTE);
            param2.writeByte(_loc4_);
            param2.writeBytes(_loc9_,0,_loc3_);
         }
         else
         {
            if(_loc8_ > 33554432)
            {
               throw new Error("NullMap overflow");
            }
            _loc3_ = (_loc8_ >>> 3) + ((_loc8_ & 7) == 0 ? 0 : 1);
            _loc5_ = _loc3_ + MASK_LEGTH_3_BYTE;
            _loc4_ = int((_loc5_ & 0xFF0000) >>> 16);
            _loc6_ = int((_loc5_ & 0xFF00) >>> 8);
            _loc7_ = int(_loc5_ & 0xFF);
            param2.writeByte(_loc4_);
            param2.writeByte(_loc6_);
            param2.writeByte(_loc7_);
            param2.writeBytes(_loc9_,0,_loc3_);
         }
      }
      
      public static function decodeNullMap(param1:IDataInput, param2:OptionalMap) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:ByteArray = new ByteArray();
         var _loc11_:int = int(param1.readByte());
         var _loc12_:* = (_loc11_ & INPLACE_MASK_FLAG) != 0;
         if(_loc12_)
         {
            _loc4_ = _loc11_ & 0x3F;
            _loc5_ = (_loc11_ & MASK_LENGTH_2_BYTES_FLAG) != 0;
            if(_loc5_)
            {
               _loc7_ = int(param1.readByte());
               _loc8_ = int(param1.readByte());
               _loc3_ = (_loc4_ << 16) + ((_loc7_ & 0xFF) << 8) + (_loc8_ & 0xFF);
            }
            else
            {
               _loc3_ = _loc4_;
            }
            param1.readBytes(_loc10_,0,_loc3_);
            _loc6_ = _loc3_ << 3;
            param2.init(_loc6_,_loc10_);
            return;
         }
         _loc4_ = int(_loc11_ << 3);
         _loc3_ = int((_loc11_ & 0x60) >> 5);
         switch(_loc3_)
         {
            case 0:
               _loc10_.writeByte(_loc4_);
               param2.init(5,_loc10_);
               return;
            case 1:
               _loc7_ = int(param1.readByte());
               _loc10_.writeByte(int(_loc4_ + ((_loc7_ & 0xFF) >>> 5)));
               _loc10_.writeByte(int(_loc7_ << 3));
               param2.init(13,_loc10_);
               return;
            case 2:
               _loc7_ = int(param1.readByte());
               _loc8_ = int(param1.readByte());
               _loc10_.writeByte(int(_loc4_ + ((_loc7_ & 0xFF) >>> 5)));
               _loc10_.writeByte(int((_loc7_ << 3) + ((_loc8_ & 0xFF) >>> 5)));
               _loc10_.writeByte(int(_loc8_ << 3));
               param2.init(21,_loc10_);
               return;
            case 3:
               _loc7_ = int(param1.readByte());
               _loc8_ = int(param1.readByte());
               _loc9_ = int(param1.readByte());
               _loc10_.writeByte(int(_loc4_ + ((_loc7_ & 0xFF) >>> 5)));
               _loc10_.writeByte(int((_loc7_ << 3) + ((_loc8_ & 0xFF) >>> 5)));
               _loc10_.writeByte(int((_loc8_ << 3) + ((_loc9_ & 0xFF) >>> 5)));
               _loc10_.writeByte(int(_loc9_ << 3));
               param2.init(29,_loc10_);
               return;
            default:
               throw new Error("Invalid OptionalMap");
         }
      }
   }
}

