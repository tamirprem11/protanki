package §9!q§
{
   import controls.Label;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   
   public class § -§ extends Sprite
   {
      private const §0"'§:int = 3;
      
      private const §[!b§:int = 18;
      
      private var numMessages:int;
      
      private var messages:Vector.<§switch var native§> = new Vector.<§switch var native§>();
      
      private var §["3§:int;
      
      private var §break for package§:Vector.<§switch var native§> = new Vector.<§switch var native§>();
      
      public function § -§()
      {
         super();
         filters = [new GlowFilter(0,0.75,5,5)];
      }
      
      public function addMessage(param1:uint, param2:String) : void
      {
         this.§'!g§();
         var _loc3_:§switch var native§ = this.messages[this.numMessages] = this.createMessage();
         _loc3_.init();
         this.§null set super§(_loc3_,param1,param2);
      }
      
      public function §true var class§(param1:uint, param2:String, param3:int) : void
      {
         this.§'!g§();
         var _loc4_:§switch var native§ = this.messages[this.numMessages] = this.createMessage();
         _loc4_.§case var function§(param3);
         this.§null set super§(_loc4_,param1,param2);
      }
      
      private function §'!g§() : void
      {
         if(this.numMessages == this.§0"'§)
         {
            this.§switch set const§(0);
         }
      }
      
      private function §null set super§(param1:§switch var native§, param2:uint, param3:String) : void
      {
         var _loc4_:Label = param1.getLabel();
         addChild(_loc4_);
         _loc4_.color = param2;
         _loc4_.text = param3;
         _loc4_.x = -0.5 * _loc4_.width;
         _loc4_.y = this.§[!b§ * this.numMessages;
         ++this.numMessages;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:§switch var native§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.numMessages)
         {
            _loc2_ = this.messages[_loc3_];
            if(_loc2_.§#"<§)
            {
               this.§switch set const§(_loc3_);
               _loc3_--;
            }
            else
            {
               _loc2_.update(param1);
            }
            _loc3_++;
         }
      }
      
      public function removeFromParent() : void
      {
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      private function §switch set const§(param1:int) : void
      {
         var _loc2_:Label = null;
         var _loc3_:§switch var native§ = this.messages[param1];
         this.§implements const include§(_loc3_);
         var _loc4_:int = param1 + 1;
         while(_loc4_ < this.numMessages)
         {
            _loc3_ = this.messages[int(_loc4_ - 1)] = this.messages[_loc4_];
            _loc2_ = _loc3_.getLabel();
            _loc2_.y -= this.§[!b§;
            _loc4_++;
         }
         --this.numMessages;
      }
      
      private function §implements const include§(param1:§switch var native§) : void
      {
         removeChild(param1.getLabel());
         var _loc2_:* = this.§["3§++;
         this.§break for package§[_loc2_] = param1;
      }
      
      private function createMessage() : §switch var native§
      {
         var _loc1_:§switch var native§ = null;
         if(this.§["3§ == 0)
         {
            _loc1_ = new §switch var native§();
         }
         else
         {
            _loc1_ = this.§break for package§[--this.§["3§];
            this.§break for package§[this.§["3§] = null;
         }
         return _loc1_;
      }
   }
}

