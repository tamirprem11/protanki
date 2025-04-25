package §while set false§
{
   import alternativa.tanks.gui.settings.SettingsWindow;
   import fl.containers.ScrollPane;
   import fl.controls.ScrollPolicy;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import forms.ColorConstants;
   import utils.ScrollStyleUtils;
   
   public class §const for native§ extends §2h§
   {
      public static const §["§:int = MARGIN - SCROLL_GAP;
      
      private static const AROUND_GAP:int = 25;
      
      private static const SCROLL_GAP:int = 5;
      
      private static const SCROLL_PANE_BOTTOM_PADDING:int = 15;
      
      private static const SCROLL_SHIFT_GAP:int = 5;
      
      private static const SCROLL_SPEED_MULTIPLIER:int = 3;
      
      protected var scrollPane:ScrollPane;
      
      private var scrollContainer:Sprite;
      
      private var scrollPaneBottomPadding:Sprite;
      
      private var _width:int;
      
      private var _height:int;
      
      private var items:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function §const for native§()
      {
         super();
         this.scrollContainer = new Sprite();
         this.scrollPaneBottomPadding = new Sprite();
         this.scrollContainer.addChild(this.scrollPaneBottomPadding);
         this.scrollPane = new ScrollPane();
         ScrollStyleUtils.setGrayStyle(this.scrollPane);
         this.scrollPane.horizontalScrollPolicy = ScrollPolicy.OFF;
         this.scrollPane.verticalScrollPolicy = ScrollPolicy.AUTO;
         this.scrollPane.source = this.scrollContainer;
         this.scrollPane.update();
         this.scrollPane.focusEnabled = false;
         this.scrollPane.addEventListener(MouseEvent.MOUSE_WHEEL,onMouseWheel,true);
         addChild(this.scrollPane);
      }
      
      private static function onMouseWheel(param1:MouseEvent) : void
      {
         param1.delta *= SCROLL_SPEED_MULTIPLIER;
      }
      
      protected function addItem(param1:DisplayObject) : void
      {
         this.items.push(param1);
         this.scrollContainer.addChild(param1);
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:DisplayObject = null;
         this._width = param1;
         this._height = param2;
         this.scrollPane.y = SCROLL_GAP;
         this.scrollPane.setSize(param1 + SCROLL_SHIFT_GAP,param2 - SCROLL_GAP * 2);
         var _loc4_:int = 0;
         for each(_loc3_ in this.items)
         {
            _loc4_ += _loc3_.height;
         }
         this.fixScrollPaneBottomPadding(_loc4_);
         this.scrollPane.update();
      }
      
      override public function show() : void
      {
         this.render(SettingsWindow.§while set static§,SettingsWindow.§-"5§);
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      private function fixScrollPaneBottomPadding(param1:int) : void
      {
         this.scrollPaneBottomPadding.graphics.lineStyle(1,ColorConstants.WHITE,0);
         this.scrollPaneBottomPadding.graphics.beginFill(ColorConstants.WHITE,0);
         this.scrollPaneBottomPadding.graphics.drawRect(0,0,1,SCROLL_PANE_BOTTOM_PADDING);
         this.scrollPaneBottomPadding.graphics.endFill();
         this.scrollPaneBottomPadding.x = AROUND_GAP;
         this.scrollPaneBottomPadding.y = param1;
      }
      
      override public function destroy() : void
      {
         this.scrollPane.removeEventListener(MouseEvent.MOUSE_WHEEL,onMouseWheel,true);
         this.scrollPane = null;
         super.destroy();
      }
   }
}

