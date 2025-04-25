package §dynamic var else§
{
   import §!"]§.§%!l§;
   import §!4§.§include true§;
   import §1J§.§1""§;
   import §],§.§while var const§;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.utils.removeDisplayObject;
   import controls.Label;
   import controls.RedButton;
   import controls.buttons.h30px.GreenMediumButton;
   import controls.resultassets.ResultWindowGray;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §>S§ extends Sprite
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var §get for function§:TargetingInputManager;
      
      private var §override include§:§static for continue§;
      
      private var §for const break§:§static for continue§;
      
      private var §else set dynamic§:§static for continue§;
      
      private var §with const false§:Sprite;
      
      private var §7V§:RedButton;
      
      private var §return while§:GreenMediumButton;
      
      private var §override while§:ResultWindowGray;
      
      private var §]!k§:Boolean;
      
      private var §true break§:Label;
      
      private var §override var include§:§%!l§;
      
      private var §5!!§:§6#§;
      
      public function §>S§(param1:String, param2:Boolean)
      {
         super();
         this.§]!k§ = param2;
         visible = false;
         this.§5!!§ = new §6#§(param1);
      }
      
      public function §7!@§(param1:Boolean, param2:Boolean, param3:String, param4:Vector.<§1""§>, param5:Boolean, param6:int) : void
      {
         if(!visible)
         {
            this.§else set dynamic§ = this.§3K§(§static for continue§.GREEN,param3,param4,param5,§while var const§.NONE,param2);
            addChild(this.§else set dynamic§);
            this.§#l§(param1,param6);
         }
      }
      
      public function §do case§(param1:Boolean, param2:String, param3:Vector.<§1""§>, param4:Vector.<§1""§>, param5:Boolean, param6:int, param7:§while var const§) : void
      {
         if(!visible)
         {
            this.§override include§ = this.§3K§(§static for continue§.RED,param2,param3,param5,param7,true);
            addChild(this.§override include§);
            this.§for const break§ = this.§3K§(§static for continue§.BLUE,param2,param4,param5,param7,true);
            addChild(this.§for const break§);
            this.§#l§(param1,param6);
         }
      }
      
      private function §3K§(param1:int, param2:String, param3:Vector.<§1""§>, param4:Boolean, param5:§while var const§, param6:Boolean) : §static for continue§
      {
         var _loc7_:§static for continue§ = new §static for continue§(param1,param2,param4,param5,param6);
         _loc7_.§]?§(param3);
         return _loc7_;
      }
      
      private function §#l§(param1:Boolean, param2:int) : void
      {
         §get for function§.§in const function§();
         visible = true;
         addChild(this.§5!!§);
         this.§#=§(param1,param2);
         display.stage.addEventListener(Event.RESIZE,this.onResize);
         this.onResize();
      }
      
      public function hide() : void
      {
         if(!visible)
         {
            return;
         }
         visible = false;
         display.stage.removeEventListener(Event.RESIZE,this.onResize);
         removeChild(this.§5!!§);
         removeDisplayObject(this.§for const break§);
         this.§for const break§ = null;
         removeDisplayObject(this.§override include§);
         this.§override include§ = null;
         removeDisplayObject(this.§else set dynamic§);
         this.§else set dynamic§ = null;
         if(this.§7V§ != null)
         {
            this.§7V§.removeEventListener(MouseEvent.CLICK,this.§#"C§);
            this.§7V§ = null;
         }
         if(this.§return while§ != null)
         {
            this.§return while§.removeEventListener(MouseEvent.CLICK,this.§do var finally§);
            this.§return while§ = null;
         }
         removeDisplayObject(this.§with const false§);
         this.§with const false§ = null;
         §get for function§.§@![§();
      }
      
      private function onResize(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         var _loc5_:§static for continue§ = null;
         _loc2_ = 0;
         var _loc3_:int = 0;
         _loc2_ = display.stage.stageWidth / 2;
         _loc3_ = display.stage.stageHeight / 2;
         var _loc4_:§static for continue§ = null;
         _loc5_ = null;
         if(this.§else set dynamic§)
         {
            this.§7!j§();
            this.§else set dynamic§.y = -(this.§else set dynamic§.height >> 1);
            _loc4_ = _loc5_ = this.§else set dynamic§;
         }
         else if(Boolean(this.§for const break§) && Boolean(this.§override include§))
         {
            this.§[q§();
            this.§override include§.y = -(this.§for const break§.height + this.§override include§.height + 5 >> 1);
            this.§for const break§.y = this.§override include§.y + this.§override include§.height + 5;
            _loc4_ = this.§override include§;
            _loc5_ = this.§for const break§;
         }
         this.§5!!§.y = _loc4_.y - this.§5!!§.height - 5;
         this.§5!!§.width = _loc4_.width;
         this.§with const false§.y = _loc5_.y + _loc5_.height + 10;
         this.§override while§.width = _loc4_.width;
         this.§7V§.x = this.§override while§.width - this.§7V§.width - 7;
         x = _loc2_ - (width >> 1);
         y = _loc3_;
      }
      
      private function §7!j§() : void
      {
         var _loc1_:Number = display.stage.stageHeight - 200;
         this.§else set dynamic§.resize(_loc1_);
      }
      
      private function §[q§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = display.stage.stageHeight - 200;
         this.§for const break§.resize(_loc2_);
         this.§override include§.resize(_loc2_);
         if(this.§for const break§.height + this.§override include§.height > _loc2_)
         {
            _loc1_ = 0.5 * _loc2_;
            if(this.§for const break§.height > _loc1_ && this.§override include§.height > _loc1_)
            {
               this.§for const break§.resize(_loc1_);
               this.§override include§.resize(_loc1_);
            }
            else if(this.§for const break§.height < _loc1_)
            {
               this.§override include§.resize(_loc2_ - this.§for const break§.height);
            }
            else
            {
               this.§for const break§.resize(_loc2_ - this.§override include§.height);
            }
         }
      }
      
      private function §#=§(param1:Boolean, param2:int) : void
      {
         this.§with const false§ = new Sprite();
         this.§override while§ = new ResultWindowGray();
         this.§override while§.width = width;
         this.§with const false§.addChild(this.§override while§);
         this.§7V§ = new RedButton();
         this.§override while§.height = this.§7V§.height + 8;
         this.§7V§.addEventListener(MouseEvent.CLICK,this.§#"C§);
         this.§7V§.width = 96;
         this.§7V§.label = localeService.getText(TanksLocale.TEXT_BATTLE_EXIT);
         this.§7V§.x = this.§override while§.width - this.§7V§.width - 7;
         this.§7V§.y = 4;
         this.§with const false§.addChild(this.§7V§);
         if(param2 > 0)
         {
            this.§true break§ = new Label();
            this.§true break§.text = param1 ? localeService.getText(TanksLocale.TEXT_BATTLE_FINISH_IN) : localeService.getText(TanksLocale.TEXT_BATTLE_RESTART) + ": ";
            this.§with const false§.addChild(this.§true break§);
            this.§true break§.x = 4;
            this.§true break§.y = 10;
            this.§true break§.visible = true;
            this.§override var include§ = new §%!l§(-1,-1,null,true);
            this.§override var include§.§]"a§(param2);
            this.§with const false§.addChild(this.§override var include§);
            this.§override var include§.x = this.§true break§.x + this.§true break§.width;
            this.§override var include§.y = 4;
            this.§override var include§.size = 22;
            this.§override var include§.visible = true;
         }
         addChild(this.§with const false§);
      }
      
      public function §class var get§(param1:String, param2:§while var const§) : void
      {
         if(!visible)
         {
            return;
         }
         if(this.§]!k§ && this.§for const break§ && Boolean(this.§override include§))
         {
            if(param2 == §while var const§.BLUE)
            {
               this.§for const break§.§class var get§(param1);
            }
            else
            {
               this.§override include§.§class var get§(param1);
            }
            this.§[q§();
         }
         else if(this.§else set dynamic§)
         {
            this.§else set dynamic§.§class var get§(param1);
            this.§7!j§();
         }
      }
      
      public function §for const continue§(param1:Vector.<§1""§>) : void
      {
         if(visible)
         {
            this.§else set dynamic§.§]?§(param1);
            this.§7!j§();
            this.onResize();
         }
      }
      
      public function §get const true§(param1:§1""§) : void
      {
         if(visible)
         {
            this.§else set dynamic§.§7d§(param1);
         }
      }
      
      public function §"k§(param1:Vector.<§1""§>, param2:§while var const§) : void
      {
         if(visible)
         {
            if(param2 == §while var const§.BLUE)
            {
               this.§for const break§.§]?§(param1);
            }
            else if(param2 == §while var const§.RED)
            {
               this.§override include§.§]?§(param1);
            }
            this.§[q§();
            this.onResize();
         }
      }
      
      public function §1o§(param1:§1""§) : void
      {
         if(visible)
         {
            if(param1.teamType == §while var const§.BLUE)
            {
               this.§for const break§.§7d§(param1);
            }
            else if(param1.teamType == §while var const§.RED)
            {
               this.§override include§.§7d§(param1);
            }
         }
      }
      
      private function §#"C§(param1:MouseEvent) : void
      {
         dispatchEvent(new §include true§(§include true§.EXIT));
      }
      
      private function §do var finally§(param1:MouseEvent) : void
      {
         this.§true break§.visible = true;
         this.§override var include§.visible = true;
         this.§return while§.visible = false;
         dispatchEvent(new §include true§(§include true§.CONTINUE));
      }
   }
}

