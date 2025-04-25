package alternativa.tanks.models.tank
{
   import §+!2§.§super for in§;
   import flash.utils.Dictionary;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   
   internal class §package const break§
   {
      private var §default with§:Dictionary = new Dictionary();
      
      public function §package const break§()
      {
         super();
      }
      
      public function § "d§(param1:Tanks3DSResource) : §super for in§
      {
         var _loc2_:§super for in§ = this.§default with§[param1.id];
         if(_loc2_ == null)
         {
            _loc2_ = new §super for in§(param1);
            this.§default with§[param1.id] = _loc2_;
         }
         return _loc2_;
      }
   }
}

