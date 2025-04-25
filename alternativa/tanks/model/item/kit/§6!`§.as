package alternativa.tanks.model.item.kit
{
   import platform.client.fp10.core.model.IModel;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.garage.models.item.kit.KitItem;
   
   public class §6!`§ implements GarageKit
   {
      private var object:IGameObject;
      
      private var impl:Vector.<GarageKit>;
      
      public function §6!`§(param1:IGameObject, param2:Vector.<IModel>)
      {
         super();
         this.object = param1;
         this.impl = new Vector.<GarageKit>();
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            this.impl.push(param2[_loc3_]);
            _loc3_++;
         }
      }
      
      public function getImage() : ImageResource
      {
         var result:ImageResource = null;
         var i:int = 0;
         var m:GarageKit = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getImage();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getPrice() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:GarageKit = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getPrice();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getPriceWithoutDiscount() : int
      {
         var result:int = 0;
         var i:int = 0;
         var m:GarageKit = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getPriceWithoutDiscount();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function §include var get§() : int
      {
         var §final continue§:int = 0;
         var §'!c§:int = 0;
         var §try set else§:GarageKit = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§include var get§();
               §'!c§++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
      
      public function §break var implements§() : int
      {
         var §final continue§:int = 0;
         var §'!c§:int = 0;
         var §try set else§:GarageKit = null;
         try
         {
            Model.object = this.object;
            §'!c§ = 0;
            while(§'!c§ < this.impl.length)
            {
               §try set else§ = this.impl[§'!c§];
               §final continue§ = §try set else§.§break var implements§();
               §'!c§++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return §final continue§;
      }
      
      public function getItems() : Vector.<KitItem>
      {
         var result:Vector.<KitItem> = null;
         var i:int = 0;
         var m:GarageKit = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.getItems();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function canBuy() : Boolean
      {
         var result:Boolean = false;
         var i:int = 0;
         var m:GarageKit = null;
         try
         {
            Model.object = this.object;
            i = 0;
            while(i < this.impl.length)
            {
               m = this.impl[i];
               result = m.canBuy();
               i++;
            }
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
   }
}

