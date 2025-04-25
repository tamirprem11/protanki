package §^!S§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Sorting;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §static var dynamic§ extends Mesh
   {
      private static const GAP:Number = 10;
      
      private static const §`!l§:Number = 5;
      
      private var a:Vertex;
      
      private var b:Vertex;
      
      private var c:Vertex;
      
      private var d:Vertex;
      
      private var §var var class§:Face;
      
      private var e:Vertex;
      
      private var f:Vertex;
      
      private var g:Vertex;
      
      private var h:Vertex;
      
      private var §set const null§:Face;
      
      private var length:Number;
      
      private var middle:Number;
      
      private var §3"W§:Number;
      
      private var §final set§:Number;
      
      private var material:Material;
      
      public function §static var dynamic§()
      {
         super();
         this.a = addVertex(-1,1,-GAP);
         this.b = addVertex(-1,0,-GAP);
         this.c = addVertex(1,0,-GAP);
         this.d = addVertex(1,1,-GAP);
         this.§var var class§ = addQuadFace(this.a,this.b,this.c,this.d);
         this.e = addVertex(-1,1,-GAP);
         this.f = addVertex(-1,0,-GAP);
         this.g = addVertex(1,0,-GAP);
         this.h = addVertex(1,1,-GAP);
         this.§set const null§ = addQuadFace(this.e,this.f,this.g,this.h);
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
         var _loc6_:Number = NaN;
         this.length = param2;
         this.material = param3;
         this.§final set§ = param4;
         var _loc5_:TextureMaterial = param3 as TextureMaterial;
         if(_loc5_ != null && _loc5_.texture != null)
         {
            this.§3"W§ = param1 * _loc5_.texture.height * 2 / _loc5_.texture.width;
            this.middle = param2 - this.§3"W§;
         }
         else
         {
            this.§3"W§ = param1 / 2;
            this.middle = 0;
         }
         this.§3"W§ *= 1.25;
         _loc6_ = param1 * 0.5;
         this.a.x = -_loc6_;
         this.a.y = param2;
         this.a.u = 0;
         this.b.x = -_loc6_;
         this.b.u = 0;
         this.c.x = _loc6_;
         this.c.u = 0.5;
         this.d.x = _loc6_;
         this.d.y = param2;
         this.d.u = 0.5;
         this.e.x = -_loc6_;
         this.e.u = 0.5;
         this.e.v = 0;
         this.f.x = -_loc6_;
         this.f.y = 0;
         this.f.u = 0.5;
         this.g.x = _loc6_;
         this.g.y = 0;
         this.g.u = 1;
         this.h.x = _loc6_;
         this.h.u = 1;
         this.h.v = 0;
         boundMinX = -_loc6_;
         boundMinY = 0;
         boundMinZ = 0;
         boundMaxX = _loc6_;
         boundMaxY = param2;
         boundMaxZ = 0;
      }
      
      public function clear() : void
      {
         this.§var var class§.material = null;
         this.§set const null§.material = null;
         this.material = null;
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = this.middle + this.§final set§ * param1;
         if(_loc3_ < §`!l§)
         {
            _loc2_ = _loc3_ < 0 ? Number(0) : Number(_loc3_);
            this.b.y = _loc2_;
            this.c.y = _loc2_;
            this.a.v = 1 - (this.length - _loc3_) / this.§3"W§;
            this.d.v = this.a.v;
            this.b.v = this.a.v + (this.length - _loc2_) / this.§3"W§;
            this.c.v = this.b.v;
            this.e.y = §`!l§;
            this.h.y = §`!l§;
            this.§var var class§.material = this.material;
            this.§set const null§.material = null;
         }
         else if(_loc3_ > this.length - §`!l§)
         {
            _loc2_ = _loc3_ > this.length ? Number(this.length) : Number(_loc3_);
            this.e.y = _loc2_;
            this.h.y = _loc2_;
            this.e.v = -(_loc3_ - _loc2_) / this.§3"W§;
            this.h.v = this.e.v;
            this.f.v = this.e.v + _loc3_ / this.§3"W§;
            this.g.v = this.f.v;
            this.b.y = this.length - §`!l§;
            this.b.y = this.length - §`!l§;
            this.§var var class§.material = null;
            this.§set const null§.material = this.material;
         }
         else
         {
            this.a.v = 1 - (this.length - _loc3_) / this.§3"W§;
            this.d.v = this.a.v;
            this.b.y = _loc3_;
            this.c.y = _loc3_;
            this.e.y = _loc3_;
            this.h.y = _loc3_;
            this.b.v = 1;
            this.c.v = 1;
            this.e.v = 0;
            this.f.v = _loc3_ / this.§3"W§;
            this.g.v = _loc3_ / this.§3"W§;
            this.h.v = 0;
            this.§var var class§.material = this.material;
            this.§set const null§.material = this.material;
         }
      }
   }
}

