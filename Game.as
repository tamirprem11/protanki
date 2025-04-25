package
{
   import § !j§.§continue const class§;
   import alternativa.ClientConfigurator;
   import alternativa.init.TanksFontsActivator;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.launcherparams.LauncherParams;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.locale.LocaleService;
   import alternativa.register.ModelsRegister;
   import alternativa.service.IModelService;
   import alternativa.startup.ConnectionParameters;
   import alternativa.startup.StartupSettings;
   import alternativa.tanks.help.HelpService;
   import alternativa.tanks.help.IHelpService;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.locale.ru.Image;
   import alternativa.tanks.model.UserModel;
   import alternativa.tanks.model.panel.IPanel;
   import alternativa.tanks.model.panel.PanelModel;
   import alternativa.tanks.servermodels.socialnetwork.ExternalEntranceModel;
   import alternativa.tanks.servermodels.socialnetwork.IExternalEntranceModel;
   import alternativa.tanks.service.achievement.§7"&§;
   import alternativa.tanks.service.achievement.IAchievementService;
   import flash.display.DisplayObjectContainer;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import init.TanksFormsActivator;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import scpacker.networking.aes.AESEncrypterModel;
   import scpacker.networking.aes.IAESModel;
   import scpacker.networking.connecting.ServerConnectionService;
   import scpacker.networking.connecting.ServerConnectionServiceImpl;
   
   public class Game extends Sprite
   {
      private static var §8!%§:UserModel;
      
      private var container:DisplayObjectContainer;
      
      public function Game()
      {
         super();
         if(numChildren > 1)
         {
            removeChildAt(0);
            removeChildAt(0);
         }
      }
      
      public static function onResourceLoaded() : void
      {
         var _loc1_:Network = OSGi.getInstance().getService(INetworker) as Network;
         new TanksFormsActivator().start(OSGi.getInstance());
         OSGi.getInstance().registerService(IHelpService,new HelpService());
         new TanksFontsActivator().start(OSGi.getInstance());
         OSGi.getInstance().registerService(IAchievementService,new §7"&§());
         var _loc2_:PanelModel = new PanelModel();
         OSGi.getInstance().registerService(IPanel,_loc2_);
         (OSGi.getInstance().getService(ILoaderWindowService) as ILoaderWindowService).hideLoaderWindow();
         (OSGi.getInstance().getService(ILoaderWindowService) as ILoaderWindowService).lockLoaderWindow();
         §8!%§ = new UserModel();
         §8!%§.initObject(false,false);
         §8!%§.objectLoaded();
      }
      
      public function activateAllModels(param1:LoaderInfo) : void
      {
         new ClientConfigurator().start(this.container,new LauncherParams(),new ConnectionParameters(param1.parameters["ip"],Vector.<int>([param1.parameters["port"]]),null,param1.parameters["resources"],false,false),null);
         OSGi.getInstance().registerService(ILocaleService,new LocaleService(param1.parameters["lang"],"en"));
         if(param1.parameters["lang"] == "ru")
         {
            Image.init(OSGi.getInstance().getService(ILocaleService) as ILocaleService);
         }
         else
         {
            §continue const class§.init(OSGi.getInstance().getService(ILocaleService) as ILocaleService);
         }
         var _loc2_:IModelService = new ModelsRegister();
         OSGi.getInstance().registerService(IModelService,_loc2_);
         new EntranceActivator().start(OSGi.getInstance());
      }
      
      public function SUPER(param1:Stage, param2:DisplayObjectContainer, param3:LoaderInfo = null) : void
      {
         this.container = param2;
         param1.dispatchEvent(new Event("EntranceModel.objectLoaded",true));
         this.activateAllModels(param3);
         ILoaderWindowService(OSGi.getInstance().getService(ILoaderWindowService)).showLoaderWindow();
         var _loc4_:GPUCapabilities = new GPUCapabilities(IDisplay(OSGi.getInstance().getService(IDisplay)).stage);
         _loc4_.addEventListener(Event.COMPLETE,this.§[!X§);
         _loc4_.detect();
         StartupSettings.preLauncher = Sprite(parent.parent.parent);
      }
      
      private function §[!X§(param1:Event) : void
      {
         OSGi.clientLog.log("GPUDetection","GPU detection completed, %1",GPUCapabilities.gpuEnabled);
         this.serverNormal();
      }
      
      private function serverNormal() : void
      {
         var _loc1_:ServerConnectionService = new ServerConnectionServiceImpl();
         _loc1_.connect(this.onConnected);
      }
      
      private function onConnected() : void
      {
         var _loc1_:Network = OSGi.getInstance().getService(INetworker) as Network;
         var _loc2_:ExternalEntranceModel = OSGi.getInstance().getService(IExternalEntranceModel) as ExternalEntranceModel;
         _loc1_.addListener(_loc2_);
         _loc2_.objectLoaded();
         var _loc3_:AESEncrypterModel = new AESEncrypterModel();
         OSGi.getInstance().registerService(IAESModel,_loc3_);
         _loc1_.addListener(_loc3_);
         _loc3_.resourceLoaded(_loc1_);
      }
   }
}

