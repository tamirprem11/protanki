package controls.checkbox
{
   import controls.base.LabelBase;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §#!#§ extends Sprite
   {
      private static const §import finally§:Class = §]!W§;
      
      private static const §3Q§:BitmapData = Bitmap(new §import finally§()).bitmapData;
      
      private static const §'!b§:Class = §?;§;
      
      private static const §do set null§:BitmapData = Bitmap(new §'!b§()).bitmapData;
      
      private static const §4!3§:Class = §override set use§;
      
      private static const §case set for§:BitmapData = Bitmap(new §4!3§()).bitmapData;
      
      private static const §class const extends§:Class = §6!I§;
      
      private static const §=!N§:BitmapData = Bitmap(new §class const extends§()).bitmapData;
      
      private var §switch case§:Bitmap;
      
      private var §3"F§:Bitmap;
      
      private var §"!b§:Bitmap;
      
      private var §]!B§:Bitmap;
      
      private var §!"^§:Array;
      
      private var _checked:Boolean;
      
      private var §use for while§:Boolean;
      
      private var _enabled:Boolean;
      
      protected var §@Z§:LabelBase;
      
      public function §#!#§(param1:BitmapData = null)
      {
         super();
         this.§3"F§ = new Bitmap(§do set null§);
         addChild(this.§3"F§);
         this.§"!b§ = new Bitmap(§case set for§);
         addChild(this.§"!b§);
         this.§]!B§ = new Bitmap(§=!N§);
         addChild(this.§]!B§);
         this.§switch case§ = new Bitmap(param1 != null ? param1 : §3Q§);
         addChild(this.§switch case§);
         this.§switch case§.visible = false;
         this.§!"^§ = [this.§3"F§,this.§"!b§,this.§]!B§];
         tabEnabled = false;
         this.§^<§(this.§3"F§);
         this.enabled = true;
         this.§@Z§ = new LabelBase();
         this.§@Z§.x = 29;
         this.§@Z§.y = 7;
         addChild(this.§@Z§);
      }
      
      private function §^<§(param1:Bitmap) : void
      {
         var _loc2_:Bitmap = null;
         for each(_loc2_ in this.§!"^§)
         {
            _loc2_.visible = false;
         }
         param1.visible = true;
      }
      
      public function get checked() : Boolean
      {
         return this._checked;
      }
      
      public function §switch for false§(param1:Boolean) : void
      {
         if(this._checked != param1)
         {
            this._checked = param1;
            this.§switch case§.visible = this._checked;
         }
      }
      
      public function set checked(param1:Boolean) : void
      {
         if(this._checked != param1)
         {
            this.changeState();
         }
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this._enabled != param1)
         {
            this._enabled = param1;
            if(this._enabled)
            {
               buttonMode = true;
               mouseEnabled = true;
               this.addListeners();
            }
            else
            {
               buttonMode = false;
               mouseEnabled = false;
               this.removeListeners();
            }
         }
      }
      
      public function set label(param1:String) : void
      {
         this.§@Z§.text = param1;
      }
      
      public function §"!&§(param1:int) : void
      {
         this.§@Z§.y += param1;
      }
      
      private function addListeners() : void
      {
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseEvent);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseEvent);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseEvent);
         addEventListener(MouseEvent.MOUSE_UP,this.onMouseEvent);
      }
      
      private function removeListeners() : void
      {
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseEvent);
         removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseEvent);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseEvent);
         removeEventListener(MouseEvent.MOUSE_UP,this.onMouseEvent);
      }
      
      private function onMouseEvent(param1:MouseEvent) : void
      {
         this.§switch case§.y = 0;
         switch(param1.type)
         {
            case MouseEvent.MOUSE_OVER:
               this.§^<§(this.§]!B§);
               break;
            case MouseEvent.MOUSE_OUT:
               this.§use for while§ = false;
               this.§^<§(this.§3"F§);
               break;
            case MouseEvent.MOUSE_DOWN:
               if(this._checked)
               {
                  this.§switch case§.y = 2;
               }
               this.§use for while§ = true;
               this.§^<§(this.§"!b§);
               break;
            case MouseEvent.MOUSE_UP:
               this.§^<§(this.§]!B§);
               if(this.§use for while§)
               {
                  this.§use for while§ = false;
                  this.changeState();
               }
         }
      }
      
      private function changeState() : void
      {
         this._checked = !this._checked;
         this.§switch case§.visible = this._checked;
         dispatchEvent(new CheckBoxEvent(CheckBoxEvent.STATE_CHANGED));
      }
   }
}

