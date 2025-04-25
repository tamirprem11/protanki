package alternativa.tanks.gui.friends.list.renderer.background
{
   import alternativa.tanks.gui.friends.list.AcceptedList;
   import alternativa.tanks.gui.friends.list.renderer.HeaderAcceptedList;
   import controls.ButtonState;
   import flash.display.Sprite;
   
   public class RendererBackGroundAcceptedList extends Sprite
   {
      protected var tabs:Vector.<Number>;
      
      protected var _width:int = 100;
      
      public function RendererBackGroundAcceptedList(param1:Boolean, param2:Boolean = false)
      {
         var _loc3_:ButtonState = null;
         this.tabs = new Vector.<Number>();
         super();
         var _loc4_:int = int(HeaderAcceptedList.HEADERS.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(param1)
            {
               if(param2)
               {
                  _loc3_ = new FriendCellSelected();
               }
               else
               {
                  _loc3_ = new FriendCellNormal();
               }
            }
            else if(param2)
            {
               _loc3_ = new FriendOfflineCellSelected();
            }
            else
            {
               _loc3_ = new FriendOfflineCellNormal();
            }
            addChild(_loc3_);
            _loc5_++;
         }
         this.resize();
      }
      
      protected function resize() : void
      {
         var _loc1_:ButtonState = null;
         var _loc3_:int = 0;
         _loc1_ = null;
         if(AcceptedList.SCROLL_ON)
         {
            this.tabs = Vector.<Number>([0,this._width - 224,this._width - 1]);
         }
         else
         {
            this.tabs = Vector.<Number>([0,this._width - 233,this._width - 1]);
         }
         var _loc2_:int = int(HeaderAcceptedList.HEADERS.length);
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = getChildAt(_loc3_) as ButtonState;
            _loc1_.width = this.tabs[_loc3_ + 1] - this.tabs[_loc3_] - 2;
            _loc1_.height = 18;
            _loc1_.x = this.tabs[_loc3_];
            _loc3_++;
         }
         graphics.clear();
         graphics.beginFill(16711680,0);
         graphics.drawRect(0,0,this._width - 1,18);
         graphics.endFill();
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = Math.floor(param1);
         this.resize();
      }
   }
}

