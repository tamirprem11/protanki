package alternativa.tanks.camera
{
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   
   public class §set set dynamic§
   {
      [Inject]
      public static var battleService:BattleService;
      
      public var position:Vector3 = new Vector3();
      
      public var §!R§:Vector3 = new Vector3();
      
      public function §set set dynamic§()
      {
         super();
      }
      
      public function §'![§() : void
      {
         var _loc1_:§for for native§ = battleService.§catch include§().§function var break§();
         this.position.x = _loc1_.x;
         this.position.y = _loc1_.y;
         this.position.z = _loc1_.z;
         this.§!R§.x = _loc1_.rotationX;
         this.§!R§.y = _loc1_.rotationY;
         this.§!R§.z = _loc1_.rotationZ;
      }
   }
}

