package §case var else§
{
   import alternativa.tanks.models.battle.gui.gui.statistics.field.score.ctf.§break var class§;
   import flash.utils.getTimer;
   
   public class §-k§ implements §`!v§
   {
      private var type:int;
      
      private var §true var else§:§`#§;
      
      private var blinker:§break var class§;
      
      private var §case const try§:int;
      
      public function §-k§(param1:int, param2:§`#§, param3:§break var class§, param4:int)
      {
         super();
         this.type = param1;
         this.§true var else§ = param2;
         this.blinker = param3;
         this.§case const try§ = param4;
      }
      
      public function getType() : int
      {
         return this.type;
      }
      
      public function start() : void
      {
         this.blinker.start(getTimer());
         this.§true var else§.§finally import§.visible = true;
         this.§true var else§.§finally import§.alpha = 1;
         this.§true var else§.§7!X§.visible = false;
         this.§true var else§.§#"N§.visible = true;
         this.§true var else§.§#"N§.alpha = 0;
      }
      
      public function stop() : void
      {
         this.blinker.stop();
      }
      
      public function update(param1:int, param2:int) : void
      {
         var _loc3_:Number = this.blinker.values[this.§case const try§];
         this.§true var else§.§finally import§.alpha = _loc3_;
         this.§true var else§.§#"N§.alpha = 1 - _loc3_;
      }
   }
}

