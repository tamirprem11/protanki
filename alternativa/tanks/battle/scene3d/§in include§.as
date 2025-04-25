package alternativa.tanks.battle.scene3d
{
   import alternativa.tanks.battle.§"-§;
   
   public class §in include§
   {
      private var §implements for override§:Vector.<§set while§> = new Vector.<§set while§>();
      
      private var size:int;
      
      private var §"c§:Boolean;
      
      private const §var const package§:Vector.<§"-§> = new Vector.<§"-§>();
      
      public function §in include§()
      {
         super();
      }
      
      public function §@!X§(param1:§set while§) : void
      {
         if(this.§"c§)
         {
            this.§var const package§.push(new §const final§(this,param1));
         }
         else if(this.§implements for override§.indexOf(param1) < 0)
         {
            var _loc2_:* = this.size++;
            this.§implements for override§[_loc2_] = param1;
         }
      }
      
      public function §use const else§(param1:§set while§) : void
      {
         var _loc2_:int = 0;
         if(this.§"c§)
         {
            this.§var const package§.push(new §catch const set§(this,param1));
         }
         else
         {
            _loc2_ = int(this.§implements for override§.indexOf(param1));
            if(_loc2_ >= 0)
            {
               this.§implements for override§[_loc2_] = this.§implements for override§[--this.size];
               this.§implements for override§[this.size] = null;
            }
         }
      }
      
      public function render(param1:int, param2:int) : void
      {
         var _loc3_:§set while§ = null;
         this.§"c§ = true;
         var _loc4_:int = 0;
         while(_loc4_ < this.size)
         {
            _loc3_ = this.§implements for override§[_loc4_];
            _loc3_.render(param1,param2);
            _loc4_++;
         }
         this.§"c§ = false;
         this.§;"g§();
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

