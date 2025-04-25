package §!@§
{
   import §!"]§.§%!l§;
   import §!"]§.§3"!§;
   import §+!Q§.§%"V§;
   import §+!Q§.§?!T§;
   import alternativa.tanks.models.battle.battlefield.§69§;
   import assets.icons.BattleInfoIcons;
   import §continue var do§.§native const set§;
   import controls.resultassets.WhiteFrame;
   import flash.display.Sprite;
   
   public class §&"h§ extends Sprite
   {
      private static const §dynamic catch§:int = 1;
      
      private static const §class import§:int = 1;
      
      private static const §switch false§:int = 3;
      
      private static const §dynamic var false§:int = 30;
      
      private var §false for default§:§69§;
      
      private var §var null§:WhiteFrame;
      
      private var §1!Q§:§&]§;
      
      private var §'!w§:§%"V§;
      
      private var §null var try§:§%!l§;
      
      private var §;!R§:§3"!§;
      
      private var timeLimit:int;
      
      private var scoreLimit:int;
      
      public function §&"h§(param1:§69§, param2:int, param3:§native const set§, param4:int, param5:Boolean)
      {
         super();
         this.§false for default§ = param1;
         this.timeLimit = param3.timeLimitInSec;
         this.scoreLimit = param3.scoreLimit;
         this.§var null§ = new WhiteFrame();
         addChild(this.§var null§);
         this.§1!Q§ = new §&]§(BattleInfoIcons.MONEY);
         this.§1!Q§.§="`§(param2);
         addChild(this.§1!Q§);
         this.§true try§(param5);
         if(this.timeLimit > 0)
         {
            this.§null var try§ = new §%!l§(§dynamic var false§,BattleInfoIcons.TIME_LIMIT,§?!T§.instance,false);
            this.§null var try§.value = param4;
            addChild(this.§null var try§);
         }
      }
      
      private function §native else§() : int
      {
         switch(this.§false for default§)
         {
            case §69§.CTF:
               return BattleInfoIcons.CTF;
            case §69§.§,M§:
               return BattleInfoIcons.§while const do§;
            default:
               return BattleInfoIcons.KILL_LIMIT;
         }
      }
      
      public function §;r§(param1:int) : void
      {
         if(this.§'!w§ != null)
         {
            if(param1 >= this.scoreLimit - this.§case const extends§())
            {
               this.§'!w§.§return for do§();
            }
         }
      }
      
      private function §case const extends§() : int
      {
         switch(this.§false for default§)
         {
            case §69§.CTF:
               return §dynamic catch§;
            case §69§.§,M§:
               return §class import§;
            default:
               return §switch false§;
         }
      }
      
      public function §0!1§(param1:int) : void
      {
         this.§1!Q§.§="`§(param1);
      }
      
      public function reset() : void
      {
         if(this.§'!w§ != null)
         {
            this.§'!w§.value = this.scoreLimit;
         }
         if(this.§null var try§ != null)
         {
            this.§null var try§.value = this.timeLimit;
         }
         if(this.§;!R§ != null)
         {
            this.§>!D§();
         }
      }
      
      public function §set const else§() : void
      {
         if(this.§'!w§ != null)
         {
            this.§'!w§.§set const else§();
         }
         if(this.§null var try§ != null)
         {
            this.§null var try§.value = 0;
            this.§null var try§.§set const else§();
         }
         if(this.§;!R§ != null)
         {
            this.§;!R§.value = 0;
            this.§;!R§.§set const else§();
         }
      }
      
      public function §use try§() : void
      {
         this.§1!Q§.x = 14;
         this.§1!Q§.y = 11;
         var _loc1_:Number = this.§1!Q§.width + this.§1!Q§.x;
         if(this.§'!w§ != null)
         {
            this.§'!w§.x = _loc1_ + 6;
            this.§'!w§.y = 11;
            _loc1_ = this.§'!w§.width + this.§'!w§.x;
         }
         if(this.§null var try§ != null)
         {
            this.§null var try§.x = _loc1_ + 10;
            this.§null var try§.y = 11;
            _loc1_ = this.§null var try§.width + this.§null var try§.x;
         }
         if(this.§;!R§ != null)
         {
            if(this.§null var try§ != null)
            {
               this.§;!R§.x = this.§null var try§.x;
               this.§;!R§.y = this.§null var try§.y;
            }
            else
            {
               this.§;!R§.x = _loc1_ + 10;
               this.§;!R§.y = 11;
               _loc1_ = this.§;!R§.width + this.§;!R§.x;
            }
         }
         this.§var null§.width = 12 + _loc1_;
      }
      
      public function §const implements§(param1:int) : void
      {
         if(this.§null var try§ != null)
         {
            this.§null var try§.visible = false;
         }
         this.§;!R§ = new §3"!§(§dynamic var false§,BattleInfoIcons.TIME_LIMIT,§?!T§.instance,false);
         this.§;!R§.§]"a§(param1);
         addChild(this.§;!R§);
      }
      
      public function §>!D§() : void
      {
         if(this.§null var try§ != null)
         {
            this.§null var try§.visible = true;
         }
         removeChild(this.§;!R§);
         this.§;!R§ = null;
      }
      
      public function §6y§(param1:int) : void
      {
         this.§null var try§.§]"a§(param1);
      }
      
      public function §default for dynamic§() : void
      {
         this.§null var try§.§extends set§();
      }
      
      public function §true try§(param1:Boolean) : void
      {
         if(this.§'!w§ == null && param1 && this.scoreLimit > 0)
         {
            this.§'!w§ = new §%"V§(this.§case const extends§(),this.§native else§(),§?!T§.instance);
            this.§'!w§.value = this.scoreLimit;
            addChild(this.§'!w§);
         }
      }
   }
}

