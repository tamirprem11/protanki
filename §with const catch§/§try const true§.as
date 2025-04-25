package §with const catch§
{
   import alternativa.osgi.service.logging.LogService;
   import §false const return§.§8"R§;
   import §false const return§.§case for default§;
   import §false const return§.§native break§;
   import flash.filters.BitmapFilter;
   import flash.filters.ColorMatrixFilter;
   import platform.client.fp10.core.model.ObjectLoadListener;
   
   public class §try const true§ extends §native break§ implements §case for default§, ObjectLoadListener, §in const import§
   {
      [Inject]
      public static var logService:LogService;
      
      private static var §?"]§:ColorMatrixFilter = new ColorMatrixFilter();
      
      public function §try const true§()
      {
         super();
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded() : void
      {
         var _loc1_:§8"R§ = null;
         var _loc2_:Object = {};
         var _loc3_:Vector.<§8"R§> = getInitParam().data;
         for each(_loc1_ in _loc3_)
         {
            _loc2_[_loc1_.key] = new §+<§(_loc1_);
         }
         putData(Object,_loc2_);
      }
      
      public function createFilter(param1:String) : BitmapFilter
      {
         var _loc2_:Object = Object(getData(Object));
         var _loc3_:§+<§ = _loc2_[param1];
         if(_loc3_ != null)
         {
            return _loc3_.createFilter();
         }
         return §?"]§;
      }
   }
}

