package alternativa.tanks.models.battle.battlefield
{
   import alternativa.osgi.service.clientlog.IClientLog;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.§get var throw§;
   import flash.display.Stage;
   import flash.display.StageQuality;
   import projects.tanks.clients.flash.commons.models.gpu.GPUCapabilities;
   
   public class §-"Q§ extends §case const var§ implements §do for switch§
   {
      [Inject]
      public static var clientLog:IClientLog;
      
      [Inject]
      public static var display:IDisplay;
      
      private static const §extends for if§:Number = 144;
      
      private static const §4g§:Number = 40;
      
      private static const §8">§:int = 10;
      
      private static const §-C§:int = 30;
      
      private var stage:Stage;
      
      private var §&!;§:§get const use§;
      
      private var §return var null§:int;
      
      private var frameCounter:int;
      
      private var §break finally§:Number;
      
      private var §!!9§:String;
      
      private var §"!U§:Boolean;
      
      public function §-"Q§(param1:Stage, param2:§get var throw§, param3:§get const use§)
      {
         super();
         this.stage = param1;
         this.§&!;§ = param3;
         this.§-s§();
         this.§3";§();
         this.§3"%§();
      }
      
      private function §3";§() : void
      {
         this.§break finally§ = this.stage.frameRate;
         this.§!!9§ = this.stage.quality;
      }
      
      private function §3"%§() : void
      {
         this.stage.frameRate = this.§return var null§;
         if(GPUCapabilities.gpuEnabled)
         {
            this.stage.quality = StageQuality.MEDIUM;
         }
         else
         {
            this.stage.quality = StageQuality.LOW;
         }
      }
      
      public function §const var final§() : void
      {
         this.stage.frameRate = this.§break finally§;
         this.stage.quality = this.§!!9§;
      }
      
      private function §-s§() : void
      {
         if(GPUCapabilities.gpuEnabled)
         {
            this.§return var null§ = §extends for if§;
         }
         else
         {
            this.§return var null§ = §4g§;
         }
      }
      
      public function §@!%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§!!L§();
         }
         else
         {
            this.§each const static§();
         }
      }
      
      private function §!!L§() : void
      {
         if(!this.§"!U§)
         {
            §try var final§().§finally var false§(this);
            this.§"!U§ = true;
         }
      }
      
      private function §each const static§() : void
      {
         if(this.§"!U§)
         {
            §try var final§().§<!3§(this);
            this.§"!U§ = false;
            this.stage.frameRate = this.§return var null§;
         }
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         ++this.frameCounter;
         if(this.frameCounter == §-C§)
         {
            this.frameCounter = 0;
            if(this.§use var§())
            {
               this.§ n§();
            }
            else
            {
               this.§class const in§();
            }
         }
      }
      
      private function §use var§() : Boolean
      {
         return this.§&!;§.fps < display.stage.frameRate - 1;
      }
      
      private function § n§() : void
      {
         display.stage.frameRate = this.§&!;§.fps < §8">§ ? Number(§8">§) : Number(this.§&!;§.fps);
      }
      
      private function §class const in§() : void
      {
         var _loc1_:Number = display.stage.frameRate + 1;
         display.stage.frameRate = _loc1_ > this.§return var null§ ? Number(this.§return var null§) : Number(_loc1_);
      }
   }
}

