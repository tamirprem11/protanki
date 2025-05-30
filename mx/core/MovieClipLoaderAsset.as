package mx.core
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   use namespace mx_internal;
   
   public class MovieClipLoaderAsset extends MovieClipAsset implements IFlexAsset, IFlexDisplayObject
   {
      mx_internal static const VERSION:String = "4.0.0.4932";
      
      private var loader:Loader = null;
      
      private var initialized:Boolean = false;
      
      private var requestedWidth:Number;
      
      private var requestedHeight:Number;
      
      protected var initialWidth:Number = 0;
      
      protected var initialHeight:Number = 0;
      
      public function MovieClipLoaderAsset()
      {
         super();
         var _loc1_:LoaderContext = new LoaderContext();
         _loc1_.applicationDomain = new ApplicationDomain(ApplicationDomain.currentDomain);
         if("allowLoadBytesCodeExecution" in _loc1_)
         {
            _loc1_["allowLoadBytesCodeExecution"] = true;
         }
         this.loader = new Loader();
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.completeHandler);
         this.loader.loadBytes(this.movieClipData,_loc1_);
         addChild(this.loader);
      }
      
      override public function get height() : Number
      {
         if(!this.initialized)
         {
            return this.initialHeight;
         }
         return super.height;
      }
      
      override public function set height(param1:Number) : void
      {
         if(!this.initialized)
         {
            this.requestedHeight = param1;
         }
         else
         {
            this.loader.height = param1;
         }
      }
      
      override public function get measuredHeight() : Number
      {
         return this.initialHeight;
      }
      
      override public function get measuredWidth() : Number
      {
         return this.initialWidth;
      }
      
      override public function get width() : Number
      {
         if(!this.initialized)
         {
            return this.initialWidth;
         }
         return super.width;
      }
      
      override public function set width(param1:Number) : void
      {
         if(!this.initialized)
         {
            this.requestedWidth = param1;
         }
         else
         {
            this.loader.width = param1;
         }
      }
      
      public function get movieClipData() : ByteArray
      {
         return null;
      }
      
      private function completeHandler(param1:Event) : void
      {
         this.initialized = true;
         this.initialWidth = this.loader.width;
         this.initialHeight = this.loader.height;
         if(!isNaN(this.requestedWidth))
         {
            this.loader.width = this.requestedWidth;
         }
         if(!isNaN(this.requestedHeight))
         {
            this.loader.height = this.requestedHeight;
         }
         dispatchEvent(param1);
      }
   }
}

