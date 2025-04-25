package projects.tanks.clients.fp10.models.battlefieldmodelflash
{
   import § !A§.§include const in§;
   import § "V§.§implements var native§;
   import §!"M§.§ " §;
   import §!"M§.;
   import §!"M§.§2i§;
   import §!"M§.§extends for import§;
   import §"M§.§6!r§;
   import §"M§.§override const for§;
   import §%"I§.§extends const include§;
   import §%"I§.§if const throw§;
   import §%`§.§-"F§;
   import §+!2§.§`!8§;
   import §,"§.§4S§;
   import §1J§.§%!d§;
   import §2!P§.§native set throw§;
   import §2!X§.§function var extends§;
   import §3!J§.§@!Z§;
   import §3!J§.§[!=§;
   import §5!Y§.§1U§;
   import §5!Y§.§>!G§;
   import §5!Y§.§function true§;
   import §5"D§.§for const import§;
   import §5"H§.§2!3§;
   import §6!%§.§,&§;
   import §6!%§.§5m§;
   import §6!%§.§implements for import§;
   import §7!-§.§+"&§;
   import §7![§.§3!`§;
   import §7![§.§3!h§;
   import §7![§.§in implements§;
   import §7"O§.§ d§;
   import §8"W§.§#<§;
   import §8"W§.§3!k§;
   import §8"W§.§["#§;
   import §8"W§.§]"!§;
   import §8"W§.§class var super§;
   import §8"W§.§each var function§;
   import §8"W§.§final for default§;
   import §8"W§.§get const throw§;
   import §8=§.§<p§;
   import §8=§.§>X§;
   import §8=§.§^!$§;
   import §8=§.§dynamic for static§;
   import §8=§.§function set package§;
   import §8=§.§implements var false§;
   import §9"9§.§0"Q§;
   import §9"9§.§8"F§;
   import §9"9§.§native const in§;
   import §;!S§.§2!,§;
   import §;!S§.§override var native§;
   import §;",§.§2!E§;
   import §;",§.§2"P§;
   import §;",§.§<"E§;
   import §;",§.§true for var§;
   import §;+§.§1!2§;
   import §;Z§.§for set var§;
   import §<"c§.§%!u§;
   import §?!g§.§@r§;
   import §?!g§.§else const in§;
   import §?!g§.§static const super§;
   import §?l§.§[!!§;
   import §?l§.§]Z§;
   import §@!c§.§continue var implements§;
   import §@!p§.§'O§;
   import §@!p§.§'_§;
   import §["E§.§!!<§;
   import §["E§.§%!=§;
   import §["E§.§1g§;
   import §["E§.§set const get§;
   import §]<§.§5A§;
   import §]<§.§`!a§;
   import §]<§.§switch const for§;
   import §]<§.§throw set const§;
   import §^!<§.§"!t§;
   import §^!S§.§0K§;
   import §^!S§.§8E§;
   import §^"f§.§@!6§;
   import §^"f§.§@!y§;
   import §^d§.§continue const throw§;
   import §`j§.§include super§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.bundle.IBundleActivator;
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.dump.IDumpService;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.§="B§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.§get var throw§;
   import alternativa.tanks.battle.scene3d.§override for finally§;
   import alternativa.tanks.bg.IBackgroundService;
   import alternativa.tanks.bonuses.BonusObject3DBase;
   import alternativa.tanks.bonuses.BonusPickupAnimation;
   import alternativa.tanks.bonuses.GroundSpawnRenderer;
   import alternativa.tanks.bonuses.ParachuteDetachAnimation;
   import alternativa.tanks.bonuses.RemovalAnimation;
   import alternativa.tanks.bonuses.SpawnAnimation;
   import alternativa.tanks.bonuses.SpawnFlashRenderer;
   import alternativa.tanks.camera.§]!G§;
   import alternativa.tanks.camera.§const for switch§;
   import alternativa.tanks.camera.§set set dynamic§;
   import alternativa.tanks.engine3d.§%!;§;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.help.IHelpService;
   import alternativa.tanks.loader.ILoaderWindowService;
   import alternativa.tanks.models.battle.battlefield.§!"#§;
   import alternativa.tanks.models.battle.battlefield.§%U§;
   import alternativa.tanks.models.battle.battlefield.§-"Q§;
   import alternativa.tanks.models.battle.battlefield.§4M§;
   import alternativa.tanks.models.battle.battlefield.§;0§;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.battle.battlefield.§class var if§;
   import alternativa.tanks.models.battle.battlefield.§extends var use§;
   import alternativa.tanks.models.battle.battlefield.§get case§;
   import alternativa.tanks.models.battle.battlefield.§use null§;
   import alternativa.tanks.models.battle.gui.chat.§9"d§;
   import alternativa.tanks.models.battle.gui.chat.§?!p§;
   import alternativa.tanks.models.battle.gui.chat.ChatModel;
   import alternativa.tanks.models.battle.gui.chat.§extends var const§;
   import alternativa.tanks.models.battle.gui.chat.§return const true§;
   import alternativa.tanks.models.tank.§0!s§;
   import alternativa.tanks.models.tank.§@"J§;
   import alternativa.tanks.models.tank.§`V§;
   import alternativa.tanks.models.tank.§`u§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§each const try§;
   import alternativa.tanks.models.tank.spawn.§5n§;
   import alternativa.tanks.models.tank.spawn.§6"h§;
   import alternativa.tanks.models.weapon.shaft.§&"7§;
   import alternativa.tanks.models.weapon.shaft.§3"G§;
   import alternativa.tanks.models.weapon.shaft.§]!,§;
   import alternativa.tanks.models.weapon.shared.§override for class§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.models.weapon.smoky.§;O§;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battlegui.§`"5§;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.battlereadiness.BattleReadinessService;
   import alternativa.tanks.services.battlereadiness.§switch var var§;
   import alternativa.tanks.services.colortransform.ColorTransformService;
   import alternativa.tanks.services.initialeffects.IInitialEffectsService;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import alternativa.tanks.services.mipmapping.MipMappingService;
   import alternativa.tanks.services.ping.PingService;
   import alternativa.tanks.services.spectatorservice.SpectatorService;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import alternativa.tanks.services.targeting.§2!V§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import alternativa.tanks.services.targeting.§get finally§;
   import alternativa.tanks.utils.DataValidator;
   import alternativa.utils.TextureMaterialRegistry;
   import §break for extends§.§>"D§;
   import §break for extends§.§finally set static§;
   import §break for extends§.§include for while§;
   import §case var get§.IChatModelBase;
   import §catch const package§.§else const get§;
   import §catch for do§.§-!8§;
   import §catch var use§.§?!X§;
   import §const if§.§use const const§;
   import §const set false§.§+"3§;
   import §const set false§.§5!5§;
   import §const set false§.§class var null§;
   import §const set false§.§for set switch§;
   import §const set false§.§var const throw§;
   import §continue false§.§set for each§;
   import §default get§.§native set finally§;
   import §default set with§.§0"8§;
   import §do set else§.§=!p§;
   import §do set else§.ControlsHelper;
   import §dynamic package§.§try var true§;
   import §dynamic set use§.§9`§;
   import §dynamic set use§.§]w§;
   import §dynamic var else§.§>S§;
   import §dynamic var else§.§static for continue§;
   import §dynamic var else§.§true const null§;
   import §each const with§.§+!j§;
   import §each var import§.§override catch§;
   import §else const case§.§,!W§;
   import §else const case§.§]"'§;
   import §else const case§.§dynamic const dynamic§;
   import §else const case§.§native var var§;
   import §else for default§.§2"C§;
   import §extends const const§.§>!t§;
   import §false const return§.§case for default§;
   import §false for catch§.§ O§;
   import §false for include§.§package continue§;
   import §final for do§.§6"-§;
   import §final for do§.§implements each§;
   import §final for do§.§var for with§;
   import §for const each§.§1M§;
   import §for const get§.§-!$§;
   import §for const get§.§2!q§;
   import §for const get§.§2t§;
   import §for const get§.§6>§;
   import §get set for§.§7x§;
   import §if const use§.§include var§;
   import §import var true§.§extends for true§;
   import §in var else§.§,!<§;
   import §in var else§.§-!C§;
   import §in var else§.§const var return§;
   import §in var else§.§null for static§;
   import §include override§.§catch for catch§;
   import §include var super§.§switch switch§;
   import §native const if§.§null for finally§;
   import §native const var§.§return native§;
   import §null for var§.§1y§;
   import §override const continue§.§%h§;
   import §override const continue§.§+"!§;
   import §override const continue§.§1§;
   import §override const continue§.§1"E§;
   import §override const continue§.§4!D§;
   import §override const continue§.§8%§;
   import §override const continue§.§@[§;
   import §override const continue§.§finally set with§;
   import §override const continue§.§true for import§;
   import §package for switch§.§const for true§;
   import §package for§.§7l§;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import platform.client.fp10.core.registry.ModelRegistry;
   import projects.tanks.client.battlefield.models.battle.battlefield.§2"L§;
   import projects.tanks.clients.flash.commons.services.notification.INotificationService;
   import projects.tanks.clients.flash.commons.services.serverhalt.IServerHaltService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.IBlockUserService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blur.IBlurService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogs.IDialogsService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.dialogwindowdispatcher.IDialogWindowsDispatcherService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenStateService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.layout.ILobbyLayoutService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.premium.PremiumService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   import services.contextmenu.IContextMenuService;
   import §static for case§.§<y§;
   import §static for case§.§^!"§;
   import §static for case§.§override var throw§;
   import §static for case§.§super for return§;
   import §super for implements§.§&8§;
   import §super for implements§.§native finally§;
   import §throw const null§.§catch for get§;
   import §throw const null§.§function const in§;
   import §try set use§.§with for each§;
   import §use for package§.§;!@§;
   import §var for var§.§""R§;
   import §var for var§.§continue var while§;
   import §while finally§.§&!-§;
   import §with const catch§.§0"F§;
   import §with const catch§.§]S§;
   import §with const catch§.§in const import§;
   import §with const catch§.§try const true§;
   import §with for default§.§`"G§;
   
   public class Activator implements IBundleActivator
   {
      public static var osgi:OSGi;
      
      public function Activator()
      {
         super();
      }
      
      public function start(param1:OSGi) : void
      {
         var modelRegister:ModelRegistry;
         var modelRegisterAdapt:ModelRegistry;
         var _osgi:OSGi = param1;
         osgi = _osgi;
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §`"5§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §`"5§.display;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §var const throw§.§get for function§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §var const throw§.§get for function§;
         });
         osgi.injectService(TargetingModeService,function(param1:Object):void
         {
            §var const throw§.§2!a§ = TargetingModeService(param1);
         },function():TargetingModeService
         {
            return §var const throw§.§2!a§;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §%U§.§0"P§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §%U§.§0"P§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §!"#§.§var const static§ = IDisplay(param1);
         },function():IDisplay
         {
            return §!"#§.§var const static§;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §!"#§.§while var false§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §!"#§.§while var false§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §!"#§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §!"#§.battleService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §+"!§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §+"!§.display;
         });
         osgi.injectService(IPanelView,function(param1:Object):void
         {
            §+"!§.panelView = IPanelView(param1);
         },function():IPanelView
         {
            return §+"!§.panelView;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §+"!§.settingsService = ISettingsService(param1);
         },function():ISettingsService
         {
            return §+"!§.settingsService;
         });
         osgi.injectService(SpectatorService,function(param1:Object):void
         {
            §+"!§.§throw for for§ = SpectatorService(param1);
         },function():SpectatorService
         {
            return §+"!§.§throw for for§;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §+"!§.§=,§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §+"!§.§=,§;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §+"!§.§5"G§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §+"!§.§5"G§;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            §each var function§.dialogWindowsDispatcherService = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return §each var function§.dialogWindowsDispatcherService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §each var function§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §each var function§.lobbyLayoutService;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            §each var function§.dialogService = IDialogsService(param1);
         },function():IDialogsService
         {
            return §each var function§.dialogService;
         });
         osgi.injectService(IBlurService,function(param1:Object):void
         {
            §each var function§.blurService = IBlurService(param1);
         },function():IBlurService
         {
            return §each var function§.blurService;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §each var function§.§while var false§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §each var function§.§while var false§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §each var function§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §each var function§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §get case§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §get case§.battleEventDispatcher;
         });
         osgi.injectService(SpectatorService,function(param1:Object):void
         {
            §get case§.§throw for for§ = SpectatorService(param1);
         },function():SpectatorService
         {
            return §get case§.§throw for for§;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §3!k§.§while var false§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §3!k§.§while var false§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §+!j§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §+!j§.battleEventDispatcher;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            § O§.display = IDisplay(param1);
         },function():IDisplay
         {
            return § O§.display;
         });
         osgi.injectService(TankUsersRegistry,function(param1:Object):void
         {
            § O§.§3"'§ = TankUsersRegistry(param1);
         },function():TankUsersRegistry
         {
            return § O§.§3"'§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            § O§.battleService = BattleService(param1);
         },function():BattleService
         {
            return § O§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            § O§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return § O§.battleEventDispatcher;
         });
         osgi.injectService(IContextMenuService,function(param1:Object):void
         {
            § O§.contextMenuService = IContextMenuService(param1);
         },function():IContextMenuService
         {
            return § O§.contextMenuService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §extends var const§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §extends var const§.display;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §extends var const§.§0"P§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §extends var const§.§0"P§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §extends var const§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §extends var const§.battleEventDispatcher;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §extends var const§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §extends var const§.localeService;
         });
         osgi.injectService(IBlockUserService,function(param1:Object):void
         {
            §extends var const§.blockUserService = IBlockUserService(param1);
         },function():IBlockUserService
         {
            return §extends var const§.blockUserService;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §extends var const§.§+!p§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §extends var const§.§+!p§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §extends var const§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §extends var const§.battleInfoService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §extends var const§.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §extends var const§.userPropertiesService;
         });
         osgi.injectService(BattleUserInfoService,function(param1:Object):void
         {
            §extends var const§.userInfoService = BattleUserInfoService(param1);
         },function():BattleUserInfoService
         {
            return §extends var const§.userInfoService;
         });
         osgi.injectService(FullscreenService,function(param1:Object):void
         {
            §extends var const§.fullscreenService = FullscreenService(param1);
         },function():FullscreenService
         {
            return §extends var const§.fullscreenService;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §extends var const§.§+!x§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §extends var const§.§+!x§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §9"d§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §9"d§.localeService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §true const null§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §true const null§.battleInfoService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            §1§.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return §1§.storageService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §1§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §1§.battleEventDispatcher;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §1§.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §1§.userPropertiesService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §1§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §1§.display;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §1§.§+!p§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §1§.§+!p§;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            §=!p§.helpService = IHelpService(param1);
         },function():IHelpService
         {
            return §=!p§.helpService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §=!p§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §=!p§.localeService;
         });
         osgi.injectService(TextureMaterialRegistry,function(param1:Object):void
         {
            §?!X§.§while const case§ = TextureMaterialRegistry(param1);
         },function():TextureMaterialRegistry
         {
            return §?!X§.§while const case§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §?!X§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §?!X§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §extends for true§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §extends for true§.battleService;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §extends for true§.§use const override§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §extends for true§.§use const override§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §extends for true§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §extends for true§.battleEventDispatcher;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §extends for true§.§+!p§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §extends for true§.§+!p§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §extends for true§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §extends for true§.battleInfoService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §%!d§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §%!d§.display;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §%!d§.§<!x§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §%!d§.§<!x§;
         });
         osgi.injectService(ColorTransformService,function(param1:Object):void
         {
            §&!-§.§9!c§ = ColorTransformService(param1);
         },function():ColorTransformService
         {
            return §&!-§.§9!c§;
         });
         osgi.injectService(TextureMaterialRegistry,function(param1:Object):void
         {
            §&!-§.§true const function§ = TextureMaterialRegistry(param1);
         },function():TextureMaterialRegistry
         {
            return §&!-§.§true const function§;
         });
         osgi.injectService(ILightingEffectsService,function(param1:Object):void
         {
            §&!-§.§extends var finally§ = ILightingEffectsService(param1);
         },function():ILightingEffectsService
         {
            return §&!-§.§extends var finally§;
         });
         osgi.injectService(TextureMaterialRegistry,function(param1:Object):void
         {
            §2"C§.§true const function§ = TextureMaterialRegistry(param1);
         },function():TextureMaterialRegistry
         {
            return §2"C§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §2"C§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §2"C§.battleService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §1y§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §1y§.battleInfoService;
         });
         osgi.injectService(TankUsersRegistry,function(param1:Object):void
         {
            §1y§.§3"'§ = TankUsersRegistry(param1);
         },function():TankUsersRegistry
         {
            return §1y§.§3"'§;
         });
         osgi.injectService(BattleUserInfoService,function(param1:Object):void
         {
            §1y§.userInfoService = BattleUserInfoService(param1);
         },function():BattleUserInfoService
         {
            return §1y§.userInfoService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §override for finally§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §override for finally§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §`!8§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §`!8§.battleService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §const for true§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §const for true§.display;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §const for true§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §const for true§.lobbyLayoutService;
         });
         osgi.injectService(IServerHaltService,function(param1:Object):void
         {
            §const for true§.§continue for catch§ = IServerHaltService(param1);
         },function():IServerHaltService
         {
            return §const for true§.§continue for catch§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §const for true§.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §const for true§.userPropertiesService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §const for true§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §const for true§.battleEventDispatcher;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §const for true§.§<!x§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §const for true§.§<!x§;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §const for true§.§while var false§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §const for true§.§while var false§;
         });
         osgi.injectService(INotificationService,function(param1:Object):void
         {
            §const for true§.notificationService = INotificationService(param1);
         },function():INotificationService
         {
            return §const for true§.notificationService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §const for true§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §const for true§.battleInfoService;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            §const for true§.premiumService = PremiumService(param1);
         },function():PremiumService
         {
            return §const for true§.premiumService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §static for continue§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §static for continue§.localeService;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §2!V§.§get for function§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §2!V§.§get for function§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §2!V§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §2!V§.battleEventDispatcher;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §2!V§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §2!V§.display;
         });
         osgi.injectService(FullscreenStateService,function(param1:Object):void
         {
            §2!V§.§`"P§ = FullscreenStateService(param1);
         },function():FullscreenStateService
         {
            return §2!V§.§`"P§;
         });
         osgi.injectService(FullscreenService,function(param1:Object):void
         {
            §2!V§.§in const§ = FullscreenService(param1);
         },function():FullscreenService
         {
            return §2!V§.§in const§;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §2!V§.settingsService = ISettingsService(param1);
         },function():ISettingsService
         {
            return §2!V§.settingsService;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §2!V§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §2!V§.§>!Y§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §get finally§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §get finally§.display;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §get finally§.§include for final§ = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §get finally§.§include for final§;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §get finally§.§while var false§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §get finally§.§while var false§;
         });
         osgi.injectService(FullscreenService,function(param1:Object):void
         {
            §get finally§.§in const§ = FullscreenService(param1);
         },function():FullscreenService
         {
            return §get finally§.§in const§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §get finally§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §get finally§.battleEventDispatcher;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §>S§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §>S§.display;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §>S§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §>S§.localeService;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §>S§.§get for function§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §>S§.§get for function§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §switch switch§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §switch switch§.display;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §>!t§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §>!t§.display;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §>!t§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §>!t§.lobbyLayoutService;
         });
         osgi.injectService(IServerHaltService,function(param1:Object):void
         {
            §>!t§.§continue for catch§ = IServerHaltService(param1);
         },function():IServerHaltService
         {
            return §>!t§.§continue for catch§;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §>!t§.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §>!t§.userPropertiesService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §>!t§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §>!t§.battleEventDispatcher;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §>!t§.§<!x§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §>!t§.§<!x§;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §>!t§.§while var false§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §>!t§.§while var false§;
         });
         osgi.injectService(INotificationService,function(param1:Object):void
         {
            §>!t§.notificationService = INotificationService(param1);
         },function():INotificationService
         {
            return §>!t§.notificationService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §>!t§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §>!t§.battleInfoService;
         });
         osgi.injectService(PremiumService,function(param1:Object):void
         {
            §>!t§.premiumService = PremiumService(param1);
         },function():PremiumService
         {
            return §>!t§.premiumService;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §@[§.settingsService = ISettingsService(param1);
         },function():ISettingsService
         {
            return §@[§.settingsService;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §@[§.§+!p§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §@[§.§+!p§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §final for default§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §final for default§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §final for default§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §final for default§.battleService;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §final for default§.§0"P§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §final for default§.§0"P§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §final for default§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §final for default§.display;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §final for default§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §final for default§.§>!Y§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §const for switch§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §const for switch§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §switch var var§.§7!i§ = BattleService(param1);
         },function():BattleService
         {
            return §switch var var§.§7!i§;
         });
         osgi.injectService(ILoaderWindowService,function(param1:Object):void
         {
            §switch var var§.loaderWindowService = ILoaderWindowService(param1);
         },function():ILoaderWindowService
         {
            return §switch var var§.loaderWindowService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §switch var var§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §switch var var§.lobbyLayoutService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §case const var§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §case const var§.battleService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            §="B§.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return §="B§.storageService;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §="B§.§while var false§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §="B§.§while var false§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §="B§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §="B§.display;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §="B§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §="B§.§>!Y§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §="B§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §="B§.battleService;
         });
         osgi.injectService(IBackgroundService,function(param1:Object):void
         {
            §="B§.§dynamic var super§ = IBackgroundService(param1);
         },function():IBackgroundService
         {
            return §="B§.§dynamic var super§;
         });
         osgi.injectService(LogService,function(param1:Object):void
         {
            §;0§.logService = LogService(param1);
         },function():LogService
         {
            return §;0§.logService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            §;0§.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return §;0§.storageService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §;0§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §;0§.display;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §;0§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §;0§.battleEventDispatcher;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §;0§.settings = ISettingsService(param1);
         },function():ISettingsService
         {
            return §;0§.settings;
         });
         osgi.injectService(IBackgroundService,function(param1:Object):void
         {
            §;0§.§dynamic var super§ = IBackgroundService(param1);
         },function():IBackgroundService
         {
            return §;0§.§dynamic var super§;
         });
         osgi.injectService(MipMappingService,function(param1:Object):void
         {
            §;0§.§9!w§ = MipMappingService(param1);
         },function():MipMappingService
         {
            return §;0§.§9!w§;
         });
         osgi.injectService(TextureMaterialRegistry,function(param1:Object):void
         {
            §;0§.§true const function§ = TextureMaterialRegistry(param1);
         },function():TextureMaterialRegistry
         {
            return §;0§.§true const function§;
         });
         osgi.injectService(ColorTransformService,function(param1:Object):void
         {
            §;0§.§9!c§ = ColorTransformService(param1);
         },function():ColorTransformService
         {
            return §;0§.§9!c§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §;0§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §;0§.battleInfoService;
         });
         osgi.injectService(BattleReadinessService,function(param1:Object):void
         {
            §;0§.§switch for in§ = BattleReadinessService(param1);
         },function():BattleReadinessService
         {
            return §;0§.§switch for in§;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §;0§.§while var false§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §;0§.§while var false§;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §;0§.§+!p§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §;0§.§+!p§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §;0§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §;0§.lobbyLayoutService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §;0§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §;0§.localeService;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §;0§.§+!x§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §;0§.§+!x§;
         });
         osgi.injectService(TargetingModeService,function(param1:Object):void
         {
            §;0§.§2!a§ = TargetingModeService(param1);
         },function():TargetingModeService
         {
            return §;0§.§2!a§;
         });
         osgi.injectService(INotificationService,function(param1:Object):void
         {
            §;0§.notificationService = INotificationService(param1);
         },function():INotificationService
         {
            return §;0§.notificationService;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §;0§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §;0§.§>!Y§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §return native§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §return native§.localeService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §null for finally§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §null for finally§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            SpawnFlashRenderer.battleService = BattleService(param1);
         },function():BattleService
         {
            return SpawnFlashRenderer.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            ParachuteDetachAnimation.battleService = BattleService(param1);
         },function():BattleService
         {
            return ParachuteDetachAnimation.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            BonusPickupAnimation.battleService = BattleService(param1);
         },function():BattleService
         {
            return BonusPickupAnimation.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            RemovalAnimation.battleService = BattleService(param1);
         },function():BattleService
         {
            return RemovalAnimation.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §@"J§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §@"J§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §@"J§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §@"J§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            BonusObject3DBase.battleService = BattleService(param1);
         },function():BattleService
         {
            return BonusObject3DBase.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            SpawnAnimation.battleService = BattleService(param1);
         },function():BattleService
         {
            return SpawnAnimation.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            GroundSpawnRenderer.battleService = BattleService(param1);
         },function():BattleService
         {
            return GroundSpawnRenderer.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §1M§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §1M§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §finally set static§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §finally set static§.battleService;
         });
         osgi.injectService(PingService,function(param1:Object):void
         {
            §0"8§.§class for set§ = PingService(param1);
         },function():PingService
         {
            return §0"8§.§class for set§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §6"-§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §6"-§.battleService;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §]!G§.settings = ISettingsService(param1);
         },function():ISettingsService
         {
            return §]!G§.settings;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            §]!G§.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return §]!G§.storageService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §]!G§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §]!G§.display;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §]!G§.§get for function§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §]!G§.§get for function§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §]!G§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §]!G§.battleEventDispatcher;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §]!G§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §]!G§.§>!Y§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §continue var implements§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §continue var implements§.battleService;
         });
         osgi.injectService(TargetingModeService,function(param1:Object):void
         {
            §2!q§.§2!a§ = TargetingModeService(param1);
         },function():TargetingModeService
         {
            return §2!q§.§2!a§;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §2!q§.§get for function§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §2!q§.§get for function§;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §2!q§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §2!q§.§>!Y§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §native const in§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §native const in§.battleService;
         });
         osgi.injectService(IUserInfoService,function(param1:Object):void
         {
            §native const in§.userInfoService = IUserInfoService(param1);
         },function():IUserInfoService
         {
            return §native const in§.userInfoService;
         });
         osgi.injectService(TextureMaterialRegistry,function(param1:Object):void
         {
            §native const in§.§true const function§ = TextureMaterialRegistry(param1);
         },function():TextureMaterialRegistry
         {
            return §native const in§.§true const function§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §for set switch§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §for set switch§.display;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §for set switch§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §for set switch§.battleEventDispatcher;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §for set switch§.§7!?§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §for set switch§.§7!?§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §class var null§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §class var null§.display;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §class var null§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §class var null§.battleService;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §class var null§.§0"P§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §class var null§.§0"P§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §class var null§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §class var null§.battleEventDispatcher;
         });
         osgi.injectService(TargetingModeService,function(param1:Object):void
         {
            §class var null§.§%!P§ = TargetingModeService(param1);
         },function():TargetingModeService
         {
            return §class var null§.§%!P§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §class var null§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §class var null§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §override for class§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §override for class§.battleService;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §6>§.§if for null§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §6>§.§if for null§;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §6>§.settingsService = ISettingsService(param1);
         },function():ISettingsService
         {
            return §6>§.settingsService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §6>§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §6>§.display;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §implements for import§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §implements for import§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §override var native§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §override var native§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §override var native§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §override var native§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §+"&§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §+"&§.battleService;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §2!,§.§true const function§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §2!,§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §2!,§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §2!,§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §>!G§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §>!G§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §-!$§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §-!$§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §4S§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §4S§.battleService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §4S§.§&"P§ = IDisplay(param1);
         },function():IDisplay
         {
            return §4S§.§&"P§;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §4S§.settings = ISettingsService(param1);
         },function():ISettingsService
         {
            return §4S§.settings;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §2t§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §2t§.battleService;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §2t§.§get for function§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §2t§.§get for function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §5!5§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §5!5§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §,&§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §,&§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §>"D§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §>"D§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §""R§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §""R§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §try var true§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §try var true§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §8"F§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §8"F§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §each const try§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §each const try§.battleService;
         });
         osgi.injectService(BattleReadinessService,function(param1:Object):void
         {
            §each const try§.§switch for in§ = BattleReadinessService(param1);
         },function():BattleReadinessService
         {
            return §each const try§.§switch for in§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §6!r§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §6!r§.display;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §6!r§.§<!x§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §6!r§.§<!x§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §6!r§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §6!r§.localeService;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §1g§.§true const function§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §1g§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §1g§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §1g§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §1U§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §1U§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §%!;§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §%!;§.battleService;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §+"3§.§get for function§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §+"3§.§get for function§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            ChatModel.display = IDisplay(param1);
         },function():IDisplay
         {
            return ChatModel.display;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            ChatModel.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return ChatModel.battleInfoService;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            ChatModel.§+!p§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return ChatModel.§+!p§;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §?!p§.§0"P§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §?!p§.§0"P§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §include for while§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §include for while§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §#",§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §#",§.battleService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §package const final§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §package const final§.display;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §package const final§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §package const final§.battleEventDispatcher;
         });
         osgi.injectService(TargetingInputManager,function(param1:Object):void
         {
            §package const final§.§get for function§ = TargetingInputManager(param1);
         },function():TargetingInputManager
         {
            return §package const final§.§get for function§;
         });
         osgi.injectService(TargetingModeService,function(param1:Object):void
         {
            §package const final§.§2!a§ = TargetingModeService(param1);
         },function():TargetingModeService
         {
            return §package const final§.§2!a§;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §package const final§.settingsService = ISettingsService(param1);
         },function():ISettingsService
         {
            return §package const final§.settingsService;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §package const final§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §package const final§.§>!Y§;
         });
         osgi.injectService(TargetingModeService,function(param1:Object):void
         {
            §extends const include§.§2!a§ = TargetingModeService(param1);
         },function():TargetingModeService
         {
            return §extends const include§.§2!a§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §extends const include§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §extends const include§.display;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §if const throw§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §if const throw§.display;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §]"!§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §]"!§.display;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §]"!§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §]"!§.battleEventDispatcher;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §]"!§.§while var false§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §]"!§.§while var false§;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §]"!§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §]"!§.lobbyLayoutService;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            §]"!§.dialogWindowsDispatcherService = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return §]"!§.dialogWindowsDispatcherService;
         });
         osgi.injectService(IDialogsService,function(param1:Object):void
         {
            §]"!§.dialogsService = IDialogsService(param1);
         },function():IDialogsService
         {
            return §]"!§.dialogsService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §]"!§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §]"!§.battleService;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §]"!§.§<!x§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §]"!§.§<!x§;
         });
         osgi.injectService(FullscreenStateService,function(param1:Object):void
         {
            §]"!§.fullscreenStateService = FullscreenStateService(param1);
         },function():FullscreenStateService
         {
            return §]"!§.fullscreenStateService;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §]"!§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §]"!§.§>!Y§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §function var extends§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §function var extends§.battleService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §finally set with§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §finally set with§.display;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §finally set with§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §finally set with§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §finally set with§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §finally set with§.battleService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §finally set with§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §finally set with§.localeService;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §finally set with§.§<!x§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §finally set with§.§<!x§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §<p§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §<p§.battleService;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §>X§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §>X§.battleInfoService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §>X§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §>X§.battleService;
         });
         osgi.injectService(TextureMaterialRegistry,function(param1:Object):void
         {
            §>X§.§true const function§ = TextureMaterialRegistry(param1);
         },function():TextureMaterialRegistry
         {
            return §>X§.§true const function§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §>X§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §>X§.battleEventDispatcher;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §>X§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §>X§.localeService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §>X§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §>X§.display;
         });
         osgi.injectService(BattleUserInfoService,function(param1:Object):void
         {
            §>X§.userInfoService = BattleUserInfoService(param1);
         },function():BattleUserInfoService
         {
            return §>X§.userInfoService;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §>X§.§0"P§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §>X§.§0"P§;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §>X§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §>X§.§>!Y§;
         });
         osgi.injectService(ILightingEffectsService,function(param1:Object):void
         {
            §function set package§.§extends var finally§ = ILightingEffectsService(param1);
         },function():ILightingEffectsService
         {
            return §function set package§.§extends var finally§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §function set package§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §function set package§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §`V§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §`V§.battleEventDispatcher;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §["#§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §["#§.battleEventDispatcher;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §]w§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §]w§.battleInfoService;
         });
         osgi.injectService(TextureMaterialRegistry,function(param1:Object):void
         {
            §9`§.§while const case§ = TextureMaterialRegistry(param1);
         },function():TextureMaterialRegistry
         {
            return §9`§.§while const case§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §9`§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §9`§.battleService;
         });
         osgi.injectService(IDumpService,function(param1:Object):void
         {
            §9`§.§catch var extends§ = IDumpService(param1);
         },function():IDumpService
         {
            return §9`§.§catch var extends§;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §9`§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §9`§.battleEventDispatcher;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §6"h§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §6"h§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §6"h§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §6"h§.battleService;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §continue var while§.§true const function§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §continue var while§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §continue var while§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §continue var while§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §;O§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §;O§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §;O§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §;O§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §0K§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §0K§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §0K§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §0K§.battleEventDispatcher;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §8E§.§true const function§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §8E§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §8E§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §8E§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §3"G§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §3"G§.battleService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §3"G§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §3"G§.display;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §3"G§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §3"G§.battleEventDispatcher;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §&"7§.§true const function§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §&"7§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §&"7§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §&"7§.battleService;
         });
         osgi.injectService(TargetingModeService,function(param1:Object):void
         {
            §]!,§.§2!a§ = TargetingModeService(param1);
         },function():TargetingModeService
         {
            return §]!,§.§2!a§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §]!,§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §]!,§.display;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §2"P§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §2"P§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §2"P§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §2"P§.battleEventDispatcher;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §true for var§.§true const function§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §true for var§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §true for var§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §true for var§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §<"E§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §<"E§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §2!E§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §2!E§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §0"Q§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §0"Q§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §3!`§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §3!`§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §in implements§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §in implements§.battleService;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §in implements§.§true const function§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §in implements§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §3!h§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §3!h§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §3!h§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §3!h§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §var for with§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §var for with§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §var for with§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §var for with§.battleEventDispatcher;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §implements each§.§true const function§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §implements each§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §implements each§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §implements each§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §@!y§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §@!y§.battleService;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §@!y§.§true const function§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §@!y§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §@!6§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §@!6§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §@!6§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §@!6§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §%!u§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §%!u§.battleService;
         });
         osgi.injectService(EffectsMaterialRegistry,function(param1:Object):void
         {
            §native finally§.§true const function§ = EffectsMaterialRegistry(param1);
         },function():EffectsMaterialRegistry
         {
            return §native finally§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §native finally§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §native finally§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §&8§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §&8§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §&8§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §&8§.battleEventDispatcher;
         });
         osgi.injectService(DataValidator,function(param1:Object):void
         {
            §package continue§.§null var extends§ = DataValidator(param1);
         },function():DataValidator
         {
            return §package continue§.§null var extends§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §package continue§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §package continue§.battleService;
         });
         osgi.injectService(CommandService,function(param1:Object):void
         {
            §package continue§.commandService = CommandService(param1);
         },function():CommandService
         {
            return §package continue§.commandService;
         });
         osgi.injectService(IClientLog,function(param1:Object):void
         {
            §-"Q§.clientLog = IClientLog(param1);
         },function():IClientLog
         {
            return §-"Q§.clientLog;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §-"Q§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §-"Q§.display;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §2!3§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §2!3§.localeService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §2!3§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §2!3§.battleService;
         });
         osgi.injectService(BattleUserInfoService,function(param1:Object):void
         {
            §2!3§.userInfoService = BattleUserInfoService(param1);
         },function():BattleUserInfoService
         {
            return §2!3§.userInfoService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §2!3§.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §2!3§.userPropertiesService;
         });
         osgi.injectService(TankUsersRegistry,function(param1:Object):void
         {
            §0!s§.§for final§ = TankUsersRegistry(param1);
         },function():TankUsersRegistry
         {
            return §0!s§.§for final§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §return native§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §return native§.localeService;
         });
         osgi.injectService(IUserInfoService,function(param1:Object):void
         {
            §-"F§.userInfoService = IUserInfoService(param1);
         },function():IUserInfoService
         {
            return §-"F§.userInfoService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §get var throw§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §get var throw§.battleService;
         });
         osgi.injectService(TextureMaterialRegistry,function(param1:Object):void
         {
            §2"C§.§true const function§ = TextureMaterialRegistry(param1);
         },function():TextureMaterialRegistry
         {
            return §2"C§.§true const function§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §2"C§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §2"C§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §use const const§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §use const const§.battleEventDispatcher;
         });
         osgi.injectService(BattleUserInfoService,function(param1:Object):void
         {
            §use const const§.userInfoService = BattleUserInfoService(param1);
         },function():BattleUserInfoService
         {
            return §use const const§.userInfoService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §use const const§.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §use const const§.userPropertiesService;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            §8%§.helpService = IHelpService(param1);
         },function():IHelpService
         {
            return §8%§.helpService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §8%§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §8%§.lobbyLayoutService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            ControlsHelper.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return ControlsHelper.localeService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §include super§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §include super§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §include super§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §include super§.battleEventDispatcher;
         });
         osgi.injectService(BattleUserInfoService,function(param1:Object):void
         {
            §function true§.battleUserInfoService = BattleUserInfoService(param1);
         },function():BattleUserInfoService
         {
            return §function true§.battleUserInfoService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §[!=§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §[!=§.localeService;
         });
         osgi.injectService(IBlockUserService,function(param1:Object):void
         {
            §[!=§.blockUserService = IBlockUserService(param1);
         },function():IBlockUserService
         {
            return §[!=§.blockUserService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §@!Z§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §@!Z§.localeService;
         });
         osgi.injectService(IBlockUserService,function(param1:Object):void
         {
            §@!Z§.blockUserService = IBlockUserService(param1);
         },function():IBlockUserService
         {
            return §@!Z§.blockUserService;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §#<§.settings = ISettingsService(param1);
         },function():ISettingsService
         {
            return §#<§.settings;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §set for each§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §set for each§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §4!D§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §4!D§.battleEventDispatcher;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §4!D§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §4!D§.localeService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §+!j§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §+!j§.battleEventDispatcher;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §5n§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §5n§.lobbyLayoutService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §include const in§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §include const in§.battleEventDispatcher;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §override const for§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §override const for§.display;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §override const for§.§<!x§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §override const for§.§<!x§;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §override const for§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §override const for§.localeService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §get const throw§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §get const throw§.battleEventDispatcher;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §get const throw§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §get const throw§.display;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §get const throw§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §get const throw§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §catch for get§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §catch for get§.battleEventDispatcher;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §catch for get§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §catch for get§.battleService;
         });
         osgi.injectService(IDialogWindowsDispatcherService,function(param1:Object):void
         {
            §catch for get§.dialogWindowsDispatcherService = IDialogWindowsDispatcherService(param1);
         },function():IDialogWindowsDispatcherService
         {
            return §catch for get§.dialogWindowsDispatcherService;
         });
         osgi.injectService(ILobbyLayoutService,function(param1:Object):void
         {
            §catch for get§.lobbyLayoutService = ILobbyLayoutService(param1);
         },function():ILobbyLayoutService
         {
            return §catch for get§.lobbyLayoutService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §function const in§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §function const in§.display;
         });
         osgi.injectService(IBlurService,function(param1:Object):void
         {
            §function const in§.blurService = IBlurService(param1);
         },function():IBlurService
         {
            return §function const in§.blurService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §function const in§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §function const in§.localeService;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §class var super§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §class var super§.display;
         });
         osgi.injectService(BattleFormatUtil,function(param1:Object):void
         {
            §%h§.§!!h§ = BattleFormatUtil(param1);
         },function():BattleFormatUtil
         {
            return §%h§.§!!h§;
         });
         osgi.injectService(DataValidator,function(param1:Object):void
         {
            §`u§.§null var extends§ = DataValidator(param1);
         },function():DataValidator
         {
            return §`u§.§null var extends§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §set set dynamic§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §set set dynamic§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §5m§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §5m§.battleService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §'_§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §'_§.battleEventDispatcher;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §'O§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §'O§.display;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §'O§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §'O§.battleEventDispatcher;
         });
         osgi.injectService(BattleInputService,function(param1:Object):void
         {
            §'O§.§while var false§ = BattleInputService(param1);
         },function():BattleInputService
         {
            return §'O§.§while var false§;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §'O§.§+!p§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §'O§.§+!p§;
         });
         osgi.injectService(KeysBindingService,function(param1:Object):void
         {
            §'O§.§>!Y§ = KeysBindingService(param1);
         },function():KeysBindingService
         {
            return §'O§.§>!Y§;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §'O§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §'O§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §for const import§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §for const import§.battleService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §implements var native§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §implements var native§.battleService;
         });
         osgi.injectService(ILocaleService,function(param1:Object):void
         {
            §%h§.localeService = ILocaleService(param1);
         },function():ILocaleService
         {
            return §%h§.localeService;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §%h§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §%h§.battleService;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §%h§.settingsService = ISettingsService(param1);
         },function():ISettingsService
         {
            return §%h§.settingsService;
         });
         osgi.injectService(IStorageService,function(param1:Object):void
         {
            §%h§.storageService = IStorageService(param1);
         },function():IStorageService
         {
            return §%h§.storageService;
         });
         osgi.injectService(IUserPropertiesService,function(param1:Object):void
         {
            §%h§.userPropertiesService = IUserPropertiesService(param1);
         },function():IUserPropertiesService
         {
            return §%h§.userPropertiesService;
         });
         osgi.injectService(IHelpService,function(param1:Object):void
         {
            §%h§.helpService = IHelpService(param1);
         },function():IHelpService
         {
            return §%h§.helpService;
         });
         osgi.injectService(BattleGUIService,function(param1:Object):void
         {
            §%h§.§<!x§ = BattleGUIService(param1);
         },function():BattleGUIService
         {
            return §%h§.§<!x§;
         });
         osgi.injectService(BattleFormatUtil,function(param1:Object):void
         {
            §%h§.§!!h§ = BattleFormatUtil(param1);
         },function():BattleFormatUtil
         {
            return §%h§.§!!h§;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §%h§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §%h§.display;
         });
         osgi.injectService(LogService,function(param1:Object):void
         {
            §catch for const§.logService = LogService(param1);
         },function():LogService
         {
            return §catch for const§.logService;
         });
         osgi.injectService(ISettingsService,function(param1:Object):void
         {
            §catch for const§.settingsService = ISettingsService(param1);
         },function():ISettingsService
         {
            return §catch for const§.settingsService;
         });
         osgi.injectService(BattleEventDispatcher,function(param1:Object):void
         {
            §catch for const§.battleEventDispatcher = BattleEventDispatcher(param1);
         },function():BattleEventDispatcher
         {
            return §catch for const§.battleEventDispatcher;
         });
         osgi.injectService(IDisplay,function(param1:Object):void
         {
            §catch for const§.display = IDisplay(param1);
         },function():IDisplay
         {
            return §catch for const§.display;
         });
         osgi.injectService(BattleService,function(param1:Object):void
         {
            §catch for const§.battleService = BattleService(param1);
         },function():BattleService
         {
            return §catch for const§.battleService;
         });
         osgi.injectService(BattleUserInfoService,function(param1:Object):void
         {
            §catch for const§.battleUserInfoService = BattleUserInfoService(param1);
         },function():BattleUserInfoService
         {
            return §catch for const§.battleUserInfoService;
         });
         osgi.injectService(TankUsersRegistry,function(param1:Object):void
         {
            §catch for const§.§3"'§ = TankUsersRegistry(param1);
         },function():TankUsersRegistry
         {
            return §catch for const§.§3"'§;
         });
         osgi.injectService(IInitialEffectsService,function(param1:Object):void
         {
            §catch for const§.§for try§ = IInitialEffectsService(param1);
         },function():IInitialEffectsService
         {
            return §catch for const§.§for try§;
         });
         osgi.injectService(IBattleInfoService,function(param1:Object):void
         {
            §catch for const§.battleInfoService = IBattleInfoService(param1);
         },function():IBattleInfoService
         {
            return §catch for const§.battleInfoService;
         });
         osgi.injectService(TankUsersRegistry,function(param1:Object):void
         {
            §1!2§.§3"'§ = TankUsersRegistry(param1);
         },function():TankUsersRegistry
         {
            return §1!2§.§3"'§;
         });
         osgi.injectService(PingService,function(param1:Object):void
         {
            §"!t§.§class for set§ = PingService(param1);
         },function():PingService
         {
            return §"!t§.§class for set§;
         });
         modelRegister = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegisterAdapt = osgi.getService(ModelRegistry) as ModelRegistry;
         modelRegister.add(new ChatModel(),Vector.<Class>([IChatModelBase,§return const true§,ObjectLoadListener,ObjectUnloadListener]));
         modelRegister.add(new §for set var§(),Vector.<Class>([§`"G§,§]Z§,§override const do§,§[!!§]));
         modelRegister.add(new §const for true§(),Vector.<Class>([§7l§,IObjectLoadListener,§true for import§,§override const do§,§1"E§]));
         modelRegister.add(new §const var return§(),Vector.<Class>([§native set finally§,§,!<§]));
         modelRegisterAdapt.registerAdapt(§,!<§,§-!C§);
         modelRegisterAdapt.registerEvents(§,!<§,§null for static§);
         modelRegister.add(new §>X§(),Vector.<Class>([§-!8§,§^!$§,ObjectLoadListener,ObjectUnloadListener,§override const do§]));
         modelRegisterAdapt.registerAdapt(§^!$§,§dynamic for static§);
         modelRegisterAdapt.registerEvents(§^!$§,§implements var false§);
         modelRegister.add(new §native var var§(),Vector.<Class>([§else const get§,§]"'§]));
         modelRegisterAdapt.registerAdapt(§]"'§,§dynamic const dynamic§);
         modelRegisterAdapt.registerEvents(§]"'§,§,!W§);
         modelRegister.add(new §override var throw§(),Vector.<Class>([§native set throw§,§<y§]));
         modelRegisterAdapt.registerAdapt(§<y§,§^!"§);
         modelRegisterAdapt.registerEvents(§<y§,§super for return§);
         modelRegisterAdapt.registerAdapt(§%!=§,§!!<§);
         modelRegisterAdapt.registerEvents(§%!=§,§set const get§);
         modelRegister.add(new §1g§(),Vector.<Class>([§7x§,ObjectLoadListener,ObjectUnloadListener,§%!=§]));
         modelRegister.add(new §try const true§(),Vector.<Class>([§case for default§,ObjectLoadListener,§in const import§]));
         modelRegisterAdapt.registerAdapt(§in const import§,§0"F§);
         modelRegisterAdapt.registerEvents(§in const import§,§]S§);
         modelRegisterAdapt.registerAdapt(§switch const for§,§5A§);
         modelRegisterAdapt.registerEvents(§switch const for§,§throw set const§);
         modelRegister.add(new §`!a§(),Vector.<Class>([§override catch§,§switch const for§]));
         modelRegister.add(new §2!3§(),Vector.<Class>([§ d§,ObjectLoadListener]));
         modelRegister.add(new §;0§(),Vector.<Class>([§2"L§,ObjectLoadListener,ObjectUnloadListener,BattleService]));
         modelRegisterAdapt.registerAdapt(§#6§,§2i§);
         modelRegisterAdapt.registerEvents(§#6§,§ " §);
         modelRegister.add(new §extends for import§(),Vector.<Class>([§continue const throw§,§#6§]));
         modelRegisterAdapt.registerAdapt(§@r§,§else const in§);
         modelRegisterAdapt.registerEvents(§@r§,§static const super§);
         modelRegister.add(new §use const const§(),Vector.<Class>([§with for each§,§override const do§,§use null§]));
         modelRegisterAdapt.registerAdapt(§use null§,§class var if§);
         modelRegisterAdapt.registerEvents(§use null§,§4M§);
         modelRegister.add(new §include super§(),Vector.<Class>([§catch for catch§,ObjectLoadPostListener,ObjectUnloadListener,§override const do§,§extends var use§]));
         modelRegister.add(new §set for each§(),Vector.<Class>([§include var§,ObjectLoadPostListener,ObjectUnloadListener,§extends var use§]));
         modelRegister.add(new §include const in§(),Vector.<Class>([§;!@§,§]Z§]));
      }
      
      public function stop(param1:OSGi) : void
      {
      }
   }
}

