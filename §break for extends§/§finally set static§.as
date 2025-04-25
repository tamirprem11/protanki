package §break for extends§
{
   import §^!S§.§+Y§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.tank.§catch for const§;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.models.weapon.§'!L§;
   import §dynamic package§.§throw const function§;
   
   public class §finally set static§ extends §include for while§ implements §with use§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var §implements throw§:Number;
      
      private var collisionDetector:§throw const function§;
      
      private var §use if§:§+Y§ = new §+Y§();
      
      private var §each const import§:RayHit = new RayHit();
      
      private var §&p§:Vector.<RayHit> = new Vector.<RayHit>();
      
      private var self:ClientObject;
      
      public function §finally set static§(param1:ClientObject, param2:Number)
      {
         this.self = param1;
         super(param2,this.§use if§);
         this.§implements throw§ = param2;
         this.collisionDetector = battleService.§try var final§().§`"N§();
      }
      
      public function §9!1§(param1:§'!L§, param2:Vector3) : Vector.<RayHit>
      {
         this.§use if§.addBody(this.§try set null§(this.self).§<J§());
         this.§&p§.length = 0;
         while(raycast(param1,param2,this.§each const import§))
         {
            this.§&p§.push(this.§each const import§.clone());
            if(this.§each const import§.staticHit)
            {
               break;
            }
            this.§use if§.addBody(this.§each const import§.shape.body);
         }
         this.§use if§.clear();
         return this.§&p§;
      }
      
      private function §try set null§(param1:ClientObject) : Tank
      {
         var _loc2_:§finally const class§ = §catch for const§(OSGi.getInstance().getService(§finally const class§));
         return _loc2_.getTankData(param1).tank;
      }
   }
}

