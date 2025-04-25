package com.hurlant.util.asn1.type
{
   import flash.net.registerClassAlias;
   import flash.utils.ByteArray;
   
   public class ASN1Type
   {
      public static const CHOICE:int = -2;
      
      public static const ANY:int = -1;
      
      public static const RESERVED:int = 0;
      
      public static const BOOLEAN:int = 1;
      
      public static const INTEGER:int = 2;
      
      public static const BIT_STRING:int = 3;
      
      public static const OCTET_STRING:int = 4;
      
      public static const NULL:int = 5;
      
      public static const OID:int = 6;
      
      public static const ODT:int = 7;
      
      public static const EXTERNAL:int = 8;
      
      public static const REAL:int = 9;
      
      public static const ENUMERATED:int = 10;
      
      public static const EMBEDDED:int = 11;
      
      public static const UTF8STRING:int = 12;
      
      public static const ROID:int = 13;
      
      public static const SEQUENCE:int = 16;
      
      public static const SET:int = 17;
      
      public static const NUMERIC_STRING:int = 18;
      
      public static const PRINTABLE_STRING:int = 19;
      
      public static const TELETEX_STRING:int = 20;
      
      public static const VIDEOTEX_STRING:int = 21;
      
      public static const IA5_STRING:int = 22;
      
      public static const UTC_TIME:int = 23;
      
      public static const GENERALIZED_TIME:int = 24;
      
      public static const GRAPHIC_STRING:int = 25;
      
      public static const VISIBLE_STRING:int = 26;
      
      public static const GENERAL_STRING:int = 27;
      
      public static const UNIVERSAL_STRING:int = 28;
      
      public static const BMP_STRING:int = 30;
      
      public static const UNSTRUCTURED_NAME:int = 31;
      
      public static const UNIVERSAL:int = 0;
      
      public static const APPLICATION:int = 1;
      
      public static const CONTEXT:int = 2;
      
      public static const PRIVATE:int = 3;
      
      registerClassAlias("com.hurlant.util.asn1.ASN1Type",ASN1Type);
      
      public var optional:Boolean = false;
      
      public var implicitTag:Number = NaN;
      
      public var implicitClass:int = 0;
      
      public var explicitTag:Number = NaN;
      
      public var explicitClass:int = 0;
      
      public var defaultValue:* = null;
      
      public var extract:Boolean = false;
      
      public var defaultTag:Number;
      
      public var parsedTag:Number;
      
      public function ASN1Type(param1:int)
      {
         super();
         this.defaultTag = param1;
      }
      
      public function matches(param1:int, param2:int, param3:int) : Boolean
      {
         return false;
      }
      
      public function clone() : ASN1Type
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeObject(this);
         _loc1_.position = 0;
         return _loc1_.readObject();
      }
      
      public function fromDER(param1:ByteArray, param2:int) : *
      {
         var _loc4_:int = 0;
         var _loc5_:* = undefined;
         var _loc6_:int = 0;
         var _loc3_:int = int(param1.position);
         if(!isNaN(this.explicitTag))
         {
            _loc6_ = this.readDERTag(param1,this.explicitClass,true);
            if(_loc6_ == this.explicitTag)
            {
               _loc4_ = this.readDERLength(param1);
            }
            addr93:
            param1.position = _loc3_;
            if(this.defaultValue != null)
            {
               return this.fromDefaultValue();
            }
            return null;
         }
         if(!isNaN(this.implicitTag))
         {
            _loc6_ = this.readDERTag(param1,this.implicitClass);
            if(_loc6_ != this.implicitTag)
            {
            }
            §§goto(addr93);
         }
         else
         {
            _loc6_ = this.readDERTag(param1);
            if(this.defaultTag == ANY)
            {
               this.parsedTag = _loc6_;
            }
            else
            {
               if(_loc6_ != this.defaultTag)
               {
               }
               §§goto(addr93);
            }
         }
         _loc4_ = this.readDERLength(param1);
         _loc5_ = this.fromDERContent(param1,_loc4_);
         if(_loc5_ != null)
         {
            return _loc5_;
         }
         §§goto(addr93);
      }
      
      protected function fromDefaultValue() : *
      {
         return this.defaultValue;
      }
      
      protected function fromDERContent(param1:ByteArray, param2:int) : *
      {
         throw new Error("pure virtual function call: fromDERContent");
      }
      
      protected function readDERTag(param1:ByteArray, param2:int = 0, param3:Boolean = false, param4:Boolean = false) : int
      {
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc5_:* = int(param1.readUnsignedByte());
         var _loc6_:* = (_loc5_ & 0x20) != 0;
         var _loc7_:* = (_loc5_ & 0xC0) >> 6;
         _loc5_ &= 31;
         if(_loc5_ == 31)
         {
            _loc5_ = 0;
            do
            {
               _loc8_ = int(param1.readUnsignedByte());
               _loc9_ = _loc8_ & 0x7F;
               _loc5_ = (_loc5_ << 7) + _loc9_;
            }
            while((_loc8_ & 0x80) != 0);
            
         }
         if(param2 != _loc7_)
         {
         }
         return _loc5_;
      }
      
      protected function readDERLength(param1:ByteArray) : int
      {
         var _loc3_:* = 0;
         var _loc2_:* = int(param1.readUnsignedByte());
         if(_loc2_ >= 128)
         {
            _loc3_ = _loc2_ & 0x7F;
            _loc2_ = 0;
            while(_loc3_ > 0)
            {
               _loc2_ = _loc2_ << 8 | param1.readUnsignedByte();
               _loc3_--;
            }
         }
         return _loc2_;
      }
   }
}

