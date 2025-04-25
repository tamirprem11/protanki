package §6!b§
{
   import flash.display.Sprite;
   
   public class §break const in§ extends Sprite
   {
      protected var §7!Q§:int = 3;
      
      protected var container:Sprite = new Sprite();
      
      protected var shift:Number;
      
      public function §break const in§()
      {
         super();
         addChild(this.container);
      }
      
      public function §throw for super§(param1:Boolean = false) : §if var default§
      {
         var _loc2_:int = this.container.numChildren;
         if(_loc2_ == 0)
         {
            return null;
         }
         var _loc3_:§if var default§ = §if var default§(this.container.getChildAt(0));
         this.shift = int(_loc3_.height + _loc3_.y + this.§7!Q§);
         this.container.removeChild(_loc3_);
         _loc2_--;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            this.container.getChildAt(_loc4_).y = this.container.getChildAt(_loc4_).y - this.shift;
            _loc4_++;
         }
         return _loc3_;
      }
      
      protected function §4!f§(param1:§if var default§) : void
      {
         param1.y = 0;
         param1.alpha = 1;
         this.container.addChildAt(param1,0);
         var _loc2_:int = this.container.numChildren;
         var _loc3_:int = 1;
         while(_loc3_ < _loc2_)
         {
            this.container.getChildAt(_loc3_).y = this.container.getChildAt(_loc3_).y + int(param1.height + this.§7!Q§);
            _loc3_++;
         }
      }
      
      protected function §var static§(param1:§if var default§) : void
      {
         param1.y = this.container.numChildren > 0 ? Number(int(this.container.height + this.§7!Q§)) : Number(0);
         this.container.addChild(param1);
      }
   }
}

