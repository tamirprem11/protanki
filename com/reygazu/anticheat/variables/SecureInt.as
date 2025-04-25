package com.reygazu.anticheat.variables
{
   import com.reygazu.anticheat.managers.CheatManager;
   
   public class SecureInt
   {
      private var secureData:SecureObject;
      
      private var fake:int;
      
      public function SecureInt(param1:String = "Unnamed SecureInt", param2:int = 0)
      {
         super();
         this.fake = param2;
         this.secureData = new SecureObject(param1,param2);
      }
      
      public function set value(param1:int) : void
      {
         if(this.fake != this.secureData.objectValue)
         {
            CheatManager.getInstance().detectCheat(this.secureData.name,this.fake,this.secureData.objectValue);
         }
         this.secureData.objectValue = param1;
         this.fake = param1;
      }
      
      public function get value() : int
      {
         return this.secureData.objectValue as int;
      }
   }
}

