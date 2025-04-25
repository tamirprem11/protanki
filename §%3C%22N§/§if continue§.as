package §<"N§
{
   import flash.utils.Dictionary;
   
   public class §if continue§
   {
      private var §each const set§:Dictionary = new Dictionary();
      
      public function §if continue§()
      {
         super();
      }
      
      public function getObject(param1:Class) : Object
      {
         return this.§?"6§(param1).getObject();
      }
      
      public function clear() : void
      {
         var _loc1_:* = undefined;
         for(_loc1_ in this.§each const set§)
         {
            §default const static§(this.§each const set§[_loc1_]).clear();
            delete this.§each const set§[_loc1_];
         }
      }
      
      public function §static var extends§(param1:Class) : void
      {
         var _loc2_:§default const static§ = this.§each const set§[param1];
         if(_loc2_ != null)
         {
            _loc2_.clear();
         }
      }
      
      [Obfuscation(rename="false")]
      public function toString() : String
      {
         var _loc1_:* = undefined;
         var _loc2_:§default const static§ = null;
         var _loc3_:String = "";
         for(_loc1_ in this.§each const set§)
         {
            _loc2_ = this.§each const set§[_loc1_];
            _loc3_ += _loc1_ + ": " + _loc2_.§while var try§() + "\n";
         }
         return _loc3_;
      }
      
      private function §?"6§(param1:Class) : §default const static§
      {
         var _loc2_:§default const static§ = this.§each const set§[param1];
         if(_loc2_ == null)
         {
            _loc2_ = new §default const static§(param1);
            this.§each const set§[param1] = _loc2_;
         }
         return _loc2_;
      }
   }
}

