package alternativa.tanks.models.battle.gui.chat
{
   import §1J§.§true case§;
   import §3!J§.§@!Z§;
   import §3!J§.§[!=§;
   import §3!J§.§in const dynamic§;
   import §],§.§while var const§;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.model.ShowChat;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.services.battleinput.§null set with§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import controls.chat.BattleChatInput;
   import controls.chat.ChatInputType;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import §override const continue§.§true for import§;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.blockuser.IBlockUserService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.fullscreen.FullscreenService;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.userproperties.IUserPropertiesService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.AlertUtils;
   
   public class §extends var const§ extends Sprite implements ShowChat
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var §0"P§:BattleInputService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var blockUserService:IBlockUserService;
      
      [Inject]
      public static var §+!p§:BattleGUIService;
      
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var userPropertiesService:IUserPropertiesService;
      
      [Inject]
      public static var userInfoService:BattleUserInfoService;
      
      [Inject]
      public static var fullscreenService:FullscreenService;
      
      [Inject]
      public static var §+!x§:TargetingInputManager;
      
      private const §false return§:String = "/block";
      
      private const §8!@§:String = "/unblock";
      
      private const FULL_SCREEN:String = "fullScreen";
      
      private const §switch var final§:String = "fullScreenInteractiveAccepted";
      
      private var §for var§:Object;
      
      private var §finally var include§:§%"O§;
      
      private var §break set function§:Boolean;
      
      private var inputControl:BattleChatInput;
      
      private var input:TextField;
      
      private var output:§@"N§;
      
      private var §override for with§:Boolean;
      
      private var _locked:Boolean;
      
      private var §super for default§:Boolean;
      
      private var §include for false§:§while var const§;
      
      private var §^S§:IGameObject;
      
      public function §extends var const§()
      {
         super();
         this.init();
      }
      
      public function set §;"Z§(param1:Boolean) : void
      {
         if(this.§break set function§ != param1)
         {
            this.§break set function§ = param1;
            if(!this.§override for with§)
            {
               this.output.visible = this.§break set function§;
            }
         }
      }
      
      public function set locked(param1:Boolean) : void
      {
         this._locked = param1;
      }
      
      public function get §;!u§() : Boolean
      {
         return this.§override for with§;
      }
      
      public function §<m§(param1:String, param2:§while var const§, param3:String, param4:Boolean, param5:Boolean) : void
      {
         var _loc6_:String = null;
         if(!param5)
         {
            _loc6_ = param1;
            if(blockUserService.isBlocked(_loc6_))
            {
               return;
            }
         }
         this.output.addLine(param1,param2,param3,param4,param5);
         this.onResize();
      }
      
      public function §package throw§(param1:String) : void
      {
         this.output.§package throw§(param1);
         this.onResize();
      }
      
      public function clear() : void
      {
         this.output.clear();
      }
      
      public function §return const in§() : void
      {
         var _loc1_:§true case§ = null;
         if(!(this.§override for with§ || this._locked))
         {
            this.output.visible = true;
            this.§finally var include§.visible = this.§finally var include§.getText().length > 0;
            if(!battleInfoService.spectator)
            {
               _loc1_ = §true for import§(OSGi.getInstance().getService(§true for import§)).getShortUserInfo(userPropertiesService.userId);
               this.§include for false§ = _loc1_.teamType;
            }
            this.§1<§();
            this.§override for with§ = true;
            this.input.text = "";
            this.inputControl.visible = true;
            display.stage.focus = this.input;
            this.onResize();
            §0"P§.lock(§null set with§.CHAT);
            battleEventDispatcher.dispatchEvent(new §%"U§(§%"U§.OPEN));
            this.§%"7§();
            §+!x§.§set for with§();
         }
      }
      
      public function §extends set do§(param1:IGameObject) : void
      {
         this.§^S§ = param1;
         this.§super for default§ = true;
      }
      
      private function §%"7§() : void
      {
         if(battleInfoService.isSpectatorMode())
         {
            if(this.§super for default§)
            {
               this.inputControl.setInputType(ChatInputType.YELLOW);
               this.inputControl.setChannelText(localeService.getText(TanksLocale.TEXT_CHAT_LABEL_SPECTATORS));
            }
            else
            {
               this.inputControl.setInputType(ChatInputType.STANDART);
               this.inputControl.setChannelText(localeService.getText(TanksLocale.TEXT_CHAT_LABEL_ALL));
            }
            return;
         }
         if(this.§super for default§ && this.§include for false§ != §while var const§.NONE)
         {
            if(this.§include for false§ == §while var const§.BLUE)
            {
               this.inputControl.setInputType(ChatInputType.BLUE);
            }
            else
            {
               this.inputControl.setInputType(ChatInputType.RED);
            }
            this.inputControl.setChannelText(localeService.getText(TanksLocale.TEXT_CHAT_LABEL_TEAM));
         }
         else
         {
            this.inputControl.setInputType(ChatInputType.STANDART);
            this.inputControl.setChannelText(localeService.getText(TanksLocale.TEXT_CHAT_LABEL_ALL));
         }
      }
      
      private function §static for use§() : void
      {
         this.§super for default§ = !this.§super for default§;
         this.§%"7§();
      }
      
      public function §8"c§() : void
      {
         if(this.§override for with§)
         {
            this.output.visible = this.§break set function§;
            this.§finally var include§.visible = false;
            this.§finally var include§.setText("");
            if(this.inputControl.visible)
            {
               this.removeEventListeners();
               this.§override for with§ = false;
               this.inputControl.visible = false;
               this.§<!l§();
               this.output.§static while§();
               this.onResize();
            }
            §0"P§.unlock(§null set with§.CHAT);
            battleEventDispatcher.dispatchEvent(new §%"U§(§%"U§.CLOSE));
            §+!x§.§@![§();
         }
      }
      
      private function init() : void
      {
         this.inputControl = new BattleChatInput();
         this.inputControl.tabEnabled = false;
         this.inputControl.tabChildren = false;
         this.inputControl.x = 10;
         addChild(this.inputControl);
         this.input = this.inputControl.textField;
         this.input.maxChars = 299;
         this.input.addEventListener(KeyboardEvent.KEY_UP,this.onInputKeyUp);
         this.input.addEventListener(FocusEvent.FOCUS_IN,this.§-j§);
         this.output = new §@"N§();
         this.output.visible = this.§break set function§;
         this.output.tabEnabled = false;
         this.output.tabChildren = false;
         this.output.x = 10;
         addChild(this.output);
         this.§finally var include§ = new §%"O§();
         this.§finally var include§.x = 10;
         this.§finally var include§.visible = false;
         addChild(this.§finally var include§);
         this.§package for super§();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
      }
      
      private function §package for super§() : void
      {
         this.§for var§ = {};
         this.§for var§[this.§false return§] = new §[!=§(this.output);
         this.§for var§[this.§8!@§] = new §@!Z§(this.output);
      }
      
      public function §-!'§(param1:String) : void
      {
         this.§finally var include§.setText(param1);
      }
      
      [Obfuscation(rename="false")]
      public function setShowChat(param1:Boolean) : void
      {
         this.§;"Z§ = param1;
      }
      
      private function §1<§() : void
      {
         this.input.addEventListener(FocusEvent.FOCUS_OUT,this.§continue true§);
         if(fullscreenService.isAvailable())
         {
            display.stage.addEventListener(this.FULL_SCREEN,this.onFullscreen);
            display.stage.addEventListener(this.§switch var final§,this.onFullscreen);
         }
      }
      
      private function removeEventListeners() : void
      {
         this.input.removeEventListener(FocusEvent.FOCUS_OUT,this.§continue true§);
         if(fullscreenService.isAvailable())
         {
            display.stage.removeEventListener(this.FULL_SCREEN,this.onFullscreen);
            display.stage.removeEventListener(this.§switch var final§,this.onFullscreen);
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.inputControl.visible = false;
         stage.addEventListener(Event.RESIZE,this.onResize);
         this.onResize(null);
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         stage.removeEventListener(Event.RESIZE,this.onResize);
      }
      
      private function onResize(param1:Event = null) : void
      {
         var _loc2_:Number = NaN;
         if(this.§override for with§)
         {
            this.output.§9";§();
         }
         var _loc3_:int = int(0.25 * display.stage.stageWidth);
         var _loc4_:int = §+!p§.§throw import§();
         if(_loc4_ != 0 && this.inputControl.x + _loc3_ + 10 > _loc4_)
         {
            _loc3_ = _loc4_ - this.inputControl.x - 10;
         }
         this.inputControl.width = _loc3_;
         this.inputControl.y = display.stage.stageHeight - this.inputControl.height - 70;
         _loc2_ = this.inputControl.y - this.output.height - 10;
         if(_loc2_ < 50)
         {
            while(_loc2_ < 50)
            {
               _loc2_ += this.output.height;
               this.output.§throw for super§();
               _loc2_ -= this.output.height;
            }
         }
         this.output.y = _loc2_;
         this.§finally var include§.§var for for§(0.25 * display.stage.stageWidth);
         this.§finally var include§.y = _loc2_ - 120;
         if(this.§override for with§)
         {
            this.§%"7§();
         }
      }
      
      private function onInputKeyUp(param1:KeyboardEvent) : void
      {
         if(this.inputControl.visible)
         {
            if(param1.keyCode == Keyboard.ENTER)
            {
               if(this.input.text != "")
               {
                  if(!this.§finally const default§(this.input.text) && hasEventListener(§get for try§.SEND_MESSAGE))
                  {
                     dispatchEvent(new §get for try§(§get for try§.SEND_MESSAGE,this.input.text,this.§super for default§));
                  }
                  this.input.text = "";
               }
               param1.keyCode = 0;
               this.§8"c§();
            }
            if(AlertUtils.isCancelKey(param1.keyCode))
            {
               param1.keyCode = 0;
               this.§8"c§();
            }
            if(param1.keyCode == Keyboard.TAB)
            {
               this.§static for use§();
            }
         }
      }
      
      private function §finally const default§(param1:String) : Boolean
      {
         if(param1.charAt(0) != "/")
         {
            return false;
         }
         var _loc2_:Array = param1.split(/\s+/);
         if(_loc2_.length == 0)
         {
            return false;
         }
         var _loc3_:String = _loc2_.shift();
         var _loc4_:§in const dynamic§ = this.§for var§[_loc3_];
         if(_loc4_ == null)
         {
            return false;
         }
         _loc4_.§finally const default§(_loc2_);
         return true;
      }
      
      private function §-j§(param1:FocusEvent) : void
      {
         if(!this.§override for with§)
         {
            this.§<!l§();
         }
      }
      
      private function §continue true§(param1:FocusEvent) : void
      {
         if(stage && this.input && this.inputControl && this.inputControl.visible)
         {
            stage.focus = this.input;
         }
         else
         {
            this.§8"c§();
         }
      }
      
      private function onFullscreen(param1:Event) : void
      {
         if(this.§override for with§)
         {
            stage.focus = this.input;
         }
      }
      
      private function §<!l§() : void
      {
         if(display.stage.focus == this.input)
         {
            display.stage.focus = null;
         }
      }
   }
}

