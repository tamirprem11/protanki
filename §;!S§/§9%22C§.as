package §;!S§
{
   import §9"9§.§=!t§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.FillMaterial;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   import flash.display.BlendMode;
   
   public class §9"C§ extends §super for static§ implements §=!t§
   {
      public static const §throw package§:Number = 120;
      
      private static const §include do§:Number = 99.75;
      
      private static const §finally for implements§:Number = 79.5;
      
      private static const § !V§:Number = 500;
      
      private static const §4!m§:Number = 1000;
      
      private static const §'!8§:Number = 1500;
      
      private static const §,[§:Number = 1500;
      
      private static const §use var true§:Number = 2500;
      
      private static const §get while§:Number = 1300;
      
      private static const §break for switch§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private static const axis:Vector3 = new Vector3();
      
      private static const eulerAngles:Vector3 = new Vector3();
      
      private static const §use set else§:FillMaterial = new FillMaterial(4294753806);
      
      private static const §8!K§:Matrix4 = new Matrix4();
      
      private static const §?!6§:Matrix3 = new Matrix3();
      
      private static const §try const include§:Matrix3 = new Matrix3();
      
      private var turret:Object3D;
      
      private var §[I§:Vector3;
      
      private var §<!q§:Sprite3D;
      
      private var §5,§:Sprite3D;
      
      private var §break const use§:Sprite3D;
      
      private var §throw set static§:§%!4§;
      
      private var §import native§:§%!4§;
      
      private var §]p§:§%!4§;
      
      private var §use const static§:Number = 40;
      
      private var §static function§:Number = 75;
      
      private var §null for extends§:Number = 80;
      
      private var §while set while§:Number = 0;
      
      private var §false var default§:Number = 0;
      
      private var §package for true§:Number = 0;
      
      private var §?!C§:Number;
      
      private var §native null§:Number;
      
      private var §!!m§:Number;
      
      private var §@p§:int;
      
      private var container:§3!O§;
      
      public function §9"C§(param1:§default const static§)
      {
         super(param1);
         this.§9"!§();
      }
      
      private static function §0o§(param1:Mesh, param2:Number, param3:Vector3, param4:Vector3, param5:Number, param6:Number, param7:Number) : void
      {
         §?!6§.fromAxisAngle(Vector3.Y_AXIS,param2);
         if(param4.y < -0.99999 || param4.y > 0.99999)
         {
            axis.x = 0;
            axis.y = 0;
            axis.z = 1;
            param2 = param4.y < 0 ? Number(Math.PI) : Number(0);
         }
         else
         {
            axis.x = param4.z;
            axis.y = 0;
            axis.z = -param4.x;
            axis.normalize();
            param2 = Math.acos(param4.y);
         }
         §try const include§.fromAxisAngle(axis,param2);
         §?!6§.append(§try const include§);
         §?!6§.getEulerAngles(eulerAngles);
         param1.rotationX = eulerAngles.x;
         param1.rotationY = eulerAngles.y;
         param1.rotationZ = eulerAngles.z;
         param1.x = param3.x + param4.x * param5 + param6 * §?!6§.m00 + param7 * §?!6§.m02;
         param1.y = param3.y + param4.y * param5 + param6 * §?!6§.m10 + param7 * §?!6§.m12;
         param1.z = param3.z + param4.z * param5 + param6 * §?!6§.m20 + param7 * §?!6§.m22;
      }
      
      private static function §7o§(param1:Number) : Sprite3D
      {
         var _loc2_:Sprite3D = null;
         _loc2_ = new Sprite3D(param1,param1);
         _loc2_.rotation = 2 * Math.PI * Math.random();
         _loc2_.blendMode = BlendMode.SCREEN;
         _loc2_.useShadowMap = false;
         _loc2_.useLight = false;
         return _loc2_;
      }
      
      private static function §each var try§(param1:Sprite3D, param2:Vector3, param3:Vector3, param4:Number) : void
      {
         param1.x = param2.x + param3.x * param4;
         param1.y = param2.y + param3.y * param4;
         param1.z = param2.z + param3.z * param4;
      }
      
      public function init(param1:Object3D, param2:Vector3, param3:Material) : void
      {
         this.turret = param1;
         this.§[I§ = param2;
         this.§<!q§.material = param3;
         this.§5,§.material = param3;
         this.§break const use§.material = param3;
         this.§@p§ = 50;
         this.§use const static§ = 40;
         this.§static function§ = 75;
         this.§null for extends§ = 80;
         this.§while set while§ = 0;
         this.§false var default§ = 0;
         this.§package for true§ = 0;
         this.§?!C§ = Math.random() * 2 * Math.PI;
         this.§native null§ = Math.random() * 2 * Math.PI;
         this.§!!m§ = Math.random() * 2 * Math.PI;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§<!q§);
         param1.addChild(this.§5,§);
         param1.addChild(this.§break const use§);
         param1.addChild(this.§throw set static§);
         param1.addChild(this.§import native§);
         param1.addChild(this.§]p§);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(this.§@p§ < 0)
         {
            return false;
         }
         §8!K§.setMatrix(this.turret.x,this.turret.y,this.turret.z,this.turret.rotationX,this.turret.rotationY,this.turret.rotationZ);
         §8!K§.transformVector(this.§[I§,§break for switch§);
         direction.x = §8!K§.m01;
         direction.y = §8!K§.m11;
         direction.z = §8!K§.m21;
         var _loc3_:Number = 0.001 * param1;
         this.§while set while§ += _loc3_ * §,[§;
         this.§false var default§ += _loc3_ * §use var true§;
         this.§package for true§ += _loc3_ * §get while§;
         §each var try§(this.§<!q§,§break for switch§,direction,this.§use const static§);
         §each var try§(this.§5,§,§break for switch§,direction,this.§static function§);
         §each var try§(this.§break const use§,§break for switch§,direction,this.§null for extends§);
         §0o§(this.§throw set static§,this.§?!C§,§break for switch§,direction,this.§while set while§,0,10);
         §0o§(this.§import native§,this.§native null§,§break for switch§,direction,this.§false var default§,-7,0);
         §0o§(this.§]p§,this.§!!m§,§break for switch§,direction,this.§package for true§,7,0);
         this.§use const static§ += _loc3_ * § !V§;
         this.§static function§ += _loc3_ * §4!m§;
         this.§null for extends§ += _loc3_ * §'!8§;
         this.§@p§ -= param1;
         return true;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.§<!q§);
         this.container.removeChild(this.§5,§);
         this.container.removeChild(this.§break const use§);
         this.container.removeChild(this.§throw set static§);
         this.container.removeChild(this.§]p§);
         this.container.removeChild(this.§import native§);
         this.container = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.§@p§ = -1;
      }
      
      private function §9"!§() : void
      {
         this.§<!q§ = §7o§(§throw package§);
         this.§5,§ = §7o§(§include do§);
         this.§break const use§ = §7o§(§finally for implements§);
         this.§throw set static§ = new §%!4§(0.8,§use set else§);
         this.§import native§ = new §%!4§(0.75,§use set else§);
         this.§]p§ = new §%!4§(0.82,§use set else§);
      }
   }
}

