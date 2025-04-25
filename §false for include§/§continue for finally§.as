package §false for include§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.proplib.objects.PropMesh;
   import alternativa.utils.textureutils.TextureByteData;
   
   public class §continue for finally§ implements §>"E§
   {
      private var meshes:Vector.<Mesh> = new Vector.<Mesh>();
      
      private var §try const for§:PropMesh;
      
      private var textureName:String;
      
      private var §catch const get§:String;
      
      public function §continue for finally§(param1:PropMesh, param2:String)
      {
         super();
         this.§try const for§ = param1;
         this.textureName = param2;
      }
      
      public function add(param1:Mesh, param2:String = null) : void
      {
         this.§catch const get§ = param2;
         this.meshes.push(param1);
      }
      
      public function §true const implements§() : TextureByteData
      {
         return this.§try const for§.textures.getValue(this.textureName);
      }
      
      public function §9!§(param1:TextureMaterial) : void
      {
         var _loc2_:Mesh = null;
         var _loc3_:Face = null;
         for each(_loc2_ in this.meshes)
         {
            for each(_loc3_ in _loc2_.faces)
            {
               if(Boolean(this.§catch const get§) && _loc3_.material.name != this.§catch const get§)
               {
                  _loc3_.material = param1;
               }
            }
            _loc2_.removeVertex(_loc2_.addVertex(0,0,0));
         }
      }
   }
}

