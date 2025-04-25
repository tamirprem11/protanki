package §8"W§
{
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.objects.tank.§null set else§;
   import alternativa.tanks.models.tank.§#!q§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import flash.events.Event;
   import platform.client.fp10.core.type.AutoClosable;
   
   public class §class var super§ implements AutoClosable
   {
      [Inject]
      public static var display:IDisplay;
      
      private var §const for null§:ClientObject;
      
      public function §class var super§(param1:ClientObject)
      {
         super();
         this.§const for null§ = param1;
         display.stage.addEventListener(Event.ACTIVATE,this.§<!^§);
         display.stage.addEventListener(Event.DEACTIVATE,this.§;!V§);
      }
      
      private function §<!^§(param1:Event) : void
      {
         var _loc2_:§#!q§ = this.§const for package§();
         _loc2_.§finally var use§(§null set else§.CLIENT);
      }
      
      private function §;!V§(param1:Event) : void
      {
         var _loc2_:§#!q§ = this.§const for package§();
         _loc2_.§switch in§(§null set else§.CLIENT,true);
      }
      
      private function §const for package§() : §#!q§
      {
         var _loc1_:§catch for const§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         return _loc1_.§const for package§(this.§const for null§);
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.§const for null§ = null;
         display.stage.removeEventListener(Event.ACTIVATE,this.§<!^§);
         display.stage.removeEventListener(Event.DEACTIVATE,this.§;!V§);
      }
   }
}

