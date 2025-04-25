package alternativa.tanks.models.tank
{
   import § !A§.§include const in§;
   import §%`§.§-"F§;
   import §1"O§.§7!G§;
   import §1"O§.§var set static§;
   import §2!X§.§&O§;
   import §2!X§.§function var extends§;
   import §8"W§.§#<§;
   import §8"W§.§3!k§;
   import §8"W§.§["#§;
   import §8"W§.§class var super§;
   import §8"W§.§final for default§;
   import §8"W§.§get const throw§;
   import §9"9§.§8"_§;
   import §>P§.§class var return§;
   import §>P§.§set extends§;
   import §>P§.§static for else§;
   import §["E§.§%!=§;
   import §["E§.§1g§;
   import §["E§.§implements native§;
   import §],§.§while var const§;
   import alternativa.math.Quaternion;
   import alternativa.math.Vector3;
   import alternativa.model.IObjectLoadListener;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.logging.LogService;
   import alternativa.physics.Body;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.register.ClientClass;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§^"K§;
   import alternativa.tanks.battle.events.§const var dynamic§;
   import alternativa.tanks.battle.events.§do const static§;
   import alternativa.tanks.battle.events.§do for finally§;
   import alternativa.tanks.battle.events.§each final§;
   import alternativa.tanks.battle.events.§finally for override§;
   import alternativa.tanks.battle.events.§if var function§;
   import alternativa.tanks.battle.events.§implements in§;
   import alternativa.tanks.battle.events.§implements set const§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§package for null§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.battle.§get var throw§;
   import alternativa.tanks.battle.objects.tank.§1"7§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import alternativa.tanks.battle.objects.tank.§include set break§;
   import alternativa.tanks.battle.objects.tank.§null set else§;
   import alternativa.tanks.battle.objects.tank.tankskin.§8!x§;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.display.usertitle.TitleConfigFlags;
   import alternativa.tanks.display.usertitle.UserTitle;
   import alternativa.tanks.model.panel.IPanel;
   import alternativa.tanks.model.panel.PanelModel;
   import alternativa.tanks.models.battle.battlefield.§;0§;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import alternativa.tanks.models.battlefield.§finally package§;
   import alternativa.tanks.models.tank.spawn.§5n§;
   import alternativa.tanks.models.tank.spawn.§6"h§;
   import alternativa.tanks.models.weapon.§^!h§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.services.initialeffects.§6"!§;
   import alternativa.tanks.services.initialeffects.IInitialEffectsService;
   import alternativa.tanks.services.tankregistry.TankUsersRegistry;
   import alternativa.tanks.utils.DataUnitValidator;
   import alternativa.types.Long;
   import com.alternativaplatform.projects.tanks.client.commons.types.DeathReason;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankParts;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankSpecification;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankState;
   import com.alternativaplatform.projects.tanks.client.models.tank.ClientTank;
   import com.alternativaplatform.projects.tanks.client.models.tank.TankResources;
   import com.alternativaplatform.projects.tanks.client.models.tank.TankSoundScheme;
   import §const set false§.§+"3§;
   import §const set false§.§8!^§;
   import §const set false§.§class var null§;
   import §const set false§.§for set switch§;
   import §const set false§.§implements const set§;
   import §const set false§.§super const break§;
   import §do var dynamic§.§@!Q§;
   import §do var dynamic§.§native const with§;
   import §dynamic package§.§]"P§;
   import §each const with§.§+!j§;
   import §each const with§.§case for class§;
   import §each const with§.§native for implements§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §import import§.§finally for false§;
   import §override const continue§.§%h§;
   import §override const continue§.§true for import§;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import §return in§.§native var use§;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import scpacker.server.models.premium.BattlePremiumService;
   import scpacker.server.models.premium.IBattlePremiumService;
   import scpacker.tanks.WeaponsManager;
   import §static for case§.§<y§;
   import §super const dynamic§.§-"&§;
   import §super const dynamic§.§if import§;
   
   public class §catch for const§ extends §@!Q§ implements §native const with§, §super const break§, §implements const set§, §override const do§, IObjectLoadListener, §finally const class§
   {
      [Inject]
      public static var logService:LogService;
      
      [Inject]
      public static var userPropertiesService:IUserPropertiesService;
      
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var battleUserInfoService:BattleUserInfoService;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var §3"'§:TankUsersRegistry;
      
      [Inject]
      public static var settingsService:ISettingsService;
      
      [Inject]
      public static var §for try§:IInitialEffectsService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private static const § "N§:Number = 0;
      
      private static const §?5§:Number = 135;
      
      private static const §?=§:§finally for false§ = new §finally for false§(0,0,0);
      
      private static const §?W§:int = 5;
      
      private static const §include for function§:Number = 1250;
      
      private static const §case var break§:Number = 80000;
      
      private static const §+i§:int = 4000;
      
      private static const §8b§:Number = -10000;
      
      private static const §if var case§:int = 3000;
      
      private var §const const use§:§throw for try§ = new §throw for try§();
      
      private var §'K§:§return const if§;
      
      private var §0!Q§:§`V§;
      
      private var §6!&§:§catch for default§;
      
      private const §var set super§:§if import§ = new §if import§(new §finally for false§(0,0,0),0,new §finally for false§(0,0,0),new §finally for false§(0,0,0),new §finally for false§(0,0,0));
      
      private const §function set with§:§-"&§ = new §-"&§(0,0);
      
      private const §0<§:Dictionary = new Dictionary();
      
      private var §&!W§:Number = 7000;
      
      private var § !M§:Number = 7050;
      
      private var §!!3§:int;
      
      private var §try const else§:Boolean;
      
      public var §0,§:int;
      
      private var §use const set§:Dictionary;
      
      private var §function if§:Dictionary;
      
      private var §null get§:IModelService;
      
      private var battlefield:§;0§;
      
      private var gui:§#"K§;
      
      private var inventoryModel:§class var return§;
      
      private var §4!]§:§finally package§;
      
      public var §native const import§:§7!n§;
      
      public var tankDataById:Dictionary = new Dictionary();
      
      private var §break set break§:int;
      
      private var §#!t§:Boolean = true;
      
      private var §'!D§:int;
      
      private var §set var implements§:§finally for false§ = new §finally for false§(0,0,0);
      
      private var § "@§:§finally for false§ = new §finally for false§(0,0,0);
      
      private var §include set do§:§finally for false§ = new §finally for false§(0,0,0);
      
      private var §import set catch§:§finally for false§ = new §finally for false§(0,0,0);
      
      private const §+!i§:Quaternion = new Quaternion();
      
      private const §%J§:Quaternion = new Quaternion();
      
      private var §4!@§:§0!s§;
      
      private const §;%§:Vector3 = new Vector3();
      
      private var point:Vector3 = new Vector3();
      
      private var §catch set function§:Vector3 = new Vector3();
      
      private var §]!h§:Vector3 = new Vector3();
      
      private var §native for function§:RayHit = new RayHit();
      
      public var §+]§:TankParts;
      
      private var panelModel:PanelModel;
      
      private var §?Z§:§8!^§;
      
      private var §1!>§:§case for class§;
      
      private var §implements var try§:§each const try§;
      
      private var §9k§:§5n§;
      
      private var §"q§:§-"F§;
      
      private var §with const super§:§"W§;
      
      private var §1s§:int;
      
      private var §each var default§:int;
      
      private var §dynamic var include§:§if import§ = new §if import§(new §finally for false§(0,0,0),0,new §finally for false§(0,0,0),new §finally for false§(0,0,0),new §finally for false§(0,0,0));
      
      private var §9"V§:int;
      
      private var §use var for§:int;
      
      private var §switch for try§:int;
      
      public function §catch for const§()
      {
         super();
         this.§"q§ = new §-"F§();
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§package for null§,this.§1!"§);
         this.§'K§.§import var get§(§do const static§,this.§,!,§);
         this.§'K§.§import var get§(§each final§,this.onSettingsAccepted);
         this.§'K§.§""'§();
         this.§4!@§ = new §0!s§();
         OSGi.getInstance().registerService(§finally const class§,this);
         this.panelModel = PanelModel(OSGi.getInstance().getService(IPanel));
      }
      
      private static function §!"+§(param1:UserTitle, param2:int, param3:String, param4:int, param5:§while var const§, param6:int) : void
      {
         param1.setHealth(param2);
         param1.setLabelText(param3);
         param1.setRank(param4);
         param1.setTeamType(param5);
         param1.setConfiguration(param6);
      }
      
      private static function §do var package§(param1:TankParts) : §8"_§
      {
         var _loc2_:§<y§ = §<y§(param1.hullObject.adapt(§<y§));
         var _loc3_:Sound = _loc2_.§false set import§().engineIdleSound.sound;
         var _loc4_:Sound = _loc2_.§false set import§().engineStartMovingSound.sound;
         var _loc5_:Sound = _loc2_.§false set import§().engineMovingSound.sound;
         var _loc6_:Sound = SoundResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(Long.getLong(0,242699))).sound;
         return new §8"_§(_loc3_,_loc4_,_loc5_,_loc6_);
      }
      
      private static function §continue var in§(param1:§for set switch§) : void
      {
         param1.§get var use§(settingsService.inverseBackDriving);
      }
      
      private static function §while break§(param1:§7!n§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§finally const class§ = null;
         var _loc4_:UserTitle = null;
         var _loc5_:§6"!§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Vector.<§6"!§> = §for try§.§override for default§(param1.user.id);
         if(_loc8_ != null)
         {
            _loc2_ = getTimer();
            _loc4_ = param1.tank.title;
            for each(_loc5_ in _loc8_)
            {
               _loc6_ = _loc2_ - _loc5_.§3"A§;
               _loc7_ = _loc5_.duration - _loc6_;
               if(_loc7_ > 0)
               {
                  _loc4_.showIndicator(_loc5_.effectId,_loc7_,false,_loc5_.effectLevel);
               }
            }
         }
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
      }
      
      public function onTurretDirectionCorrection(param1:Boolean) : void
      {
         var _loc2_:§+"3§ = §7!n§.§extends set var§.tank.§-!y§();
         this.§5!>§(_loc2_.getControl());
         this.§6!&§.reset();
      }
      
      public function §set var const§() : void
      {
         battleService.§try var final§().§1"N§(this.§0!Q§);
         this.§0!Q§.reset();
         battleService.§try var final§().§1"N§(this.§6!&§);
         this.§6!&§.reset();
      }
      
      public function §while do§(param1:int) : void
      {
         this.§5!>§(param1);
         this.§6!&§.reset();
      }
      
      public function readyToSpawn(param1:Tank) : void
      {
         if(param1.tankData.local)
         {
            §+!j§(§7!n§.§extends set var§.user.getParams(§case for class§)).handleReadyToSpawn();
         }
         else
         {
            §native for implements§(param1.tankData.user.getParams(§case for class§)).handleReadyToSpawn();
         }
      }
      
      private function §package const do§() : void
      {
         var _loc1_:§&O§ = §&O§(OSGi.getInstance().getService(§&O§));
         _loc1_.§package const do§();
      }
      
      private function §5!>§(param1:int) : void
      {
         var _loc2_:§+"3§ = this.§-!y§(§7!n§.§extends set var§.user);
         var _loc3_:Tank = §7!n§.§extends set var§.tank;
         this.§2"+§(param1);
         this.§function set with§.angle = _loc2_.§9G§();
         this.§function set with§.control = param1;
         server.§`4§(battleService.§try var final§().§catch static§(),this.§function set with§,_loc3_.incarnation);
      }
      
      [Obfuscation(rename="false")]
      public function rotateTurret(param1:ClientObject, param2:§-"&§) : void
      {
         this.§8"L§(param1,param2.angle,param2.control);
      }
      
      [Obfuscation(rename="false")]
      public function movementControl(param1:ClientObject, param2:int) : void
      {
         this.§override throw§(param1).§each const class§(param2);
      }
      
      [Obfuscation(rename="false")]
      public function moveAndSetTurretState(param1:ClientObject, param2:§if import§, param3:Number) : void
      {
         this.move(param1,param2);
         this.§8"L§(param1,param3,param2.control);
      }
      
      public function §+!y§(param1:ClientObject, param2:§finally for false§, param3:§finally for false§, param4:§finally for false§, param5:§finally for false§, param6:int) : void
      {
         var _loc7_:Tank = this.getTankData(param1).tank;
         if(_loc7_ != null)
         {
            if(§#",§.§implements var return§(param2) && §#",§.§implements var return§(param3) && §#",§.§implements var return§(param4) && §#",§.§implements var return§(param5))
            {
               _loc7_.§each finally§(param2,param3,param4,param5);
            }
            this.§override throw§(param1).§each const class§(param6);
         }
      }
      
      public function §override throw§(param1:ClientObject) : §8!^§
      {
         return §8!^§(param1.getParams(§8!^§));
      }
      
      private function §8"L§(param1:ClientObject, param2:Number, param3:int) : void
      {
         var _loc4_:§+"3§ = null;
         var _loc5_:Tank = this.getTankData(param1).tank;
         if(_loc5_ != null)
         {
            _loc4_ = _loc5_.§-!y§();
            _loc4_.§default var true§(param2);
            _loc4_.§each const class§(param3);
         }
      }
      
      private function §2"+§(param1:int) : void
      {
         if(this.§each var default§ != param1)
         {
            this.§each var default§ = param1;
            this.§package const do§();
         }
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
         this.§"q§.objectUnloaded(param1);
         this.§var do§(param1);
         this.§each catch§(param1);
         delete this.tankDataById[param1.id];
         delete this.§0<§[param1.id];
      }
      
      private function §include for include§(param1:ClientObject) : void
      {
         var _loc2_:§switch catch§ = this.§with finally§(param1);
         if(_loc2_)
         {
            battleService.§try var final§().§<!3§(_loc2_);
            param1.removeParams(§switch catch§);
         }
      }
      
      private function §var do§(param1:ClientObject) : void
      {
         §3"'§.removeUser(param1);
         if(§3"'§.§false native§() == 0)
         {
            battleUserInfoService.§^!]§(this.§4!@§);
         }
      }
      
      private function §'"=§(param1:§7!n§) : void
      {
         var §set var continue§:§7!n§ = param1;
         try
         {
            this.§'K§.dispatchEvent(new §const var dynamic§(§set var continue§.tank,§set var continue§.local));
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      private function §each catch§(param1:ClientObject) : void
      {
         var _loc2_:Tank = this.getTankData(param1).tank;
         this.§include for include§(param1);
         this.removeTankFromBattle(_loc2_);
         this.§]!d§(_loc2_);
         this.§'"=§(_loc2_.tankData);
         this.§!V§(_loc2_);
         _loc2_.destroy();
      }
      
      private function §!V§(param1:Tank) : void
      {
         if(param1.tankData.local)
         {
            §`u§(param1.§&"N§().removeParams(§`u§)).close();
            §final for default§(param1.§&"N§().removeParams(§final for default§)).close();
            §+!j§(param1.§&"N§().getParams(§case for class§)).close();
            §@"J§(param1.§&"N§().removeParams(§@"J§)).close();
            §get const throw§(param1.§&"N§().removeParams(§get const throw§)).close();
            §import var each§.teamType = §while var const§.NONE;
            §3!k§(param1.§&"N§().removeParams(§3!k§)).close();
            §#<§(param1.§&"N§().removeParams(§#<§)).close();
            this.§override throw§(param1.§&"N§()).close();
            §function var extends§(OSGi.getInstance().getService(§&O§)).getPauseSupport().close();
            §class var super§(param1.§&"N§().removeParams(§class var super§)).close();
            §["#§(param1.§&"N§().removeParams(§["#§)).close();
            WeaponsManager.clearSFXModel(param1.§&"N§());
            this.§0!Q§ = null;
            this.§6!&§ = null;
            this.§native const import§.tank = null;
            §7!n§.§extends set var§ = null;
         }
      }
      
      public function §]"?§(param1:String, param2:String) : ClientObject
      {
         var _loc3_:ClientClass = new ClientClass(param1,null,param2);
         return new ClientObject(param1,_loc3_,param2,null);
      }
      
      public function initObject(param1:ClientObject, param2:String, param3:Number, param4:Number, param5:TankSoundScheme, param6:TankParts, param7:TankResources, param8:Number, param9:Number, param10:Number, param11:Number, param12:String = null, param13:int = 0, param14:String = null) : void
      {
         if(this.§null get§ == null)
         {
            this.§const const final§();
         }
         this.registerUser(param1);
         param1.putParams(§"W§,new §"W§(battleUserInfoService.§for var function§(param12),battleUserInfoService.§false try§(param12),true,battleUserInfoService.§false§(param12)));
         this.createData(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14);
      }
      
      private function registerUser(param1:ClientObject) : void
      {
         §3"'§.addUser(param1);
         if(§3"'§.§false native§() == 1)
         {
            battleUserInfoService.§for const null§(this.§4!@§);
         }
      }
      
      private function createData(param1:ClientObject, param2:String, param3:Number, param4:Number, param5:TankSoundScheme, param6:TankParts, param7:TankResources, param8:Number, param9:Number, param10:Number, param11:Number, param12:String = null, param13:int = 0, param14:String = null) : void
      {
         var _loc15_:§7!n§ = new §7!n§();
         _loc15_.user = param1;
         _loc15_.userName = param12 == null ? userPropertiesService.userName : param12;
         _loc15_.mass = param3;
         _loc15_.hull = this.§]"?§(param12 + "_hull",param12 + "_hull");
         _loc15_.turret = WeaponsManager.getObjectFor(param6.turretObject.name);
         WeaponsManager.§final for dynamic§(param1,_loc15_.turret,param8,param9,param10,param11);
         _loc15_.turretObject = param6.turretObject;
         param1.putParams(§catch for const§,_loc15_);
         this.tankDataById[param1.id] = _loc15_;
         §1g§(OSGi.getInstance().getService(§%!=§)).objectLoaded();
      }
      
      public function § "X§(param1:ClientObject, param2:ClientTank, param3:TankParts) : void
      {
         var _loc4_:§7!n§ = this.getTankData(param1);
         _loc4_.local = param2.self;
         _loc4_.§override set var§ = param2.tankSpecification;
         var _loc5_:§+"3§ = this.§2!Q§(_loc4_);
         var _loc6_:§class var null§ = this.§extends switch§(param1);
         var _loc7_:UserTitle = this.§=!k§(_loc4_);
         param1.putParams(UserTitle,_loc7_);
         var _loc8_:§extends for finally§ = this.§4!Y§(_loc4_);
         this.§8"@§(_loc8_,_loc4_);
         var _loc9_:Tank = this.createTank(_loc5_,_loc6_,_loc8_,_loc4_,param3,_loc7_);
         this.§4§(_loc9_);
         this.§for var static§(_loc9_);
         this.§try for var§(_loc9_);
         _loc4_.tank = _loc9_;
         _loc4_.teamType = param2.teamType;
         _loc4_.incarnation = param2.incarnationId;
         _loc4_.user = param1;
         if(_loc4_.local)
         {
            this.§native const import§ = _loc4_;
            this.§if var break§();
            this.§+"%§(_loc4_);
            param1.putParams(§case for class§,new §+!j§(_loc9_));
            _loc9_.§with case§(new §include set break§(_loc9_));
         }
         else
         {
            param1.putParams(§case for class§,new §native for implements§(_loc9_));
            _loc9_.§with case§(new §1"7§(_loc9_));
            this.§get for null§(param1);
         }
         this.§"q§.objectLoadedPost(param1);
         this.§finally native§(_loc4_,param2.tankSpecification,true);
         this.§!!T§(_loc4_);
         this.§'K§.dispatchEvent(new §implements set const§(_loc4_.tank,_loc4_.local));
         if(this.§!!E§(param2))
         {
            this.§set do§(_loc4_,param2);
         }
         if(_loc4_.local)
         {
            §function var extends§(OSGi.getInstance().getService(§&O§)).localTankLoaded();
            §include const in§(ModelRegistry(OSGi.getInstance().getService(ModelRegistry)).getModel(Long.getLong(1286074115,-176946994))).localTankLoaded(param1);
            this.§package const do§();
         }
      }
      
      private function §4§(param1:Tank) : void
      {
         if(param1.tankData.local)
         {
            §7!n§.§extends set var§ = param1.tankData;
         }
      }
      
      private function §!!E§(param1:ClientTank) : Boolean
      {
         return param1.tankState != null && param1.health > 0;
      }
      
      private function §if var break§() : void
      {
         this.§'K§.§const var false§();
         this.§'K§.§""'§();
      }
      
      private function §try for var§(param1:Tank) : void
      {
         var _loc2_:DataUnitValidator = param1.§4!§();
         param1.§&"N§().putParams(§`u§,new §`u§(_loc2_));
      }
      
      private function §for var static§(param1:Tank) : void
      {
         var _loc2_:§8!^§ = null;
         var _loc3_:§for set switch§ = null;
         if(param1.tankData.local)
         {
            _loc3_ = new §for set switch§(param1,this);
            _loc3_.lock(§null set else§.DEAD);
            §continue var in§(_loc3_);
            _loc2_ = _loc3_;
            param1.tankData.user.putParams(§#<§,new §#<§(_loc3_));
         }
         else
         {
            _loc2_ = new §8!^§(param1);
            _loc2_.lock(§null set else§.DEAD);
         }
         param1.§&"N§().putParams(§8!^§,_loc2_);
      }
      
      public function §super const switch§(param1:ClientObject, param2:int) : void
      {
         this.§override throw§(param1).lock(param2);
         this.§-!y§(param1).lock(param2);
      }
      
      public function §,"8§(param1:ClientObject, param2:int) : void
      {
         this.§override throw§(param1).unlock(param2);
         this.§-!y§(param1).unlock(param2);
      }
      
      public function §-!y§(param1:ClientObject) : §+"3§
      {
         return §+"3§(param1.getParams(§+"3§));
      }
      
      public function §extends switch§(param1:ClientObject) : §class var null§
      {
         return §class var null§(param1.getParams(§class var null§));
      }
      
      private function §get for null§(param1:ClientObject) : void
      {
         var _loc2_:§switch catch§ = new §switch catch§(this.getTankData(param1).tank,this.§^u§,4000,2000);
         param1.putParams(§switch catch§,_loc2_);
         battleService.§try var final§().§finally var false§(_loc2_);
      }
      
      private function §^u§(param1:ClientObject, param2:§finally for false§, param3:§finally for false§) : void
      {
         this.§+!y§(param1,param2,param3,§?=§,§?=§,0);
         this.getTankData(param1).tank.§<J§().saveState();
      }
      
      private function §!!T§(param1:§7!n§) : void
      {
         var _loc2_:§true for import§ = §true for import§(OSGi.getInstance().getService(§true for import§));
         if(!_loc2_.isLoaded(param1.userName))
         {
            §%h§(OSGi.getInstance().getService(§#"K§)).userConnect(_loc2_.getShortUserInfo(param1.userName));
         }
      }
      
      private function §2!Q§(param1:§7!n§) : §+"3§
      {
         var _loc2_:§+"3§ = null;
         var _loc3_:§class var null§ = null;
         if(param1.local)
         {
            _loc3_ = this.§false break§().§extends switch§(param1);
            _loc2_ = _loc3_.§-!y§();
            _loc2_.setListener(this);
            param1.user.putParams(§class var null§,_loc3_);
         }
         else
         {
            _loc2_ = new §+"3§(true,this,param1);
         }
         param1.user.putParams(§+"3§,_loc2_);
         return _loc2_;
      }
      
      private function §4!Y§(param1:§7!n§) : §extends for finally§
      {
         var _loc2_:§^!h§ = §catch set null§.§case for continue§(param1.turret);
         if(param1.local)
         {
            return _loc2_.§ !i§(param1.user);
         }
         return _loc2_.§override default§(param1.user);
      }
      
      private function §8"@§(param1:§extends for finally§, param2:§7!n§) : void
      {
         if(param2.local)
         {
            param2.user.putParams(§#!q§,new §3!E§(param1));
         }
         else
         {
            param2.user.putParams(§#!q§,new §in const catch§(param1));
         }
      }
      
      public function §2!7§() : void
      {
         var _loc4_:§7!n§ = null;
         var _loc1_:ClientObject = null;
         var _loc2_:§finally const class§ = null;
         var _loc3_:Tank = null;
         for each(_loc1_ in §3"'§.§import if§())
         {
            _loc4_ = this.getTankData(_loc1_);
            if(_loc4_ != §7!n§.§extends set var§)
            {
               _loc3_ = _loc4_.tank;
               if(_loc3_ != null)
               {
                  this.§?!m§(_loc4_);
                  §while break§(_loc4_);
               }
            }
         }
      }
      
      public function §?!m§(param1:§7!n§) : void
      {
         var _loc2_:* = 0;
         var _loc3_:§"W§ = null;
         var _loc4_:Tank = null;
         var _loc5_:Tank = null;
         if(§7!n§.§extends set var§ != null)
         {
            _loc5_ = §7!n§.§extends set var§.tank;
            if(_loc5_.tankData.teamType != null)
            {
               _loc2_ = TitleConfigFlags.LABEL | TitleConfigFlags.EFFECTS;
               _loc3_ = this.§<f§(param1.user);
               _loc4_ = param1.tank;
               if(§7!n§.§extends set var§ != null && _loc4_.§4r§(_loc5_.tankData.teamType))
               {
                  _loc2_ |= TitleConfigFlags.HEALTH;
               }
               §!"+§(param1.tank.title,_loc4_.tankData.health,_loc3_.name,_loc3_.rank,_loc4_.tankData.teamType,_loc2_);
            }
         }
         if(battleInfoService.isSpectatorMode())
         {
            _loc2_ = TitleConfigFlags.LABEL | TitleConfigFlags.EFFECTS | TitleConfigFlags.HEALTH;
            _loc3_ = this.§<f§(param1.user);
            _loc4_ = param1.tank;
            §!"+§(param1.tank.title,_loc4_.tankData.health,_loc3_.name,_loc3_.rank,_loc4_.tankData.teamType,_loc2_);
         }
      }
      
      private function §=!k§(param1:§7!n§) : UserTitle
      {
         var _loc2_:UserTitle = null;
         var _loc3_:§"W§ = null;
         var _loc4_:§,6§ = battleService.§catch include§();
         if(param1.local)
         {
            _loc2_ = new UserTitle(§ "N§,_loc4_.§+g§(),10000,true);
            _loc3_ = this.§<f§(param1.user);
            _loc2_.setRank(_loc3_.rank);
            _loc2_.setLabelText(_loc3_.name);
            _loc2_.setConfiguration(TitleConfigFlags.HEALTH | TitleConfigFlags.WEAPON | TitleConfigFlags.EFFECTS);
         }
         else
         {
            _loc2_ = new UserTitle(§?5§,_loc4_.§in case§(),10000,false);
            _loc2_.setSuspicious(battleUserInfoService.§super const try§(param1.userName));
            _loc2_.setPremium(BattlePremiumService(OSGi.getInstance().getService(IBattlePremiumService)).hasUserPremium(param1.userName));
         }
         return _loc2_;
      }
      
      public function getTitle(param1:ClientObject) : UserTitle
      {
         return UserTitle(param1.getParams(UserTitle));
      }
      
      public function §<f§(param1:ClientObject) : §"W§
      {
         return §"W§(param1.getParams(§"W§));
      }
      
      public function activateTank(param1:ClientObject) : void
      {
         var _loc2_:§7!n§ = this.getTankData(param1);
         if(_loc2_ == null || _loc2_.tank == null)
         {
            return;
         }
         _loc2_.tank.§%!z§();
         this.§const for package§(param1).§package for get§();
         this.§const for package§(param1).§finally var use§(§null set else§.DEAD | §null set else§.DISABLED);
         if(_loc2_.local)
         {
            _loc2_.tank.§break const include§(_loc2_.tank.§9!=§() | §]"P§.§4""§);
            this.§'K§.dispatchEvent(new §finally for override§(_loc2_.tank));
         }
         this.§'K§.dispatchEvent(new §^"K§(_loc2_.tank));
         this.§]!d§(_loc2_.tank);
      }
      
      public function §const for package§(param1:ClientObject) : §#!q§
      {
         return §#!q§(param1.getParams(§#!q§));
      }
      
      public function setTemperature(param1:ClientObject, param2:Number) : void
      {
         var _loc3_:§7!n§ = this.getTankData(param1);
         if(_loc3_ == null || _loc3_.tank == null)
         {
            return;
         }
         this.§;!y§(_loc3_.tank,param2);
      }
      
      public function getTankData(param1:ClientObject) : §7!n§
      {
         if(param1 == null)
         {
            return null;
         }
         return §7!n§(param1.getParams(§catch for const§));
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function move(param1:ClientObject, param2:§if import§) : void
      {
         this.§0%§(param1,param2);
         this.§="a§(param1,param2);
      }
      
      private function §case each§(param1:ClientObject, param2:§if import§) : void
      {
         var _loc3_:Body = null;
         var _loc4_:Number = NaN;
         var _loc5_:Tank = this.getTankData(param1).tank;
         if(_loc5_ != null)
         {
            _loc3_ = _loc5_.§<J§();
            _loc4_ = 0.5;
            this.§<!Z§(_loc4_,_loc3_.state.position,param2.position,param2.position);
            this.§<!Z§(_loc4_,_loc3_.state.velocity,param2.linearVelocity,param2.linearVelocity);
            this.§<!Z§(_loc4_,_loc3_.state.angularVelocity,param2.angularVelocity,param2.angularVelocity);
            this.§[";§(_loc4_,_loc3_.state.orientation,param2.orientation,param2.orientation);
         }
      }
      
      private function §="a§(param1:ClientObject, param2:§if import§) : void
      {
         this.§+!y§(param1,param2.position,param2.orientation,param2.linearVelocity,param2.angularVelocity,param2.control);
      }
      
      private function §0%§(param1:ClientObject, param2:§if import§) : void
      {
         var _loc3_:§switch catch§ = this.§with finally§(param1);
         _loc3_.§?s§(param2.position,param2.orientation);
         this.§case each§(param1,param2);
      }
      
      public function §with finally§(param1:ClientObject) : §switch catch§
      {
         return §switch catch§(param1.getParams(§switch catch§));
      }
      
      private function §<!Z§(param1:Number, param2:Vector3, param3:§finally for false§, param4:§finally for false§) : void
      {
         param4.x = param2.x + (param3.x - param2.x) * param1;
         param4.y = param2.y + (param3.y - param2.y) * param1;
         param4.z = param2.z + (param3.z - param2.z) * param1;
      }
      
      private function §[";§(param1:Number, param2:Quaternion, param3:§finally for false§, param4:§finally for false§) : void
      {
         this.§+!i§.setFromEulerAnglesXYZ(param3.x,param3.y,param3.z);
         this.§%J§.slerp(param2,this.§+!i§,param1);
         this.§%J§.getEulerAngles(this.§;%§);
         param4.x = this.§;%§.x;
         param4.y = this.§;%§.y;
         param4.z = this.§;%§.z;
      }
      
      public function §2""§(param1:Tank) : void
      {
         var _loc2_:Dictionary = battleService.§5W§();
         _loc2_[param1.§<M§().§0[§()] = true;
         _loc2_[param1.§<M§().§+S§()] = true;
      }
      
      private function §]!d§(param1:Tank) : void
      {
         var _loc2_:Dictionary = battleService.§5W§();
         delete _loc2_[param1.§<M§().§0[§()];
         delete _loc2_[param1.§<M§().§+S§()];
      }
      
      public function §;"%§(param1:Tank) : void
      {
         this.§0<§[param1.tankData.userName] = param1;
         param1.§catch continue§(§;0§(OSGi.getInstance().getService(BattleService)));
         this.§'K§.dispatchEvent(new §if var function§(param1,param1.tankData.local));
      }
      
      public function removeTankFromBattle(param1:Tank) : void
      {
         if(this.§0<§[param1.§&"N§().id])
         {
            delete this.§0<§[param1.§&"N§().id];
            param1.§in const var§();
            battleEventDispatcher.dispatchEvent(new §implements in§(param1));
         }
      }
      
      private function §1!"§(param1:§package for null§) : void
      {
         this.§ "]§();
      }
      
      private function § "]§() : void
      {
         var _loc1_:ClientObject = null;
         var _loc2_:Tank = null;
         for each(_loc2_ in this.§0<§)
         {
            if(_loc2_ != null)
            {
               _loc2_.disable();
               this.§super const switch§(_loc2_.§&"N§(),§null set else§.DISABLED);
               _loc2_.tankData.enabled = false;
               this.§const for package§(_loc2_.§&"N§()).§switch in§(§null set else§.DISABLED,false);
            }
         }
      }
      
      private function §,!,§(param1:§do const static§) : void
      {
         var _loc2_:ClientObject = null;
         var _loc3_:Tank = null;
         for each(_loc3_ in this.§0<§)
         {
            this.removeTankFromBattle(_loc3_);
         }
      }
      
      public function prepareToSpawn(param1:ClientObject, param2:§finally for false§, param3:§finally for false§) : void
      {
         if(this.§native const import§ != null && param1 == this.§native const import§.user)
         {
            this.§implements var try§.§3"I§(param2,param3);
            this.§throw var null§();
            this.§9k§ = new §5n§(battleService.§2x§(),object);
            battleService.§try var final§().§finally var false§(this.§9k§);
         }
      }
      
      public function setReadyToPlace() : void
      {
         this.§throw var null§();
         server.setReadyToPlace();
      }
      
      private function §throw var null§() : void
      {
         if(this.§9k§)
         {
            battleService.§try var final§().§<!3§(this.§9k§);
            this.§9k§ = null;
         }
      }
      
      public function spawn(param1:ClientObject, param2:TankSpecification, param3:§while var const§, param4:§finally for false§, param5:§finally for false§, param6:int, param7:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:§switch catch§ = null;
         var _loc10_:§7!n§ = this.getTankData(param1);
         if(_loc10_.local)
         {
            §import var each§.teamType = param3;
         }
         _loc10_.enabled = true;
         _loc10_.incarnation = param7;
         _loc10_.teamType = param3;
         var _loc11_:Tank = _loc10_.tank;
         this.removeTankFromBattle(_loc11_);
         _loc11_.spawn(param3,param7);
         _loc11_.§get var try§();
         this.§1"V§(_loc10_,param6);
         this.§,"8§(param1,§null set else§.DEAD | §null set else§.DISABLED);
         _loc8_ = this.§<f§(_loc10_.user).isLocal ? int(this.§override throw§(param1).§use const extends§()) : int(0);
         this.§+!y§(_loc10_.user,param4,param5,§?=§,§?=§,_loc8_);
         _loc9_ = this.§with finally§(param1);
         if(_loc9_)
         {
            _loc9_.§?s§(param4,param5);
         }
         if(_loc10_.local)
         {
            this.§2""§(_loc11_);
            this.§set var const§();
            battleService.§^5§();
            battleService.§=-§();
            battleService.§try var final§().§continue const import§(_loc11_.§<J§());
            _loc11_.title.show();
            this.§2!7§();
         }
         else
         {
            this.§2""§(_loc11_);
            this.§?!m§(_loc11_.tankData);
            this.§-!y§(_loc11_.§&"N§()).§each const class§(0);
         }
         this.§finally native§(_loc10_,param2,true);
         this.§;"%§(_loc10_.tank);
         if(_loc10_.local)
         {
            _loc10_ = this.§native const import§;
            this.§'!D§ = getTimer() + §;0§(battleService).getRespawnInvulnerabilityPeriod();
            this.§#!t§ = false;
         }
      }
      
      public function kill(param1:ClientObject, param2:DeathReason, param3:String) : void
      {
         this.die(param1);
         battleEventDispatcher.dispatchEvent(new §var set static§(param3,param1.id));
      }
      
      public function die(param1:ClientObject) : void
      {
         var _loc2_:§7!n§ = this.getTankData(param1);
         if(_loc2_ == null || _loc2_.tank == null)
         {
            return;
         }
         if(_loc2_.local)
         {
            this.§break for super§(true);
            battleService.§null const in§();
            battleService.§""9§();
            battleEventDispatcher.dispatchEvent(§do for finally§.EVENT);
         }
         _loc2_.enabled = false;
         _loc2_.health = 0;
         this.§const for package§(_loc2_.user).§switch in§(§null set else§.DEAD,false);
         this.§const for package§(_loc2_.user).§true const with§();
         _loc2_.tank.kill();
         _loc2_.tank.disable();
         _loc2_.spawnState = §extends var dynamic§.DEAD;
         _loc2_.tank.§break const include§(_loc2_.tank.§9!=§() & ~§]"P§.§4""§);
         this.§super const switch§(param1,§null set else§.DEAD);
         this.§finally extends§(_loc2_);
         battleService.§try var final§().§finally var false§(new §6"h§(getTimer() + 3000,_loc2_.tank));
         battleEventDispatcher.dispatchEvent(new §7!G§(_loc2_.tank));
      }
      
      public function changeHealth(param1:ClientObject, param2:int) : void
      {
         var _loc3_:§7!n§ = this.getTankData(param1);
         if(_loc3_ == null || _loc3_.tank == null)
         {
            return;
         }
         this.§1"V§(_loc3_,param2);
      }
      
      public function changeSpecification(param1:ClientObject, param2:TankSpecification, param3:Boolean) : void
      {
         var _loc4_:§7!n§ = this.getTankData(param1);
         if(_loc4_ == null || _loc4_.tank == null)
         {
            return;
         }
         this.§finally native§(_loc4_,param2,param3);
      }
      
      public function update(param1:Tank, param2:int, param3:int, param4:Number, param5:Number, param6:Vector3) : void
      {
         if(param1.tankData.local)
         {
            this.§with function§(param2,param3);
         }
      }
      
      public function §package const in§() : Dictionary
      {
         return this.§0<§;
      }
      
      public function effectStarted(param1:ClientObject, param2:int, param3:int, param4:Boolean, param5:int) : void
      {
         var _loc6_:UserTitle = null;
         var _loc7_:int = 0;
         var _loc8_:ClientObject = §3"'§.§&"N§(param1.id);
         var _loc9_:Boolean = true;
         if(_loc8_ != null)
         {
            _loc6_ = this.getTitle(param1);
            if(_loc6_ != null)
            {
               if(_loc6_.hasAnyFlag(TitleConfigFlags.EFFECTS))
               {
                  _loc9_ = false;
                  _loc7_ = this.§switch continue§(param2,param3);
                  _loc6_.showIndicator(param2,_loc7_,param4,param5);
               }
            }
         }
         if(_loc9_)
         {
            §for try§.addInitialEffect(param1.id,param2,param3,param5);
         }
      }
      
      private function §switch continue§(param1:int, param2:int) : int
      {
         return int(param2);
      }
      
      public function effectStopped(param1:ClientObject, param2:int, param3:Boolean) : void
      {
         var _loc4_:UserTitle = null;
         §for try§.§7"H§(param1.id,param2);
         var _loc5_:ClientObject = §3"'§.§&"N§(param1.id);
         if(_loc5_ != null)
         {
            _loc4_ = this.getTitle(param1);
            if(_loc4_ != null)
            {
               _loc4_.hideIndicator(param2,param3);
            }
         }
      }
      
      private function §dynamic const get§(param1:int) : Boolean
      {
         return param1 == §set extends§.§>"R§;
      }
      
      private function §const const final§() : void
      {
         this.§null get§ = IModelService(OSGi.getInstance().getService(IModelService));
         this.gui = OSGi.getInstance().getService(§#"K§) as §#"K§;
         this.inventoryModel = §class var return§(this.§null get§.getModelsByInterface(§class var return§)[0]);
      }
      
      private function §set do§(param1:§7!n§, param2:ClientTank) : void
      {
         param1.enabled = true;
         var _loc3_:TankState = param2.tankState;
         param1.tank.spawn(param1.teamType,param1.incarnation);
         this.§1"V§(param1,param2.health);
         if(param2.health <= 0)
         {
            param1.tank.§<M§().§3!?§();
            param1.tank.title.hide();
            this.§super const switch§(param1.user,§null set else§.DEAD);
         }
         else
         {
            this.§,"8§(param1.user,§null set else§.ALL);
            param1.tank.title.show();
            this.§?!m§(param1);
            this.§const for package§(param1.user).§package for get§();
            this.§const for package§(param1.user).§finally var use§(§null set else§.ALL);
         }
         this.§+!y§(param1.user,_loc3_.position,_loc3_.orientation,§?=§,§?=§,_loc3_.control);
         this.§8"L§(param1.user,_loc3_.turretAngle,_loc3_.turretControl);
         switch(param2.spawnState)
         {
            case §extends var dynamic§.§4O§:
               param1.tank.§get var try§();
               break;
            case §extends var dynamic§.§<"]§:
               param1.tank.§%!z§();
         }
         this.§;"%§(param1.tank);
      }
      
      private function §+"%§(param1:§7!n§) : void
      {
         param1.user.putParams(§final for default§,new §final for default§(param1.tank,10000));
         §continue var in§(§for set switch§(this.§override throw§(param1.user)));
         this.§implements var try§ = new §each const try§(battleService.§var const const§());
         this.§0!Q§ = new §`V§(param1.tank,this.§0<§);
         this.§6!&§ = new §catch for default§(param1.tank);
         var _loc2_:§@"J§ = new §@"J§(param1.tank,this.§0<§);
         param1.user.putParams(§@"J§,_loc2_);
         battleService.§catch include§().§3-§(_loc2_);
         battleService.§9"K§(param1.tank);
         param1.user.putParams(§3!k§,new §3!k§(param1.tank));
         param1.user.putParams(§["#§,new §["#§(param1.tank));
         param1.user.putParams(§class var super§,new §class var super§(param1.user));
         battleService.§?!d§();
      }
      
      private function onSettingsAccepted(param1:§each final§) : void
      {
         if(this.§override throw§(§7!n§.§extends set var§.user) != null)
         {
            §continue var in§(§for set switch§(this.§override throw§(§7!n§.§extends set var§.user)));
         }
      }
      
      public function §`"g§() : void
      {
         battleService.§try var final§().§case set throw§(this.§0!Q§);
         battleService.§try var final§().§case set throw§(this.§6!&§);
      }
      
      public function §continue else§(param1:int) : void
      {
         this.§0!Q§.§+"=§();
      }
      
      public function §break for super§(param1:Boolean) : void
      {
         var _loc2_:§8!^§ = this.§override throw§(this.§native const import§.user);
         this.§4!X§(_loc2_.§use const extends§(),param1);
         this.§0!Q§.reset();
      }
      
      private function §4!X§(param1:int, param2:Boolean) : void
      {
         var _loc3_:Tank = null;
         if(this.§0<§[§7!n§.§extends set var§.userName] != null)
         {
            _loc3_ = §7!n§.§extends set var§.tank;
            this.§function finally§(param1);
            _loc3_.§`"[§(this.§var set super§.position,this.§var set super§.orientation,this.§var set super§.linearVelocity,this.§var set super§.angularVelocity);
            this.§var set super§.control = param1 | this.§-!y§(§7!n§.§extends set var§.user).getControl();
            this.§8T§(battleService.§try var final§().§catch static§(),param2);
         }
      }
      
      private function §<"9§(param1:int, param2:Boolean) : void
      {
         var _loc3_:§finally const class§ = null;
         var _loc4_:Tank = null;
         var _loc5_:int = 0;
         if(this.§0<§[§7!n§.§extends set var§.userName] != null)
         {
            _loc4_ = §7!n§.§extends set var§.tank;
            this.§function finally§(param1);
            _loc4_.§,"9§(this.§var set super§.position,this.§var set super§.orientation,this.§var set super§.linearVelocity,this.§var set super§.angularVelocity);
            this.§var set super§.control = param1;
            _loc5_ = battleService.§try var final§().§catch static§() - §get var throw§.§ h§;
            this.§8T§(_loc5_,param2);
         }
      }
      
      public function §>!v§(param1:Boolean) : void
      {
         var _loc2_:§8!^§ = this.§override throw§(§7!n§.§extends set var§.user);
         this.§<"9§(_loc2_.§use const extends§(),true);
      }
      
      private function §function finally§(param1:int) : void
      {
         if(this.§1s§ != param1)
         {
            this.§1s§ = param1;
            this.§package const do§();
         }
      }
      
      private function §8T§(param1:int, param2:Boolean) : void
      {
         if(param1 <= this.§9"V§)
         {
            return;
         }
         if(param2)
         {
            server.§static for get§(param1,§import var each§.§switch var return§(),this.§var set super§,this.§-!y§(§7!n§.§extends set var§.user).§9G§());
            § "0§.§68§(this.§var set super§,this.§dynamic var include§);
            this.§9"V§ = param1;
         }
         else if(§ "0§.§7""§(this.§var set super§,this.§dynamic var include§))
         {
            if(this.§var set super§.control != this.§dynamic var include§.control)
            {
               this.§extends const try§(param1,this.§var set super§.control);
            }
         }
         else
         {
            this.§4#§(param1,this.§var set super§);
         }
      }
      
      private function §extends const try§(param1:int, param2:int) : void
      {
         if(param1 <= this.§use var for§ || param1 <= this.§switch for try§)
         {
            return;
         }
         server.§function implements§(param1,§import var each§.§switch var return§(),param2);
         this.§dynamic var include§.control = param2;
         this.§switch for try§ = param1;
      }
      
      private function §4#§(param1:int, param2:§if import§) : void
      {
         if(param1 <= this.§use var for§)
         {
            return;
         }
         server.§continue for if§(param1,§import var each§.§switch var return§(),param2);
         § "0§.§68§(param2,this.§dynamic var include§);
         this.§use var for§ = param1;
      }
      
      private function §4r§(param1:§while var const§, param2:§while var const§) : Boolean
      {
         return param1 != §while var const§.NONE && param1 == param2;
      }
      
      private function §finally extends§(param1:§7!n§) : void
      {
         battleService.§catch include§().§override for native§(new §implements native§(param1));
      }
      
      private function §false break§() : §native var use§
      {
         var _loc1_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         return _loc1_.getModelsByInterface(§native var use§)[0] as §native var use§;
      }
      
      public function §include var extends§(param1:ClientObject) : void
      {
         Network(OSGi.getInstance().getService(INetworker)).send("battle;activate_tank");
      }
      
      private function §with function§(param1:int, param2:int) : void
      {
         if(this.§native const import§.enabled)
         {
            if(this.§native const import§.spawnState != §extends var dynamic§.§<"]§ && param1 >= this.§'!D§ && this.§native const import§.tank.§'C§ == 0)
            {
               this.§'!D§ = int.MAX_VALUE;
               this.§include var extends§(this.§native const import§.user);
            }
         }
      }
      
      private function §1"V§(param1:§7!n§, param2:int) : void
      {
         param1.health = param2;
         this.getTitle(param1.user).setHealth(param2);
         var _loc3_:int = 10000;
         if(param1.local)
         {
            this.inventoryModel.§>-§(§set extends§.§>"R§,§static for else§.§try for final§,param2 >= _loc3_);
         }
      }
      
      private function §finally native§(param1:§7!n§, param2:TankSpecification, param3:Boolean) : void
      {
         param1.tank.§,!@§(§#",§.§8! §(param2.speed),param3);
         param1.tank.setMaxTurnSpeed(param2.turnSpeed,param3);
         param1.tank.§get const include§(§#",§.§8! §(param2.acceleration));
         param1.tank.§include const function§(§#",§.§8! §(param2.reverseAcceleration));
         param1.tank.§^"C§(§#",§.§8! §(param2.sideAcceleration));
         param1.tank.setTurnAcceleration(param2.turnAcceleration);
         param1.tank.§switch set with§(param2.reverseTurnAcceleration);
         param1.tank.§-!y§().setMaxTurnSpeed(param2.turretRotationSpeed,true);
         param1.tank.§-!y§().setTurnAcceleration(param2.turretTurnAcceleration);
      }
      
      private function createTank(param1:§+"3§, param2:§class var null§, param3:§extends for finally§, param4:§7!n§, param5:TankParts, param6:UserTitle) : Tank
      {
         var _loc7_:§8"_§ = §do var package§(param5);
         var _loc8_:§8!x§ = new §8!x§(param5.hullObject,param5.turretObject,param5.coloringObject,ImageResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(Long.getLong(0,97860))));
         var _loc9_:int = 10000;
         var _loc10_:Tank = new Tank(_loc8_,param1,_loc7_,param2,param3,param6,param4.mass,param4.local,battleEventDispatcher,_loc9_,50,25,param4.§override set var§.dampingCoeff);
         _loc10_.tankData = param4;
         return _loc10_;
      }
      
      private function §;!y§(param1:Tank, param2:Number) : void
      {
         param1.setTemperature(param2);
      }
   }
}

