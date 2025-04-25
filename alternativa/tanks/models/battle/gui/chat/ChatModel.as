package alternativa.tanks.models.battle.gui.chat
{
   import §],§.§while var const§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.model.ChatSettingsTracker;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import §case var get§.ChatModelBase;
   import §case var get§.IChatModelBase;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   
   public class ChatModel extends ChatModelBase implements IChatModelBase, §return const true§, ObjectLoadListener, ObjectUnloadListener
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var §+!p§:BattleGUIService;
      
      private var §+!1§:§extends var const§;
      
      private var §default const with§:String;
      
      private var §default const break§:§?!p§;
      
      private var §4w§:ChatSettingsTracker;
      
      public function ChatModel()
      {
         super();
         this.§+!1§ = new §extends var const§();
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded() : void
      {
         this.§+!1§.clear();
         this.§+!1§.locked = false;
         this.§+!1§.addEventListener(§get for try§.SEND_MESSAGE,this.§true package§);
         §+!p§.§2K§().addChild(this.§+!1§);
         display.stage.addEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
         this.§default const with§ = "";
         this.§default const break§ = new §?!p§(this.§+!1§);
         this.§4w§ = new ChatSettingsTracker(this.§+!1§);
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded() : void
      {
         this.§+!1§.removeEventListener(§get for try§.SEND_MESSAGE,this.§true package§);
         this.§+!1§.clear();
         if(this.§+!1§.parent != null)
         {
            this.§+!1§.parent.removeChild(this.§+!1§);
         }
         this.§default const break§.close();
         this.§4w§.close();
         display.stage.removeEventListener(KeyboardEvent.KEY_UP,this.onKeyUp);
      }
      
      [Obfuscation(rename="false")]
      public function addMessage(param1:String, param2:String, param3:§while var const§) : void
      {
         this.§static override§(param1,param2,param3);
      }
      
      [Obfuscation(rename="false")]
      public function §get var super§(param1:String, param2:String, param3:§while var const§) : void
      {
         this.§static override§(param1,param2,param3,true);
      }
      
      private function §static override§(param1:String, param2:String, param3:§while var const§, param4:Boolean = false) : void
      {
         var _loc5_:* = param1 == null;
         this.§+!1§.§<m§(param1,param3,param2 + "\n",param4,_loc5_);
      }
      
      [Obfuscation(rename="false")]
      public function §["'§(param1:String, param2:String) : void
      {
         this.§+!1§.§<m§(null,§while var const§.NONE,param2 + "\n",true,true);
      }
      
      [Obfuscation(rename="false")]
      public function §package throw§(param1:String) : void
      {
         this.§+!1§.§package throw§(param1);
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            if(battleInfoService.isSpectatorMode())
            {
               this.§+!1§.§-!'§(this.§default const with§);
            }
            this.§+!1§.§return const in§();
         }
      }
      
      private function §true package§(param1:§get for try§) : void
      {
         server.sendMessage(param1.message,param1.§case case§);
      }
      
      [Obfuscation(rename="false")]
      public function §%!v§(param1:String) : void
      {
         this.§default const with§ = param1;
      }
      
      public function §package for dynamic§() : §extends var const§
      {
         return this.§+!1§;
      }
   }
}

