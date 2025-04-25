package §@!p§
{
   import §>P§.§class var return§;
   import §]"e§.§1S§;
   import §]"e§.§<_§;
   import alternativa.model.IModel;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§set var override§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.types.Long;
   import flash.utils.Dictionary;
   import scpacker.networking.INetworker;
   import scpacker.networking.Network;
   
   public class §'_§ extends §<_§ implements §1S§, §case var class§
   {
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private var §0"b§:§extends const return§;
      
      private var §1!Y§:Dictionary = new Dictionary();
      
      private var §if var implements§:§catch for const§;
      
      public function §'_§()
      {
         super();
         _interfaces.push(IModel,§1S§,§case var class§);
      }
      
      public function initObject(param1:ClientObject, param2:Long, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc9_:IModelService = null;
         if(this.§0"b§ == null)
         {
            _loc9_ = IModelService(OSGi.getInstance().getService(IModelService));
            this.§0"b§ = §extends const return§(_loc9_.getModelsByInterface(§extends const return§)[0]);
            this.§if var implements§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         }
         var _loc7_:§`"8§ = new §`"8§(param1,param5,param3,(param6 + param4) * 1000);
         this.§1!Y§[param1] = _loc7_;
         var _loc8_:int = param5 - 1;
         this.§0"b§.§1!'§(_loc7_,_loc8_);
      }
      
      [Obfuscation(rename="false")]
      public function activated(param1:ClientObject, param2:int, param3:Boolean = false) : void
      {
         var _loc4_:§`"8§ = this.§1!Y§[param1];
         if(_loc4_ == null)
         {
            return;
         }
         _loc4_.§5!K§(param2);
         if(param3)
         {
            --_loc4_.count;
         }
         this.§0"b§.§continue set static§(_loc4_);
      }
      
      [Obfuscation(rename="false")]
      public function updateCount(param1:ClientObject, param2:int) : void
      {
         var _loc3_:§`"8§ = this.§1!Y§[param1];
         if(_loc3_ != null)
         {
            if(_loc3_.count <= 0 && param2 > 0)
            {
               §'O§(IModelService(OSGi.getInstance().getService(IModelService)).getModelsByInterface(§class var return§)[0]).initItemSlot(_loc3_);
            }
            _loc3_.count = param2;
            §'O§(IModelService(OSGi.getInstance().getService(IModelService)).getModelsByInterface(§class var return§)[0]).itemUpdateCount(_loc3_);
         }
      }
      
      public function §use for continue§(param1:§`"8§) : void
      {
         if(param1.§override for while§())
         {
            this.activate(param1.getClientObject());
         }
      }
      
      private function activate(param1:ClientObject) : void
      {
         battleEventDispatcher.dispatchEvent(§set var override§.§9E§);
         Network(OSGi.getInstance().getService(INetworker)).send("battle;activate_item;" + param1.id);
      }
   }
}

