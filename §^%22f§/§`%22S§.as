package §^"f§
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
   import §9"9§.§native var throw§;
   import §<"N§.§if continue§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.§case const var§;
   
   public class §`"S§ extends §case const var§ implements §with if§, §3!x§
   {
      private var §const for set§:§if continue§;
      
      private var range:Number;
      
      private var coneAngle:Number;
      
      private var sfxData:§9m§;
      
      private var §+!?§:§%"Y§;
      
      private var §break var with§:§15§;
      
      private var §]""§:§finally const continue§;
      
      private var §else try§:§finally const continue§;
      
      public function §`"S§(param1:§if continue§, param2:Number, param3:Number, param4:§9m§)
      {
         super();
         this.§const for set§ = param1;
         this.range = param2;
         this.coneAngle = param3;
         this.sfxData = param4;
      }
      
      public function §`!w§(param1:Body, param2:Vector3, param3:Object3D) : void
      {
         if(this.§+!?§ == null)
         {
            this.§#!+§(param1,param2,param3);
            this.§import for break§(param3);
            this.§try var return§(param2,param3);
         }
      }
      
      public function §try var return§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:§each var if§ = null;
         var _loc4_:§native var throw§ = null;
         if(this.§]""§ == null)
         {
            this.§]""§ = §finally const continue§(this.§const for set§.getObject(§finally const continue§));
            _loc3_ = §each var if§(this.§const for set§.getObject(§each var if§));
            _loc3_.init(param2,param1);
            this.§]""§.init(_loc3_,this.sfxData.§override for extends§,this.sfxData.§in const in§);
            battleService.§catch include§().§override for native§(this.§]""§);
         }
         if(this.§else try§ == null)
         {
            this.§else try§ = §finally const continue§(this.§const for set§.getObject(§finally const continue§));
            _loc4_ = §native var throw§(this.§const for set§.getObject(§native var throw§));
            _loc4_.init(param2,param1,§try var final§().§`"N§(),§1!H§.§package while§);
            this.§else try§.init(_loc4_,this.sfxData.§finally class§,this.sfxData.§do const package§);
            battleService.§catch include§().§override for native§(this.§else try§);
         }
      }
      
      private function §#!+§(param1:Body, param2:Vector3, param3:Object3D) : void
      {
         this.§+!?§ = §%"Y§(this.§const for set§.getObject(§%"Y§));
         this.§+!?§.init(param1,this.range,this.coneAngle,§1!H§.§catch false§,param2,param3,this.sfxData,§try var final§().§`"N§(),§1!H§.§-"_§,§1!H§.§null const override§,§1!H§.§-P§,§1!H§.§continue const use§,§1!H§.§try for switch§,§1!H§.§&k§);
         battleService.§catch include§().§override for native§(this.§+!?§);
      }
      
      private function §import for break§(param1:Object3D) : void
      {
         var _loc2_:§!!c§ = §!!c§.create(this.sfxData.§[!V§,§1!H§.§return for package§);
         this.§break var with§ = §15§(this.§const for set§.getObject(§15§));
         this.§break var with§.§import for true§(_loc2_,param1,this);
         §try var final§().§`b§().§return const null§(this.§break var with§);
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

