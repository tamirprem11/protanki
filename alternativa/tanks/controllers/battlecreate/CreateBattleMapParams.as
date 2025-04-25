package alternativa.tanks.controllers.battlecreate
{
   import §]2§.§"!4§;
   import §case else§.§>!?§;
   import platform.client.fp10.core.resource.types.ImageResource;
   
   public class CreateBattleMapParams
   {
      public var index:Object;
      
      public var id:String;
      
      public var gameName:String;
      
      public var minRank:int;
      
      public var maxRank:int;
      
      public var currentRank:int;
      
      public var maxPeople:int;
      
      public var battleModes:Vector.<§"!4§>;
      
      public var themeName:String;
      
      public var enabled:Boolean;
      
      public var clanName:String;
      
      public var clanLink:String;
      
      public var previewResource:ImageResource;
      
      public var theme:§>!?§;
      
      public function CreateBattleMapParams()
      {
         super();
      }
      
      public function toString() : String
      {
         return "CreateBattleMapParams id=" + this.id + " gameName=" + this.gameName + " themeName=" + this.themeName + " enabled=" + this.enabled + " maxRank=" + this.maxRank;
      }
   }
}

