package platform.client.fp10.core.model
{
   public interface IObjectLoadListener
   {
      function objectLoaded() : void;
      
      function objectLoadedPost() : void;
      
      function objectUnloaded() : void;
      
      function objectUnloadedPost() : void;
   }
}

