package alternativa.tanks.battle.events
{
   import flash.utils.Dictionary;
   
   public class §override const super§ implements BattleEventDispatcher
   {
      private var §!"J§:int;
      
      private var §3n§:Dictionary = new Dictionary();
      
      private var §]L§:Dictionary = new Dictionary();
      
      private var §in const try§:Dictionary = new Dictionary();
      
      private var §static var final§:Dictionary = new Dictionary();
      
      public function §override const super§()
      {
         super();
      }
      
      private static function addListener(param1:Dictionary, param2:Class, param3:§override const do§) : void
      {
         var _loc4_:Vector.<§override const do§> = param1[param2];
         if(_loc4_ == null)
         {
            _loc4_ = new Vector.<§override const do§>();
            param1[param2] = _loc4_;
         }
         if(_loc4_.indexOf(param3) < 0)
         {
            _loc4_.push(param3);
         }
      }
      
      private static function removeListener(param1:Dictionary, param2:Class, param3:§override const do§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:Vector.<§override const do§> = param1[param2];
         if(_loc5_ != null)
         {
            _loc4_ = int(_loc5_.indexOf(param3));
            if(_loc4_ >= 0)
            {
               if(_loc5_.length == 1)
               {
                  delete param1[param2];
               }
               else
               {
                  _loc5_.splice(_loc4_,1);
               }
            }
         }
      }
      
      public function §7i§(param1:Class, param2:§override const do§) : void
      {
         if(this.§!"J§ > 0)
         {
            removeListener(this.§in const try§,param1,param2);
            addListener(this.§]L§,param1,param2);
         }
         else
         {
            addListener(this.§3n§,param1,param2);
         }
      }
      
      public function §,"7§(param1:Class, param2:§override const do§) : void
      {
         if(this.§!"J§ > 0)
         {
            removeListener(this.§]L§,param1,param2);
            addListener(this.§in const try§,param1,param2);
         }
         else
         {
            removeListener(this.§3n§,param1,param2);
         }
      }
      
      public function dispatchEvent(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         ++this.§!"J§;
         var _loc4_:Vector.<§override const do§> = this.§3n§[param1.constructor];
         if(_loc4_ != null)
         {
            _loc2_ = int(_loc4_.length);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               §override const do§(_loc4_[_loc3_]).handleBattleEvent(param1);
               _loc3_++;
            }
         }
         --this.§!"J§;
         this.§function const dynamic§();
      }
      
      public function §if throw§(param1:Object) : void
      {
         if(!this.§static var final§[param1.constructor])
         {
            this.§static var final§[param1.constructor] = true;
            this.dispatchEvent(param1);
         }
      }
      
      public function §9"D§() : void
      {
         this.§static var final§ = new Dictionary();
      }
      
      private function §function const dynamic§() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:Vector.<§override const do§> = null;
         if(this.§!"J§ > 0)
         {
            return;
         }
         for(_loc4_ in this.§in const try§)
         {
            _loc5_ = this.§in const try§[_loc4_];
            delete this.§in const try§[_loc4_];
            _loc3_ = int(_loc5_.length);
            _loc2_ = 0;
            while(_loc2_ < _loc3_)
            {
               removeListener(this.§3n§,_loc4_,_loc5_[_loc2_]);
               _loc2_++;
            }
         }
         for(_loc4_ in this.§]L§)
         {
            _loc5_ = this.§]L§[_loc4_];
            delete this.§]L§[_loc4_];
            _loc3_ = int(_loc5_.length);
            _loc2_ = 0;
            while(_loc2_ < _loc3_)
            {
               addListener(this.§3n§,_loc4_,_loc5_[_loc2_]);
               _loc2_++;
            }
         }
      }
   }
}

