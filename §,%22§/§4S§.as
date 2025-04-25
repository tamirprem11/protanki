package §,"§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.camera.§<n§;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.service.settings.ISettingsService;
   import alternativa.tanks.utils.MathUtils;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class §4S§ implements §<n§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §&"P§:IDisplay;
      
      [Inject]
      public static var settings:ISettingsService;
      
      private static const §`!f§:Number = 15;
      
      private static const §1"6§:Number = §`!f§ * Math.PI / 180;
      
      private static var §return for super§:Vector3 = new Vector3();
      
      private static var §@4§:Matrix4 = new Matrix4();
      
      private static var §3@§:Matrix4 = new Matrix4();
      
      private static var §catch const case§:Vector3 = new Vector3();
      
      private var stage:Stage;
      
      private var §7]§:Point = new Point();
      
      private var §default for const§:Boolean = false;
      
      private var camera:§for for native§;
      
      private var §9!3§:Number;
      
      private var §>!x§:Number;
      
      private var movementX:Number;
      
      private var movementY:Number;
      
      private var rotationX:Number;
      
      private var rotationZ:Number;
      
      private var § !c§:Number;
      
      public function §4S§(param1:Number, param2:Number)
      {
         super();
         this.§9!3§ = param1;
         this.§>!x§ = param2;
         this.stage = §&"P§.stage;
      }
      
      public function activate() : void
      {
         this.camera = battleService.§catch include§().§function var break§();
         this.movementX = 0;
         this.movementY = 0;
         this.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this.§super in§();
         this.§ !c§ = §7!n§.§extends set var§.tank.§break var final§();
         this.rotationX = 0;
         this.rotationZ = 0;
      }
      
      public function deactivate() : void
      {
         this.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this.§throw do§();
      }
      
      private function §super in§() : void
      {
         this.§7]§.x = this.stage.mouseX;
         this.§7]§.y = this.stage.mouseY;
         this.§default for const§ = true;
      }
      
      public function §throw do§(param1:Event = null) : void
      {
         this.§default for const§ = false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         this.movementX += param1["movementX"];
         this.movementY += param1["movementY"] * this.§;Y§();
      }
      
      private function §2!J§(param1:Number, param2:Number) : Number
      {
         return Math.atan2(Math.sin(param1 - param2),Math.cos(param1 - param2));
      }
      
      public function update(param1:int, param2:int) : void
      {
         var _loc3_:Tank = null;
         var _loc4_:Object3D = null;
         var _loc5_:Mesh = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         if(this.§default for const§)
         {
            _loc3_ = §7!n§.§extends set var§.tank;
            if(this.movementX != 0 || this.movementY != 0)
            {
               this.§7]§.x = this.stage.mouseX;
               this.§7]§.y = this.stage.mouseY;
               _loc6_ = this.§extends const true§();
               _loc7_ = -this.movementY * _loc6_ / this.stage.stageHeight;
               this.rotationX = MathUtils.clamp(MathUtils.clampAngle(this.rotationX + _loc7_),this.§>!x§,this.§9!3§);
               _loc8_ = this.§-!T§();
               _loc9_ = _loc3_.§break var final§();
               _loc10_ = this.rotationZ - this.movementX * _loc8_ / this.stage.stageWidth;
               _loc11_ = _loc10_ + this.§ !c§;
               _loc12_ = this.§2!J§(_loc11_,_loc9_);
               _loc12_ = MathUtils.clamp(_loc12_,-§1"6§,§1"6§);
               _loc13_ = _loc9_ + _loc12_;
               _loc14_ = _loc13_ - this.§ !c§;
               this.rotationZ = _loc14_;
               this.movementX = 0;
               this.movementY = 0;
            }
            §return for super§.copy(_loc3_.§,![§());
            §return for super§.y = 0;
            §@4§.setPosition(§return for super§);
            _loc4_ = _loc3_.§0[§();
            §3@§.setMatrix(_loc4_.x,_loc4_.y,_loc4_.z,_loc4_.rotationX,_loc4_.rotationY,_loc4_.rotationZ);
            §@4§.append(§3@§);
            this.camera.x = §@4§.m03;
            this.camera.y = §@4§.m13;
            this.camera.z = §@4§.m23;
            _loc5_ = _loc3_.§<M§().§+S§();
            §@4§.setMatrix(0,0,0,-Math.PI / 2 + this.rotationX,0,this.rotationZ + this.§ !c§);
            §3@§.setMatrix(0,0,0,_loc5_.rotationX,_loc5_.rotationY,_loc5_.rotationZ);
            §@4§.append(§3@§);
            §@4§.getEulerAngles(§catch const case§);
            this.camera.rotationX = MathUtils.clampAngle(§catch const case§.x);
            this.camera.rotationY = MathUtils.clampAngle(§catch const case§.y);
            this.camera.rotationZ = MathUtils.clampAngle(§catch const case§.z);
         }
      }
      
      private function §extends const true§() : Number
      {
         return 2 * Math.atan(this.stage.stageHeight / (2 * this.§switch const var§()));
      }
      
      private function §-!T§() : Number
      {
         return 2 * Math.atan(this.stage.stageWidth / (2 * this.§switch const var§()));
      }
      
      private function §switch const var§() : Number
      {
         return Math.sqrt(this.stage.stageWidth * this.stage.stageWidth + this.stage.stageHeight * this.stage.stageHeight) / (2 * Math.tan(this.camera.fov * 0.5));
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
      }
      
      private function §;Y§() : int
      {
         return settings.mouseYInverseShaftAim ? int(-1) : int(1);
      }
   }
}

