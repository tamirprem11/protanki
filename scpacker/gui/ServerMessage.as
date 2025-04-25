package scpacker.gui
{
   import controls.base.LabelBase;
   import controls.statassets.BlackRoundRect;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class ServerMessage extends Sprite
   {
      private var bg:BlackRoundRect = new BlackRoundRect();
      
      private var label:LabelBase = new LabelBase();
      
      public function ServerMessage(param1:String)
      {
         super();
         addChild(this.bg);
         addChild(this.label);
         this.label.text = param1;
         this.label.size = 14;
         this.label.x = 10;
         this.bg.width = this.label.width + 20;
         this.bg.height = this.label.height + 30;
         this.label.y = this.bg.height / 2 - this.label.height / 2 - 2;
         this.resize(null);
      }
      
      private function resize(param1:Event) : void
      {
      }
   }
}

