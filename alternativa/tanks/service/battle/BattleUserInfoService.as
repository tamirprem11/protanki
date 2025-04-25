package alternativa.tanks.service.battle
{
   import alternativa.osgi.service.logging.LogService;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.type.IGameObject;
   
   public class BattleUserInfoService implements IBattleUserInfoService
   {
      [Inject]
      public static var logService:LogService;
      
      private var §override extends§:Dictionary = new Dictionary();
      
      public function BattleUserInfoService()
      {
         super();
      }
      
      public function §"!V§(param1:String) : Boolean
      {
         return param1 in this.§override extends§;
      }
      
      public function §while for extends§(param1:String) : IGameObject
      {
         return this.§override extends§[param1];
      }
      
      public function connect(param1:String, param2:IGameObject) : void
      {
         this.§override extends§[param1] = param2;
      }
      
      public function disconnect(param1:String) : void
      {
         delete this.§override extends§[param1];
      }
      
      public function §8"=§(param1:IGameObject) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:String = null;
         for(_loc2_ in this.§override extends§)
         {
            _loc3_ = this.§override extends§[_loc2_];
            if(_loc3_ == param1)
            {
               this.disconnect(_loc2_);
            }
         }
      }
   }
}

