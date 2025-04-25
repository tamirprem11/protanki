package alternativa.tanks.battle.scene3d
{
   import alternativa.engine3d.core.Camera3D;
   
   public class §<"8§
   {
      public var color:int = 10543615;
      
      public var alpha:Number = 0.25;
      
      public var §+2§:Number = 0;
      
      public var §3!u§:Number = 10000;
      
      private var camera:Camera3D;
      
      public function §<"8§(param1:Camera3D)
      {
         super();
         this.camera = param1;
      }
      
      public function enable() : void
      {
         if(this.color != 0)
         {
            this.camera.fogNear = this.§+2§;
            this.camera.fogFar = this.§3!u§;
            this.camera.fogAlpha = this.alpha;
            this.camera.fogColor = this.color;
         }
      }
      
      public function disable() : void
      {
         this.camera.fogNear = 0;
         this.camera.fogFar = 1000000;
         this.camera.fogAlpha = 0;
      }
      
      public function setup(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         this.color = param1;
         this.alpha = param2;
         this.§+2§ = param3;
         this.§3!u§ = param4;
      }
   }
}

