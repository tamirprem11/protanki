package §class const catch§
{
   import §9"9§.§3"B§;
   
   internal class §=%§
   {
      private static var §,""§:int;
      
      private static var pool:Vector.<§=%§> = new Vector.<§=%§>();
      
      public var §!!1§:Number;
      
      public var §=">§:§3"B§;
      
      public function §=%§(param1:Number, param2:§3"B§)
      {
         super();
         this.§!!1§ = param1;
         this.§=">§ = param2;
      }
      
      public static function create(param1:Number, param2:§3"B§) : §=%§
      {
         var _loc3_:§=%§ = null;
         if(§,""§ > 0)
         {
            _loc3_ = pool[--§,""§];
            pool[§,""§] = null;
            _loc3_.§!!1§ = param1;
            _loc3_.§=">§ = param2;
            return _loc3_;
         }
         return new §=%§(param1,param2);
      }
      
      public static function destroy(param1:§=%§) : void
      {
         param1.§=">§ = null;
         var _loc2_:* = §,""§++;
         pool[_loc2_] = param1;
      }
   }
}

