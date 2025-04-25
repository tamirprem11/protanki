package alternativa.tanks.models.tank
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§if if§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import alternativa.tanks.utils.MathUtils;
   
   public class §catch for default§ extends §case const var§ implements §if if§
   {
      private static const §?!D§:EncryptedInt = new EncryptedIntImpl(2000);
      
      private static const §return const use§:Number = Math.PI / 6;
      
      private var tank:Tank;
      
      private var §+1§:int;
      
      private var §""E§:Number;
      
      public function §catch for default§(param1:Tank)
      {
         super();
         this.tank = param1;
      }
      
      public function reset() : void
      {
         this.§+1§ = §try var final§().§catch static§();
         this.§""E§ = this.tank.§break var final§();
      }
      
      public function §3<§(param1:Number) : void
      {
         if(this.§-""§())
         {
            this.§with set final§(false);
         }
         else if(this.§implements get§())
         {
            this.§with set final§(true);
         }
      }
      
      private function §-""§() : Boolean
      {
         return this.§const set if§();
      }
      
      private function §implements get§() : Boolean
      {
         return this.§case set var§();
      }
      
      private function §case set var§() : Boolean
      {
         var _loc1_:Number = Math.abs(MathUtils.clampAngle(this.tank.§break var final§() - this.§""E§));
         return _loc1_ > §return const use§;
      }
      
      private function §const set if§() : Boolean
      {
         return §try var final§().§catch static§() - this.§+1§ > §?!D§.getInt();
      }
      
      private function §with set final§(param1:Boolean) : void
      {
         this.reset();
         §catch for const§(OSGi.getInstance().getService(§finally const class§)).onTurretDirectionCorrection(param1);
      }
   }
}

