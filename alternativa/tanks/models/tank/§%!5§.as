package alternativa.tanks.models.tank
{
   import alternativa.tanks.battle.objects.tank.tankskin.§5"S§;
   import flash.utils.Dictionary;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   
   internal class §%!5§
   {
      private var §true const break§:Dictionary = new Dictionary();
      
      public function §%!5§()
      {
         super();
      }
      
      public function §#O§(param1:Tanks3DSResource) : §5"S§
      {
         var _loc2_:§5"S§ = this.§true const break§[param1.id];
         if(_loc2_ == null)
         {
            _loc2_ = new §5"S§(param1);
            this.§true const break§[param1.id] = _loc2_;
         }
         return _loc2_;
      }
   }
}

