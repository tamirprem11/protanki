package §@!p§
{
   import §>P§.§static for else§;
   import controls.InventoryIcon;
   import controls.Label;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   
   public class §for for class§
   {
      private static const §throw const false§:int = 10;
      
      private static const §const var const§:int = 1;
      
      private static const §-"7§:int = 2;
      
      private static const §2" §:int = 3;
      
      private var §set true§:int;
      
      private var §,"!§:Label;
      
      private var item:§`"8§;
      
      private var canvas:DisplayObjectContainer;
      
      private var §null break§:§include for class§;
      
      private var §default var do§:Label;
      
      private var §;"V§:int;
      
      private var §null for final§:InventoryIcon = new InventoryIcon(InventoryIcon.EMPTY);
      
      private var §?D§:int = 3;
      
      private var colorTransform:ColorTransform = new ColorTransform();
      
      private var §function const else§:int;
      
      private var §const set function§:Number = 1;
      
      public function §for for class§(param1:int)
      {
         super();
         this.§set true§ = param1;
         this.canvas = new Sprite();
         this.canvas.addChild(this.§null for final§);
         this.§,"!§ = new Label();
         this.§,"!§.size = §throw const false§;
         this.§,"!§.text = param1.toString();
         this.§,"!§.x = 3;
         this.§,"!§.y = 1;
         this.canvas.addChild(this.§,"!§);
         this.§set const final§(§static for else§.§5"2§,true);
      }
      
      public function §set const final§(param1:int, param2:Boolean) : void
      {
         if(param2)
         {
            this.§;"V§ |= param1;
         }
         else
         {
            this.§;"V§ &= ~param1;
         }
      }
      
      public function isLocked() : Boolean
      {
         return this.§;"V§ != 0;
      }
      
      public function §>!-§() : DisplayObject
      {
         return this.canvas;
      }
      
      public function setItem(param1:§`"8§) : void
      {
         if(this.item == param1)
         {
            return;
         }
         if(this.item != null)
         {
            this.§4"f§();
         }
         this.item = param1;
         if(param1 != null)
         {
            this.initItemSlot(param1);
         }
         this.§while const try§();
      }
      
      private function §4"f§() : void
      {
         var _loc1_:InventoryIcon = this.item.getIcon();
         if(this.canvas.contains(_loc1_))
         {
            this.canvas.removeChild(_loc1_);
         }
      }
      
      private function initItemSlot(param1:§`"8§) : void
      {
         if(this.canvas.contains(this.§null for final§))
         {
            this.canvas.removeChild(this.§null for final§);
         }
         var _loc2_:InventoryIcon = param1.getIcon();
         this.canvas.addChildAt(_loc2_,0);
         if(this.§null break§ == null)
         {
            this.§null break§ = new §include for class§(_loc2_.width - 4,8);
            this.§null break§.x = 2;
            this.§null break§.y = 2;
            this.canvas.addChild(this.§null break§);
         }
         this.§null break§.visible = false;
         this.§]1§();
      }
      
      private function §]1§() : void
      {
         if(this.§default var do§ == null)
         {
            this.§default var do§ = new Label();
            this.§default var do§.size = §throw const false§;
            this.canvas.addChild(this.§default var do§);
         }
      }
      
      private function §7?§() : void
      {
         if(!this.canvas.contains(this.§null for final§))
         {
            if(this.item != null)
            {
               this.§4"f§();
            }
            this.canvas.addChildAt(this.§null for final§,0);
         }
         if(this.§default var do§ != null)
         {
            this.§default var do§.visible = false;
         }
      }
      
      public function getItem() : §`"8§
      {
         return this.item;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:Number = NaN;
         if(this.item != null)
         {
            if(this.isLocked() || this.item.count == 0)
            {
               this.§null break§.visible = true;
               this.§null break§.draw(0);
               this.§const set function§ = 1;
            }
            else
            {
               _loc2_ = this.item.§@8§(param1);
               if(_loc2_ == 1)
               {
                  this.§null break§.visible = false;
                  if(this.§const set function§ < 1)
                  {
                     this.§1!`§(param1);
                  }
                  this.§do var throw§(param1);
               }
               else
               {
                  this.§"P§();
                  this.§null break§.visible = true;
                  this.§null break§.draw(_loc2_);
               }
               this.§const set function§ = _loc2_;
            }
         }
      }
      
      public function §while const try§() : void
      {
         if(this.item != null)
         {
            if(this.item.count > 0)
            {
               this.§default var do§.text = this.item.count.toString();
               this.§default var do§.x = this.item.getIcon().width - this.§default var do§.width - 9;
               this.§default var do§.y = this.item.getIcon().height - this.§default var do§.height - 40;
               this.§default var do§.visible = true;
            }
            else
            {
               this.§7?§();
            }
         }
      }
      
      public function §do var throw§(param1:int) : void
      {
         var _loc2_:uint = 255;
         var _loc3_:uint = 100;
         var _loc4_:uint = 300;
         switch(this.§?D§)
         {
            case §const var const§:
               if(param1 < this.§function const else§ + _loc3_)
               {
                  this.§4f§(_loc2_ * (param1 - this.§function const else§) / _loc3_);
               }
               else
               {
                  this.§4f§(_loc2_);
                  this.§function const else§ += _loc3_ + _loc4_;
                  this.§?D§ = §-"7§;
               }
               break;
            case §-"7§:
               if(param1 < this.§function const else§)
               {
                  this.§4f§(_loc2_ * (this.§function const else§ - param1) / _loc4_);
               }
               else
               {
                  this.§"P§();
               }
         }
      }
      
      private function §4f§(param1:uint) : void
      {
         this.colorTransform.redOffset = param1;
         this.colorTransform.greenOffset = param1;
         this.colorTransform.blueOffset = param1;
         this.colorTransform.alphaOffset = param1;
         this.canvas.transform.colorTransform = this.colorTransform;
      }
      
      public function §1!`§(param1:int) : void
      {
         this.§?D§ = §const var const§;
         this.§function const else§ = param1;
      }
      
      private function §"P§() : void
      {
         if(this.§?D§ != §2" §)
         {
            this.§?D§ = §2" §;
            this.§4f§(0);
         }
      }
      
      public function §@!^§() : void
      {
         this.initItemSlot(this.item);
      }
   }
}

