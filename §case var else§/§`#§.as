package §case var else§
{
   import alternativa.tanks.models.battle.gui.gui.statistics.field.score.ctf.§break var class§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   
   public class §`#§ extends Sprite
   {
      public static const §switch super§:int = 1;
      
      public static const §break for get§:int = 2;
      
      public static const §%z§:int = 3;
      
      public static const §each for final§:int = 4;
      
      public var §finally import§:Bitmap;
      
      public var §#"N§:Bitmap;
      
      public var §7!X§:Bitmap;
      
      private var states:Dictionary = new Dictionary();
      
      private var currentState:§`!v§;
      
      public function §`#§(param1:Bitmap, param2:Bitmap, param3:Bitmap, param4:§break var class§)
      {
         super();
         this.§finally import§ = param1;
         this.§#"N§ = param2;
         this.§7!X§ = param3;
         addChild(param1);
         addChild(param2);
         addChild(param3);
         this.states[§switch super§] = new §var var dynamic§(§switch super§,this);
         this.states[§each for final§] = new §with package§(§each for final§,this,10 / 1000,1 / 1000,300);
         this.states[§break for get§] = new §-k§(§break for get§,this,param4,0);
         this.states[§%z§] = new §-k§(§%z§,this,param4,1);
         this.currentState = this.states[§switch super§];
         this.currentState.start();
      }
      
      public function setState(param1:int) : void
      {
         if(this.currentState.getType() == param1)
         {
            return;
         }
         this.currentState.stop();
         this.currentState = this.states[param1];
         this.currentState.start();
      }
      
      public function update(param1:int, param2:int) : void
      {
         this.currentState.update(param1,param2);
      }
   }
}

