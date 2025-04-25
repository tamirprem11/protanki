package alternativa.tanks.service.temporaryitem
{
   import alternativa.tanks.service.temporaryitemnotify.ITemporaryItemNotifyService;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.type.IGameObject;
   
   public class § L§ implements ITemporaryItemService
   {
      [Inject]
      public static var temporaryItemNotifyService:ITemporaryItemNotifyService;
      
      private var items:Dictionary;
      
      public function § L§()
      {
         super();
         this.items = new Dictionary();
      }
      
      public function §5!l§(param1:IGameObject) : Number
      {
         var _loc2_:§var for throw§ = this.items[param1];
         if(_loc2_ != null)
         {
            return _loc2_.§if set else§;
         }
         return 0;
      }
      
      public function §break default§(param1:IGameObject, param2:int) : void
      {
         var _loc3_:§var for throw§ = new §var for throw§(param1,param2);
         this.items[param1] = _loc3_;
         _loc3_.addEventListener(Event.COMPLETE,this.§,!9§);
      }
      
      public function §import in§(param1:IGameObject) : void
      {
         var _loc2_:§var for throw§ = this.items[param1];
         if(_loc2_ != null)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§,!9§);
            _loc2_.destroy();
            delete this.items[param1];
         }
      }
      
      private function §,!9§(param1:Event) : void
      {
         var _loc2_:IGameObject = §var for throw§(param1.target).item;
         temporaryItemNotifyService.§'"K§(_loc2_);
         delete this.items[_loc2_];
      }
   }
}

