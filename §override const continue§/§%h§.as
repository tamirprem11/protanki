package §override const continue§
{
   import §&S§.§in const implements§;
   import §+!Q§.§?!T§;
   import §1J§.§%!d§;
   import §1J§.§true case§;
   import §7"G§.§continue var include§;
   import §8=§.§>X§;
   import §8=§.MessageColor;
   import §8=§.§^!$§;
   import §9!q§.§ -§;
   import §],§.§while var const§;
   import alternativa.model.IObjectLoadListener;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.help.IHelpService;
   import alternativa.tanks.locale.constants.TextConst;
   import alternativa.tanks.models.battle.battlefield.§69§;
   import alternativa.tanks.models.battle.battlefield.§;0§;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import alternativa.tanks.models.battle.gui.chat.§return const true§;
   import alternativa.tanks.models.battle.gui.gui.statistics.field.§true const use§;
   import alternativa.tanks.models.battlefield.§use for default§;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.utils.removeDisplayObject;
   import §continue var do§.§native const set§;
   import §default set with§.§0"8§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import forms.FocusWarningWindow;
   import §import var true§.§9!d§;
   import §import var true§.§extends for true§;
   import §include var super§.§switch switch§;
   import projects.tanks.client.battleservice.model.statistics.§^!`§;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   import §static var break§.§;!v§;
   import §static var break§.§<!=§;
   import §static var break§.§function else§;
   import §throw const null§.§catch for get§;
   
   public class §%h§ extends §;!v§ implements §function else§, §finally if§, IObjectLoadListener, §#"K§, §do for switch§
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var settingsService:ISettingsService;
      
      [Inject]
      public static var storageService:IStorageService;
      
      [Inject]
      public static var userPropertiesService:IUserPropertiesService;
      
      [Inject]
      public static var helpService:IHelpService;
      
      [Inject]
      public static var §<!x§:BattleGUIService;
      
      [Inject]
      public static var §!!h§:BattleFormatUtil;
      
      [Inject]
      public static var display:IDisplay;
      
      private var §null get§:IModelService;
      
      private var §^"F§:Boolean;
      
      private var §%!Q§:§continue var include§;
      
      private var §#"X§:§switch switch§;
      
      private var §static const continue§:§ -§;
      
      private var §native for in§:§0"8§;
      
      private var §continue include§:Vector.<§use for default§> = new Vector.<§use for default§>();
      
      private var battleName:String;
      
      private var §if set false§:String;
      
      private var §include set with§:String;
      
      private var §with set if§:FocusWarningWindow;
      
      private var §[!L§:§+"!§;
      
      private var §else false§:§1§;
      
      private var controlsHelpSupport:§8%§;
      
      private var §;@§:§@[§;
      
      private var §class const for§:§catch for get§;
      
      private var §;!q§:§%!d§;
      
      private var §each const function§:§finally set with§;
      
      private var § !-§:§4!D§;
      
      private var §8"U§:§with set import§;
      
      private var parkourMode:Boolean;
      
      private var equipmentConstraintsMode:§in const implements§;
      
      public function §%h§()
      {
         super();
         this.§native for in§ = new §0"8§();
         §?!T§.init(500);
         OSGi.getInstance().registerService(§#"K§,this);
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         this.§static const continue§.update(param2);
      }
      
      public function getBattleName() : String
      {
         var _loc1_:String = this.battleName;
         var _loc2_:§in const implements§ = this.equipmentConstraintsMode;
         var _loc3_:Boolean = this.parkourMode;
         if(§!!h§.§extends null§(_loc2_,_loc3_))
         {
            _loc1_ = _loc1_ + " " + §!!h§.§6"^§(_loc2_,_loc3_);
         }
         return _loc1_;
      }
      
      public function userConnect(param1:§true case§) : void
      {
         this.§#"X§.addMessage(param1,this.§if set false§);
      }
      
      public function §package var const§(param1:§true case§) : void
      {
         this.§#"X§.addMessage(param1,this.§include set with§);
      }
      
      public function updateUserKills(param1:String, param2:int) : void
      {
         this.§%!Q§.updateUserKills(param1,param2);
      }
      
      public function changeTeamScore(param1:§while var const§, param2:int) : void
      {
         this.§%!Q§.§function var override§(param1,param2);
      }
      
      public function §for for continue§(param1:uint, param2:String) : void
      {
         this.§static const continue§.addMessage(param1,param2);
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
         this.§each const function§ = new §finally set with§();
         this.§ !-§ = new §4!D§();
         this.§class const for§ = new §catch for get§();
         display.stage.addEventListener(Event.RESIZE,this.onResize);
         this.onResize(null);
      }
      
      public function §static var true§(param1:§true const use§) : void
      {
         if(this.§;!q§ == null)
         {
            this.§;!q§ = new §%!d§();
         }
         this.§;!q§.§static var true§(param1);
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         display.stage.removeEventListener(Event.RESIZE,this.onResize);
         removeDisplayObject(this.§%!Q§);
         removeDisplayObject(this.§#"X§);
         removeDisplayObject(this.§native for in§);
         this.§%!Q§ = null;
         battleService.§try var final§().§<!3§(this);
         if(this.§else false§ != null)
         {
            this.§else false§.close();
         }
         if(this.controlsHelpSupport != null)
         {
            this.controlsHelpSupport.close();
         }
         this.§ !-§.close();
         this.§each const function§.close();
         this.§;@§.close();
         this.§class const for§.close();
         if(this.§[!L§ != null)
         {
            this.§[!L§.close();
         }
         this.§[!L§ = null;
         this.§#"X§ = null;
         this.§static const continue§.removeFromParent();
         this.§static const continue§ = null;
         this.§;!q§.destroy();
         this.§;!q§ = null;
         this.§8"U§.close();
      }
      
      public function deactivate() : void
      {
      }
      
      public function activate() : void
      {
      }
      
      public function initObject(param1:ClientObject, param2:Object) : void
      {
         this.battleName = param2.battleName;
         this.equipmentConstraintsMode = param2.equipmentConstraintsMode;
         this.parkourMode = param2.parkourMode;
         this.§if set false§ = localeService.getText(TextConst.BATTLE_PLAYER_JOINED);
         this.§include set with§ = localeService.getText(TextConst.BATTLE_PLAYER_LEFT);
         var _loc3_:§with set import§ = new §with set import§(null);
         this.§8"U§ = _loc3_;
      }
      
      public function init(param1:ClientObject, param2:§<!=§) : void
      {
         var _loc4_:§69§ = null;
         var _loc5_:§>X§ = null;
         var _loc6_:§extends for true§ = null;
         this.§^"F§ = param2.§^"F§;
         this.§;@§ = new §@[§(this.§native for in§);
         var _loc3_:DisplayObjectContainer = §<!x§.§2K§();
         if(this.§^"F§)
         {
            _loc5_ = §>X§(OSGi.getInstance().getService(§^!$§));
            _loc6_ = §extends for true§(OSGi.getInstance().getService(§9!d§));
            _loc4_ = _loc5_ != null ? §69§.CTF : (_loc6_ != null ? §69§.§,M§ : §69§.TDM);
         }
         else
         {
            _loc4_ = §69§.DM;
         }
         this.§%!Q§ = new §continue var include§(userPropertiesService.userName,param2.fund,new §native const set§(param2.scoreLimit,param2.timeLimit * 60),param2.§'c§,_loc4_,true);
         if(param2.§'c§ > 0)
         {
            this.§%!Q§.§6y§(param2.§'c§);
         }
         _loc3_.addChild(this.§%!Q§);
         if(this.§;!q§ == null)
         {
            this.§;!q§ = new §%!d§();
         }
         this.§;!q§.§get const each§(this.§%!Q§);
         this.§;!q§.init();
         this.§#"X§ = new §switch switch§();
         _loc3_.addChild(this.§#"X§);
         this.§static const continue§ = new § -§();
         _loc3_.addChild(this.§static const continue§);
         battleService.§try var final§().§finally var false§(this);
         if(settingsService.showFPS)
         {
            _loc3_.addChild(this.§native for in§);
         }
         if(§;0§(battleService).spectatorMode)
         {
            this.§var const null§();
         }
         else
         {
            this.§else false§ = new §1§();
            this.controlsHelpSupport = new §8%§();
         }
         this.objectLoaded(param1);
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost(param1:Vector.<String>) : void
      {
         this.markSuspectedUsers(param1);
      }
      
      private function §var const null§() : void
      {
         var _loc1_:§return const true§ = §return const true§(OSGi.getInstance().getService(§return const true§));
         this.§[!L§ = new §+"!§(_loc1_.§package for dynamic§(),this.§#"X§,this.§static const continue§,this.§%!Q§,this.§native for in§);
      }
      
      private function markSuspectedUsers(param1:Vector.<String>) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.§override const use§(_loc2_,true);
         }
      }
      
      public function §switch for while§(param1:String) : void
      {
         this.§#"X§.addMessage(null,param1,null);
      }
      
      [Obfuscation(rename="false")]
      public function fundChange(param1:int) : void
      {
         this.§%!Q§.§final extends§(param1);
      }
      
      [Obfuscation(rename="false")]
      public function roundStart(param1:int, param2:Boolean) : void
      {
         this.§%!Q§.§include const import§(param2);
         if(param1 > 0)
         {
            this.§%!Q§.§6y§(param1);
         }
         var _loc3_:§1"E§ = §1"E§(OSGi.getInstance().getService(§true for import§));
         _loc3_.roundStart();
      }
      
      [Obfuscation(rename="false")]
      public function roundFinish(param1:Boolean, param2:Vector.<§^!`§>, param3:int) : void
      {
         var _loc4_:§1"E§ = §1"E§(OSGi.getInstance().getService(§true for import§));
         _loc4_.roundFinish(false,param1,param3,param2,100,0);
         this.§%!Q§.§get const const§();
      }
      
      public function logUserAction(param1:String, param2:String, param3:String = null) : void
      {
         var _loc4_:§true for import§ = §true for import§(OSGi.getInstance().getService(§true for import§));
         var _loc5_:§true case§ = _loc4_.getShortUserInfo(param1);
         var _loc6_:§true case§ = param3 == null ? null : _loc4_.getShortUserInfo(param3);
         this.§#"X§.addMessage(_loc5_,param2,_loc6_);
      }
      
      public function §-"W§(param1:String, param2:String) : void
      {
         var _loc3_:§true for import§ = §true for import§(OSGi.getInstance().getService(§true for import§));
         var _loc4_:§true case§ = _loc3_.getShortUserInfo(param1);
         this.§#"X§.addMessage(_loc4_,param2);
      }
      
      public function §in const if§(param1:String, param2:String = null) : void
      {
         this.§#"X§.addMessage(null,param1,null);
      }
      
      public function §package var try§(param1:§while var const§) : void
      {
         this.§%!Q§.§package var try§(param1);
      }
      
      public function §<"7§(param1:§while var const§) : void
      {
         this.§%!Q§.§<"7§(param1);
      }
      
      public function §final for throw§(param1:§while var const§) : void
      {
         if(this.§%!Q§ != null)
         {
            this.§%!Q§.§final for throw§(param1);
         }
      }
      
      [Obfuscation(rename="false")]
      public function onRankChanged(param1:String, param2:int) : void
      {
         var _loc3_:§true for import§ = §true for import§(OSGi.getInstance().getService(§true for import§));
         _loc3_.§"!f§(param1,param2);
         if(§7!n§.§extends set var§ != null && param1 == §7!n§.§extends set var§.user.id)
         {
            §1§(this.§else false§).close();
         }
         var _loc4_:§with set import§ = this.battleUserInfoService();
         _loc4_.§^"h§(param1,param2);
      }
      
      private function onResize(param1:Event) : void
      {
         var _loc2_:int = display.stage.stageWidth;
         var _loc3_:int = display.stage.stageHeight;
         if(this.§static const continue§ != null)
         {
            this.§static const continue§.x = 0.5 * _loc2_;
            this.§static const continue§.y = 40;
         }
      }
      
      private function §override const use§(param1:String, param2:Boolean) : void
      {
         OSGi.clientLog.log("vote","set user suspicious nick %1 bool %2",param1,param2);
         var _loc3_:§true for import§ = §true for import§(OSGi.getInstance().getService(§true for import§));
         _loc3_.§0!$§(param1,param2);
         var _loc4_:§with set import§ = this.battleUserInfoService();
         _loc4_.§if for while§(param1,param2);
      }
      
      [Obfuscation(rename="false")]
      public function statusProbablyCheaterChanged(param1:String, param2:Boolean) : void
      {
         this.§override const use§(param1,param2);
      }
      
      [Obfuscation(rename="false")]
      public function onComplaintConfirmed() : void
      {
         this.§static const continue§.addMessage(MessageColor.YELLOW,localeService.getText(TextConst.TEXT_TEAM_KICK_COMPLAINT_SENT));
      }
      
      public function §const implements§(param1:int) : void
      {
         this.§%!Q§.§const implements§(param1);
      }
      
      public function §>!D§() : void
      {
         this.§%!Q§.§>!D§();
      }
      
      private function battleUserInfoService() : §with set import§
      {
         return §with set import§(this.§8"U§);
      }
      
      public function §static set while§(param1:int) : void
      {
         this.§static const continue§.§true var class§(MessageColor.§13§,localeService.getText(TanksLocale.TEXT_TOURNAMENT_BATTLE_TRAINING_LABEL),param1 * 1000);
      }
      
      public function §use set throw§(param1:int) : void
      {
         this.§static const continue§.§true var class§(MessageColor.RED,localeService.getText(TanksLocale.TEXT_TOURNAMENT_BATTLE_STARTING_LABEL),param1 * 1000);
      }
      
      public function getTimeLeftInSec() : int
      {
         return 10000;
      }
   }
}

