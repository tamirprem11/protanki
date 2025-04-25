package alternativa.tanks.models.battle.gui.chat
{
   import §!4§.§["^§;
   import §6!b§.§break const in§;
   import §6!b§.§if var default§;
   import §],§.§while var const§;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import forms.userlabel.ChatUpdateEvent;
   
   public class §@"N§ extends §break const in§
   {
      private static const §3c§:int = 300;
      
      private static const §0"'§:int = 100;
      
      private static const §dynamic for case§:int = 5;
      
      private var buffer:Array = [];
      
      private var §[!E§:Boolean = true;
      
      private var §each false§:uint = 0;
      
      public function §@"N§()
      {
         super();
      }
      
      public function addLine(param1:String, param2:§while var const§, param3:String, param4:Boolean, param5:Boolean) : void
      {
         this.§7-§();
         var _loc6_:§9"d§ = new §9"d§(param1,param2,param3,param4,param5);
         _loc6_.addEventListener(§["^§.§-p§,this.§super const catch§);
         this.§9"=§(_loc6_);
         §var static§(_loc6_);
         container.addEventListener(ChatUpdateEvent.UPDATE,this.§^`§);
      }
      
      private function §^`§(param1:ChatUpdateEvent) : void
      {
         if(this.§each false§ != 0)
         {
            clearTimeout(this.§each false§);
         }
         this.§each false§ = setTimeout(this.§3w§,100);
      }
      
      private function §3w§() : void
      {
         var _loc1_:§if var default§ = null;
         this.§each false§ = 0;
         for each(_loc1_ in this.buffer)
         {
            if(_loc1_ is §9"d§)
            {
               §9"d§(_loc1_).alignChatUserLabel();
            }
         }
      }
      
      public function §package throw§(param1:String) : void
      {
         this.§7-§();
         var _loc2_:§[V§ = new §[V§(§3c§,param1);
         _loc2_.addEventListener(§["^§.§-p§,this.§super const catch§);
         this.§9"=§(_loc2_);
         §var static§(_loc2_);
      }
      
      override public function §throw for super§(param1:Boolean = false) : §if var default§
      {
         var _loc2_:§if var default§ = super.§throw for super§();
         this.y += shift;
         if(param1)
         {
            this.buffer.shift();
         }
         return _loc2_;
      }
      
      public function §9";§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§if var default§ = null;
         this.§[!E§ = false;
         var _loc3_:int = this.buffer.length - container.numChildren;
         _loc1_ = 0;
         while(_loc1_ < container.numChildren)
         {
            _loc2_ = §if var default§(container.getChildAt(_loc1_));
            _loc2_.§implements for super§();
            _loc1_++;
         }
         _loc1_ = _loc3_ - 1;
         while(_loc1_ >= 0)
         {
            try
            {
               §4!f§(§if var default§(this.buffer[_loc1_]));
            }
            catch(err:Error)
            {
            }
            _loc1_--;
         }
      }
      
      public function §static while§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§if var default§ = null;
         this.§[!E§ = true;
         var _loc3_:int = container.numChildren - §dynamic for case§;
         _loc1_ = 0;
         while(_loc1_ < _loc3_)
         {
            this.§throw for super§();
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < container.numChildren)
         {
            _loc2_ = §if var default§(container.getChildAt(_loc1_));
            if(!_loc2_.alive)
            {
               this.§throw for super§();
               _loc1_--;
            }
            else
            {
               _loc2_.§8H§();
            }
            _loc1_++;
         }
      }
      
      public function clear() : void
      {
         this.buffer.length = 0;
         var _loc1_:int = container.numChildren - 1;
         while(_loc1_ >= 0)
         {
            container.removeChildAt(_loc1_);
            _loc1_--;
         }
      }
      
      private function §super const catch§(param1:§["^§) : void
      {
         if(this.§[!E§ && container.contains(param1.line))
         {
            this.§throw for super§();
         }
         param1.line.removeEventListener(§["^§.§-p§,this.§super const catch§);
      }
      
      private function §7-§() : void
      {
         if(this.§[!E§ && container.numChildren > §dynamic for case§ || !this.§[!E§ && container.numChildren >= §0"'§)
         {
            this.§throw for super§();
         }
      }
      
      private function §9"=§(param1:§if var default§) : void
      {
         this.buffer.push(param1);
         if(this.buffer.length > §0"'§)
         {
            this.buffer.shift();
         }
      }
   }
}

