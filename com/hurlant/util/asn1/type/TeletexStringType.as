package com.hurlant.util.asn1.type
{
   import flash.net.registerClassAlias;
   
   public class TeletexStringType extends StringType
   {
      registerClassAlias("com.hurlant.util.asn1.TeletexStringType",TeletexStringType);
      
      public function TeletexStringType(param1:int = 2147483647, param2:int = 0)
      {
         super(ASN1Type.TELETEX_STRING,param1,param2);
      }
   }
}

