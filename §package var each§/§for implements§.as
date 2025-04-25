package §package var each§
{
   import §]2§.§"!4§;
   import §]2§.§7e§;
   import §case else§.§>!?§;
   import platform.client.fp10.core.resource.types.ImageResource;
   
   public class §for implements§
   {
      private var _enabled:Boolean;
      
      private var §if const each§:String;
      
      private var _mapName:String;
      
      private var _maxPeople:int;
      
      private var _preview:ImageResource;
      
      private var §function const get§:§7e§;
      
      private var §]=§:Vector.<§"!4§>;
      
      private var §throw default§:§>!?§;
      
      public function §for implements§(param1:Boolean = false, param2:String = null, param3:String = null, param4:int = 0, param5:ImageResource = null, param6:§7e§ = null, param7:Vector.<§"!4§> = null, param8:§>!?§ = null)
      {
         super();
         this._enabled = param1;
         this.§if const each§ = param2;
         this._mapName = param3;
         this._maxPeople = param4;
         this._preview = param5;
         this.§function const get§ = param6;
         this.§]=§ = param7;
         this.§throw default§ = param8;
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this._enabled = param1;
      }
      
      public function get mapId() : String
      {
         return this.§if const each§;
      }
      
      public function set mapId(param1:String) : void
      {
         this.§if const each§ = param1;
      }
      
      public function get mapName() : String
      {
         return this._mapName;
      }
      
      public function set mapName(param1:String) : void
      {
         this._mapName = param1;
      }
      
      public function get maxPeople() : int
      {
         return this._maxPeople;
      }
      
      public function set maxPeople(param1:int) : void
      {
         this._maxPeople = param1;
      }
      
      public function get preview() : ImageResource
      {
         return this._preview;
      }
      
      public function set preview(param1:ImageResource) : void
      {
         this._preview = param1;
      }
      
      public function get §get var§() : §7e§
      {
         return this.§function const get§;
      }
      
      public function set §get var§(param1:§7e§) : void
      {
         this.§function const get§ = param1;
      }
      
      public function get supportedModes() : Vector.<§"!4§>
      {
         return this.§]=§;
      }
      
      public function set supportedModes(param1:Vector.<§"!4§>) : void
      {
         this.§]=§ = param1;
      }
      
      public function get theme() : §>!?§
      {
         return this.§throw default§;
      }
      
      public function set theme(param1:§>!?§) : void
      {
         this.§throw default§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "MapInfoCC [";
         _loc1_ += "enabled = " + this.enabled + " ";
         _loc1_ += "mapId = " + this.mapId + " ";
         _loc1_ += "mapName = " + this.mapName + " ";
         _loc1_ += "maxPeople = " + this.maxPeople + " ";
         _loc1_ += "preview = " + this.preview + " ";
         _loc1_ += "rankLimit = " + this.§get var§ + " ";
         _loc1_ += "supportedModes = " + this.supportedModes + " ";
         _loc1_ += "theme = " + this.theme + " ";
         return _loc1_ + "]";
      }
   }
}

