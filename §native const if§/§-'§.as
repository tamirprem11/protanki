package §native const if§
{
   import §],§.§while var const§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.osgi.service.console.variables.ConsoleVarFloat;
   import alternativa.utils.TextureMaterialRegistry;
   import platform.client.fp10.core.resource.types.ImageResource;
   import §set var catch§.§switch const get§;
   
   public class §-'§
   {
      private static const §#!A§:ConsoleVarFloat = new ConsoleVarFloat("beam_width",100,0,1000);
      
      private static const §1!?§:ConsoleVarFloat = new ConsoleVarFloat("beam_ulength",500,0,10000);
      
      private static const §2!j§:ConsoleVarFloat = new ConsoleVarFloat("beam_anim_speed",-0.6,-1000,1000);
      
      private static const §case for switch§:ConsoleVarFloat = new ConsoleVarFloat("beam_urange",0.6,0.1,1);
      
      private static const §'"&§:ConsoleVarFloat = new ConsoleVarFloat("beam_alpha",1,0,1);
      
      private var §"+§:§each set set§;
      
      private var §!D§:§each set set§;
      
      public function §-'§(param1:TextureMaterialRegistry, param2:§switch const get§)
      {
         super();
         this.§"+§ = §3R§(param1,param2.blueRay,param2.blueRayTip,50,100,1,1,1);
         this.§!D§ = §3R§(param1,param2.redRay,param2.redRayTip,50,100,1,1,1);
      }
      
      private static function §3R§(param1:TextureMaterialRegistry, param2:ImageResource, param3:ImageResource, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : §each set set§
      {
         var _loc9_:TextureMaterial = null;
         _loc9_ = param1.getMaterial(param2.data);
         _loc9_.repeat = true;
         var _loc10_:TextureMaterial = param1.getMaterial(param3.data);
         return new §each set set§(_loc9_,_loc10_,param4,param5,param6,param7,param8);
      }
      
      private static function §0"D§(param1:§each set set§) : §each set set§
      {
         return new §each set set§(param1.§in var native§,param1.§in const set§,§#!A§.value,§1!?§.value,§2!j§.value,§case for switch§.value,§'"&§.value);
      }
      
      private function §""J§() : §each set set§
      {
         return §0"D§(this.§"+§);
      }
      
      private function §const const for§() : §each set set§
      {
         return §0"D§(this.§!D§);
      }
      
      public function §""H§(param1:§while var const§) : §each set set§
      {
         return param1 == §while var const§.BLUE ? this.§""J§() : this.§const const for§();
      }
   }
}

