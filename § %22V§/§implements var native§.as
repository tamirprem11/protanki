package § "V§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import §?C§.§dynamic for throw§;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§get var throw§;
   import alternativa.tanks.models.weapon.shared.§override for class§;
   
   public class §implements var native§ extends §super for static§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var states:Vector.<§dynamic for throw§> = new Vector.<§dynamic for throw§>();
      
      private var §true var use§:Vector3 = new Vector3();
      
      private var §return for get§:Vector3 = new Vector3();
      
      private var §8!j§:Vector3 = new Vector3();
      
      private var §class try§:Vector3 = new Vector3();
      
      private var §while for final§:int;
      
      private var startTime:int;
      
      private var §dynamic var catch§:int;
      
      private var §super var implements§:Boolean;
      
      public function §implements var native§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function §3!]§() : Vector3
      {
         return this.§true var use§;
      }
      
      public function §7v§() : Vector3
      {
         return this.§return for get§;
      }
      
      public function §5!4§() : int
      {
         return this.§dynamic var catch§;
      }
      
      public function §else const§() : int
      {
         return battleService.§try var final§().§catch static§() + §get var throw§.§ h§ - this.startTime - this.§dynamic var catch§;
      }
      
      public function start(param1:Vector3, param2:Vector3) : void
      {
         this.states.length = 0;
         this.§true var use§.copy(param1);
         this.§return for get§.copy(param2);
         this.startTime = battleService.§try var final§().§catch static§();
         this.§dynamic var catch§ = 0;
         this.§super var implements§ = true;
      }
      
      public function updateState(param1:Vector3, param2:Vector3, param3:int = 666666) : void
      {
         if(§override for class§.§[c§(this.§true var use§,param1))
         {
            this.§override const try§();
         }
         this.§8!j§.copy(param1);
         this.§class try§.copy(param2);
         this.§while for final§ = battleService.§try var final§().§catch static§() + Math.min(param3,§get var throw§.§ h§) - this.startTime;
         this.§super var implements§ = false;
      }
      
      public function §@J§() : Vector.<§dynamic for throw§>
      {
         this.§override const try§();
         return this.states;
      }
      
      public function §override const try§() : void
      {
         if(!this.§super var implements§)
         {
            this.states.push(new §dynamic for throw§(this.§while for final§,this.§class try§.toVector3d(),this.§8!j§.toVector3d()));
            this.§dynamic var catch§ = this.§while for final§;
            this.§true var use§.copy(this.§8!j§);
            this.§return for get§.copy(this.§class try§);
            this.§super var implements§ = true;
         }
      }
      
      public function destroy() : void
      {
         this.states.length = 0;
         recycle();
      }
   }
}

