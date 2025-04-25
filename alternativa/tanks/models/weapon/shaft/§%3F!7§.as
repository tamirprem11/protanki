package alternativa.tanks.models.weapon.shaft
{
   import §]"h§.§function var class§;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.§continue set dynamic§;
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankSpecification;
   import §const set false§.§+"3§;
   
   public class §?!7§ implements §extends for finally§
   {
      private static const §const for continue§:§'!L§ = new §'!L§();
      
      private static const shotDirection:Vector3 = new Vector3();
      
      private var effects:§7G§;
      
      private var §21§:§function var class§;
      
      private var §#!'§:§9"L§;
      
      private var §5!]§:§<!E§;
      
      private var §10§:TankSpecification;
      
      private var §&>§:§+"3§;
      
      private var §do if§:EncryptedNumber;
      
      public function §?!7§(param1:Number, param2:§function var class§, param3:§7G§, param4:§+"3§, param5:TankSpecification)
      {
         super();
         this.§do if§ = new EncryptedNumberImpl(param1);
         this.§21§ = param2;
         this.effects = param3;
         this.§&>§ = param4;
         this.§10§ = param5;
      }
      
      private static function §<4§(param1:Vector3, param2:Vector3, param3:Vector3) : Vector3
      {
         if(param2 != null)
         {
            return shotDirection.diff(param2,param1).normalize();
         }
         if(param3 == null)
         {
            param3 = §const for continue§.direction;
         }
         return shotDirection.diff(param3,param1).normalize();
      }
      
      public function init(param1:§9"L§) : void
      {
         this.§#!'§ = param1;
      }
      
      public function destroy() : void
      {
         this.effects.destroy();
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate() : void
      {
         this.§]F§();
      }
      
      public function enable() : void
      {
      }
      
      public function disable(param1:Boolean) : void
      {
         this.§]F§();
      }
      
      public function reset() : void
      {
         this.§]F§();
      }
      
      public function getStatus() : Number
      {
         return 0;
      }
      
      public function §6"4§() : void
      {
         if(this.§5!]§ == null)
         {
            this.effects.§return for final§(this.§#!'§.§0[§());
            this.§#!'§.stopMovement();
            this.§#!'§.§super for finally§(true);
            this.§5!]§ = new §<!E§(this.§21§,this.§&>§,this.§10§);
            this.§5!]§.start();
         }
      }
      
      public function §]F§() : void
      {
         if(this.§5!]§ != null)
         {
            this.§5!]§.stop();
            this.§5!]§ = null;
         }
         this.effects.§return const while§();
         this.§#!'§.§super for finally§(false);
      }
      
      public function §else const dynamic§(param1:Vector3, param2:Body, param3:Vector3, param4:Number) : void
      {
         var _loc5_:Vector3 = null;
         this.§#!'§.§1"f§(§const for continue§);
         this.§#!'§.§<J§().addWorldForceScaled(§const for continue§.§for const for§,§const for continue§.direction,-this.§do if§.getNumber());
         this.§#!'§.§7+§();
         this.effects.§do var function§(this.§#!'§.§,![§(),this.§#!'§.§0[§());
         this.effects.§import null§(§const for continue§.§for const for§);
         this.effects.§'!1§(§const for continue§.§#!!§,param1);
         if(param1 != null || param3 != null)
         {
            _loc5_ = §<4§(§const for continue§.§#!!§,param1,param3);
            this.effects.§'!f§(param1,param3,§const for continue§.§for const for§,§const for continue§.direction,_loc5_);
            this.§case const function§(param2,param3,_loc5_,param4);
         }
      }
      
      private function §case const function§(param1:Body, param2:Vector3, param3:Vector3, param4:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Tank = null;
         if(param1 == null)
         {
            return;
         }
         if(Vector3.isFiniteVector(param3))
         {
            _loc5_ = param4 * §continue set dynamic§.§ !0§.getNumber();
            if(param1 != null && param1.tank != null)
            {
               if(Vector3.isFiniteVector(param2))
               {
                  _loc6_ = param1.tank;
                  _loc6_.§class set set§(param2,param3,_loc5_);
               }
            }
         }
      }
   }
}

