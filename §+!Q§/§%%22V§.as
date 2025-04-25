package §+!Q§
{
   import alternativa.tanks.models.battle.gui.gui.statistics.field.§,"_§;
   import flash.events.Event;
   
   public class §%"V§ extends §,"_§
   {
      protected var _value:int;
      
      protected var §>!>§:int;
      
      private var §finally for set§:§?!T§;
      
      public function §%"V§(param1:int, param2:int, param3:§?!T§)
      {
         super(param2);
         this.§>!>§ = param1;
         this.§finally for set§ = param3;
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
      }
      
      public function set value(param1:int) : void
      {
         this._value = param1;
         this.updateLabel();
         if(this._value <= this.§>!>§)
         {
            this.§return for do§();
         }
         else
         {
            this.§set const else§();
         }
      }
      
      public function §return for do§() : void
      {
         if(this.§finally for set§ != null)
         {
            this.§finally for set§.§^!;§(this);
         }
      }
      
      public function §set const else§() : void
      {
         if(this.§finally for set§ != null)
         {
            this.§finally for set§.§&"8§(this);
         }
         label.visible = true;
      }
      
      public function get §""4§() : Boolean
      {
         return label.visible;
      }
      
      public function set §""4§(param1:Boolean) : void
      {
         label.visible = param1;
      }
      
      protected function updateLabel() : void
      {
         text = this._value.toString();
      }
      
      protected function onRemovedFromStage(param1:Event) : void
      {
         this.§set const else§();
      }
   }
}

