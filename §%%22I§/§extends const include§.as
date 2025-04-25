package §%"I§
{
   import §,"§.§<!z§;
   import §]"h§.§function var class§;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.models.weapon.shaft.§7G§;
   import alternativa.tanks.models.weapon.shaft.§case var set§;
   import alternativa.tanks.models.weapon.shaft.§final implements§;
   import alternativa.tanks.models.weapon.shaft.§if for extends§;
   import alternativa.tanks.models.weapon.shaft.§if var try§;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import alternativa.tanks.utils.MathUtils;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankSpecification;
   import §const set false§.§+"3§;
   import §const set false§.§var const throw§;
   import flash.events.FullScreenEvent;
   import flash.utils.getTimer;
   
   public class §extends const include§ implements §@O§
   {
      [Inject]
      public static var §2!a§:TargetingModeService;
      
      [Inject]
      public static var display:IDisplay;
      
      private static const §get var false§:Number = 8;
      
      private static const §throw§:Number = 1;
      
      private static const §in for true§:Number = 5000;
      
      private static const §case const final§:Number = 50;
      
      private static const §%!F§:Number = §in for true§ - §case const final§;
      
      private static const §dynamic for function§:Number = §get var false§ - §throw§;
      
      private static var §native for return§:Vector3 = new Vector3();
      
      private static var targetPoint:§native case§ = new §native case§();
      
      private static var §default return§:Vector3 = new Vector3();
      
      private var context:§const var throw§;
      
      private var weapon:§case var set§;
      
      private var up:Boolean;
      
      private var down:Boolean;
      
      private var §#!&§:§<!z§;
      
      private var §package set§:§function var class§;
      
      private var §3h§:§if for extends§ = new §if for extends§();
      
      private var §7!7§:§if for extends§ = new §if for extends§();
      
      private var exitTime:int;
      
      private var §final set while§:Boolean;
      
      private var §'V§:Boolean;
      
      private var §&>§:§var const throw§;
      
      private var effects:§7G§;
      
      private var §>+§:Number;
      
      private var §10§:TankSpecification;
      
      public function §extends const include§(param1:§const var throw§, param2:§case var set§, param3:§<!z§, param4:§function var class§, param5:§var const throw§, param6:§7G§, param7:TankSpecification)
      {
         super();
         this.context = param1;
         this.weapon = param2;
         this.§#!&§ = param3;
         this.§package set§ = param4;
         this.§&>§ = param5;
         this.effects = param6;
         this.§10§ = param7;
         this.§3h§.setInterval(param4.§3!n§,param4.§?!'§);
         this.§7!7§.setInterval(param4.§import set set§,param4.§import const implements§);
      }
      
      public function enter(param1:int) : void
      {
         this.§>+§ = §+"3§(this.§&>§.§-!y§()).getTurnAcceleration();
         §+"3§(this.§&>§.§-!y§()).setTurnAcceleration(this.§package set§.targetingAcceleration);
         this.§throw while§(1);
         this.weapon.§>q§(§final implements§.DRAIN);
         this.weapon.§6"4§();
         this.up = MathUtils.getBitValue(§+"3§(this.§&>§.§-!y§()).getControl(),§+"3§.§implements continue§) != 0;
         this.down = MathUtils.getBitValue(§+"3§(this.§&>§.§-!y§()).getControl(),§+"3§.§8A§) != 0;
         this.exitTime = -1;
         this.§final set while§ = false;
         this.§'V§ = true;
         this.§&>§.§6!w§();
         display.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§do var extends§);
      }
      
      private function §throw while§(param1:Number) : void
      {
         §+"3§(this.§&>§.§-!y§()).setMaxTurnSpeed(param1 * this.§package set§.§3!§ * this.§&>§.§-!y§().getTurnAcceleration(),false);
         this.§#!&§.§@"9§(param1);
         this.§&>§.§try const extends§(param1);
      }
      
      public function update(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.up = MathUtils.getBitValue(§+"3§(this.§&>§.§-!y§()).getControl(),§+"3§.§implements continue§) != 0;
         this.down = MathUtils.getBitValue(§+"3§(this.§&>§.§-!y§()).getControl(),§+"3§.§8A§) != 0;
         if(this.exitTime > 0)
         {
            if(param1 >= this.exitTime)
            {
               this.weapon.§?!q§(§if var try§.EXIT);
            }
         }
         else if(this.weapon.§-!<§())
         {
            this.weapon.§?!q§(§if var try§.STOP,true);
         }
         else
         {
            _loc3_ = int(this.up) - int(this.down);
            this.§#!&§.§0"i§ = _loc3_;
            this.effects.§false set finally§(_loc3_ != 0 && !this.§#!&§.§%!@§() || §+"3§(this.§&>§.§-!y§()).isRotating());
            _loc4_ = this.weapon.§if for override§(param1);
            if(_loc4_ == 0 && this.§'V§)
            {
               this.§'V§ = false;
               this.weapon.§super const override§();
            }
            _loc5_ = this.context.§'"I§ - _loc4_;
            _loc6_ = _loc5_ / this.weapon.§try package§();
            this.§#!&§.§5x§(this.§3h§.interpolate(_loc6_));
            _loc7_ = this.§in for class§(_loc6_);
            this.§throw while§(_loc7_);
            this.weapon.§%"#§(this.§7!7§.interpolate(_loc6_));
         }
      }
      
      public function §?!q§(param1:§if var try§, param2:*) : void
      {
         switch(param1)
         {
            case §if var try§.TRIGGER_RELEASE:
               if(!this.§final set while§)
               {
                  this.§final set while§ = true;
                  this.weapon.§?c§(this.context.§'"I§);
                  this.weapon.§>q§(§final implements§.RECHARGE);
                  this.exitTime = getTimer() + this.§package set§.afterShotPause;
                  break;
               }
         }
      }
      
      public function exit() : void
      {
         this.effects.§false set finally§(false);
         this.effects.§return const while§();
         §+"3§(this.§&>§.§-!y§()).setMaxTurnSpeed(this.§10§.turretRotationSpeed,true);
         §+"3§(this.§&>§.§-!y§()).setTurnAcceleration(this.§>+§);
         this.weapon.§]F§();
         this.§&>§.§=!Y§();
         display.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§do var extends§);
      }
      
      private function §do var extends§(param1:FullScreenEvent) : void
      {
         this.weapon.§?!q§(§if var try§.EXIT);
      }
      
      private function §in for class§(param1:Number) : Number
      {
         var _loc2_:Number = this.§package set§.rotationCoeffT1;
         if(param1 < _loc2_)
         {
            return 1;
         }
         var _loc3_:Number = this.§package set§.rotationCoeffT2;
         var _loc4_:Number = this.§package set§.rotationCoeffKmin;
         if(param1 < _loc3_)
         {
            return 1 - (1 - _loc4_) * (param1 - _loc2_) / (_loc3_ - _loc2_);
         }
         return _loc4_;
      }
   }
}

