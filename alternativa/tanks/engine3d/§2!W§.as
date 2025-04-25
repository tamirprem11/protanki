package alternativa.tanks.engine3d
{
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.objects.Sprite3D;
   
   public class §2!W§ extends Sprite3D
   {
      public var §]"B§:Boolean;
      
      private var §with for try§:Vector.<§while for var§>;
      
      private var numFrames:int;
      
      private var fps:Number;
      
      private var currentFrame:Number = 0;
      
      public function §2!W§(param1:Number, param2:Number, param3:Material = null)
      {
         super(param1,param2,param3);
         useShadowMap = false;
         useLight = false;
      }
      
      public function §-c§(param1:§package var package§) : void
      {
         material = param1.material;
         this.§with for try§ = param1.§set for in§;
         this.fps = param1.fps;
         this.numFrames = this.§with for try§.length;
         this.currentFrame = 0;
         this.§set const const§(this.currentFrame);
      }
      
      public function §;!z§() : Number
      {
         return this.fps;
      }
      
      public function getNumFrames() : int
      {
         return this.numFrames;
      }
      
      public function clear() : void
      {
         this.§with for try§ = null;
         material = null;
         this.numFrames = 0;
      }
      
      public function §set const const§(param1:int) : void
      {
         var _loc2_:int = param1 % this.numFrames;
         this.§8!Q§(this.§with for try§[_loc2_]);
      }
      
      private function §8!Q§(param1:§while for var§) : void
      {
         topLeftU = param1.topLeftU;
         topLeftV = param1.topLeftV;
         bottomRightU = param1.bottomRightU;
         bottomRightV = param1.bottomRightV;
      }
      
      public function update(param1:Number) : void
      {
         this.currentFrame += this.fps * param1;
         if(this.currentFrame >= this.numFrames)
         {
            if(this.§]"B§)
            {
               this.currentFrame %= this.numFrames;
            }
            else
            {
               this.currentFrame = this.numFrames - 1;
            }
         }
         this.§8!Q§(this.§with for try§[int(this.currentFrame)]);
      }
   }
}

