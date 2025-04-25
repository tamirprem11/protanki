package §"M§
{
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.services.battlegui.BattleGUIService;
   import alternativa.utils.removeDisplayObject;
   import controls.base.LabelBase;
   import controls.statassets.BlackRoundRect;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §6!r§ extends BlackRoundRect
   {
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var §<!x§:BattleGUIService;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      private static const §?"S§:Class = §>"1§;
      
      private static const §static for native§:String = "{time}";
      
      private var §7M§:LabelBase;
      
      private var §for for break§:String;
      
      private var _seconds:int;
      
      private var _isShow:Boolean;
      
      public function §6!r§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         var _loc6_:Bitmap = null;
         var _loc1_:int = 0;
         this.§for for break§ = localeService.getText(TanksLocale.TEXT_REARM_SELFDISTRUCTION);
         var _loc2_:int = 33;
         var _loc3_:int = 33;
         var _loc4_:int = 5;
         var _loc5_:int = 16;
         _loc6_ = new Bitmap(new §?"S§().bitmapData);
         addChild(_loc6_);
         _loc6_.y = _loc2_ - 5;
         _loc1_ = _loc6_.y + _loc6_.height + 2 * _loc4_;
         this.§7M§ = new LabelBase();
         this.§7M§.size = _loc5_;
         this.§7M§.autoSize = TextFieldAutoSize.LEFT;
         this.§7M§.text = this.§for for break§.replace(§static for native§," 99:99");
         this.§7M§.y = _loc1_;
         addChild(this.§7M§);
         if(width < this.§7M§.textWidth)
         {
            width = this.§7M§.textWidth;
         }
         width += 2 * _loc3_;
         _loc6_.x = width - _loc6_.width >> 1;
         height = _loc1_ + this.§7M§.height + _loc2_ - 5;
      }
      
      public function set seconds(param1:int) : void
      {
         if(this._seconds == param1)
         {
            return;
         }
         this._seconds = param1;
         var _loc2_:int = this._seconds / 60;
         this._seconds -= _loc2_ * 60;
         var _loc3_:String = this._seconds < 10 ? "0" + this._seconds : this._seconds.toString();
         this.§7M§.text = this.§for for break§.replace(§static for native§,_loc2_ + ":" + _loc3_);
         this.§7M§.x = width - this.§7M§.width >> 1;
      }
      
      public function show(param1:int) : void
      {
         if(this._isShow)
         {
            return;
         }
         this._isShow = true;
         this.seconds = param1;
         §<!x§.§6"I§().addChild(this);
         this.onResize();
         display.stage.addEventListener(Event.RESIZE,this.onResize);
      }
      
      private function onResize(param1:Event = null) : void
      {
         this.x = display.stage.stageWidth - this.width >> 1;
         this.y = display.stage.stageHeight - this.height >> 1;
      }
      
      public function hide() : void
      {
         if(!this._isShow)
         {
            return;
         }
         this._isShow = false;
         removeDisplayObject(this);
         display.stage.removeEventListener(Event.RESIZE,this.onResize);
      }
      
      public function destroy() : void
      {
         this.hide();
         this.§7M§ = null;
      }
   }
}

