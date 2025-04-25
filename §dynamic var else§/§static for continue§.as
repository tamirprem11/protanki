package §dynamic var else§
{
   import §1J§.§1""§;
   import §],§.§while var const§;
   import alternativa.osgi.service.locale.ILocaleService;
   import controls.Label;
   import controls.resultassets.ResultWindowBase;
   import controls.resultassets.ResultWindowBlue;
   import controls.resultassets.ResultWindowBlueHeader;
   import controls.resultassets.ResultWindowGreen;
   import controls.resultassets.ResultWindowGreenHeader;
   import controls.resultassets.ResultWindowRed;
   import controls.resultassets.ResultWindowRedHeader;
   import controls.scroller.blue.ScrollSkinBlue;
   import controls.scroller.blue.ScrollThumbSkinBlue;
   import controls.scroller.green.ScrollSkinGreen;
   import controls.scroller.green.ScrollThumbSkinGreen;
   import controls.scroller.red.ScrollSkinRed;
   import controls.scroller.red.ScrollThumbSkinRed;
   import fl.controls.List;
   import fl.data.DataProvider;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormatAlign;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §static for continue§ extends Sprite
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      private static var §;!I§:Object;
      
      public static const BLUE:int = 0;
      
      public static const RED:int = 1;
      
      public static const GREEN:int = 2;
      
      private static const §final set static§:int = 52;
      
      private static const §var set switch§:int = 7;
      
      private static const §switch throw§:int = 12;
      
      private static const §`"K§:int = 20;
      
      private var list:List;
      
      private var dp:DataProvider = new DataProvider();
      
      private var inner:ResultWindowBase;
      
      private var type:int;
      
      private var §%"B§:String;
      
      private var §get const const§:Boolean;
      
      private var §dynamic with§:§while var const§;
      
      private var header:Sprite;
      
      private var §"!'§:String;
      
      private var §static const each§:String;
      
      private var §-"A§:String;
      
      private var §super for with§:String;
      
      private var include:String;
      
      private var §]"K§:String;
      
      private var §,!3§:String;
      
      private var §>"I§:Boolean;
      
      public function §static for continue§(param1:int, param2:String, param3:Boolean, param4:§while var const§, param5:Boolean)
      {
         super();
         if(§;!I§ == null)
         {
            §0!l§();
         }
         this.type = param1;
         this.§%"B§ = param2;
         this.§get const const§ = param3;
         this.§dynamic with§ = param4;
         this.tabEnabled = false;
         this.tabChildren = false;
         this.§>"I§ = param5;
         this.§"!'§ = localeService.getText(TanksLocale.TEXT_BATTLE_STAT_CALLSIGN);
         this.§static const each§ = localeService.getText(TanksLocale.TEXT_BATTLE_STAT_SCORE);
         this.§-"A§ = localeService.getText(TanksLocale.TEXT_BATTLE_STAT_KILLS);
         this.§super for with§ = localeService.getText(TanksLocale.TEXT_BATTLE_STAT_DEATHS);
         this.include = localeService.getText(TanksLocale.TEXT_BATTLE_STAT_KDRATIO);
         this.§]"K§ = localeService.getText(TanksLocale.TEXT_BATTLE_STAT_REWARD);
         this.§,!3§ = localeService.getText(TanksLocale.TEXT_BATTLE_STAT_BONUS_REWARD);
         this.init();
      }
      
      private static function §0!l§() : void
      {
         §;!I§ = {};
         §each var extends§("downArrowUpSkin",ScrollSkinGreen.trackBottom,ScrollSkinRed.trackBottom,ScrollSkinBlue.trackBottom);
         §each var extends§("downArrowDownSkin",ScrollSkinGreen.trackBottom,ScrollSkinRed.trackBottom,ScrollSkinBlue.trackBottom);
         §each var extends§("downArrowOverSkin",ScrollSkinGreen.trackBottom,ScrollSkinRed.trackBottom,ScrollSkinBlue.trackBottom);
         §each var extends§("downArrowDisabledSkin",ScrollSkinGreen.trackBottom,ScrollSkinRed.trackBottom,ScrollSkinBlue.trackBottom);
         §each var extends§("upArrowUpSkin",ScrollSkinGreen.trackTop,ScrollSkinRed.trackTop,ScrollSkinBlue.trackTop);
         §each var extends§("upArrowDownSkin",ScrollSkinGreen.trackTop,ScrollSkinRed.trackTop,ScrollSkinBlue.trackTop);
         §each var extends§("upArrowOverSkin",ScrollSkinGreen.trackTop,ScrollSkinRed.trackTop,ScrollSkinBlue.trackTop);
         §each var extends§("upArrowDisabledSkin",ScrollSkinGreen.trackTop,ScrollSkinRed.trackTop,ScrollSkinBlue.trackTop);
         §each var extends§("trackUpSkin",ScrollSkinGreen.track,ScrollSkinRed.track,ScrollSkinBlue.track);
         §each var extends§("trackDownSkin",ScrollSkinGreen.track,ScrollSkinRed.track,ScrollSkinBlue.track);
         §each var extends§("trackOverSkin",ScrollSkinGreen.track,ScrollSkinRed.track,ScrollSkinBlue.track);
         §each var extends§("trackDisabledSkin",ScrollSkinGreen.track,ScrollSkinRed.track,ScrollSkinBlue.track);
         §each var extends§("thumbUpSkin",ScrollThumbSkinGreen,ScrollThumbSkinRed,ScrollThumbSkinBlue);
         §each var extends§("thumbDownSkin",ScrollThumbSkinGreen,ScrollThumbSkinRed,ScrollThumbSkinBlue);
         §each var extends§("thumbOverSkin",ScrollThumbSkinGreen,ScrollThumbSkinRed,ScrollThumbSkinBlue);
         §each var extends§("thumbDisabledSkin",ScrollThumbSkinGreen,ScrollThumbSkinRed,ScrollThumbSkinBlue);
      }
      
      private static function §each var extends§(param1:String, param2:Class, param3:Class, param4:Class) : void
      {
         var _loc5_:Dictionary = new Dictionary();
         _loc5_[§static for continue§.GREEN] = param2;
         _loc5_[§static for continue§.RED] = param3;
         _loc5_[§static for continue§.BLUE] = param4;
         §;!I§[param1] = _loc5_;
      }
      
      private static function createHeaderLabel(param1:Sprite, param2:String, param3:uint, param4:String, param5:int, param6:int) : Label
      {
         var _loc7_:Label = null;
         _loc7_ = new Label();
         _loc7_.autoSize = TextFieldAutoSize.NONE;
         _loc7_.text = param2;
         _loc7_.color = param3;
         _loc7_.align = param4;
         _loc7_.x = param6;
         _loc7_.width = param5;
         _loc7_.height = §get set while§.ROW_HEIGHT;
         param1.addChild(_loc7_);
         return _loc7_;
      }
      
      public function §7d§(param1:§1""§) : void
      {
         var _loc2_:int = param1.userId == null ? int(-1) : int(this.indexById(param1.userId));
         if(_loc2_ != -1)
         {
            this.dp.replaceItemAt(this.§return else§(param1),_loc2_);
            this.sort();
         }
      }
      
      public function §]?§(param1:Vector.<§1""§>) : void
      {
         this.dp.removeAll();
         var _loc2_:int = int(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.dp.addItem(this.§return else§(param1[_loc3_]));
            _loc3_++;
         }
         this.sort();
      }
      
      private function sort() : void
      {
         if(this.type == GREEN)
         {
            this.dp.sortOn(["kills","deaths"],[Array.DESCENDING | Array.NUMERIC,Array.NUMERIC]);
         }
         else
         {
            this.dp.sortOn(["score","kills","deaths"],[Array.DESCENDING | Array.NUMERIC,Array.DESCENDING | Array.NUMERIC,Array.NUMERIC]);
         }
      }
      
      private function §return else§(param1:§1""§) : Object
      {
         var _loc2_:§var for null§ = new §var for null§();
         _loc2_.id = param1.userId;
         _loc2_.rank = param1.rank;
         _loc2_.uid = param1.uid;
         _loc2_.kills = param1.kills;
         _loc2_.deaths = param1.deaths;
         _loc2_.score = param1.score;
         _loc2_.§package const static§ = param1.§package const static§;
         _loc2_.§try false§ = param1.§try false§;
         _loc2_.§var try§ = param1.§var try§;
         _loc2_.type = this.type;
         _loc2_.self = param1.userId == this.§%"B§;
         _loc2_.loaded = param1.loaded;
         _loc2_.suspicious = param1.suspicious;
         return _loc2_;
      }
      
      public function §class var get§(param1:String) : void
      {
         var _loc2_:int = this.indexById(param1);
         this.dp.removeItemAt(_loc2_);
      }
      
      public function resize(param1:Number) : void
      {
         var _loc2_:Number = (this.dp.length + 1) * §get set while§.ROW_HEIGHT + §switch throw§;
         if(_loc2_ > param1)
         {
            _loc2_ = int(param1 / this.header.height) * this.header.height + §switch throw§;
         }
         this.inner.height = _loc2_ < §final set static§ ? Number(§final set static§) : Number(_loc2_);
         this.list.setSize(this.inner.width - 2 * §get set while§.§var set switch§,this.inner.height - this.header.y - this.header.height - 5);
      }
      
      [Obfuscation(rename="false")]
      override public function get height() : Number
      {
         return this.inner.height;
      }
      
      private function indexById(param1:String) : int
      {
         var _loc2_:§var for null§ = null;
         var _loc3_:int = int(this.dp.length);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = this.dp.getItemAt(_loc4_) as §var for null§;
            if(_loc2_ != null && _loc2_.id == param1)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      private function §else var get§() : void
      {
         this.§0g§("downArrowUpSkin");
         this.§0g§("downArrowDownSkin");
         this.§0g§("downArrowOverSkin");
         this.§0g§("downArrowDisabledSkin");
         this.§0g§("upArrowUpSkin");
         this.§0g§("upArrowDownSkin");
         this.§0g§("upArrowOverSkin");
         this.§0g§("upArrowDisabledSkin");
         this.§0g§("trackUpSkin");
         this.§0g§("trackDownSkin");
         this.§0g§("trackOverSkin");
         this.§0g§("trackDisabledSkin");
         this.§0g§("thumbUpSkin");
         this.§0g§("thumbDownSkin");
         this.§0g§("thumbOverSkin");
         this.§0g§("thumbDisabledSkin");
      }
      
      private function §0g§(param1:String) : void
      {
         this.list.setStyle(param1,§;!I§[param1][this.type]);
      }
      
      private function init() : void
      {
         switch(this.type)
         {
            case RED:
               this.inner = new ResultWindowRed();
               break;
            case GREEN:
               this.inner = new ResultWindowGreen();
               break;
            case BLUE:
               this.inner = new ResultWindowBlue();
         }
         this.inner.width = §get set while§.§ "Q§ + 2 * §get set while§.§var set switch§ + §get set while§.§function const throw§ + §get set while§.§case set catch§ + §get set while§.§super const function§ + §get set while§.§<"2§ + §get set while§.§false const catch§ + (this.type != GREEN ? §get set while§.§native set final§ : 0) + (this.§get const const§ ? §get set while§.§2B§ + §get set while§.§dynamic true§ : 0) + §`"K§;
         this.inner.height = §final set static§;
         addChild(this.inner);
         this.header = this.§while default§();
         this.inner.addChild(this.header);
         this.header.x = §var set switch§;
         this.header.y = §var set switch§;
         this.dp = new DataProvider();
         this.list = new List();
         this.§else var get§();
         this.inner.addChild(this.list);
         this.list.rowHeight = §get set while§.ROW_HEIGHT;
         this.list.x = §var set switch§;
         §true const null§.§>"I§ = this.§>"I§;
         this.list.setStyle("cellRenderer",§true const null§);
         this.list.y = this.header.y + this.header.height;
         this.list.focusEnabled = false;
         this.list.dataProvider = this.dp;
      }
      
      private function §while default§() : Sprite
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:uint = 0;
         var _loc3_:Label = null;
         switch(this.type)
         {
            case BLUE:
               _loc1_ = new ResultWindowBlueHeader();
               _loc2_ = 11590;
               break;
            case GREEN:
               _loc1_ = new ResultWindowGreenHeader();
               _loc2_ = 83457;
               break;
            case RED:
               _loc1_ = new ResultWindowRedHeader();
               _loc2_ = 4655104;
         }
         var _loc4_:Sprite = new Sprite();
         _loc4_.addChild(_loc1_);
         var _loc5_:int = §get set while§.§function const throw§;
         _loc3_ = createHeaderLabel(_loc4_,this.§"!'§,_loc2_,TextFormatAlign.LEFT,§get set while§.§case set catch§,_loc5_);
         _loc5_ += _loc3_.width;
         if(this.type != GREEN)
         {
            _loc3_ = createHeaderLabel(_loc4_,this.§static const each§,_loc2_,TextFormatAlign.RIGHT,§get set while§.§native set final§,_loc5_);
            _loc5_ += _loc3_.width;
         }
         _loc3_ = createHeaderLabel(_loc4_,this.§-"A§,_loc2_,TextFormatAlign.RIGHT,§get set while§.§super const function§,_loc5_);
         _loc5_ += _loc3_.width;
         _loc3_ = createHeaderLabel(_loc4_,this.§super for with§,_loc2_,TextFormatAlign.RIGHT,§get set while§.§<"2§,_loc5_);
         _loc5_ += _loc3_.width;
         _loc3_ = createHeaderLabel(_loc4_,this.include,_loc2_,TextFormatAlign.RIGHT,§get set while§.§false const catch§,_loc5_);
         _loc5_ += _loc3_.width;
         if(this.§get const const§)
         {
            _loc3_ = createHeaderLabel(_loc4_,this.§]"K§,_loc2_,TextFormatAlign.RIGHT,§get set while§.§2B§,_loc5_);
            _loc5_ += _loc3_.width;
            if(this.§>"I§)
            {
               createHeaderLabel(_loc4_,this.§,!3§,_loc2_,TextFormatAlign.RIGHT,§get set while§.§dynamic true§,_loc5_);
            }
         }
         _loc1_.width = width - 2 * §var set switch§;
         _loc1_.height = §get set while§.ROW_HEIGHT - 2;
         return _loc4_;
      }
   }
}

