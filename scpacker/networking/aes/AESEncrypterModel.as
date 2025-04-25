package scpacker.networking.aes
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.startup.StartupSettings;
   import alternativa.tanks.servermodels.registartion.password.IPasswordRegistration;
   import alternativa.tanks.servermodels.registartion.password.PasswordRegistrationModel;
   import alternativa.types.Long;
   import §class const import§.§-;§;
   import §default while§.§implements const§;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import §function var import§.§#!$§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.loading.DispatcherModel;
   import projects.tanks.client.entrance.model.entrance.registration.RegistrationModelCC;
   import scpacker.networking.INetworkListener;
   import scpacker.networking.Network;
   import scpacker.networking.commands.Command;
   import scpacker.networking.commands.Type;
   import scpacker.server.models.locale.LocalizationLoader;
   import scpacker.utils.ResourcesLoader;
   
   public class AESEncrypterModel implements INetworkListener
   {
      private var netwoker:Network;
      
      private var loader:Loader;
      
      private var localizationLoader:LocalizationLoader = new LocalizationLoader();
      
      private var resourcesLoader:ResourcesLoader = new ResourcesLoader();
      
      private var modelRegistry:ModelRegistry = OSGi.getInstance().getService(ModelRegistry) as ModelRegistry;
      
      private var §%t§:§-;§ = §-;§(this.modelRegistry.getModel(Long.getLong(0,300020016)));
      
      public function AESEncrypterModel()
      {
         super();
      }
      
      public function onData(param1:Command) : void
      {
         var _loc2_:ByteArray = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:LoaderContext = null;
         var _loc6_:DispatcherModel = null;
         var _loc7_:Object = null;
         var _loc8_:RegistrationModelCC = null;
         if(param1.type == Type.SYSTEM)
         {
            if(param1.args[0] == "set_aes_data")
            {
               try
               {
                  _loc2_ = new ByteArray();
                  _loc3_ = param1.args[1].split(",");
                  for each(_loc4_ in _loc3_)
                  {
                     _loc2_.writeByte(parseInt(_loc4_));
                  }
                  _loc5_ = new LoaderContext(false,ApplicationDomain.currentDomain);
                  if(StartupSettings.isDesktop)
                  {
                     _loc5_.allowLoadBytesCodeExecution = true;
                  }
                  this.loader = new Loader();
                  this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onAesLoadComplete);
                  this.loader.loadBytes(_loc2_,_loc5_);
               }
               catch(e:Error)
               {
               }
            }
            if(param1.args[0] == "init_locale")
            {
               this.localizationLoader.init(param1.args[1]);
            }
            if(param1.args[0] == "main_resources_loaded")
            {
               Game.onResourceLoaded();
            }
            if(param1.args[0] == "load_resources")
            {
               _loc6_ = this.modelRegistry.getModel(Long.getLong(191355032,163351191)) as DispatcherModel;
               _loc6_.loadDependencies(this.resourcesLoader.makeDependencies(param1.args[1],param1.args[2]));
               Model.popObject();
            }
            if(param1.args[0] == "initInviteModel")
            {
               this.§%t§.putInitParams(new §#!$§(param1.args[1] == "false" ? false : true));
               this.§%t§.objectLoaded();
            }
            if(param1.args[0] == "inviteNotFound")
            {
               this.§%t§.inviteNotFound();
            }
            if(param1.args[0] == "inviteFree")
            {
               this.§%t§.inviteFree();
            }
            if(param1.args[0] == "inviteAlreadyActivated")
            {
               this.§%t§.inviteAlreadyActivated(param1.args[1]);
            }
            if(param1.args[0] == "init_registration_model")
            {
               _loc7_ = JSON.parse(param1.args[1]);
               _loc8_ = new RegistrationModelCC();
               _loc8_.enableRequiredEmail = _loc7_.enableRequiredEmail;
               _loc8_.maxPasswordLength = _loc7_.maxPasswordLength;
               _loc8_.minPasswordLength = _loc7_.minPasswordLength;
               PasswordRegistrationModel(OSGi.getInstance().getService(IPasswordRegistration)).putInitParams(_loc8_);
               PasswordRegistrationModel(OSGi.getInstance().getService(IPasswordRegistration)).objectLoaded();
            }
            if(param1.args[0] == "showAlert")
            {
               §implements const§(this.modelRegistry.getModel(Long.getLong(2058573415,-746879275))).show(param1.args[1]);
            }
         }
      }
      
      private function onAesLoadComplete(param1:Event) : void
      {
         this.netwoker.AESDecrypter = new (Class(this.loader.contentLoaderInfo.applicationDomain.getDefinition("Main")))();
      }
      
      public function resourceLoaded(param1:Network) : void
      {
         this.netwoker = param1;
         param1.send("system;get_aes_data;" + this.§function final§(ILocaleService(OSGi.getInstance().getService(ILocaleService)).language));
      }
      
      private function §function final§(param1:String) : String
      {
         switch(param1)
         {
            case "ru":
            case "en":
               return param1.toUpperCase();
            case "pt_BR":
               return param1;
            default:
               return param1.toUpperCase();
         }
      }
   }
}

