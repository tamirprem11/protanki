package alternativa.tanks.service.battleinfo
{
   import §],§.§while var const§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.controllers.battleinfo.BattleInfoDMController;
   import alternativa.tanks.controllers.battleinfo.BattleInfoTeamController;
   import alternativa.tanks.tracker.ITrackerService;
   import alternativa.tanks.view.battleinfo.BattleInfoViewEvent;
   import alternativa.tanks.view.battleinfo.LocaleBattleInfo;
   import alternativa.tanks.view.battleinfo.dm.BattleInfoDMView;
   import alternativa.tanks.view.battleinfo.dm.BattleInfoDmParams;
   import alternativa.tanks.view.battleinfo.team.BattleInfoTeamParams;
   import alternativa.tanks.view.battleinfo.team.BattleInfoTeamView;
   import flash.events.EventDispatcher;
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   
   public class §else super§ extends EventDispatcher implements IBattleInfoFormService
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var trackerService:ITrackerService;
      
      private static const GA_CATEGORY:String = "lobby";
      
      private var §final for final§:BattleInfoDMController;
      
      private var §native var implements§:BattleInfoTeamController;
      
      private var §while var extends§:Boolean;
      
      private var §;!N§:Boolean;
      
      public function §else super§()
      {
         super();
      }
      
      public function §static extends§() : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.addFormToStage();
         }
         if(this.§;!N§)
         {
            this.§native var implements§.addFormToStage();
         }
      }
      
      public function removeFormFromStage() : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.removeFormFromStage();
         }
         if(this.§;!N§)
         {
            this.§native var implements§.removeFormFromStage();
         }
      }
      
      public function §break for use§(param1:BattleInfoDmParams) : void
      {
         if(this.§final for final§ == null)
         {
            this.§final for final§ = new BattleInfoDMController(new BattleInfoDMView(display,new LocaleBattleInfo()));
            this.§final for final§.addEventListener(BattleInfoViewEvent.ENTER_DM,this.§3!r§);
            this.§final for final§.addEventListener(BattleInfoViewEvent.ENTER_SPECTATOR,this.onEnterSpectator);
         }
         this.§3!6§();
         this.§while var extends§ = true;
         this.§final for final§.showForm(param1);
      }
      
      private function §3!r§(param1:BattleInfoViewEvent) : void
      {
         dispatchEvent(param1.clone());
         trackerService.trackEvent(GA_CATEGORY,"enterBattle","DM");
      }
      
      public function §'"`§(param1:BattleInfoTeamParams) : void
      {
         if(this.§native var implements§ == null)
         {
            this.§native var implements§ = new BattleInfoTeamController(new BattleInfoTeamView(display,new LocaleBattleInfo()));
            this.§native var implements§.addEventListener(BattleInfoViewEvent.ENTER_TEAM,this.onEnterTeam);
            this.§native var implements§.addEventListener(BattleInfoViewEvent.ENTER_SPECTATOR,this.onEnterSpectator);
         }
         this.§3!6§();
         this.§;!N§ = true;
         this.§native var implements§.showForm(param1);
      }
      
      public function §^"]§() : void
      {
         if(this.§native var implements§ != null)
         {
            this.§native var implements§.updateAvailableEnterInBattle();
         }
         if(this.§final for final§ != null)
         {
            this.§final for final§.updateAvailableEnterInBattle();
         }
      }
      
      private function onEnterTeam(param1:BattleInfoViewEvent) : void
      {
         dispatchEvent(param1.clone());
         trackerService.trackEvent(GA_CATEGORY,"enterBattle","Team");
      }
      
      private function onEnterSpectator(param1:BattleInfoViewEvent) : void
      {
         dispatchEvent(param1.clone());
         trackerService.trackEvent(GA_CATEGORY,"enterBattle","Spectator");
      }
      
      public function §3!6§() : void
      {
         this.§--§();
         this.§9!h§();
      }
      
      private function §--§() : void
      {
         if(this.§while var extends§)
         {
            this.§while var extends§ = false;
            this.§final for final§.hideForm();
         }
      }
      
      private function §9!h§() : void
      {
         if(this.§;!N§)
         {
            this.§;!N§ = false;
            this.§native var implements§.hideForm();
         }
      }
      
      public function destroy() : void
      {
         if(this.§final for final§ != null)
         {
            this.§final for final§.removeEventListener(BattleInfoViewEvent.ENTER_DM,this.§3!r§);
            this.§final for final§.removeEventListener(BattleInfoViewEvent.ENTER_SPECTATOR,this.onEnterSpectator);
            this.§final for final§.destroy();
            this.§final for final§ = null;
            this.§while var extends§ = false;
         }
         if(this.§native var implements§ != null)
         {
            this.§native var implements§.removeEventListener(BattleInfoViewEvent.ENTER_TEAM,this.onEnterTeam);
            this.§native var implements§.removeEventListener(BattleInfoViewEvent.ENTER_SPECTATOR,this.onEnterSpectator);
            this.§native var implements§.destroy();
            this.§native var implements§ = null;
            this.§;!N§ = false;
         }
      }
      
      public function updateName(param1:String) : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.updateName(param1);
         }
         if(this.§;!N§)
         {
            this.§native var implements§.updateName(param1);
         }
      }
      
      public function updateTeamScore(param1:§while var const§, param2:int) : void
      {
         if(this.§;!N§)
         {
            this.§native var implements§.updateTeamScore(param1,param2);
         }
      }
      
      public function addUserTeam(param1:BattleInfoUser, param2:§while var const§) : void
      {
         if(this.§;!N§)
         {
            this.§native var implements§.addUserTeam(param1,param2);
         }
      }
      
      public function §#3§(param1:BattleInfoUser) : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.addUser(param1);
         }
      }
      
      public function removeUser(param1:String) : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.removeUser(param1);
         }
         if(this.§;!N§)
         {
            this.§native var implements§.removeUser(param1);
         }
      }
      
      public function updateUserScore(param1:String, param2:int) : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.updateUserScore(param1,param2);
         }
         if(this.§;!N§)
         {
            this.§native var implements§.updateUserScore(param1,param2);
         }
      }
      
      public function updateUserSuspiciousState(param1:String, param2:Boolean) : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.updateUserSuspiciousState(param1,param2);
         }
         if(this.§;!N§)
         {
            this.§native var implements§.updateUserSuspiciousState(param1,param2);
         }
      }
      
      public function swapTeams() : void
      {
         if(this.§;!N§)
         {
            this.§native var implements§.swapTeams();
         }
      }
      
      public function roundStart() : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.roundStart();
         }
         if(this.§;!N§)
         {
            this.§native var implements§.roundStart();
         }
      }
      
      public function roundFinish() : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.roundFinish();
         }
         if(this.§;!N§)
         {
            this.§native var implements§.roundFinish();
         }
      }
      
      public function battleStop() : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.battleStop();
         }
         if(this.§;!N§)
         {
            this.§native var implements§.battleStop();
         }
      }
      
      public function §@"4§() : void
      {
         if(this.§while var extends§)
         {
            this.§final for final§.durationBattleNoSuppliesIsOverAboniment();
         }
         if(this.§;!N§)
         {
            this.§native var implements§.durationBattleNoSuppliesIsOverAboniment();
         }
      }
      
      public function getBattleItemId() : String
      {
         if(this.§while var extends§)
         {
            return this.§final for final§.getBattleItemId();
         }
         if(this.§;!N§)
         {
            return this.§native var implements§.getBattleItemId();
         }
         return null;
      }
   }
}

