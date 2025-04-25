package §default catch§
{
   import §],§.§while var const§;
   import alternativa.tanks.models.tank.§import var each§;
   import §class const catch§.§6!X§;
   import flash.media.Sound;
   import platform.client.fp10.core.resource.types.SoundResource;
   import §set var catch§.§[",§;
   
   public class §-l§
   {
      private var §use const return§:§6!X§;
      
      private var §for const if§:§[",§;
      
      public function §-l§(param1:§6!X§, param2:§[",§)
      {
         super();
         this.§use const return§ = param1;
         this.§for const if§ = param2;
      }
      
      private static function §&!S§(param1:SoundResource) : Sound
      {
         if(param1 == null)
         {
            return null;
         }
         return param1.sound;
      }
      
      public function §set var set§(param1:§while var const§) : void
      {
         var _loc2_:Sound = null;
         if(param1 == §import var each§.teamType)
         {
            _loc2_ = §&!S§(this.§for const if§.pointCaptureStartPositiveSound);
         }
         else
         {
            _loc2_ = §&!S§(this.§for const if§.pointCaptureStartNegativeSound);
         }
         this.§use const return§.§const set const§(_loc2_);
      }
      
      public function §native for each§(param1:§while var const§) : void
      {
         var _loc2_:Sound = null;
         if(param1 == §import var each§.teamType)
         {
            _loc2_ = §&!S§(this.§for const if§.pointCaptureStopNegativeSound);
         }
         else
         {
            _loc2_ = §&!S§(this.§for const if§.pointCaptureStopPositiveSound);
         }
         this.§use const return§.§const set const§(_loc2_);
      }
      
      public function §]!^§(param1:§while var const§) : void
      {
         var _loc2_:Sound = null;
         if(param1 == §import var each§.teamType)
         {
            _loc2_ = §&!S§(this.§for const if§.pointCapturedPositiveSound);
         }
         else
         {
            _loc2_ = §&!S§(this.§for const if§.pointCapturedNegativeSound);
         }
         this.§use const return§.§const set const§(_loc2_);
      }
      
      public function §in for static§(param1:§while var const§) : void
      {
         var _loc2_:Sound = null;
         if(param1 == §import var each§.teamType)
         {
            _loc2_ = §&!S§(this.§for const if§.pointNeutralizedNegativeSound);
         }
         else
         {
            _loc2_ = §&!S§(this.§for const if§.pointNeutralizedPositiveSound);
         }
         this.§use const return§.§const set const§(_loc2_);
      }
   }
}

