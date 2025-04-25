package §["E§
{
   import §9"9§.§=!t§;
   import §9"9§.§case var false§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.console.variables.ConsoleVarInt;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.models.tank.§7!n§;
   import §default var get§.§3!O§;
   
   public class §implements native§ implements §=!t§
   {
      private static var §null get§:IModelService = IModelService(OSGi.getInstance().getService(IModelService));
      
      private static var delay:ConsoleVarInt = new ConsoleVarInt("tankexpl_goffset",110,0,2000);
      
      private var tankData:§7!n§;
      
      private var time:int;
      
      private var §with throw§:Boolean;
      
      public function §implements native§(param1:§7!n§)
      {
         super();
         this.tankData = param1;
      }
      
      public function destroy() : void
      {
         this.tankData = null;
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(this.§with throw§)
         {
            return false;
         }
         if(this.time >= delay.value)
         {
            this.§package for default§();
            return false;
         }
         this.time += param1;
         return true;
      }
      
      public function kill() : void
      {
         this.§with throw§ = true;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.time = 0;
         this.§with throw§ = false;
      }
      
      private function §package for default§() : void
      {
         var _loc1_:Tank = null;
         var _loc2_:§1g§ = null;
         try
         {
            _loc1_ = this.tankData.tank;
            _loc1_.§<J§().clearAccumulators();
            _loc1_.§<M§().§3!?§();
            _loc1_.§<J§().state.velocity.z = _loc1_.§<J§().state.velocity.z + 500;
            _loc1_.§<J§().state.angularVelocity.reset(2,2,2);
            _loc2_ = OSGi.getInstance().getService(§%!=§) as §1g§;
            _loc2_.§finally break§(null,this.tankData.tank,§case var false§.§finally for super§);
         }
         catch(e:Error)
         {
         }
      }
   }
}

