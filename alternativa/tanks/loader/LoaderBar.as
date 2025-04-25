package alternativa.tanks.loader
{
   import flash.utils.ByteArray;
   import mx.core.MovieClipLoaderAsset;
   
   public class LoaderBar extends MovieClipLoaderAsset
   {
      private static var bytes:ByteArray = null;
      
      public var dataClass:Class = LoaderBar_dataClass;
      
      public function LoaderBar()
      {
         super();
      }
      
      public function GTanksLoaderWindow_p() : *
      {
         initialWidth = 14960 / 20;
         initialHeight = 1440 / 20;
      }
      
      override public function get movieClipData() : ByteArray
      {
         if(bytes == null)
         {
            bytes = ByteArray(new this.dataClass());
         }
         return bytes;
      }
   }
}

