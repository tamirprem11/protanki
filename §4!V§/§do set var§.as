package §4!V§
{
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   
   public class §do set var§
   {
      private var §in continue§:SoundResource;
      
      private var §7%§:MultiframeImageResource;
      
      private var §override set throw§:ImageResource;
      
      private var §try for dynamic§:MultiframeImageResource;
      
      private var §with each§:SoundResource;
      
      private var §override for each§:SoundResource;
      
      private var §0"$§:ImageResource;
      
      private var §%"W§:SoundResource;
      
      public function §do set var§(param1:SoundResource = null, param2:MultiframeImageResource = null, param3:ImageResource = null, param4:MultiframeImageResource = null, param5:SoundResource = null, param6:SoundResource = null, param7:ImageResource = null, param8:SoundResource = null)
      {
         super();
         this.§in continue§ = param1;
         this.§7%§ = param2;
         this.§override set throw§ = param3;
         this.§try for dynamic§ = param4;
         this.§with each§ = param5;
         this.§override for each§ = param6;
         this.§0"$§ = param7;
         this.§%"W§ = param8;
      }
      
      public function get explosionSound() : SoundResource
      {
         return this.§in continue§;
      }
      
      public function set explosionSound(param1:SoundResource) : void
      {
         this.§in continue§ = param1;
      }
      
      public function get explosionTexture() : MultiframeImageResource
      {
         return this.§7%§;
      }
      
      public function set explosionTexture(param1:MultiframeImageResource) : void
      {
         this.§7%§ = param1;
      }
      
      public function get hitMarkTexture() : ImageResource
      {
         return this.§override set throw§;
      }
      
      public function set hitMarkTexture(param1:ImageResource) : void
      {
         this.§override set throw§ = param1;
      }
      
      public function get muzzleFlashTexture() : MultiframeImageResource
      {
         return this.§try for dynamic§;
      }
      
      public function set muzzleFlashTexture(param1:MultiframeImageResource) : void
      {
         this.§try for dynamic§ = param1;
      }
      
      public function get shotSound() : SoundResource
      {
         return this.§with each§;
      }
      
      public function set shotSound(param1:SoundResource) : void
      {
         this.§with each§ = param1;
      }
      
      public function get targetingSound() : SoundResource
      {
         return this.§override for each§;
      }
      
      public function set targetingSound(param1:SoundResource) : void
      {
         this.§override for each§ = param1;
      }
      
      public function get trailTexture() : ImageResource
      {
         return this.§0"$§;
      }
      
      public function set trailTexture(param1:ImageResource) : void
      {
         this.§0"$§ = param1;
      }
      
      public function get zoomModeSound() : SoundResource
      {
         return this.§%"W§;
      }
      
      public function set zoomModeSound(param1:SoundResource) : void
      {
         this.§%"W§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "ShaftShootSFXCC [";
         _loc1_ += "explosionSound = " + this.explosionSound + " ";
         _loc1_ += "explosionTexture = " + this.explosionTexture + " ";
         _loc1_ += "hitMarkTexture = " + this.hitMarkTexture + " ";
         _loc1_ += "muzzleFlashTexture = " + this.muzzleFlashTexture + " ";
         _loc1_ += "shotSound = " + this.shotSound + " ";
         _loc1_ += "targetingSound = " + this.targetingSound + " ";
         _loc1_ += "trailTexture = " + this.trailTexture + " ";
         _loc1_ += "zoomModeSound = " + this.zoomModeSound + " ";
         return _loc1_ + "]";
      }
   }
}

