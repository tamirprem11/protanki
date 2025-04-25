package projects.tanks.clients.fp10.libraries.tanksservices.service.battle
{
   import flash.events.EventDispatcher;
   
   public class BattleInfoService extends EventDispatcher implements IBattleInfoService
   {
      private var _currentBattleId:String;
      
      private var _currentSelectionBattleId:String;
      
      private var _minRank:int;
      
      private var _maxRank:int;
      
      private var _spectator:Boolean;
      
      private var §break for else§:Boolean;
      
      private var _battleActive:Boolean;
      
      private var userIsInBattle:Boolean;
      
      public function BattleInfoService()
      {
         super();
      }
      
      public function get currentSelectionBattleId() : String
      {
         return this._currentSelectionBattleId;
      }
      
      public function resetCurrentBattle() : void
      {
         this._spectator = false;
         this._currentBattleId = null;
         if(this._currentSelectionBattleId != null)
         {
         }
         dispatchEvent(new BattleInfoServiceEvent(BattleInfoServiceEvent.BATTLE_UNLOAD));
      }
      
      public function setCurrentSelectionBattle(param1:String, param2:int, param3:int) : void
      {
         this._currentSelectionBattleId = param1;
         this._minRank = param2;
         this._maxRank = param3;
         dispatchEvent(new BattleInfoServiceEvent(BattleInfoServiceEvent.SELECTION_BATTLE));
      }
      
      public function get currentBattleId() : String
      {
         return this._currentBattleId;
      }
      
      public function set currentBattleId(param1:String) : void
      {
         this._currentBattleId = param1;
      }
      
      public function resetCurrentSelectionBattleId() : void
      {
         this._currentSelectionBattleId = null;
         dispatchEvent(new BattleInfoServiceEvent(BattleInfoServiceEvent.RESET_SELECTION_BATTLE));
      }
      
      public function battleRestart() : void
      {
         dispatchEvent(new BattleInfoServiceEvent(BattleInfoServiceEvent.BATTLE_RESTART));
      }
      
      public function battleLoad() : void
      {
         dispatchEvent(new BattleInfoServiceEvent(BattleInfoServiceEvent.BATTLE_LOAD));
      }
      
      public function hasCurrentSelectionBattleId() : Boolean
      {
         return this._currentSelectionBattleId != null;
      }
      
      public function hasCurrentBattleId() : Boolean
      {
         return this._currentBattleId != null;
      }
      
      public function isSpectatorMode() : Boolean
      {
         return this._spectator;
      }
      
      public function get spectator() : Boolean
      {
         return this._spectator;
      }
      
      public function set spectator(param1:Boolean) : void
      {
         this._spectator = param1;
      }
      
      public function get reArmorEnabled() : Boolean
      {
         return this.§break for else§;
      }
      
      public function set reArmorEnabled(param1:Boolean) : void
      {
         this.§break for else§ = param1;
      }
      
      public function availableRank(param1:int) : Boolean
      {
         if(this.hasCurrentSelectionBattleId())
         {
            return param1 >= this._minRank && param1 <= this._maxRank;
         }
         return false;
      }
      
      public function get battleActive() : Boolean
      {
         return this._battleActive;
      }
      
      public function set battleActive(param1:Boolean) : void
      {
         this._battleActive = param1;
      }
      
      public function isInBattle() : Boolean
      {
         return this.userIsInBattle;
      }
      
      public function setInBattle(param1:Boolean) : void
      {
         this.userIsInBattle = param1;
      }
   }
}

