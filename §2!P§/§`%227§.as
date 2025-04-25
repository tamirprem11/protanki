package §2!P§
{
   import platform.client.fp10.core.resource.types.SoundResource;
   
   public class §`"7§
   {
      private var §?1§:SoundResource;
      
      private var §true true§:SoundResource;
      
      private var §implements§:SoundResource;
      
      private var §?" §:SoundResource;
      
      private var §false use§:SoundResource;
      
      public function §`"7§(param1:SoundResource = null, param2:SoundResource = null, param3:SoundResource = null, param4:SoundResource = null, param5:SoundResource = null)
      {
         super();
         this.§?1§ = param1;
         this.§true true§ = param2;
         this.§implements§ = param3;
         this.§?" § = param4;
         this.§false use§ = param5;
      }
      
      public function get engineIdleSound() : SoundResource
      {
         return this.§?1§;
      }
      
      public function set engineIdleSound(param1:SoundResource) : void
      {
         this.§?1§ = param1;
      }
      
      public function get engineMovingSound() : SoundResource
      {
         return this.§true true§;
      }
      
      public function set engineMovingSound(param1:SoundResource) : void
      {
         this.§true true§ = param1;
      }
      
      public function get engineStartMovingSound() : SoundResource
      {
         return this.§implements§;
      }
      
      public function set engineStartMovingSound(param1:SoundResource) : void
      {
         this.§implements§ = param1;
      }
      
      public function get §get const case§() : SoundResource
      {
         return this.§?" §;
      }
      
      public function set §get const case§(param1:SoundResource) : void
      {
         this.§?" § = param1;
      }
      
      public function get §use var default§() : SoundResource
      {
         return this.§false use§;
      }
      
      public function set §use var default§(param1:SoundResource) : void
      {
         this.§false use§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "EngineCC [";
         _loc1_ += "engineIdleSound = " + this.engineIdleSound + " ";
         _loc1_ += "engineMovingSound = " + this.engineMovingSound + " ";
         _loc1_ += "engineStartMovingSound = " + this.engineStartMovingSound + " ";
         _loc1_ += "engineStartSound = " + this.§get const case§ + " ";
         _loc1_ += "engineStopMovingSound = " + this.§use var default§ + " ";
         return _loc1_ + "]";
      }
   }
}

