package §6">§
{
   import alternativa.tanks.battle.scene3d.§set while§;
   import alternativa.tanks.models.battle.gui.gui.statistics.field.§`">§;
   import alternativa.tanks.models.battle.gui.gui.statistics.field.§true const use§;
   import controls.base.LabelBase;
   import controls.resultassets.WhiteFrame;
   import flash.display.Shape;
   import flash.display.Sprite;
   import §while finally§.§for var do§;
   
   public class §with set do§ extends Sprite implements §set while§, §true const use§
   {
      private static const §final const function§:int = 1;
      
      private var shape:Shape = new Shape();
      
      private var indicators:Vector.<§set for false§>;
      
      private var _width:int;
      
      private var _height:int;
      
      public function §with set do§(param1:Vector.<§for var do§>)
      {
         super();
         this.§static const static§(param1);
         this.§2[§(param1.length);
         addChild(this.shape);
         this.§%1§();
      }
      
      public function removeFromParent() : void
      {
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      private function §%1§() : void
      {
         var _loc1_:§set for false§ = null;
         for each(_loc1_ in this.indicators)
         {
            addChild(_loc1_.getLabel());
         }
      }
      
      public function §function set dynamic§(param1:§`">§) : void
      {
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.update();
      }
      
      public function update() : void
      {
         var _loc1_:§set for false§ = null;
         for each(_loc1_ in this.indicators)
         {
            _loc1_.update();
         }
      }
      
      private function §static const static§(param1:Vector.<§for var do§>) : void
      {
         var _loc5_:Vector.<§for var do§> = null;
         var _loc2_:§for var do§ = null;
         var _loc3_:§set for false§ = null;
         var _loc4_:LabelBase = null;
         _loc5_ = this.§each var finally§(param1);
         var _loc6_:int = 2;
         this.indicators = new Vector.<§set for false§>(param1.length);
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_.length)
         {
            _loc2_ = _loc5_[_loc7_];
            _loc3_ = new §set for false§(_loc2_);
            _loc3_.x = _loc6_;
            _loc3_.y = 2;
            addChild(_loc3_);
            _loc4_ = _loc3_.getLabel();
            _loc4_.y = 8;
            _loc4_.x = int(_loc3_.x + (_loc3_.width - _loc4_.width) / 2);
            if(_loc7_ < _loc5_.length - 1)
            {
               this.shape.graphics.lineStyle(0,16777215);
               this.shape.graphics.moveTo(_loc3_.x + 36,2);
               this.shape.graphics.lineTo(_loc3_.x + 36,38);
            }
            this.indicators[_loc7_] = _loc3_;
            _loc6_ += _loc3_.width + §final const function§;
            _loc7_++;
         }
      }
      
      private function §each var finally§(param1:Vector.<§for var do§>) : Vector.<§for var do§>
      {
         var §8!V§:Vector.<§for var do§> = param1;
         var §true const continue§:Vector.<§for var do§> = §8!V§;
         return §true const continue§.concat().sort(function(param1:§for var do§, param2:§for var do§):Number
         {
            if(param1.getName() < param2.getName())
            {
               return -1;
            }
            if(param1.getName() > param2.getName())
            {
               return 1;
            }
            return 0;
         });
      }
      
      private function §2[§(param1:int) : void
      {
         var _loc2_:WhiteFrame = new WhiteFrame();
         _loc2_.width = param1 * (36 + §final const function§) - §final const function§ + 4;
         addChild(_loc2_);
         this._width = _loc2_.width;
         this._height = _loc2_.height;
      }
      
      [Obfuscation(rename="false")]
      override public function get width() : Number
      {
         return this._width;
      }
      
      [Obfuscation(rename="false")]
      override public function get height() : Number
      {
         return this._height;
      }
   }
}

