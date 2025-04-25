package alternativa.tanks.service.battlelist
{
   import §!#§.§include try§;
   import §+!8§.§%!H§;
   import §30§.§@"#§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.controllers.battlelist.BattleByURLNotFoundEvent;
   import alternativa.tanks.controllers.battlelist.BattleListController;
   import alternativa.tanks.controllers.battlelist.BattleSelectedEvent;
   import alternativa.tanks.controllers.battlelist.CreateBattleClickEvent;
   import alternativa.tanks.model.item.IBattleItem;
   import alternativa.tanks.service.battlecreate.IBattleCreateFormService;
   import alternativa.tanks.service.battleinfo.IBattleInfoFormService;
   import alternativa.tanks.view.battlelist.BattleListView;
   import alternativa.tanks.view.battlelist.LocaleBattleList;
   import flash.events.EventDispatcher;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.battleselect.model.item.BattleItemCC;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.BattleFormatUtil;
   
   public class §native do§ extends EventDispatcher implements IBattleListFormService
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var battleCreateFormService:IBattleCreateFormService;
      
      [Inject]
      public static var battleInfoFormService:IBattleInfoFormService;
      
      [Inject]
      public static var §!!h§:BattleFormatUtil;
      
      public var §catch const each§:BattleListController;
      
      public function §native do§()
      {
         super();
      }
      
      public function §,!_§() : void
      {
         this.§catch const each§ = new BattleListController(new BattleListView(display.stage,display.systemLayer,new LocaleBattleList(),battleCreateFormService.battleCreationDisabled));
         this.§catch const each§.showForm();
         this.§catch const each§.addEventListener(CreateBattleClickEvent.CREATE_BATTLE_CLICK,this.§2,§);
         this.§catch const each§.addEventListener(BattleSelectedEvent.BATTLE_SELECTED,this.onBattleSelected);
         this.§catch const each§.addEventListener(BattleByURLNotFoundEvent.BATTLE_BY_URL_NOT_FOUND,this.onBattleByURLNotFound);
      }
      
      public function §0u§() : void
      {
         this.§catch const each§.removeEventListener(CreateBattleClickEvent.CREATE_BATTLE_CLICK,this.§2,§);
         this.§catch const each§.removeEventListener(BattleSelectedEvent.BATTLE_SELECTED,this.onBattleSelected);
         this.§catch const each§.removeEventListener(BattleByURLNotFoundEvent.BATTLE_BY_URL_NOT_FOUND,this.onBattleByURLNotFound);
         this.§catch const each§.hideForm();
         this.§catch const each§.destroy();
         this.§catch const each§ = null;
      }
      
      public function battleItemRecord(param1:IGameObject) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BattleItemCC = IBattleItem(param1.adapt(IBattleItem)).getConstructor();
         if(param1.hasModel(§include try§) && param1.adapt(§include try§) != null)
         {
            _loc2_ = §include try§(param1.adapt(§include try§)).getUsersCountBlue();
            _loc3_ = §include try§(param1.adapt(§include try§)).getUsersCountRed();
            _loc4_ = §include try§(param1.adapt(§include try§)).getFriendsCountBlue();
            _loc5_ = §include try§(param1.adapt(§include try§)).getFriendsCountRed();
            this.§catch const each§.battleItemRecord(param1,_loc8_.battleMode,_loc8_.name,false,_loc3_,_loc2_,_loc5_,_loc4_,0,0,_loc8_.maxPeople,§%!H§(_loc8_.map.adapt(§%!H§)).getName(),_loc8_.rankRange,_loc8_.noSuppliesBattle,_loc8_.privateBattle,_loc8_.suspicious,_loc8_.proBattle,§!!h§.§extends null§(_loc8_.equipmentConstraintsMode,_loc8_.parkourMode),§!!h§.§6"^§(_loc8_.equipmentConstraintsMode,_loc8_.parkourMode));
         }
         else
         {
            if(!param1.hasModel(§@"#§) && param1.adapt(§@"#§) == null)
            {
               throw new ArgumentError("Invalid battle item model" + param1);
            }
            _loc6_ = §@"#§(param1.adapt(§@"#§)).getUsersCount();
            _loc7_ = §@"#§(param1.adapt(§@"#§)).getFriendsCount();
            this.§catch const each§.battleItemRecord(param1,_loc8_.battleMode,_loc8_.name,true,0,0,0,0,_loc6_,_loc7_,_loc8_.maxPeople,§%!H§(_loc8_.map.adapt(§%!H§)).getName(),_loc8_.rankRange,_loc8_.noSuppliesBattle,_loc8_.privateBattle,_loc8_.suspicious,_loc8_.proBattle,§!!h§.§extends null§(_loc8_.equipmentConstraintsMode,_loc8_.parkourMode),§!!h§.§6"^§(_loc8_.equipmentConstraintsMode,_loc8_.parkourMode));
         }
      }
      
      public function selectBattleItemFromServer(param1:String) : void
      {
         this.§catch const each§.selectBattleItemFromServer(param1);
      }
      
      public function updateName(param1:String, param2:String) : void
      {
         this.§catch const each§.updateName(param1,param2);
      }
      
      public function madePrivate(param1:String, param2:String) : void
      {
         this.§catch const each§.madePrivate(param1,param2);
      }
      
      public function updateSuspicious(param1:String, param2:Boolean) : void
      {
         this.§catch const each§.updateSuspicious(param1,param2);
      }
      
      public function §<,§(param1:String) : void
      {
         this.§catch const each§.removeBattle(param1);
      }
      
      public function updateUsersCountTeam(param1:String, param2:int, param3:int, param4:int, param5:int) : void
      {
         this.§catch const each§.updateUsersCountTeam(param1,param2,param3,param4,param5);
      }
      
      public function updateUsersCountDm(param1:String, param2:int, param3:int) : void
      {
         this.§catch const each§.updateUsersCountDm(param1,param2,param3);
      }
      
      private function onBattleSelected(param1:BattleSelectedEvent) : void
      {
         dispatchEvent(new BattleListFormServiceEvent(BattleListFormServiceEvent.BATTLE_SELECTED,param1.selectedItem));
         battleCreateFormService.hideForm();
      }
      
      private function onBattleByURLNotFound(param1:BattleByURLNotFoundEvent) : void
      {
         dispatchEvent(new BattleByURLNotFoundEvent(BattleByURLNotFoundEvent.BATTLE_BY_URL_NOT_FOUND,param1.battleId));
      }
      
      public function swapTeams(param1:String) : void
      {
         this.§catch const each§.swapTeams(param1);
      }
      
      public function battleItemsPacketJoinSuccess() : void
      {
         this.§catch const each§.battleItemsPacketJoinSuccess();
      }
      
      private function §2,§(param1:CreateBattleClickEvent) : void
      {
         battleCreateFormService.showForm();
         battleInfoFormService.removeFormFromStage();
      }
   }
}

