package §in var in§
{
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   
   public class §6!l§
   {
      private var §"]§:MultiframeImageResource;
      
      private var §%k§:ImageResource;
      
      private var §-!Q§:SoundResource;
      
      private var §>!d§:MultiframeImageResource;
      
      private var §8!>§:ImageResource;
      
      private var § !p§:SoundResource;
      
      private var §%n§:SoundResource;
      
      public function §6!l§(param1:MultiframeImageResource = null, param2:ImageResource = null, param3:SoundResource = null, param4:MultiframeImageResource = null, param5:ImageResource = null, param6:SoundResource = null, param7:SoundResource = null)
      {
         super();
         this.§"]§ = param1;
         this.§%k§ = param2;
         this.§-!Q§ = param3;
         this.§>!d§ = param4;
         this.§8!>§ = param5;
         this.§ !p§ = param6;
         this.§%n§ = param7;
      }
      
      public function get damagingBall() : MultiframeImageResource
      {
         return this.§"]§;
      }
      
      public function set damagingBall(param1:MultiframeImageResource) : void
      {
         this.§"]§ = param1;
      }
      
      public function get damagingRay() : ImageResource
      {
         return this.§%k§;
      }
      
      public function set damagingRay(param1:ImageResource) : void
      {
         this.§%k§ = param1;
      }
      
      public function get damagingSound() : SoundResource
      {
         return this.§-!Q§;
      }
      
      public function set damagingSound(param1:SoundResource) : void
      {
         this.§-!Q§ = param1;
      }
      
      public function get healingBall() : MultiframeImageResource
      {
         return this.§>!d§;
      }
      
      public function set healingBall(param1:MultiframeImageResource) : void
      {
         this.§>!d§ = param1;
      }
      
      public function get healingRay() : ImageResource
      {
         return this.§8!>§;
      }
      
      public function set healingRay(param1:ImageResource) : void
      {
         this.§8!>§ = param1;
      }
      
      public function get healingSound() : SoundResource
      {
         return this.§ !p§;
      }
      
      public function set healingSound(param1:SoundResource) : void
      {
         this.§ !p§ = param1;
      }
      
      public function get idleSound() : SoundResource
      {
         return this.§%n§;
      }
      
      public function set idleSound(param1:SoundResource) : void
      {
         this.§%n§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "IsisSFXCC [";
         _loc1_ += "damagingBall = " + this.damagingBall + " ";
         _loc1_ += "damagingRay = " + this.damagingRay + " ";
         _loc1_ += "damagingSound = " + this.damagingSound + " ";
         _loc1_ += "healingBall = " + this.healingBall + " ";
         _loc1_ += "healingRay = " + this.healingRay + " ";
         _loc1_ += "healingSound = " + this.healingSound + " ";
         _loc1_ += "idleSound = " + this.idleSound + " ";
         return _loc1_ + "]";
      }
   }
}

