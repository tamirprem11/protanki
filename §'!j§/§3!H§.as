package §'!j§
{
   import §<h§.§]!;§;
   import §<h§.§use switch§;
   import alternativa.tanks.model.garage.§super const default§;
   import alternativa.tanks.service.item.ItemService;
   import §const for import§.SendPresentEvent;
   import §const for import§.§if for try§;
   import flash.events.Event;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §3!H§ extends §]!;§ implements §use switch§, §-b§
   {
      [Inject]
      public static var itemService:ItemService;
      
      private var uid:String;
      
      private var text:String;
      
      private var price:int;
      
      private var §;!p§:§if for try§;
      
      private var §,!!§:IGameObject;
      
      public function §3!H§()
      {
         super();
      }
      
      public function preparePresent(param1:IGameObject) : void
      {
         this.§,!!§ = param1;
         this.§;!p§ = new §if for try§();
         this.§;!p§.addEventListener(SendPresentEvent.SEND_PRESENT,getFunctionWrapper(this.§9e§));
         this.§;!p§.addEventListener(Event.CANCEL,getFunctionWrapper(this.§case for set§));
      }
      
      private function §case for set§(param1:Event) : void
      {
         this.§3!e§();
      }
      
      private function §3!e§() : void
      {
         this.§;!p§.removeEventListener(SendPresentEvent.SEND_PRESENT,getFunctionWrapper(this.§9e§));
         this.§;!p§.removeEventListener(Event.CANCEL,getFunctionWrapper(this.§3!e§));
         this.§;!p§ = null;
      }
      
      private function §9e§(param1:SendPresentEvent) : void
      {
         this.uid = param1.uid;
         this.text = param1.text;
         this.price = itemService.getPrice(this.§,!!§);
         this.§3!e§();
         §super const default§(object.adapt(§super const default§)).showConfirmAlert(itemService.getName(this.§,!!§),this.price,itemService.getPreviewResource(this.§,!!§).data,true,-1);
      }
      
      public function confirmPresentPurchase(param1:IGameObject) : void
      {
         server.§]"9§(this.uid,param1,this.text,this.price);
      }
   }
}

