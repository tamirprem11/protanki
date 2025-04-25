package §@!p§
{
   import alternativa.object.ClientObject;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import controls.InventoryIcon;
   import flash.utils.getTimer;
   
   public class §`"8§
   {
      private var id:int;
      
      private var _count:EncryptedInt;
      
      private var clientObject:ClientObject;
      
      private var icon:InventoryIcon;
      
      private var §catch null§:int;
      
      private var §5%§:int = -1;
      
      private var §with const while§:int;
      
      public function §`"8§(param1:ClientObject, param2:int, param3:int, param4:int)
      {
         super();
         this.clientObject = param1;
         this.id = param2;
         this.icon = new InventoryIcon(param2);
         this._count = new EncryptedIntImpl(param3);
         this.§with const while§ = param4;
         this.§catch null§ = param4;
      }
      
      public function getClientObject() : ClientObject
      {
         return this.clientObject;
      }
      
      public function getId() : int
      {
         return this.id;
      }
      
      public function getIcon() : InventoryIcon
      {
         return this.icon;
      }
      
      public function §0S§() : int
      {
         return this.§with const while§;
      }
      
      public function §@8§(param1:int) : Number
      {
         if(this.§5%§ == -1)
         {
            return 1;
         }
         var _loc2_:Number = (param1 - this.§5%§) / this.§with const while§;
         if(_loc2_ > 1)
         {
            _loc2_ = 1;
            this.§&"$§();
         }
         return _loc2_;
      }
      
      public function §&"$§() : void
      {
         this.§5%§ = -1;
      }
      
      public function §5!K§(param1:int) : void
      {
         this.§with const while§ = param1;
         this.§5%§ = getTimer();
      }
      
      public function set count(param1:int) : void
      {
         this._count.setInt(param1);
      }
      
      public function get count() : int
      {
         return this._count.getInt();
      }
      
      public function §override for while§() : Boolean
      {
         return this.§5%§ < 0 && this._count.getInt() > 0;
      }
   }
}

