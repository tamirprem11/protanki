package §@!c§
{
   import §9!D§.§3"Q§;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §`T§
   {
      private static const §58§:Class = §&!&§;
      
      private static const §'"]§:BitmapData = new §58§().bitmapData;
      
      private static const §catch set break§:Class = §#!W§;
      
      private static const §finally var implements§:BitmapData = new §catch set break§().bitmapData;
      
      private static const §^P§:Class = §4u§;
      
      private static const §false for if§:BitmapData = new §^P§().bitmapData;
      
      private static const §6"a§:Class = §,!0§;
      
      private static const §implements for if§:Dictionary = new Dictionary();
      
      private static const §package const while§:int = §false for if§.width;
      
      private static const §9"Z§:BitmapData = new §6"a§().bitmapData;
      
      private static const §super var return§:Dictionary = new Dictionary();
      
      §implements for if§[§3"Q§.NEUTRAL] = §finally var implements§;
      §implements for if§[§3"Q§.BLUE] = §'"]§;
      §implements for if§[§3"Q§.RED] = §false for if§;
      
      public function §`T§()
      {
         super();
      }
      
      public static function §throw get§(param1:§3"Q§) : BitmapData
      {
         return §implements for if§[param1];
      }
      
      public static function §'B§(param1:String) : BitmapData
      {
         var _loc2_:Number = param1.charCodeAt(0) - "A".charCodeAt(0);
         var _loc3_:BitmapData = §super var return§[_loc2_];
         if(_loc3_ == null)
         {
            _loc3_ = new BitmapData(§package const while§,§9"Z§.height,true,0);
            _loc3_.copyPixels(§9"Z§,new Rectangle(_loc2_ * §package const while§,0,§package const while§,§9"Z§.height),new Point());
            §super var return§[_loc2_] = _loc3_;
         }
         return _loc3_;
      }
   }
}

