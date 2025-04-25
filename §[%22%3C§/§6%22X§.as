package §["<§
{
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   
   public class §6"X§
   {
      private var §0!2§:MultiframeImageResource;
      
      private var §return var return§:SoundResource;
      
      private var §#b§:MultiframeImageResource;
      
      public function §6"X§(param1:MultiframeImageResource = null, param2:SoundResource = null, param3:MultiframeImageResource = null)
      {
         super();
         this.§0!2§ = param1;
         this.§return var return§ = param2;
         this.§#b§ = param3;
      }
      
      public function get fireTexture() : MultiframeImageResource
      {
         return this.§0!2§;
      }
      
      public function set fireTexture(param1:MultiframeImageResource) : void
      {
         this.§0!2§ = param1;
      }
      
      public function get flameSound() : SoundResource
      {
         return this.§return var return§;
      }
      
      public function set flameSound(param1:SoundResource) : void
      {
         this.§return var return§ = param1;
      }
      
      public function get muzzlePlaneTexture() : MultiframeImageResource
      {
         return this.§#b§;
      }
      
      public function set muzzlePlaneTexture(param1:MultiframeImageResource) : void
      {
         this.§#b§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "FlameThrowingSFXCC [";
         _loc1_ += "fireTexture = " + this.fireTexture + " ";
         _loc1_ += "flameSound = " + this.flameSound + " ";
         _loc1_ += "muzzlePlaneTexture = " + this.muzzlePlaneTexture + " ";
         return _loc1_ + "]";
      }
   }
}

