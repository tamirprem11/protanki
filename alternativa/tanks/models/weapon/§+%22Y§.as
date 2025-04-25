package alternativa.tanks.models.weapon
{
   import §#q§.§0"A§;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.service.IModelService;
   import alternativa.tanks.models.tank.§7!n§;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import §return in§.§native var use§;
   import §return in§.§switch for default§;
   import scpacker.tanks.WeaponsManager;
   import §true for package§.§2"?§;
   import §true for package§.§5"b§;
   
   public class §+"Y§
   {
      protected var remote:Boolean = false;
      
      protected var object:ClientObject;
      
      public function §+"Y§(param1:ClientObject)
      {
         super();
         this.object = param1;
      }
      
      public function §,Z§() : int
      {
         var _loc1_:§0"A§ = WeaponsManager.shotDatas[this.§#!u§().turret.id];
         return _loc1_.reloadMsec.value;
      }
      
      public function §extends const§() : Number
      {
         var _loc1_:§0"A§ = WeaponsManager.shotDatas[this.§#!u§().turret.id];
         return _loc1_.§break var if§.value;
      }
      
      public function §&"W§() : Number
      {
         var _loc1_:§0"A§ = WeaponsManager.shotDatas[this.§#!u§().turret.id];
         return _loc1_.§false var final§.value;
      }
      
      public function §set for set§() : §switch for default§
      {
         return this.§use const super§().§="]§(this.§#!u§().turret);
      }
      
      public function §use const super§() : §native var use§
      {
         var _loc1_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         return §native var use§(_loc1_.getModelsByInterface(§native var use§)[0]);
      }
      
      public function §81§() : §5"b§
      {
         var _loc1_:IModelService = OSGi.getInstance().getService(IModelService) as IModelService;
         var _loc2_:§2"?§ = §2"?§(_loc1_.getModelsByInterface(§2"?§)[0]);
         return _loc2_.§-0§(this.§#!u§().turret);
      }
      
      public function §#!u§() : §7!n§
      {
         return §catch for const§(OSGi.getInstance().getService(§finally const class§)).getTankData(this.object);
      }
      
      public function §true native§(param1:ClientObject) : void
      {
         this.object = param1;
      }
      
      public function getObject() : ClientObject
      {
         return this.object;
      }
      
      public function isAlive() : Boolean
      {
         return true;
      }
      
      public function isLocal() : Boolean
      {
         return !this.remote;
      }
      
      public function §continue do§() : void
      {
         this.remote = true;
      }
   }
}

