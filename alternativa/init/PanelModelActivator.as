package alternativa.init
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.osgi.service.dump.IDumpService;
   import alternativa.service.IModelService;
   import alternativa.tanks.model.antiaddiction.AntiAddictionAlertModel;
   import alternativa.tanks.model.entrancealert.EntranceAlertModel;
   import alternativa.tanks.model.panel.CapabilitiesDumper;
   import alternativa.tanks.model.panel.PanelModel;
   import alternativa.tanks.model.payment.PaymentModel;
   import alternativa.tanks.model.referals.ReferalsModel;
   import alternativa.tanks.model.user.UserDataModel;
   import alternativa.tanks.service.dailyquest.DailyQuestNotifierService;
   import alternativa.tanks.service.dailyquest.§`O§;
   import alternativa.tanks.service.fps.FPSService;
   import alternativa.tanks.service.fps.§get for import§;
   import alternativa.tanks.service.money.§6i§;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.service.notificationcategories.INotificationGarageCategoriesService;
   import alternativa.tanks.service.notificationcategories.§include for return§;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.BlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.DialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   
   public class PanelModelActivator implements IBundleActivator
   {
      public static var osgi:OSGi;
      
      private var panelModel:PanelModel;
      
      private var userDataModel:UserDataModel;
      
      private var paymentModel:PaymentModel;
      
      private var referalsModel:ReferalsModel;
      
      private var antiAddictionModel:AntiAddictionAlertModel;
      
      private var entranceAlertModel:EntranceAlertModel;
      
      private var capabilitiesDumper:CapabilitiesDumper;
      
      public function PanelModelActivator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         PanelModelActivator.osgi = param1;
         var _loc2_:IModelService = IModelService(param1.getService(IModelService));
         param1.registerService(IMoneyService,new §6i§());
         param1.registerService(IBlurService,new BlurService());
         param1.registerService(IDialogsService,new DialogsService());
         param1.registerService(INotificationGarageCategoriesService,new §include for return§());
         this.panelModel = new PanelModel();
         _loc2_.add(this.panelModel);
         this.userDataModel = new UserDataModel();
         _loc2_.add(this.userDataModel);
         this.referalsModel = new ReferalsModel();
         _loc2_.add(this.referalsModel);
         this.antiAddictionModel = new AntiAddictionAlertModel();
         _loc2_.add(this.antiAddictionModel);
         this.entranceAlertModel = new EntranceAlertModel();
         _loc2_.add(this.entranceAlertModel);
         param1.registerService(FPSService,new §get for import§());
         this.capabilitiesDumper = new CapabilitiesDumper();
         IDumpService(param1.getService(IDumpService)).registerDumper(this.capabilitiesDumper);
         param1.registerService(DailyQuestNotifierService,new §`O§());
      }
      
      public function stop(param1:OSGi) : void
      {
         var _loc2_:IModelService = IModelService(param1.getService(IModelService));
         _loc2_.remove(this.panelModel.id);
         this.panelModel = null;
         _loc2_.remove(this.userDataModel.id);
         this.userDataModel = null;
         _loc2_.remove(this.paymentModel.id);
         this.paymentModel = null;
         _loc2_.remove(this.referalsModel.id);
         this.referalsModel = null;
         _loc2_.remove(this.antiAddictionModel.id);
         this.antiAddictionModel = null;
         _loc2_.remove(this.entranceAlertModel.id);
         this.entranceAlertModel = null;
         IDumpService(param1.getService(IDumpService)).unregisterDumper(this.capabilitiesDumper.dumperName);
         this.capabilitiesDumper = null;
         PanelModelActivator.osgi = null;
      }
   }
}

