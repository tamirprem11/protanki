package §"M§
{
   import assets.IconAlarm;
   import controls.Label;
   import controls.statassets.BlackRoundRect;
   import flash.text.TextFieldAutoSize;
   
   public class §#!s§ extends BlackRoundRect
   {
      private static const §static for native§:String = "{time}";
      
      private var §implements override§:Label;
      
      private var §3!q§:String;
      
      private var _seconds:int;
      
      public function §#!s§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Label = null;
         var _loc8_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Label = null;
         _loc4_ = null;
         super();
         this.§3!q§ = param3;
         var _loc5_:int = 33;
         var _loc6_:int = 33;
         var _loc7_:int = 5;
         _loc8_ = 16;
         var _loc9_:IconAlarm = new IconAlarm();
         addChild(_loc9_);
         _loc9_.y = _loc5_;
         _loc10_ = _loc9_.y + _loc9_.height + 2 * _loc7_;
         _loc4_ = new Label();
         _loc4_.size = _loc8_;
         _loc4_.text = param1;
         _loc4_.y = _loc10_;
         addChild(_loc4_);
         width = _loc4_.textWidth;
         _loc10_ += _loc4_.height + _loc7_;
         _loc11_ = new Label();
         _loc11_.size = _loc8_;
         _loc11_.text = param2;
         _loc11_.y = _loc10_;
         addChild(_loc11_);
         if(width < _loc11_.textWidth)
         {
            width = _loc11_.textWidth;
         }
         _loc10_ += _loc11_.height + _loc7_;
         this.§implements override§ = new Label();
         this.§implements override§.size = _loc8_;
         this.§implements override§.autoSize = TextFieldAutoSize.LEFT;
         this.§implements override§.text = param3 + " 99:99";
         this.§implements override§.y = _loc10_;
         addChild(this.§implements override§);
         if(width < this.§implements override§.textWidth)
         {
            width = this.§implements override§.textWidth;
         }
         width += 2 * _loc6_;
         _loc9_.x = width - _loc9_.width >> 1;
         _loc4_.x = width - _loc4_.width >> 1;
         _loc11_.x = width - _loc11_.width >> 1;
         height = _loc10_ + this.§implements override§.height + _loc5_ - 5;
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
         this.§implements override§.text = this.§3!q§.replace(§static for native§,_loc2_ + ":" + _loc3_);
         this.§implements override§.x = width - this.§implements override§.width >> 1;
      }
   }
}

