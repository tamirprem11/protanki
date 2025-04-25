package alternativa.tanks.bonuses
{
   import alternativa.math.Vector3;
   
   public interface Bonus
   {
      function get bonusId() : String;
      
      function spawn(param1:Vector3, param2:int, param3:Number, param4:Function) : void;
      
      function pickup() : void;
      
      function remove() : void;
      
      function enableTrigger() : void;
   }
}

