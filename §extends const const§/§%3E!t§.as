package §extends const const§
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
   import alternativa.tanks.battle.events.§if var function§;
   import alternativa.tanks.battle.events.§implements set const§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.gui.battle.BattleFinishTeamNotification;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.utils.removeDisplayObject;
   import §dynamic var else§.§>S§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import forms.ChangeTeamAlert;
   import §import const static§.§9%§;
   import §import const static§.§]!!§;
   import §in var else§.§,!<§;
   import §override const continue§.§1"E§;
   import §override const continue§.§finally if§;
   import §override const continue§.§true for import§;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import projects.tanks.client.battleservice.model.statistics.§"W§;
   import projects.tanks.client.battleservice.model.statistics.§^!`§;
   import projects.tanks.client.battleservice.model.statistics.§var set do§;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.flash.commons.services.serverhalt.IServerHaltService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   
   public class §>!t§ extends §9%§ implements §]!!§, ObjectLoadListener, ObjectLoadPostListener, ObjectUnloadListener, §true for import§, §override const do§, §1"E§
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
      
      private var battleActive:Boolean;
      
      private var §^!F§:§>S§;
      
      private var §7!^§:Vector.<§1""§>;
      
      private var §4!s§:Vector.<§1""§>;
      
      private var §4!O§:Dictionary;
      
      private var §dynamic with§:§while var const§;
      
      private var §?"C§:§while var const§;
      
      private var scoreRed:int;
      
      private var scoreBlue:int;
      
      private var §for for null§:int;
      
      public function §>!t§()
      {
         super();
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§if var function§,this.§get set catch§);
         this.§'K§.§import var get§(§implements set const§,this.§7"+§);
      }
      
      private static function §5Y§(param1:§while var const§) : void
      {
         var _loc2_:ChangeTeamAlert = new ChangeTeamAlert(3,param1 == §while var const§.RED ? int(ChangeTeamAlert.RED) : int(ChangeTeamAlert.BLUE));
         _loc2_.x = display.stage.stageWidth - _loc2_.width >> 1;
         _loc2_.y = display.stage.stageHeight - _loc2_.height >> 1;
         §<!x§.§2K§().addChild(_loc2_);
      }
      
      private static function §;!9§(param1:Vector.<§"W§>, param2:Vector.<§"W§>) : Dictionary
      {
         var _loc3_:§"W§ = null;
         var _loc4_:§"W§ = null;
         var _loc5_:§9!n§ = null;
         var _loc6_:Dictionary = new Dictionary();
         for each(_loc3_ in param1)
         {
            _loc6_[_loc3_.user] = §package var include§.§?J§(_loc3_,§while var const§.RED);
         }
         for each(_loc4_ in param2)
         {
            _loc6_[_loc4_.user] = §package var include§.§?J§(_loc4_,§while var const§.BLUE);
         }
         for each(_loc5_ in _loc6_)
         {
            _loc5_.loaded = true;
         }
         return _loc6_;
      }
      
      private static function §for for false§(param1:Vector.<§1""§>, param2:§while var const§) : void
      {
         var _loc3_:§1""§ = null;
         var _loc4_:int = int(param1.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1[_loc5_];
            if(_loc3_ == null)
            {
               break;
            }
            _loc3_.teamType = param2;
            _loc5_++;
         }
      }
      
      private function §get set catch§(param1:§if var function§) : void
      {
         if(param1.tank.tankData.userName == userPropertiesService.userId)
         {
            if(param1.tank.tankData.teamType != this.§?"C§)
            {
               this.§?"C§ = param1.tank.tankData.teamType;
               §5Y§(this.§?"C§);
            }
         }
      }
      
      private function §7"+§(param1:§implements set const§) : void
      {
         var _loc2_:§1""§ = this.§?y§(param1.tank.tankData.userName);
         _loc2_.loaded = true;
         this.§^!F§.§1o§(_loc2_);
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded() : void
      {
         this.§?"C§ = §while var const§.NONE;
         this.§4!O§ = §;!9§(getInitParam().§8!o§,getInitParam().§#!U§);
         this.§for for null§ = getInitParam().§8!o§.length + getInitParam().§#!U§.length;
         this.§7!^§ = §package var include§.§=h§(this.§4!O§,getInitParam().§8!o§);
         this.§4!s§ = §package var include§.§=h§(this.§4!O§,getInitParam().§#!U§);
         var _loc1_:§finally if§ = §finally if§(OSGi.getInstance().getService(§#"K§));
         this.§^!F§ = new §>S§(_loc1_.getBattleName(),true);
         this.§^!F§.addEventListener(§include true§.EXIT,this.§null for native§);
         this.§^!F§.addEventListener(§include true§.CONTINUE,this.§break set use§);
         §<!x§.§break set import§().addChild(this.§^!F§);
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost() : void
      {
         this.battleActive = true;
         this.changeTeamScore(§while var const§.RED,getInitParam().redScore);
         this.changeTeamScore(§while var const§.BLUE,getInitParam().blueScore);
         this.§?"!§();
         this.§'K§.§""'§();
         display.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         display.stage.addEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
         display.stage.addEventListener(Event.DEACTIVATE,this.§switch final§);
      }
      
      private function §?"!§() : void
      {
         var _loc1_:§1""§ = this.§?y§(userPropertiesService.userId);
         if(_loc1_ != null)
         {
            this.§dynamic with§ = _loc1_.teamType;
         }
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.TAB && !§while var false§.§3!'§())
         {
            this.§false set set§();
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
      
      private function §false set set§() : void
      {
         if(this.battleActive)
         {
            this.§^!F§.§do case§(false,userPropertiesService.userId,this.§7!^§,this.§4!s§,false,0,this.§dynamic with§);
         }
      }
      
      private function §false function§() : void
      {
         if(this.battleActive)
         {
            this.§^!F§.hide();
         }
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
         this.§7!^§ = null;
         this.§4!s§ = null;
         this.§4!O§ = null;
         this.§?"C§ = null;
         this.§for for null§ = 0;
      }
      
      [Obfuscation(rename="false")]
      public function changeTeamScore(param1:§while var const§, param2:int) : void
      {
         if(param1 == §while var const§.RED)
         {
            this.scoreRed = param2;
         }
         if(param1 == §while var const§.BLUE)
         {
            this.scoreBlue = param2;
         }
         var _loc3_:§finally if§ = §finally if§(OSGi.getInstance().getService(§#"K§));
         _loc3_.changeTeamScore(param1,param2);
      }
      
      [Obfuscation(rename="false")]
      public function userConnect(param1:String, param2:Vector.<§"W§>, param3:§while var const§) : void
      {
         var _loc4_:§"W§ = §package var include§.§<f§(param1,param2);
         this.§4!O§[param1] = §package var include§.§?J§(_loc4_,param3);
         ++this.§for for null§;
         if(param3 == §while var const§.RED)
         {
            this.§7!^§ = §package var include§.§=h§(this.§4!O§,param2);
            if(this.battleActive)
            {
               this.§^!F§.§"k§(this.§7!^§,param3);
            }
         }
         if(param3 == §while var const§.BLUE)
         {
            this.§4!s§ = §package var include§.§=h§(this.§4!O§,param2);
            if(this.battleActive)
            {
               this.§^!F§.§"k§(this.§4!s§,param3);
            }
         }
      }
      
      [Obfuscation(rename="false")]
      public function §package var const§(param1:String) : void
      {
         var _loc2_:§9!n§ = this.§4!O§[param1];
         var _loc3_:§finally if§ = §finally if§(OSGi.getInstance().getService(§#"K§));
         _loc3_.§package var const§(_loc2_.getShortUserInfo());
         if(this.battleActive)
         {
            this.§^!F§.§class var get§(param1,_loc2_.teamType);
         }
         if(_loc2_.teamType == §while var const§.RED)
         {
            this.§7!^§ = §package var include§.§try while§(this.§7!^§,param1);
         }
         if(_loc2_.teamType == §while var const§.BLUE)
         {
            this.§4!s§ = §package var include§.§try while§(this.§4!s§,param1);
         }
         delete this.§4!O§[param1];
         --this.§for for null§;
      }
      
      [Obfuscation(rename="false")]
      public function §,g§(param1:§var set do§, param2:§while var const§) : void
      {
         var _loc3_:§1""§ = null;
         if(param2 == §while var const§.RED)
         {
            _loc3_ = §package var include§.§,g§(this.§7!^§,param1);
         }
         if(param2 == §while var const§.BLUE)
         {
            _loc3_ = §package var include§.§,g§(this.§4!s§,param1);
         }
         var _loc4_:§finally if§ = §finally if§(OSGi.getInstance().getService(§#"K§));
         _loc4_.updateUserKills(param1.user,param1.kills);
         this.§^!F§.§1o§(_loc3_);
      }
      
      [Obfuscation(rename="false")]
      public function §&">§(param1:Vector.<§var set do§>, param2:§while var const§) : void
      {
         if(param2 == §while var const§.RED)
         {
            this.§7!^§ = §package var include§.§&">§(this.§4!O§,param1);
            this.§^!F§.§"k§(this.§7!^§,param2);
         }
         if(param2 == §while var const§.BLUE)
         {
            this.§4!s§ = §package var include§.§&">§(this.§4!O§,param1);
            this.§^!F§.§"k§(this.§4!s§,param2);
         }
      }
      
      [Obfuscation(rename="false")]
      public function §5!`§(param1:Vector.<§var set do§>, param2:Vector.<§var set do§>) : void
      {
         this.§7!^§ = §package var include§.§&">§(this.§4!O§,param1);
         this.§4!s§ = §package var include§.§&">§(this.§4!O§,param2);
         §for for false§(this.§7!^§,§while var const§.RED);
         §for for false§(this.§4!s§,§while var const§.BLUE);
         this.§?"!§();
         this.§^!F§.§"k§(this.§7!^§,§while var const§.RED);
         this.§^!F§.§"k§(this.§4!s§,§while var const§.BLUE);
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
      
      private function §?y§(param1:String) : §1""§
      {
         var _loc2_:§1""§ = §package var include§.§5'§(this.§7!^§,param1);
         if(_loc2_ == null)
         {
            _loc2_ = §package var include§.§5'§(this.§4!s§,param1);
         }
         return _loc2_;
      }
      
      public function §0!$§(param1:String, param2:Boolean) : void
      {
         var _loc3_:§1""§ = this.§?y§(param1);
         if(_loc3_ != null)
         {
            _loc3_.suspicious = param2;
            this.§^!F§.§1o§(_loc3_);
         }
      }
      
      public function §"!f§(param1:String, param2:int) : void
      {
         var _loc3_:§1""§ = this.§?y§(param1);
         _loc3_.rank = param2;
         this.§^!F§.§1o§(_loc3_);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function roundStart() : void
      {
         this.battleActive = true;
         this.§^!F§.hide();
         this.changeTeamScore(§while var const§.RED,0);
         this.changeTeamScore(§while var const§.BLUE,0);
      }
      
      public function §&"@§() : void
      {
         this.battleActive = true;
         this.§^!F§.hide();
      }
      
      public function roundFinish(param1:Boolean, param2:Boolean, param3:int, param4:Vector.<§^!`§>, param5:int, param6:int) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         this.battleActive = false;
         this.§^!F§.hide();
         §package var include§.§%-§(this.§7!^§,param4,param5);
         §package var include§.§%-§(this.§4!s§,param4,param5);
         if(param2)
         {
            this.§^!F§.§do case§(param1,userPropertiesService.userId,this.§7!^§,this.§4!s§,true,§continue for catch§.isServerHalt ? int(-1) : int(param3),this.§dynamic with§);
         }
         if(param2 && lobbyLayoutService.isWindowOpenOverBattle() && !battleInfoService.isSpectatorMode())
         {
            _loc7_ = §package var include§.§,9§(userPropertiesService.userId,param4);
            _loc8_ = 0;
            if(premiumService.hasPremium())
            {
               _loc8_ += §package var include§.§break const const§(_loc7_,param5);
            }
            notificationService.addNotification(new BattleFinishTeamNotification(this.§<!R§(),this.§while const dynamic§(),this.§`!u§(),this.§throw var false§(),_loc7_,_loc8_));
         }
      }
      
      private function §<!R§() : Boolean
      {
         if(this.§dynamic with§ == §while var const§.RED)
         {
            return this.scoreRed > this.scoreBlue;
         }
         if(this.§dynamic with§ == §while var const§.BLUE)
         {
            return this.scoreBlue > this.scoreRed;
         }
         return false;
      }
      
      private function §while const dynamic§() : Boolean
      {
         if(this.§dynamic with§ == §while var const§.RED)
         {
            return this.scoreBlue > this.scoreRed;
         }
         if(this.§dynamic with§ == §while var const§.BLUE)
         {
            return this.scoreRed > this.scoreBlue;
         }
         return false;
      }
      
      private function §throw var false§() : int
      {
         if(this.§dynamic with§ == §while var const§.RED)
         {
            return this.§7!^§.length;
         }
         if(this.§dynamic with§ == §while var const§.BLUE)
         {
            return this.§4!s§.length;
         }
         return 0;
      }
      
      private function §`!u§() : int
      {
         var _loc1_:int = 0;
         if(this.§dynamic with§ == §while var const§.RED)
         {
            _loc1_ = §package var include§.§7!8§(this.§7!^§,userPropertiesService.userId);
         }
         else if(this.§dynamic with§ == §while var const§.BLUE)
         {
            _loc1_ = §package var include§.§7!8§(this.§4!s§,userPropertiesService.userId);
         }
         return _loc1_ + 1;
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
      
      public function getUsersCount() : int
      {
         return this.§for for null§;
      }
   }
}

