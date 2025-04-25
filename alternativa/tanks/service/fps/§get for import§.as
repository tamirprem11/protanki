package alternativa.tanks.service.fps
{
   import alternativa.osgi.service.display.IDisplay;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class §get for import§ implements FPSService
   {
      [Inject]
      public static var §&"P§:IDisplay;
      
      private var fps:Number;
      
      private var §else const throw§:Number;
      
      private var lastTime:int;
      
      private var numFrames:int;
      
      private var §["X§:Boolean;
      
      private var §break set null§:Boolean;
      
      public function §get for import§()
      {
         super();
      }
      
      public function start() : void
      {
         this.§84§(§&"P§.stage.frameRate);
         §&"P§.stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §&"P§.stage.addEventListener(Event.DEACTIVATE,this.§8X§);
         this.§["X§ = false;
         this.§break set null§ = true;
      }
      
      private function §9"$§(param1:Event) : void
      {
         if(param1.target == §&"P§.stage)
         {
            §&"P§.stage.removeEventListener(Event.ACTIVATE,this.§9"$§);
            this.§["X§ = false;
            this.§break set null§ = true;
         }
      }
      
      private function §8X§(param1:Event) : void
      {
         if(param1.target == §&"P§.stage)
         {
            §&"P§.stage.addEventListener(Event.ACTIVATE,this.§9"$§);
            this.§["X§ = true;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§["X§)
         {
            return;
         }
         if(this.§break set null§)
         {
            this.lastTime = getTimer();
            this.numFrames = 0;
            this.§break set null§ = false;
            return;
         }
         var _loc2_:int = getTimer();
         ++this.numFrames;
         if(_loc2_ - this.lastTime > 2000)
         {
            this.§84§(1000 * this.numFrames / (_loc2_ - this.lastTime));
            this.lastTime = _loc2_;
            this.numFrames = 0;
         }
      }
      
      private function §84§(param1:Number) : void
      {
         this.fps = param1;
         this.§else const throw§ = 1000 / param1;
      }
      
      public function §;!z§() : Number
      {
         return this.fps;
      }
      
      public function §-d§() : Number
      {
         return this.§else const throw§;
      }
   }
}

