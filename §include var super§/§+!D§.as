package §include var super§
{
   import §!4§.§["^§;
   import §1J§.§true case§;
   import §6!b§.§if var default§;
   import §8=§.MessageColor;
   import controls.Label;
   import forms.userlabel.ChatUpdateEvent;
   import §null for var§.§1y§;
   import §null for var§.§2^§;
   
   public class §+!D§ extends §if var default§
   {
      private var §try set switch§:§1y§;
      
      private var label:Label;
      
      public function §+!D§(param1:§true case§, param2:String, param3:§true case§ = null)
      {
         super();
         if(param1 != null)
         {
            this.§continue var class§(param1);
         }
         this.§@!A§(param2);
         if(param3 != null)
         {
            this.§continue var class§(param3);
         }
      }
      
      private function §continue var class§(param1:§true case§) : void
      {
         this.§try set switch§ = new §2^§(param1.userId);
         this.§try set switch§.addEventListener(ChatUpdateEvent.UPDATE,this.§^`§);
         this.§try set switch§.setUidColor(MessageColor.§false for package§(param1.teamType,false),true);
         this.§try set switch§.x = width + 4;
         addChild(this.§try set switch§);
      }
      
      private function §^`§(param1:ChatUpdateEvent) : void
      {
         this.§try set switch§.x = 4;
         this.label.x = this.§try set switch§.width + 4;
         dispatchEvent(new §["^§(§["^§.§default const final§,this));
      }
      
      private function §@!A§(param1:String) : void
      {
         this.label = new Label();
         this.label.text = param1;
         this.label.x = width + 4;
         shadowContainer.addChild(this.label);
      }
   }
}

