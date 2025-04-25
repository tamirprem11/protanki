package alternativa.tanks.services.initialeffects
{
   import flash.utils.getTimer;
   
   public class §class var true§ implements IInitialEffectsService
   {
      private var §break var dynamic§:Vector.<§6"!§>;
      
      public function §class var true§()
      {
         super();
      }
      
      public function §override for default§(param1:String) : Vector.<§6"!§>
      {
         var _loc2_:Vector.<§6"!§> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§6"!§ = null;
         if(this.§break var dynamic§ != null)
         {
            _loc3_ = int(this.§break var dynamic§.length);
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§break var dynamic§[_loc4_];
               if(_loc5_.userId == param1)
               {
                  if(_loc2_ == null)
                  {
                     _loc2_ = new Vector.<§6"!§>();
                  }
                  _loc2_.push(_loc5_);
                  var _loc6_:*;
                  this.§break var dynamic§[_loc6_ = _loc4_--] = this.§break var dynamic§[--_loc3_];
                  this.§break var dynamic§.length = _loc3_;
               }
               _loc4_++;
            }
            if(_loc3_ == 0)
            {
               this.§break var dynamic§ = null;
            }
         }
         return _loc2_;
      }
      
      public function addInitialEffect(param1:String, param2:int, param3:int, param4:int) : void
      {
         if(this.§break var dynamic§ == null)
         {
            this.§break var dynamic§ = new Vector.<§6"!§>();
         }
         this.§break var dynamic§.push(new §6"!§(getTimer(),param1,param2,param3,param4));
      }
      
      public function §7"H§(param1:String, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = this.§%"0§(param1,param2);
         if(_loc4_ >= 0)
         {
            _loc3_ = int(this.§break var dynamic§.length);
            this.§break var dynamic§[_loc4_] = this.§break var dynamic§[--_loc3_];
            this.§break var dynamic§.length = _loc3_;
         }
      }
      
      private function §%"0§(param1:String, param2:int) : int
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§6"!§ = null;
         if(this.§break var dynamic§ != null)
         {
            _loc3_ = int(this.§break var dynamic§.length);
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = this.§break var dynamic§[_loc4_];
               if(_loc5_.userId == param1 && _loc5_.effectId == param2)
               {
                  return _loc4_;
               }
               _loc4_++;
            }
         }
         return -1;
      }
   }
}

