package §+!8§
{
   import §]2§.§"!4§;
   import §case else§.§>!?§;
   import §package var each§.§>"U§;
   import §package var each§.§default super§;
   import platform.client.fp10.core.model.IObjectLoadListener;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.type.IGameObject;
   
   public class §break const import§ extends §default super§ implements §>"U§, §%!H§, IObjectLoadListener
   {
      private var maps:Vector.<IGameObject> = new Vector.<IGameObject>();
      
      public function §break const import§()
      {
         super();
      }
      
      public function §'" §() : Vector.<IGameObject>
      {
         return this.maps;
      }
      
      public function getName() : String
      {
         return getInitParam().mapName;
      }
      
      public function §each const catch§() : String
      {
         return getInitParam().mapId;
      }
      
      public function §if for finally§() : int
      {
         return getInitParam().maxPeople;
      }
      
      public function getMaxRank() : int
      {
         return getInitParam().§get var§.max;
      }
      
      public function getMinRank() : int
      {
         return getInitParam().§get var§.min;
      }
      
      public function getThemeName() : String
      {
         return getInitParam().theme.toString();
      }
      
      public function §=A§() : §>!?§
      {
         return getInitParam().theme;
      }
      
      public function §5"F§() : Vector.<§"!4§>
      {
         return getInitParam().supportedModes;
      }
      
      public function isEnabled() : Boolean
      {
         return getInitParam().enabled;
      }
      
      public function getPreviewResource() : ImageResource
      {
         return getInitParam().preview;
      }
      
      public function objectLoaded() : void
      {
         this.maps.push(object);
      }
      
      public function objectLoadedPost() : void
      {
      }
      
      public function objectUnloaded() : void
      {
         var _loc1_:int = int(this.maps.lastIndexOf(object));
         if(_loc1_ != -1)
         {
            this.maps.splice(_loc1_,1);
         }
      }
      
      public function objectUnloadedPost() : void
      {
      }
   }
}

