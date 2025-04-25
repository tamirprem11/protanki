package §<"N§
{
   public class §default const static§
   {
      private var §,""§:int;
      
      private var §-!q§:Class;
      
      private var objects:Vector.<Object> = new Vector.<Object>();
      
      public function §default const static§(param1:Class)
      {
         super();
         this.§-!q§ = param1;
      }
      
      final public function §while var try§() : int
      {
         return this.§,""§;
      }
      
      final public function getObject() : Object
      {
         if(this.§,""§ == 0)
         {
            return new this.§-!q§(this);
         }
         var _loc1_:Object = this.objects[--this.§,""§];
         this.objects[this.§,""§] = null;
         return _loc1_;
      }
      
      final public function §@"'§(param1:Object) : void
      {
         if(this.§-!q§ != param1.constructor)
         {
            throw new ArgumentError();
         }
         var _loc2_:* = this.§,""§++;
         this.objects[_loc2_] = param1;
      }
      
      final public function clear() : void
      {
         this.objects.length = 0;
         this.§,""§ = 0;
      }
   }
}

