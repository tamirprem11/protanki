package §finally for else§
{
   import alternativa.types.Long;
   import platform.client.fp10.core.resource.types.ImageResource;
   import projects.tanks.client.panel.model.dailyquest.§^"#§;
   
   public class §case include§
   {
      private var §final for function§:Boolean;
      
      private var _description:String;
      
      private var §continue return§:int;
      
      private var _image:ImageResource;
      
      private var §-"H§:Vector.<§^"#§>;
      
      private var _progress:int;
      
      private var §,!N§:Long;
      
      private var §super for super§:int;
      
      public function §case include§(param1:Boolean = false, param2:String = null, param3:int = 0, param4:ImageResource = null, param5:Vector.<§^"#§> = null, param6:int = 0, param7:Long = null, param8:int = 0)
      {
         super();
         this.§final for function§ = param1;
         this._description = param2;
         this.§continue return§ = param3;
         this._image = param4;
         this.§-"H§ = param5;
         this._progress = param6;
         this.§,!N§ = param7;
         this.§super for super§ = param8;
      }
      
      public function get canSkipForFree() : Boolean
      {
         return this.§final for function§;
      }
      
      public function set canSkipForFree(param1:Boolean) : void
      {
         this.§final for function§ = param1;
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function set description(param1:String) : void
      {
         this._description = param1;
      }
      
      public function get finishCriteria() : int
      {
         return this.§continue return§;
      }
      
      public function set finishCriteria(param1:int) : void
      {
         this.§continue return§ = param1;
      }
      
      public function get image() : ImageResource
      {
         return this._image;
      }
      
      public function set image(param1:ImageResource) : void
      {
         this._image = param1;
      }
      
      public function get prizes() : Vector.<§^"#§>
      {
         return this.§-"H§;
      }
      
      public function set prizes(param1:Vector.<§^"#§>) : void
      {
         this.§-"H§ = param1;
      }
      
      public function get progress() : int
      {
         return this._progress;
      }
      
      public function set progress(param1:int) : void
      {
         this._progress = param1;
      }
      
      public function get questId() : Long
      {
         return this.§,!N§;
      }
      
      public function set questId(param1:Long) : void
      {
         this.§,!N§ = param1;
      }
      
      public function get skipCost() : int
      {
         return this.§super for super§;
      }
      
      public function set skipCost(param1:int) : void
      {
         this.§super for super§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "DailyQuestInfo [";
         _loc1_ += "canSkipForFree = " + this.canSkipForFree + " ";
         _loc1_ += "description = " + this.description + " ";
         _loc1_ += "finishCriteria = " + this.finishCriteria + " ";
         _loc1_ += "image = " + this.image + " ";
         _loc1_ += "prizes = " + this.prizes + " ";
         _loc1_ += "progress = " + this.progress + " ";
         _loc1_ += "questId = " + this.questId + " ";
         _loc1_ += "skipCost = " + this.skipCost + " ";
         return _loc1_ + "]";
      }
   }
}

