package §var for var§
{
   import §9"9§.§!!c§;
   import §9"9§.§'!q§;
   import §9"9§.§8"F§;
   import §9"9§.§break use§;
   import §9"9§.§each var if§;
   import §9"9§.§extends var if§;
   import §9"9§.§return var include§;
   import §<"N§.§if continue§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.models.weapon.smoky.§&"I§;
   import alternativa.tanks.models.weapon.smoky.§1"§;
   import §class const catch§.§6!X§;
   import flash.display.BlendMode;
   
   public class §""R§ implements §&"I§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var §use const return§:§6!X§;
      
      private var §const for set§:§if continue§;
      
      private var sfxData:§function set static§;
      
      public function §""R§(param1:§6!X§, param2:§if continue§, param3:§function set static§)
      {
         super();
         this.§use const return§ = param1;
         this.§const for set§ = param2;
         this.sfxData = param3;
      }
      
      public function §"h§(param1:Vector3, param2:Object3D) : void
      {
         this.§import null§(param2);
         this.§do var function§(param1,param2);
         this.§class var else§(param1,param2);
      }
      
      private function §import null§(param1:Object3D) : void
      {
         var _loc2_:§!!c§ = §!!c§.create(this.sfxData.shotSound,§1"§.§do finally§);
         this.§use const return§.§return const null§(§8"F§.create(new Vector3(param1.x,param1.y,param1.z),_loc2_));
      }
      
      private function §do var function§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:§extends var if§ = §extends var if§(this.§const for set§.getObject(§extends var if§));
         _loc3_.init(param1,param2,this.sfxData.§catch var implements§,§1"§.§extends var break§,§1"§.§-"_§,§1"§.§null const override§);
         battleService.§catch include§().§override for native§(_loc3_);
      }
      
      private function §class var else§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:§break use§ = §break use§(this.§const for set§.getObject(§break use§));
         var _loc4_:§each var if§ = §each var if§(this.§const for set§.getObject(§each var if§));
         _loc4_.init(param2,param1);
         _loc3_.init(_loc4_,this.sfxData.§while const default§);
         battleService.§catch include§().§override for native§(_loc3_);
      }
      
      public function §finally break§(param1:Vector3) : void
      {
         this.§default throw§(param1);
         this.§+!-§(param1);
         this.§@!b§(param1);
      }
      
      private function §@!b§(param1:Vector3) : void
      {
         var _loc2_:§break use§ = §break use§(this.§const for set§.getObject(§break use§));
         var _loc3_:§return var include§ = §return var include§(this.§const for set§.getObject(§return var include§));
         _loc3_.init(param1,§1"§.§#"E§);
         _loc2_.init(_loc3_,this.sfxData.§class for use§);
         battleService.§catch include§().§override for native§(_loc2_);
      }
      
      private function §default throw§(param1:Vector3) : void
      {
         var _loc2_:§!!c§ = §!!c§.create(this.sfxData.explosionSound,1);
         this.§use const return§.§return const null§(§8"F§.create(param1,_loc2_,§1"§.§default const implements§));
      }
      
      private function §+!-§(param1:Vector3) : void
      {
         var _loc2_:§return var include§ = §return var include§(this.§const for set§.getObject(§return var include§));
         _loc2_.init(param1,§1"§.§#"E§);
         var _loc3_:§'!q§ = §'!q§(this.§const for set§.getObject(§'!q§));
         _loc3_.init(this.sfxData.explosionSize,this.sfxData.explosionSize,this.sfxData.§,_§,0,_loc2_);
         battleService.§catch include§().§override for native§(_loc3_);
      }
      
      public function §each const each§(param1:Vector3, param2:Vector3) : void
      {
         battleService.§catch include§().addDecal(param2,param1,§1"§.§include default§,this.sfxData.§%"f§);
      }
      
      public function §>"+§(param1:Vector3) : void
      {
         var _loc2_:§return var include§ = §return var include§(this.§const for set§.getObject(§return var include§));
         _loc2_.init(param1,§1"§.§#"E§ + 50);
         var _loc3_:§'!q§ = §'!q§(this.§const for set§.getObject(§'!q§));
         _loc3_.§use set get§(this.sfxData.criticalHitSize,this.sfxData.criticalHitSize,this.sfxData.§>!"§,0,_loc2_,0.5,0.5,null,70,BlendMode.NORMAL,2);
         battleService.§catch include§().§override for native§(_loc3_);
      }
   }
}

