package com.reygazu.anticheat.variables
{
   import com.reygazu.anticheat.managers.CheatManager;
   
   public class SecureNumber
   {
      private var secureData:SecureObject;
      
      private var fake:Number;
      
      public function SecureNumber(param1:String = "Unnamed SecureNumber", param2:Number = 0)
      {
         super();
         this.fake = param2;
         this.secureData = new SecureObject(param1,param2);
      }
      
      public function set value(param1:Number) : void
      {
         if(this.fake != this.secureData.objectValue)
         {
            CheatManager.getInstance().detectCheat(this.secureData.name,this.fake,this.secureData.objectValue);
         }
         this.secureData.objectValue = param1;
         this.fake = param1;
      }
      
      public function get value() : Number
      {
         return this.secureData.objectValue as Number;
      }
   }
}

