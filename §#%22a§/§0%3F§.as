package §#"a§
{
   import alternativa.osgi.service.locale.ILocaleService;
   import controls.base.LabelBase;
   import §finally for else§.§case include§;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.text.TextFormatAlign;
   import projects.tanks.client.panel.model.dailyquest.§^"#§;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §0?§ extends Sprite
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      private var §==§:Bitmap;
      
      private var §super var in§:Bitmap;
      
      private var §7"'§:Bitmap;
      
      private var §extends class§:Bitmap;
      
      private var § "g§:Bitmap;
      
      private var §"!L§:Bitmap;
      
      private var §case set break§:Bitmap;
      
      private var §%$§:Bitmap;
      
      private var §5!X§:Bitmap;
      
      private var §function var const§:§case include§;
      
      private var _width:int;
      
      private var _height:int;
      
      private var §[x§:LabelBase;
      
      private var §+"N§:LabelBase;
      
      private var §0"U§:LabelBase;
      
      private var §,!5§:LabelBase;
      
      private var §package for final§:Vector.<LabelBase>;
      
      private const §try catch§:int = 5;
      
      private const §5"+§:int = 4;
      
      private const §+h§:int = 14;
      
      private const §extends throw§:int = 9;
      
      private const §continue var return§:int = 50;
      
      private const §else for super§:int = 14;
      
      private const §finally for§:int = 8;
      
      private const §8p§:int = 10;
      
      private const HEADER_COLOR:uint = 5898034;
      
      private const §class for native§:uint = 16777215;
      
      public function §0?§(param1:§case include§)
      {
         super();
         this.§function var const§ = param1;
         this._width = §use for var§.§package switch§ - this.§8p§ * 2;
         this._height = this.§,",§();
         this.§package for final§ = new Vector.<LabelBase>();
         this.§else const final§();
         this.§?";§();
         this.§@A§();
         this.§use for do§();
         this.drawBackground();
         this.§"!P§();
         this.§@h§();
      }
      
      private function §else const final§() : void
      {
         this.§==§ = new Bitmap(§?4§.§var for get§);
         addChild(this.§==§);
         this.§super var in§ = new Bitmap(§?4§.§0"3§);
         addChild(this.§super var in§);
         this.§7"'§ = new Bitmap(§?4§.§function var finally§);
         addChild(this.§7"'§);
         this.§super var in§.x = this.§==§.width;
         this.§7"'§.x = this._width - this.§7"'§.width;
         this.§super var in§.width = this.§7"'§.x - this.§super var in§.x;
      }
      
      private function §?";§() : void
      {
         this.§extends class§ = new Bitmap(§?4§.§native for finally§);
         this.§extends class§.y = this._height - this.§extends class§.height;
         addChild(this.§extends class§);
         this.§ "g§ = new Bitmap(§?4§.§with for continue§);
         this.§ "g§.y = this.§extends class§.y;
         this.§ "g§.x = this.§extends class§.width;
         this.§ "g§.width = this.§super var in§.width;
         addChild(this.§ "g§);
         this.§"!L§ = new Bitmap(§?4§.§&"C§);
         this.§"!L§.y = this.§extends class§.y;
         this.§"!L§.x = this.§7"'§.x;
         addChild(this.§"!L§);
      }
      
      private function §@A§() : void
      {
         this.§case set break§ = new Bitmap(§?4§.§var var case§);
         this.§case set break§.y = this.§==§.height;
         this.§case set break§.height = this._height - this.§==§.height - this.§extends class§.height;
         addChild(this.§case set break§);
      }
      
      private function §use for do§() : void
      {
         this.§%$§ = new Bitmap(§?4§.§&!B§);
         this.§%$§.y = this.§case set break§.y;
         this.§%$§.x = this.§"!L§.x;
         this.§%$§.height = this.§case set break§.height;
         addChild(this.§%$§);
      }
      
      private function drawBackground() : void
      {
         this.§5!X§ = new Bitmap(§?4§.§!n§);
         this.§5!X§.y = this.§==§.height + this.§==§.y;
         this.§5!X§.x = this.§==§.width;
         this.§5!X§.height = this._height - this.§extends class§.height - this.§==§.height;
         this.§5!X§.width = this._width - this.§==§.width - this.§7"'§.width;
         addChild(this.§5!X§);
      }
      
      private function §"!P§() : void
      {
         this.§ !E§();
         this.§package set set§();
         this.§override var set§();
      }
      
      private function § !E§() : void
      {
         this.§0"U§ = new LabelBase();
         this.§0"U§.color = this.HEADER_COLOR;
         this.§0"U§.align = TextFormatAlign.LEFT;
         this.§0"U§.text = localeService.getText(TanksLocale.TEXT_DAILY_QUEST_GOAL);
         this.§0"U§.x = this.§try catch§;
         this.§0"U§.y = this.§5"+§;
         addChild(this.§0"U§);
      }
      
      private function §package set set§() : void
      {
         this.§+"N§ = new LabelBase();
         this.§+"N§.color = this.§class for native§;
         this.§+"N§.align = TextFormatAlign.LEFT;
         this.§+"N§.text = this.§import for while§();
         this.§+"N§.x = this._width - this.§extends throw§ - this.§+"N§.textWidth;
         this.§+"N§.y = this.§0"U§.y + this.§+h§;
         addChild(this.§+"N§);
      }
      
      private function §override var set§() : void
      {
         this.§[x§ = new LabelBase();
         this.§[x§.color = this.§class for native§;
         this.§[x§.align = TextFormatAlign.LEFT;
         this.§[x§.text = this.§function var const§.description;
         this.§[x§.wordWrap = true;
         this.§[x§.width = this.§+"N§.x - this.§8p§;
         this.§[x§.x = this.§0"U§.x;
         this.§[x§.y = this.§+"N§.y;
         addChild(this.§[x§);
      }
      
      private function §import for while§() : String
      {
         return this.§function var const§.progress + "/" + this.§function var const§.finishCriteria;
      }
      
      private function §@h§() : void
      {
         this.§,!5§ = new LabelBase();
         this.§,!5§.color = this.HEADER_COLOR;
         this.§,!5§.align = TextFormatAlign.LEFT;
         this.§,!5§.text = localeService.getText(TanksLocale.TEXT_DAILY_QUEST_PRIZE);
         this.§,!5§.x = this.§try catch§;
         this.§,!5§.y = this.§continue var return§;
         addChild(this.§,!5§);
         this.§;,§();
      }
      
      public function §switch for import§(param1:§case include§) : void
      {
         this.§function var const§ = param1;
         this.§[x§.text = this.§function var const§.description;
         this.§+"N§.text = this.§import for while§();
         this.§+"N§.x = this._width - this.§extends throw§ - this.§+"N§.textWidth;
         this.§#R§(this.§,",§());
         this.§%N§();
         this.§;,§();
      }
      
      public function §#R§(param1:int) : void
      {
         this.§extends class§.y = param1 - this.§extends class§.height;
         this.§ "g§.y = this.§extends class§.y;
         this.§"!L§.y = this.§extends class§.y;
         this.§case set break§.height = param1 - this.§==§.height - this.§extends class§.height;
         this.§%$§.height = this.§case set break§.height;
         this.§5!X§.height = param1 - this.§extends class§.height - this.§==§.height;
      }
      
      private function §%N§() : void
      {
         var _loc1_:LabelBase = null;
         for each(_loc1_ in this.§package for final§)
         {
            removeChild(_loc1_);
         }
         this.§package for final§.splice(0,this.§package for final§.length);
      }
      
      private function §;,§() : void
      {
         var _loc1_:§^"#§ = null;
         var _loc2_:LabelBase = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§function var const§.prizes.length)
         {
            _loc1_ = this.§function var const§.prizes[_loc3_];
            _loc2_ = new LabelBase();
            _loc2_.color = this.§class for native§;
            _loc2_.align = TextFormatAlign.LEFT;
            _loc2_.text = _loc1_.name + " × " + _loc1_.count;
            _loc2_.x = this.§try catch§;
            _loc2_.y = this.§continue var return§ + this.§+h§ + _loc3_ * this.§else for super§;
            addChild(_loc2_);
            this.§package for final§.push(_loc2_);
            _loc3_++;
         }
      }
      
      public function §,",§() : int
      {
         return this.§continue var return§ + this.§+h§ + this.§else for super§ * this.§function var const§.prizes.length + this.§finally for§;
      }
   }
}

