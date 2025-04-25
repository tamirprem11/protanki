package §false for catch§
{
   import alternativa.math.Vector3;
   import alternativa.osgi.service.console.variables.ConsoleVarFloat;
   import alternativa.tanks.camera.§for for native§;
   
   public class §9P§ implements §do const use§
   {
      private static const direction:Vector3 = new Vector3();
      
      private static const localDirection:Vector3 = new Vector3();
      
      private var §each const false§:ConsoleVarFloat;
      
      private var §function static§:ConsoleVarFloat;
      
      public function §9P§(param1:ConsoleVarFloat, param2:ConsoleVarFloat)
      {
         super();
         this.§each const false§ = param1;
         this.§function static§ = param2;
      }
      
      public function §&K§(param1:§4"i§, param2:§for for native§, param3:Number) : Vector3
      {
         localDirection.x = param1.§if var finally§();
         localDirection.y = -param1.§class for else§();
         localDirection.z = param1.§%D§();
         param2.§null var implements§(localDirection,direction);
         if(direction.lengthSqr() > 0)
         {
            direction.normalize();
         }
         if(param1.§super if§())
         {
            direction.scale(this.§each const false§.value * this.§function static§.value * param3);
         }
         else
         {
            direction.scale(this.§each const false§.value * param3);
         }
         return direction;
      }
   }
}

