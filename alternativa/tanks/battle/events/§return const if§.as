package alternativa.tanks.battle.events
{
   import flash.utils.Dictionary;
   
   public class §return const if§ implements §override const do§
   {
      private var dispatcher:BattleEventDispatcher;
      
      private var listener:§override const do§;
      
      private var §@"C§:Dictionary = new Dictionary();
      
      public function §return const if§(param1:BattleEventDispatcher, param2:§override const do§ = null)
      {
         super();
         this.dispatcher = param1;
         if(param2 == null)
         {
            param2 = this;
         }
         this.listener = param2;
      }
      
      public function §import var get§(param1:Class, param2:Function) : void
      {
         this.§@"C§[param1] = param2;
      }
      
      public function §""'§() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.§@"C§)
         {
            this.dispatcher.§7i§(_loc1_,this.listener);
         }
      }
      
      public function §const var false§() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.§@"C§)
         {
            this.dispatcher.§,"7§(_loc1_,this.listener);
         }
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:Function = this.§@"C§[param1.constructor];
         if(_loc2_ != null)
         {
            _loc2_(param1);
         }
      }
      
      public function dispatchEvent(param1:Object) : void
      {
         this.dispatcher.dispatchEvent(param1);
      }
   }
}

