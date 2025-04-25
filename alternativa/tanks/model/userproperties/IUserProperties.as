package alternativa.tanks.model.userproperties
{
   public interface IUserProperties
   {
      function getId() : String;
      
      function getName() : String;
      
      function getScore() : int;
      
      function getRank() : int;
      
      function getNextScore() : int;
      
      function getPlace() : int;
      
      function getHasDoubleCrystal() : Boolean;
      
      function setHasDoubleCrystal(param1:Boolean) : void;
   }
}

