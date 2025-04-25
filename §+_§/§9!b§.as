package §+_§
{
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   
   public class §9!b§
   {
      private var § l§:ImageResource;
      
      private var §dynamic each§:Number;
      
      private var §in continue§:SoundResource;
      
      private var §7%§:MultiframeImageResource;
      
      private var §with each§:SoundResource;
      
      private var §with set finally§:ImageResource;
      
      public function §9!b§(param1:ImageResource = null, param2:Number = 0, param3:SoundResource = null, param4:MultiframeImageResource = null, param5:SoundResource = null, param6:ImageResource = null)
      {
         super();
         this.§ l§ = param1;
         this.§dynamic each§ = param2;
         this.§in continue§ = param3;
         this.§7%§ = param4;
         this.§with each§ = param5;
         this.§with set finally§ = param6;
      }
      
      public function get explosionMarkTexture() : ImageResource
      {
         return this.§ l§;
      }
      
      public function set explosionMarkTexture(param1:ImageResource) : void
      {
         this.§ l§ = param1;
      }
      
      public function get explosionSize() : Number
      {
         return this.§dynamic each§;
      }
      
      public function set explosionSize(param1:Number) : void
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
         var _loc1_:String = "ThunderShootSFXCC [";
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

