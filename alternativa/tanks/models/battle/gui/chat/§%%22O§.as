package alternativa.tanks.models.battle.gui.chat
{
   import §8=§.MessageColor;
   import controls.Label;
   import flash.display.Sprite;
   import flash.text.TextFieldAutoSize;
   
   public class §%"O§ extends Sprite
   {
      private var label:Label;
      
      public function §%"O§()
      {
         super();
         this.label = new Label();
         this.label.color = MessageColor.YELLOW;
         this.label.autoSize = TextFieldAutoSize.LEFT;
         this.label.multiline = true;
         this.label.wordWrap = true;
         this.label.mouseEnabled = false;
         addChild(this.label);
      }
      
      public function setText(param1:String) : void
      {
         this.label.text = param1;
      }
      
      public function §var for for§(param1:Number) : void
      {
         this.label.width = param1;
      }
      
      public function getText() : String
      {
         return this.label.text;
      }
   }
}

