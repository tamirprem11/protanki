package alternativa.tanks.models.weapon.shaft
{
   import §]"h§.§function var class§;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§do for switch§;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankSpecification;
   import §const set false§.§+"3§;
   
   public class §<!E§ extends §case const var§ implements §do for switch§
   {
      private var §21§:§function var class§;
      
      private var time:int;
      
      private var §with throw§:Boolean;
      
      private var §&>§:§+"3§;
      
      private var §>+§:Number;
      
      private var §continue const null§:TankSpecification;
      
      public function §<!E§(param1:§function var class§, param2:§+"3§, param3:TankSpecification)
      {
         super();
         this.§21§ = param1;
         this.§&>§ = param2;
         this.§continue const null§ = param3;
         this.§with throw§ = false;
         this.time = 0;
      }
      
      public function start() : void
      {
         §try var final§().§finally var false§(this);
         this.§>+§ = this.§&>§.getTurnAcceleration();
      }
      
      public function stop() : void
      {
         §try var final§().§<!3§(this);
         this.§with throw§ = true;
         this.§&>§.setMaxTurnSpeed(this.§continue const null§.turretRotationSpeed,true);
         this.§&>§.setTurnAcceleration(this.§>+§);
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         if(!this.§with throw§)
         {
            this.time += param2;
            _loc3_ = this.§21§.§-$§ * (this.time + this.§21§.targetingTransitionTime) / 1000 / this.§21§.§#!>§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            this.§&>§.setMaxTurnSpeed(this.§in for class§(_loc3_) * this.§21§.§3!§ * this.§&>§.getTurnAcceleration(),false);
            this.§&>§.setTurnAcceleration(this.§21§.targetingAcceleration);
         }
      }
      
      private function §in for class§(param1:Number) : Number
      {
         var _loc2_:Number = this.§21§.rotationCoeffT1;
         if(param1 < _loc2_)
         {
            return 1;
         }
         var _loc3_:Number = this.§21§.rotationCoeffT2;
         var _loc4_:Number = this.§21§.rotationCoeffKmin;
         if(param1 < _loc3_)
         {
            return 1 - (1 - _loc4_) * (param1 - _loc2_) / (_loc3_ - _loc2_);
         }
         return _loc4_;
      }
   }
}

