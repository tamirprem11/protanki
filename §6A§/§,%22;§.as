package §6A§
{
   import alternativa.physics.Body;
   import alternativa.tanks.battle.§"-§;
   import alternativa.tanks.battle.§catch const class§;
   
   public class §,";§
   {
      private const §else var final§:Vector.<§catch const class§> = new Vector.<§catch const class§>();
      
      private const §var const package§:Vector.<§"-§> = new Vector.<§"-§>();
      
      private var running:Boolean;
      
      public function §,";§()
      {
         super();
      }
      
      public function add(param1:§catch const class§) : void
      {
         if(this.running)
         {
            this.§var const package§.push(new §function for throw§(this,param1));
         }
         else if(this.§else var final§.indexOf(param1) < 0)
         {
            this.§else var final§.push(param1);
         }
      }
      
      public function remove(param1:§catch const class§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.running)
         {
            this.§var const package§.push(new §class for function§(this,param1));
         }
         else
         {
            _loc2_ = int(this.§else var final§.length);
            if(_loc2_ > 0)
            {
               _loc3_ = int(this.§else var final§.indexOf(param1));
               if(_loc3_ >= 0)
               {
                  this.§else var final§[_loc3_] = this.§else var final§[--_loc2_];
                  this.§else var final§.length = _loc2_;
               }
            }
         }
      }
      
      public function §false set package§(param1:Body) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§catch const class§ = null;
         if(param1 != null)
         {
            this.running = true;
            _loc2_ = int(this.§else var final§.length);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = this.§else var final§[_loc3_];
               _loc4_.checkTrigger(param1);
               _loc3_++;
            }
            this.running = false;
            this.§;"g§();
         }
      }
      
      private function §;"g§() : void
      {
         var _loc1_:§"-§ = null;
         while(true)
         {
            _loc1_ = this.§var const package§.pop();
            if(_loc1_ == null)
            {
               break;
            }
            _loc1_.execute();
         }
      }
   }
}

