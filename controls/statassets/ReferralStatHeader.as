package controls.statassets
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.tanks.locale.constants.TextConst;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import forms.events.StatListEvent;
   
   public class ReferralStatHeader extends Sprite
   {
      protected var tabs:Array;
      
      protected var headers:Array;
      
      protected var _currentSort:int = 1;
      
      protected var _oldSort:int = 1;
      
      protected var _width:int = 800;
      
      public function ReferralStatHeader()
      {
         var _loc2_:StatHeaderButton = null;
         var _loc3_:int = 0;
         this.tabs = new Array();
         super();
         var _loc1_:ILocaleService = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         this.headers = [_loc1_.getText(TextConst.REFERAL_STATISTICS_HEADER_CALLSIGN),_loc1_.getText(TextConst.REFERAL_STATISTICS_HEADER_INCOME)];
         _loc3_ = 0;
         while(_loc3_ < 2)
         {
            _loc2_ = new StatHeaderButton(_loc3_ == 1);
            _loc2_.label = this.headers[_loc3_];
            _loc2_.height = 18;
            _loc2_.numSort = _loc3_;
            addChild(_loc2_);
            _loc2_.addEventListener(MouseEvent.CLICK,this.changeSort);
            _loc3_++;
         }
         this.draw();
      }
      
      protected function draw() : void
      {
         var _loc1_:StatHeaderButton = null;
         var _loc3_:int = 0;
         var _loc2_:int = int(this._width - 345);
         this.tabs = [0,this._width - 120,this._width - 1];
         _loc3_ = 0;
         while(_loc3_ < 2)
         {
            _loc1_ = getChildAt(_loc3_) as StatHeaderButton;
            _loc1_.width = this.tabs[_loc3_ + 1] - this.tabs[_loc3_] - 2;
            _loc1_.x = this.tabs[_loc3_];
            _loc1_.selected = _loc3_ == this._currentSort;
            _loc3_++;
         }
      }
      
      protected function changeSort(param1:MouseEvent) : void
      {
         var _loc2_:StatHeaderButton = param1.currentTarget as StatHeaderButton;
         this._currentSort = _loc2_.numSort;
         if(this._currentSort != this._oldSort)
         {
            this.draw();
            dispatchEvent(new StatListEvent(StatListEvent.UPDATE_SORT,0,0,this._currentSort));
            this._oldSort = this._currentSort;
         }
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = Math.floor(param1);
         this.draw();
      }
   }
}

