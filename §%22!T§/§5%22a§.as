package §"!T§
{
   import §#"a§.§use for var§;
   import §1!r§.§##§;
   import §1!r§.§^!K§;
   import §1!r§.§native var native§;
   import §@"A§.§else var try§;
   import alternativa.osgi.OSGi;
   import alternativa.tanks.service.panel.IPanelView;
   import alternativa.types.Long;
   import §finally for else§.§43§;
   import §finally for else§.§case include§;
   import §finally for else§.§continue const default§;
   import forms.events.MainButtonBarEvents;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadPostListener;
   import platform.client.fp10.core.registry.ModelRegistry;
   
   public class §5"a§ extends §43§ implements §continue const default§, ObjectLoadPostListener, ObjectUnloadPostListener
   {
      [Inject]
      public static var panelView:IPanelView;
      
      private var §>!2§:§use for var§;
      
      private var §7!,§:Boolean;
      
      public function §5"a§()
      {
         super();
      }
      
      public function showQuestWindowWithoutDailyQuests(param1:§else var try§) : void
      {
         if(!this.§7!,§)
         {
            this.§>!2§ = new §use for var§();
            this.§>!2§.addEventListener(§^!K§.§>!F§,this.§include for§);
            this.§>!2§.§+!L§(param1);
            this.§>!2§.§2!h§();
            this.§>!2§.show();
            this.§7!,§ = true;
         }
      }
      
      public function showQuestWindow(param1:Vector.<§case include§>, param2:§else var try§) : void
      {
         if(!this.§7!,§)
         {
            this.§>!2§ = new §use for var§();
            this.§>!2§.addEventListener(§##§.DAILY_QUEST_CHANGE,this.§if var var§);
            this.§>!2§.addEventListener(§native var native§.DAILY_QUEST_GET_PRIZE,this.§=!f§);
            this.§>!2§.addEventListener(§^!K§.§>!F§,this.§include for§);
            this.§7!,§ = true;
            this.§>!2§.init(param1);
            this.§>!2§.§+!L§(param2);
            this.§>!2§.show();
         }
      }
      
      private function §include for§(param1:§^!K§) : void
      {
         this.§>!2§.removeEventListener(§##§.DAILY_QUEST_CHANGE,this.§if var var§);
         this.§>!2§.removeEventListener(§native var native§.DAILY_QUEST_GET_PRIZE,this.§=!f§);
         this.§>!2§.removeEventListener(§^!K§.§>!F§,this.§include for§);
         this.§7!,§ = false;
      }
      
      private function §=!f§(param1:§native var native§) : void
      {
         §super for final§(ModelRegistry(OSGi.getInstance().getService(ModelRegistry)).getModel(Long.getLong(1302806391,660914812))).takePrize(param1.§function var const§);
      }
      
      private function §if var var§(param1:§##§) : void
      {
         §super for final§(ModelRegistry(OSGi.getInstance().getService(ModelRegistry)).getModel(Long.getLong(1302806391,660914812))).skipDailyQuest(param1.§function var const§);
      }
      
      public function skipDailyQuest(param1:Long, param2:§case include§) : void
      {
         if(this.§7!,§)
         {
            this.§>!2§.§ v§(param1,param2);
         }
      }
      
      public function takeDailyQuestPrize(param1:Long) : void
      {
         if(this.§7!,§)
         {
            this.§>!2§.takePrize(param1);
         }
      }
      
      public function objectLoadedPost() : void
      {
         panelView.getPanel().buttonBar.addEventListener(MainButtonBarEvents.PANEL_BUTTON_PRESSED,this.onButtonBarButtonClick);
      }
      
      public function objectUnloadedPost() : void
      {
         panelView.getPanel().buttonBar.removeEventListener(MainButtonBarEvents.PANEL_BUTTON_PRESSED,this.onButtonBarButtonClick);
      }
      
      private function onButtonBarButtonClick(param1:MainButtonBarEvents) : void
      {
         if(param1.typeButton == MainButtonBarEvents.§set super§)
         {
            server.§for set super§();
         }
      }
   }
}

