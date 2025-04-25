package scpacker.utils
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.§do for switch§;
   import flash.utils.getTimer;
   
   public class §super var super§ implements §do for switch§
   {
      private static const §=<§:int = 5000;
      
      public static var display:IDisplay = IDisplay(OSGi.getInstance().getService(IDisplay));
      
      private var §finally set const§:int;
      
      private var §0t§:Boolean = true;
      
      public function §super var super§()
      {
         super();
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         var _loc3_:int = getTimer();
         if(this.§0t§)
         {
            this.§finally set const§ = _loc3_;
            this.§0t§ = false;
         }
         if(display.stage.frameRate >= 70 && this.§finally set const§ + §=<§ >= _loc3_)
         {
            this.§4!$§();
            this.§finally set const§ = _loc3_;
         }
      }
      
      private function §4!$§() : void
      {
         display.stage.frameRate = 144;
      }
   }
}

