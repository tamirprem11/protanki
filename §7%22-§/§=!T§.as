package §7"-§
{
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   
   public class §=!T§
   {
      private var §7%§:MultiframeImageResource;
      
      private var §override set throw§:ImageResource;
      
      private var §try for dynamic§:ImageResource;
      
      private var §with each§:SoundResource;
      
      private var §with set finally§:MultiframeImageResource;
      
      public function §=!T§(param1:MultiframeImageResource = null, param2:ImageResource = null, param3:ImageResource = null, param4:SoundResource = null, param5:MultiframeImageResource = null)
      {
         super();
         this.§7%§ = param1;
         this.§override set throw§ = param2;
         this.§try for dynamic§ = param3;
         this.§with each§ = param4;
         this.§with set finally§ = param5;
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
      
      public function get muzzleFlashTexture() : ImageResource
      {
         return this.§try for dynamic§;
      }
      
      public function set muzzleFlashTexture(param1:ImageResource) : void
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
      
      public function get shotTexture() : MultiframeImageResource
      {
         return this.§with set finally§;
      }
      
      public function set shotTexture(param1:MultiframeImageResource) : void
      {
         this.§with set finally§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "TwinsShootSFXCC [";
         _loc1_ += "explosionTexture = " + this.explosionTexture + " ";
         _loc1_ += "hitMarkTexture = " + this.hitMarkTexture + " ";
         _loc1_ += "muzzleFlashTexture = " + this.muzzleFlashTexture + " ";
         _loc1_ += "shotSound = " + this.shotSound + " ";
         _loc1_ += "shotTexture = " + this.shotTexture + " ";
         return _loc1_ + "]";
      }
   }
}

