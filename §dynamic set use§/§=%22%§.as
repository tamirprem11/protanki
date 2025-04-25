package §dynamic set use§
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.console.variables.ConsoleVarFloat;
   import alternativa.osgi.service.console.variables.ConsoleVarInt;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.camera.§^6§;
   import alternativa.tanks.camera.§true const native§;
   
   public class §="%§ implements §true const native§
   {
      private static var §false var else§:ConsoleVarFloat;
      
      private static var §+!]§:ConsoleVarFloat;
      
      private static var §override const class§:ConsoleVarFloat;
      
      private static var duration:ConsoleVarInt;
      
      private static var m1:Matrix3 = new Matrix3();
      
      private static var §get for throw§:Matrix3 = new Matrix3();
      
      private static var axis:Vector3 = new Vector3();
      
      private var sign:int;
      
      private var time:int;
      
      private var tank:Tank;
      
      public function §="%§()
      {
         super();
      }
      
      public static function §9",§() : void
      {
         §false var else§ = new ConsoleVarFloat("minecam_ampl",0,-10000,10000);
         §+!]§ = new ConsoleVarFloat("minecam_yaw",-0.02,-10,10);
         §override const class§ = new ConsoleVarFloat("minecam_roll",0.03,-10,10);
         duration = new ConsoleVarInt("minecam_time",800,0,10000);
      }
      
      public function update(param1:int, param2:int, param3:Vector3, param4:Vector3) : Boolean
      {
         if(param1 - this.time > duration.value)
         {
            return false;
         }
         return true;
      }
      
      public function §null var§(param1:§^6§) : void
      {
      }
      
      public function destroy() : void
      {
      }
   }
}

