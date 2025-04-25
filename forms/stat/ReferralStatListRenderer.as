package forms.stat
{
   import controls.Money;
   import controls.base.LabelBase;
   import controls.rangicons.RangIconSmall;
   import controls.statassets.ReferalStatLineBackgroundNormal;
   import controls.statassets.ReferalStatLineBackgroundSelected;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormatAlign;
   
   public class ReferralStatListRenderer extends StatListRenderer
   {
      public function ReferralStatListRenderer()
      {
         super();
      }
      
      override protected function myIcon(param1:Object) : Sprite
      {
         var _loc5_:LabelBase = null;
         var _loc2_:Sprite = new Sprite();
         var _loc3_:RangIconSmall = new RangIconSmall(param1.rank);
         var _loc4_:LabelBase = new LabelBase();
         if(param1.rank > 0)
         {
            _loc3_.y = 3;
            _loc3_.x = 0;
            _loc2_.addChild(_loc3_);
         }
         _loc4_.autoSize = TextFieldAutoSize.NONE;
         _loc4_.height = 18;
         _loc4_.text = param1.callsign;
         _loc4_.x = 12;
         _loc4_.width = _width - 72;
         _loc2_.addChild(_loc4_);
         _loc5_ = new LabelBase();
         _loc5_.autoSize = TextFieldAutoSize.NONE;
         _loc5_.align = TextFormatAlign.RIGHT;
         _loc5_.width = 90;
         _loc5_.x = _width - 100;
         _loc5_.text = param1.income > -1 ? Money.numToString(param1.income,false) : "null";
         _loc2_.addChild(_loc5_);
         return _loc2_;
      }
      
      override public function set data(param1:Object) : void
      {
         _data = param1;
         var _loc2_:DisplayObject = new ReferalStatLineBackgroundNormal();
         var _loc3_:DisplayObject = new ReferalStatLineBackgroundSelected();
         nicon = this.myIcon(_data);
         setStyle("upSkin",_loc2_);
         setStyle("downSkin",_loc2_);
         setStyle("overSkin",_loc2_);
         setStyle("selectedUpSkin",_loc3_);
         setStyle("selectedOverSkin",_loc3_);
         setStyle("selectedDownSkin",_loc3_);
      }
   }
}

