package §for const get§
{
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.targeting.§3F§;
   import alternativa.tanks.services.targeting.TargetingInputManager;
   import alternativa.tanks.services.targeting.TargetingModeService;
   import §const set false§.§+!0§;
   import §const set false§.§+"3§;
   import §const set false§.§,"Y§;
   
   public class §2!q§ implements §+!0§, §3F§
   {
      [Inject]
      public static var §2!a§:TargetingModeService;
      
      [Inject]
      public static var §get for function§:TargetingInputManager;
      
      [Inject]
      public static var §>!Y§:KeysBindingService;
      
      protected var §&>§:§+"3§;
      
      protected var §var break§:§,"Y§;
      
      protected var §2y§:§,"Y§;
      
      public function §2!q§(param1:§+"3§)
      {
         super();
         this.§&>§ = param1;
         this.§static var default§(§,"Y§.§^!T§);
         §2!a§.§static var default§(§,"Y§.§^!T§);
      }
      
      public function keyboardButton(param1:uint, param2:Boolean) : Boolean
      {
         var _loc3_:§%!6§ = §>!Y§.§case do§(param1);
         if(!_loc3_)
         {
            return true;
         }
         this.§&>§.§["K§(_loc3_.value,param2);
         this.§83§(_loc3_,param2);
         return true;
      }
      
      protected function §83§(param1:§%!6§, param2:Boolean) : void
      {
         switch(param1)
         {
            case this.§var break§.§super try§:
               this.§&>§.rotateLeft(param2);
               break;
            case this.§var break§.§default const use§:
               this.§&>§.rotateRight(param2);
               break;
            case this.§var break§.§null for const§:
               this.§&>§.§else const return§(param2);
               break;
            case this.§var break§.§+!G§:
               this.§&>§.§override in§(param2);
               break;
            case this.§var break§.§<!1§:
               this.§&>§.center(param2);
         }
      }
      
      public function enter() : void
      {
         §get for function§.addListener(this);
         if(this.§2y§ == null)
         {
            this.§2y§ = §2!a§.§5"Y§();
            §2!a§.§static var default§(this.§var break§);
         }
         this.§override if§();
      }
      
      private function §override if§() : void
      {
         this.§const for implements§(this.§var break§.§<!1§);
         this.§const for implements§(this.§var break§.§+!G§);
         this.§const for implements§(this.§var break§.§super try§);
         this.§const for implements§(this.§var break§.§default const use§);
         this.§const for implements§(this.§var break§.§null for const§);
      }
      
      private function §const for implements§(param1:§%!6§) : void
      {
         if(!param1)
         {
            return;
         }
         if(this.§&>§.§1!w§(param1.value))
         {
            this.§83§(param1,true);
         }
      }
      
      public function exit() : void
      {
         §get for function§.removeListener(this);
         if(this.§2y§ != null)
         {
            §2!a§.§static var default§(this.§2y§);
            this.§2y§ = null;
         }
      }
      
      protected function §static var default§(param1:§,"Y§) : void
      {
         this.§var break§ = param1;
      }
      
      public function tick(param1:Number) : void
      {
      }
      
      public function mouseAbsoluteMovement(param1:Number, param2:Number) : void
      {
      }
      
      public function mouseRelativeMovement(param1:Number, param2:Number) : void
      {
      }
      
      public function mouseLeftButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      public function mouseWheel(param1:int) : void
      {
      }
      
      public function mouseRightButton(param1:Boolean, param2:Boolean) : Boolean
      {
         return true;
      }
      
      public function mouseLocked(param1:Boolean) : void
      {
      }
   }
}

