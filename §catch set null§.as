package
{
   import § !A§.§include const in§;
   import §#q§.§0"A§;
   import §%!Z§.§8"h§;
   import §%!Z§.§]"+§;
   import §&S§.§in const implements§;
   import §2!P§.§`"7§;
   import §2L§.§%!x§;
   import §2L§.§%" §;
   import §4"D§.§switch for continue§;
   import §4%§.§?"@§;
   import §5!Y§.§1U§;
   import §5!Y§.§native var function§;
   import §5"H§.§2!3§;
   import §7![§.§3!h§;
   import §7"O§.§6"Y§;
   import §8!1§.§else for§;
   import §8"I§.§<7§;
   import §8=§.§>X§;
   import §8=§.§^!$§;
   import §9!D§.§!!k§;
   import §9!D§.§3"Q§;
   import §9!D§.§;!;§;
   import §9"9§.§case var false§;
   import §;!S§.§override var native§;
   import §;",§.§2"P§;
   import §<s§.§extends const if§;
   import §>P§.§class var return§;
   import §@!p§.§'O§;
   import §@"?§.§!!i§;
   import §["E§.§%!=§;
   import §["E§.§1g§;
   import §]"h§.§function var class§;
   import §],§.§while var const§;
   import §]2§.§"!4§;
   import §]l§.§const const set§;
   import §]l§.§with set static§;
   import §^!<§.§"!t§;
   import §^!S§.§0K§;
   import §^"f§.§@!6§;
   import §`j§.§include super§;
   import alternativa.init.BattlefieldGUIActivator;
   import alternativa.init.BattlefieldModelActivator;
   import alternativa.init.BattlefieldSharedActivator;
   import alternativa.init.TanksWarfareActivator;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.register.ClientClass;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import alternativa.tanks.models.battle.battlefield.§;0§;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import alternativa.tanks.models.battle.gui.chat.ChatModel;
   import alternativa.tanks.models.battle.gui.chat.§return const true§;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.models.weapon.§^!h§;
   import alternativa.tanks.models.weapon.shaft.§3"G§;
   import alternativa.tanks.models.weapon.smoky.§;O§;
   import alternativa.tanks.service.money.IMoneyService;
   import alternativa.tanks.services.initialeffects.IInitialEffectsService;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import alternativa.types.Long;
   import §catch const package§.§!!@§;
   import §catch const package§.§&"1§;
   import §catch const package§.§extends for for§;
   import §catch const package§.§implements package§;
   import §catch const package§.§in set set§;
   import §catch for do§.§]!V§;
   import §catch for do§.§do for catch§;
   import §catch for do§.§else set var§;
   import com.alternativaplatform.projects.tanks.client.commons.types.DeathReason;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankParts;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankSpecification;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankState;
   import com.alternativaplatform.projects.tanks.client.models.battlefield.BattleBonus;
   import com.alternativaplatform.projects.tanks.client.models.battlefield.BattlefieldSoundScheme;
   import com.alternativaplatform.projects.tanks.client.models.tank.ClientTank;
   import §continue false§.§set for each§;
   import §dynamic set use§.§9`§;
   import §dynamic set use§.§throw var for§;
   import §extends const const§.§>!t§;
   import §extends get§.§,!U§;
   import §final for do§.§var for with§;
   import §finally set final§.§+"§;
   import §finally set final§.§return for continue§;
   import flash.utils.Dictionary;
   import §import const static§.§!"T§;
   import §import import§.§finally for false§;
   import §import var true§.§9!d§;
   import §import var true§.§extends for true§;
   import §override const continue§.§%h§;
   import §override const continue§.§true for import§;
   import §package for switch§.§const for true§;
   import §package for§.§override const true§;
   import §package function§.§case const while§;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.GameTypeRegistry;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.registry.SpaceRegistry;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   import platform.client.fp10.core.service.errormessage.IErrorMessageService;
   import platform.client.fp10.core.type.IGameObject;
   import platform.client.fp10.core.type.ISpace;
   import platform.client.fp10.core.type.impl.GameClass;
   import platform.client.fp10.core.type.impl.GameObject;
   import platform.client.fp10.core.type.impl.Space;
   import projects.tanks.client.battleservice.model.statistics.§"W§;
   import projects.tanks.client.battleservice.model.statistics.§^!`§;
   import projects.tanks.client.battleservice.model.statistics.§var set do§;
   import projects.tanks.client.commons.models.coloring.ColoringCC;
   import projects.tanks.client.garage.models.item.object3ds.Object3DSCC;
   import projects.tanks.client.users.services.chatmoderator.ChatModeratorLevel;
   import projects.tanks.clients.flash.resources.resource.MapResource;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import scpacker.gui.ServerMessage;
   import scpacker.gui.§set for true§;
   import scpacker.networking.INetworkListener;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import scpacker.networking.commands.Command;
   import scpacker.networking.commands.Type;
   import scpacker.server.models.inventory.ServerInventoryData;
   import scpacker.server.models.inventory.ServerInventoryModel;
   import scpacker.server.models.premium.BattlePremiumService;
   import scpacker.server.models.premium.IBattlePremiumService;
   import scpacker.tanks.WeaponsManager;
   import scpacker.utils.BonusCludge;
   import §set var catch§.§[",§;
   import §set var catch§.§switch const get§;
   import §static var break§.§<!=§;
   import §super const dynamic§.§-"&§;
   import §super const dynamic§.§if import§;
   import §super for implements§.§&8§;
   import §true for package§.§!"!§;
   import §true for package§.§2"?§;
   import §try include§.§]"G§;
   import §with const else§.§final var false§;
   
   public class §catch set null§ implements INetworkListener
   {
      public static var §use var import§:Dictionary;
      
      public static var client:ClientObject;
      
      private static var §3!1§:§0K§;
      
      private static var §in const const§:§;O§;
      
      private static var §finally var else§:§var for with§;
      
      private static var §%X§:§3!h§;
      
      private static var §4a§:§&8§;
      
      private static var §else var false§:§override var native§;
      
      private static var §+w§:§@!6§;
      
      private static var §throw const finally§:§2"P§;
      
      private static var §'"V§:§3"G§;
      
      [Inject]
      public static var userPropertiesService:IUserPropertiesService = OSGi.getInstance().getService(IUserPropertiesService) as IUserPropertiesService;
      
      [Inject]
      public static var moneyService:IMoneyService = OSGi.getInstance().getService(IMoneyService) as IMoneyService;
      
      public static var resourceRegistry:ResourceRegistry = OSGi.getInstance().getService(ResourceRegistry) as ResourceRegistry;
      
      public static var modelRegistry:ModelRegistry = OSGi.getInstance().getService(ModelRegistry) as ModelRegistry;
      
      public static var gameTypeRegistry:GameTypeRegistry = OSGi.getInstance().getService(GameTypeRegistry) as GameTypeRegistry;
      
      private var battle:BattlefieldModelActivator;
      
      private var §return with§:ServerInventoryModel = new ServerInventoryModel();
      
      private var §?"=§:§"!t§;
      
      private var §;"G§:§<7§;
      
      private var §var var native§:§switch for continue§;
      
      private var §do final§:§9`§;
      
      private var §extends const in§:§const for true§;
      
      private var §true if§:§>!t§;
      
      private var §2"X§:ChatModel;
      
      private var §>!b§:BattlePremiumService;
      
      private var §+!o§:§2!3§;
      
      private var §64§:§include super§;
      
      private var §while return§:§set for each§;
      
      private var §break const§:ISpace;
      
      public function §catch set null§()
      {
         super();
         this.§break const§ = new Space(Long.getLong(10568210,51255591),null,null,false);
         SpaceRegistry(OSGi.getInstance().getService(SpaceRegistry)).addSpace(this.§break const§);
         var _loc1_:TanksWarfareActivator = new TanksWarfareActivator();
         _loc1_.start(OSGi.getInstance());
         var _loc2_:BattlefieldGUIActivator = new BattlefieldGUIActivator();
         _loc2_.start(OSGi.getInstance());
         var _loc3_:BattlefieldSharedActivator = new BattlefieldSharedActivator();
         _loc3_.start(OSGi.getInstance());
         this.§?"=§ = new §"!t§();
         this.battle = new BattlefieldModelActivator();
         this.battle.start(OSGi.getInstance());
         var _loc4_:TanksWarfareActivator = new TanksWarfareActivator();
         _loc4_.start(OSGi.getInstance());
         OSGi.getInstance().registerService(BattleService,§;0§(modelRegistry.getModel(Long.getLong(1723277227,1936126557))));
         §use var import§ = new Dictionary();
         var _loc5_:§1g§ = new §1g§();
         this.§>!b§ = new BattlePremiumService();
         OSGi.getInstance().registerService(IBattlePremiumService,this.§>!b§);
         OSGi.getInstance().registerService(§%!=§,_loc5_);
         this.§;"G§ = new §<7§();
         this.§var var native§ = new §switch for continue§();
         §in const const§ = new §;O§();
         §%X§ = new §3!h§();
         §4a§ = new §&8§();
         §finally var else§ = new §var for with§();
         §'"V§ = new §3"G§();
         §throw const finally§ = new §2"P§();
         §+w§ = new §@!6§();
         §3!1§ = new §0K§();
         §else var false§ = new §override var native§();
         var _loc6_:Vector.<Long> = new Vector.<Long>();
         _loc6_.push(Long.getLong(947299051,-358915161));
         _loc6_.push(Long.getLong(1497301838,-1092921347));
         _loc6_.push(Long.getLong(923418047,-17313881));
         _loc6_.push(Long.getLong(1099120188,-904226430));
         _loc6_.push(Long.getLong(1129811198,-16275595));
         gameTypeRegistry.createClass(Long.getLong(14025,684260),_loc6_);
         this.§+!o§ = §2!3§(modelRegistry.getModel(Long.getLong(118876660,-1267889929)));
         this.§+!o§.putInitParams(new §6"Y§(SoundResource(resourceRegistry.getResource(Long.getLong(0,269321)))));
         this.§64§ = §include super§(modelRegistry.getModel(Long.getLong(815932807,-684891581)));
         this.§while return§ = §set for each§(modelRegistry.getModel(Long.getLong(759725658,1071543601)));
         §case var false§.init();
      }
      
      private static function §in for break§(param1:String) : int
      {
         if(param1 == "A")
         {
            return 0;
         }
         if(param1 == "B")
         {
            return 1;
         }
         if(param1 == "C")
         {
            return 2;
         }
         if(param1 == "D")
         {
            return 3;
         }
         if(param1 == "E")
         {
            return 4;
         }
         if(param1 == "F")
         {
            return 5;
         }
         if(param1 == "G")
         {
            return 6;
         }
         if(param1 == "H")
         {
            return 7;
         }
         return 0;
      }
      
      public static function §case for continue§(param1:ClientObject) : §^!h§
      {
         var _loc4_:* = undefined;
         var _loc6_:§function var class§ = null;
         var _loc7_:§,!U§ = null;
         var _loc8_:§case const while§ = null;
         var _loc9_:§final var false§ = null;
         var _loc10_:§extends const if§ = null;
         var _loc11_:§else for§ = null;
         var _loc12_:§]"G§ = null;
         var _loc13_:§else for§ = null;
         var _loc14_:§with set static§ = null;
         var _loc15_:§!!i§ = null;
         var _loc2_:String = param1.id.split("_")[0];
         var _loc3_:§^!h§ = null;
         _loc4_ = WeaponsManager.specialEntity[param1.id];
         var _loc5_:§0"A§ = WeaponsManager.shotDatas[param1.id];
         switch(_loc2_)
         {
            case "smoky":
               _loc3_ = §in const const§;
               break;
            case "shaft":
               _loc6_ = new §function var class§();
               _loc6_.afterShotPause = _loc4_.afterShotPause;
               _loc6_.aimingImpact = _loc4_.aimingImpact;
               _loc6_.chargeRate = _loc4_.charge_rate;
               _loc6_.§-$§ = _loc4_.discharge_rate;
               _loc6_.fastShotEnergy = _loc4_.fastShotEnergy;
               _loc6_.§3!§ = _loc4_.horizontal_targeting_speed;
               _loc6_.§3!n§ = _loc4_.initial_fov;
               _loc6_.§#!>§ = _loc4_.max_energy;
               _loc6_.minAimedShotEnergy = _loc4_.minAimedShotEnergy;
               _loc6_.§?!'§ = _loc4_.minimum_fov;
               _loc6_.§#"^§ = ImageResource(resourceRegistry.getResource(Long.getLong(0,_loc4_.reticleImageId)));
               _loc6_.rotationCoeffKmin = _loc4_.rotationCoeffKmin;
               _loc6_.rotationCoeffT1 = _loc4_.rotationCoeffT1;
               _loc6_.rotationCoeffT2 = _loc4_.rotationCoeffT2;
               _loc6_.§import const implements§ = _loc4_.shrubs_hiding_radius_max;
               _loc6_.§import set set§ = _loc4_.shrubs_hiding_radius_min;
               _loc6_.targetingAcceleration = _loc4_.targetingAcceleration;
               _loc6_.targetingTransitionTime = _loc4_.targetingTransitionTime;
               _loc6_.§9&§ = _loc4_.vertical_targeting_speed;
               §'"V§.putInitParams(_loc6_);
               §'"V§.objectLoaded(param1);
               _loc3_ = §'"V§;
               break;
            case "railgun":
               _loc7_ = new §,!U§();
               _loc7_.chargingTimeMsec = _loc4_.chargingTimeMsec;
               _loc7_.weakeningCoeff = _loc4_.weakeningCoeff;
               §3!1§.putInitParams(_loc7_);
               §3!1§.objectLoaded(param1);
               _loc3_ = §3!1§;
               break;
            case "ricochet":
               _loc8_ = new §case const while§();
               _loc8_.energyCapacity = _loc4_.energyCapacity;
               _loc8_.energyPerShot = _loc4_.energyPerShot;
               _loc8_.energyRechargeSpeed = _loc4_.energyRechargeSpeed;
               _loc8_.maxRicochetCount = _loc4_.maxRicochetCount;
               _loc8_.shellRadius = _loc4_.shellRadius;
               _loc8_.shellSpeed = _loc4_.shellSpeed;
               _loc8_.shotDistance = _loc4_.shotDistance;
               §throw const finally§.putInitParams(_loc8_);
               §throw const finally§.objectLoaded(param1);
               _loc3_ = §throw const finally§;
               break;
            case "twins":
               _loc9_ = new §final var false§();
               _loc9_.distance = _loc4_.distance;
               _loc9_.shellRadius = _loc4_.shellRadius;
               _loc9_.speed = _loc4_.speed;
               §%X§.putInitParams(_loc9_);
               §%X§.objectLoaded(param1);
               _loc3_ = §%X§;
               break;
            case "flamethrower":
               _loc10_ = new §extends const if§();
               _loc10_.coneAngle = _loc4_.coneAngle;
               _loc10_.range = _loc4_.range;
               _loc11_ = new §else for§(_loc4_.energyCapacity,_loc4_.energyDischargeSpeed,_loc4_.energyRechargeSpeed,_loc4_.tickIntervalMsec);
               param1.putParams(§else for§,_loc11_);
               §finally var else§.putInitParams(_loc10_);
               §finally var else§.objectLoaded(param1);
               _loc3_ = §finally var else§;
               break;
            case "freeze":
               _loc12_ = new §]"G§();
               _loc12_.damageAreaConeAngle = _loc4_.damageAreaConeAngle;
               _loc12_.damageAreaRange = _loc4_.damageAreaRange;
               _loc13_ = new §else for§(_loc4_.energyCapacity,_loc4_.energyDischargeSpeed,_loc4_.energyRechargeSpeed,_loc4_.tickIntervalMsec);
               param1.putParams(§else for§,_loc13_);
               §+w§.putInitParams(_loc12_);
               §+w§.objectLoaded(param1);
               _loc3_ = §+w§;
               break;
            case "isida":
               _loc14_ = new §with set static§();
               _loc14_.capacity = _loc4_.capacity;
               _loc14_.chargeRate = _loc4_.chargeRate;
               _loc14_.checkPeriodMsec = _loc4_.checkPeriodMsec;
               _loc14_.coneAngle = _loc4_.coneAngle;
               _loc14_.dischargeDamageRate = _loc4_.dischargeDamageRate;
               _loc14_.dischargeHealingRate = _loc4_.dischargeHealingRate;
               _loc14_.dischargeIdleRate = _loc4_.dischargeIdleRate;
               _loc14_.radius = _loc4_.radius;
               §4a§.putInitParams(_loc14_);
               §4a§.objectLoaded(param1);
               _loc3_ = §4a§;
               break;
            case "thunder":
               _loc15_ = new §!!i§();
               _loc15_.impactForce = _loc4_.impactForce;
               _loc15_.minSplashDamagePercent = _loc4_.minSplashDamagePercent;
               _loc15_.radiusOfMaxSplashDamage = _loc4_.radiusOfMaxSplashDamage;
               _loc15_.splashDamageRadius = _loc4_.splashDamageRadius;
               param1.putParams(§!!i§,_loc15_);
               _loc3_ = §else var false§;
         }
         return _loc3_;
      }
      
      public function onData(param1:Command) : void
      {
         var parser:Object = null;
         var battle:§<!=§ = null;
         var datastat:Object = null;
         var json:Object = null;
         var specList:String = null;
         var spec:* = undefined;
         var suspiciousUsers:Vector.<String> = null;
         var user:* = undefined;
         var tempArr:Array = null;
         var pos:§finally for false§ = null;
         var bonusss:* = undefined;
         var bonusCC:Object = null;
         var jsonArray:* = undefined;
         var bonuses:Array = null;
         var jsonBonus:Object = null;
         var bonus:BattleBonus = null;
         var targetHit:§?"@§ = null;
         var affectedTanks:Vector.<§return for continue§> = null;
         var affect:§return for continue§ = null;
         var ctfModel:§>X§ = null;
         var ctfCC:Object = null;
         var lighting:Object = null;
         var flagCC:§]!V§ = null;
         var ctfSounds:§else set var§ = null;
         var blueFlag:§do for catch§ = null;
         var redFlag:§do for catch§ = null;
         var redTeamColor:§%!x§ = null;
         var blueTeamColor:§%!x§ = null;
         var flagLighting:§%" § = null;
         var resources:Object = null;
         var model:§extends for true§ = null;
         var points:§;!;§ = null;
         var obj:Object = null;
         var redPointColor:§%!x§ = null;
         var bluePointColor:§%!x§ = null;
         var neutralPointColor:§%!x§ = null;
         var pointsLighting:§%" § = null;
         var point:§!!k§ = null;
         var userId:Object = null;
         var rotateTurretCommand:§-"&§ = null;
         var movementCommand:§if import§ = null;
         var moveCommand:§if import§ = null;
         var table:ServerMessage = null;
         var jsParser:Object = null;
         var items:Array = null;
         var item:Object = null;
         var _item:ServerInventoryData = null;
         var jsArray:Object = null;
         var effects:Array = null;
         var mines:Object = null;
         var activeMines:Vector.<§]"+§> = null;
         var minesCC:§8"h§ = null;
         var mine:* = undefined;
         var battleMine:§]"+§ = null;
         var userss:Vector.<§"W§> = null;
         var userInfo:§"W§ = null;
         var blues:Vector.<§"W§> = null;
         var reds:Vector.<§"W§> = null;
         var blue:* = undefined;
         var red:* = undefined;
         var cc:§!"T§ = null;
         var blueUserInfo:§"W§ = null;
         var redUserInfo:§"W§ = null;
         var bluess:Vector.<§var set do§> = null;
         var redss:Vector.<§var set do§> = null;
         var bluee:* = undefined;
         var redd:* = undefined;
         var blueUserInfoo:§var set do§ = null;
         var redUserInfoo:§var set do§ = null;
         var players:Vector.<§"W§> = null;
         var player:* = undefined;
         var info:§"W§ = null;
         var usersss:Vector.<§"W§> = null;
         var bfModel:§;0§ = null;
         var cpModel:§extends for true§ = null;
         var modelsService:IModelService = null;
         var inventoryModel:§'O§ = null;
         var alert:§set for true§ = null;
         var data:Command = param1;
         try
         {
            switch(data.type)
            {
               case Type.BATTLE:
                  if(data.args[0] == "init_battle_model")
                  {
                     this.§6!t§(data.args[1]);
                  }
                  else if(data.args[0] == "init_gui_model")
                  {
                     parser = JSON.parse(data.args[1]);
                     battle = new §<!=§();
                     battle.blueScore = parser.score_blue;
                     battle.fund = parser.fund;
                     battle.redScore = parser.score_red;
                     battle.scoreLimit = parser.scoreLimit;
                     battle.§^"F§ = parser.team;
                     battle.§'c§ = parser.currTime;
                     battle.timeLimit = parser.timeLimit;
                     this.§2"X§ = new ChatModel();
                     OSGi.getInstance().registerService(§return const true§,this.§2"X§);
                     this.§2"X§.objectLoaded();
                     §%h§(OSGi.getInstance().getService(§#"K§)).init(new ClientObject("bfObject",null,"bfObject",null),battle);
                     datastat = new Object();
                     datastat.battleName = parser.name;
                     datastat.equipmentConstraintsMode = this.§-!D§(parser.equipmentConstraintsMode);
                     datastat.parkourMode = parser.parkourMode;
                     §%h§(OSGi.getInstance().getService(§#"K§)).initObject(null,datastat);
                     this.§return with§.init();
                     this.§?"=§.ping();
                  }
                  else if(data.args[0] == "set_premium_players")
                  {
                     json = JSON.parse(data.args[1]);
                     this.§>!b§.clear();
                     this.§>!b§.init(json.data);
                  }
                  else if(data.args[0] == "init_tank")
                  {
                     this.§ "X§(data.args[1]);
                  }
                  else if(data.args[0] == "gold_spawn")
                  {
                     this.§var var native§.§=!C§(data.args[2],data.args[1]);
                  }
                  else if(data.args[0] == "notificationBonusContainsUid")
                  {
                     this.§var var native§.notificationBonusContainsUid(data.args[1],data.args[2]);
                  }
                  else if(data.args[0] == "update_spectator_list")
                  {
                     parser = JSON.parse(data.args[1]);
                     specList = "Spectators: ";
                     for each(spec in parser.spects)
                     {
                        specList += spec + ", ";
                     }
                     specList = specList.substring(0,specList.length - 2);
                     this.§2"X§.§%!v§(specList);
                  }
                  else if(data.args[0] == "markSuspectedUsers")
                  {
                     parser = JSON.parse(data.args[1]);
                     suspiciousUsers = new Vector.<String>();
                     for each(user in parser)
                     {
                        suspiciousUsers.push(user);
                     }
                     §%h§(OSGi.getInstance().getService(§#"K§)).objectLoadedPost(suspiciousUsers);
                  }
                  else if(data.args[0] == "activate_tank")
                  {
                     if(§use var import§[data.args[1]] != null)
                     {
                        §catch for const§(OSGi.getInstance().getService(§finally const class§)).activateTank(§use var import§[data.args[1]]);
                     }
                  }
                  else if(data.args[0] == "kill_tank")
                  {
                     if(§use var import§[data.args[1]] != null)
                     {
                        §catch for const§(OSGi.getInstance().getService(§finally const class§)).kill(§use var import§[data.args[1]],DeathReason.getReason(data.args[2]),data.args[3]);
                     }
                  }
                  else if(data.args[0] == "die")
                  {
                     §catch for const§(OSGi.getInstance().getService(§finally const class§)).die(§use var import§[data.args[1]]);
                  }
                  else if(data.args[0] == "prepare_to_spawn")
                  {
                     if(§use var import§[data.args[1]] != null)
                     {
                        tempArr = String(data.args[2]).split("@");
                        pos = new §finally for false§(tempArr[0],tempArr[1],tempArr[2]);
                        §catch for const§(OSGi.getInstance().getService(§finally const class§)).prepareToSpawn(§use var import§[data.args[1]],pos,new §finally for false§(0,0,tempArr[3]));
                     }
                  }
                  else if(data.args[0] == "spawn")
                  {
                     this.§%%§(data.args[1]);
                  }
                  else if(data.args[0] == "chat")
                  {
                     this.§#!k§(data.args[1]);
                  }
                  else if(data.args[0] == "spectator_message")
                  {
                     this.§2"X§.addMessage(null,data.args[1],§while var const§.NONE);
                  }
                  else if(data.args[0] == "spectator_team_message")
                  {
                     this.§2"X§.§["'§(null,data.args[1]);
                  }
                  else if(data.args[0] == "remove_user")
                  {
                     this.removeUser(data.args[1]);
                  }
                  else if(data.args[0] == "reloadScheduled")
                  {
                     §include const in§(ModelRegistry(OSGi.getInstance().getService(ModelRegistry)).getModel(Long.getLong(1286074115,-176946994))).onDeathScheduled(data.args[1]);
                  }
                  else if(data.args[0] == "onReload")
                  {
                     §include const in§(ModelRegistry(OSGi.getInstance().getService(ModelRegistry)).getModel(Long.getLong(1286074115,-176946994))).onReload(§use var import§[data.args[1]]);
                  }
                  else if(data.args[0] == "ping")
                  {
                     Network(OSGi.getInstance().getService(INetworker)).send("battle;pong");
                  }
                  else if(data.args[0] == "init_bonuses_data")
                  {
                     json = JSON.parse(data.args[1]);
                     for each(bonusss in json.bonuses)
                     {
                        bonusCC = new Object();
                        bonusCC.lighting = new Object();
                        bonusCC.lighting.attenuationBegin = bonusss.lighting.attenuationBegin;
                        bonusCC.lighting.attenuationEnd = bonusss.lighting.attenuationEnd;
                        bonusCC.lighting.lightIntensity = bonusss.lighting.intensity;
                        bonusCC.lighting.lightColor = bonusss.lighting.color;
                        bonusCC.boxResource = Tanks3DSResource(resourceRegistry.getResource(Long.getLong(0,bonusss.resourceId)));
                        bonusCC.cordResource = ImageResource(resourceRegistry.getResource(Long.getLong(0,json.cordResource)));
                        bonusCC.parachuteInnerResource = Tanks3DSResource(resourceRegistry.getResource(Long.getLong(0,json.parachuteInnerResource)));
                        bonusCC.parachuteResource = Tanks3DSResource(resourceRegistry.getResource(Long.getLong(0,json.parachuteResource)));
                        bonusCC.pickupSoundResource = SoundResource(resourceRegistry.getResource(Long.getLong(0,json.pickupSoundResource)));
                        BonusCludge.resourceByName[bonusss.id] = bonusCC;
                     }
                  }
                  else if(data.args[0] == "init_bonuses")
                  {
                     jsonArray = JSON.parse(data.args[1]);
                     bonuses = new Array();
                     for each(jsonBonus in jsonArray)
                     {
                        bonus = new BattleBonus();
                        bonus.id = jsonBonus.id;
                        bonus.objectId = jsonBonus.id;
                        bonus.position = new §finally for false§(jsonBonus.position.x,jsonBonus.position.y,jsonBonus.position.z);
                        bonus.timeFromAppearing = jsonBonus.timeFromAppearing;
                        bonus.timeLife = jsonBonus.timeLife;
                        bonus.bonusResourceId = BonusCludge.resourceByName[bonus.id.split("_")[0]].boxResource.id;
                        bonus.lighting = BonusCludge.resourceByName[bonus.id.split("_")[0]].lighting;
                        bonuses.push(bonus);
                     }
                     §;0§(modelRegistry.getModel(Long.getLong(1723277227,1936126557))).initBonuses(null,bonuses);
                  }
                  else if(data.args[0] == "spawn_bonus")
                  {
                     this.§get set if§(data.args[1]);
                  }
                  else if(data.args[0] == "bonus_taken")
                  {
                     §;0§(modelRegistry.getModel(Long.getLong(1723277227,1936126557))).bonusTaken(null,data.args[1]);
                  }
                  else if(data.args[0] == "user_log")
                  {
                     §%h§(OSGi.getInstance().getService(§#"K§)).logUserAction(data.args[1],data.args[2]);
                  }
                  else if(data.args[0] == "remove_bonus")
                  {
                     §;0§(modelRegistry.getModel(Long.getLong(1723277227,1936126557))).removeBonus(null,data.args[1]);
                  }
                  else if(data.args[0] == "start_fire")
                  {
                     this.§-!&§(§use var import§[data.args[1]],data.args[1],data.args.length > 2 ? data.args[2] : "");
                  }
                  else if(data.args[0] == "static_shot")
                  {
                     this.§case const with§(§use var import§[data.args[1]],data.args[2]);
                  }
                  else if(data.args[0] == "dummy_shot")
                  {
                     this.§9"&§(§use var import§[data.args[1]],data.args[2]);
                  }
                  else if(data.args[0] == "target_shot")
                  {
                     this.§if for set§(§use var import§[data.args[1]],data.args[2]);
                  }
                  else if(data.args[0] == "shot")
                  {
                     this.§5"K§(§use var import§[data.args[1]],data.args[2]);
                  }
                  else if(data.args[0] == "set_target")
                  {
                     parser = JSON.parse(data.args[2]);
                     targetHit = new §?"@§();
                     targetHit.localHitPoint = this.§]J§(parser.localHitPoint);
                     targetHit.target = §use var import§[parser.target];
                     §4a§.§ !F§(§use var import§[data.args[1]],this.§4"`§(parser.actionType),targetHit);
                  }
                  else if(data.args[0] == "reset_target")
                  {
                     §4a§.§#"M§(§use var import§[data.args[1]]);
                  }
                  else if(data.args[0] == "change_health")
                  {
                     §catch for const§(OSGi.getInstance().getService(§finally const class§)).changeHealth(§use var import§[data.args[1]],data.args[2]);
                  }
                  else if(data.args[0] == "damage_tank")
                  {
                     affectedTanks = new Vector.<§return for continue§>();
                     affect = new §return for continue§();
                     affect.§;!B§ = data.args[2];
                     affect.target = data.args[1];
                     affect.§"!B§ = §+"§.get(data.args[3]);
                     affectedTanks.push(affect);
                     this.§;"G§.§for const throw§(affectedTanks);
                  }
                  else if(data.args[0] == "init_shots_data")
                  {
                     this.§return set var§(data.args[1]);
                  }
                  else if(data.args[0] == "stop_fire")
                  {
                     this.§catch catch§(§use var import§[data.args[1]],data.args[1]);
                  }
                  else if(data.args[0] == "update_player_statistic")
                  {
                     this.§!2§(data.args[1]);
                  }
                  else if(data.args[0] == "change_fund")
                  {
                     §%h§(OSGi.getInstance().getService(§#"K§)).fundChange(data.args[1]);
                  }
                  else if(data.args[0] == "battle_finish")
                  {
                     this.§dynamic const finally§(data.args[1]);
                  }
                  else if(data.args[0] == "battle_restart")
                  {
                     §;0§(modelRegistry.getModel(Long.getLong(1723277227,1936126557))).battleRestart(null);
                     §%h§(OSGi.getInstance().getService(§#"K§)).roundStart(data.args[1],true);
                     if(this.§true if§ != null)
                     {
                        this.§true if§.roundStart();
                     }
                     else
                     {
                        this.§extends const in§.roundStart();
                     }
                     §%h§(OSGi.getInstance().getService(§#"K§)).fundChange(0);
                  }
                  else if(data.args[0] == "change_spec_tank")
                  {
                     this.§each set while§(§use var import§[data.args[1]],data.args[2]);
                  }
                  else if(data.args[0] == "change_temperature_tank")
                  {
                     §catch for const§(OSGi.getInstance().getService(§finally const class§)).setTemperature(§use var import§[data.args[1]],data.args[2]);
                  }
                  else if(data.args[0] == "change_team_scores")
                  {
                     §%h§(OSGi.getInstance().getService(§#"K§)).changeTeamScore(this.§default for native§(data.args[1]),data.args[2]);
                  }
                  else if(data.args[0] == "init_dm_model")
                  {
                     this.§while return§.objectLoadedPost();
                  }
                  else if(data.args[0] == "init_tdm_model")
                  {
                     this.§64§.objectLoadedPost();
                  }
                  else if(data.args[0] == "init_ctf_model")
                  {
                     ctfModel = null;
                     ctfModel = new §>X§();
                     OSGi.getInstance().registerService(§^!$§,ctfModel);
                  }
                  else if(data.args[0] == "init_flags")
                  {
                     json = JSON.parse(data.args[1]);
                     ctfCC = JSON.parse(json.resources);
                     lighting = JSON.parse(json.lighting);
                     flagCC = new §]!V§();
                     ctfSounds = new §else set var§();
                     blueFlag = new §do for catch§();
                     blueFlag.§if set super§ = new §finally for false§(json.basePosBlueFlag.x,json.basePosBlueFlag.y,json.basePosBlueFlag.z);
                     blueFlag.§#_§ = json.blueFlagCarrierId;
                     blueFlag.§<&§ = json.posBlueFlag == null ? null : new §finally for false§(json.posBlueFlag.x,json.posBlueFlag.y,json.posBlueFlag.z);
                     redFlag = new §do for catch§();
                     redFlag.§if set super§ = new §finally for false§(json.basePosRedFlag.x,json.basePosRedFlag.y,json.basePosRedFlag.z);
                     redFlag.§#_§ = json.redFlagCarrierId;
                     redFlag.§<&§ = json.posRedFlag == null ? null : new §finally for false§(json.posRedFlag.x,json.posRedFlag.y,json.posRedFlag.z);
                     flagCC.§throw for true§ = blueFlag;
                     flagCC.blueFlagSprite = ImageResource(resourceRegistry.getResource(Long.getLong(0,ctfCC.blueFlagSprite)));
                     flagCC.bluePedestalModel = Tanks3DSResource(resourceRegistry.getResource(Long.getLong(0,ctfCC.bluePedestalModel)));
                     flagCC.§"!0§ = redFlag;
                     flagCC.redFlagSprite = ImageResource(resourceRegistry.getResource(Long.getLong(0,ctfCC.redFlagSprite)));
                     flagCC.redPedestalModel = Tanks3DSResource(resourceRegistry.getResource(Long.getLong(0,ctfCC.redPedestalModel)));
                     ctfSounds.flagDropSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,ctfCC.flagDropSound)));
                     ctfSounds.flagReturnSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,ctfCC.flagReturnSound)));
                     ctfSounds.flagTakeSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,ctfCC.flagTakeSound)));
                     ctfSounds.winSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,ctfCC.winSound)));
                     flagCC.§for const if§ = ctfSounds;
                     redTeamColor = new §%!x§(lighting.redColor,lighting.redColorIntensity);
                     blueTeamColor = new §%!x§(lighting.blueColor,lighting.blueColorIntensity);
                     flagLighting = new §%" §(redTeamColor,blueTeamColor,null,lighting.attenuationBegin,lighting.attenuationEnd);
                     ILightingEffectsService(OSGi.getInstance().getService(ILightingEffectsService)).setLightForMode(§"!4§.CTF,flagLighting);
                     (OSGi.getInstance().getService(§^!$§) as §>X§).putInitParams(flagCC);
                     (OSGi.getInstance().getService(§^!$§) as §>X§).objectLoadedPost();
                  }
                  else if(data.args[0] == "init_dom_model")
                  {
                     json = JSON.parse(data.args[1]);
                     resources = JSON.parse(json.resources);
                     lighting = JSON.parse(json.lighting);
                     model = null;
                     points = new §;!;§();
                     points.points = new Vector.<§!!k§>();
                     for each(obj in json.points)
                     {
                        point = new §!!k§();
                        point.name = obj.id;
                        point.id = §in for break§(obj.id);
                        point.position = new §finally for false§(obj.x,obj.y,obj.z);
                        point.score = obj.score;
                        point.§9"-§ = new Vector.<String>();
                        point.state = this.§9L§(obj.state);
                        for each(userId in obj.occupated_users)
                        {
                           point.§9"-§.push(userId);
                        }
                        points.points.push(point);
                     }
                     points.§do null§ = 10;
                     points.§in for function§ = json.mine_activation_radius;
                     points.§if for package§ = 500;
                     points.resources = new §switch const get§();
                     points.resources.bigLetters = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.bigLetters)));
                     points.resources.blueCircle = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.blueCircle)));
                     points.resources.bluePedestalTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.bluePedestalTexture)));
                     points.resources.blueRay = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.blueRay)));
                     points.resources.blueRayTip = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.blueRayTip)));
                     points.resources.neutralCircle = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.neutralCircle)));
                     points.resources.neutralPedestalTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.neutralPedestalTexture)));
                     points.resources.pedestal = Tanks3DSResource(resourceRegistry.getResource(Long.getLong(0,resources.pedestal)));
                     points.resources.redCircle = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.redCircle)));
                     points.resources.redPedestalTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.redPedestalTexture)));
                     points.resources.redRay = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.redRay)));
                     points.resources.redRayTip = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.redRayTip)));
                     points.§for const if§ = new §[",§();
                     points.§for const if§.pointCapturedNegativeSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.pointCapturedNegativeSound)));
                     points.§for const if§.pointCapturedPositiveSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.pointCapturedPositiveSound)));
                     points.§for const if§.pointCaptureStartNegativeSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.pointCaptureStartNegativeSound)));
                     points.§for const if§.pointCaptureStartPositiveSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.pointCaptureStartPositiveSound)));
                     points.§for const if§.pointCaptureStopNegativeSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.pointCaptureStopNegativeSound)));
                     points.§for const if§.pointCaptureStopPositiveSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.pointCaptureStopPositiveSound)));
                     points.§for const if§.pointNeutralizedNegativeSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.pointNeutralizedNegativeSound)));
                     points.§for const if§.pointNeutralizedPositiveSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.pointNeutralizedPositiveSound)));
                     points.§for const if§.pointScoreDecreasingSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.pointScoreDecreasingSound)));
                     points.§for const if§.pointScoreIncreasingSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.pointScoreIncreasingSound)));
                     redPointColor = new §%!x§(lighting.redPointColor,lighting.redPointIntensity);
                     bluePointColor = new §%!x§(lighting.bluePointColor,lighting.bluePointIntensity);
                     neutralPointColor = new §%!x§(lighting.neutralPointColor,lighting.neutralPointIntensity);
                     pointsLighting = new §%" §(redPointColor,bluePointColor,neutralPointColor,lighting.attenuationBegin,lighting.attenuationEnd);
                     ILightingEffectsService(OSGi.getInstance().getService(ILightingEffectsService)).setLightForMode(§"!4§.CP,pointsLighting);
                     model = new §extends for true§();
                     model.putInitParams(points);
                     model.objectLoaded();
                     model.objectLoadedPost();
                     OSGi.getInstance().registerService(§9!d§,model);
                  }
                  else if(data.args[0] == "local_critical_hit")
                  {
                     §in const const§.§7!s§(§use var import§[data.args[1]]);
                  }
                  else if(data.args[0] == "rotateTurret")
                  {
                     parser = JSON.parse(data.args[1]);
                     rotateTurretCommand = new §-"&§();
                     if(isNaN(parser.angle))
                     {
                        return;
                     }
                     rotateTurretCommand.angle = parser.angle;
                     rotateTurretCommand.control = parser.control;
                     §catch for const§(OSGi.getInstance().getService(§finally const class§)).rotateTurret(§use var import§[parser.tankId],rotateTurretCommand);
                  }
                  else if(data.args[0] == "movementControl")
                  {
                     parser = JSON.parse(data.args[1]);
                     §catch for const§(OSGi.getInstance().getService(§finally const class§)).movementControl(§use var import§[parser.tankId],parser.control);
                  }
                  else if(data.args[0] == "move")
                  {
                     parser = JSON.parse(data.args[1]);
                     movementCommand = new §if import§();
                     movementCommand.angularVelocity = this.§]J§(parser.angularVelocity);
                     movementCommand.control = parser.control;
                     movementCommand.linearVelocity = this.§]J§(parser.linearVelocity);
                     movementCommand.orientation = this.§]J§(parser.orientation);
                     movementCommand.position = this.§]J§(parser.position);
                     §catch for const§(OSGi.getInstance().getService(§finally const class§)).move(§use var import§[parser.tankId],movementCommand);
                  }
                  else if(data.args[0] == "fullMove")
                  {
                     parser = JSON.parse(data.args[1]);
                     moveCommand = new §if import§();
                     moveCommand.angularVelocity = this.§]J§(parser.angularVelocity);
                     moveCommand.control = parser.control;
                     moveCommand.linearVelocity = this.§]J§(parser.linearVelocity);
                     moveCommand.orientation = this.§]J§(parser.orientation);
                     moveCommand.position = this.§]J§(parser.position);
                     §catch for const§(OSGi.getInstance().getService(§finally const class§)).moveAndSetTurretState(§use var import§[parser.tankId],moveCommand,parser.turretDirection);
                  }
                  else if(data.args[0] == "flagTaken")
                  {
                     §>X§(OSGi.getInstance().getService(§^!$§)).flagTaken(data.args[1],this.§default for native§(data.args[2]));
                  }
                  else if(data.args[0] == "deliver_flag")
                  {
                     §>X§(OSGi.getInstance().getService(§^!$§)).flagDelivered(this.§default for native§(data.args[1]),data.args[2]);
                  }
                  else if(data.args[0] == "flag_drop")
                  {
                     json = JSON.parse(data.args[1]);
                     §>X§(OSGi.getInstance().getService(§^!$§)).dropFlag(new §finally for false§(json.x,json.y,json.z),this.§default for native§(json.flagTeam));
                  }
                  else if(data.args[0] == "return_flag")
                  {
                     §>X§(OSGi.getInstance().getService(§^!$§)).returnFlagToBase(this.§default for native§(data.args[1]),data.args[2] == "null" ? null : data.args[2]);
                  }
                  else if(data.args[0] == "show_warning_table")
                  {
                     table = new ServerMessage(data.args[1]);
                  }
                  else if(data.args[0] == "init_inventory")
                  {
                     jsParser = JSON.parse(data.args[1]);
                     items = new Array();
                     for each(item in jsParser.items)
                     {
                        _item = new ServerInventoryData();
                        _item.count = item.count;
                        _item.id = item.id;
                        _item.itemEffectTime = item.itemEffectTime;
                        _item.itemRestSec = item.itemRestSec;
                        _item.slotId = item.slotId;
                        items.push(_item);
                     }
                     this.§return with§.initInventory(items);
                  }
                  else if(data.args[0] == "updateCount")
                  {
                     this.§return with§.updateCount(data.args[1],data.args[2]);
                  }
                  else if(data.args[0] == "activate_item")
                  {
                     this.§return with§.activateItem(data.args[1],data.args[2],data.args[3] == "true" ? true : false);
                  }
                  else if(data.args[0] == "enable_effect")
                  {
                     §catch for const§(OSGi.getInstance().getService(§finally const class§)).effectStarted(§use var import§[data.args[1]],data.args[2],data.args[3],data.args[4] == "true" ? true : false,data.args[5]);
                  }
                  else if(data.args[0] == "disable_effect")
                  {
                     §catch for const§(OSGi.getInstance().getService(§finally const class§)).effectStopped(§use var import§[data.args[1]],data.args[2],data.args[3] == "true" ? true : false);
                  }
                  else if(data.args[0] == "init_effects")
                  {
                     jsArray = JSON.parse(data.args[1]);
                     effects = new Array();
                     for each(obj in jsArray.effects)
                     {
                        IInitialEffectsService(OSGi.getInstance().getService(IInitialEffectsService)).addInitialEffect(obj.userID,obj.itemIndex,obj.durationTime,obj.effectLevel);
                     }
                  }
                  else if(data.args[0] == "init_mine_model")
                  {
                     parser = JSON.parse(data.args[1]);
                     mines = JSON.parse(data.args[2]);
                     resources = parser.resources;
                     activeMines = new Vector.<§]"+§>();
                     minesCC = new §8"h§();
                     for each(mine in mines.mines)
                     {
                        battleMine = new §]"+§();
                        battleMine.activated = true;
                        battleMine.mineId = mine.mineId;
                        battleMine.ownerId = mine.ownerId;
                        battleMine.position = new §finally for false§(mine.x,mine.y,mine.z);
                        activeMines.push(battleMine);
                     }
                     minesCC.activateSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.activateSound)));
                     minesCC.§2u§ = parser.activationTimeMsec;
                     minesCC.§!!^§ = activeMines;
                     minesCC.blueMineTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.blueMineTexture)));
                     minesCC.deactivateSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.deactivateSound)));
                     minesCC.enemyMineTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.enemyMineTexture)));
                     minesCC.explosionMarkTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.explosionMarkTexture)));
                     minesCC.explosionSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,resources.explosionSound)));
                     minesCC.farVisibilityRadius = parser.farVisibilityRadius;
                     minesCC.friendlyMineTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.friendlyMineTexture)));
                     minesCC.idleExplosionTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,resources.idleExplosionTexture)));
                     minesCC.impactForce = parser.impactForce;
                     minesCC.mainExplosionTexture = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,resources.mainExplosionTexture)));
                     minesCC.minDistanceFromBase = parser.minDistanceFromBase;
                     minesCC.model3ds = Tanks3DSResource(resourceRegistry.getResource(Long.getLong(0,resources.model3ds)));
                     minesCC.nearVisibilityRadius = parser.nearVisibilityRadius;
                     minesCC.radius = parser.radius;
                     minesCC.redMineTexture = ImageResource(resourceRegistry.getResource(Long.getLong(0,resources.redMineTexture)));
                     this.§do final§ = new §9`§();
                     OSGi.getInstance().registerService(§throw var for§,this.§do final§);
                     this.§do final§.putInitParams(minesCC);
                     this.§do final§.objectLoaded();
                  }
                  else if(data.args[0] == "remove_mines")
                  {
                     this.§do final§.§ "Z§(data.args[1]);
                  }
                  else if(data.args[0] == "put_mine")
                  {
                     json = JSON.parse(data.args[1]);
                     this.§do final§.§[r§(json.mineId,json.x,json.y,json.z,json.userId);
                  }
                  else if(data.args[0] == "activate_mine")
                  {
                     this.§do final§.§true for with§(data.args[1]);
                  }
                  else if(data.args[0] == "hit_mine")
                  {
                     this.§do final§.§package for implements§(data.args[1],data.args[2]);
                  }
                  else if(data.args[0] == "tank_capturing_point")
                  {
                     §extends for true§(OSGi.getInstance().getService(§9!d§)).tankEnteredPointZone(§in for break§(data.args[1]),§use var import§[data.args[2]].id);
                  }
                  else if(data.args[0] == "tank_leave_capturing_point")
                  {
                     §extends for true§(OSGi.getInstance().getService(§9!d§)).tankLeftPointZone(§in for break§(data.args[2]),§use var import§[data.args[1]].id);
                  }
                  else if(data.args[0] == "set_point_score")
                  {
                     §extends for true§(OSGi.getInstance().getService(§9!d§)).setPointProgress(§in for break§(data.args[1]),Number(data.args[2]),Number(data.args[3]));
                  }
                  else if(data.args[0] == "point_captured_by")
                  {
                     §extends for true§(OSGi.getInstance().getService(§9!d§)).setPointState(§in for break§(data.args[2]),data.args[1] == "blue" ? §3"Q§.BLUE : (data.args[1] == "red" ? §3"Q§.RED : §3"Q§.NEUTRAL));
                  }
                  else if(data.args[0] == "point_lost_by")
                  {
                     §extends for true§(OSGi.getInstance().getService(§9!d§)).setPointState(§in for break§(data.args[2]),§3"Q§.NEUTRAL);
                  }
                  else if(data.args[0] == "pointCaptureStarted")
                  {
                     §extends for true§(OSGi.getInstance().getService(§9!d§)).pointCaptureStarted(this.§default for native§(data.args[1]));
                  }
                  else if(data.args[0] == "pointCaptureStopped")
                  {
                     §extends for true§(OSGi.getInstance().getService(§9!d§)).pointCaptureStopped(this.§default for native§(data.args[1]));
                  }
                  else if(data.args[0] == "pong")
                  {
                     this.§?"=§.pong();
                  }
                  else if(data.args[0] == "ping")
                  {
                     Network(OSGi.getInstance().getService(INetworker)).send("battle;pong");
                  }
                  else if(data.args[0] == "gold_taken")
                  {
                     this.§+!o§.§=!G§(§use var import§[data.args[1]]);
                  }
                  else if(data.args[0] == "update_rang")
                  {
                     §%h§(OSGi.getInstance().getService(§#"K§)).onRankChanged(data.args[1],data.args[2]);
                  }
                  else if(data.args[0] == "start_manual_targeting")
                  {
                     §'"V§.§'!P§(§use var import§[data.args[1]]);
                  }
                  else if(data.args[0] == "stop_manual_targeting")
                  {
                     §'"V§.§<"D§(§use var import§[data.args[1]]);
                  }
                  else if(data.args[0] == "init_dm_statistics")
                  {
                     this.§extends const in§ = new §const for true§();
                     OSGi.getInstance().registerService(§true for import§,this.§extends const in§);
                     parser = JSON.parse(data.args[1]);
                     userss = new Vector.<§"W§>();
                     for each(user in parser.users)
                     {
                        userInfo = new §"W§();
                        userInfo.chatModeratorLevel = this.§false§(user.chatModeratorLevel);
                        userInfo.deaths = user.deaths;
                        userInfo.kills = user.kills;
                        userInfo.rank = user.rank;
                        userInfo.score = user.score;
                        userInfo.uid = user.uid;
                        userInfo.user = user.uid;
                        userss.push(userInfo);
                     }
                     this.§extends const in§.putInitParams(new §override const true§(userss));
                     this.§extends const in§.objectLoaded();
                     this.§extends const in§.objectLoadedPost();
                  }
                  else if(data.args[0] == "init_team_statistics")
                  {
                     this.§true if§ = new §>!t§();
                     OSGi.getInstance().registerService(§true for import§,this.§true if§);
                     parser = JSON.parse(data.args[1]);
                     blues = new Vector.<§"W§>();
                     reds = new Vector.<§"W§>();
                     for each(blue in parser.blues)
                     {
                        blueUserInfo = new §"W§();
                        blueUserInfo.chatModeratorLevel = this.§false§(blue.chatModeratorLevel);
                        blueUserInfo.deaths = blue.deaths;
                        blueUserInfo.kills = blue.kills;
                        blueUserInfo.rank = blue.rank;
                        blueUserInfo.score = blue.score;
                        blueUserInfo.uid = blue.uid;
                        blueUserInfo.user = blue.uid;
                        blues.push(blueUserInfo);
                     }
                     for each(red in parser.reds)
                     {
                        redUserInfo = new §"W§();
                        redUserInfo.chatModeratorLevel = this.§false§(red.chatModeratorLevel);
                        redUserInfo.deaths = red.deaths;
                        redUserInfo.kills = red.kills;
                        redUserInfo.rank = red.rank;
                        redUserInfo.score = red.score;
                        redUserInfo.uid = red.uid;
                        redUserInfo.user = red.uid;
                        reds.push(redUserInfo);
                     }
                     cc = new §!"T§();
                     cc.§8!o§ = reds;
                     cc.§#!U§ = blues;
                     cc.blueScore = parser.blueScore;
                     cc.redScore = parser.redScore;
                     this.§true if§.putInitParams(cc);
                     this.§true if§.objectLoaded();
                     this.§true if§.objectLoadedPost();
                  }
                  else if(data.args[0] == "statusProbablyCheaterChanged")
                  {
                     §%h§(OSGi.getInstance().getService(§#"K§)).statusProbablyCheaterChanged(data.args[1],data.args[2] == "true" ? true : false);
                  }
                  else if(data.args[0] == "confirm_vote")
                  {
                     §%h§(OSGi.getInstance().getService(§#"K§)).onComplaintConfirmed();
                  }
                  else if(data.args[0] == "swap_teams")
                  {
                     parser = JSON.parse(data.args[1]);
                     bluess = new Vector.<§var set do§>();
                     redss = new Vector.<§var set do§>();
                     for each(bluee in parser.blues)
                     {
                        blueUserInfoo = new §var set do§();
                        blueUserInfoo.deaths = bluee.deaths;
                        blueUserInfoo.kills = bluee.kills;
                        blueUserInfoo.score = bluee.score;
                        blueUserInfoo.user = bluee.uid;
                        bluess.push(blueUserInfoo);
                     }
                     for each(redd in parser.reds)
                     {
                        redUserInfoo = new §var set do§();
                        redUserInfoo.deaths = redd.deaths;
                        redUserInfoo.kills = redd.kills;
                        redUserInfoo.score = redd.score;
                        redUserInfoo.user = redd.uid;
                        redss.push(redUserInfoo);
                     }
                     this.§true if§.§5!`§(redss,bluess);
                  }
                  else if(data.args[0] == "user_connect_team")
                  {
                     parser = JSON.parse(data.args[1]);
                     players = new Vector.<§"W§>();
                     for each(player in parser.players)
                     {
                        info = new §"W§();
                        info.chatModeratorLevel = this.§false§(player.chatModeratorLevel);
                        info.deaths = player.deaths;
                        info.kills = player.kills;
                        info.rank = player.rank;
                        info.score = player.score;
                        info.uid = player.uid;
                        info.user = player.uid;
                        players.push(info);
                     }
                     this.§true if§.userConnect(parser.id,players,this.§default for native§(parser.team));
                  }
                  else if(data.args[0] == "user_disconnect_team")
                  {
                     this.§true if§.§package var const§(data.args[1]);
                  }
                  else if(data.args[0] == "user_connect_dm")
                  {
                     parser = JSON.parse(data.args[1]);
                     usersss = new Vector.<§"W§>();
                     for each(user in parser.players)
                     {
                        info = new §"W§();
                        info.chatModeratorLevel = this.§false§(user.chatModeratorLevel);
                        info.deaths = user.deaths;
                        info.kills = user.kills;
                        info.rank = user.rank;
                        info.score = user.score;
                        info.uid = user.uid;
                        info.user = user.uid;
                        usersss.push(info);
                     }
                     this.§extends const in§.userConnect(parser.id,usersss);
                  }
                  else if(data.args[0] == "user_disconnect_dm")
                  {
                     this.§extends const in§.§package var const§(data.args[1]);
                  }
                  else if(data.args[0] == "unload_battle")
                  {
                     bfModel = §;0§(modelRegistry.getModel(Long.getLong(1723277227,1936126557)));
                     §catch set null§(OSGi.getInstance().getService(IBattleController)).destroy();
                     bfModel.objectUnloaded();
                     §%h§(OSGi.getInstance().getService(§#"K§)).objectUnloaded(null);
                     if(this.§true if§ != null)
                     {
                        this.§true if§.objectUnloaded();
                        this.§true if§ = null;
                     }
                     else
                     {
                        this.§extends const in§.objectUnloaded();
                        this.§extends const in§ = null;
                     }
                     Network(OSGi.getInstance().getService(INetworker)).removeListener(OSGi.getInstance().getService(IBattleController) as §catch set null§);
                     this.§2"X§.objectUnloaded();
                     OSGi.getInstance().unregisterService(§return const true§);
                     WeaponsManager.destroy();
                     ctfModel = OSGi.getInstance().getService(§^!$§) as §>X§;
                     if(ctfModel != null)
                     {
                        ctfModel.objectUnloaded();
                        OSGi.getInstance().unregisterService(§^!$§);
                     }
                     cpModel = OSGi.getInstance().getService(§9!d§) as §extends for true§;
                     if(cpModel != null)
                     {
                        cpModel.objectUnloaded();
                        OSGi.getInstance().unregisterService(§9!d§);
                     }
                     this.§while return§.objectUnloaded();
                     this.§64§.objectUnloaded();
                     modelsService = IModelService(OSGi.getInstance().getService(IModelService));
                     inventoryModel = §'O§(modelsService.getModelsByInterface(§class var return§)[0]);
                     if(inventoryModel != null)
                     {
                        inventoryModel.objectUnloaded(null);
                     }
                     this.§do final§.objectUnloaded();
                     OSGi.getInstance().unregisterService(§throw var for§);
                     BonusCludge.resourceByName = new Dictionary();
                  }
            }
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      private function §-!D§(param1:String) : §in const implements§
      {
         switch(param1)
         {
            case "NONE":
               return §in const implements§.NONE;
            case "HORNET_RAILGUN":
               return §in const implements§.HORNET_RAILGUN;
            case "WASP_RAILGUN":
               return §in const implements§.WASP_RAILGUN;
            case "HORNET_WASP_RAILGUN":
               return §in const implements§.HORNET_WASP_RAILGUN;
            default:
               return §in const implements§.NONE;
         }
      }
      
      private function §default for native§(param1:String) : §while var const§
      {
         switch(param1.toLowerCase())
         {
            case "blue":
               return §while var const§.BLUE;
            case "red":
               return §while var const§.RED;
            default:
               return §while var const§.NONE;
         }
      }
      
      private function §4"`§(param1:String) : §const const set§
      {
         switch(param1)
         {
            case "idle":
               return §const const set§.IDLE;
            case "heal":
               return §const const set§.HEALING;
            case "damage":
               return §const const set§.DAMAGING;
            default:
               return §const const set§.OFF;
         }
      }
      
      private function §false§(param1:int) : ChatModeratorLevel
      {
         switch(param1)
         {
            case 0:
               return ChatModeratorLevel.NONE;
            case 1:
               return ChatModeratorLevel.CANDIDATE;
            case 2:
               return ChatModeratorLevel.MODERATOR;
            case 3:
               return ChatModeratorLevel.ADMINISTRATOR;
            case 4:
               return ChatModeratorLevel.COMMUNITY_MANAGER;
            default:
               return ChatModeratorLevel.NONE;
         }
      }
      
      private function §9L§(param1:String) : §3"Q§
      {
         switch(param1)
         {
            case "red":
               return §3"Q§.RED;
            case "blue":
               return §3"Q§.BLUE;
            default:
               return §3"Q§.NEUTRAL;
         }
      }
      
      private function §each set while§(param1:ClientObject, param2:String) : void
      {
         var _loc3_:Object = JSON.parse(param2);
         var _loc4_:TankSpecification = new TankSpecification();
         _loc4_.speed = _loc3_.speed;
         _loc4_.turnSpeed = _loc3_.turnSpeed;
         _loc4_.turretRotationSpeed = _loc3_.turretRotationSpeed;
         _loc4_.acceleration = _loc3_.acceleration;
         _loc4_.dampingCoeff = _loc3_.dampingCoeff;
         _loc4_.reverseAcceleration = _loc3_.reverseAcceleration;
         _loc4_.reverseTurnAcceleration = _loc3_.reverseTurnAcceleration;
         _loc4_.sideAcceleration = _loc3_.sideAcceleration;
         _loc4_.dampingCoeff = _loc3_.dampingCoeff;
         _loc4_.turnAcceleration = _loc3_.turnAcceleration;
         _loc4_.turretTurnAcceleration = _loc3_.turretTurnAcceleration;
         §catch for const§(OSGi.getInstance().getService(§finally const class§)).changeSpecification(param1,_loc4_,false);
      }
      
      private function §dynamic const finally§(param1:String) : void
      {
         var _loc4_:Object = null;
         var _loc5_:§^!`§ = null;
         var _loc2_:Vector.<§^!`§> = new Vector.<§^!`§>();
         var _loc3_:Object = JSON.parse(param1);
         for each(_loc4_ in _loc3_.users)
         {
            _loc5_ = new §^!`§();
            _loc5_.userId = _loc4_.id;
            _loc5_.§try false§ = _loc4_.prize;
            _loc5_.§var try§ = 0;
            _loc5_.§package const static§ = _loc4_.prize;
            _loc2_.push(_loc5_);
         }
         §%h§(OSGi.getInstance().getService(§#"K§)).roundFinish(true,_loc2_,int(_loc3_.time_to_restart / 1000));
         §;0§(modelRegistry.getModel(Long.getLong(1723277227,1936126557))).battleFinish(null);
      }
      
      private function §!2§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§var set do§ = new §var set do§();
         _loc3_.deaths = _loc2_.deaths;
         _loc3_.kills = _loc2_.kills;
         _loc3_.score = _loc2_.score;
         _loc3_.user = _loc2_.id;
         if(this.§true if§ != null)
         {
            this.§true if§.§,g§(_loc3_,this.§default for native§(_loc2_.team_type));
         }
         else
         {
            this.§extends const in§.§,g§(_loc3_);
         }
      }
      
      private function §%%§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§finally for false§ = new §finally for false§(_loc2_.x,_loc2_.y,_loc2_.z);
         var _loc4_:§finally for false§ = new §finally for false§(0,0,_loc2_.rot);
         var _loc5_:TankSpecification = new TankSpecification();
         _loc5_.speed = _loc2_.speed;
         _loc5_.turnSpeed = _loc2_.turn_speed;
         _loc5_.turretRotationSpeed = _loc2_.turret_rotation_speed;
         _loc5_.acceleration = _loc2_.acceleration;
         _loc5_.dampingCoeff = _loc2_.dampingCoeff;
         _loc5_.reverseAcceleration = _loc2_.reverseAcceleration;
         _loc5_.reverseTurnAcceleration = _loc2_.reverseTurnAcceleration;
         _loc5_.sideAcceleration = _loc2_.sideAcceleration;
         _loc5_.turnAcceleration = _loc2_.turnAcceleration;
         _loc5_.turretTurnAcceleration = _loc2_.turretTurnAcceleration;
         §catch for const§(OSGi.getInstance().getService(§finally const class§)).spawn(§use var import§[_loc2_.tank_id],_loc5_,this.§default for native§(_loc2_.team_type),_loc3_,_loc4_,_loc2_.health,_loc2_.incration_id);
      }
      
      private function §return set var§(param1:String) : void
      {
         var _loc5_:Object = null;
         var _loc6_:§0"A§ = null;
         var _loc7_:* = undefined;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc4_:§!"!§ = §!"!§(_loc3_.getModelsByInterface(§2"?§)[0]);
         for each(_loc5_ in _loc2_.weapons)
         {
            _loc6_ = new §0"A§(_loc5_.reload);
            _loc6_.§false var final§.value = _loc5_.auto_aiming_down;
            _loc6_.§break var if§.value = _loc5_.auto_aiming_up;
            _loc6_.§%!1§.value = _loc5_.num_rays_down;
            _loc6_.§static for const§.value = _loc5_.num_rays_up;
            if(_loc5_.has_wwd)
            {
               _loc4_.initObject(WeaponsManager.getObjectFor(_loc5_.id),_loc5_.max_damage_radius,_loc5_.min_damage_percent,_loc5_.min_damage_radius);
            }
            _loc7_ = _loc5_.special_entity;
            WeaponsManager.shotDatas[_loc5_.id] = _loc6_;
            WeaponsManager.specialEntity[_loc5_.id] = _loc7_;
         }
      }
      
      private function §catch catch§(param1:ClientObject, param2:String) : void
      {
         if(§catch for const§(OSGi.getInstance().getService(§finally const class§)) == null)
         {
            return;
         }
         var _loc3_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         if(§catch for const§(OSGi.getInstance().getService(§finally const class§)) == null || §use var import§[param1.id] as ClientObject == null)
         {
            return;
         }
         var _loc4_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(§use var import§[param1.id] as ClientObject);
         if(_loc4_ == null || _loc4_.turret == null || _loc4_.turret.id == null)
         {
            return;
         }
         var _loc5_:String = _loc4_.turret.id.split("_")[0];
         switch(_loc5_)
         {
            case "flamethrower":
               §finally var else§.§while const use§(param1);
               break;
            case "isida":
               §4a§.§`_§(param1);
               break;
            case "freeze":
               §+w§.§while const use§(param1);
         }
      }
      
      private function §-!&§(param1:ClientObject, param2:String, param3:String) : void
      {
         var _loc4_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         if(§catch for const§(OSGi.getInstance().getService(§finally const class§)) == null || §use var import§[param1.id] as ClientObject == null)
         {
            return;
         }
         var _loc5_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(§use var import§[param1.id] as ClientObject);
         if(_loc5_ == null || _loc5_.turret == null || _loc5_.turret.id == null)
         {
            return;
         }
         var _loc6_:String = _loc5_.turret.id.split("_")[0];
         switch(_loc6_)
         {
            case "railgun":
               §3!1§.§implements var true§(param1);
               break;
            case "flamethrower":
               §finally var else§.startFire(param1);
               break;
            case "freeze":
               §+w§.startFire(param1);
         }
      }
      
      private function §5"K§(param1:ClientObject, param2:String) : void
      {
         var _loc3_:Object = JSON.parse(param2);
         var _loc4_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(§use var import§[param1.id] as ClientObject);
         if(_loc4_ == null || _loc4_.turret == null || _loc4_.turret.id == null)
         {
            return;
         }
         var _loc5_:String = _loc4_.turret.id.split("_")[0];
         switch(_loc5_)
         {
            case "smoky":
               §in const const§.§final var final§(param1);
               break;
            case "twins":
               OSGi.clientLog.log("crash","twins js %1",param2);
               §%X§.§'R§(param1,_loc3_.currentBarrel,_loc3_.shotId,this.§]J§(_loc3_.shotDirection));
               break;
            case "ricochet":
               §throw const finally§.§'R§(param1,_loc3_.shotDirectionX,_loc3_.shotDirectionY,_loc3_.shotDirectionZ);
               break;
            case "thunder":
               §else var false§.§final var final§(param1);
         }
      }
      
      private function §case const with§(param1:ClientObject, param2:String) : void
      {
         var _loc3_:Object = JSON.parse(param2);
         var _loc4_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(§use var import§[param1.id] as ClientObject);
         if(_loc4_ == null || _loc4_.turret == null || _loc4_.turret.id == null)
         {
            return;
         }
         var _loc5_:String = _loc4_.turret.id.split("_")[0];
         switch(_loc5_)
         {
            case "smoky":
               §in const const§.§<-§(param1,this.§]J§(_loc3_.hitPosition));
               break;
            case "thunder":
               §else var false§.§<-§(param1,this.§]J§(_loc3_.hitPoint));
         }
      }
      
      private function §9"&§(param1:ClientObject, param2:String) : void
      {
         var _loc3_:Object = JSON.parse(param2);
         var _loc4_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(§use var import§[param1.id] as ClientObject);
         if(_loc4_ == null || _loc4_.turret == null || _loc4_.turret.id == null)
         {
            return;
         }
         var _loc5_:String = _loc4_.turret.id.split("_")[0];
         switch(_loc5_)
         {
            case "ricochet":
               §throw const finally§.§try set var§(param1);
               break;
            case "twins":
               OSGi.clientLog.log("crash","twins js %1",param2);
               §%X§.§try set var§(param1,_loc3_.currentBarrel);
               break;
            case "railgun":
               §3!1§.§try set var§(param1);
         }
      }
      
      private function §if for set§(param1:ClientObject, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:Vector.<ClientObject> = null;
         var _loc9_:Vector.<§finally for false§> = null;
         var _loc10_:int = 0;
         var _loc11_:§finally for false§ = null;
         var _loc12_:* = undefined;
         _loc3_ = JSON.parse(param2);
         var _loc4_:§7!n§ = §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(§use var import§[param1.id] as ClientObject);
         if(_loc4_ == null || _loc4_.turret == null || _loc4_.turret.id == null)
         {
            return;
         }
         var _loc5_:String = _loc4_.turret.id.split("_")[0];
         switch(_loc5_)
         {
            case "railgun":
               _loc6_ = _loc3_.targets as Array;
               _loc7_ = _loc3_.hitPositions as Array;
               _loc8_ = new Vector.<ClientObject>();
               _loc9_ = new Vector.<§finally for false§>();
               _loc10_ = 0;
               while(_loc10_ < _loc7_.length)
               {
                  _loc11_ = this.§]J§(_loc7_[_loc10_]);
                  _loc9_.push(_loc11_);
                  _loc10_++;
               }
               for each(_loc12_ in _loc6_)
               {
                  _loc8_.push(§use var import§[_loc12_]);
               }
               §3!1§.§'R§(param1,this.§]J§(_loc3_.staticHitPosition),_loc8_,_loc9_);
               break;
            case "smoky":
               §in const const§.§static const false§(param1,§use var import§[_loc3_.target],this.§]J§(_loc3_.hitPosition),_loc3_.weakening,_loc3_.critical);
               break;
            case "thunder":
               §else var false§.§static const false§(param1,§use var import§[_loc3_.target],this.§]J§(_loc3_.relativeHitPoint));
               break;
            case "shaft":
               §'"V§.§'R§(param1,this.§]J§(_loc3_.staticHitPosition),§use var import§[_loc3_.target],this.§]J§(_loc3_.hitPoint),_loc3_.impactForce);
         }
      }
      
      private function §]J§(param1:Object) : §finally for false§
      {
         if(param1 == null)
         {
            return null;
         }
         return new §finally for false§(param1.x,param1.y,param1.z);
      }
      
      private function §get set if§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:ClientClass = new ClientClass(_loc2_.id,null,_loc2_.id,null);
         var _loc4_:ClientObject = new ClientObject(_loc2_.id,_loc3_,_loc3_.name,null);
         var _loc5_:Object = BonusCludge.resourceByName[_loc2_.id.split("_")[0]];
         §;0§(modelRegistry.getModel(Long.getLong(1723277227,1936126557))).addBonus(_loc4_,_loc2_.id,_loc2_.id,new §finally for false§(_loc2_.x,_loc2_.y,_loc2_.z),_loc2_.disappearing_time,BonusCludge.resourceByName[_loc2_.id.split("_")[0]].boxResource.id,_loc5_);
      }
      
      private function removeUser(param1:String) : void
      {
         §1U§(OSGi.getInstance().getService(§native var function§)).objectUnloaded();
         §catch for const§(OSGi.getInstance().getService(§finally const class§)).objectUnloaded(§use var import§[param1]);
         delete §use var import§[param1];
      }
      
      private function §#!k§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         if(!_loc2_.system)
         {
            if(_loc2_.team)
            {
               this.§2"X§.§get var super§(_loc2_.nickname,_loc2_.message,this.§default for native§(_loc2_.team_type));
            }
            else
            {
               this.§2"X§.addMessage(_loc2_.nickname,_loc2_.message,this.§default for native§(_loc2_.team_type));
            }
         }
         else
         {
            this.§2"X§.§package throw§(_loc2_.message);
         }
      }
      
      private function §-!Y§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§if import§ = new §if import§();
         var _loc4_:§finally for false§ = new §finally for false§();
         var _loc5_:§finally for false§ = new §finally for false§();
         var _loc6_:§finally for false§ = new §finally for false§();
         var _loc7_:§finally for false§ = new §finally for false§();
         _loc4_.x = _loc2_.position.x;
         _loc4_.y = _loc2_.position.y;
         _loc4_.z = _loc2_.position.z;
         _loc5_.x = _loc2_.orient.x;
         _loc5_.y = _loc2_.orient.y;
         _loc5_.z = _loc2_.orient.z;
         _loc6_.x = _loc2_.line.x;
         _loc6_.y = _loc2_.line.y;
         _loc6_.z = _loc2_.line.z;
         _loc7_.x = _loc2_.angle.x;
         _loc7_.y = _loc2_.angle.y;
         _loc7_.z = _loc2_.angle.z;
         var _loc8_:Number = Number(_loc2_.turretDir);
         var _loc9_:int = int(_loc2_.ctrlBits);
         var _loc10_:int = int(_loc2_.turretBits);
         _loc3_.angularVelocity = _loc7_;
         _loc3_.control = _loc9_;
         _loc3_.linearVelocity = _loc6_;
         _loc3_.orientation = _loc5_;
         _loc3_.position = _loc4_;
         if(§use var import§[_loc2_.tank_id] != null)
         {
            §catch for const§(OSGi.getInstance().getService(§finally const class§)).move(§use var import§[_loc2_.tank_id] as ClientObject,_loc3_);
         }
      }
      
      private function §true for§(param1:ClientObject, param2:String, param3:Object, param4:IGameObject) : void
      {
         WeaponsManager.initBCSH(param3,param4);
         WeaponsManager.initLighting(param3,param4);
         Model.object = param4;
         switch(param2.split("_")[0])
         {
            case "smoky":
               WeaponsManager.getSmokySFX(param1,param3);
               break;
            case "flamethrower":
               WeaponsManager.getFlamethrowerSFX(param1,param3);
               break;
            case "twins":
               WeaponsManager.getTwinsSFX(param1,param3);
               break;
            case "railgun":
               WeaponsManager.getRailgunSFX(param1,param3);
               break;
            case "ricochet":
               WeaponsManager.getRicochetSFXModel(param1,param3);
               break;
            case "freeze":
               WeaponsManager.getFrezeeSFXModel(param1,param3);
               break;
            case "isida":
               WeaponsManager.getIsidaSFX(param1,param3);
               break;
            case "shaft":
               WeaponsManager.getShaftSFX(param1,param3);
               break;
            case "thunder":
               WeaponsManager.getThunderSFX(param1,param3);
         }
         Model.popObject();
      }
      
      private function § "X§(param1:String) : void
      {
         var _loc12_:TankState = null;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:Object = JSON.parse(_loc2_.partsObject);
         var _loc4_:ColoringCC = new ColoringCC();
         var _loc5_:Object3DSCC = new Object3DSCC();
         var _loc6_:Object3DSCC = new Object3DSCC();
         var _loc7_:§`"7§ = new §`"7§();
         _loc7_.engineIdleSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,_loc3_.engineIdleSound)));
         _loc7_.engineStartMovingSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,_loc3_.engineStartMovingSound)));
         _loc7_.engineMovingSound = SoundResource(resourceRegistry.getResource(Long.getLong(0,_loc3_.engineMovingSound)));
         if(resourceRegistry.getResource(Long.getLong(0,_loc2_.colormap_id)) is MultiframeImageResource)
         {
            _loc4_.animatedColoring = MultiframeImageResource(resourceRegistry.getResource(Long.getLong(0,_loc2_.colormap_id)));
         }
         else
         {
            _loc4_.coloring = ImageResource(resourceRegistry.getResource(Long.getLong(0,_loc2_.colormap_id)));
         }
         _loc6_.resourceId = Long.getLong(0,_loc2_.hullResource);
         _loc5_.resourceId = Long.getLong(0,_loc2_.turretResource);
         var _loc8_:TankParts = new TankParts();
         _loc8_.hullObject = new GameObject(Long.getLong(0,_loc2_.hullResource),GameClass(gameTypeRegistry.getClass(Long.getLong(14025,684260))),_loc2_.hull_id,null);
         _loc8_.turretObject = new GameObject(Long.getLong(0,_loc2_.turretResource),GameClass(gameTypeRegistry.getClass(Long.getLong(14025,684260))),_loc2_.turret_id,null);
         _loc8_.coloringObject = new GameObject(Long.getLong(0,_loc2_.colormap_id),GameClass(gameTypeRegistry.getClass(Long.getLong(14025,684260))),_loc2_.colormap_id,null);
         Model.object = _loc8_.hullObject;
         modelRegistry.getModel(_loc8_.hullObject.gameClass.models[1]).putInitParams(_loc6_);
         modelRegistry.getModel(_loc8_.hullObject.gameClass.models[2]).putInitParams(_loc7_);
         Model.popObject();
         Model.object = _loc8_.turretObject;
         modelRegistry.getModel(_loc8_.turretObject.gameClass.models[1]).putInitParams(_loc5_);
         Model.popObject();
         Model.object = _loc8_.coloringObject;
         modelRegistry.getModel(_loc8_.coloringObject.gameClass.models[0]).putInitParams(_loc4_);
         Model.popObject();
         §use var import§[_loc2_.tank_id] = this.§]"?§(_loc2_.tank_id,_loc2_.tank_id);
         var _loc9_:TankSpecification = new TankSpecification();
         _loc9_.speed = _loc2_.maxSpeed;
         _loc9_.turnSpeed = _loc2_.maxTurnSpeed;
         _loc9_.turretRotationSpeed = _loc2_.turret_turn_speed;
         _loc9_.acceleration = _loc2_.acceleration;
         _loc9_.dampingCoeff = _loc2_.dampingCoeff;
         _loc9_.reverseAcceleration = _loc2_.reverseAcceleration;
         _loc9_.reverseTurnAcceleration = _loc2_.reverseTurnAcceleration;
         _loc9_.sideAcceleration = _loc2_.sideAcceleration;
         _loc9_.turnAcceleration = _loc2_.turnAcceleration;
         _loc9_.turretTurnAcceleration = _loc2_.turretTurnAcceleration;
         var _loc10_:§finally for false§ = new §finally for false§();
         var _loc11_:Array = String(_loc2_.position).split("@");
         _loc10_.x = int(_loc11_[0]);
         _loc10_.y = int(_loc11_[1]);
         _loc10_.z = int(_loc11_[2]);
         if(!_loc2_.state_null)
         {
            _loc12_ = new TankState();
            _loc12_.health = _loc2_.health;
            _loc12_.orientation = new §finally for false§(0,0,_loc11_[3]);
            _loc12_.position = _loc10_;
            _loc12_.turretAngle = _loc2_.turretAngle;
            _loc12_.turretControl = _loc2_.turretControl;
         }
         var _loc13_:ClientTank = new ClientTank();
         _loc13_.health = _loc2_.health;
         _loc13_.incarnationId = _loc2_.icration;
         _loc13_.self = _loc2_.tank_id == client.id;
         var _loc14_:String = _loc2_.state;
         _loc13_.spawnState = _loc14_ == "newcome" ? §extends var dynamic§.§4O§ : (_loc14_ == "active" ? §extends var dynamic§.§<"]§ : (_loc14_ == "suicide" ? §extends var dynamic§.DEAD : §extends var dynamic§.§<"]§));
         _loc13_.tankSpecification = _loc9_;
         _loc13_.tankState = _loc12_;
         _loc13_.teamType = this.§default for native§(_loc2_.team_type);
         var _loc15_:§catch for const§ = OSGi.getInstance().getService(§finally const class§) as §catch for const§;
         _loc15_.initObject(§use var import§[_loc2_.tank_id],_loc2_.battleId,_loc2_.mass,_loc2_.power,null,_loc8_,null,_loc2_.impact_force,_loc2_.kickback,_loc2_.turret_rotation_accel,_loc2_.turret_turn_speed,_loc2_.nickname,_loc2_.rank);
         this.§true for§(§use var import§[_loc2_.tank_id],_loc2_.turret_id,JSON.parse(_loc2_.sfxData),_loc8_.turretObject);
         _loc15_.§ "X§(§use var import§[_loc2_.tank_id],_loc13_,_loc8_);
         §1U§(OSGi.getInstance().getService(§native var function§)).objectLoaded();
      }
      
      private function §6!t§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:Object = JSON.parse(_loc2_.map_graphic_data);
         var _loc4_:Object = JSON.parse(_loc2_.skybox);
         var _loc5_:Vector.<Long> = new Vector.<Long>();
         _loc5_.push(Long.getLong(1092696378,-225264163));
         _loc5_.push(Long.getLong(1723277227,1936126557));
         var _loc6_:GameTypeRegistry = OSGi.getInstance().getService(GameTypeRegistry) as GameTypeRegistry;
         _loc6_.createClass(Long.getLong(150325,6843660),_loc5_);
         var _loc7_:ModelRegistry = OSGi.getInstance().getService(ModelRegistry) as ModelRegistry;
         var _loc8_:ResourceRegistry = OSGi.getInstance().getService(ResourceRegistry) as ResourceRegistry;
         var _loc9_:§extends for for§ = new §extends for for§();
         _loc9_.back = ImageResource(_loc8_.getResource(Long.getLong(0,_loc4_.back)));
         _loc9_.bottom = ImageResource(_loc8_.getResource(Long.getLong(0,_loc4_.bottom)));
         _loc9_.front = ImageResource(_loc8_.getResource(Long.getLong(0,_loc4_.front)));
         _loc9_.left = ImageResource(_loc8_.getResource(Long.getLong(0,_loc4_.left)));
         _loc9_.right = ImageResource(_loc8_.getResource(Long.getLong(0,_loc4_.right)));
         _loc9_.top = ImageResource(_loc8_.getResource(Long.getLong(0,_loc4_.top)));
         var _loc10_:§implements package§ = new §implements package§(new §&"1§(_loc3_.dustAlpha,_loc3_.dustDensity,_loc3_.dustFarDistance,_loc3_.dustNearDistance,MultiframeImageResource(_loc8_.getResource(Long.getLong(0,_loc2_.dustParticle))),_loc3_.dustSize),new §!!@§(_loc3_.angleX,_loc3_.angleZ,_loc3_.lightColor,_loc3_.shadowColor),new §in set set§(_loc3_.fogAlpha,_loc3_.fogColor,_loc3_.farLimit,_loc3_.nearLimit),_loc3_.gravity,_loc8_.getResource(Long.getLong(0,_loc2_.mapId)) as MapResource,new §finally for false§(10,3,0),_loc3_.skyboxRevolutionSpeed,_loc9_,_loc3_.ssaoColor);
         var _loc11_:IGameObject = this.§break const§.createObject(Long.getLong(0,_loc2_.mapId),GameClass(_loc6_.getClass(Long.getLong(150325,6843660))),"BattlefieldModel object");
         Model.object = _loc11_;
         _loc7_.getModel(_loc11_.gameClass.models[0]).putInitParams(_loc10_);
         Model.popObject();
         this.§with var import§(userPropertiesService.userName,userPropertiesService.userName);
         var _loc12_:BattlefieldSoundScheme = new BattlefieldSoundScheme();
         var _loc13_:Object = new Object();
         _loc13_.battleId = _loc2_.battleId;
         _loc13_.minRank = _loc2_.minRank;
         _loc13_.maxRank = _loc2_.maxRank;
         _loc13_.ambientSoundId = Long.getLong(0,_loc2_.sound_id);
         _loc13_.reArmorEnabled = _loc2_.reArmorEnabled;
         §;0§(_loc7_.getModel(Long.getLong(1723277227,1936126557))).initObject(client,_loc2_.active,_loc10_,null,_loc12_,_loc2_.kick_period_ms,_loc2_.map_id,_loc2_.invisible_time,_loc2_.skybox_id,_loc2_.spectator,_loc11_,_loc13_);
      }
      
      public function §]"?§(param1:String, param2:String) : ClientObject
      {
         var _loc3_:ClientClass = new ClientClass(param1,null,param2);
         return new ClientObject(param1,_loc3_,param2,null);
      }
      
      private function §with var import§(param1:String, param2:String) : void
      {
         var _loc3_:ClientClass = new ClientClass(param1,null,param2);
         var _loc4_:ClientObject = new ClientObject(param1,_loc3_,param2,null);
         client = _loc4_;
      }
      
      public function destroy() : void
      {
         var _loc1_:* = undefined;
         §;0§(modelRegistry.getModel(Long.getLong(1723277227,1936126557))).spectatorMode = false;
         for each(_loc1_ in §use var import§)
         {
            §catch for const§(OSGi.getInstance().getService(§finally const class§)).objectUnloaded(_loc1_ as ClientObject);
            §1U§(OSGi.getInstance().getService(§native var function§)).objectUnloaded();
         }
         §use var import§ = new Dictionary();
      }
   }
}

