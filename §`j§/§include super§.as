package §`j§
{
   import §;",§.§6a§;
   import §;",§.§>!8§;
   import §],§.§while var const§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§finally for override§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.§throw set package§;
   import alternativa.tanks.models.battle.battlefield.§69§;
   import alternativa.tanks.models.battle.battlefield.§extends var use§;
   import §include override§.§'1§;
   import §include override§.§catch for catch§;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   
   public class §include super§ extends §'1§ implements §catch for catch§, ObjectLoadPostListener, ObjectUnloadListener, §override const do§, §extends var use§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private var §+F§:Vector.<§throw set package§>;
      
      public function §include super§()
      {
         super();
      }
      
      public function §true const const§() : §69§
      {
         return §69§.TDM;
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost() : void
      {
         this.§+F§ = new Vector.<§throw set package§>();
         var _loc1_:§`"d§ = new §`"d§();
         battleService.§native const package§(_loc1_);
         this.§+F§.push(_loc1_);
         var _loc2_:§return var in§ = new §return var in§();
         battleService.§false for§(_loc2_);
         this.§+F§.push(_loc2_);
         var _loc3_:§return use§ = new §return use§();
         battleService.§try for static§(_loc3_);
         this.§+F§.push(_loc3_);
         var _loc4_:§6a§ = new §6a§();
         battleService.§return var function§(_loc4_);
         this.§+F§.push(_loc4_);
         battleEventDispatcher.§7i§(§finally for override§,this);
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded() : void
      {
         this.§+F§ = null;
         battleService.§native const package§(null);
         battleService.§false for§(null);
         battleService.§try for static§(null);
         battleService.§return var function§(null);
         battleEventDispatcher.§,"7§(§finally for override§,this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:§throw set package§ = null;
         var _loc3_:§while var const§ = §finally for override§(param1).tank.teamType;
         for each(_loc2_ in this.§+F§)
         {
            _loc2_.§with for extends§(_loc3_);
         }
      }
      
      public function §?"e§() : §>!8§
      {
         var _loc1_:§6a§ = new §6a§();
         this.§+F§.push(_loc1_);
         return _loc1_;
      }
   }
}

