package assets.icons
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol473")]
   public class GarageItemBackground extends MovieClip
   {
      public static const OFF_NORMAL:int = 1;
      
      public static const OFF_NORMAL_SELECTED:int = 2;
      
      public static const SHIELD_NORMAL:int = 3;
      
      public static const SHIELD_NORMAL_SELECTED:int = 4;
      
      public static const SHIELD_INSTALLED:int = 5;
      
      public static const SHIELD_INSTALLED_SELECTED:int = 6;
      
      public static const GUN_NORMAL:int = 7;
      
      public static const GUN_NORMAL_SELECTED:int = 8;
      
      public static const GUN_INSTALLED:int = 9;
      
      public static const GUN_INSTALLED_SELECTED:int = 10;
      
      public static const ENGINE_NORMAL:int = 11;
      
      public static const ENGINE_NORMAL_SELECTED:int = 12;
      
      public static const ENGINE_INSTALLED:int = 13;
      
      public static const ENGINE_INSTALLED_SELECTED:int = 14;
      
      public static const COLOR_NORMAL:int = 15;
      
      public static const COLOR_NORMAL_SELECTED:int = 16;
      
      public static const COLOR_INSTALLED:int = 17;
      
      public static const COLOR_INSTALLED_SELECTED:int = 18;
      
      public static const PLUGIN_NORMAL:int = 19;
      
      public static const PLUGIN_NORMAL_SELECTED:int = 20;
      
      public static const PLUGIN_INSTALLED:int = 21;
      
      public static const PLUGIN_INSTALLED_SELECTED:int = 22;
      
      public function GarageItemBackground(param1:int = 1)
      {
         super();
         gotoAndStop(param1);
      }
      
      public static function idByName(param1:String) : int
      {
         var _loc2_:int = 1;
         var _loc3_:Array = new Array();
         _loc3_["OFF_NORMAL"] = OFF_NORMAL;
         _loc3_["OFF_NORMAL_SELECTED"] = OFF_NORMAL_SELECTED;
         _loc3_["ENGINE_NORMAL"] = ENGINE_NORMAL;
         _loc3_["ENGINE_NORMAL_SELECTED"] = ENGINE_NORMAL_SELECTED;
         _loc3_["ENGINE_INSTALLED"] = ENGINE_INSTALLED;
         _loc3_["ENGINE_INSTALLED_SELECTED"] = ENGINE_INSTALLED_SELECTED;
         _loc3_["GUN_NORMAL"] = GUN_NORMAL;
         _loc3_["GUN_NORMAL_SELECTED"] = GUN_NORMAL_SELECTED;
         _loc3_["GUN_INSTALLED"] = GUN_INSTALLED;
         _loc3_["GUN_INSTALLED_SELECTED"] = GUN_INSTALLED_SELECTED;
         _loc3_["SHIELD_NORMAL"] = SHIELD_NORMAL;
         _loc3_["SHIELD_NORMAL_SELECTED"] = SHIELD_NORMAL_SELECTED;
         _loc3_["SHIELD_INSTALLED"] = SHIELD_INSTALLED;
         _loc3_["SHIELD_INSTALLED_SELECTED"] = SHIELD_INSTALLED_SELECTED;
         _loc3_["COLOR_NORMAL"] = COLOR_NORMAL;
         _loc3_["COLOR_NORMAL_SELECTED"] = COLOR_NORMAL_SELECTED;
         _loc3_["COLOR_INSTALLED"] = COLOR_INSTALLED;
         _loc3_["COLOR_INSTALLED_SELECTED"] = COLOR_INSTALLED_SELECTED;
         _loc3_["PLUGIN_NORMAL"] = PLUGIN_NORMAL;
         _loc3_["PLUGIN_NORMAL_SELECTED"] = PLUGIN_NORMAL_SELECTED;
         _loc3_["PLUGIN_INSTALLED"] = PLUGIN_NORMAL;
         _loc3_["PLUGIN_INSTALLED_SELECTED"] = PLUGIN_NORMAL_SELECTED;
         return int(_loc3_[param1]);
      }
   }
}

