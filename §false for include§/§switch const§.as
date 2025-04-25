package §false for include§
{
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.proplib.objects.PropMesh;
   import alternativa.utils.textureutils.TextureByteData;
   
   public class §switch const§ implements §>"E§
   {
      private var §try const for§:PropMesh;
      
      private var textureName:String;
      
      private var §set set§:Vector.<BSP> = new Vector.<BSP>();
      
      public function §switch const§(param1:PropMesh, param2:String)
      {
         super();
         this.§try const for§ = param1;
         this.textureName = param2;
      }
      
      public function §each set use§(param1:BSP) : void
      {
         this.§set set§.push(param1);
      }
      
      public function §9!§(param1:TextureMaterial) : void
      {
         var _loc2_:BSP = null;
         for each(_loc2_ in this.§set set§)
         {
            _loc2_.setMaterialToAllFaces(param1);
         }
      }
      
      public function §true const implements§() : TextureByteData
      {
         return this.§try const for§.textures.getValue(this.textureName);
      }
   }
}

