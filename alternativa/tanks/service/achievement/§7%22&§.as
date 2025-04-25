package alternativa.tanks.service.achievement
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.gui.CongratulationsWindowPresent;
   import alternativa.tanks.help.IHelpService;
   import alternativa.tanks.help.achievements.BattleFightButtonHelper;
   import alternativa.tanks.help.achievements.BattleStartButtonHelper;
   import alternativa.tanks.help.achievements.DonateButtonHelper;
   import alternativa.tanks.help.achievements.FirstBattleCreateHelper;
   import alternativa.tanks.help.achievements.FirstBattleFightHelper;
   import alternativa.tanks.help.achievements.FirstDonateHelper;
   import alternativa.tanks.help.achievements.FirstPurchaseHelper;
   import alternativa.tanks.help.achievements.InviteFriendHelper;
   import alternativa.tanks.help.achievements.PurchaseButtonHelper;
   import alternativa.tanks.help.achievements.SetEmailHelper;
   import alternativa.tanks.service.settings.ISettingsService;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Point;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.clients.fp10.libraries.alternativapartners.service.IPartnerService;
   import projects.tanks.client.achievements.model.achievements.§continue super§;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   
   public class §7"&§ implements IAchievementService
   {
      [Inject]
      public static var helpService:IHelpService;
      
      [Inject]
      public static var clientLog:IClientLog;
      
      [Inject]
      public static var modelRegister:ModelRegistry;
      
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var settingsService:ISettingsService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var partnersService:IPartnerService;
      
      private static const §try for try§:Class = §="S§;
      
      private static const present:BitmapData = (new §try for try§() as Bitmap).bitmapData;
      
      private const HELPER_GROUP_KEY:String = "GarageModel";
      
      private var battle:FirstBattleCreateHelper;
      
      private var §dynamic set finally§:BattleStartButtonHelper;
      
      private var §0!i§:FirstBattleFightHelper;
      
      private var §6! §:BattleFightButtonHelper;
      
      private var §do const return§:FirstDonateHelper;
      
      private var §'!u§:DonateButtonHelper;
      
      private var §]C§:FirstPurchaseHelper;
      
      private var §7P§:PurchaseButtonHelper;
      
      private var friend:InviteFriendHelper;
      
      private var email:SetEmailHelper;
      
      private var §,$§:Vector.<§continue super§>;
      
      private var §,!s§:int = 0;
      
      private var inBattle:Boolean;
      
      private var §default for catch§:Boolean = false;
      
      private var §in var implements§:Boolean = true;
      
      public function §7"&§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.battle = new FirstBattleCreateHelper();
         this.§dynamic set finally§ = new BattleStartButtonHelper();
         this.§0!i§ = new FirstBattleFightHelper();
         this.§6! § = new BattleFightButtonHelper();
         this.§do const return§ = new FirstDonateHelper();
         this.§'!u§ = new DonateButtonHelper();
         this.§]C§ = new FirstPurchaseHelper();
         this.§7P§ = new PurchaseButtonHelper();
         this.friend = new InviteFriendHelper();
         this.email = new SetEmailHelper();
         var _loc1_:IHelpService = IHelpService(OSGi.getInstance().getService(IHelpService));
         _loc1_.registerHelper(this.HELPER_GROUP_KEY,800,this.battle,false);
         _loc1_.registerHelper(this.HELPER_GROUP_KEY,802,this.§0!i§,false);
         _loc1_.registerHelper(this.HELPER_GROUP_KEY,803,this.§6! §,false);
         _loc1_.registerHelper(this.HELPER_GROUP_KEY,804,this.§do const return§,false);
         _loc1_.registerHelper(this.HELPER_GROUP_KEY,805,this.§'!u§,false);
         _loc1_.registerHelper(this.HELPER_GROUP_KEY,806,this.§]C§,false);
         _loc1_.registerHelper(this.HELPER_GROUP_KEY,807,this.§7P§,false);
         _loc1_.registerHelper(this.HELPER_GROUP_KEY,808,this.friend,false);
         _loc1_.registerHelper(this.HELPER_GROUP_KEY,809,this.email,false);
         _loc1_.registerHelper(this.HELPER_GROUP_KEY,811,this.§dynamic set finally§,false);
         this.§,$§ = new Vector.<§continue super§>();
      }
      
      public function §else const include§(param1:Vector.<§continue super§>) : void
      {
         this.§,$§ = new Vector.<§continue super§>();
         var _loc2_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1[_loc3_] != §continue super§.FIRST_REFERRAL)
            {
               this.§,$§.push(param1[_loc3_]);
            }
            _loc3_++;
         }
         if(this.§,$§.length != 0)
         {
            this.§true for continue§();
            this.alignHelpers();
            display.stage.addEventListener(Event.RESIZE,this.alignHelpers);
         }
      }
      
      public function setPanelPartition(param1:int) : void
      {
         this.§,!s§ = param1;
         this.inBattle = false;
         this.§true for continue§();
         this.alignHelpers();
      }
      
      public function setGarageBuyButtonTargetPoint(param1:Point) : void
      {
         this.§7P§.targetPoint = param1;
         this.§true for continue§();
         this.alignHelpers();
      }
      
      public function setBattleStartButtonTargetPoint(param1:Point) : void
      {
         this.§6! §.targetPoint = param1;
         this.§true for continue§();
         this.alignHelpers();
      }
      
      public function setPaymentResumeButtonTargetPoint(param1:Point) : void
      {
         this.§'!u§.targetPoint = param1;
         this.§true for continue§();
         this.alignHelpers();
      }
      
      public function hideAllBubbles(param1:Boolean) : void
      {
         var _loc2_:int = 800;
         while(_loc2_ < 812)
         {
            helpService.hideHelper(this.HELPER_GROUP_KEY,_loc2_);
            _loc2_++;
         }
         helpService.hideHelp();
         this.inBattle = param1;
      }
      
      public function showStartButtonHelper() : void
      {
         this.§default for catch§ = true;
         this.§true for continue§();
      }
      
      public function hideStartButtonHelper() : void
      {
         this.§default for catch§ = false;
         this.§true for continue§();
      }
      
      public function privateAchievementBubbleIsNotNeededAnymore() : void
      {
         this.§in var implements§ = false;
      }
      
      public function completeAchievement(param1:§continue super§, param2:String, param3:int) : void
      {
         if(this.§,$§.indexOf(param1) != -1)
         {
            this.§,$§.splice(this.§,$§.indexOf(param1),1);
         }
         this.hideAllBubbles(this.inBattle);
         var _loc4_:CongratulationsWindowPresent = new CongratulationsWindowPresent(present,null,param2);
      }
      
      public function activateAchievement(param1:§continue super§) : void
      {
         if(!(param1 == §continue super§.FIRST_REFERRAL && partnersService.isRunningInsidePartnerEnvironment()))
         {
            this.§,$§.push(param1);
         }
         this.§true for continue§();
         this.alignHelpers();
      }
      
      private function §true for continue§() : void
      {
         var _loc1_:§continue super§ = null;
         if(this.inBattle)
         {
            return;
         }
         var _loc2_:int = 800;
         while(_loc2_ < 812)
         {
            helpService.hideHelper(this.HELPER_GROUP_KEY,_loc2_);
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < this.§,$§.length)
         {
            _loc1_ = this.§,$§[_loc3_];
            switch(_loc1_)
            {
               case §continue super§.FIRST_PURCHASE:
                  if(this.§,!s§ == 1 && this.§7P§.targetPoint.x != 0)
                  {
                     helpService.showHelper(this.HELPER_GROUP_KEY,807,true);
                  }
                  break;
               case §continue super§.FIGHT_FIRST_BATTLE:
                  if(this.§,!s§ != 0)
                  {
                     helpService.showHelperIfAble(this.HELPER_GROUP_KEY,802,true);
                  }
                  break;
               case §continue super§.FIRST_DONATE:
                  if(lobbyLayoutService.getCurrentState() == LayoutState.PAYMENT && this.§'!u§.targetPoint.x > 0)
                  {
                     helpService.showHelper(this.HELPER_GROUP_KEY,805,true);
                  }
                  else if(lobbyLayoutService.getCurrentState() == LayoutState.GARAGE)
                  {
                     helpService.showHelperIfAble(this.HELPER_GROUP_KEY,804,true);
                  }
                  break;
               case §continue super§.FIRST_REFERRAL:
                  helpService.showHelper(this.HELPER_GROUP_KEY,808,true);
                  break;
               case §continue super§.SET_EMAIL:
                  helpService.showHelper(this.HELPER_GROUP_KEY,809,true);
                  break;
            }
            _loc3_++;
         }
      }
      
      private function alignHelpers(param1:Event = null) : void
      {
         var _loc2_:int = int(Math.max(970,display.stage.stageWidth));
         var _loc3_:int = int(Math.max(580,display.stage.stageHeight));
         this.battle.targetPoint = new Point(_loc2_ - 295,30);
         this.§dynamic set finally§.targetPoint = new Point(_loc2_ - 35,_loc3_ - 30);
         this.§0!i§.targetPoint = new Point(_loc2_ - 292,30);
         this.§do const return§.targetPoint = new Point(_loc2_ - 400,30);
         this.§]C§.targetPoint = new Point(_loc2_ - 320 + 90,30);
         this.friend.targetPoint = new Point(_loc2_ - 130,30);
         this.email.targetPoint = new Point(_loc2_ - 110,30);
      }
      
      public function §break const do§() : void
      {
         this.§'!u§.visible = true;
      }
      
      public function §%F§() : void
      {
         this.§'!u§.visible = false;
      }
   }
}

