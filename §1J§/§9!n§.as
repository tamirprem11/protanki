package §1J§
{
   import §],§.§while var const§;
   import projects.tanks.client.users.services.chatmoderator.ChatModeratorLevel;
   
   public class §9!n§
   {
      private var _userId:String;
      
      private var _uid:String;
      
      private var _rank:int;
      
      private var _loaded:Boolean;
      
      private var _suspicious:Boolean;
      
      private var §#"@§:§while var const§;
      
      private var _chatModeratorLevel:ChatModeratorLevel;
      
      public function §9!n§(param1:String, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:§while var const§, param7:ChatModeratorLevel)
      {
         super();
         this._userId = param1;
         this._uid = param2;
         this._rank = param3;
         this._loaded = param4;
         this._suspicious = param5;
         this.§#"@§ = param6;
         this._chatModeratorLevel = param7;
      }
      
      public function get userId() : String
      {
         return this._userId;
      }
      
      public function set userId(param1:String) : void
      {
         this._userId = param1;
      }
      
      public function get uid() : String
      {
         return this._uid;
      }
      
      public function set uid(param1:String) : void
      {
         this._uid = param1;
      }
      
      public function get rank() : int
      {
         return this._rank;
      }
      
      public function set rank(param1:int) : void
      {
         this._rank = param1;
      }
      
      public function get loaded() : Boolean
      {
         return this._loaded;
      }
      
      public function set loaded(param1:Boolean) : void
      {
         this._loaded = param1;
      }
      
      public function get suspicious() : Boolean
      {
         return this._suspicious;
      }
      
      public function set suspicious(param1:Boolean) : void
      {
         this._suspicious = param1;
      }
      
      public function get teamType() : §while var const§
      {
         return this.§#"@§;
      }
      
      public function set teamType(param1:§while var const§) : void
      {
         this.§#"@§ = param1;
      }
      
      public function get chatModeratorLevel() : ChatModeratorLevel
      {
         return this._chatModeratorLevel;
      }
      
      public function set chatModeratorLevel(param1:ChatModeratorLevel) : void
      {
         this._chatModeratorLevel = param1;
      }
      
      public function getShortUserInfo() : §true case§
      {
         var _loc1_:§true case§ = new §true case§();
         _loc1_.userId = this._userId;
         _loc1_.uid = this._uid;
         _loc1_.rank = this._rank;
         _loc1_.suspicious = this._suspicious;
         _loc1_.teamType = this.§#"@§;
         _loc1_.chatModeratorLevel = this._chatModeratorLevel;
         return _loc1_;
      }
   }
}

