package §get const dynamic§
{
   import alternativa.tanks.service.§return const§;
   import org.robotlegs.mvcs.Actor;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class §import for for§ extends Actor implements §return const§
   {
      [Inject]
      public var storageService:IStorageService;
      
      public function §import for for§()
      {
         super();
      }
      
      public function get §7"E§() : Boolean
      {
         return this.storageService.getStorage().data.alreadyPlayedTanks != null ? Boolean(this.storageService.getStorage().data.alreadyPlayedTanks) : Boolean(false);
      }
      
      public function set §7"E§(param1:Boolean) : void
      {
         this.storageService.getStorage().data.alreadyPlayedTanks = true;
      }
      
      public function get §false set with§() : String
      {
         return this.storageService.getStorage().data.userName;
      }
      
      public function set §false set with§(param1:String) : void
      {
         this.storageService.getStorage().data.userName = param1;
      }
      
      public function get entranceHash() : String
      {
         return this.storageService.getStorage().data.userHash;
      }
   }
}

