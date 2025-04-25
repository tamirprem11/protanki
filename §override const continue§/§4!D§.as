package §override const continue§
{
   import §1"O§.§'I§;
   import §1"O§.§break extends§;
   import §1"O§.§var set static§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import platform.client.fp10.core.type.AutoClosable;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §4!D§ implements AutoClosable, §override const do§
   {
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      private var §get var dynamic§:IGameObject;
      
      private var §+";§:String;
      
      private var §?e§:String;
      
      private var §&!Z§:String;
      
      public function §4!D§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.§+";§ = localeService.getText(TanksLocale.TEXT_BATTLE_PLAYER_SUICIDED);
         this.§?e§ = localeService.getText(TanksLocale.TEXT_BATTLE_PLAYER_KILLED);
         this.§&!Z§ = localeService.getText(TanksLocale.TEXT_REARM_BATTLE_EVENT);
         battleEventDispatcher.§7i§(§var set static§,this);
         battleEventDispatcher.§7i§(§'I§,this);
         battleEventDispatcher.§7i§(§break extends§,this);
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         var _loc2_:§var set static§ = null;
         var _loc3_:§'I§ = null;
         var _loc4_:§break extends§ = null;
         var _loc5_:§#"K§ = §#"K§(OSGi.getInstance().getService(§#"K§));
         if(param1 is §var set static§)
         {
            _loc2_ = §var set static§(param1);
            if(_loc2_.§7"L§ != _loc2_.§1l§)
            {
               _loc5_.logUserAction(_loc2_.§7"L§,this.§?e§,_loc2_.§1l§);
            }
            else
            {
               _loc5_.logUserAction(_loc2_.§1l§,this.§+";§,null);
            }
         }
         else if(param1 is §'I§)
         {
            _loc3_ = §'I§(param1);
            _loc5_.logUserAction(_loc3_.§native const final§.id,this.§+";§,null);
         }
         else if(param1 is §break extends§)
         {
            _loc4_ = §break extends§(param1);
            _loc5_.§-"W§(_loc4_.userId,this.§&!Z§);
         }
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         this.§get var dynamic§ = null;
         battleEventDispatcher.§,"7§(§var set static§,this);
         battleEventDispatcher.§,"7§(§'I§,this);
         battleEventDispatcher.§,"7§(§break extends§,this);
      }
   }
}

