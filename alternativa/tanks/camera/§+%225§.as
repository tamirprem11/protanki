package alternativa.tanks.camera
{
   public class §+"5§
   {
      private var §native const get§:Vector.<§set set dynamic§>;
      
      public function §+"5§(param1:int)
      {
         super();
         this.§native const get§ = new Vector.<§set set dynamic§>(param1);
      }
      
      public function getBookmark(param1:uint) : §set set dynamic§
      {
         if(param1 < this.§native const get§.length)
         {
            return this.§native const get§[param1];
         }
         return null;
      }
      
      public function saveCurrentPositionCameraToBookmark(param1:uint) : void
      {
         if(param1 < this.§native const get§.length)
         {
            this.§2!0§(param1).§'![§();
         }
      }
      
      private function §2!0§(param1:uint) : §set set dynamic§
      {
         if(this.§native const get§[param1] == null)
         {
            this.§native const get§[param1] = new §set set dynamic§();
         }
         return this.§native const get§[param1];
      }
   }
}

