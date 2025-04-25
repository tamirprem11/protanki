package §each const with§
{
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import platform.client.fp10.core.type.AutoClosable;
   
   public class §native for implements§ implements §case for class§, AutoClosable
   {
      private var §`!A§:Tank;
      
      public function §native for implements§(param1:Tank)
      {
         super();
         this.§`!A§ = param1;
      }
      
      public function handleReadyToSpawn() : void
      {
         var _loc1_:§catch for const§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         _loc1_.removeTankFromBattle(this.§`!A§);
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.§`!A§ = null;
      }
   }
}

