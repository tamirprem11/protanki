package alternativa.tanks.gui
{
   import alternativa.osgi.service.locale.ILocaleService;
   import §case for in§.§while var static§;
   import controls.base.LabelBase;
   import flash.display.Sprite;
   import forms.ColorConstants;
   import forms.userlabel.UserLabel;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §;6§ extends Sprite
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      private var §;!8§:LabelBase;
      
      private var §if for return§:UserLabel;
      
      private var dateLabel:LabelBase;
      
      private var messageLabel:LabelBase;
      
      public function §;6§(param1:int)
      {
         var _loc2_:LabelBase = null;
         super();
         this.§;!8§ = new LabelBase();
         this.§;!8§.text = localeService.getText(TanksLocale.TEXT_PRESENT_INFO_FROM_LABEL);
         this.§;!8§.color = ColorConstants.GREEN_TEXT;
         addChild(this.§;!8§);
         this.dateLabel = new LabelBase();
         this.dateLabel.y = this.§;!8§.height;
         this.dateLabel.color = ColorConstants.GREEN_TEXT;
         addChild(this.dateLabel);
         _loc2_ = new LabelBase();
         _loc2_.y = this.dateLabel.y + this.dateLabel.height + 12;
         _loc2_.text = localeService.getText(TanksLocale.TEXT_PRESENT_INFO_MESSAGE_LABEL);
         _loc2_.color = ColorConstants.GREEN_TEXT;
         addChild(_loc2_);
         this.messageLabel = new LabelBase();
         this.messageLabel.multiline = true;
         this.messageLabel.wordWrap = true;
         this.messageLabel.width = param1;
         this.messageLabel.color = ColorConstants.GREEN_TEXT;
         this.messageLabel.y = _loc2_.y + this.dateLabel.height + 12;
         addChild(this.messageLabel);
      }
      
      public function update(param1:String, param2:Date, param3:String) : void
      {
         this.§+;§();
         this.§if for return§ = new UserLabel(param1);
         this.§if for return§.x = this.§;!8§.textWidth + 2;
         addChild(this.§if for return§);
         this.dateLabel.text = localeService.getText(TanksLocale.TEXT_PRESENT_INFO_DATE_LABEL) + " " + §while var static§.§1"`§(param2) + " " + §while var static§.formatTime(param2);
         this.messageLabel.text = param3;
      }
      
      public function §continue for true§(param1:Number) : void
      {
         this.messageLabel.width = param1;
      }
      
      public function §+;§() : void
      {
         if(this.§if for return§ != null)
         {
            if(contains(this.§if for return§))
            {
               removeChild(this.§if for return§);
            }
            this.§if for return§ = null;
         }
      }
      
      public function destroy() : void
      {
         this.§+;§();
      }
   }
}

