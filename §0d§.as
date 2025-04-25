package
{
   import §!#§.BattleTeamItemModel;
   import §"!T§.§5"a§;
   import §%0§.§throw for default§;
   import §&S§.§in const implements§;
   import §'J§.§true include§;
   import §0!-§.§69§;
   import §0Y§.BattleDmInfoModel;
   import §1]§.§%!j§;
   import §1d§.§false var if§;
   import §30§.BattleDMItemModel;
   import §4"P§.§false const dynamic§;
   import §8!Z§.BattleTeamInfoModel;
   import §9!`§.§try set with§;
   import §@"A§.§else var try§;
   import §],§.§while var const§;
   import §]2§.§"!4§;
   import §]2§.§7e§;
   import §`!D§.§set each§;
   import §`$§.§for for static§;
   import alternativa.init.GarageModelActivator;
   import alternativa.osgi.OSGi;
   import alternativa.service.IModelService;
   import alternativa.tanks.gui.RepatriateBonusWindow;
   import alternativa.tanks.model.ChatModel;
   import alternativa.tanks.model.achievement.AchievementModel;
   import alternativa.tanks.model.battleselect.BattleSelectModel;
   import alternativa.tanks.model.battleselect.create.BattleCreateModel;
   import alternativa.tanks.model.donationalert.DonationAlertModel;
   import alternativa.tanks.model.friends.battleinvite.BattleInviteModel;
   import alternativa.tanks.model.friends.loader.FriendsLoaderModel;
   import alternativa.tanks.model.garage.GarageModel;
   import alternativa.tanks.model.garage.availableitems.AvailableItemsModel;
   import alternativa.tanks.model.garage.rankupsupplybonus.RankUpSupplyBonusModel;
   import alternativa.tanks.model.info.§import const class§;
   import alternativa.tanks.model.info.§var const get§;
   import alternativa.tanks.model.item.BattleItemModel;
   import alternativa.tanks.model.item3d.Item3DModel;
   import alternativa.tanks.model.news.NewsShowingModel;
   import alternativa.tanks.model.panel.IPanel;
   import alternativa.tanks.model.panel.PanelModel;
   import alternativa.tanks.model.premiumaccount.alert.PremiumAccountAlertModel;
   import alternativa.tanks.model.presents.NewPresentsShowingModel;
   import alternativa.tanks.model.settings.SettingsModel;
   import alternativa.tanks.model.socialnetwork.SocialNetworkPanelModel;
   import alternativa.tanks.model.useremailandpassword.PasswordService;
   import alternativa.tanks.model.useremailandpassword.UserEmailAndPasswordModel;
   import alternativa.tanks.model.userproperties.UserPropertiesModel;
   import alternativa.tanks.service.dailyquest.§finally set switch§;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.tanks.service.panel.§default var const§;
   import alternativa.types.Long;
   import §case else§.§>!?§;
   import §continue var do§.§native const set§;
   import §default while§.§implements const§;
   import §each var class§.§8!`§;
   import §false finally§.§with const§;
   import §finally for else§.§case include§;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import §implements var get§.§=k§;
   import §in const use§.§2!S§;
   import §package var each§.§for implements§;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.registry.GameTypeRegistry;
   import platform.client.fp10.core.registry.ModelRegistry;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.registry.SpaceRegistry;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.type.IGameClass;
   import platform.client.fp10.core.type.IGameObject;
   import platform.client.fp10.core.type.ISpace;
   import platform.client.fp10.core.type.impl.GameClass;
   import platform.client.fp10.core.type.impl.GameObject;
   import platform.client.fp10.core.type.impl.Space;
   import platform.client.models.commons.description.DescriptionModelCC;
   import platform.client.models.commons.periodtime.TimePeriodModelCC;
   import platform.client.models.commons.types.ValidationStatus;
   import projects.tanks.client.achievements.model.achievements.§continue super§;
   import projects.tanks.client.battleselect.model.battleselect.create.BattleCreateCC;
   import projects.tanks.client.battleselect.model.info.§"!;§;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   import projects.tanks.client.battleselect.model.item.BattleItemCC;
   import projects.tanks.client.battleselect.model.item.BattleSuspicionLevel;
   import projects.tanks.client.chat.models.chat.chat.ChatCC;
   import projects.tanks.client.chat.types.ChatMessage;
   import projects.tanks.client.chat.types.UserStatus;
   import projects.tanks.client.commons.models.coloring.ColoringCC;
   import projects.tanks.client.commons.models.layout.LayoutState;
   import projects.tanks.client.commons.types.ItemCategoryEnum;
   import projects.tanks.client.commons.types.ItemViewCategoryEnum;
   import projects.tanks.client.entrance.model.entrance.captcha.CaptchaLocation;
   import projects.tanks.client.garage.models.garage.GarageModelCC;
   import projects.tanks.client.garage.models.item.buyable.BuyableCC;
   import projects.tanks.client.garage.models.item.category.ItemCategoryCC;
   import projects.tanks.client.garage.models.item.countable.CountableItemCC;
   import projects.tanks.client.garage.models.item.discount.DiscountCC;
   import projects.tanks.client.garage.models.item.item.ItemModelCC;
   import projects.tanks.client.garage.models.item.item3d.Item3DCC;
   import projects.tanks.client.garage.models.item.kit.§?!$§;
   import projects.tanks.client.garage.models.item.kit.KitItem;
   import projects.tanks.client.garage.models.item.modification.ModificationCC;
   import projects.tanks.client.garage.models.item.object3ds.Object3DSCC;
   import projects.tanks.client.garage.models.item.present.PresentItemCC;
   import projects.tanks.client.garage.models.item.properties.ItemGarageProperty;
   import projects.tanks.client.garage.models.item.properties.ItemGaragePropertyData;
   import projects.tanks.client.garage.models.item.properties.ItemPropertiesCC;
   import projects.tanks.client.garage.models.item.properties.ItemProperty;
   import projects.tanks.client.garage.models.item.temporary.TemporaryItemCC;
   import projects.tanks.client.garage.models.item.upgradeable.UpgradableParamsCC;
   import projects.tanks.client.garage.models.item.upgradeable.calculators.LinearParams;
   import projects.tanks.client.garage.models.item.upgradeable.types.GaragePropertyData;
   import projects.tanks.client.garage.models.item.upgradeable.types.PropertyData;
   import projects.tanks.client.garage.models.item.view.ItemViewCategoryCC;
   import projects.tanks.client.panel.model.battleinvite.BattleInviteMessage;
   import projects.tanks.client.panel.model.bonus.showing.image.BonusImageCC;
   import projects.tanks.client.panel.model.bonus.showing.info.BonusInfoCC;
   import projects.tanks.client.panel.model.bonus.showing.items.BonusItemCC;
   import projects.tanks.client.panel.model.bonus.showing.items.BonusItemsShowingCC;
   import projects.tanks.client.panel.model.dailyquest.§^"#§;
   import projects.tanks.client.panel.model.garage.GarageItemInfo;
   import projects.tanks.client.panel.model.garage.rankupsupplybonus.RankUpSupplyBonusInfo;
   import projects.tanks.client.panel.model.news.item.NewsItemCC;
   import projects.tanks.client.panel.model.news.showing.NewsShowingCC;
   import projects.tanks.client.panel.model.premiumaccount.alert.PremiumAccountAlertCC;
   import projects.tanks.client.panel.model.profile.userproperty.UserPropertyCC;
   import projects.tanks.client.panel.model.socialnetwork.SocialNetworkPanelCC;
   import projects.tanks.client.panel.model.socialnetwork.SocialNetworkPanelParams;
   import projects.tanks.client.tanksservices.model.notifier.battle.BattleNotifierData;
   import projects.tanks.client.tanksservices.model.notifier.online.OnlineNotifierData;
   import projects.tanks.client.tanksservices.model.notifier.premium.PremiumNotifierCC;
   import projects.tanks.client.tanksservices.model.notifier.premium.PremiumNotifierData;
   import projects.tanks.client.tanksservices.model.notifier.rank.RankNotifierData;
   import projects.tanks.client.tanksservices.model.notifier.uid.UidNotifierData;
   import projects.tanks.client.tanksservices.types.battle.BattleInfoData;
   import projects.tanks.client.users.model.friends.container.UserContainerCC;
   import projects.tanks.client.users.services.chatmoderator.ChatModeratorLevel;
   import projects.tanks.clients.flash.commons.models.battlelinkactivator.BattleLinkActivatorModel;
   import projects.tanks.clients.flash.commons.models.layout.notify.ILobbyLayoutNotify;
   import projects.tanks.clients.flash.commons.models.layout.notify.LobbyLayoutNotifyModel;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.FriendsModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.IFriends;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.accepted.FriendsAcceptedModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.acceptednotificator.FriendsAcceptedNotificatorModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.incoming.FriendsIncomingModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.incomingnotificator.FriendsIncomingNotificatorModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.friends.outgoing.FriendsOutgoingModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.listener.UserNotifier;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.listener.UserNotifierModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.battle.BattleNotifierModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.online.OnlineNotifierModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.premium.PremiumNotifierModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.rank.RankNotifierModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.notifier.uid.UidNotifierModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.model.uidcheck.UidCheckModel;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.user.IUserInfoService;
   import scpacker.networking.INetworkListener;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   import scpacker.networking.commands.Command;
   import scpacker.networking.commands.Type;
   import §super break§.§get set with§;
   import §super for switch§.§implements const package§;
   import §while const switch§.§;!Q§;
   
   public class §0d§ extends EventDispatcher implements INetworkListener
   {
      public static var §8";§:RankNotifierModel;
      
      public static var §var for each§:UidNotifierModel;
      
      public static var §8!A§:OnlineNotifierModel;
      
      public static var §package for set§:BattleNotifierModel;
      
      public static var gameTypeRegistry:GameTypeRegistry = OSGi.getInstance().getService(GameTypeRegistry) as GameTypeRegistry;
      
      public static var modelRegistry:ModelRegistry = OSGi.getInstance().getService(ModelRegistry) as ModelRegistry;
      
      public static var resourceRegistry:ResourceRegistry = OSGi.getInstance().getService(ResourceRegistry) as ResourceRegistry;
      
      public static var §set if§:Boolean = true;
      
      public var garage:GarageModelActivator;
      
      private var networker:Network;
      
      private var §function const if§:String;
      
      private var modelRegister:IModelService;
      
      private var §`!I§:ISpace;
      
      private var §override set while§:ISpace;
      
      private var §6"'§:ISpace;
      
      private var §2"X§:ChatModel;
      
      private var §5!q§:FriendsModel;
      
      private var §6!D§:FriendsLoaderModel;
      
      private var §implements const false§:FriendsAcceptedModel;
      
      private var §1"=§:FriendsAcceptedNotificatorModel;
      
      private var §const var do§:FriendsIncomingModel;
      
      private var §else const static§:FriendsIncomingNotificatorModel;
      
      private var § ^§:FriendsOutgoingModel;
      
      private var §catch const catch§:BattleInviteModel;
      
      private var §false continue§:BattleLinkActivatorModel;
      
      private var §break const function§:UserNotifierModel;
      
      private var §9!W§:PremiumNotifierModel;
      
      private var §9!<§:SocialNetworkPanelModel;
      
      private var §7",§:SettingsModel;
      
      private var §use const try§:DonationAlertModel;
      
      private var newPresents:NewPresentsShowingModel;
      
      private var §6z§:PremiumAccountAlertModel;
      
      private var userProperties:UserPropertiesModel;
      
      private var §import for function§:AvailableItemsModel;
      
      private var §-"C§:NewsShowingModel;
      
      private var §]!4§:AchievementModel;
      
      private var §6!3§:RankUpSupplyBonusModel;
      
      private var §0!%§:GarageModel;
      
      private var §set const while§:§implements const§;
      
      private var §null const each§:§;!Q§;
      
      private var §+!9§:int = 0;
      
      private var bonusWindow:RepatriateBonusWindow;
      
      private var §throw case§:int;
      
      private var §set const super§:BattleSelectModel;
      
      private var §override for function§:BattleCreateModel;
      
      private var §in package§:UidCheckModel;
      
      private var §use continue§:§2!S§;
      
      private var §function for native§:Vector.<IGameObject> = new Vector.<IGameObject>();
      
      private var §continue for continue§:Vector.<IGameObject> = new Vector.<IGameObject>();
      
      private var §super set throw§:§5"a§;
      
      private var §`2§:§finally set switch§;
      
      private var §=B§:§for for static§;
      
      public function §0d§()
      {
         super();
         this.garage = new GarageModelActivator();
         this.garage.start(OSGi.getInstance());
         this.modelRegister = OSGi.getInstance().getService(IModelService) as IModelService;
         this.§0!k§();
         this.§9!<§ = new SocialNetworkPanelModel();
         this.§7",§ = new SettingsModel();
         this.§use const try§ = new DonationAlertModel();
         this.newPresents = new NewPresentsShowingModel();
         this.§9!W§ = new PremiumNotifierModel();
         this.§6z§ = new PremiumAccountAlertModel();
         this.userProperties = new UserPropertiesModel();
         this.§import for function§ = new AvailableItemsModel();
         this.§-"C§ = new NewsShowingModel();
         this.§]!4§ = new AchievementModel();
         this.§6!3§ = new RankUpSupplyBonusModel();
         this.§0!%§ = GarageModel(modelRegistry.getModel(Long.getLong(0,300040010)));
         this.§null const each§ = §;!Q§(modelRegistry.getModel(Long.getLong(0,300040005)));
         this.§2"X§ = new ChatModel();
         this.§`!I§ = new Space(Long.getLong(884380667,214),null,null,false);
         this.§override set while§ = new Space(Long.getLong(59235923,646943),null,null,false);
         this.§6"'§ = new Space(Long.getLong(52835823,6349643),null,null,false);
         SpaceRegistry(OSGi.getInstance().getService(SpaceRegistry)).addSpace(this.§6"'§);
         SpaceRegistry(OSGi.getInstance().getService(SpaceRegistry)).addSpace(this.§override set while§);
         SpaceRegistry(OSGi.getInstance().getService(SpaceRegistry)).addSpace(this.§`!I§);
         var _loc1_:Vector.<Long> = new Vector.<Long>();
         _loc1_.push(Long.getLong(800589377,840038407));
         _loc1_.push(Long.getLong(1424296501,-807048170));
         _loc1_.push(Long.getLong(492245786,-1837686060));
         _loc1_.push(Long.getLong(916213531,-841295065));
         _loc1_.push(Long.getLong(644770553,-155779331));
         _loc1_.push(Long.getLong(580825858,-1941731225));
         _loc1_.push(Long.getLong(0,300040017));
         _loc1_.push(Long.getLong(0,300040029));
         _loc1_.push(Long.getLong(0,300040004));
         _loc1_.push(Long.getLong(1497301838,-1092921347));
         _loc1_.push(Long.getLong(947299051,-358915161));
         _loc1_.push(Long.getLong(0,300040023));
         _loc1_.push(Long.getLong(687238537,2002147897));
         _loc1_.push(Long.getLong(1896140971,-1323660734));
         _loc1_.push(Long.getLong(1215266592,-1320571870));
         _loc1_.push(Long.getLong(1870140649,1080360405));
         _loc1_.push(Long.getLong(882584998,678334280));
         _loc1_.push(Long.getLong(0,300040010));
         _loc1_.push(Long.getLong(1891481944,-1293130596));
         _loc1_.push(Long.getLong(888433053,2115284408));
         _loc1_.push(Long.getLong(253893103,1551357114));
         _loc1_.push(Long.getLong(0,300040005));
         var _loc2_:GameTypeRegistry = OSGi.getInstance().getService(GameTypeRegistry) as GameTypeRegistry;
         _loc2_.createClass(Long.getLong(15025,684360),_loc1_);
         this.§set const while§ = §implements const§(modelRegistry.getModel(Long.getLong(2058573415,-746879275)));
         this.§set const super§ = BattleSelectModel(modelRegistry.getModel(Long.getLong(0,300090011)));
         this.§override for function§ = BattleCreateModel(modelRegistry.getModel(Long.getLong(0,300090002)));
         this.§in package§ = UidCheckModel(modelRegistry.getModel(Long.getLong(1543089237,611543143)));
         this.§in package§.objectLoaded();
         this.§use continue§ = §2!S§(modelRegistry.getModel(Long.getLong(1190039526,-1224288945)));
         this.§super set throw§ = §5"a§(modelRegistry.getModel(Long.getLong(1726782619,1524609945)));
         this.§`2§ = §finally set switch§(modelRegistry.getModel(Long.getLong(1044301282,-2025301046)));
         this.§=B§ = §for for static§(modelRegistry.getModel(Long.getLong(432617209,-1426923357)));
      }
      
      private function §0!k§() : *
      {
         this.§5!q§ = new FriendsModel();
         this.§6!D§ = new FriendsLoaderModel();
         this.§implements const false§ = new FriendsAcceptedModel();
         this.§1"=§ = new FriendsAcceptedNotificatorModel();
         this.§const var do§ = new FriendsIncomingModel();
         this.§else const static§ = new FriendsIncomingNotificatorModel();
         this.§ ^§ = new FriendsOutgoingModel();
         this.§5!q§.objectLoaded();
         this.§6!D§.objectLoaded();
         OSGi.getInstance().registerService(IFriends,this.§5!q§);
         IUserInfoService(OSGi.getInstance().getService(IUserInfoService)).init();
         §8";§ = new RankNotifierModel();
         this.§break const function§ = new UserNotifierModel();
         §var for each§ = new UidNotifierModel();
         §8!A§ = new OnlineNotifierModel();
         OSGi.getInstance().registerService(UserNotifier,this.§break const function§);
         §package for set§ = new BattleNotifierModel();
         §package for set§.objectLoaded();
         this.§catch const catch§ = new BattleInviteModel();
         this.§catch const catch§.objectLoaded();
         this.§false continue§ = new BattleLinkActivatorModel();
         this.§false continue§.objectLoaded();
      }
      
      public function onData(param1:Command) : void
      {
         var parser:Object = null;
         var chatCC:ChatCC = null;
         var linksWhiteList:Vector.<String> = null;
         var link:* = undefined;
         var battleMessage:BattleInviteMessage = null;
         var bits:Vector.<int> = null;
         var bit:String = null;
         var rankData:Vector.<RankNotifierData> = null;
         var uidData:Vector.<UidNotifierData> = null;
         var onlineData:Vector.<OnlineNotifierData> = null;
         var battleData:Vector.<BattleNotifierData> = null;
         var rankNotifierData:RankNotifierData = null;
         var uidNotifierData:UidNotifierData = null;
         var onlineNotifierData:OnlineNotifierData = null;
         var battleNotifierData:BattleNotifierData = null;
         var friends:Array = null;
         var incoming:Array = null;
         var outcoming:Array = null;
         var users:Vector.<String> = null;
         var u:Object = null;
         var incomingFriendsContainer:UserContainerCC = null;
         var new_friends:Array = null;
         var new_accepted_friends:Array = null;
         var obj:Object = null;
         var cc:PremiumAccountAlertCC = null;
         var premiumCC:PremiumNotifierCC = null;
         var uidObject:UidNotifierData = null;
         var premiumData:Vector.<PremiumNotifierData> = null;
         var premiumObject:PremiumNotifierData = null;
         var battleObject:BattleNotifierData = null;
         var onlineObject:OnlineNotifierData = null;
         var rankObject:RankNotifierData = null;
         var battleGameObject:IGameObject = null;
         var temp:§catch set null§ = null;
         var battleInfoGameObject:IGameObject = null;
         var battleInfoUser:BattleInfoUser = null;
         var socialParams:SocialNetworkPanelCC = null;
         var socialNetworkPanelParams:SocialNetworkPanelParams = null;
         var achievements:Vector.<§continue super§> = null;
         var achievementId:Object = null;
         var achievement:§continue super§ = null;
         var bonusModels:Vector.<Long> = null;
         var bonusObject:IGameObject = null;
         var items:Vector.<GarageItemInfo> = null;
         var itemm:* = undefined;
         var iteminfo:GarageItemInfo = null;
         var currentObjectsInGarageSpace:Vector.<IGameObject> = null;
         var object:IGameObject = null;
         var gameobj:IGameObject = null;
         var currentObjectsInSpace:Vector.<IGameObject> = null;
         var currentObjectsInInfoSpace:Vector.<IGameObject> = null;
         var supplies:Vector.<RankUpSupplyBonusInfo> = null;
         var supply:* = undefined;
         var supplyInfo:RankUpSupplyBonusInfo = null;
         var battleSelectObject:IGameObject = null;
         var quests:Vector.<§case include§> = null;
         var quest:* = undefined;
         var weeklyQuestDescription:§else var try§ = null;
         var dailyQuest:§case include§ = null;
         var prizes:Vector.<§^"#§> = null;
         var prize:* = undefined;
         var dailyQuestPrize:§^"#§ = null;
         var weeklyQuestRewards:Vector.<§8!`§> = null;
         var reward:* = undefined;
         var questReward:§8!`§ = null;
         var item3DModel:Item3DModel = null;
         var mountedItems:Vector.<IGameObject> = null;
         var item:IGameObject = null;
         var data:Command = param1;
         try
         {
            switch(data.type)
            {
               case Type.LOBBY_CHAT:
                  if(data.args[0] == "system")
                  {
                     this.§!d§(data.args[1],data.args[2] == "true" ? true : false);
                  }
                  else if(data.args[0] == "clear_all")
                  {
                     this.§2"X§.clearAllMessages();
                  }
                  else if(data.args[0] == "init_messages")
                  {
                     parser = JSON.parse(data.args[2]);
                     chatCC = new ChatCC();
                     linksWhiteList = new Vector.<String>();
                     chatCC.chatModeratorLevel = this.§false§(parser.chatModeratorLevel);
                     chatCC.admin = parser.admin;
                     chatCC.antifloodEnabled = parser.antifloodEnabled;
                     chatCC.bufferSize = parser.bufferSize;
                     chatCC.chatEnabled = parser.chatEnabled;
                     chatCC.enterCost = parser.enterCost;
                     chatCC.minChar = parser.minChar;
                     chatCC.minWord = parser.minWord;
                     chatCC.selfName = parser.selfName;
                     chatCC.symbolCost = parser.symbolCost;
                     chatCC.typingSpeedAntifloodEnabled = parser.typingSpeedAntifloodEnabled;
                     for each(link in parser.linksWhiteList)
                     {
                        linksWhiteList.push(link);
                     }
                     chatCC.linksWhiteList = linksWhiteList;
                     this.§2"X§.putInitParams(chatCC);
                     this.§2"X§.objectLoaded();
                     this.§3!2§(data.args[1]);
                  }
                  else if(data.args[0] == "clean_by")
                  {
                     this.§2"X§.cleanUsersMessages(data.args[1]);
                  }
                  else
                  {
                     this.§package const for§(data.args[0]);
                  }
                  break;
               case Type.LOBBY:
                  if(data.args[0] == "init_panel")
                  {
                     this.§case const use§(data.args[1]);
                     this.§7",§.objectLoadedPost();
                  }
                  else if(data.args[0] == "invite_to_battle")
                  {
                     parser = JSON.parse(data.args[2]);
                     battleMessage = new BattleInviteMessage();
                     battleMessage.availableRank = parser.availableRank;
                     battleMessage.availableSlot = parser.availableSlot;
                     battleMessage.battleId = parser.battleId;
                     battleMessage.gameHost = "vk.com";
                     battleMessage.mapName = parser.mapName;
                     battleMessage.mode = §69§.getType(parser.mode);
                     battleMessage.noSuppliesBattle = parser.noSuppliesBattle;
                     battleMessage.privateBattle = parser.privateBattle;
                     battleMessage.remote = false;
                     battleMessage.serverNumber = 1;
                     battleMessage.url = parser.battleId;
                     this.§catch const catch§.notify(data.args[1],battleMessage);
                  }
                  else if(data.args[0] == "user_leave_from_battle")
                  {
                     §package for set§.leaveBattle(data.args[1]);
                  }
                  else if(data.args[0] == "reject_invite")
                  {
                     this.§catch const catch§.rejected(data.args[1]);
                  }
                  else if(data.args[0] == "accept_invite")
                  {
                     this.§catch const catch§.accepted(data.args[1]);
                  }
                  else if(data.args[0] == "battle_is_not_alive")
                  {
                     this.§false continue§.dead(data.args[1]);
                  }
                  else if(data.args[0] == "set_double_crystalls")
                  {
                     §default var const§(OSGi.getInstance().getService(IPanelView)).getPanel().hasDoubleCrystal = data.args[1];
                  }
                  else if(data.args[0] == "show_alert")
                  {
                     this.§set const while§.show(data.args[1]);
                  }
                  else if(data.args[0] == "wrong_captcha")
                  {
                     bits = new Vector.<int>();
                     for each(bit in String(data.args[1]).split(","))
                     {
                        bits.push(parseInt(bit));
                     }
                     this.§7",§.§override const return§(CaptchaLocation.ACCOUNT_SETTINGS_FORM,bits);
                  }
                  else if(data.args[0] == "captchaAnswerCorrect")
                  {
                     this.§7",§.captchaAnswerCorrect(CaptchaLocation.ACCOUNT_SETTINGS_FORM);
                  }
                  else if(data.args[0] == "battle_is_alive")
                  {
                     this.§false continue§.alive(data.args[1]);
                  }
                  else if(data.args[0] == "update_user_consumer")
                  {
                     parser = JSON.parse(data.args[1]);
                     rankData = new Vector.<RankNotifierData>();
                     uidData = new Vector.<UidNotifierData>();
                     onlineData = new Vector.<OnlineNotifierData>();
                     battleData = new Vector.<BattleNotifierData>();
                     rankNotifierData = new RankNotifierData();
                     rankNotifierData.userId = parser.id;
                     rankNotifierData.rank = parser.rank;
                     rankData.push(rankNotifierData);
                     uidNotifierData = new UidNotifierData();
                     uidNotifierData.userId = parser.id;
                     uidNotifierData.uid = parser.id;
                     uidData.push(uidNotifierData);
                     onlineNotifierData = new OnlineNotifierData();
                     onlineNotifierData.online = parser.online;
                     onlineNotifierData.userId = parser.id;
                     onlineNotifierData.serverNumber = 1;
                     onlineData.push(onlineNotifierData);
                     if(parser.battleId != null)
                     {
                        battleNotifierData = new BattleNotifierData();
                        battleNotifierData.battleData = new BattleInfoData();
                        battleNotifierData.battleData.battleId = parser.battleId;
                        battleNotifierData.battleData.mapName = parser.mapName;
                        battleNotifierData.battleData.mode = this.§"!"§(parser.mode);
                        battleNotifierData.battleData.privateBattle = parser.privateBattle;
                        battleNotifierData.battleData.proBattle = parser.proBattle;
                        battleNotifierData.battleData.range = new §7e§(parser.max,parser.min);
                        battleNotifierData.battleData.remote = false;
                        battleNotifierData.battleData.serverNumber = 1;
                        battleNotifierData.userId = parser.id;
                        battleData.push(battleNotifierData);
                     }
                     §8";§.setRank(rankData);
                     §var for each§.setUid(uidData);
                     §8!A§.setOnline(onlineData);
                     §package for set§.setBattle(battleData);
                  }
                  else if(data.args[0] == "init_friends_list")
                  {
                     parser = JSON.parse(data.args[1]);
                     friends = parser.friends;
                     incoming = parser.incoming;
                     outcoming = parser.outcoming;
                     rankData = new Vector.<RankNotifierData>();
                     uidData = new Vector.<UidNotifierData>();
                     onlineData = new Vector.<OnlineNotifierData>();
                     battleData = new Vector.<BattleNotifierData>();
                     users = new Vector.<String>();
                     for each(u in friends)
                     {
                        rankNotifierData = new RankNotifierData();
                        rankNotifierData.userId = u.id;
                        rankNotifierData.rank = u.rank;
                        rankData.push(rankNotifierData);
                        uidNotifierData = new UidNotifierData();
                        uidNotifierData.userId = u.id;
                        uidNotifierData.uid = u.id;
                        uidData.push(uidNotifierData);
                        onlineNotifierData = new OnlineNotifierData();
                        onlineNotifierData.online = u.online;
                        onlineNotifierData.userId = u.id;
                        onlineNotifierData.serverNumber = 1;
                        onlineData.push(onlineNotifierData);
                        if(u.battleId != null)
                        {
                           battleNotifierData = new BattleNotifierData();
                           battleNotifierData.battleData = new BattleInfoData();
                           battleNotifierData.battleData.battleId = u.battleId;
                           battleNotifierData.battleData.mapName = u.mapName;
                           battleNotifierData.battleData.mode = this.§"!"§(u.mode);
                           battleNotifierData.battleData.privateBattle = u.privateBattle;
                           battleNotifierData.battleData.proBattle = u.proBattle;
                           battleNotifierData.battleData.range = new §7e§(u.max,u.min);
                           battleNotifierData.battleData.remote = false;
                           battleNotifierData.battleData.serverNumber = 1;
                           battleNotifierData.userId = u.id;
                           battleData.push(battleNotifierData);
                        }
                        users.push(u.id);
                     }
                     this.§implements const false§.objectLoaded(new UserContainerCC(users));
                     users = new Vector.<String>();
                     for each(u in parser.new_accepted_friends)
                     {
                        rankNotifierData = new RankNotifierData();
                        rankNotifierData.userId = u.id;
                        rankNotifierData.rank = u.rank;
                        rankData.push(rankNotifierData);
                        uidNotifierData = new UidNotifierData();
                        uidNotifierData.userId = u.id;
                        uidNotifierData.uid = u.id;
                        uidData.push(uidNotifierData);
                        onlineNotifierData = new OnlineNotifierData();
                        onlineNotifierData.online = u.online;
                        onlineNotifierData.userId = u.id;
                        onlineNotifierData.serverNumber = 1;
                        onlineData.push(onlineNotifierData);
                        if(u.battleId != null)
                        {
                           battleNotifierData = new BattleNotifierData();
                           battleNotifierData.battleData = new BattleInfoData();
                           battleNotifierData.battleData.battleId = u.battleId;
                           battleNotifierData.battleData.mapName = u.mapName;
                           battleNotifierData.battleData.mode = this.§"!"§(u.mode);
                           battleNotifierData.battleData.privateBattle = u.privateBattle;
                           battleNotifierData.battleData.proBattle = u.proBattle;
                           battleNotifierData.battleData.range = new §7e§(u.max,u.min);
                           battleNotifierData.battleData.remote = false;
                           battleNotifierData.battleData.serverNumber = 1;
                           battleNotifierData.userId = u.id;
                           battleData.push(battleNotifierData);
                        }
                        users.push(u.id);
                     }
                     this.§1"=§.objectLoaded(new UserContainerCC(users));
                     users = new Vector.<String>();
                     for each(u in incoming)
                     {
                        rankNotifierData = new RankNotifierData();
                        rankNotifierData.userId = u.id;
                        rankNotifierData.rank = u.rank;
                        rankData.push(rankNotifierData);
                        uidNotifierData = new UidNotifierData();
                        uidNotifierData.userId = u.id;
                        uidNotifierData.uid = u.id;
                        uidData.push(uidNotifierData);
                        onlineNotifierData = new OnlineNotifierData();
                        onlineNotifierData.online = u.online;
                        onlineNotifierData.userId = u.id;
                        onlineNotifierData.serverNumber = 1;
                        onlineData.push(onlineNotifierData);
                        users.push(u.id);
                     }
                     incomingFriendsContainer = new UserContainerCC(users);
                     this.§const var do§.objectLoaded(incomingFriendsContainer);
                     users = new Vector.<String>();
                     for each(u in parser.new_incoming_friends)
                     {
                        rankNotifierData = new RankNotifierData();
                        rankNotifierData.userId = u.id;
                        rankNotifierData.rank = u.rank;
                        rankData.push(rankNotifierData);
                        uidNotifierData = new UidNotifierData();
                        uidNotifierData.userId = u.id;
                        uidNotifierData.uid = u.id;
                        uidData.push(uidNotifierData);
                        onlineNotifierData = new OnlineNotifierData();
                        onlineNotifierData.online = u.online;
                        onlineNotifierData.userId = u.id;
                        onlineNotifierData.serverNumber = 1;
                        onlineData.push(onlineNotifierData);
                        users.push(u.id);
                     }
                     this.§else const static§.objectLoaded(new UserContainerCC(users));
                     users = new Vector.<String>();
                     for each(u in outcoming)
                     {
                        rankNotifierData = new RankNotifierData();
                        rankNotifierData.userId = u.id;
                        rankNotifierData.rank = u.rank;
                        rankData.push(rankNotifierData);
                        uidNotifierData = new UidNotifierData();
                        uidNotifierData.userId = u.id;
                        uidNotifierData.uid = u.id;
                        uidData.push(uidNotifierData);
                        onlineNotifierData = new OnlineNotifierData();
                        onlineNotifierData.online = u.online;
                        onlineNotifierData.userId = u.id;
                        onlineNotifierData.serverNumber = 1;
                        onlineData.push(onlineNotifierData);
                        users.push(u.id);
                     }
                     this.§ ^§.objectLoaded(new UserContainerCC(users));
                  }
                  else if(data.args[0] == "friends_onUsersLoaded")
                  {
                     parser = JSON.parse(data.args[1]);
                     new_friends = parser.new_incoming_friends;
                     new_accepted_friends = parser.new_accepted_friends;
                     users = new Vector.<String>();
                     if(new_friends.length > 0)
                     {
                        for each(obj in new_friends)
                        {
                           users.push(obj.id);
                        }
                        this.§else const static§.objectLoaded(new UserContainerCC(users));
                     }
                     users = new Vector.<String>();
                     if(new_accepted_friends.length > 0)
                     {
                        for each(obj in new_accepted_friends)
                        {
                           users.push(obj.id);
                        }
                        this.§1"=§.objectLoaded(new UserContainerCC(users));
                     }
                     this.§6!D§.onUsersLoaded();
                  }
                  else if(data.args[0] == "remove_new_accepted_friend")
                  {
                     this.§1"=§.onRemoved(data.args[1]);
                  }
                  else if(data.args[0] == "remove_new_incoming_friend")
                  {
                     this.§else const static§.onRemoved(data.args[1]);
                  }
                  else if(data.args[0] == "friend_addToAccepted")
                  {
                     this.§implements const false§.onAdding(data.args[1]);
                     this.§1"=§.onAdding(data.args[1]);
                     this.§else const static§.onRemoved(data.args[1]);
                  }
                  else if(data.args[0] == "friend_addToOutgoing")
                  {
                     this.§ ^§.onAdding(data.args[1]);
                  }
                  else if(data.args[0] == "friend_addToIncoming")
                  {
                     this.§const var do§.onAdding(data.args[1]);
                     this.§else const static§.onAdding(data.args[1]);
                  }
                  else if(data.args[0] == "friend_removeFromIncoming")
                  {
                     this.§const var do§.onRemoved(data.args[1]);
                     this.§else const static§.onRemoved(data.args[1]);
                  }
                  else if(data.args[0] == "friend_removeFromOutgoing")
                  {
                     this.§ ^§.onRemoved(data.args[1]);
                  }
                  else if(data.args[0] == "friend_removeFromAccepted")
                  {
                     this.§implements const false§.onRemoved(data.args[1]);
                     this.§1"=§.onRemoved(data.args[1]);
                  }
                  else if(data.args[0] == "init_premium")
                  {
                     parser = JSON.parse(data.args[1]);
                     cc = new PremiumAccountAlertCC();
                     premiumCC = new PremiumNotifierCC();
                     premiumCC.lifeTimeInSeconds = parser.left_time;
                     cc.localRuntimeUser = true;
                     cc.needShowNotificationCompletionPremium = Boolean(parser.needShowNotificationCompletionPremium);
                     cc.needShowWelcomeAlert = Boolean(parser.needShowWelcomeAlert);
                     cc.reminderCompletionPremiumTime = parser.reminderCompletionPremiumTime;
                     cc.wasShowAlertForFirstPurchasePremium = Boolean(parser.wasShowAlertForFirstPurchasePremium);
                     cc.wasShowReminderCompletionPremium = Boolean(parser.wasShowReminderCompletionPremium);
                     this.§9!W§.putInitParams(premiumCC);
                     this.§9!W§.objectLoaded();
                     this.§6z§.objectLoaded(cc);
                  }
                  else if(data.args[0] == "notify_user_change_nickname")
                  {
                     uidData = new Vector.<UidNotifierData>();
                     parser = JSON.parse(data.args[1]);
                     uidObject = new UidNotifierData();
                     uidObject.userId = parser.userId;
                     uidObject.uid = parser.newUserId;
                     uidData.push(uidObject);
                     §var for each§.setUid(uidData);
                  }
                  else if(data.args[0] == "notify_user_premium")
                  {
                     premiumData = new Vector.<PremiumNotifierData>();
                     parser = JSON.parse(data.args[1]);
                     premiumObject = new PremiumNotifierData();
                     premiumObject.userId = parser.userId;
                     premiumObject.premiumTimeLeftInSeconds = parser.premiumTimeLeftInSeconds;
                     premiumData.push(premiumObject);
                     this.§9!W§.setPremiumTimeLeft(premiumData);
                  }
                  else if(data.args[0] == "notify_user_battle")
                  {
                     battleData = new Vector.<BattleNotifierData>();
                     parser = JSON.parse(data.args[1]);
                     battleObject = new BattleNotifierData();
                     battleObject.battleData = new BattleInfoData();
                     battleObject.userId = parser.userId;
                     battleObject.battleData.battleId = parser.battleId;
                     battleObject.battleData.mapName = parser.mapName;
                     battleObject.battleData.mode = this.§"!"§(parser.mode);
                     battleObject.battleData.privateBattle = parser.privateBattle;
                     battleObject.battleData.proBattle = parser.proBattle;
                     battleObject.battleData.range = new §7e§(parser.maxRank,parser.minRank);
                     battleObject.battleData.remote = false;
                     battleObject.battleData.serverNumber = 1;
                     battleData.push(battleObject);
                     §package for set§.setBattle(battleData);
                  }
                  else if(data.args[0] == "battle_not_found")
                  {
                     this.§false continue§.battleNotFound();
                  }
                  else if(data.args[0] == "notify_user_leave_battle")
                  {
                     §package for set§.leaveBattle(data.args[1]);
                  }
                  else if(data.args[0] == "notify_user_online")
                  {
                     onlineData = new Vector.<OnlineNotifierData>();
                     parser = JSON.parse(data.args[1]);
                     onlineObject = new OnlineNotifierData();
                     onlineObject.online = parser.online;
                     onlineObject.serverNumber = 1;
                     onlineObject.userId = parser.userId;
                     onlineData.push(onlineObject);
                     §8!A§.setOnline(onlineData);
                  }
                  else if(data.args[0] == "notify_user_rank")
                  {
                     rankData = new Vector.<RankNotifierData>();
                     parser = JSON.parse(data.args[1]);
                     rankObject = new RankNotifierData();
                     rankObject.rank = parser.rank;
                     rankObject.userId = parser.userId;
                     rankData.push(rankObject);
                     §8";§.setRank(rankData);
                  }
                  else if(data.args[0] == "open_shop_url")
                  {
                     navigateToURL(new URLRequest(data.args[1]));
                  }
                  else if(data.args[0] == "update_premium_time")
                  {
                     this.§9!W§.updateTimeLeft(data.args[1]);
                  }
                  else if(data.args[0] == "activate_premium")
                  {
                     this.§6z§.showWelcomeAlert(data.args[1]);
                  }
                  else if(data.args[0] == "add_crystall")
                  {
                     this.userProperties.changeCrystal(int(data.args[1]));
                  }
                  else if(data.args[0] == "add_score")
                  {
                     this.userProperties.updateScore(int(data.args[1]));
                  }
                  else if(data.args[0] == "update_rating_and_place")
                  {
                     this.userProperties.updateRatingAndPlace(data.args[1],data.args[2]);
                  }
                  else if(data.args[0] == "update_rang")
                  {
                     this.userProperties.updateRank(int(data.args[1]),int(data.args[2]),int(data.args[3]),int(data.args[4]),int(data.args[5]));
                  }
                  else if(data.args[0] == "payment_successful")
                  {
                     this.§use const try§.showDonationAlert(new Long(0,0),data.args[1],data.args[2],data.args[3],ImageResource(resourceRegistry.getResource(Long.getLong(0,data.args[4]))).data);
                  }
                  else if(data.args[0] == "showNewPresentsAlert")
                  {
                     this.newPresents.showAlert();
                  }
                  else if(data.args[0] == "init_battle_select")
                  {
                     this.§9!e§(data.args[1]);
                     this.§]!4§.setPanelPartition(0);
                  }
                  else if(data.args[0] == "init_battle_create")
                  {
                     this.§import var break§(data.args[1]);
                  }
                  else if(data.args[0] == "add_battle")
                  {
                     parser = JSON.parse(data.args[1]);
                     this.§>"?§(parser);
                  }
                  else if(data.args[0] == "remove_battle")
                  {
                     battleGameObject = this.§override set while§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        this.§override set while§.destroyObject(battleGameObject.id);
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "start_battle")
                  {
                     this.§]!4§.hideAllBubbles(true);
                     if(§catch set null§(OSGi.getInstance().getService(IBattleController)) == null)
                     {
                        temp = new §catch set null§();
                        OSGi.getInstance().registerService(IBattleController,temp);
                     }
                     Network(OSGi.getInstance().getService(INetworker)).addEventListener(OSGi.getInstance().getService(IBattleController) as §catch set null§);
                  }
                  else if(data.args[0] == "show_battle_info")
                  {
                     this.§<k§(data.args[1]);
                  }
                  else if(data.args[0] == "hide_battle_info")
                  {
                     battleInfoGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     if(battleInfoGameObject != null)
                     {
                        Model.object = battleInfoGameObject;
                        this.§6"'§.destroyObject(battleInfoGameObject.id);
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "fightFailedServerIsHalting")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     Model.object = battleGameObject;
                     §import const class§(modelRegistry.getModelForObject(battleGameObject,§var const get§)).fightFailedServerIsHalting();
                     Model.popObject();
                  }
                  else if(data.args[0] == "removeUser")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        §import const class§(modelRegistry.getModelForObject(battleGameObject,§var const get§)).removeUser(data.args[2]);
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "roundFinish")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        §import const class§(modelRegistry.getModelForObject(battleGameObject,§var const get§)).roundFinish();
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "roundStart")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        §import const class§(modelRegistry.getModelForObject(battleGameObject,§var const get§)).roundStart();
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "updateName")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        §import const class§(modelRegistry.getModelForObject(battleGameObject,§var const get§)).updateName(data.args[2]);
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "updateUserSuspiciousState")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        §import const class§(modelRegistry.getModelForObject(battleGameObject,§var const get§)).updateUserSuspiciousState(data.args[2],data.args[3]);
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "addUser")
                  {
                     parser = JSON.parse(data.args[1]);
                     battleGameObject = this.§6"'§.getObjectByName(parser.battleId);
                     Model.object = battleGameObject;
                     battleInfoUser = new BattleInfoUser();
                     battleInfoUser.kills = parser.kills;
                     battleInfoUser.score = parser.score;
                     battleInfoUser.suspicious = parser.suspicious;
                     battleInfoUser.user = parser.user;
                     BattleDmInfoModel(modelRegistry.getModel(Long.getLong(0,300090003))).addUser(battleInfoUser);
                     Model.popObject();
                  }
                  else if(data.args[0] == "addUserTeam")
                  {
                     parser = JSON.parse(data.args[1]);
                     battleGameObject = this.§6"'§.getObjectByName(parser.battleId);
                     Model.object = battleGameObject;
                     battleInfoUser = new BattleInfoUser();
                     battleInfoUser.kills = parser.kills;
                     battleInfoUser.score = parser.score;
                     battleInfoUser.suspicious = parser.suspicious;
                     battleInfoUser.user = parser.user;
                     BattleTeamInfoModel(modelRegistry.getModel(Long.getLong(0,300090027))).addUser(battleInfoUser,this.§default for native§(parser.type));
                     Model.popObject();
                  }
                  else if(data.args[0] == "equipmentNotMatchConstraints")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     Model.object = battleGameObject;
                     BattleDmInfoModel(modelRegistry.getModel(Long.getLong(0,300090003))).equipmentNotMatchConstraints();
                     Model.popObject();
                  }
                  else if(data.args[0] == "equipmentNotMatchConstraintsTeam")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     Model.object = battleGameObject;
                     BattleTeamInfoModel(modelRegistry.getModel(Long.getLong(0,300090027))).equipmentNotMatchConstraints();
                     Model.popObject();
                  }
                  else if(data.args[0] == "updateUserScore")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     Model.object = battleGameObject;
                     BattleTeamInfoModel(modelRegistry.getModel(Long.getLong(0,300090027))).updateUserScore(data.args[2],data.args[3]);
                     Model.popObject();
                  }
                  else if(data.args[0] == "swapTeams")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     Model.object = battleGameObject;
                     BattleTeamInfoModel(modelRegistry.getModel(Long.getLong(0,300090027))).swapTeams();
                     Model.popObject();
                  }
                  else if(data.args[0] == "updateTeamScore")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     Model.object = battleGameObject;
                     BattleTeamInfoModel(modelRegistry.getModel(Long.getLong(0,300090027))).updateTeamScore(this.§default for native§(data.args[2]),data.args[3]);
                     Model.popObject();
                  }
                  else if(data.args[0] == "updateUserKills")
                  {
                     battleGameObject = this.§6"'§.getObjectByName(data.args[1]);
                     Model.object = battleGameObject;
                     BattleDmInfoModel(modelRegistry.getModel(Long.getLong(0,300090003))).updateUserKills(data.args[2],data.args[3]);
                     Model.popObject();
                  }
                  else if(data.args[0] == "server_halt")
                  {
                     PanelModel(OSGi.getInstance().getService(IPanel)).serverHalt(null,50,0,0,null);
                  }
                  else if(data.args[0] == "showSettings")
                  {
                     parser = JSON.parse(data.args[1]);
                     socialParams = new SocialNetworkPanelCC();
                     socialParams.socialNetworkParams = new Vector.<SocialNetworkPanelParams>();
                     socialNetworkPanelParams = new SocialNetworkPanelParams();
                     socialNetworkPanelParams.authorizationUrl = parser.authorizationUrl;
                     socialNetworkPanelParams.linkExists = parser.linkExists;
                     socialNetworkPanelParams.snId = parser.snId;
                     socialParams.socialNetworkParams.push(socialNetworkPanelParams);
                     socialParams.passwordCreated = parser.passwordCreated;
                     this.§9!<§.objectLoaded(socialParams);
                     this.§use continue§.putInitParams(new §=k§(parser.notificationEnabled));
                     this.§use continue§.objectLoaded();
                     UserEmailAndPasswordModel(OSGi.getInstance().getService(PasswordService)).objectLoaded(parser.email,parser.isConfirmEmail);
                     this.§7",§.openSettings(§with const§.NONE);
                  }
                  else if(data.args[0] == "activateMessage")
                  {
                     UserEmailAndPasswordModel(OSGi.getInstance().getService(PasswordService)).activateMessage(data.args[1]);
                  }
                  else if(data.args[0] == "notifyPasswordIsSet")
                  {
                     UserEmailAndPasswordModel(OSGi.getInstance().getService(PasswordService)).notifyPasswordIsSet();
                  }
                  else if(data.args[0] == "notifyPasswordIsNotSet")
                  {
                     UserEmailAndPasswordModel(OSGi.getInstance().getService(PasswordService)).notifyPasswordIsNotSet();
                  }
                  else if(data.args[0] == "notifyCorrectPassword")
                  {
                     UserEmailAndPasswordModel(OSGi.getInstance().getService(PasswordService)).notifyCorrectPassword();
                  }
                  else if(data.args[0] == "notifyIncorrectPassword")
                  {
                     UserEmailAndPasswordModel(OSGi.getInstance().getService(PasswordService)).notifyIncorrectPassword();
                  }
                  else if(data.args[0] == "captchaUpdated")
                  {
                     bits = new Vector.<int>();
                     for each(bit in String(data.args[1]).split(","))
                     {
                        bits.push(parseInt(bit));
                     }
                     this.§7",§.captchaUpdated(CaptchaLocation.ACCOUNT_SETTINGS_FORM,bits);
                  }
                  else if(data.args[0] == "unlinkSuccess")
                  {
                     this.§9!<§.unlinkSuccess(data.args[1]);
                  }
                  else if(data.args[0] == "linkCreated")
                  {
                     this.§9!<§.linkCreated(data.args[1]);
                  }
                  else if(data.args[0] == "open_recovery_window")
                  {
                     PanelModel(OSGi.getInstance().getService(IPanel)).openRecoveryWindow(data.args[1]);
                  }
                  else if(data.args[0] == "hide_settings")
                  {
                     this.§7",§.§get const set§();
                  }
                  else if(data.args[0] == "show_news")
                  {
                     this.showNews(data.args[1]);
                  }
                  else if(data.args[0] == "show_achievements")
                  {
                     parser = JSON.parse(data.args[1]);
                     achievements = new Vector.<§continue super§>();
                     for each(achievementId in parser.ids)
                     {
                        achievements.push(this.§return for set§(int(achievementId)));
                     }
                     this.§]!4§.putInitParams(new §%!j§(achievements));
                     this.§]!4§.setPanelPartition(1);
                     this.§]!4§.objectLoaded();
                  }
                  else if(data.args[0] == "complete_achievement")
                  {
                     achievement = this.§return for set§(int(data.args[1]));
                     this.§]!4§.completeAchievement(achievement,data.args[2],0);
                  }
                  else if(data.args[0] == "show_bonuses")
                  {
                     this.§native final§(data.args[1]);
                  }
                  else if(data.args[0] == "show_bonuses_present")
                  {
                     parser = JSON.parse(data.args[1]);
                     bonusModels = new Vector.<Long>();
                     bonusObject = new GameObject(Long.getLong(0,parser.image),gameTypeRegistry.createClass(Long.getLong(0,parser.image),bonusModels),"BonusObject",this.§`!I§);
                     bonusModels.push(Long.getLong(0,300050005));
                     bonusModels.push(Long.getLong(0,300050006));
                     Model.object = bonusObject;
                     modelRegistry.getModel(bonusObject.gameClass.models[0]).putInitParams(new BonusImageCC(ImageResource(resourceRegistry.getResource(Long.getLong(0,parser.image)))));
                     modelRegistry.getModel(bonusObject.gameClass.models[1]).putInitParams(new BonusInfoCC(parser.bottomText,null,parser.topText));
                     IObjectLoadListener(modelRegistry.getModel(bonusObject.gameClass.models[0])).objectLoadedPost();
                     Model.popObject();
                  }
                  else if(data.args[0] == "opened_items")
                  {
                     parser = JSON.parse(data.args[1]);
                     items = new Vector.<GarageItemInfo>();
                     for each(itemm in parser.items)
                     {
                        iteminfo = new GarageItemInfo();
                        iteminfo.category = this.§break set while§(itemm.itemViewCategory);
                        iteminfo.item = new GameObject(Long.getLong(0,itemm.preview),null,itemm.item,this.§`!I§);
                        iteminfo.itemViewCategory = this.§native const include§(itemm.category);
                        iteminfo.modificationIndex = itemm.modification;
                        iteminfo.name = itemm.name;
                        iteminfo.position = itemm.position;
                        iteminfo.preview = ImageResource(resourceRegistry.getResource(Long.getLong(0,itemm.preview)));
                        items.push(iteminfo);
                     }
                     this.§import for function§.showAvailableItems(items);
                  }
                  else if(data.args[0] == "show_payment")
                  {
                     PanelModel(OSGi.getInstance().getService(IPanel)).onShowPayment(JSON.parse(data.args[1]));
                  }
                  else if(data.args[0] == "unload_garage")
                  {
                     this.§0!%§.objectUnloaded();
                     currentObjectsInGarageSpace = new Vector.<IGameObject>();
                     for each(object in this.§`!I§.objects)
                     {
                        currentObjectsInGarageSpace.push(object);
                     }
                     for each(gameobj in currentObjectsInGarageSpace)
                     {
                        this.§`!I§.destroyObject(gameobj.id);
                     }
                     this.§]!4§.hideAllBubbles(false);
                  }
                  else if(data.args[0] == "unload_battle_select")
                  {
                     currentObjectsInSpace = new Vector.<IGameObject>();
                     for each(object in this.§override set while§.objects)
                     {
                        currentObjectsInSpace.push(object);
                     }
                     currentObjectsInSpace.reverse();
                     for each(gameobj in currentObjectsInSpace)
                     {
                        this.§override set while§.destroyObject(gameobj.id);
                     }
                     currentObjectsInInfoSpace = new Vector.<IGameObject>();
                     for each(object in this.§6"'§.objects)
                     {
                        currentObjectsInInfoSpace.push(object);
                     }
                     for each(gameobj in currentObjectsInInfoSpace)
                     {
                        this.§6"'§.destroyObject(gameobj.id);
                     }
                     this.§]!4§.hideAllBubbles(false);
                  }
                  else if(data.args[0] == "change_layout_state")
                  {
                     LobbyLayoutNotifyModel(OSGi.getInstance().getService(ILobbyLayoutNotify)).beginLayoutSwitch(this.§6!+§(data.args[1]));
                  }
                  else if(data.args[0] == "end_layout_switch")
                  {
                     LobbyLayoutNotifyModel(OSGi.getInstance().getService(ILobbyLayoutNotify)).endLayoutSwitch(this.§6!+§(data.args[1]),this.§6!+§(data.args[2]));
                  }
                  else if(data.args[0] == "show_rankup_supplies")
                  {
                     parser = JSON.parse(data.args[1]);
                     supplies = new Vector.<RankUpSupplyBonusInfo>();
                     for each(supply in parser.items)
                     {
                        supplyInfo = new RankUpSupplyBonusInfo();
                        supplyInfo.count = supply.count;
                        supplyInfo.text = supply.text;
                        supplyInfo.preview = ImageResource(resourceRegistry.getResource(Long.getLong(0,supply.preview)));
                        supplies.push(supplyInfo);
                     }
                     this.§6!3§.showRankUpSupplyBonusAlerts(supplies);
                  }
                  else if(data.args[0] == "unload_chat")
                  {
                     this.§2"X§.objectUnloaded();
                  }
                  else if(data.args[0] == "setFilteredBattleName")
                  {
                     battleSelectObject = this.§override set while§.getObjectByName("BattleSelectObject");
                     Model.object = battleSelectObject;
                     BattleCreateModel(modelRegistry.getModel(Long.getLong(0,300090002))).setFilteredBattleName(data.args[1]);
                     Model.popObject();
                  }
                  else if(data.args[0] == "createFailedYouAreBanned")
                  {
                     battleSelectObject = this.§override set while§.getObjectByName("BattleSelectObject");
                     Model.object = battleSelectObject;
                     BattleCreateModel(modelRegistry.getModel(Long.getLong(0,300090002))).createFailedYouAreBanned();
                     Model.popObject();
                  }
                  else if(data.args[0] == "createFailedServerIsHalting")
                  {
                     battleSelectObject = this.§override set while§.getObjectByName("BattleSelectObject");
                     Model.object = battleSelectObject;
                     BattleCreateModel(modelRegistry.getModel(Long.getLong(0,300090002))).createFailedServerIsHalting();
                     Model.popObject();
                  }
                  else if(data.args[0] == "createFailedTooManyBattlesFromYou")
                  {
                     battleSelectObject = this.§override set while§.getObjectByName("BattleSelectObject");
                     Model.object = battleSelectObject;
                     BattleCreateModel(modelRegistry.getModel(Long.getLong(0,300090002))).createFailedTooManyBattlesFromYou();
                     Model.popObject();
                  }
                  else if(data.args[0] == "validateResult")
                  {
                     this.§in package§.validateResult(this.§if set finally§(data.args[1]));
                  }
                  else if(data.args[0] == "showQuestWindow")
                  {
                     parser = JSON.parse(data.args[1]);
                     quests = new Vector.<§case include§>();
                     for each(quest in parser.quests)
                     {
                        dailyQuest = new §case include§();
                        prizes = new Vector.<§^"#§>();
                        dailyQuest.canSkipForFree = quest.canSkipForFree;
                        dailyQuest.description = quest.description;
                        dailyQuest.finishCriteria = quest.finishCriteria;
                        dailyQuest.image = ImageResource(resourceRegistry.getResource(Long.getLong(0,quest.image)));
                        for each(prize in quest.prizes)
                        {
                           dailyQuestPrize = new §^"#§();
                           dailyQuestPrize.count = prize.count;
                           dailyQuestPrize.name = prize.name;
                           prizes.push(dailyQuestPrize);
                        }
                        dailyQuest.prizes = prizes;
                        dailyQuest.progress = quest.progress;
                        dailyQuest.questId = Long.getLong(0,quest.questId);
                        dailyQuest.skipCost = quest.skipCost;
                        quests.push(dailyQuest);
                     }
                     weeklyQuestDescription = new §else var try§();
                     weeklyQuestDescription.currentQuestLevel = parser.weeklyQuestDescription.currentQuestLevel;
                     weeklyQuestDescription.currentQuestStreak = parser.weeklyQuestDescription.currentQuestStreak;
                     weeklyQuestDescription.doneForToday = parser.weeklyQuestDescription.doneForToday;
                     weeklyQuestDescription.questImage = ImageResource(resourceRegistry.getResource(Long.getLong(0,parser.weeklyQuestDescription.questImage)));
                     weeklyQuestDescription.rewardImage = ImageResource(resourceRegistry.getResource(Long.getLong(0,parser.weeklyQuestDescription.rewardImage)));
                     this.§super set throw§.showQuestWindow(quests,weeklyQuestDescription);
                  }
                  else if(data.args[0] == "skipDailyQuest")
                  {
                     parser = JSON.parse(data.args[1]);
                     dailyQuest = new §case include§();
                     prizes = new Vector.<§^"#§>();
                     dailyQuest.canSkipForFree = parser.quest.canSkipForFree;
                     dailyQuest.description = parser.quest.description;
                     dailyQuest.finishCriteria = parser.quest.finishCriteria;
                     dailyQuest.image = ImageResource(resourceRegistry.getResource(Long.getLong(0,parser.quest.image)));
                     for each(prize in parser.quest.prizes)
                     {
                        dailyQuestPrize = new §^"#§();
                        dailyQuestPrize.count = prize.count;
                        dailyQuestPrize.name = prize.name;
                        prizes.push(dailyQuestPrize);
                     }
                     dailyQuest.prizes = prizes;
                     dailyQuest.progress = parser.quest.progress;
                     dailyQuest.questId = Long.getLong(0,parser.quest.questId);
                     dailyQuest.skipCost = parser.quest.skipCost;
                     this.§super set throw§.skipDailyQuest(Long.getLong(0,parser.questId),dailyQuest);
                  }
                  else if(data.args[0] == "showQuestWindowWithoutDailyQuests")
                  {
                     parser = JSON.parse(data.args[1]);
                     weeklyQuestDescription = new §else var try§();
                     weeklyQuestDescription.currentQuestLevel = parser.weeklyQuestDescription.currentQuestLevel;
                     weeklyQuestDescription.currentQuestStreak = parser.weeklyQuestDescription.currentQuestStreak;
                     weeklyQuestDescription.doneForToday = parser.weeklyQuestDescription.doneForToday;
                     weeklyQuestDescription.questImage = ImageResource(resourceRegistry.getResource(Long.getLong(0,parser.weeklyQuestDescription.questImage)));
                     weeklyQuestDescription.rewardImage = ImageResource(resourceRegistry.getResource(Long.getLong(0,parser.weeklyQuestDescription.rewardImage)));
                     this.§super set throw§.showQuestWindowWithoutDailyQuests(weeklyQuestDescription);
                  }
                  else if(data.args[0] == "takeDailyQuestPrize")
                  {
                     this.§super set throw§.takeDailyQuestPrize(Long.getLong(0,data.args[1]));
                  }
                  else if(data.args[0] == "notifyDailyQuestCompleted")
                  {
                     this.§`2§.notifyDailyQuestCompleted();
                  }
                  else if(data.args[0] == "notifyDailyQuestGenerated")
                  {
                     this.§`2§.notifyDailyQuestGenerated();
                  }
                  else if(data.args[0] == "showWeeklyQuestReward")
                  {
                     parser = JSON.parse(data.args[1]);
                     weeklyQuestRewards = new Vector.<§8!`§>();
                     for each(reward in parser.rewards)
                     {
                        questReward = new §8!`§();
                        questReward.count = reward.count;
                        questReward.itemImage = ImageResource(resourceRegistry.getResource(Long.getLong(0,reward.itemImage)));
                        weeklyQuestRewards.push(questReward);
                     }
                     this.§=B§.showWeeklyQuestReward(weeklyQuestRewards);
                  }
                  break;
               case Type.GARAGE:
                  if(data.args[0] == "init_garage_items")
                  {
                     this.§+M§(data.args[1],data.src);
                     this.§]!4§.setPanelPartition(1);
                  }
                  else if(data.args[0] == "init_market")
                  {
                     this.initMarket(data.args[1]);
                  }
                  else if(data.args[0] == "selectFirstItemInDepot")
                  {
                     this.§0!%§.selectFirstItemInDepot();
                  }
                  else if(data.args[0] == "mount_item")
                  {
                     item3DModel = Item3DModel(modelRegistry.getModel(Long.getLong(0,300040012)));
                     Model.object = this.§`!I§.getObjectByName(data.args[1]);
                     item3DModel.putInitParams(new Item3DCC(data.args[2] == "false" ? false : true));
                     item3DModel.objectLoaded();
                     Model.popObject();
                     mountedItems = new Vector.<IGameObject>();
                     mountedItems.push(this.§`!I§.getObjectByName(data.args[1]));
                     if(data.args[2] != "false")
                     {
                        this.§0!%§.initMounted(mountedItems);
                     }
                  }
                  else if(data.args[0] == "init_mounted_item")
                  {
                     item3DModel = Item3DModel(modelRegistry.getModel(Long.getLong(0,300040012)));
                     Model.object = this.§`!I§.getObjectByName(data.args[1]);
                     item3DModel.putInitParams(new Item3DCC(data.args[2]));
                     item3DModel.objectLoaded();
                     Model.popObject();
                     mountedItems = new Vector.<IGameObject>();
                     mountedItems.push(this.§`!I§.getObjectByName(data.args[1]));
                     this.§0!%§.initMounted(mountedItems);
                  }
                  else if(data.args[0] == "select")
                  {
                     item = this.§`!I§.getObjectByName(data.args[1]);
                     this.§0!%§.select(item);
                  }
                  else if(data.args[0] == "showCategory")
                  {
                     this.§0!%§.showCategory(this.§native const include§(data.args[1]));
                  }
                  break;
               case Type.BATTLE_SELECT:
                  if(data.args[0] == "madePrivate")
                  {
                     battleGameObject = this.§override set while§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        BattleItemModel(modelRegistry.getModel(Long.getLong(0,300090008))).madePrivate();
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "updateName")
                  {
                     battleGameObject = this.§override set while§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        BattleItemModel(modelRegistry.getModel(Long.getLong(0,300090008))).updateName(data.args[2]);
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "updateSuspicious")
                  {
                     battleGameObject = this.§override set while§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        BattleItemModel(modelRegistry.getModel(Long.getLong(0,300090008))).updateSuspicious(data.args[2]);
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "releaseSlot")
                  {
                     battleGameObject = this.§override set while§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        BattleDMItemModel(modelRegistry.getModel(Long.getLong(0,300090004))).onReleaseSlot(data.args[2]);
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "reserveSlot")
                  {
                     battleGameObject = this.§override set while§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        BattleDMItemModel(modelRegistry.getModel(Long.getLong(0,300090004))).onReserveSlot(data.args[2]);
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "releaseSlotTeam")
                  {
                     battleGameObject = this.§override set while§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        BattleTeamItemModel(modelRegistry.getModel(Long.getLong(0,300090028))).onReleaseSlot(data.args[2]);
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "reserveSlotTeam")
                  {
                     battleGameObject = this.§override set while§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        BattleTeamItemModel(modelRegistry.getModel(Long.getLong(0,300090028))).onReserveSlot(data.args[2],this.§default for native§(data.args[3]));
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "swapTeams")
                  {
                     battleGameObject = this.§override set while§.getObjectByName(data.args[1]);
                     if(battleGameObject != null)
                     {
                        Model.object = battleGameObject;
                        BattleTeamItemModel(modelRegistry.getModel(Long.getLong(0,300090028))).swapTeams();
                        Model.popObject();
                     }
                  }
                  else if(data.args[0] == "select")
                  {
                     battleSelectObject = this.§override set while§.getObjectByName("BattleSelectObject");
                     Model.object = battleSelectObject;
                     BattleSelectModel(modelRegistry.getModel(Long.getLong(0,300090011))).select(data.args[1]);
                     Model.popObject();
                  }
            }
         }
         catch(e:Error)
         {
            Network(OSGi.getInstance().getService(INetworker)).send("lobby;error;" + "Lobby error " + e.getStackTrace());
            throw e;
         }
      }
      
      private function §native final§(param1:String) : void
      {
         var _loc7_:* = undefined;
         var _loc8_:GameObject = null;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:Vector.<IGameObject> = new Vector.<IGameObject>();
         var _loc4_:Vector.<Long> = new Vector.<Long>();
         _loc4_.push(Long.getLong(0,300050006));
         _loc4_.push(Long.getLong(0,300050007));
         _loc4_.push(Long.getLong(0,300050008));
         var _loc5_:GameClass = new GameClass(Long.getLong(0,502350235),_loc4_);
         var _loc6_:GameObject = new GameObject(Long.getLong(0,62386283),_loc5_,"BonusModelObject",this.§`!I§);
         for each(_loc7_ in _loc2_.items)
         {
            _loc8_ = new GameObject(Long.getLong(Math.random(),Math.random()),_loc5_,"BonusItem",this.§`!I§);
            Model.object = _loc8_;
            Model(modelRegistry.getModel(_loc4_[1])).putInitParams(new BonusItemCC(_loc7_.count,ImageResource(resourceRegistry.getResource(Long.getLong(0,_loc7_.preview)))));
            Model.popObject();
            _loc3_.push(_loc8_);
         }
         Model.object = _loc6_;
         Model(modelRegistry.getModel(_loc4_[0])).putInitParams(new BonusInfoCC(_loc2_.bottomText,ImageResource(resourceRegistry.getResource(Long.getLong(0,_loc2_.image))),_loc2_.topText));
         Model(modelRegistry.getModel(_loc4_[2])).putInitParams(new BonusItemsShowingCC(_loc3_));
         IObjectLoadListener(modelRegistry.getModel(_loc4_[2])).objectLoaded();
         Model.popObject();
      }
      
      private function §6!+§(param1:String) : LayoutState
      {
         switch(param1)
         {
            case "GARAGE":
               return LayoutState.GARAGE;
            case "BATTLE_SELECT":
               return LayoutState.BATTLE_SELECT;
            case "BATTLE":
               return LayoutState.BATTLE;
            default:
               return LayoutState.RELOAD_SPACE;
         }
      }
      
      private function §return for set§(param1:int) : §continue super§
      {
         switch(param1)
         {
            case 0:
               return §continue super§.FIRST_PURCHASE;
            case 1:
               return §continue super§.FIRST_REFERRAL;
            case 2:
               return §continue super§.FIGHT_FIRST_BATTLE;
            case 3:
               return §continue super§.FIRST_DONATE;
            default:
               return null;
         }
      }
      
      private function §3!2§(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ChatMessage = null;
         var _loc4_:Object = JSON.parse(param1);
         var _loc5_:Vector.<ChatMessage> = new Vector.<ChatMessage>([]);
         for each(_loc2_ in _loc4_.messages)
         {
            _loc3_ = new ChatMessage();
            _loc3_.sourceUserStatus = !!_loc2_.system ? null : new UserStatus(this.§false§(_loc2_.chatPermissions),_loc2_.sourceUserIp,_loc2_.rang,_loc2_.name,_loc2_.name,_loc2_.sourceUserPremium);
            _loc3_.system = _loc2_.system;
            _loc3_.targetUserStatus = !!_loc2_.addressed ? new UserStatus(this.§false§(_loc2_.chatPermissionsTo),_loc2_.targetUserIp,_loc2_.rangTo,_loc2_.nameTo,_loc2_.nameTo,_loc2_.targetUserPremium) : null;
            _loc3_.text = _loc2_.message;
            _loc3_.warning = _loc2_.yellow;
            _loc5_.push(_loc3_);
         }
         this.§2"X§.showMessages(_loc5_);
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
      
      private function §<k§(param1:String) : void
      {
         var _loc7_:§implements const package§ = null;
         var _loc8_:* = undefined;
         var _loc9_:BattleInfoUser = null;
         var _loc10_:§set each§ = null;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:BattleInfoUser = null;
         var _loc14_:BattleInfoUser = null;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:IGameClass = gameTypeRegistry.getClass(Long.getLong(5823622,5812058));
         if(this.§"!"§(_loc2_.battleMode) != §"!4§.DM)
         {
            _loc3_ = gameTypeRegistry.getClass(Long.getLong(58236223,58120559));
         }
         var _loc4_:IGameObject = this.§6"'§.createObject(Long.getLong(this.§+!9§++,this.§+!9§++),_loc3_,_loc2_.itemId);
         var _loc5_:§"!;§ = new §"!;§();
         _loc5_.battleMode = this.§"!"§(_loc2_.battleMode);
         _loc5_.itemId = _loc2_.itemId;
         _loc5_.§2"=§ = new §native const set§(_loc2_.scoreLimit,_loc2_.timeLimitInSec);
         _loc5_.map = this.§override set while§.getObject(Long.getLong(_loc2_.preview * 1000,_loc2_.preview * 1000));
         _loc5_.maxPeopleCount = _loc2_.maxPeopleCount;
         _loc5_.name = _loc2_.name;
         _loc5_.parkourMode = _loc2_.parkourMode;
         _loc5_.proBattle = _loc2_.proBattle;
         _loc5_.rankRange = new §7e§(_loc2_.maxRank,_loc2_.minRank);
         _loc5_.roundStarted = _loc2_.roundStarted;
         _loc5_.spectator = _loc2_.spectator;
         _loc5_.timeLeftInSec = _loc2_.timeLeftInSec;
         _loc5_.userPaidNoSuppliesBattle = _loc2_.userPaidNoSuppliesBattle;
         _loc5_.withoutBonuses = _loc2_.withoutBonuses;
         _loc5_.withoutCrystals = _loc2_.withoutCrystals;
         _loc5_.withoutSupplies = _loc2_.withoutSupplies;
         _loc5_.§class for throw§ = true;
         _loc5_.equipmentConstraintsMode = this.§-!D§(_loc2_.equipmentConstraintsMode);
         _loc5_.reArmor = _loc2_.reArmorEnabled;
         var _loc6_:§false var if§ = new §false var if§();
         _loc6_.proBattleEnterPrice = _loc2_.proBattleEnterPrice;
         _loc6_.timeLeftInSec = _loc2_.proBattleTimeLeftInSec == -1 ? 0 : int(_loc2_.proBattleTimeLeftInSec);
         Model.object = _loc4_;
         §throw for default§(modelRegistry.getModel(_loc4_.gameClass.models[2])).putInitParams(_loc6_);
         §throw for default§(modelRegistry.getModel(_loc4_.gameClass.models[2])).objectLoadedPost();
         §import const class§(modelRegistry.getModel(_loc4_.gameClass.models[0])).putInitParams(_loc5_);
         §import const class§(modelRegistry.getModel(_loc4_.gameClass.models[0])).objectLoaded();
         if(this.§"!"§(_loc2_.battleMode) == §"!4§.DM)
         {
            _loc7_ = new §implements const package§();
            _loc7_.users = new Vector.<BattleInfoUser>();
            for each(_loc8_ in _loc2_.users)
            {
               _loc9_ = new BattleInfoUser();
               _loc9_.kills = _loc8_.kills;
               _loc9_.score = _loc8_.score;
               _loc9_.suspicious = _loc8_.suspicious;
               _loc9_.user = _loc8_.user;
               _loc7_.users.push(_loc9_);
            }
            BattleDmInfoModel(modelRegistry.getModel(_loc4_.gameClass.models[1])).putInitParams(_loc7_);
            BattleDmInfoModel(modelRegistry.getModel(_loc4_.gameClass.models[1])).objectLoadedPost();
         }
         else
         {
            _loc10_ = new §set each§();
            _loc10_.autoBalance = _loc2_.autoBalance;
            _loc10_.friendlyFire = _loc2_.friendlyFire;
            _loc10_.scoreBlue = _loc2_.scoreBlue;
            _loc10_.scoreRed = _loc2_.scoreRed;
            _loc10_.usersBlue = new Vector.<BattleInfoUser>();
            for each(_loc11_ in _loc2_.usersBlue)
            {
               _loc13_ = new BattleInfoUser();
               _loc13_.kills = _loc11_.kills;
               _loc13_.score = _loc11_.score;
               _loc13_.suspicious = _loc11_.suspicious;
               _loc13_.user = _loc11_.user;
               _loc10_.usersBlue.push(_loc13_);
            }
            _loc10_.usersRed = new Vector.<BattleInfoUser>();
            for each(_loc12_ in _loc2_.usersRed)
            {
               _loc14_ = new BattleInfoUser();
               _loc14_.kills = _loc12_.kills;
               _loc14_.score = _loc12_.score;
               _loc14_.suspicious = _loc12_.suspicious;
               _loc14_.user = _loc12_.user;
               _loc10_.usersRed.push(_loc14_);
            }
            BattleTeamInfoModel(modelRegistry.getModel(_loc4_.gameClass.models[1])).putInitParams(_loc10_);
            BattleTeamInfoModel(modelRegistry.getModel(_loc4_.gameClass.models[1])).objectLoadedPost();
         }
         Model.popObject();
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
      
      private function §>"?§(param1:Object) : void
      {
         var _loc3_:IGameObject = null;
         var _loc4_:BattleItemCC = null;
         var _loc5_:§true include§ = null;
         var _loc6_:* = undefined;
         var _loc7_:§get set with§ = null;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc2_:IGameClass = gameTypeRegistry.getClass(Long.getLong(5823623,5812059));
         if(this.§"!"§(param1.battleMode) != §"!4§.DM)
         {
            _loc2_ = gameTypeRegistry.getClass(Long.getLong(58236221,58120558));
         }
         if(_loc2_ != null)
         {
            if(this.§override set while§.getObjectByName(param1.battleId) != null)
            {
               this.§override set while§.destroyObject(this.§override set while§.getObjectByName(param1.battleId).id);
            }
            _loc3_ = this.§override set while§.createObject(Long.getLong(this.§+!9§++ * 100,this.§+!9§++ * 100),_loc2_,param1.battleId);
            _loc4_ = new BattleItemCC();
            _loc4_.battleId = param1.battleId;
            _loc4_.battleMode = this.§"!"§(param1.battleMode);
            _loc4_.map = this.§override set while§.getObject(Long.getLong(param1.preview * 1000,param1.preview * 1000));
            _loc4_.maxPeople = param1.maxPeople;
            _loc4_.name = param1.name;
            _loc4_.privateBattle = param1.privateBattle;
            _loc4_.proBattle = param1.proBattle;
            _loc4_.rankRange = new §7e§(param1.maxRank,param1.minRank);
            _loc4_.suspicious = param1.suspicious;
            _loc4_.equipmentConstraintsMode = this.§-!D§(param1.equipmentConstraintsMode);
            _loc4_.parkourMode = param1.parkourMode;
            Model.object = _loc3_;
            BattleItemModel(modelRegistry.getModel(_loc3_.gameClass.models[0])).putInitParams(_loc4_);
            if(this.§"!"§(param1.battleMode) == §"!4§.DM)
            {
               _loc5_ = new §true include§();
               _loc5_.users = new Vector.<String>();
               for each(_loc6_ in param1.users)
               {
                  _loc5_.users.push(_loc6_);
               }
               BattleDMItemModel(modelRegistry.getModel(_loc3_.gameClass.models[1])).putInitParams(_loc5_);
               BattleDMItemModel(modelRegistry.getModel(_loc3_.gameClass.models[1])).objectLoaded();
            }
            else
            {
               _loc7_ = new §get set with§();
               _loc7_.usersBlue = new Vector.<String>();
               _loc7_.usersRed = new Vector.<String>();
               for each(_loc8_ in param1.usersBlue)
               {
                  _loc7_.usersBlue.push(_loc8_);
               }
               for each(_loc9_ in param1.usersRed)
               {
                  _loc7_.usersRed.push(_loc9_);
               }
               BattleTeamItemModel(modelRegistry.getModel(_loc3_.gameClass.models[1])).putInitParams(_loc7_);
               BattleTeamItemModel(modelRegistry.getModel(_loc3_.gameClass.models[1])).objectLoaded();
            }
            BattleItemModel(modelRegistry.getModel(_loc3_.gameClass.models[0])).objectLoadedPost();
            this.§continue for continue§.push(_loc3_);
         }
      }
      
      private function initMarket(param1:String) : void
      {
         var _loc6_:Object = null;
         var _loc7_:Vector.<ItemGaragePropertyData> = null;
         var _loc8_:Vector.<GaragePropertyData> = null;
         var _loc9_:Vector.<PropertyData> = null;
         var _loc10_:Vector.<KitItem> = null;
         var _loc11_:Object = null;
         var _loc12_:IGameObject = null;
         var _loc13_:* = undefined;
         var _loc14_:Vector.<PropertyData> = null;
         var _loc15_:* = undefined;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:Array = new Array();
         var _loc4_:Vector.<Long> = new Vector.<Long>();
         _loc4_.push(Long.getLong(800589377,840038407));
         _loc4_.push(Long.getLong(1424296501,-807048170));
         _loc4_.push(Long.getLong(492245786,-1837686060));
         _loc4_.push(Long.getLong(916213531,-841295065));
         _loc4_.push(Long.getLong(644770553,-155779331));
         _loc4_.push(Long.getLong(580825858,-1941731225));
         _loc4_.push(Long.getLong(0,300040017));
         _loc4_.push(Long.getLong(0,300040029));
         _loc4_.push(Long.getLong(0,300040004));
         _loc4_.push(Long.getLong(1497301838,-1092921347));
         _loc4_.push(Long.getLong(947299051,-358915161));
         _loc4_.push(Long.getLong(0,300040023));
         _loc4_.push(Long.getLong(687238537,2002147897));
         _loc4_.push(Long.getLong(1896140971,-1323660734));
         _loc4_.push(Long.getLong(1215266592,-1320571870));
         _loc4_.push(Long.getLong(1870140649,1080360405));
         _loc4_.push(Long.getLong(882584998,678334280));
         _loc4_.push(Long.getLong(0,300040010));
         _loc4_.push(Long.getLong(1891481944,-1293130596));
         _loc4_.push(Long.getLong(888433053,2115284408));
         _loc4_.push(Long.getLong(253893103,1551357114));
         _loc4_.push(Long.getLong(0,300040005));
         gameTypeRegistry.createClass(Long.getLong(15025,684360),_loc4_);
         var _loc5_:Vector.<IGameObject> = new Vector.<IGameObject>();
         for each(_loc6_ in _loc2_.items)
         {
            _loc7_ = new Vector.<ItemGaragePropertyData>();
            _loc8_ = new Vector.<GaragePropertyData>();
            _loc9_ = new Vector.<PropertyData>();
            _loc10_ = new Vector.<KitItem>();
            if(this.§6!x§(_loc6_.type) == ItemCategoryEnum.KIT)
            {
               for each(_loc13_ in _loc6_.kit.kitItems)
               {
                  _loc10_.push(new KitItem(_loc13_.count,this.§`!I§.getObjectByName(_loc13_.id),false));
               }
            }
            for each(_loc11_ in _loc6_.properts)
            {
               _loc14_ = new Vector.<PropertyData>();
               _loc7_.push(new ItemGaragePropertyData(this.§default const finally§(_loc11_.property),_loc11_.value));
               if(_loc11_.subproperties != null)
               {
                  for each(_loc15_ in _loc11_.subproperties)
                  {
                     _loc14_.push(new PropertyData(_loc15_.value,_loc15_.value,this.§]!U§(_loc15_.property)));
                  }
               }
               else
               {
                  _loc14_.push(new PropertyData(_loc11_.value,_loc11_.value,this.§]!U§(_loc11_.property)));
               }
               _loc8_.push(new GaragePropertyData(new LinearParams(_loc11_.value,_loc11_.value),0,0,25,_loc14_,this.§default const finally§(_loc11_.property),0,0,new LinearParams(_loc11_.value,_loc11_.value)));
            }
            _loc12_ = this.§`!I§.createObject(Long.getLong(0,_loc6_.previewResourceId),GameClass(gameTypeRegistry.getClass(Long.getLong(15025,684360))),_loc6_.id + "_m" + (_loc6_.modificationID == undefined ? "0" : _loc6_.modificationID));
            Model.object = _loc12_;
            modelRegistry.getModel(_loc12_.gameClass.models[0]).putInitParams(new ItemModelCC(30,_loc6_.rank,_loc6_.index,ImageResource(resourceRegistry.getResource(Long.getLong(0,_loc6_.previewResourceId)))));
            modelRegistry.getModel(_loc12_.gameClass.models[1]).putInitParams(new ItemViewCategoryCC(this.§native const include§(_loc6_.category)));
            modelRegistry.getModel(_loc12_.gameClass.models[2]).putInitParams(new ItemCategoryCC(this.§6!x§(_loc6_.type)));
            modelRegistry.getModel(_loc12_.gameClass.models[3]).putInitParams(new DescriptionModelCC(_loc6_.description,_loc6_.name));
            modelRegistry.getModel(_loc12_.gameClass.models[4]).putInitParams(new BuyableCC(true,_loc6_.price));
            modelRegistry.getModel(_loc12_.gameClass.models[5]).putInitParams(new ModificationCC(Long.getLong(0,_loc6_.baseItemId),_loc6_.modificationID == null ? -1 : int(_loc6_.modificationID)));
            modelRegistry.getModel(_loc12_.gameClass.models[6]).putInitParams(new ItemPropertiesCC(_loc7_));
            modelRegistry.getModel(_loc12_.gameClass.models[7]).putInitParams(new UpgradableParamsCC(null,_loc8_));
            modelRegistry.getModel(_loc12_.gameClass.models[8]).putInitParams(new CountableItemCC(this.§6!x§(_loc6_.type) == ItemCategoryEnum.INVENTORY ? 0 : -1));
            modelRegistry.getModel(_loc12_.gameClass.models[9]).putInitParams(new Object3DSCC(Long.getLong(0,_loc6_.object3ds)));
            modelRegistry.getModel(_loc12_.gameClass.models[10]).putInitParams(new ColoringCC(null,ImageResource(resourceRegistry.getResource(Long.getLong(0,_loc6_.coloring)))));
            modelRegistry.getModel(_loc12_.gameClass.models[11]).putInitParams(new TemporaryItemCC(_loc6_.remainingTimeInSec,_loc6_.remainingTimeInSec));
            modelRegistry.getModel(_loc12_.gameClass.models[12]).putInitParams(new DiscountCC(_loc6_.discount.percent,_loc6_.discount.timeLeftInSeconds,_loc6_.discount.timeToStartInSeconds));
            ObjectLoadPostListener(modelRegistry.getModel(_loc12_.gameClass.models[12])).objectLoadedPost();
            if(this.§6!x§(_loc6_.type) == ItemCategoryEnum.KIT)
            {
               modelRegistry.getModel(_loc12_.gameClass.models[14]).putInitParams(new §?!$§(_loc6_.kit.discountInPercent,ImageResource(resourceRegistry.getResource(Long.getLong(0,_loc6_.kit.image))),_loc10_));
               modelRegistry.getModel(_loc12_.gameClass.models[15]).putInitParams(new TimePeriodModelCC(true,_loc6_.kit.isTimeless,_loc6_.kit.timeLeftInSeconds,10));
               ObjectLoadListener(modelRegistry.getModel(_loc12_.gameClass.models[15])).objectLoaded();
            }
            IObjectLoadListener(modelRegistry.getModel(_loc12_.gameClass.models[8])).objectLoaded();
            ObjectLoadPostListener(modelRegistry.getModel(_loc12_.gameClass.models[7])).objectLoadedPost();
            _loc5_.push(_loc12_);
         }
         modelRegistry.getModel(Model.object.gameClass.models[21]).putInitParams(new §false const dynamic§(_loc2_.delayMountArmorInSec,_loc2_.delayMountColorInSec,_loc2_.delayMountWeaponInSec));
         ObjectLoadPostListener(modelRegistry.getModel(Model.object.gameClass.models[21])).objectLoadedPost();
         this.§0!%§.initMarket(_loc5_);
         this.§0!%§.selectFirstItemInDepot();
      }
      
      private function §default const finally§(param1:String) : ItemGarageProperty
      {
         var _loc2_:ItemGarageProperty = null;
         for each(_loc2_ in ItemGarageProperty.values)
         {
            if(_loc2_.name.indexOf(param1) >= 0)
            {
               return _loc2_;
            }
         }
         return ItemGarageProperty.RICOCHET_RESISTANCE;
      }
      
      private function §]!U§(param1:String) : ItemProperty
      {
         var _loc2_:ItemProperty = null;
         for each(_loc2_ in ItemProperty.values)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return ItemProperty.RICOCHET_RESISTANCE;
      }
      
      private function showNews(param1:String) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:Vector.<NewsItemCC> = new Vector.<NewsItemCC>();
         for each(_loc4_ in _loc2_)
         {
            _loc3_.push(new NewsItemCC(_loc4_.icon_uri,_loc4_.date,unescape(_loc4_.text)));
         }
         this.§-"C§.putInitParams(new NewsShowingCC(_loc3_));
         this.§-"C§.objectLoaded();
      }
      
      private function §break set while§(param1:String) : ItemCategoryEnum
      {
         switch(param1.toLowerCase())
         {
            case "weapon":
               return ItemCategoryEnum.WEAPON;
            case "paint":
               return ItemCategoryEnum.COLOR;
            case "inventory":
               return ItemCategoryEnum.INVENTORY;
            case "armor":
               return ItemCategoryEnum.ARMOR;
            case "plugin":
               return ItemCategoryEnum.PLUGIN;
            default:
               return null;
         }
      }
      
      private function §+M§(param1:String, param2:String = null) : void
      {
         var _loc8_:Vector.<ItemGaragePropertyData> = null;
         var _loc9_:Object = null;
         var _loc10_:Vector.<GaragePropertyData> = null;
         var _loc11_:Vector.<PropertyData> = null;
         var _loc12_:Object = null;
         var _loc13_:int = 0;
         var _loc14_:IGameObject = null;
         var _loc15_:Vector.<PropertyData> = null;
         var _loc16_:* = undefined;
         var _loc3_:ModelRegistry = OSGi.getInstance().getService(ModelRegistry) as ModelRegistry;
         var _loc4_:ResourceRegistry = OSGi.getInstance().getService(ResourceRegistry) as ResourceRegistry;
         var _loc5_:Vector.<IGameObject> = new Vector.<IGameObject>();
         var _loc6_:Vector.<IGameObject> = new Vector.<IGameObject>();
         var _loc7_:Object = JSON.parse(param1);
         _loc8_ = new Vector.<ItemGaragePropertyData>();
         for each(_loc9_ in _loc7_.items)
         {
            _loc8_ = new Vector.<ItemGaragePropertyData>();
            _loc10_ = new Vector.<GaragePropertyData>();
            _loc11_ = new Vector.<PropertyData>();
            for each(_loc12_ in _loc9_.properts)
            {
               _loc15_ = new Vector.<PropertyData>();
               _loc8_.push(new ItemGaragePropertyData(this.§default const finally§(_loc12_.property),_loc12_.value));
               if(_loc12_.subproperties != null)
               {
                  for each(_loc16_ in _loc12_.subproperties)
                  {
                     _loc15_.push(new PropertyData(_loc16_.value,_loc16_.value,this.§]!U§(_loc16_.property)));
                  }
               }
               else
               {
                  _loc15_.push(new PropertyData(_loc12_.value,_loc12_.value,this.§]!U§(_loc12_.property)));
               }
               _loc10_.push(new GaragePropertyData(new LinearParams(_loc12_.value,_loc12_.value),0,0,25,_loc15_,this.§default const finally§(_loc12_.property),0,0,new LinearParams(_loc12_.value,_loc12_.value)));
            }
            _loc13_ = int(_loc9_.modificationID);
            _loc14_ = this.§`!I§.createObject(Long.getLong(0,this.§6!x§(_loc9_.type) == ItemCategoryEnum.GIVEN_PRESENT ? int(_loc9_.present.date + _loc9_.previewResourceId) : int(_loc9_.previewResourceId)),GameClass(gameTypeRegistry.getClass(Long.getLong(15025,684360))),_loc9_.id + "_m" + _loc13_);
            Model.object = _loc14_;
            _loc3_.getModel(_loc14_.gameClass.models[0]).putInitParams(new ItemModelCC(30,_loc9_.rank,_loc9_.index,ImageResource(_loc4_.getResource(Long.getLong(0,_loc9_.previewResourceId)))));
            _loc3_.getModel(_loc14_.gameClass.models[1]).putInitParams(new ItemViewCategoryCC(this.§native const include§(_loc9_.category)));
            _loc3_.getModel(_loc14_.gameClass.models[2]).putInitParams(new ItemCategoryCC(this.§6!x§(_loc9_.type)));
            _loc3_.getModel(_loc14_.gameClass.models[3]).putInitParams(new DescriptionModelCC(_loc9_.description,_loc9_.name));
            _loc3_.getModel(_loc14_.gameClass.models[4]).putInitParams(new BuyableCC(true,_loc9_.price));
            _loc3_.getModel(_loc14_.gameClass.models[5]).putInitParams(new ModificationCC(Long.getLong(0,_loc9_.baseItemId),_loc9_.modificationID == null ? -1 : int(_loc9_.modificationID)));
            _loc3_.getModel(_loc14_.gameClass.models[6]).putInitParams(new ItemPropertiesCC(_loc8_));
            _loc3_.getModel(_loc14_.gameClass.models[7]).putInitParams(new UpgradableParamsCC(null,_loc10_));
            _loc3_.getModel(_loc14_.gameClass.models[8]).putInitParams(new CountableItemCC(_loc9_.count == null ? -1 : int(_loc9_.count)));
            _loc3_.getModel(_loc14_.gameClass.models[9]).putInitParams(new Object3DSCC(Long.getLong(0,_loc9_.object3ds)));
            _loc3_.getModel(_loc14_.gameClass.models[10]).putInitParams(new ColoringCC(null,ImageResource(_loc4_.getResource(Long.getLong(0,_loc9_.coloring)))));
            _loc3_.getModel(_loc14_.gameClass.models[11]).putInitParams(new TemporaryItemCC(0,_loc9_.remainingTimeInSec));
            _loc3_.getModel(_loc14_.gameClass.models[12]).putInitParams(new DiscountCC(_loc9_.discount.percent,_loc9_.discount.timeLeftInSeconds,0));
            if(this.§6!x§(_loc9_.type) == ItemCategoryEnum.GIVEN_PRESENT)
            {
               _loc3_.getModel(_loc14_.gameClass.models[20]).putInitParams(new PresentItemCC(_loc9_.present.date,ImageResource(_loc4_.getResource(Long.getLong(0,_loc9_.present.image))),_loc9_.present.presenter,_loc9_.present.text,_loc9_.present.presentId));
            }
            ObjectLoadPostListener(_loc3_.getModel(_loc14_.gameClass.models[12])).objectLoadedPost();
            IObjectLoadListener(_loc3_.getModel(_loc14_.gameClass.models[8])).objectLoaded();
            IObjectLoadListener(_loc3_.getModel(_loc14_.gameClass.models[11])).objectLoaded();
            ObjectLoadPostListener(_loc3_.getModel(_loc14_.gameClass.models[7])).objectLoadedPost();
            Model.popObject();
            if(this.§6!x§(_loc9_.type) == ItemCategoryEnum.GIVEN_PRESENT)
            {
               _loc6_.push(_loc14_);
            }
            else
            {
               _loc5_.push(_loc14_);
            }
         }
         this.§0!%§.putInitParams(new GarageModelCC(Tanks3DSResource(_loc4_.getResource(Long.getLong(0,170001)))));
         this.§0!%§.objectLoaded();
         this.§0!%§.initDepot(_loc5_);
         this.§0!%§.§+q§(_loc6_);
      }
      
      public function §9!e§(param1:String) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:Vector.<Long> = new Vector.<Long>();
         _loc2_.push(Long.getLong(0,300090008));
         _loc2_.push(Long.getLong(0,300090004));
         gameTypeRegistry.createClass(Long.getLong(5823623,5812059),_loc2_);
         _loc2_ = new Vector.<Long>();
         _loc2_.push(Long.getLong(0,300090007));
         _loc2_.push(Long.getLong(0,300090003));
         _loc2_.push(Long.getLong(0,300090023));
         gameTypeRegistry.createClass(Long.getLong(5823622,5812058),_loc2_);
         _loc2_ = new Vector.<Long>();
         _loc2_.push(Long.getLong(0,300090008));
         _loc2_.push(Long.getLong(0,300090028));
         gameTypeRegistry.createClass(Long.getLong(58236221,58120558),_loc2_);
         _loc2_ = new Vector.<Long>();
         _loc2_.push(Long.getLong(0,300090007));
         _loc2_.push(Long.getLong(0,300090027));
         _loc2_.push(Long.getLong(0,300090023));
         gameTypeRegistry.createClass(Long.getLong(58236223,58120559),_loc2_);
         var _loc3_:Object = JSON.parse(param1);
         this.§set const super§.objectLoadedPost();
         for each(_loc4_ in _loc3_.battles)
         {
            this.§>"?§(_loc4_);
         }
         this.§set const super§.battleItemsPacketJoinSuccess();
      }
      
      private function §import var break§(param1:String) : void
      {
         var _loc8_:* = undefined;
         var _loc9_:BattleCreateCC = null;
         var _loc10_:* = undefined;
         var _loc11_:IGameObject = null;
         var _loc12_:§for implements§ = null;
         var _loc13_:* = undefined;
         var _loc14_:§try set with§ = null;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:Vector.<Long> = new Vector.<Long>();
         _loc3_.push(Long.getLong(0,300090002));
         _loc3_.push(Long.getLong(0,300090011));
         var _loc4_:Vector.<Long> = new Vector.<Long>();
         _loc4_.push(Long.getLong(0,300090019));
         _loc4_.push(Long.getLong(0,300090014));
         var _loc5_:GameClass = gameTypeRegistry.createClass(Long.getLong(8238523,63486349),_loc4_);
         var _loc6_:IGameClass = gameTypeRegistry.createClass(Long.getLong(591359,5235923),_loc3_);
         var _loc7_:IGameObject = this.§override set while§.createObject(Long.getLong(53152835,6296493246),_loc6_,"BattleSelectObject");
         for each(_loc8_ in _loc2_.maps)
         {
            _loc11_ = this.§override set while§.createObject(Long.getLong(_loc8_.preview * 1000,_loc8_.preview * 1000),_loc5_,_loc8_.mapId + _loc8_.theme);
            _loc12_ = new §for implements§();
            _loc12_.enabled = _loc8_.enabled;
            _loc12_.mapId = _loc8_.mapId;
            _loc12_.mapName = _loc8_.mapName;
            _loc12_.maxPeople = _loc8_.maxPeople;
            _loc12_.preview = ImageResource(resourceRegistry.getResource(Long.getLong(0,_loc8_.preview)));
            _loc12_.§get var§ = new §7e§(_loc8_.maxRank,_loc8_.minRank);
            _loc12_.supportedModes = new Vector.<§"!4§>();
            for each(_loc13_ in _loc8_.supportedModes)
            {
               _loc12_.supportedModes.push(this.§"!"§(_loc13_));
            }
            _loc12_.theme = this.§=A§(_loc8_.theme);
            _loc14_ = new §try set with§();
            _loc14_.clanLink = _loc8_.clanLink;
            _loc14_.clanName = _loc8_.clanName;
            Model.object = _loc11_;
            modelRegistry.getModel(_loc4_[0]).putInitParams(_loc12_);
            IObjectLoadListener(modelRegistry.getModel(_loc4_[0])).objectLoaded();
            modelRegistry.getModel(_loc4_[1]).putInitParams(_loc14_);
            Model.popObject();
         }
         Model.object = _loc7_;
         _loc9_ = new BattleCreateCC();
         _loc9_.battleCreationDisabled = _loc2_.battleCreationDisabled;
         _loc9_.battlesLimits = new Vector.<§native const set§>();
         for each(_loc10_ in _loc2_.battleLimits)
         {
            _loc9_.battlesLimits.push(new §native const set§(_loc10_.scoreLimit,_loc10_.timeLimitInSec));
         }
         _loc9_.maxRangeLength = _loc2_.maxRangeLength;
         modelRegistry.getModel(_loc3_[0]).putInitParams(_loc9_);
         BattleCreateModel(modelRegistry.getModel(_loc3_[0])).objectLoaded();
         BattleCreateModel(modelRegistry.getModel(_loc3_[0])).objectLoadedPost();
      }
      
      private function §"!"§(param1:String) : §"!4§
      {
         switch(param1)
         {
            case "DM":
               return §"!4§.DM;
            case "TDM":
               return §"!4§.TDM;
            case "CTF":
               return §"!4§.CTF;
            case "CP":
               return §"!4§.CP;
            default:
               return §"!4§.DM;
         }
      }
      
      private function §if set finally§(param1:String) : ValidationStatus
      {
         switch(param1)
         {
            case "CORRECT":
               return ValidationStatus.NOT_UNIQUE;
            default:
               return ValidationStatus.FORBIDDEN;
         }
      }
      
      private function §=A§(param1:String) : §>!?§
      {
         switch(param1)
         {
            case "SUMMER":
               return §>!?§.SUMMER;
            case "WINTER":
               return §>!?§.WINTER;
            case "SPACE":
               return §>!?§.SPACE;
            case "SUMMER_DAY":
               return §>!?§.SUMMER_DAY;
            case "SUMMER_NIGHT":
               return §>!?§.SUMMER_NIGHT;
            case "WINTER_DAY":
               return §>!?§.WINTER_DAY;
            default:
               return §>!?§.SUMMER;
         }
      }
      
      private function §native const return§(param1:String) : BattleSuspicionLevel
      {
         switch(param1)
         {
            case "high":
               return BattleSuspicionLevel.HIGH;
            case "low":
               return BattleSuspicionLevel.LOW;
            default:
               return BattleSuspicionLevel.NONE;
         }
      }
      
      public function §package const for§(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:ChatMessage = new ChatMessage();
         _loc3_.sourceUserStatus = !!_loc2_.yellow ? null : new UserStatus(this.§false§(_loc2_.chatPermissions),_loc2_.sourceUserIp,_loc2_.rang,_loc2_.name,_loc2_.name,_loc2_.sourceUserPremium);
         _loc3_.system = _loc2_.system;
         _loc3_.targetUserStatus = Boolean(_loc2_.addressed) && !_loc2_.yellow ? new UserStatus(this.§false§(_loc2_.chatPermissionsTo),_loc2_.targetUserIp,_loc2_.rangTo,_loc2_.nameTo,_loc2_.nameTo,_loc2_.targetUserPremium) : null;
         _loc3_.text = _loc2_.message;
         _loc3_.warning = _loc2_.yellow;
         this.§2"X§.showMessages(Vector.<ChatMessage>([_loc3_]));
      }
      
      public function §!d§(param1:String, param2:Boolean) : void
      {
         var _loc3_:ChatMessage = new ChatMessage();
         _loc3_.system = true;
         _loc3_.text = param1;
         _loc3_.warning = param2;
         this.§2"X§.showMessages(Vector.<ChatMessage>([_loc3_]));
      }
      
      public function §case const use§(param1:String) : void
      {
         var _loc2_:PanelModel = PanelModel(OSGi.getInstance().getService(IPanel));
         var _loc3_:Object = JSON.parse(param1);
         var _loc4_:UserPropertyCC = new UserPropertyCC();
         _loc4_.crystals = _loc3_.crystall;
         _loc4_.currentRankScore = _loc3_.currentRankScore;
         _loc4_.daysFromLastVisit = 0;
         _loc4_.daysFromRegistration = 0;
         _loc4_.durationCrystalAbonement = _loc3_.durationCrystalAbonement;
         _loc4_.hasDoubleCrystal = _loc3_.hasDoubleCrystal;
         _loc4_.id = _loc3_.name;
         _loc4_.nextRankScore = _loc3_.next_score;
         _loc4_.rank = _loc3_.rang;
         _loc4_.score = _loc3_.score;
         _loc4_.uid = _loc3_.name;
         _loc4_.place = _loc3_.place;
         _loc4_.rating = _loc3_.rating;
         _loc4_.userProfileUrl = _loc3_.userProfileUrl;
         _loc4_.templateBattlePage = "www.vk.com";
         _loc4_.serverNumber = 1;
         _loc4_.gameHost = "ochko";
         this.userProperties.putInitParams(_loc4_);
         _loc2_.objectLoaded();
         this.userProperties.objectLoaded();
         this.userProperties.objectLoadedPost();
         _loc2_.objectLoadedPost();
         this.§super set throw§.objectLoadedPost();
      }
      
      public function §@W§() : void
      {
         this.networker = OSGi.getInstance().getService(INetworker) as Network;
         this.networker.addEventListener(this);
         this.networker.addListener(this.§5!q§);
      }
      
      public function §native const include§(param1:String) : ItemViewCategoryEnum
      {
         switch(param1.toLowerCase())
         {
            case "weapon":
               return ItemViewCategoryEnum.WEAPON;
            case "armor":
               return ItemViewCategoryEnum.ARMOR;
            case "paint":
               return ItemViewCategoryEnum.PAINT;
            case "inventory":
               return ItemViewCategoryEnum.INVENTORY;
            case "kit":
               return ItemViewCategoryEnum.KIT;
            case "special":
               return ItemViewCategoryEnum.SPECIAL;
            case "given_presents":
               return ItemViewCategoryEnum.GIVEN_PRESENTS;
            default:
               return null;
         }
      }
      
      public function §6!x§(param1:int) : ItemCategoryEnum
      {
         switch(param1)
         {
            case 2:
               return ItemCategoryEnum.ARMOR;
            case 1:
               return ItemCategoryEnum.WEAPON;
            case 3:
               return ItemCategoryEnum.COLOR;
            case 4:
               return ItemCategoryEnum.INVENTORY;
            case 5:
               return ItemCategoryEnum.PLUGIN;
            case 6:
               return ItemCategoryEnum.KIT;
            case 7:
               return ItemCategoryEnum.PRESENT;
            case 8:
               return ItemCategoryEnum.EMBLEM;
            case 9:
               return ItemCategoryEnum.GIVEN_PRESENT;
            default:
               return null;
         }
      }
   }
}

