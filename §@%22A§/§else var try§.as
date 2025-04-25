package §@"A§
{
   import platform.client.fp10.core.resource.types.ImageResource;
   
   public class §else var try§
   {
      private var §for var package§:int;
      
      private var §&r§:int;
      
      private var §6!V§:Boolean;
      
      private var §20§:ImageResource;
      
      private var §"!S§:ImageResource;
      
      public function §else var try§(param1:int = 0, param2:int = 0, param3:Boolean = false, param4:ImageResource = null, param5:ImageResource = null)
      {
         super();
         this.§for var package§ = param1;
         this.§&r§ = param2;
         this.§6!V§ = param3;
         this.§20§ = param4;
         this.§"!S§ = param5;
      }
      
      public function get currentQuestLevel() : int
      {
         return this.§for var package§;
      }
      
      public function set currentQuestLevel(param1:int) : void
      {
         this.§for var package§ = param1;
      }
      
      public function get currentQuestStreak() : int
      {
         return this.§&r§;
      }
      
      public function set currentQuestStreak(param1:int) : void
      {
         this.§&r§ = param1;
      }
      
      public function get doneForToday() : Boolean
      {
         return this.§6!V§;
      }
      
      public function set doneForToday(param1:Boolean) : void
      {
         this.§6!V§ = param1;
      }
      
      public function get questImage() : ImageResource
      {
         return this.§20§;
      }
      
      public function set questImage(param1:ImageResource) : void
      {
         this.§20§ = param1;
      }
      
      public function get rewardImage() : ImageResource
      {
         return this.§"!S§;
      }
      
      public function set rewardImage(param1:ImageResource) : void
      {
         this.§"!S§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "WeeklyQuestDescription [";
         _loc1_ += "currentQuestLevel = " + this.currentQuestLevel + " ";
         _loc1_ += "currentQuestStreak = " + this.currentQuestStreak + " ";
         _loc1_ += "doneForToday = " + this.doneForToday + " ";
         _loc1_ += "questImage = " + this.questImage + " ";
         _loc1_ += "rewardImage = " + this.rewardImage + " ";
         return _loc1_ + "]";
      }
   }
}

