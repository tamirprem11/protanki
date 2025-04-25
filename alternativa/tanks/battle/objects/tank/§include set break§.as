package alternativa.tanks.battle.objects.tank
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   
   public class §include set break§ implements §include for var§
   {
      private static const position:Vector3 = new Vector3();
      
      private static const eulerAngles:Vector3 = new Vector3();
      
      private static const §function native§:Matrix3 = new Matrix3();
      
      public var tank:Tank;
      
      public function §include set break§(param1:Tank)
      {
         super();
         this.tank = param1;
      }
      
      public function reset() : void
      {
      }
      
      public function update(param1:Number) : void
      {
         this.tank.§,m§.toMatrix3(§function native§);
         position.copy(this.tank.§%!V§);
         position.transform3(§function native§);
         position.add(this.tank.§@"0§);
         this.tank.§,m§.getEulerAngles(eulerAngles);
         this.tank.§<M§().§false var try§(position,eulerAngles);
      }
   }
}

