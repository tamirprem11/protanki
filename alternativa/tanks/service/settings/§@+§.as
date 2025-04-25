package alternativa.tanks.service.settings
{
   import flash.events.EventDispatcher;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.net.SharedObject;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.friend.battleinvite.IBattleInviteService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   
   public class §@+§ extends EventDispatcher implements ISettingsService
   {
      [Inject]
      public static var storageService:IStorageService;
      
      [Inject]
      public static var battleInviteService:IBattleInviteService;
      
      private static const §+!S§:Number = 0.7;
      
      private static const §`q§:int = 8;
      
      private var email:String;
      
      private var emailConfirmed:Boolean;
      
      private var §static for with§:Boolean = false;
      
      public function §@+§()
      {
         super();
      }
      
      private static function §default set for§(param1:Boolean, param2:Number) : void
      {
         SoundMixer.soundTransform = new SoundTransform(param1 ? Number(0) : Number(param2));
      }
      
      public function get showDropZones() : Boolean
      {
         return this.getBoolean(§>k§.§override const in§,true);
      }
      
      public function set showDropZones(param1:Boolean) : void
      {
         this.§'g§(§>k§.§override const in§,param1);
      }
      
      public function get showSkyBox() : Boolean
      {
         return this.getBoolean(§>k§.§package final§,true);
      }
      
      public function get showFPS() : Boolean
      {
         return this.getBoolean(§>k§.§finally§,true);
      }
      
      public function get showChat() : Boolean
      {
         return this.getBoolean(§>k§.§'!4§,true);
      }
      
      public function get mipMapping() : Boolean
      {
         return this.getBoolean(§>k§.§7!Z§,true);
      }
      
      public function get alternateCamera() : Boolean
      {
         return this.getBoolean(§>k§.§extends for super§,false);
      }
      
      public function get adaptiveFPS() : Boolean
      {
         return this.getBoolean(§>k§.§4N§,false);
      }
      
      public function get inverseBackDriving() : Boolean
      {
         return this.getBoolean(§>k§.§[!O§,false);
      }
      
      public function get bgSound() : Boolean
      {
         return this.getBoolean(§>k§.§99§,true);
      }
      
      public function get muteSound() : Boolean
      {
         return this.getBoolean(§>k§.§final for each§,false);
      }
      
      public function set muteSound(param1:Boolean) : void
      {
         §@+§.§default set for§(param1,this.§4!v§);
         this.§'g§(§>k§.§final for each§,param1);
      }
      
      public function get shadows() : Boolean
      {
         return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained && this.getBoolean(§>k§.§default const const§,true);
      }
      
      public function get §1!-§() : Boolean
      {
         return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained && this.getBoolean(§>k§.§else var else§,false);
      }
      
      public function get dust() : Boolean
      {
         return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained && this.getBoolean(§>k§.§else var else§,false) && this.getBoolean(§>k§.§continue const final§,false);
      }
      
      public function get ssao() : Boolean
      {
         return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained && this.getBoolean(§>k§.SSAO,false);
      }
      
      public function get fog() : Boolean
      {
         return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained && this.getBoolean(§>k§.FOG,true);
      }
      
      public function get dynamicShadows() : Boolean
      {
         return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained && this.getBoolean(§>k§.§-"f§,false);
      }
      
      public function get dynamicLighting() : Boolean
      {
         var _loc1_:Boolean = this.dynamicShadows || this.ssao || this.§1!-§;
         return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained && this.getBoolean(§>k§.§function for implements§,_loc1_);
      }
      
      public function get antialiasing() : Boolean
      {
         return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained && this.getBoolean(§>k§.§true for dynamic§,false);
      }
      
      public function get graphicsAutoQuality() : Boolean
      {
         if(this.§>L§(§>k§.§throw set while§))
         {
            return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained && this.getBoolean(§>k§.§throw set while§,false);
         }
         return GPUCapabilities.gpuEnabled && !GPUCapabilities.constrained;
      }
      
      private function §>L§(param1:§>k§) : Boolean
      {
         return storageService.getStorage().data[param1.name] != null;
      }
      
      public function get §4!v§() : Number
      {
         return this.getNumber(§>k§.§return for package§,§+!S§);
      }
      
      public function set §4!v§(param1:Number) : void
      {
         §default set for§(this.muteSound,param1);
         this.§'g§(§>k§.§return for package§,param1);
      }
      
      public function §'!5§() : void
      {
         §default set for§(this.muteSound,this.§4!v§);
      }
      
      private function getBoolean(param1:§>k§, param2:Boolean) : Boolean
      {
         var _loc3_:* = storageService.getStorage().data[param1.name];
         return _loc3_ == null ? Boolean(param2) : Boolean(_loc3_);
      }
      
      private function storeBoolean(param1:§>k§, param2:Boolean) : void
      {
         storageService.getStorage().data[param1.name] = param2;
      }
      
      private function getNumber(param1:§>k§, param2:Number = 0) : Number
      {
         var _loc3_:Number = Number(storageService.getStorage().data[param1.name]);
         return isNaN(_loc3_) ? Number(param2) : Number(_loc3_);
      }
      
      private function §implements for true§(param1:§>k§, param2:Number) : void
      {
         storageService.getStorage().data[param1.name] = param2;
      }
      
      public function §]^§(param1:String, param2:Boolean) : void
      {
         this.email = param1;
         this.emailConfirmed = param2;
      }
      
      public function §,e§() : Boolean
      {
         return this.email != null && this.email != "";
      }
      
      public function §]!=§() : Boolean
      {
         return !this.§do const var§();
      }
      
      public function getEmail() : String
      {
         return this.email != null ? this.email : "";
      }
      
      public function §do const var§() : Boolean
      {
         return this.emailConfirmed;
      }
      
      public function §switch for override§(param1:Boolean) : void
      {
         this.emailConfirmed = param1;
      }
      
      public function get mouseControl() : Boolean
      {
         return this.getBoolean(§>k§.§""%§,true);
      }
      
      public function get mouseSensitivity() : int
      {
         return this.getNumber(§>k§.§5!z§,§`q§);
      }
      
      public function get mouseYInverse() : Boolean
      {
         return this.getBoolean(§>k§.§^w§,false);
      }
      
      public function get mouseYInverseShaftAim() : Boolean
      {
         return this.getBoolean(§>k§.§dynamic set import§,false);
      }
      
      public function get §%"G§() : Boolean
      {
         return this.§static for with§;
      }
      
      public function set §%"G§(param1:Boolean) : void
      {
         this.§static for with§ = param1;
      }
      
      public function get showDamage() : Boolean
      {
         return this.getBoolean(§>k§.SHOW_DAMAGE,true);
      }
      
      public function §'g§(param1:§>k§, param2:Object) : void
      {
         var _loc3_:SharedObject = storageService.getStorage();
         _loc3_.data[param1.name] = param2;
         _loc3_.flush();
         dispatchEvent(new SettingsServiceEvent(SettingsServiceEvent.SETTINGS_CHANGED,param1));
      }
   }
}

