package §try case§
{
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   
   public class §9+§
   {
      private var §extends var case§:MultiframeImageResource;
      
      private var §7%§:MultiframeImageResource;
      
      private var §catch for while§:SoundResource;
      
      private var §case const do§:SoundResource;
      
      private var §get const break§:ImageResource;
      
      private var §with each§:SoundResource;
      
      private var §with set finally§:MultiframeImageResource;
      
      private var §]!'§:ImageResource;
      
      public function §9+§(param1:MultiframeImageResource = null, param2:MultiframeImageResource = null, param3:SoundResource = null, param4:SoundResource = null, param5:ImageResource = null, param6:SoundResource = null, param7:MultiframeImageResource = null, param8:ImageResource = null)
      {
         super();
         this.§extends var case§ = param1;
         this.§7%§ = param2;
         this.§catch for while§ = param3;
         this.§case const do§ = param4;
         this.§get const break§ = param5;
         this.§with each§ = param6;
         this.§with set finally§ = param7;
         this.§]!'§ = param8;
      }
      
      public function get bumpFlashTexture() : MultiframeImageResource
      {
         return this.§extends var case§;
      }
      
      public function set bumpFlashTexture(param1:MultiframeImageResource) : void
      {
         this.§extends var case§ = param1;
      }
      
      public function get explosionTexture() : MultiframeImageResource
      {
         return this.§7%§;
      }
      
      public function set explosionTexture(param1:MultiframeImageResource) : void
      {
         this.§7%§ = param1;
      }
      
      public function get §!"d§() : SoundResource
      {
         return this.§catch for while§;
      }
      
      public function set §!"d§(param1:SoundResource) : void
      {
         this.§catch for while§ = param1;
      }
      
      public function get ricochetSound() : SoundResource
      {
         return this.§case const do§;
      }
      
      public function set ricochetSound(param1:SoundResource) : void
      {
         this.§case const do§ = param1;
      }
      
      public function get shotFlashTexture() : ImageResource
      {
         return this.§get const break§;
      }
      
      public function set shotFlashTexture(param1:ImageResource) : void
      {
         this.§get const break§ = param1;
      }
      
      public function get shotSound() : SoundResource
      {
         return this.§with each§;
      }
      
      public function set shotSound(param1:SoundResource) : void
      {
         this.§with each§ = param1;
      }
      
      public function get shotTexture() : MultiframeImageResource
      {
         return this.§with set finally§;
      }
      
      public function set shotTexture(param1:MultiframeImageResource) : void
      {
         this.§with set finally§ = param1;
      }
      
      public function get tailTrailTexutre() : ImageResource
      {
         return this.§]!'§;
      }
      
      public function set tailTrailTexutre(param1:ImageResource) : void
      {
         this.§]!'§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "RicochetSFXCC [";
         _loc1_ += "bumpFlashTexture = " + this.bumpFlashTexture + " ";
         _loc1_ += "explosionTexture = " + this.explosionTexture + " ";
         _loc1_ += "explostinSound = " + this.§!"d§ + " ";
         _loc1_ += "ricochetSound = " + this.ricochetSound + " ";
         _loc1_ += "shotFlashTexture = " + this.shotFlashTexture + " ";
         _loc1_ += "shotSound = " + this.shotSound + " ";
         _loc1_ += "shotTexture = " + this.shotTexture + " ";
         _loc1_ += "tailTrailTexutre = " + this.tailTrailTexutre + " ";
         return _loc1_ + "]";
      }
   }
}

