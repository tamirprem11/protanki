package alternativa.tanks.models.battle.gui.chat
{
   import §6!b§.§if var default§;
   import controls.Label;
   
   public class §[V§ extends §if var default§
   {
      private var output:Label = new Label();
      
      public function §[V§(param1:int, param2:String)
      {
         super();
         this.output.color = 8454016;
         this.output.multiline = true;
         this.output.wordWrap = true;
         this.output.mouseEnabled = false;
         this.output.text = param2;
         shadowContainer.addChild(this.output);
         this.width = param1;
      }
      
      [Obfuscation(rename="false")]
      override public function set width(param1:Number) : void
      {
         this.output.width = int(param1) - 5;
      }
   }
}

