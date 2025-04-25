package §else for default§
{
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.model.IModel;
   import alternativa.model.IObjectLoadListener;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.bonuses.BattleBonus;
   import alternativa.tanks.bonuses.BattleBonusData;
   import alternativa.tanks.bonuses.Bonus;
   import alternativa.types.Long;
   import alternativa.utils.TextureMaterialRegistry;
   import com.alternativaplatform.projects.tanks.client.warfare.models.common.bonuscommon.BonusCommonModelBase;
   import com.alternativaplatform.projects.tanks.client.warfare.models.common.bonuscommon.IBonusCommonModelBase;
   import flash.display.BitmapData;
   import platform.client.fp10.core.registry.ResourceRegistry;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.SoundResource;
   import platform.client.fp10.core.resource.types.StubBitmapData;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   
   public class §2"C§ extends BonusCommonModelBase implements IBonusCommonModelBase, IObjectLoadListener
   {
      [Inject]
      public static var §true const function§:TextureMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      private static const §return const for§:Number = 4;
      
      private var §`a§:BattleBonusData;
      
      private var §super const static§:BattleBonusData;
      
      public function §2"C§()
      {
         super();
         _interfaces.push(IModel,IBonusCommonModelBase,IObjectLoadListener);
      }
      
      public function initObject(param1:ClientObject, param2:Long, param3:Long, param4:int, param5:Long, param6:Long, param7:Long, param8:Object) : void
      {
         this.§super const static§ = new BattleBonusData();
         this.§super const static§.boxMesh = this.§6%§(param2);
         this.§super const static§.parachuteOuterMesh = this.§6%§(param6);
         this.§super const static§.parachuteInnerMesh = this.§6%§(param5);
         this.§super const static§.cordsMaterial = §true const function§.getMaterial(ImageResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(param3)).data);
         this.§super const static§.cordsMaterial.resolution = 5;
         if(SoundResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(param7)) != null)
         {
            this.§super const static§.pickupSound = SoundResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(param7)).sound;
         }
         this.§super const static§.lifeTimeMs = param4 * 1000;
         this.§super const static§.attenuationBegin = param8.attenuationBegin;
         this.§super const static§.attenuationEnd = param8.attenuationEnd;
         this.§super const static§.lightIntensity = param8.intensity;
         this.§super const static§.lightColor = param8.lightColor;
      }
      
      public function objectLoaded(param1:ClientObject) : void
      {
      }
      
      public function objectUnloaded(param1:ClientObject) : void
      {
      }
      
      public function §each set null§(param1:String) : Bonus
      {
         var _loc2_:BattleBonus = BattleBonus(battleService.§#!o§().getObject(BattleBonus));
         _loc2_.init(param1,param1,this.§super const static§,battleService);
         return _loc2_;
      }
      
      private function §6%§(param1:Long) : Mesh
      {
         var _loc2_:Tanks3DSResource = Tanks3DSResource(ResourceRegistry(OSGi.getInstance().getService(ResourceRegistry)).getResource(param1));
         var _loc3_:Mesh = Mesh(_loc2_.objects[0]);
         var _loc4_:BitmapData = _loc2_.getTextureForObject(0);
         if(_loc4_ == null)
         {
            _loc4_ = new StubBitmapData(65280);
         }
         var _loc5_:Mesh = Mesh(_loc3_.clone());
         var _loc6_:TextureMaterial = §true const function§.getMaterial(_loc4_);
         _loc6_.resolution = 1;
         _loc5_.setMaterialToAllFaces(_loc6_);
         return _loc5_;
      }
   }
}

