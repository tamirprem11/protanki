package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.math.Matrix4;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   
   public class §extends var if§ extends §super for static§ implements §=!t§
   {
      private static const §"v§:Vector3 = new Vector3();
      
      private static const §false const native§:Vector3 = new Vector3();
      
      private static const §8!K§:Matrix4 = new Matrix4();
      
      private var §="I§:§=!i§;
      
      private var §"" §:int;
      
      private var turret:Object3D;
      
      private var §-"§:Vector3 = new Vector3();
      
      private var container:§3!O§;
      
      public function §extends var if§(param1:§default const static§)
      {
         super(param1);
         this.§="I§ = new §=!i§(1,1,0.5,0);
         this.§="I§.§-W§(0,0,0,1,1,1,1,0);
         this.§="I§.shadowMapAlphaThreshold = 2;
         this.§="I§.depthMapAlphaThreshold = 2;
         this.§="I§.useShadowMap = false;
         this.§="I§.useLight = false;
      }
      
      public function init(param1:Vector3, param2:Object3D, param3:TextureMaterial, param4:int, param5:Number, param6:Number) : void
      {
         this.§-"§.copy(param1);
         this.turret = param2;
         this.§"" § = param4;
         this.§="I§.setMaterialToAllFaces(param3);
         this.§="I§.width = param5;
         this.§="I§.length = param6;
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(this.§"" § < 0)
         {
            return false;
         }
         this.§"" § -= param1;
         §8!K§.setMatrix(this.turret.x,this.turret.y,this.turret.z,this.turret.rotationX,this.turret.rotationY,this.turret.rotationZ);
         §8!K§.transformVector(this.§-"§,§false const native§);
         §8!K§.getAxis(1,§"v§);
         §%"^§.§true var throw§(this.§="I§,§false const native§,§"v§,param2.position);
         return true;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.§="I§);
         this.container = null;
         this.turret = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.§"" § = -1;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§="I§);
      }
   }
}

