package §false for include§
{
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.proplib.objects.PropSprite;
   import alternativa.utils.textureutils.TextureByteData;
   import flash.display.BitmapData;
   
   public class §!!C§ implements §>"E§
   {
      private var §=b§:PropSprite;
      
      private var §2!t§:Vector.<Sprite3D> = new Vector.<Sprite3D>();
      
      public function §!!C§(param1:PropSprite, param2:String)
      {
         super();
         this.§=b§ = param1;
      }
      
      public function §2"V§(param1:Sprite3D) : void
      {
         this.§2!t§.push(param1);
      }
      
      public function §9!§(param1:TextureMaterial) : void
      {
         var _loc2_:Sprite3D = null;
         var _loc3_:Number = NaN;
         var _loc4_:BitmapData = param1.texture;
         for each(_loc2_ in this.§2!t§)
         {
            _loc2_.material = param1;
            _loc3_ = _loc2_.width;
            _loc2_.width = _loc3_ * _loc4_.width;
            _loc2_.height = _loc3_ * _loc4_.height;
         }
      }
      
      public function §true const implements§() : TextureByteData
      {
         return this.§=b§.textureData;
      }
   }
}

