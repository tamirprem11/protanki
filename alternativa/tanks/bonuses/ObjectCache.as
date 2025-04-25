package alternativa.tanks.bonuses
{
   public class ObjectCache
   {
      private var size:int;
      
      private var objects:Vector.<Object> = new Vector.<Object>();
      
      public function ObjectCache()
      {
         super();
      }
      
      public function put(param1:Object) : void
      {
         var _loc2_:* = this.size++;
         this.objects[_loc2_] = param1;
      }
      
      public function get() : Object
      {
         if(this.isEmpty())
         {
            throw new Error();
         }
         --this.size;
         var _loc1_:Object = this.objects[this.size];
         this.objects[this.size] = null;
         return _loc1_;
      }
      
      public function isEmpty() : Boolean
      {
         return this.size == 0;
      }
      
      public function clear() : void
      {
         var _loc1_:Object = null;
         this.objects.length = 0;
         this.size = 0;
      }
   }
}

