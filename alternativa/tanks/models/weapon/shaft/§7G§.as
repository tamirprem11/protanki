package alternativa.tanks.models.weapon.shaft
{
   import §9"9§.§!!c§;
   import §9"9§.§'!q§;
   import §9"9§.§15§;
   import §9"9§.§8"F§;
   import §9"9§.§break use§;
   import §9"9§.§each var if§;
   import §9"9§.§return var include§;
   import §<"N§.§if continue§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import flash.media.SoundChannel;
   import §switch var switch§.§-i§;
   import §switch var switch§.§6!-§;
   import §switch var switch§.§final set false§;
   
   public class §7G§
   {
      public static const §&0§:Number = 200;
      
      public static const §implements for return§:Number = 200;
      
      private static const §#"E§:Number = 110;
      
      private static const §do finally§:Number = 0.4;
      
      private static const §function set final§:Number = 0.8;
      
      private static const §7"$§:Number = 0.35;
      
      private static const §"";§:int = 1000;
      
      private static const §?"K§:Vector3 = new Vector3();
      
      private static const §dynamic for continue§:int = 300;
      
      private var sfxData:§9!R§;
      
      private var battleService:BattleService;
      
      private var §get for override§:SoundChannel;
      
      private var §case const break§:§15§;
      
      public function §7G§(param1:§9!R§, param2:BattleService)
      {
         super();
         this.sfxData = param1;
         this.battleService = param2;
      }
      
      public function §false set finally§(param1:Boolean) : void
      {
         if(param1)
         {
            if(this.§get for override§ == null)
            {
               this.§get for override§ = this.battleService.§use const return§.§const set const§(this.sfxData.targetingSound,0,9999);
            }
         }
         else if(this.§get for override§ != null)
         {
            this.battleService.§use const return§.§9^§(this.§get for override§);
            this.§get for override§ = null;
         }
      }
      
      public function §return for final§(param1:Object3D) : void
      {
         var _loc2_:§!!c§ = null;
         if(this.§case const break§ == null)
         {
            this.§case const break§ = §15§(this.battleService.§#!o§().getObject(§15§));
            _loc2_ = §!!c§.create(this.sfxData.zoomModeSound,§7"$§);
            this.§case const break§.init(_loc2_,param1,0,9999);
            this.battleService.§!O§(this.§case const break§);
         }
      }
      
      public function §return const while§() : void
      {
         if(this.§case const break§ != null)
         {
            this.§case const break§.kill();
            this.§case const break§ = null;
         }
      }
      
      public function §super const override§() : void
      {
         if(this.§case const break§ != null)
         {
            this.§case const break§.§default for while§(§"";§);
         }
      }
      
      public function §import null§(param1:Vector3) : void
      {
         var _loc2_:§!!c§ = §!!c§.create(this.sfxData.shotSound,§do finally§);
         var _loc3_:§8"F§ = §8"F§.create(param1,_loc2_);
         this.battleService.§!O§(_loc3_);
      }
      
      public function §do var function§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:§if continue§ = this.battleService.§#!o§();
         var _loc4_:§each var if§ = §each var if§(_loc3_.getObject(§each var if§));
         _loc4_.init(param2,param1,10);
         var _loc5_:§'!q§ = §'!q§(_loc3_.getObject(§'!q§));
         _loc5_.init(§&0§,§&0§,this.sfxData.§continue try§,0,_loc4_);
         this.battleService.§override for native§(_loc5_);
         this.§,!h§(param1,param2);
      }
      
      public function §,!h§(param1:Vector3, param2:Object3D) : void
      {
         var _loc3_:§break use§ = §break use§(this.battleService.§#!o§().getObject(§break use§));
         var _loc4_:§each var if§ = §each var if§(this.battleService.§#!o§().getObject(§each var if§));
         _loc4_.init(param2,param1);
         _loc3_.init(_loc4_,this.sfxData.§while const default§);
         this.battleService.§override for native§(_loc3_);
      }
      
      public function §'!f§(param1:Vector3, param2:Vector3, param3:Vector3, param4:Vector3, param5:Vector3) : void
      {
         if(param1 != null)
         {
            this.§native var continue§(param1,param3,param4,param5,false);
         }
         if(param2 != null)
         {
            this.§native var continue§(param2,param3,param4,param5,true);
         }
      }
      
      private function §native var continue§(param1:Vector3, param2:Vector3, param3:Vector3, param4:Vector3, param5:Boolean) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = this.sfxData.§for if§;
         §?"K§.diff(param1,param2);
         if(§?"K§.dot(param3) > 0)
         {
            _loc6_ = §?"K§.length();
            if(_loc6_ > _loc7_)
            {
               _loc6_ = _loc7_;
            }
            this.§native var final§(§-i§,param1,param4,_loc6_,_loc6_ / _loc7_);
            if(param5)
            {
               this.§native var final§(§final set false§,param1,param4,_loc6_,0.5);
            }
         }
         this.§+!-§(param1);
         this.§default throw§(param1);
      }
      
      private function §+!-§(param1:Vector3) : void
      {
         var _loc2_:§return var include§ = §return var include§(this.battleService.§#!o§().getObject(§return var include§));
         _loc2_.init(param1,§#"E§);
         var _loc3_:§'!q§ = §'!q§(this.battleService.§#!o§().getObject(§'!q§));
         _loc3_.init(§implements for return§,2.5 * §implements for return§,this.sfxData.§,_§,0,_loc2_);
         this.battleService.§override for native§(_loc3_);
         this.§@!b§(param1);
      }
      
      private function §@!b§(param1:Vector3) : void
      {
         var _loc2_:§break use§ = §break use§(this.battleService.§#!o§().getObject(§break use§));
         var _loc3_:§return var include§ = §return var include§(this.battleService.§#!o§().getObject(§return var include§));
         _loc3_.init(param1,§#"E§);
         _loc2_.init(_loc3_,this.sfxData.§class for use§);
         this.battleService.§override for native§(_loc2_);
      }
      
      private function §default throw§(param1:Vector3) : void
      {
         var _loc2_:§!!c§ = §!!c§.create(this.sfxData.explosionSound,§function set final§);
         var _loc3_:§8"F§ = §8"F§(this.battleService.§#!o§().getObject(§8"F§));
         _loc3_.init(param1,_loc2_,100);
         this.battleService.§!O§(_loc3_);
      }
      
      private function §native var final§(param1:Class, param2:Vector3, param3:Vector3, param4:Number, param5:Number) : void
      {
         var _loc6_:§6!-§ = §6!-§(this.battleService.§#!o§().getObject(param1));
         _loc6_.init(param2,param3,param4,param5,this.sfxData.§7"^§,§dynamic for continue§);
         this.battleService.§override for native§(_loc6_);
      }
      
      public function destroy() : void
      {
         if(this.§get for override§ != null)
         {
            this.battleService.§use const return§.§9^§(this.§get for override§);
            this.§get for override§ = null;
         }
         this.§return const while§();
      }
      
      public function §'!1§(param1:Vector3, param2:Vector3) : void
      {
         if(param2 != null)
         {
            this.battleService.§catch include§().addDecal(param2,param1,50,this.sfxData.§try for const§);
         }
      }
   }
}

