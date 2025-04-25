package §8!1§
{
   import §9"9§.§=!i§;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.engine3d.§while for var§;
   
   internal class §`![§ extends §=!i§
   {
      private var §with for try§:Vector.<§while for var§>;
      
      private var numFrames:int;
      
      private var §^!o§:Number;
      
      public function §`![§()
      {
         super(1,1,0.5,0);
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function init(param1:§package var package§) : void
      {
         setMaterialToAllFaces(param1.material);
         this.§with for try§ = param1.§set for in§;
         this.numFrames = this.§with for try§.length;
         this.§^!o§ = 0;
         this.§8!Q§(this.§with for try§[0]);
      }
      
      public function clear() : void
      {
         setMaterialToAllFaces(null);
         this.§with for try§ = null;
         this.numFrames = 0;
      }
      
      public function update(param1:Number, param2:Number) : void
      {
         this.§^!o§ += param1 * param2;
         if(this.§^!o§ >= this.numFrames)
         {
            this.§^!o§ = 0;
         }
         this.§8!Q§(this.§with for try§[int(this.§^!o§)]);
      }
      
      private function §8!Q§(param1:§while for var§) : void
      {
         a.u = param1.topLeftU;
         a.v = param1.topLeftV;
         b.u = param1.topLeftU;
         b.v = param1.bottomRightV;
         c.u = param1.bottomRightU;
         c.v = param1.bottomRightV;
         d.u = param1.bottomRightU;
         d.v = param1.topLeftV;
      }
   }
}

