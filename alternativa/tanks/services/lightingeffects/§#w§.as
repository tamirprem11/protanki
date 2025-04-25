package alternativa.tanks.services.lightingeffects
{
   import §2L§.§%!x§;
   import §2L§.§%" §;
   import §]2§.§"!4§;
   import flash.geom.ColorTransform;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   
   public class §#w§ implements ILightingEffectsService
   {
      private var §+!W§:Vector.<§%" §> = new Vector.<§%" §>(§"!4§.values.length,true);
      
      private var §in do§:Number;
      
      private var §[o§:ColorTransform;
      
      public function §#w§()
      {
         super();
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!W§.length)
         {
            this.§+!W§[_loc1_] = new §%" §(new §%!x§(0,0),new §%!x§(0,0),new §%!x§(0,0),0,0);
            _loc1_++;
         }
      }
      
      public function setLightForMode(param1:§"!4§, param2:§%" §) : void
      {
         this.§+!W§[param1.value] = param2;
      }
      
      public function §function each§(param1:§"!4§) : §%" §
      {
         return this.§+!W§[param1.value];
      }
      
      public function §var for return§(param1:Number, param2:ColorTransform, param3:ColorTransform) : void
      {
         this.§in do§ = param1;
         if(GPUCapabilities.gpuEnabled)
         {
            this.§[o§ = param2;
         }
         else
         {
            this.§[o§ = param3;
         }
      }
      
      public function §>7§() : Number
      {
         return this.§in do§;
      }
      
      public function §return const extends§() : ColorTransform
      {
         return this.§[o§;
      }
   }
}

