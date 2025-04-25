package §^!S§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Sorting;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §7"I§ extends Mesh
   {
      private var a:Vertex;
      
      private var b:Vertex;
      
      private var c:Vertex;
      
      private var d:Vertex;
      
      private var face:Face;
      
      private var §case var const§:Number;
      
      private var §with const use§:Number;
      
      public function §7"I§()
      {
         super();
         this.a = addVertex(-1,1,0);
         this.b = addVertex(-1,0,0);
         this.c = addVertex(1,0,0);
         this.d = addVertex(1,1,0);
         this.face = addQuadFace(this.a,this.b,this.c,this.d);
         calculateFacesNormals();
         sorting = Sorting.DYNAMIC_BSP;
         softAttenuation = 80;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function init(param1:Number, param2:Number, param3:Material, param4:Number) : void
      {
         var _loc5_:Number = param1 * 0.5;
         this.a.x = -_loc5_;
         this.a.y = param2;
         this.a.u = 0;
         this.b.x = -_loc5_;
         this.b.y = 0;
         this.b.u = 0;
         this.c.x = _loc5_;
         this.c.y = 0;
         this.c.u = 1;
         this.d.x = _loc5_;
         this.d.y = param2;
         this.d.u = 1;
         boundMinX = -_loc5_;
         boundMinY = 0;
         boundMinZ = 0;
         boundMaxX = _loc5_;
         boundMaxY = param2;
         boundMaxZ = 0;
         this.face.material = param3;
         var _loc6_:TextureMaterial = param3 as TextureMaterial;
         if(_loc6_ != null && _loc6_.texture != null)
         {
            this.§case var const§ = param2 / (param1 * _loc6_.texture.height / _loc6_.texture.width);
            this.§with const use§ = param4 / param1;
         }
         else
         {
            this.§case var const§ = 1;
            this.§with const use§ = 0;
         }
      }
      
      public function clear() : void
      {
         this.face.material = null;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = this.§with const use§ * param1;
         this.a.v = _loc2_;
         this.b.v = this.§case var const§ + _loc2_;
         this.c.v = this.§case var const§ + _loc2_;
         this.d.v = _loc2_;
      }
   }
}

