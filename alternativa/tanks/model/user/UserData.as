package alternativa.tanks.model.user
{
   public class UserData
   {
      public var id:String;
      
      public var name:String;
      
      public var rank:int;
      
      public function UserData(param1:String, param2:String, param3:int)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.rank = param3;
      }
   }
}

