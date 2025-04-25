package alternativa.tanks.model.item.upgradable
{
   import controls.timer.CountDownTimer;
   import platform.client.fp10.core.model.impl.Model;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.client.garage.models.item.properties.ItemGarageProperty;
   
   public class UpgradableItemAdapt implements UpgradableItem
   {
      private var object:IGameObject;
      
      private var impl:UpgradableItem;
      
      public function UpgradableItemAdapt(param1:IGameObject, param2:UpgradableItem)
      {
         super();
         this.object = param1;
         this.impl = param2;
      }
      
      public function getUpgradableProperties() : Vector.<UpgradableItemPropertyValue>
      {
         var result:Vector.<UpgradableItemPropertyValue> = null;
         try
         {
            Model.object = this.object;
            result = this.impl.getUpgradableProperties();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function isUpgrading() : Boolean
      {
         var result:Boolean = false;
         try
         {
            Model.object = this.object;
            result = this.impl.isUpgrading();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getUpgradingProperty() : ItemGarageProperty
      {
         var result:ItemGarageProperty = null;
         try
         {
            Model.object = this.object;
            result = this.impl.getUpgradingProperty();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function getUpgradingValue() : UpgradableItemPropertyValue
      {
         var result:UpgradableItemPropertyValue = null;
         try
         {
            Model.object = this.object;
            result = this.impl.getUpgradingValue();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function speedUp() : void
      {
         try
         {
            Model.object = this.object;
            this.impl.speedUp();
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function getCountDownTimer() : CountDownTimer
      {
         var result:CountDownTimer = null;
         try
         {
            Model.object = this.object;
            result = this.impl.getCountDownTimer();
         }
         finally
         {
            Model.popObject();
         }
         return result;
      }
      
      public function setUpgradingProperty(param1:UpgradableItemPropertyValue, param2:CountDownTimer) : void
      {
         var propertyValue:UpgradableItemPropertyValue = param1;
         var timer:CountDownTimer = param2;
         try
         {
            Model.object = this.object;
            this.impl.setUpgradingProperty(propertyValue,timer);
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function initializePrecision() : void
      {
         try
         {
            Model.object = this.object;
            this.impl.initializePrecision();
         }
         finally
         {
            Model.popObject();
         }
      }
      
      public function traceUpgrades() : void
      {
         try
         {
            Model.object = this.object;
            this.impl.traceUpgrades();
         }
         finally
         {
            Model.popObject();
         }
      }
   }
}

