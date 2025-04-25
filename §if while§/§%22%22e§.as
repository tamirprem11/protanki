package §if while§
{
   import §;+§.§false const var§;
   
   public class §""e§
   {
      private var §7!Y§:Vector.<§false const var§> = new Vector.<§false const var§>();
      
      private var §default for function§:Vector.<§false const var§> = new Vector.<§false const var§>();
      
      public function §""e§()
      {
         super();
      }
      
      public function clear() : void
      {
         this.§7!Y§.length = 0;
         this.§default for function§.length = 0;
      }
      
      public function §do set get§() : Vector.<§false const var§>
      {
         return this.§default for function§;
      }
      
      public function §5"$§() : Number
      {
         var _loc1_:§false const var§ = this.§7!Y§[0];
         return _loc1_.§5"$§();
      }
      
      public function isEmpty() : Boolean
      {
         return this.§7!Y§.length == 0;
      }
      
      public function add(param1:§false const var§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:§false const var§ = null;
         var _loc4_:§false const var§ = null;
         _loc2_ = 0;
         while(_loc2_ < this.§7!Y§.length)
         {
            _loc3_ = this.§7!Y§[_loc2_];
            if(param1.§5"$§() < _loc3_.§5"$§())
            {
               break;
            }
            _loc2_++;
         }
         this.§7!Y§.splice(_loc2_,0,param1);
         _loc2_ = 0;
         while(_loc2_ < this.§default for function§.length)
         {
            _loc4_ = this.§default for function§[_loc2_];
            if(param1.§6u§() < _loc4_.§6u§())
            {
               break;
            }
            _loc2_++;
         }
         this.§default for function§.splice(_loc2_,0,param1);
      }
      
      public function §#!1§(param1:Number) : void
      {
         var _loc2_:§false const var§ = null;
         while(this.§7!Y§.length > 0)
         {
            _loc2_ = §false const var§(this.§7!Y§[0]);
            if(_loc2_.§5"$§() > param1)
            {
               break;
            }
            this.§;9§(this.§7!Y§[0]);
         }
      }
      
      private function §;9§(param1:§false const var§) : void
      {
         this.§false var const§(this.§7!Y§,param1);
         this.§false var const§(this.§default for function§,param1);
      }
      
      private function §false var const§(param1:Vector.<§false const var§>, param2:§false const var§) : void
      {
         param1.splice(param1.indexOf(param2),1);
      }
   }
}

