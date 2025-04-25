package projects.tanks.client.battleselect.model.item
{
   import §&S§.§in const implements§;
   import §]2§.§"!4§;
   import §]2§.§7e§;
   import platform.client.fp10.core.type.IGameObject;
   
   public class BattleItemCC
   {
      private var _battleId:String;
      
      private var _battleMode:§"!4§;
      
      private var §""N§:§in const implements§;
      
      private var _map:IGameObject;
      
      private var _maxPeople:int;
      
      private var _name:String;
      
      private var _noSuppliesBattle:Boolean;
      
      private var §>"'§:Boolean;
      
      private var _privateBattle:Boolean;
      
      private var _proBattle:Boolean;
      
      private var _rankRange:§7e§;
      
      private var _suspicious:Boolean;
      
      public function BattleItemCC(param1:String = null, param2:§"!4§ = null, param3:IGameObject = null, param4:int = 0, param5:String = null, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:§7e§ = null, param10:Boolean = false, param11:§in const implements§ = null, param12:Boolean = false)
      {
         super();
         this._battleId = param1;
         this._battleMode = param2;
         this._map = param3;
         this._maxPeople = param4;
         this._name = param5;
         this._noSuppliesBattle = param6;
         this._privateBattle = param7;
         this._proBattle = param8;
         this._rankRange = param9;
         this._suspicious = param10;
         this.§""N§ = param11;
         this.§>"'§ = param12;
      }
      
      public function get battleId() : String
      {
         return this._battleId;
      }
      
      public function set battleId(param1:String) : void
      {
         this._battleId = param1;
      }
      
      public function get battleMode() : §"!4§
      {
         return this._battleMode;
      }
      
      public function set battleMode(param1:§"!4§) : void
      {
         this._battleMode = param1;
      }
      
      public function get equipmentConstraintsMode() : §in const implements§
      {
         return this.§""N§;
      }
      
      public function set equipmentConstraintsMode(param1:§in const implements§) : void
      {
         this.§""N§ = param1;
      }
      
      public function get map() : IGameObject
      {
         return this._map;
      }
      
      public function set map(param1:IGameObject) : void
      {
         this._map = param1;
      }
      
      public function get maxPeople() : int
      {
         return this._maxPeople;
      }
      
      public function set maxPeople(param1:int) : void
      {
         this._maxPeople = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get noSuppliesBattle() : Boolean
      {
         return this._noSuppliesBattle;
      }
      
      public function set noSuppliesBattle(param1:Boolean) : void
      {
         this._noSuppliesBattle = param1;
      }
      
      public function get parkourMode() : Boolean
      {
         return this.§>"'§;
      }
      
      public function set parkourMode(param1:Boolean) : void
      {
         this.§>"'§ = param1;
      }
      
      public function get privateBattle() : Boolean
      {
         return this._privateBattle;
      }
      
      public function set privateBattle(param1:Boolean) : void
      {
         this._privateBattle = param1;
      }
      
      public function get proBattle() : Boolean
      {
         return this._proBattle;
      }
      
      public function set proBattle(param1:Boolean) : void
      {
         this._proBattle = param1;
      }
      
      public function get rankRange() : §7e§
      {
         return this._rankRange;
      }
      
      public function set rankRange(param1:§7e§) : void
      {
         this._rankRange = param1;
      }
      
      public function get suspicious() : Boolean
      {
         return this._suspicious;
      }
      
      public function set suspicious(param1:Boolean) : void
      {
         this._suspicious = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "BattleItemCC [";
         _loc1_ += "battleId = " + this.battleId + " ";
         _loc1_ += "battleMode = " + this.battleMode + " ";
         _loc1_ += "equipmentConstraintsMode = " + this.equipmentConstraintsMode + " ";
         _loc1_ += "map = " + this.map + " ";
         _loc1_ += "maxPeople = " + this.maxPeople + " ";
         _loc1_ += "name = " + this.name + " ";
         _loc1_ += "noSuppliesBattle = " + this.noSuppliesBattle + " ";
         _loc1_ += "parkourMode = " + this.parkourMode + " ";
         _loc1_ += "privateBattle = " + this.privateBattle + " ";
         _loc1_ += "proBattle = " + this.proBattle + " ";
         _loc1_ += "rankRange = " + this.rankRange + " ";
         _loc1_ += "suspicious = " + this.suspicious + " ";
         return _loc1_ + "]";
      }
   }
}

