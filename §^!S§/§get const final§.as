package §^!S§
{
   import §9"9§.§=!t§;
   import §9"9§.§^!!§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.engine3d.§while for var§;
   import §default var get§.§3!O§;
   
   public class §get const final§ extends §super for static§ implements §=!t§
   {
      private static const §@_§:Vector3 = new Vector3();
      
      private static const matrix:Matrix4 = new Matrix4();
      
      protected var sprite:Sprite3D;
      
      private var §var override§:Number;
      
      private var §^!o§:Number;
      
      private var §set for in§:Vector.<§while for var§>;
      
      private var numFrames:int;
      
      private var §-"§:Vector3 = new Vector3();
      
      private var turret:Object3D;
      
      private var listener:§^!!§;
      
      private var container:§3!O§;
      
      public function §get const final§(param1:§default const static§)
      {
         super(param1);
         this.sprite = new Sprite3D(1,1);
         this.sprite.useShadowMap = false;
         this.sprite.useLight = false;
      }
      
      public function init(param1:Number, param2:Number, param3:§package var package§, param4:Vector3, param5:Object3D, param6:Number, param7:Number, param8:§^!!§) : void
      {
         this.§?"f§(param1,param2,param6,param3.material);
         this.§set for in§ = param3.§set for in§;
         this.§var override§ = 0.001 * param7;
         this.§-"§.copy(param4);
         this.§-"§.y += 10;
         this.turret = param5;
         this.listener = param8;
         this.numFrames = this.§set for in§.length;
         this.§^!o§ = 0;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.sprite);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(this.§^!o§ >= this.numFrames)
         {
            return false;
         }
         matrix.setMatrix(this.turret.x,this.turret.y,this.turret.z,this.turret.rotationX,this.turret.rotationY,this.turret.rotationZ);
         matrix.transformVector(this.§-"§,§@_§);
         this.sprite.x = §@_§.x;
         this.sprite.y = §@_§.y;
         this.sprite.z = §@_§.z;
         this.§8!Q§(this.§set for in§[int(this.§^!o§)]);
         this.§^!o§ += this.§var override§ * param1;
         return true;
      }
      
      private function §8!Q§(param1:§while for var§) : void
      {
         this.sprite.topLeftU = param1.topLeftU;
         this.sprite.topLeftV = param1.topLeftV;
         this.sprite.bottomRightU = param1.bottomRightU;
         this.sprite.bottomRightV = param1.bottomRightV;
      }
      
      public function destroy() : void
      {
         this.listener.§continue const with§(this);
         this.listener = null;
         this.container.removeChild(this.sprite);
         this.sprite.material = null;
         this.§set for in§ = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.§^!o§ = this.numFrames + 1;
      }
      
      private function §?"f§(param1:Number, param2:Number, param3:Number, param4:TextureMaterial) : void
      {
         this.sprite.width = param1;
         this.sprite.height = param2;
         this.sprite.rotation = param3;
         this.sprite.material = param4;
      }
   }
}

