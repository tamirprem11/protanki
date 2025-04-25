package forms.stat
{
   import assets.scroller.color.ScrollThumbSkinGreen;
   import assets.scroller.color.ScrollTrackGreen;
   import controls.statassets.ReferalStatLineBackgroundNormal;
   import controls.statassets.ReferalStatLineBackgroundSelected;
   import controls.statassets.ReferralStatHeader;
   import controls.statassets.StatLineBase;
   import controls.statassets.StatLineNormal;
   import controls.statassets.StatLineNormalActive;
   import controls.statassets.StatLineSelected;
   import controls.statassets.StatLineSelectedActive;
   import fl.controls.List;
   import fl.data.DataProvider;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.Timer;
   import forms.events.StatListEvent;
   
   public class ReferralStatList extends Sprite
   {
      private var header:ReferralStatHeader = new ReferralStatHeader();
      
      protected var list:List = new List();
      
      protected var dp:DataProvider = new DataProvider();
      
      protected var currentSort:int = 1;
      
      protected var nr:DisplayObject;
      
      protected var sl:DisplayObject;
      
      protected var timer:Timer = null;
      
      protected var _width:int = 100;
      
      private var _height:int = 100;
      
      public function ReferralStatList()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.ConfigUI);
      }
      
      public static function setBackground(param1:int, param2:int, param3:Boolean) : BitmapData
      {
         var _loc5_:StatLineBase = null;
         var _loc4_:Sprite = new Sprite();
         var _loc6_:Array = [0,param1 - 120,param1 - 1];
         var _loc7_:int = 0;
         var _loc8_:BitmapData = new BitmapData(param1,20,true,0);
         _loc7_ = 0;
         while(_loc7_ < 2)
         {
            if(param2 == _loc7_)
            {
               if(param3)
               {
                  _loc5_ = new StatLineSelectedActive();
               }
               else
               {
                  _loc5_ = new StatLineNormalActive();
               }
            }
            else if(param3)
            {
               _loc5_ = new StatLineSelected();
            }
            else
            {
               _loc5_ = new StatLineNormal();
            }
            _loc5_.width = _loc6_[_loc7_ + 1] - _loc6_[_loc7_] - 2;
            _loc5_.height = 18;
            _loc5_.x = _loc6_[_loc7_];
            _loc4_.addChild(_loc5_);
            _loc7_++;
         }
         _loc8_.draw(_loc4_);
         return _loc8_;
      }
      
      protected function ConfigUI(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.ConfigUI);
         this.currentSort = 1;
         this.list.rowHeight = 20;
         this.list.setStyle("cellRenderer",ReferralStatListRenderer);
         this.list.dataProvider = this.dp;
         this.confSkin();
         addChild(this.header);
         addChild(this.list);
         this.list.y = 20;
         this.header.addEventListener(StatListEvent.UPDATE_SORT,this.changeSort);
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = int(param1);
         this.list.height = this._height - 20;
      }
      
      public function clear() : void
      {
         var _loc1_:Object = new Object();
         var _loc2_:int = 0;
         while(_loc2_ < this.dp.length)
         {
            _loc1_ = this.dp.getItemAt(_loc2_);
            _loc1_.sort = this.currentSort;
            this.dp.replaceItemAt(_loc1_,_loc2_);
            _loc2_++;
         }
         this.sort();
      }
      
      public function addReferrals(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         for each(_loc3_ in param1)
         {
            _loc2_ = new Object();
            _loc2_.rank = _loc3_.rank;
            _loc2_.callsign = _loc3_.callsign;
            _loc2_.income = _loc3_.income;
            _loc2_.sort = this.currentSort;
            this.dp.addItem(_loc2_);
         }
         this.sort();
      }
      
      private function sort() : void
      {
         if(this.currentSort == 0)
         {
            this.dp.sortOn("callsign");
         }
         else
         {
            this.dp.sortOn("income",Array.NUMERIC | Array.DESCENDING);
         }
         this.dp.invalidate();
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = int(param1);
         var _loc2_:* = this.list.maxVerticalScrollPosition > 0;
         var _loc3_:int = _loc2_ ? this._width + 6 : this._width;
         this.list.width = _loc3_;
         this.header.width = _loc2_ ? _loc3_ - 15 : _loc3_;
         ReferalStatLineBackgroundNormal.bg = new Bitmap(setBackground(_loc2_ ? _loc3_ - 15 : _loc3_,this.currentSort,false));
         ReferalStatLineBackgroundSelected.bg = new Bitmap(setBackground(_loc2_ ? _loc3_ - 15 : _loc3_,this.currentSort,true));
         this.dp.invalidate();
      }
      
      protected function changeSort(param1:StatListEvent) : void
      {
         this.currentSort = param1.sortField;
         this.clear();
         this.width = this._width;
      }
      
      protected function confSkin() : void
      {
         this.list.setStyle("downArrowUpSkin",ScrollArrowDownGreen);
         this.list.setStyle("downArrowDownSkin",ScrollArrowDownGreen);
         this.list.setStyle("downArrowOverSkin",ScrollArrowDownGreen);
         this.list.setStyle("downArrowDisabledSkin",ScrollArrowDownGreen);
         this.list.setStyle("upArrowUpSkin",ScrollArrowUpGreen);
         this.list.setStyle("upArrowDownSkin",ScrollArrowUpGreen);
         this.list.setStyle("upArrowOverSkin",ScrollArrowUpGreen);
         this.list.setStyle("upArrowDisabledSkin",ScrollArrowUpGreen);
         this.list.setStyle("trackUpSkin",ScrollTrackGreen);
         this.list.setStyle("trackDownSkin",ScrollTrackGreen);
         this.list.setStyle("trackOverSkin",ScrollTrackGreen);
         this.list.setStyle("trackDisabledSkin",ScrollTrackGreen);
         this.list.setStyle("thumbUpSkin",ScrollThumbSkinGreen);
         this.list.setStyle("thumbDownSkin",ScrollThumbSkinGreen);
         this.list.setStyle("thumbOverSkin",ScrollThumbSkinGreen);
         this.list.setStyle("thumbDisabledSkin",ScrollThumbSkinGreen);
      }
   }
}

