package projects.tanks.clients.fp10.libraries.tanksservices.service.storage
{
   import flash.net.SharedObject;
   
   public class StorageService implements IStorageService
   {
      private var storage:SharedObject;
      
      public function StorageService(param1:SharedObject)
      {
         super();
         this.storage = param1;
      }
      
      public function getStorage() : SharedObject
      {
         return this.storage;
      }
   }
}

