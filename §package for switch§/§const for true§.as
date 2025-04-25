package §package for switch§
{
   import §!4§.§include true§;
   import §1J§.§1""§;
   import §1J§.§9!n§;
   import §1J§.§package var include§;
   import §1J§.§true case§;
   import §],§.§while var const§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§implements set const§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.gui.battle.BattleFinishDmNotification;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.utils.removeDisplayObject;
   import §dynamic var else§.§>S§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import §in var else§.§,!<§;
   import §override const continue§.§1"E§;
   import §override const continue§.§finally if§;
   import §override const continue§.§true for import§;
   import §package for§.§7l§;
   import §package for§.§with for for§;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import projects.tanks.client.battleservice.model.statistics.§"W§;
   import projects.tanks.client.battleservice.model.statistics.§^!`§;
   import projects.tanks.client.battleservice.model.statistics.§var set do§;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.flash.commons.services.serverhalt.IServerHaltService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class §const for true§ extends §with for for§ implements §7l§, IObjectLoadListener, §true for import§, §override const do§, §1"E§
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var §continue for catch§:IServerHaltService;
      
      [Inject]
      public static var userPropertiesService:IUserPropertiesService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var §<!x§:BattleGUIService;
      
      [Inject]
      public static var §while var false§:BattleInputService;
      
      [Inject]
      public static var notificationService:INotificationService;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var premiumService:PremiumService;
      
      private var §'K§:§return const if§;
      
      private var §^!F§:§>S§;
      
      private var _battleActive:Boolean;
      
      private var §4!O§:Dictionary;
      
      private var §each set var§:Vector.<§1""§>;
      
      private var §for for null§:int;
      
      public function §const for true§()
      {
         super();
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§implements set const§,this.§7"+§);
      }
      
      private static function §;!9§(param1:Vector.<§"W§>) : Dictionary
      {
         var _loc2_:§9!n§ = null;
         var _loc3_:§"W§ = null;
         var _loc4_:§9!n§ = null;
         var _loc5_:Dictionary = new Dictionary();
         var _loc6_:int = int(param1.length);
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc3_ = param1[_loc7_];
            _loc4_ = §package var include§.§?J§(_loc3_,§while var const§.NONE);
            _loc5_[_loc3_.user] = _loc4_;
            _loc7_++;
         }
         for each(_loc2_ in _loc5_)
         {
            _loc2_.loaded = true;
         }
         return _loc5_;
      }
      
      private function §7"+§(param1:§implements set const§) : void
      {
         var _loc2_:§1""§ = this.§?y§(param1.tank.tankData.userName);
         _loc2_.loaded = true;
         this.§^!F§.§get const true§(_loc2_);
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded() : void
      {
         this.§4!O§ = §;!9§(getInitParam().§use package§);
         this.§each set var§ = §package var include§.§=h§(this.§4!O§,getInitParam().§use package§);
         this.§for for null§ = getInitParam().§use package§.length;
         var _loc1_:§finally if§ = §finally if§(OSGi.getInstance().getService(§#"K§));
         this.§^!F§ = new §>S§(_loc1_.getBattleName(),false);
         this.§^!F§.addEventListener(§include true§.EXIT,this.§null for native§);
         this.§^!F§.addEventListener(§include true§.CONTINUE,this.§break set use§);
         §<!x§.§break set import§().addChild(this.§^!F§);
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost() : void
      {
         this.battleActive = true;
         this.§'K§.§""'§();
         display.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         display.stage.addEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
         display.stage.addEventListener(Event.DEACTIVATE,this.§switch final§);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.TAB && !§while var false§.§3!'§())
         {
            this.§false set set§();
         }
      }
      
      private function §false set set§() : void
      {
         if(this.battleActive)
         {
            this.§^!F§.§7!@§(false,false,userPropertiesService.userId,this.§each set var§,false,0);
         }
      }
      
      private function §false function§() : void
      {
         if(this.battleActive)
         {
            this.§^!F§.hide();
         }
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.TAB)
         {
            this.§false function§();
         }
      }
      
      private function §switch final§(param1:Event) : void
      {
         this.§false function§();
      }
      
      private function §null for native§(param1:§include true§) : void
      {
         if(!lobbyLayoutService.isSwitchInProgress())
         {
            if(!this.battleActive)
            {
               lobbyLayoutService.exitFromBattleWithoutNotify();
            }
            else
            {
               lobbyLayoutService.exitFromBattle();
            }
         }
      }
      
      private function §break set use§(param1:§include true§) : void
      {
         §,!<§(object.adapt(§,!<§)).continueBattle();
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded() : void
      {
         this.battleActive = false;
         this.§'K§.§const var false§();
         display.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         display.stage.removeEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
         display.stage.removeEventListener(Event.DEACTIVATE,this.§switch final§);
         this.§^!F§.hide();
         this.§^!F§.removeEventListener(§include true§.EXIT,this.§null for native§);
         this.§^!F§.removeEventListener(§include true§.CONTINUE,this.§break set use§);
         removeDisplayObject(this.§^!F§);
         this.§^!F§ = null;
         this.§4!O§.length = 0;
         this.§each set var§.length = 0;
         this.§each set var§ = null;
         this.§4!O§ = null;
         this.§for for null§ = 0;
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloadedPost() : void
      {
      }
      
      [Obfuscation(rename="false")]
      public function §,g§(param1:§var set do§) : void
      {
         var _loc2_:§1""§ = §package var include§.§,g§(this.§each set var§,param1);
         this.§^!F§.§get const true§(_loc2_);
         var _loc3_:§finally if§ = §finally if§(OSGi.getInstance().getService(§#"K§));
         _loc3_.updateUserKills(_loc2_.userId,_loc2_.kills);
      }
      
      [Obfuscation(rename="false")]
      public function §&">§(param1:Vector.<§var set do§>) : void
      {
         this.§each set var§ = §package var include§.§&">§(this.§4!O§,param1);
         var _loc2_:§finally if§ = §finally if§(OSGi.getInstance().getService(§#"K§));
         var _loc3_:int = int(param1.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_.updateUserKills(param1[_loc4_].user,param1[_loc4_].kills);
            _loc4_++;
         }
         this.§^!F§.§for const continue§(this.§each set var§);
      }
      
      [Obfuscation(rename="false")]
      public function userConnect(param1:String, param2:Vector.<§"W§>) : void
      {
         var _loc3_:§"W§ = §package var include§.§<f§(param1,param2);
         this.§4!O§[param1] = §package var include§.§?J§(_loc3_,§while var const§.NONE);
         ++this.§for for null§;
         this.§each set var§ = §package var include§.§=h§(this.§4!O§,param2);
         if(this.battleActive)
         {
            this.§^!F§.§for const continue§(this.§each set var§);
         }
      }
      
      [Obfuscation(rename="false")]
      public function §package var const§(param1:String) : void
      {
         if(this.battleActive)
         {
            this.§^!F§.§class var get§(param1,§while var const§.NONE);
         }
         var _loc2_:§finally if§ = §finally if§(OSGi.getInstance().getService(§#"K§));
         var _loc3_:§9!n§ = this.§4!O§[param1];
         _loc2_.§package var const§(_loc3_.getShortUserInfo());
         delete this.§4!O§[param1];
         --this.§for for null§;
         this.§each set var§ = §package var include§.§try while§(this.§each set var§,param1);
      }
      
      public function getShortUserInfo(param1:String) : §true case§
      {
         var _loc2_:§9!n§ = this.§4!O§[param1];
         if(_loc2_ != null)
         {
            return _loc2_.getShortUserInfo();
         }
         return null;
      }
      
      public function isLoaded(param1:String) : Boolean
      {
         var _loc2_:§9!n§ = this.§4!O§[param1];
         return _loc2_ != null && _loc2_.loaded;
      }
      
      public function §0!$§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§1""§ = this.§?y§(param1);
         if(_loc3_ != null)
         {
            _loc3_.suspicious = param2;
            this.§^!F§.§get const true§(_loc3_);
         }
      }
      
      public function §"!f§(param1:String, param2:int) : void
      {
         var _loc3_:§1""§ = this.§?y§(param1);
         _loc3_.rank = param2;
         this.§^!F§.§get const true§(_loc3_);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function roundStart() : void
      {
         this.battleActive = true;
         this.§^!F§.hide();
      }
      
      public function §&"@§() : void
      {
         this.battleActive = false;
         this.§^!F§.hide();
      }
      
      public function roundFinish(param1:Boolean, param2:Boolean, param3:int, param4:Vector.<§^!`§>, param5:int, param6:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         this.battleActive = false;
         this.§^!F§.hide();
         §package var include§.§%-§(this.§each set var§,param4,param5);
         if(param2)
         {
            _loc7_ = param5 > 0;
            param3 = §continue for catch§.isServerHalt ? int(-1) : int(param3);
            this.§^!F§.§7!@§(param1,_loc7_,userPropertiesService.userId,this.§each set var§,true,param3);
            if(lobbyLayoutService.isWindowOpenOverBattle() && !battleInfoService.isSpectatorMode())
            {
               _loc8_ = §package var include§.§,9§(userPropertiesService.userId,param4);
               _loc9_ = 0;
               if(premiumService.hasPremium())
               {
                  _loc9_ += §package var include§.§break const const§(_loc8_,param5);
               }
               notificationService.addNotification(new BattleFinishDmNotification(this.§`!u§(),this.§each set var§.length,_loc8_,_loc9_));
            }
         }
      }
      
      private function §`!u§() : int
      {
         return §package var include§.§7!8§(this.§each set var§,userPropertiesService.userId) + 1;
      }
      
      private function §?y§(param1:String) : §1""§
      {
         return §package var include§.§5'§(this.§each set var§,param1);
      }
      
      public function getUsersCount() : int
      {
         return this.§for for null§;
      }
      
      private function get battleActive() : Boolean
      {
         return this._battleActive;
      }
      
      private function set battleActive(param1:Boolean) : void
      {
         this._battleActive = param1;
         battleInfoService.battleActive = param1;
      }
   }
}

