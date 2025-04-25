package §break for extends§
{
   import alternativa.math.Vector3;
   import alternativa.physics.collision.IRayCollisionFilter;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.shared.§override for class§;
   import §dynamic package§.§]"P§;
   import §dynamic package§.§throw const function§;
   
   public class §include for while§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private const §&!D§:Number = 0.9999;
      
      private var collisionDetector:§throw const function§;
      
      private var §implements throw§:Number;
      
      private var filter:IRayCollisionFilter;
      
      private var §`Y§:Boolean = false;
      
      public function §include for while§(param1:Number, param2:IRayCollisionFilter)
      {
         super();
         this.§implements throw§ = param1;
         this.filter = param2;
         this.collisionDetector = battleService.§try var final§().§`"N§();
      }
      
      public function §else var implements§() : void
      {
         this.§`Y§ = true;
      }
      
      protected function raycast(param1:§'!L§, param2:Vector3, param3:RayHit) : Boolean
      {
         var _loc4_:Vector3 = null;
         if(!this.§`Y§ || param2.dot(param1.direction) > this.§&!D§)
         {
            _loc4_ = param1.§#!!§;
         }
         else
         {
            _loc4_ = param1.§for const for§;
         }
         if(this.collisionDetector.raycast(_loc4_,param2,§]"P§.WEAPON,this.§implements throw§,this.filter,param3))
         {
            param3.staticHit = !§#",§.§extends for use§(param3.shape.body) || §override for class§.§[c§(_loc4_,param3.position);
            return true;
         }
         return false;
      }
   }
}

