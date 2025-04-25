package alternativa.tanks.utils
{
   public class §0s§
   {
      private var §`"&§:Vector.<uint> = new Vector.<uint>();
      
      public function §0s§()
      {
         super();
      }
      
      public function § "7§(param1:uint) : Boolean
      {
         return this.§`"&§.indexOf(param1) != -1;
      }
      
      public function §8!9§(param1:uint) : void
      {
         if(this.§`"&§.indexOf(param1) == -1)
         {
            this.§`"&§.push(param1);
         }
      }
      
      public function §with set var§(param1:uint) : void
      {
         var _loc2_:Number = Number(this.§`"&§.indexOf(param1));
         if(_loc2_ >= 0)
         {
            this.§`"&§.splice(_loc2_,1);
         }
      }
   }
}

