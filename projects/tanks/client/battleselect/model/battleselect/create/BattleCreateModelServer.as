package projects.tanks.client.battleselect.model.battleselect.create
{
   import §]2§.§null var do§;
   import alternativa.osgi.OSGi;
   import alternativa.protocol.ICodec;
   import alternativa.protocol.IProtocol;
   import alternativa.protocol.ProtocolBuffer;
   import alternativa.types.Long;
   import flash.utils.ByteArray;
   import platform.client.fp10.core.model.IModel;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class BattleCreateModelServer
   {
      private var protocol:IProtocol;
      
      private var protocolBuffer:ProtocolBuffer;
      
      private var _checkBattleNameForForbiddenWordsId:Long = Long.getLong(0,300090000);
      
      private var _checkBattleNameForForbiddenWords_battleNameCodec:ICodec;
      
      private var _createBattleId:Long = Long.getLong(0,300090001);
      
      private var _createBattle_paramsCodec:ICodec;
      
      private var model:IModel;
      
      private var network:Network;
      
      public function BattleCreateModelServer(param1:IModel)
      {
         super();
         this.model = param1;
         var _loc2_:ByteArray = new ByteArray();
         this.protocol = IProtocol(OSGi.getInstance().getService(IProtocol));
      }
      
      public function checkBattleNameForForbiddenWords(param1:String) : void
      {
         this.network = Network(OSGi.getInstance().getService(INetworker));
         this.network.send("battle_create;checkBattleNameForForbiddenWords;" + param1);
      }
      
      public function createBattle(param1:§null var do§) : void
      {
         this.network = Network(OSGi.getInstance().getService(INetworker));
         var _loc2_:Object = new Object();
         _loc2_.autoBalance = param1.autoBalance;
         _loc2_.battleMode = param1.battleMode.name;
         _loc2_.friendlyFire = param1.friendlyFire;
         _loc2_.scoreLimit = param1.§2"=§.scoreLimit;
         _loc2_.timeLimitInSec = param1.§2"=§.timeLimitInSec;
         _loc2_.mapId = param1.mapId;
         _loc2_.maxPeopleCount = param1.maxPeopleCount;
         _loc2_.name = param1.name;
         _loc2_.privateBattle = param1.privateBattle;
         _loc2_.proBattle = param1.proBattle;
         _loc2_.minRank = param1.rankRange.min;
         _loc2_.maxRank = param1.rankRange.max;
         _loc2_.reArmorEnabled = param1.reArmorEnabled;
         _loc2_.theme = param1.theme.name;
         _loc2_.withoutBonuses = param1.withoutBonuses;
         _loc2_.withoutCrystals = param1.withoutCrystals;
         _loc2_.withoutSupplies = param1.withoutSupplies;
         _loc2_.equipmentConstraintsMode = param1.equipmentConstraintsMode.name;
         _loc2_.parkourMode = param1.parkourMode;
         this.network.send("battle_create;battle_create;" + JSON.stringify(_loc2_));
      }
   }
}

