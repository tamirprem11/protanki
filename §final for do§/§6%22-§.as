package §final for do§
{
   import §+"O§.§with if§;
   import §8!1§.§%"Y§;
   import §8!1§.§9m§;
   import §9"9§.§!!c§;
   import §9"9§.§15§;
   import §9"9§.§3!x§;
   import §9"9§.§3"B§;
   import §9"9§.§each var if§;
   import §9"9§.§finally const continue§;
   import §9"9§.§if const case§;
   import §9"9§.§native var throw§;
   import §<"N§.§if continue§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§case const var§;
   
   public class §6"-§ extends §case const var§ implements §with if§, §3!x§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private const §null var native§:Number = 100;
      
      private var §const for set§:§if continue§;
      
      private var range:Number;
      
      private var coneAngle:Number;
      
      private var sfxData:§9m§;
      
      private var §+!?§:§%"Y§;
      
      private var §break var with§:§15§;
      
      private var §]""§:§finally const continue§;
      
      private var §else try§:§finally const continue§;
      
      public function §6"-§(param1:§if continue§, param2:Number, param3:Number, param4:§9m§)
      {
         super();
         this.§const for set§ = param1;
         this.range = param2;
         this.coneAngle = param3;
         this.sfxData = param4;
      }
      
      public function §`!w§(param1:Body, param2:Vector3, param3:Object3D) : void
      {
         var _loc4_:§!!c§ = null;
         var _loc5_:§each var if§ = null;
         var _loc6_:Vector3 = null;
         var _loc7_:§each var if§ = null;
         var _loc8_:§native var throw§ = null;
         var _loc9_:§if const case§ = null;
         if(this.§+!?§ == null)
         {
            this.§+!?§ = §%"Y§(this.§const for set§.getObject(§%"Y§));
            this.§+!?§.init(param1,this.range,this.coneAngle,§^"P§.§catch false§,param2,param3,this.sfxData,§try var final§().§`"N§(),§^"P§.§-"_§,§^"P§.§null const override§,§^"P§.§-P§,§^"P§.§continue const use§,§^"P§.§else while§,§^"P§.§9C§);
            battleService.§catch include§().§override for native§(this.§+!?§);
            _loc4_ = §!!c§.create(this.sfxData.§[!V§,§^"P§.§return for package§);
            this.§break var with§ = §15§(this.§const for set§.getObject(§15§));
            this.§break var with§.§import for true§(_loc4_,param3,this);
            §try var final§().§`b§().§return const null§(this.§break var with§);
            this.§]""§ = §finally const continue§(this.§const for set§.getObject(§finally const continue§));
            _loc5_ = §each var if§(this.§const for set§.getObject(§each var if§));
            _loc6_ = new Vector3();
            _loc6_.copy(param2);
            _loc6_.z += this.§null var native§;
            _loc5_.init(param3,param2);
            _loc5_.init(param3,param2,0);
            _loc7_ = §each var if§(this.§const for set§.getObject(§each var if§));
            _loc7_.init(param3,_loc6_);
            _loc7_.init(param3,_loc6_,0);
            this.§]""§.init(_loc7_,this.sfxData.§override for extends§,this.sfxData.§in const in§);
            battleService.§catch include§().§override for native§(this.§]""§);
            this.§else try§ = §finally const continue§(this.§const for set§.getObject(§finally const continue§));
            _loc8_ = §native var throw§(this.§const for set§.getObject(§native var throw§));
            _loc8_.init(param3,param2,§try var final§().§`"N§(),§^"P§.§package while§);
            _loc9_ = §if const case§(this.§const for set§.getObject(§if const case§));
            _loc9_.init(this.§+!?§,_loc8_);
            this.§else try§.init(_loc9_,this.sfxData.§finally class§,this.sfxData.§do const package§);
            battleService.§catch include§().§override for native§(this.§else try§);
         }
      }
      
      public function §dynamic const override§() : void
      {
         if(this.§+!?§ != null)
         {
            this.§+!?§.kill();
            this.§+!?§ = null;
            this.§finally set function§();
            this.§]""§.stop();
            this.§]""§ = null;
            this.§else try§.stop();
            this.§else try§ = null;
         }
      }
      
      private function §finally set function§() : void
      {
         if(this.§break var with§ != null)
         {
            this.§break var with§.kill();
            this.§break var with§ = null;
         }
      }
      
      public function §null const try§(param1:§3"B§) : void
      {
         if(this.§break var with§ == param1)
         {
            this.§break var with§ = null;
         }
      }
   }
}

