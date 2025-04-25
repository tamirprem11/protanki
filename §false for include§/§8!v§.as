package §false for include§
{
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.primitives.Plane;
   
   public class §8!v§ extends BSP
   {
      public function §8!v§()
      {
         super();
         var _loc1_:Plane = new Plane();
         createTree(_loc1_);
         z = -20000;
         name = "static";
      }
   }
}

