package §break for extends§
{
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.osgi.OSGi;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.tank.§finally const class§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.§'"D§;
   
   public class §>"D§ extends §include for while§ implements §with use§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var §implements const each§:§'"D§ = new §'"D§();
      
      private var §each const import§:RayHit = new RayHit();
      
      private var §final for set§:Vector.<RayHit> = new Vector.<RayHit>();
      
      private var self:ClientObject;
      
      public function §>"D§(param1:ClientObject, param2:Number)
      {
         super(param2,this.§implements const each§);
         this.self = param1;
      }
      
      public function §9!1§(param1:§'!L§, param2:Vector3) : Vector.<RayHit>
      {
         this.§implements const each§.§+">§ = this.§try set null§(this.self).§<J§();
         this.§each const import§.clear();
         this.§final for set§.length = 0;
         if(raycast(param1,param2,this.§each const import§))
         {
            this.§final for set§.push(this.§each const import§.clone());
         }
         return this.§final for set§;
      }
      
      private function §try set null§(param1:ClientObject) : Tank
      {
         return §finally const class§(OSGi.getInstance().getService(§finally const class§)).getTankData(param1).tank;
      }
   }
}

