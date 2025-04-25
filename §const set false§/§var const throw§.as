package §const set false§
{
   import alternativa.math.Vector3;
   import alternativa.tanks.models.weapon.shaft.§implements final§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import §for const get§.§-!$§;
   import §for const get§.§2t§;
   
   public class §var const throw§ extends §class var null§
   {
      [Inject]
      public static var §get for function§:TargetingInputManager;
      
      [Inject]
      public static var §2!a§:TargetingModeService;
      
      private var §class var default§:Boolean = false;
      
      private var §implements set final§:§2t§;
      
      private var §-!_§:§5!5§;
      
      private var §native for return§:Vector3 = new Vector3();
      
      private var §native const false§:§implements final§;
      
      private var §,U§:§-!$§;
      
      private var §?"^§:§?!-§;
      
      public function §var const throw§(param1:§+"3§, param2:§implements final§, param3:Number)
      {
         super(param1);
         this.§implements set final§ = new §2t§(param1,param3);
         this.§,U§ = new §-!$§(param1);
         this.§-!_§ = new §5!5§(param2);
         this.§native const false§ = param2;
      }
      
      public function §6!w§() : void
      {
         var _loc1_:int = 0;
         if(!this.§class var default§)
         {
            this.§class var default§ = true;
            _loc1_ = §2!a§.§-!!§();
            §2!a§.§for set use§();
            switch(_loc1_)
            {
               case §var var implements§.§]!+§:
                  changeState(this.§implements set final§);
                  this.§?"^§ = this.§implements set final§;
                  break;
               case §var var implements§.§7!'§:
                  changeState(this.§,U§);
                  this.§?"^§ = this.§,U§;
            }
         }
      }
      
      public function §=!Y§() : void
      {
         if(this.§class var default§)
         {
            this.§class var default§ = false;
            §2!a§.§0x§();
            changeState(§?h§(§2!a§.§-!!§()));
         }
      }
      
      public function §import get§() : void
      {
         §in set finally§();
      }
      
      override public function tick(param1:Number) : void
      {
         super.tick(param1);
         if(this.§class var default§)
         {
            this.§?"^§.§extends const with§(this.§native for return§);
            this.§-!_§.update(this.§native for return§);
         }
      }
      
      public function §try const extends§(param1:Number) : void
      {
         this.§implements set final§.§try const extends§(param1);
      }
      
      public function §extends const with§(param1:Vector3) : void
      {
         this.§?"^§.§extends const with§(param1);
      }
      
      public function §1!K§() : §implements final§
      {
         return this.§native const false§;
      }
   }
}

