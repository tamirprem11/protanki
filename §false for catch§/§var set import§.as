package §false for catch§
{
   import alternativa.tanks.camera.§+"5§;
   import alternativa.tanks.camera.§set set dynamic§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   
   public class §var set import§ implements §4R§
   {
      private var §native const get§:Object = new §+"5§(10);
      
      private var §?"<§:Dictionary = new Dictionary();
      
      private var controller:§catch extends§;
      
      public function §var set import§(param1:§catch extends§)
      {
         super();
         this.controller = param1;
         this.§%!q§();
      }
      
      public function §<"%§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = this.§?"<§[param1.keyCode];
         if(_loc2_ != null)
         {
            if(param1.ctrlKey)
            {
               this.saveCurrentPositionCameraToBookmark(_loc2_);
            }
            else
            {
               this.§implements var each§(_loc2_);
            }
         }
      }
      
      public function §function const package§(param1:KeyboardEvent) : void
      {
      }
      
      private function §%!q§() : void
      {
         this.§?"<§[Keyboard.NUMBER_0] = 0;
         this.§?"<§[Keyboard.NUMBER_1] = 1;
         this.§?"<§[Keyboard.NUMBER_2] = 2;
         this.§?"<§[Keyboard.NUMBER_3] = 3;
         this.§?"<§[Keyboard.NUMBER_4] = 4;
         this.§?"<§[Keyboard.NUMBER_5] = 5;
         this.§?"<§[Keyboard.NUMBER_6] = 6;
         this.§?"<§[Keyboard.NUMBER_7] = 7;
         this.§?"<§[Keyboard.NUMBER_8] = 8;
         this.§?"<§[Keyboard.NUMBER_9] = 9;
      }
      
      private function saveCurrentPositionCameraToBookmark(param1:int) : void
      {
         this.§native const get§.saveCurrentPositionCameraToBookmark(param1);
      }
      
      private function §implements var each§(param1:int) : void
      {
         var _loc2_:§set set dynamic§ = this.§native const get§.getBookmark(param1);
         if(_loc2_ != null)
         {
            this.controller.§implements set super§(_loc2_.position,_loc2_.§!R§);
         }
      }
   }
}

