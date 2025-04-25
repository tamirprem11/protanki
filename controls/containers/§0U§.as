package controls.containers
{
   import base.DiscreteSprite;
   import controls.base.TankInputBase;
   import flash.display.DisplayObject;
   
   public class §0U§ extends DiscreteSprite
   {
      private var margin:int;
      
      public var items:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function §0U§()
      {
         super();
      }
      
      public function addItem(param1:DisplayObject) : void
      {
         addChild(param1);
         this.items.push(param1);
         this.§>=§(param1);
      }
      
      public function removeItem(param1:DisplayObject) : DisplayObject
      {
         var item:DisplayObject = param1;
         var itemIndex:int = int(this.items.indexOf(item));
         if(itemIndex < 0)
         {
            return null;
         }
         try
         {
            removeChild(item);
         }
         catch(e:ArgumentError)
         {
            return null;
         }
         this.items.splice(itemIndex,1);
         this.§,w§(itemIndex,item);
         return item;
      }
      
      protected function §else function§(param1:DisplayObject) : int
      {
         return int(param1 is TankInputBase ? param1.width - 10 : param1.width);
      }
      
      protected function §,w§(param1:int, param2:DisplayObject) : void
      {
      }
      
      protected function §>=§(param1:DisplayObject) : void
      {
      }
      
      public function §]!%§() : int
      {
         return this.margin;
      }
      
      public function §1'§(param1:int) : void
      {
         this.margin = param1;
      }
      
      public function §in set if§() : int
      {
         return this.items.length;
      }
      
      public function getItems() : Vector.<DisplayObject>
      {
         return this.items;
      }
   }
}

