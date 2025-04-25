package projects.tanks.client.entrance.model.entrance.emailconfirm
{
   public class ConfirmEmailStatus
   {
      public static const OK_EXISTS:ConfirmEmailStatus = new ConfirmEmailStatus(0,"OK_EXISTS");
      
      public static const OK:ConfirmEmailStatus = new ConfirmEmailStatus(1,"OK");
      
      public static const ERROR:ConfirmEmailStatus = new ConfirmEmailStatus(2,"ERROR");
      
      private var _value:int;
      
      private var _name:String;
      
      public function ConfirmEmailStatus(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public static function get values() : Vector.<ConfirmEmailStatus>
      {
         var _loc1_:Vector.<ConfirmEmailStatus> = new Vector.<ConfirmEmailStatus>();
         _loc1_.push(OK_EXISTS);
         _loc1_.push(OK);
         _loc1_.push(ERROR);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "ConfirmEmailStatus [" + this._name + "]";
      }
      
      public function get value() : int
      {
         return this._value;
      }
      
      public function get name() : String
      {
         return this._name;
      }
   }
}

