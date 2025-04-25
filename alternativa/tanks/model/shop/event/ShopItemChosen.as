package alternativa.tanks.model.shop.event
{
   import alternativa.tanks.model.shop.items.base.ShopItemBase;
   import flash.events.Event;
   
   public class ShopItemChosen extends Event
   {
      public static const §8?§:String = "ShopItemChosenEventConfirmationClosed";
      
      public static const §6!J§:String = "ShopItemChosenEventConfirmationProceed";
      
      public static const EVENT_TYPE:String = "ShopItemChosenEVENT";
      
      public var itemId:String;
      
      public var gridPosition:int;
      
      public var §5!w§:ShopItemBase;
      
      public var method:String;
      
      public function ShopItemChosen(param1:String = null, param2:String = null, param3:int = 0, param4:ShopItemBase = null, param5:String = null)
      {
         super(param1,true);
         this.itemId = param2;
         this.gridPosition = param3;
         this.§5!w§ = param4;
         this.method = param5;
      }
   }
}

