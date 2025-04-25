package §0Y§
{
   import §%0§.§'!s§;
   import §0"[§.§default set false§;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.model.info.§final const with§;
   import alternativa.tanks.model.info.§var const get§;
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import alternativa.tanks.tracker.ITrackerService;
   import alternativa.tanks.view.battleinfo.BattleInfoViewEvent;
   import alternativa.tanks.view.battleinfo.dm.BattleInfoDmParams;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import projects.tanks.client.battleselect.model.info.§"!;§;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.AlertServiceEvent;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.alertservices.IAlertService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   import §super for switch§.§<" §;
   import §super for switch§.§switch for finally§;
   
   public class BattleDmInfoModel extends §switch for finally§ implements §<" §, IObjectLoadListener, ObjectUnloadListener
   {
      [Inject]
      public static var battleInfoFormService:IBattleInfoFormService;
      
      [Inject]
      public static var trackerService:ITrackerService;
      
      [Inject]
      public static var resourceRegistry:ResourceRegistry;
      
      [Inject]
      public static var §!!h§:BattleFormatUtil;
      
      [Inject]
      public static var alertService:IAlertService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      private var §+!#§:ServerFightCommandAlreadySentFlag;
      
      private var §?V§:Boolean = false;
      
      public function BattleDmInfoModel()
      {
         super();
         this.§+!#§ = new ServerFightCommandAlreadySentFlag();
      }
      
      public function addUser(param1:BattleInfoUser) : void
      {
         battleInfoFormService.§#3§(param1);
      }
      
      public function §?a§() : void
      {
         battleInfoFormService.§^"]§();
      }
      
      public function objectLoaded() : void
      {
      }
      
      public function objectLoadedPost() : void
      {
         var _loc1_:§"!;§ = §var const get§(object.adapt(§var const get§)).getConstructor();
         var _loc2_:BattleInfoDmParams = new BattleInfoDmParams();
         _loc2_.users = getInitParam().users;
         _loc2_.battleMode = _loc1_.battleMode;
         _loc2_.battleName = _loc1_.name;
         _loc2_.previewResource = §var const get§(object.adapt(§var const get§)).getPreviewResource();
         _loc2_.battleItemId = _loc1_.itemId;
         var _loc3_:String = "battle/" + _loc1_.itemId;
         var _loc4_:String = §final const with§.§use const true§();
         _loc2_.battleUrl = (_loc4_ + "#/" + _loc3_).replace(/((.+)(\?.*)(#.*))/gi,"$2$4");
         _loc2_.clanLink = §default set false§(_loc1_.map.adapt(§default set false§)).getClanLink();
         _loc2_.clanName = §default set false§(_loc1_.map.adapt(§default set false§)).getClanName();
         _loc2_.scoreLimit = _loc1_.§2"=§.scoreLimit;
         _loc2_.timeLimitInSec = _loc1_.§2"=§.timeLimitInSec;
         _loc2_.timeLeftInSec = _loc1_.timeLeftInSec;
         _loc2_.maxRank = _loc1_.rankRange.max;
         _loc2_.maxPeopleCount = _loc1_.maxPeopleCount;
         _loc2_.minRank = _loc1_.rankRange.min;
         _loc2_.proBattle = _loc1_.proBattle;
         _loc2_.noSupplies = _loc1_.withoutSupplies;
         _loc2_.spectatorEnabled = _loc1_.spectator;
         _loc2_.withoutBonuses = _loc1_.withoutBonuses;
         _loc2_.withoutCrystals = _loc1_.withoutCrystals;
         _loc2_.proBattleEnterPrice = §'!s§(object.adapt(§'!s§)).getEnterPrice();
         _loc2_.noSuppliesTimeLeftInSec = §'!s§(object.adapt(§'!s§)).getTimeLeftInSec();
         _loc2_.roundStarted = _loc1_.roundStarted;
         _loc2_.userPaidNoSuppliesBattle = _loc1_.userPaidNoSuppliesBattle;
         _loc2_.upgradesDisabled = _loc1_.§class for throw§;
         _loc2_.reArmor = _loc1_.reArmor;
         _loc2_.§extends null§ = §!!h§.§extends null§(_loc1_.equipmentConstraintsMode,_loc1_.parkourMode);
         _loc2_.§2!c§ = §!!h§.§6"^§(_loc1_.equipmentConstraintsMode,_loc1_.parkourMode);
         battleInfoFormService.§break for use§(_loc2_);
         battleInfoFormService.addEventListener(BattleInfoViewEvent.ENTER_DM,getFunctionWrapper(this.onEnterDm));
      }
      
      public function objectUnloaded() : void
      {
         battleInfoFormService.removeEventListener(BattleInfoViewEvent.ENTER_DM,getFunctionWrapper(this.onEnterDm));
      }
      
      public function objectUnloadedPost() : void
      {
      }
      
      public function updateUserKills(param1:String, param2:int) : void
      {
         battleInfoFormService.updateUserScore(param1,param2);
      }
      
      private function onEnterDm(param1:BattleInfoViewEvent) : void
      {
         trackerService.trackEvent("battleList","StartDMBattle","");
         server.§0!i§();
      }
      
      public function §each for else§() : void
      {
         this.§9a§();
      }
      
      private function §&_§() : void
      {
         alertService.addEventListener(AlertServiceEvent.ALERT_BUTTON_PRESSED,getFunctionWrapper(this.§false const each§));
         alertService.showAlert(localeService.getText(TanksLocale.TEXT_BATTLE_ENTER_WARNING_PARKOUR),Vector.<String>([localeService.getText(TanksLocale.TEXT_BATTLE_ENTER_WARNING_PARKOUR_BUTTON_ENTER),localeService.getText(TanksLocale.TEXT_ALERT_ANSWER_CANCEL)]));
         this.§?V§ = true;
      }
      
      private function §false const each§(param1:AlertServiceEvent) : void
      {
         this.§?V§ = false;
         alertService.removeEventListener(AlertServiceEvent.ALERT_BUTTON_PRESSED,getFunctionWrapper(this.§false const each§));
         if(param1.typeButton == localeService.getText(TanksLocale.TEXT_BATTLE_ENTER_WARNING_PARKOUR_BUTTON_ENTER))
         {
            this.§use var with§();
         }
      }
      
      public function equipmentNotMatchConstraints() : void
      {
         this.§9a§();
         alertService.showAlert(localeService.getText(TanksLocale.TEXT_BATTLE_ENTER_ERROR_EQUIPMENT_NOT_MATCH_CONSTRAINTS),Vector.<String>([localeService.getText(TanksLocale.TEXT_CLOSE_LABEL)]));
      }
      
      private function §use var with§() : void
      {
         if(this.§finally set while§())
         {
            this.§@Y§();
            server.§0!i§();
         }
      }
      
      private function §@Y§() : void
      {
         putData(ServerFightCommandAlreadySentFlag,this.§+!#§);
      }
      
      private function §9a§() : void
      {
         clearData(ServerFightCommandAlreadySentFlag);
      }
      
      private function §finally set while§() : Boolean
      {
         return getData(ServerFightCommandAlreadySentFlag) == null;
      }
   }
}

class ServerFightCommandAlreadySentFlag
{
   public function ServerFightCommandAlreadySentFlag()
   {
      super();
   }
}
