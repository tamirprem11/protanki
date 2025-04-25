package alternativa.tanks.models.battle.battlefield
{
   import §!"0§.§switch var try§;
   import §+"O§.§each var each§;
   import §8"W§.§each var function§;
   import §9"9§.§3"B§;
   import §9"9§.§=!t§;
   import §;",§.§>!8§;
   import §<"N§.§if continue§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.osgi.service.logging.Logger;
   import alternativa.physics.collision.types.AABB;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.§2"&§;
   import alternativa.tanks.battle.§="B§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.§-4§;
   import alternativa.tanks.battle.events.§;!&§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§do const static§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§package for null§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.battle.events.§set var override§;
   import alternativa.tanks.battle.§get var throw§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.battle.scene3d.§]!b§;
   import alternativa.tanks.bg.IBackgroundService;
   import alternativa.tanks.bonuses.Bonus;
   import alternativa.tanks.bonuses.BonusCache;
   import alternativa.tanks.camera.§8"M§;
   import alternativa.tanks.camera.§<n§;
   import alternativa.tanks.camera.§]!G§;
   import alternativa.tanks.gui.error.ErrorNotification;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.models.weapon.shared.§ !I§;
   import alternativa.tanks.models.weapon.shared.§4J§;
   import alternativa.tanks.models.weapon.shared.§^!u§;
   import alternativa.tanks.models.weapon.shared.§true set var§;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.SettingsServiceEvent;
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.battleinput.§null set with§;
   import alternativa.tanks.services.battlereadiness.BattleReadinessService;
   import alternativa.tanks.services.colortransform.§?!<§;
   import alternativa.tanks.services.colortransform.ColorTransformService;
   import alternativa.tanks.services.mipmapping.MipMappingService;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import alternativa.tanks.utils.DataValidationErrorEvent;
   import alternativa.types.Long;
   import alternativa.utils.DebugPanel;
   import alternativa.utils.TextureMaterialRegistry;
   import §catch const package§.§!!@§;
   import §catch const package§.§implements package§;
   import §catch const package§.§in set set§;
   import §class const catch§.§6!X§;
   import com.alternativaplatform.projects.tanks.client.models.battlefield.BattleBonus;
   import com.alternativaplatform.projects.tanks.client.models.battlefield.BattlefieldResources;
   import com.alternativaplatform.projects.tanks.client.models.battlefield.BattlefieldSoundScheme;
   import §dynamic package§.§throw const function§;
   import §else const case§.§]"'§;
   import §else for default§.§2"C§;
   import §false for catch§.§catch extends§;
   import §false for include§.§package continue§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.geom.Vector3D;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §import import§.§finally for false§;
   import §override const continue§.§true for import§;
   import §override const continue§.§with set import§;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.resource.types.SoundResource;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.battlefield.models.battle.battlefield.§0" §;
   import projects.tanks.client.battlefield.models.battle.battlefield.§2"L§;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.flash.resources.resource.MapResource;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §;0§ extends §0" § implements BattleService, §2"L§, ObjectLoadListener, ObjectUnloadListener, §override const do§
   {
      public static var §7u§:§package continue§;
      
      [Inject]
      public static var logService:LogService;
      
      [Inject]
      public static var storageService:IStorageService;
      
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var settings:ISettingsService;
      
      [Inject]
      public static var §dynamic var super§:IBackgroundService;
      
      [Inject]
      public static var §9!w§:MipMappingService;
      
      [Inject]
      public static var §true const function§:TextureMaterialRegistry;
      
      [Inject]
      public static var §9!c§:ColorTransformService;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var §switch for in§:BattleReadinessService;
      
      [Inject]
      public static var §while var false§:BattleInputService;
      
      [Inject]
      public static var §+!p§:BattleGUIService;
      
      [Inject]
      public static var lobbyLayoutService:ILobbyLayoutService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var §+!x§:TargetingInputManager;
      
      [Inject]
      public static var §2!a§:TargetingModeService;
      
      [Inject]
      public static var notificationService:INotificationService;
      
      [Inject]
      public static var §>!Y§:KeysBindingService;
      
      private static const §var class§:int = 60;
      
      private static const §,"J§:int = 3000;
      
      private static const §7"d§:int = 5000;
      
      private static const §get const try§:Vector3D = new Vector3D();
      
      private static const §!!f§:Vector3D = new Vector3D();
      
      private static const CHANNEL:String = "battle";
      
      private static const § u§:String = "battle2server";
      
      private const §const for set§:§if continue§ = new §if continue§();
      
      private var §&!X§:§="B§;
      
      private var §for var try§:DebugPanel;
      
      private const §each const switch§:§get const use§ = new §get const use§();
      
      private var §'K§:§return const if§;
      
      private var §if var implements§:§catch for const§;
      
      private var battleActive:Boolean;
      
      private var ambientSound:§6"#§;
      
      private var §=!h§:§2"&§;
      
      public var §each set import§:§function var default§;
      
      private var §[!H§:§-"Q§;
      
      private var §`!4§:Boolean;
      
      private var §2"c§:§ !I§;
      
      private const §import const import§:§true set var§ = new §each var each§();
      
      private var §#o§:§^!u§;
      
      private var §'!y§:§4J§;
      
      private var §!b§:§>!8§;
      
      private var §final const const§:§<n§;
      
      private var §static for static§:§]!G§;
      
      private var §3!A§:§8"M§;
      
      private var §="E§:§catch extends§;
      
      private var §default return§:Vector3 = new Vector3();
      
      private var §%+§:Vector3 = new Vector3();
      
      private var gui:§#"K§;
      
      public var spectatorMode:Boolean;
      
      public var §<I§:§switch var try§ = new §switch var try§();
      
      private var §1"S§:§super const throw§;
      
      private var collisionDetector:§throw const function§;
      
      private var §9!G§:§get var throw§;
      
      private var battleData:§class const switch§;
      
      private var §`"2§:§implements package§;
      
      private var §'n§:§,6§;
      
      private var logger:Logger;
      
      private var §=c§:Logger;
      
      private var §9s§:§get case§;
      
      private var §<!@§:§%U§;
      
      private var §#!2§:§!"#§;
      
      private var §"!F§:§each var function§;
      
      private var §<!Y§:Boolean;
      
      private var §final for else§:Boolean;
      
      private var §get var implements§:Boolean;
      
      private var mapId:Long;
      
      public function §;0§()
      {
         super();
         this.§=c§ = logService.getLogger(§ u§);
         this.logger = logService.getLogger(CHANNEL);
         this.§in for const§();
      }
      
      public static function §throw var extends§(param1:Vector3, param2:Vector3D) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.z = param1.z;
      }
      
      private function §in for const§() : void
      {
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§-4§,this.§ !§);
         this.§'K§.§import var get§(DataValidationErrorEvent,this.§?T§);
         this.§'K§.§""'§();
      }
      
      public function §catch include§() : §,6§
      {
         return this.§'n§;
      }
      
      public function §override var with§() : §="B§
      {
         return this.§&!X§;
      }
      
      public function §%!c§(param1:Event) : void
      {
      }
      
      public function §#"W§(param1:Event) : void
      {
      }
      
      private function §][§() : void
      {
         var _loc1_:Boolean = false;
         if(§switch for in§.isBattleReady())
         {
            _loc1_ = settings.muteSound;
            this.§9!G§.§`b§().§return case§(_loc1_);
            this.ambientSound.play(!_loc1_ && settings.bgSound);
         }
      }
      
      public function §native var set§(param1:Event) : void
      {
         this.§'n§.§7!h§(settings.showSkyBox);
         this.§][§();
         this.§return if§();
         this.§[!H§.§@!%§(settings.adaptiveFPS);
      }
      
      public function §return if§() : void
      {
         this.§'n§.§#!C§(settings.graphicsAutoQuality,this.mapId.toString());
         if(!settings.graphicsAutoQuality)
         {
            this.§'n§.§5!p§(settings.fog);
            this.§'n§.§<"5§(settings.shadows);
            this.§'n§.§?'§(settings.dynamicShadows);
            this.§'n§.§dynamic while§(settings.§1!-§);
            this.§'n§.§case set import§(settings.dust);
            this.§'n§.§while§(settings.ssao);
            this.§'n§.§3!D§(settings.dynamicLighting);
            this.§'n§.§set set with§(settings.antialiasing);
         }
         this.§'n§.§3!t§(true);
         §9!w§.setMipMapping(settings.mipMapping);
      }
      
      public function §while set import§(param1:BitmapData) : void
      {
         this.§'n§.§while set import§(param1);
      }
      
      public function §%T§() : §function var default§
      {
         return this.§each set import§;
      }
      
      public function initObject(param1:ClientObject, param2:Boolean, param3:§implements package§, param4:BattlefieldResources, param5:BattlefieldSoundScheme, param6:int, param7:String, param8:int, param9:String, param10:Boolean, param11:IGameObject, param12:Object) : void
      {
         var modelService:IModelService = null;
         var clientObject:ClientObject = param1;
         var battleActive:Boolean = param2;
         var battlemap:§implements package§ = param3;
         var battlefieldResources:BattlefieldResources = param4;
         var battlefieldSoundScheme:BattlefieldSoundScheme = param5;
         var idleKickPeriodMsec:int = param6;
         var mapDescriptorResourceId:String = param7;
         var respawnInvulnerabilityPeriodMsec:int = param8;
         var skyboxTextureResourceId:String = param9;
         var spectator:Boolean = param10;
         var battleObject:IGameObject = param11;
         var battleParameters:Object = param12;
         try
         {
            this.battleActive = battleActive;
            this.§`"2§ = battlemap;
            this.spectatorMode = spectator;
            this.§if var implements§ = OSGi.getInstance().getService(§finally const class§) as §catch for const§;
            modelService = IModelService(OSGi.getInstance().getService(IModelService));
            this.gui = OSGi.getInstance().getService(§#"K§) as §#"K§;
            this.§each set import§ = new §function var default§();
            this.§each set import§.bfObject = clientObject;
            this.§each set import§.§continue const native§ = display.contentLayer;
            this.§each set import§.§while for in§ = respawnInvulnerabilityPeriodMsec;
            this.§each set import§.§@!e§ = idleKickPeriodMsec;
            battleInfoService.reArmorEnabled = battleParameters.reArmorEnabled;
            battleInfoService.spectator = spectator;
            battleInfoService.setCurrentSelectionBattle(battleParameters.battleId,battleParameters.minRank,battleParameters.maxRank);
            battleInfoService.currentBattleId = battleParameters.battleId;
            §9!c§.setColorTransform(§?!<§.§&"R§(battlemap.§case for const§,0.5));
            this.§&"#§(battleParameters.ambientSoundId);
            this.§null for catch§();
            this.§dynamic false§(battleObject);
            this.§9!G§.§`b§().§return case§(true);
            this.ambientSound = new §6"#§(this.battleData.ambientSound,this.§9!G§.§`b§());
            this.§;!2§();
            this.§=!h§ = new §2"&§(battleEventDispatcher);
            this.§each const switch§.reset();
         }
         catch(e:Error)
         {
            §override var super§(e);
         }
      }
      
      private function §;!2§() : void
      {
         settings.addEventListener(SettingsServiceEvent.SETTINGS_CHANGED,this.§native var set§);
      }
      
      private function §break for if§() : void
      {
         settings.removeEventListener(SettingsServiceEvent.SETTINGS_CHANGED,this.§native var set§);
      }
      
      public function initBonuses(param1:ClientObject, param2:Array) : void
      {
         var _loc3_:BattleBonus = null;
         if(param2 == null)
         {
            return;
         }
         for each(_loc3_ in param2)
         {
            this.§super set for§(_loc3_.id,_loc3_.objectId,_loc3_.position,param1,_loc3_.timeLife,_loc3_.timeFromAppearing,_loc3_.bonusResourceId,_loc3_.lighting);
         }
      }
      
      public function addBonus(param1:ClientObject, param2:String, param3:String, param4:§finally for false§, param5:int, param6:Long, param7:Object) : void
      {
         this.§super set for§(param2,param3,param4,param1,param5,0,param6,param7);
      }
      
      public function removeBonus(param1:ClientObject, param2:String) : void
      {
         if(this.§each set import§ == null)
         {
            return;
         }
         var _loc3_:Bonus = this.§each set import§.bonuses[param2];
         if(_loc3_ != null)
         {
            delete this.§each set import§.bonuses[param2];
            _loc3_.remove();
         }
      }
      
      public function bonusTaken(param1:ClientObject, param2:String) : void
      {
         if(this.§each set import§ == null)
         {
            return;
         }
         var _loc3_:Bonus = this.§each set import§.bonuses[param2];
         if(_loc3_ != null)
         {
            delete this.§each set import§.bonuses[param2];
            _loc3_.pickup();
         }
      }
      
      public function onTankCollision(param1:Bonus) : void
      {
         battleEventDispatcher.dispatchEvent(§set var override§.§9E§);
         this.§extends var include§(param1.bonusId);
      }
      
      private function §&"#§(param1:Long) : void
      {
         this.battleData = new §class const switch§();
         this.battleData.§9! §(300000);
         this.battleData.ambientSound = SoundResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(param1)).sound;
         this.battleData.§try var with§ = SoundResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(Long.getLong(0,878808))).sound;
      }
      
      public function §null for catch§() : void
      {
         this.§'n§ = new §,6§(display.stage,§true const function§,0.5);
         var _loc1_:§implements package§ = this.§`"2§;
         var _loc2_:§in set set§ = _loc1_.fogParams;
         var _loc3_:§!!@§ = _loc1_.§case for const§;
         this.§'n§.§static var in§(_loc2_.color,_loc2_.alpha,_loc2_.nearLimit,_loc2_.farLimit);
         this.§'n§.§false const super§(_loc3_.lightColor,_loc3_.shadowColor,_loc3_.angleX,_loc3_.angleZ);
         this.§&!X§ = new §="B§();
         var _loc4_:Number = _loc1_.gravity;
         this.§9!G§ = new §get var throw§(_loc4_,this.battleData.ambientSound,battleEventDispatcher);
         this.§each set import§.collisionDetector = this.§9!G§.§`"N§();
         this.§'n§.§else var switch§(new §]!b§(this.§9!G§.§`"N§()));
         this.§'n§.§!<§(this,_loc1_.§continue set set§);
         this.§'n§.§[!p§(_loc1_.ssaoColor);
         this.§[!H§ = new §-"Q§(display.stage,this.§9!G§,this.§each const switch§);
         this.§[!H§.§@!%§(settings.adaptiveFPS);
         this.§&!X§.§7"[§(§+!p§.§6"I§());
         this.§for var try§ = new DebugPanel();
         this.§for var try§.visible = false;
         display.stage.addChild(this.§for var try§);
         this.§static for static§ = new §]!G§();
         this.§3!A§ = new §8"M§(§,"J§);
         this.§"!F§ = new §each var function§();
      }
      
      private function §dynamic false§(param1:IGameObject) : void
      {
         this.§use var finally§();
         var _loc2_:§]"'§ = this.§finally continue§(param1);
         var _loc3_:MapResource = _loc2_.§3T§();
         this.mapId = _loc3_.id;
         var _loc4_:XML = XML(_loc3_.mapData.toString());
         var _loc5_:§package continue§ = new §package continue§(§true const function§,_loc3_.libRegistry);
         _loc5_.build(_loc4_,this.§=V§);
         §7u§ = _loc5_;
      }
      
      private function §finally continue§(param1:IGameObject) : §]"'§
      {
         return §]"'§(param1.adapt(§]"'§));
      }
      
      private function §use var finally§() : void
      {
         var _loc1_:§throw var break§ = new §throw var break§(this.§`"2§.§`!9§);
         this.§'n§.§super finally§(_loc1_);
         this.§'n§.§7!h§(settings.showSkyBox);
         var _loc2_:Vector3 = §#",§.§include for super§(this.§`"2§.§^!D§);
         var _loc3_:Number = this.§`"2§.§get super§;
         this.§1"S§ = new §super const throw§(_loc1_,_loc2_,_loc3_);
         this.§'n§.§@!X§(this.§1"S§,0);
      }
      
      private function §extends var include§(param1:String) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("battle;attempt_to_take_bonus;" + param1);
      }
      
      public function §-<§(param1:ClientObject) : void
      {
         this.battleActive = true;
      }
      
      public function battleFinish(param1:ClientObject) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Bonus = null;
         this.battleActive = false;
         battleEventDispatcher.dispatchEvent(new §package for null§());
         for(_loc2_ in this.§each set import§.bonuses)
         {
            _loc3_ = this.§each set import§.bonuses[_loc2_];
            _loc3_.remove();
            delete this.§each set import§.bonuses[_loc2_];
         }
      }
      
      public function battleRestart(param1:ClientObject) : void
      {
         this.battleActive = true;
         battleEventDispatcher.dispatchEvent(new §do const static§());
      }
      
      public function objectLoaded() : void
      {
         battleInfoService.setInBattle(true);
         this.§return if§();
         this.§each const switch§.reset();
         this.addListeners();
         this.§each set import§.time = getTimer();
         if(!this.spectatorMode)
         {
            this.§if class§();
         }
         else
         {
            Network(OSGi.getInstance().getService(INetworker)).send("battle;spectator_user_init");
            this.§6!s§();
         }
         battleInfoService.battleLoad();
         (OSGi.getInstance().getService(IPanelView) as IPanelView).unlock();
      }
      
      private function §if class§() : void
      {
         §+!x§.init();
         §2!a§.init();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:Bonus = null;
         if(this.spectatorMode)
         {
            this.§<!@§.close();
            this.§#!2§.close();
            this.§9s§.close();
         }
         this.battleActive = false;
         if(this.§each set import§ == null)
         {
            return;
         }
         battleEventDispatcher.dispatchEvent(new §throw const default§());
         this.§[!H§.§const var final§();
         this.§[!H§ = null;
         this.§break for if§();
         this.§'n§.shutdown();
         this.§9!G§.shutdown();
         this.removeListeners();
         this.§"!F§.close();
         this.§"!F§ = null;
         §with set import§(OSGi.getInstance().getService(BattleUserInfoService)).close();
         OSGi.getInstance().unregisterService(§true for import§);
         this.§&!X§.§5!o§();
         this.§&!X§.destroy();
         this.§&!X§ = null;
         this.§'n§.§function var break§().view.clear();
         this.§'n§.§function var break§().view = null;
         this.§9"K§(null);
         this.§for var try§ = null;
         for each(_loc1_ in this.§each set import§.bonuses)
         {
            _loc1_.remove();
            _loc1_ = null;
         }
         this.§each set import§.collisionDetector.destroy();
         this.§each set import§.collisionDetector = null;
         this.§each set import§.physicsScene = null;
         §dynamic var super§.drawBg();
         battleInfoService.setInBattle(false);
         battleInfoService.resetCurrentBattle();
         §9!c§.setColorTransform(null);
         §switch for in§.reset();
         §+!p§.hide();
         this.§static for static§.close();
         this.§static for static§ = null;
         this.§3!A§.close();
         this.§3!A§ = null;
         if(this.§="E§)
         {
            this.§="E§.close();
            this.§="E§ = null;
         }
         BonusCache.clear();
         if(!this.spectatorMode)
         {
            §2!a§.close();
            §+!x§.close();
         }
         this.§each set import§ = null;
         this.§<!Y§ = false;
         this.§#!o§().clear();
         this.§final for else§ = false;
      }
      
      public function §override for native§(param1:§=!t§) : void
      {
         this.§'n§.§override for native§(param1);
      }
      
      public function §!O§(param1:§3"B§) : void
      {
         this.§9!G§.§`b§().§return const null§(param1);
      }
      
      public function §%9§() : void
      {
         §+!p§.show();
         this.§'n§.§var const continue§();
         this.§][§();
      }
      
      public function §#!o§() : §if continue§
      {
         return this.§const for set§;
      }
      
      public function §#!"§(param1:Vector3, param2:Vector3) : void
      {
         if(this.§'n§.§null catch§() != this.§static for static§)
         {
            return;
         }
         this.§static for static§.deactivate();
         this.§static for static§.§6!<§(param1,param2,this.§default return§,this.§%+§);
         this.§3!A§.init(this.§default return§,this.§%+§);
         this.§'n§.§4!x§(this.§3!A§);
      }
      
      public function §null const in§() : void
      {
         this.§static for static§.§extends const for§(true);
      }
      
      public function §""9§() : void
      {
         this.§static for static§.§%!K§();
      }
      
      public function §^5§() : void
      {
         this.§static for static§.§extends const for§(false);
      }
      
      public function §function for var§(param1:Vector3, param2:Vector3) : void
      {
         this.§static for static§.§;!"§(param1,param2);
      }
      
      public function §class if§() : void
      {
         if(this.§'n§ != null)
         {
            this.§'n§.§function var break§().rotationY = 0;
            this.§static for static§.§+G§();
         }
      }
      
      public function §=-§() : void
      {
         this.§static for static§.activate();
         this.§static for static§.§+G§();
      }
      
      public function §6!s§() : void
      {
         var _loc1_:Vector3 = new Vector3();
         var _loc2_:Vector3 = new Vector3();
         this.§+!f§(_loc1_,_loc2_,§7u§.§4"3§());
         this.§'n§.§function var break§().setPosition(_loc1_);
         this.§'n§.§function var break§().lookAt(_loc2_.x,_loc2_.y,_loc2_.z);
         this.§="E§ = new §catch extends§();
         this.§="E§.activate();
         this.§4!x§(this.§="E§);
         var _loc3_:§get case§ = new §get case§();
         this.§9s§ = _loc3_;
         this.§'n§.§3-§(_loc3_);
         §switch for in§.§`!R§();
         this.§<!@§ = new §%U§(this.§="E§);
         this.§#!2§ = new §!"#§();
         if(!lobbyLayoutService.isSwitchInProgress())
         {
            §while var false§.unlock(§null set with§.§4?§);
         }
      }
      
      public function §+!f§(param1:Vector3, param2:Vector3, param3:AABB) : void
      {
         param1.x = param3.minX;
         param1.y = param3.minY;
         param1.z = param3.maxZ + §7"d§;
         param2.x = (param3.minX + param3.maxX) / 2;
         param2.y = (param3.minY + param3.maxY) / 2;
         param2.z = param3.minZ;
      }
      
      public function §4!x§(param1:§<n§) : void
      {
         this.§'n§.§4!x§(param1);
      }
      
      public function §9"K§(param1:Tank) : void
      {
         this.§static for static§.§ !F§(param1);
      }
      
      public function getRespawnInvulnerabilityPeriod() : int
      {
         return this.§%T§().§while for in§;
      }
      
      public function §!k§(param1:String, param2:String) : void
      {
         this.§for var try§.printValue(param1,param2);
      }
      
      public function §3b§(param1:Boolean) : void
      {
         var _loc2_:Boolean = settings.muteSound;
         this.§9!G§.§`b§().§return case§(_loc2_);
      }
      
      public function §&f§() : §]!G§
      {
         return this.§static for static§;
      }
      
      private function §=V§() : void
      {
         this.gui = OSGi.getInstance().getService(§#"K§) as §#"K§;
         if(!this.spectatorMode)
         {
            Network(OSGi.getInstance().getService(INetworker)).send("battle;get_init_data_local_tank");
         }
         this.§static for static§.§null for super§(§7u§.§in case§());
         this.§try override§();
         §switch for in§.§5"8§();
         battleEventDispatcher.dispatchEvent(new §;!&§());
         this.objectLoaded();
      }
      
      private function §try override§() : void
      {
         display.stage.frameRate += 1;
         --display.stage.frameRate;
      }
      
      private function addListeners() : void
      {
         display.stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         display.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         display.stage.addEventListener(KeyboardEvent.KEY_UP,this.onKey);
         display.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
      }
      
      private function removeListeners() : void
      {
         display.stage.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         display.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKey);
         display.stage.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
         display.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var event:Event = param1;
         try
         {
            this.tick();
            return;
         }
         catch(e:Error)
         {
            §override var super§(e);
            return;
         }
      }
      
      private function tick() : void
      {
         this.§each const switch§.update();
         this.§9!G§.tick();
         §+!x§.tick();
         §2!a§.tick();
      }
      
      private function §override var super§(param1:Error) : void
      {
         if(!this.§get var implements§)
         {
            this.§get var implements§ = true;
            this.§=c§.error(param1.getStackTrace());
            this.§false set if§();
         }
      }
      
      private function §false set if§() : void
      {
         notificationService.addNotification(new ErrorNotification());
      }
      
      public function §try var final§() : §get var throw§
      {
         return this.§9!G§;
      }
      
      public function updateTanks(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc6_:Tank = null;
         var _loc5_:Vector3 = this.§'n§.§function var break§().position;
         for each(_loc6_ in this.§if var implements§.§package const in§())
         {
            this.§if var implements§.update(_loc6_ as Tank,param1,param2,param3,param4,_loc5_);
         }
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:§%!6§ = null;
         if(!§while var false§.§3!'§())
         {
            _loc2_ = §>!Y§.§case do§(param1.keyCode);
            if(_loc2_ == §%!6§.OPEN_GARAGE)
            {
               lobbyLayoutService.showGarage();
            }
         }
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         if(!§while var false§.§3!'§())
         {
            if(param1.type == KeyboardEvent.KEY_DOWN)
            {
               this.§<"%§(param1);
            }
         }
      }
      
      private function §<"%§(param1:KeyboardEvent) : void
      {
      }
      
      public function §null implements§() : § !I§
      {
         return this.§2"c§;
      }
      
      public function §native const package§(param1:§ !I§) : void
      {
         this.§2"c§ = param1;
      }
      
      public function §#!R§() : §true set var§
      {
         return this.§import const import§;
      }
      
      public function §-L§() : §^!u§
      {
         return this.§#o§;
      }
      
      public function §false for§(param1:§^!u§) : void
      {
         this.§#o§ = param1;
      }
      
      public function §finally var try§() : §4J§
      {
         return this.§'!y§;
      }
      
      public function §try for static§(param1:§4J§) : void
      {
         this.§'!y§ = param1;
      }
      
      public function §super set const§() : int
      {
         return this.battleData.§super set const§();
      }
      
      public function §try if§() : Sound
      {
         return this.battleData.§try var with§;
      }
      
      public function get §use const return§() : §6!X§
      {
         return this.§9!G§.§`b§();
      }
      
      public function §try const get§() : Boolean
      {
         return this.battleActive;
      }
      
      public function §5W§() : Dictionary
      {
         return this.§'n§.§ !n§();
      }
      
      public function §else true§() : void
      {
         this.§4!x§(this.§static for static§);
      }
      
      public function §catch static§() : int
      {
         return this.§9!G§.§catch static§();
      }
      
      public function §?!d§() : void
      {
         this.§<!Y§ = true;
      }
      
      public function §var const const§() : Boolean
      {
         return !this.§<!Y§;
      }
      
      public function §2x§() : int
      {
         return this.§3!A§.duration;
      }
      
      public function §!";§() : Boolean
      {
         return this.§final for else§;
      }
      
      public function §^r§(param1:Boolean) : void
      {
         this.§final for else§ = param1;
      }
      
      public function §?"e§() : §>!8§
      {
         return this.§!b§;
      }
      
      public function §return var function§(param1:§>!8§) : void
      {
         this.§!b§ = param1;
      }
      
      private function § !§(param1:§-4§) : void
      {
         var _loc2_:§-4§ = param1;
         server.§>M§(Vector.<int>(_loc2_.§static for do§));
      }
      
      private function §?T§(param1:DataValidationErrorEvent) : void
      {
         this.§else var class§(param1.type);
      }
      
      private function §else var class§(param1:int) : void
      {
         var _loc2_:int = param1;
         server.§'!M§(_loc2_);
      }
      
      private function §super set for§(param1:String, param2:String, param3:§finally for false§, param4:ClientObject, param5:int, param6:int, param7:Long, param8:Object) : Bonus
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc9_:§2"C§ = new §2"C§();
         _loc9_.initObject(param4,param7,Long.getLong(0,1000065),param5,Long.getLong(0,170005),Long.getLong(0,170004),Long.getLong(0,269321),param8);
         var _loc10_:Bonus = _loc9_.§each set null§(param1);
         _loc10_.spawn(new Vector3(param3.x,param3.y,param3.z),param6,150,this.onTankCollision);
         this.§each set import§.bonuses[_loc10_.bonusId] = _loc10_;
         return _loc10_;
      }
   }
}

