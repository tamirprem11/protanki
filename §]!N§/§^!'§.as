package §]!N§
{
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   
   public class §^!'§
   {
      private var §super for false§:int;
      
      private var §0"C§:MultiframeImageResource;
      
      private var § l§:ImageResource;
      
      private var §dynamic each§:int;
      
      private var §in continue§:SoundResource;
      
      private var §7%§:MultiframeImageResource;
      
      private var §with each§:SoundResource;
      
      private var §with set finally§:ImageResource;
      
      public function §^!'§(param1:int = 0, param2:MultiframeImageResource = null, param3:ImageResource = null, param4:int = 0, param5:SoundResource = null, param6:MultiframeImageResource = null, param7:SoundResource = null, param8:ImageResource = null)
      {
         super();
         this.§super for false§ = param1;
         this.§0"C§ = param2;
         this.§ l§ = param3;
         this.§dynamic each§ = param4;
         this.§in continue§ = param5;
         this.§7%§ = param6;
         this.§with each§ = param7;
         this.§with set finally§ = param8;
      }
      
      public function get criticalHitSize() : int
      {
         return this.§super for false§;
      }
      
      public function set criticalHitSize(param1:int) : void
      {
         this.§super for false§ = param1;
      }
      
      public function get criticalHitTexture() : MultiframeImageResource
      {
         return this.§0"C§;
      }
      
      public function set criticalHitTexture(param1:MultiframeImageResource) : void
      {
         this.§0"C§ = param1;
      }
      
      public function get explosionMarkTexture() : ImageResource
      {
         return this.§ l§;
      }
      
      public function set explosionMarkTexture(param1:ImageResource) : void
      {
         this.§ l§ = param1;
      }
      
      public function get explosionSize() : int
      {
         return this.§dynamic each§;
      }
      
      public function set explosionSize(param1:int) : void
      {
         this.§dynamic each§ = param1;
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
      
      public function get shotSound() : SoundResource
      {
         return this.§with each§;
      }
      
      public function set shotSound(param1:SoundResource) : void
      {
         this.§with each§ = param1;
      }
      
      public function get shotTexture() : ImageResource
      {
         return this.§with set finally§;
      }
      
      public function set shotTexture(param1:ImageResource) : void
      {
         this.§with set finally§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "SmokyShootSFXCC [";
         _loc1_ += "criticalHitSize = " + this.criticalHitSize + " ";
         _loc1_ += "criticalHitTexture = " + this.criticalHitTexture + " ";
         _loc1_ += "explosionMarkTexture = " + this.explosionMarkTexture + " ";
         _loc1_ += "explosionSize = " + this.explosionSize + " ";
         _loc1_ += "explosionSound = " + this.explosionSound + " ";
         _loc1_ += "explosionTexture = " + this.explosionTexture + " ";
         _loc1_ += "shotSound = " + this.shotSound + " ";
         _loc1_ += "shotTexture = " + this.shotTexture + " ";
         return _loc1_ + "]";
      }
   }
}

