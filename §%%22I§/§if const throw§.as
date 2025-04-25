package §%"I§
{
   import §]"h§.§function var class§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Quaternion;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.tankskin.§8!x§;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.models.weapon.shaft.§case var set§;
   import alternativa.tanks.models.weapon.shaft.§final implements§;
   import alternativa.tanks.models.weapon.shaft.§if for extends§;
   import alternativa.tanks.models.weapon.shaft.§if var try§;
   import com.alternativaplatform.projects.tanks.client.commons.types.TankSpecification;
   import §const set false§.§+"3§;
   import §const set false§.§var const throw§;
   import flash.events.FullScreenEvent;
   import flash.geom.Point;
   
   public class §if const throw§ implements §@O§
   {
      [Inject]
      public static var display:IDisplay;
      
      private var context:§const var throw§;
      
      private var weapon:§case var set§;
      
      private var §switch const return§:int;
      
      private var §7@§:Number;
      
      private var §switch set package§:Vector3;
      
      private var camera:§for for native§;
      
      private var skin:§8!x§;
      
      private var §'c§:int;
      
      private var §5y§:§if for extends§ = new §if for extends§();
      
      private var §3h§:§if for extends§ = new §if for extends§();
      
      private var §const function§:§if for extends§ = new §if for extends§();
      
      private var §implements for else§:§if for extends§ = new §if for extends§();
      
      private var §&z§:§if for extends§ = new §if for extends§();
      
      private var §each set function§:Quaternion;
      
      private var §import var catch§:Quaternion;
      
      private var §true for each§:Quaternion;
      
      private var §true catch§:Vector3;
      
      private var §default return§:Vector3;
      
      private var §9!v§:Matrix4 = new Matrix4();
      
      private var §8!K§:Matrix4 = new Matrix4();
      
      private var §%+§:Vector3 = new Vector3();
      
      private var §21§:§function var class§;
      
      private var §&>§:§var const throw§;
      
      private var §>+§:Number;
      
      private var §#!'§:§9"L§;
      
      private var §10§:TankSpecification;
      
      public function §if const throw§(param1:§const var throw§, param2:§case var set§, param3:int, param4:Number, param5:Vector3, param6:§for for native§, param7:§8!x§, param8:§9"L§, param9:§var const throw§, param10:§function var class§, param11:TankSpecification)
      {
         super();
         this.context = param1;
         this.weapon = param2;
         this.§switch const return§ = param3;
         this.§7@§ = param4;
         this.§switch set package§ = param5.clone();
         this.camera = param6;
         this.skin = param7;
         this.§each set function§ = new Quaternion();
         this.§import var catch§ = Quaternion.createFromAxisAngle(Vector3.X_AXIS,-Math.PI / 2);
         this.§true catch§ = new Vector3();
         this.§default return§ = new Vector3();
         this.§true for each§ = new Quaternion();
         this.§const function§.setInterval(0,1);
         this.§&>§ = param9;
         this.§21§ = param10;
         this.§#!'§ = param8;
         this.§10§ = param11;
      }
      
      public function enter(param1:int) : void
      {
         this.§#!'§.stopMovement();
         this.§#!'§.§super for finally§(true);
         this.§>+§ = §+"3§(this.§&>§.§-!y§()).getTurnAcceleration();
         §+"3§(this.§&>§.§-!y§()).setTurnAcceleration(this.§21§.targetingAcceleration);
         §+"3§(this.§&>§.§-!y§()).setMaxTurnSpeed(this.§21§.§3!§ * this.§10§.turretTurnAcceleration,false);
         this.context.§'"I§ = this.weapon.§if for override§(param1);
         this.§'c§ = this.§switch const return§;
         this.§5y§.setInterval(this.skin.§+S§().alpha,0);
         this.§3h§.setInterval(this.camera.fov,this.§7@§);
         var _loc2_:Point = new Point();
         var _loc3_:Point = new Point();
         this.weapon.§use var final§(_loc2_,_loc3_);
         this.§implements for else§.setInterval(_loc2_.x,_loc3_.x);
         this.§&z§.setInterval(_loc2_.y,_loc3_.y);
         this.weapon.§const const break§(0);
         this.weapon.§@"V§();
         this.weapon.§>q§(§final implements§.DRAIN);
         this.§3" §();
         this.§&>§.§6!w§();
         display.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§do var extends§);
      }
      
      private function §3" §() : void
      {
         var _loc1_:Object3D = this.skin.§0[§();
         this.§8!K§.setMatrix(_loc1_.x,_loc1_.y,_loc1_.z,_loc1_.rotationX,_loc1_.rotationY,_loc1_.rotationZ);
         this.§9!v§.setMatrix(this.camera.x,this.camera.y,this.camera.z,this.camera.rotationX,this.camera.rotationY,this.camera.rotationZ);
         this.§8!K§.invert();
         this.§9!v§.append(this.§8!K§);
         this.§9!v§.getEulerAngles(this.§%+§);
         this.§each set function§.setFromEulerAnglesXYZ(this.§%+§.x,this.§%+§.y,this.§%+§.z);
         this.§9!v§.getAxis(3,this.§true catch§);
      }
      
      public function exit() : void
      {
         this.§#!'§.§super for finally§(false);
         §+"3§(this.§&>§.§-!y§()).setMaxTurnSpeed(this.§10§.turretRotationSpeed,true);
         §+"3§(this.§&>§.§-!y§()).setTurnAcceleration(this.§>+§);
         this.§&>§.§=!Y§();
         display.stage.removeEventListener(FullScreenEvent.FULL_SCREEN,this.§do var extends§);
      }
      
      private function §do var extends§(param1:FullScreenEvent) : void
      {
         this.weapon.§?!q§(§if var try§.EXIT);
      }
      
      public function update(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.§'c§ <= 0)
         {
            this.weapon.§?!q§(§if var try§.SWITCH);
         }
         else
         {
            this.§'c§ -= param2;
            _loc3_ = 1 - this.§'c§ / this.§switch const return§;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            this.weapon.§each const do§(this.§implements for else§.interpolate(_loc3_),this.§&z§.interpolate(_loc3_));
            this.weapon.§const const break§(this.§const function§.interpolate(_loc3_));
            this.camera.fov = this.§3h§.interpolate(_loc3_);
            _loc4_ = this.§5y§.interpolate(_loc3_);
            this.skin.setAlpha(_loc4_);
            this.§break const override§(_loc3_);
         }
      }
      
      private function §break const override§(param1:Number) : void
      {
         this.§default return§.interpolate(param1,this.§true catch§,this.§switch set package§);
         this.§true for each§.slerp(this.§each set function§,this.§import var catch§,param1);
         this.§true for each§.toMatrix4(this.§9!v§);
         this.§9!v§.setPosition(this.§default return§);
         var _loc2_:Object3D = this.skin.§0[§();
         this.§8!K§.setMatrix(_loc2_.x,_loc2_.y,_loc2_.z,_loc2_.rotationX,_loc2_.rotationY,_loc2_.rotationZ);
         this.§9!v§.append(this.§8!K§);
         this.§9!v§.getEulerAngles(this.§%+§);
         this.camera.x = this.§9!v§.m03;
         this.camera.y = this.§9!v§.m13;
         this.camera.z = this.§9!v§.m23;
         this.camera.rotationX = this.§%+§.x;
         this.camera.rotationY = this.§%+§.y;
         this.camera.rotationZ = this.§%+§.z;
      }
      
      public function §?!q§(param1:§if var try§, param2:*) : void
      {
         switch(param1)
         {
            case §if var try§.TRIGGER_RELEASE:
               this.weapon.§?!q§(§if var try§.TRIGGER_RELEASE,this.context.§'"I§);
         }
      }
   }
}

