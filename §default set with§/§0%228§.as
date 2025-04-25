package §default set with§
{
   import alternativa.tanks.services.ping.PingService;
   import controls.Label;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   
   public class §0"8§ extends Sprite
   {
      [Inject]
      public static var §class for set§:PingService;
      
      private static const §!$§:int = 60;
      
      private static const §super const finally§:int = 0;
      
      private static const §extends default§:int = 999;
      
      private static const §!l§:int = 19;
      
      private static const §1!0§:int = 50 + 8;
      
      private static const §,"H§:int = 74 + §!l§;
      
      private static const §return const final§:int = 40 + 8;
      
      private static const §each var while§:int = 10;
      
      private static const glowFilter:GlowFilter = new GlowFilter(0,0.8,4,4,3);
      
      private var §override const extends§:Label;
      
      private var §case set null§:Label;
      
      private var §return var native§:Label;
      
      private var §case const finally§:Label;
      
      private var counter:int;
      
      private var time:int;
      
      private var §+"_§:Boolean = false;
      
      public function §0"8§()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function init() : void
      {
         if(!this.§+"_§)
         {
            this.§override const extends§ = new Label();
            this.§override const extends§.autoSize = TextFieldAutoSize.LEFT;
            this.§override const extends§.color = 16777215;
            this.§override const extends§.text = "FPS: ";
            this.§override const extends§.selectable = false;
            addChild(this.§override const extends§);
            this.§case set null§ = new Label();
            this.§case set null§.autoSize = TextFieldAutoSize.LEFT;
            this.§case set null§.color = int("0x00FF00");
            this.§case set null§.text = §!$§.toString();
            this.§case set null§.selectable = false;
            addChild(this.§case set null§);
            this.§return var native§ = new Label();
            this.§return var native§.autoSize = TextFieldAutoSize.LEFT;
            this.§return var native§.color = 16777215;
            this.§return var native§.text = "PING: ";
            this.§return var native§.selectable = false;
            this.§return var native§.x = -7;
            this.§return var native§.y = §!l§;
            addChild(this.§return var native§);
            this.§case const finally§ = new Label();
            this.§case const finally§.autoSize = TextFieldAutoSize.LEFT;
            this.§case const finally§.color = int("0x00FF00");
            this.§case const finally§.text = §super const finally§.toString();
            this.§case const finally§.selectable = false;
            this.§case const finally§.y = §!l§;
            addChild(this.§case const finally§);
            filters = [glowFilter];
            this.§+"_§ = true;
         }
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         this.init();
         this.onResize();
         this.counter = 0;
         this.time = getTimer();
         stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         stage.addEventListener(Event.RESIZE,this.onResize);
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         stage.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         stage.removeEventListener(Event.RESIZE,this.onResize);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(++this.counter >= §each var while§)
         {
            _loc2_ = getTimer();
            _loc3_ = 1000 * this.counter / (_loc2_ - this.time);
            if(_loc3_ > §!$§)
            {
               _loc3_ = §!$§;
            }
            this.§case set null§.text = Math.round(_loc3_).toString();
            this.§case set null§.x = §return const final§ - this.§case set null§.width;
            if(_loc3_ > 30)
            {
               if(_loc3_ < 60)
               {
                  this.§case set null§.color = this.§["&§(int("0xFFFF00"),int("0x00FF00"),(_loc3_ - 30) / (60 - 30));
               }
               else
               {
                  this.§case set null§.color = int("0x00FF00");
               }
            }
            else if(_loc3_ > 15)
            {
               this.§case set null§.color = this.§["&§(int("0XF03416"),int("0XFFFF00"),(_loc3_ - 15) / (30 - 15));
            }
            else
            {
               this.§case set null§.color = int("0XF03416");
            }
            this.time = _loc2_;
            this.counter = 0;
            _loc4_ = §class for set§.§const for var§();
            if(_loc4_ > §extends default§)
            {
               _loc4_ = §extends default§;
            }
            this.§case const finally§.text = Math.round(_loc4_).toString();
            this.§case const finally§.x = §return const final§ - this.§case const finally§.width;
            if(_loc4_ < 200)
            {
               if(_loc4_ > 100)
               {
                  this.§case const finally§.color = this.§["&§(int("0x00FF00"),int("0xFFFF00"),(_loc4_ - 100) / (200 - 100));
               }
               else
               {
                  this.§case const finally§.color = int("0x00FF00");
               }
            }
            else if(_loc4_ < 500)
            {
               this.§case const finally§.color = this.§["&§(int("0xFFFF00"),int("0XF03416"),(_loc4_ - 200) / (500 - 200));
            }
            else
            {
               this.§case const finally§.color = int("0XF03416");
            }
         }
      }
      
      private function §["&§(param1:int, param2:int, param3:Number) : int
      {
         var _loc4_:* = param1 >> 16 & 0xFF;
         var _loc5_:* = param1 >> 8 & 0xFF;
         var _loc6_:* = param1 & 0xFF;
         var _loc7_:* = param2 >> 16 & 0xFF;
         var _loc8_:* = param2 >> 8 & 0xFF;
         var _loc9_:* = param2 & 0xFF;
         if(param3 > 1)
         {
            param3 = 1;
         }
         return _loc4_ + (_loc7_ - _loc4_) * param3 << 16 | _loc5_ + (_loc8_ - _loc5_) * param3 << 8 | int(_loc6_ + (_loc9_ - _loc6_) * param3);
      }
      
      private function onResize(param1:Event = null) : void
      {
         x = stage.stageWidth - §1!0§;
         y = stage.stageHeight - §,"H§;
         this.§case set null§.x = §return const final§ - this.§case set null§.width;
         this.§case const finally§.x = §return const final§ - this.§case const finally§.width;
      }
   }
}

