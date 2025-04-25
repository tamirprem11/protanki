package alternativa.tanks.service.itempropertyparams
{
   import alternativa.tanks.gui.ItemPropertyIcon;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import projects.tanks.client.garage.models.item.properties.ItemProperty;
   
   public class §do set function§
   {
      private var §<"Z§:int;
      
      private var _bitmapData:BitmapData;
      
      private var _name:String;
      
      private var properties:Vector.<ItemProperty>;
      
      private var §55§:§const var implements§;
      
      private var _icon:ItemPropertyIcon;
      
      private var §[!Y§:Number;
      
      public function §do set function§(param1:int, param2:BitmapData, param3:String, param4:Vector.<ItemProperty>, param5:§const var implements§, param6:Number)
      {
         super();
         this.§<"Z§ = param1;
         this._bitmapData = param2;
         this._name = param3;
         this.properties = param4;
         this.§55§ = param5;
         this.§[!Y§ = param6;
         this._icon = new ItemPropertyIcon(param2);
      }
      
      public function get §7"N§() : int
      {
         return this.§<"Z§;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get icon() : ItemPropertyIcon
      {
         return this._icon;
      }
      
      public function §if finally§() : Bitmap
      {
         return new Bitmap(this.bitmapData);
      }
      
      public function getProperties() : Vector.<ItemProperty>
      {
         return this.properties;
      }
      
      public function §use set catch§() : §const var implements§
      {
         return this.§55§;
      }
      
      public function §^"B§() : Number
      {
         return this.§[!Y§;
      }
   }
}

