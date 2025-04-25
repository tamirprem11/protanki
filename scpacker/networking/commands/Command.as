package scpacker.networking.commands
{
   public class Command
   {
      public var type:Type;
      
      public var args:Array;
      
      public var src:String;
      
      public function Command(param1:Type, param2:Array, param3:String = null)
      {
         super();
         this.type = param1;
         this.args = param2;
         this.src = param3;
      }
   }
}

