package §super for implements§
{
   import alternativa.engine3d.core.Sorting;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   
   internal class §8&§ extends Mesh
   {
      private var §override for catch§:Vector.<Vertex>;
      
      private var §1"U§:int = 0;
      
      private var direction:int = 1;
      
      private var width:Number;
      
      private var §3"W§:Number = 1;
      
      private var offset:Number = 0;
      
      private var §each var case§:Number = 0;
      
      private var §78§:Number = 0;
      
      public function §8&§()
      {
         var _loc1_:Vertex = null;
         var _loc2_:Vertex = null;
         this.§override for catch§ = new Vector.<Vertex>();
         super();
         var _loc3_:Vertex = addVertex(-1,0,0);
         var _loc4_:Vertex = addVertex(1,0,0);
         this.§override for catch§[this.§1"U§] = _loc3_;
         ++this.§1"U§;
         this.§override for catch§[this.§1"U§] = _loc4_;
         ++this.§1"U§;
         var _loc5_:int = 0;
         while(_loc5_ < §>R§.§`!!§)
         {
            _loc1_ = addVertex(-1,-_loc5_ - 1,0);
            _loc2_ = addVertex(1,-_loc5_ - 1,0);
            this.§override for catch§[this.§1"U§] = _loc1_;
            ++this.§1"U§;
            this.§override for catch§[this.§1"U§] = _loc2_;
            ++this.§1"U§;
            addQuadFace(_loc3_,_loc1_,_loc2_,_loc4_);
            _loc3_ = _loc1_;
            _loc4_ = _loc2_;
            _loc5_++;
         }
         calculateFacesNormals();
         sorting = Sorting.DYNAMIC_BSP;
         shadowMapAlphaThreshold = 2;
         depthMapAlphaThreshold = 2;
         useShadowMap = false;
         useLight = false;
      }
      
      public function init(param1:Number, param2:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc3_:Vertex = null;
         var _loc4_:Vertex = null;
         this.width = param1;
         _loc5_ = param1 * 0.5;
         var _loc6_:int = 0;
         while(_loc6_ < this.§1"U§)
         {
            _loc3_ = this.§override for catch§[_loc6_];
            _loc6_++;
            _loc4_ = this.§override for catch§[_loc6_];
            _loc3_.x = -_loc5_;
            _loc3_.u = 0;
            _loc4_.x = _loc5_;
            _loc4_.u = 1;
            _loc6_++;
         }
         boundMinX = -_loc5_;
         boundMaxX = _loc5_;
         boundMinY = 0;
         boundMinZ = 0;
         boundMaxZ = 0;
      }
      
      public function §9!§(param1:Material, param2:int) : void
      {
         this.direction = param2;
         setMaterialToAllFaces(param1);
         var _loc3_:TextureMaterial = param1 as TextureMaterial;
         if(_loc3_ != null && _loc3_.texture != null)
         {
            this.§3"W§ = this.width * _loc3_.texture.height / _loc3_.texture.width;
         }
         else
         {
            this.§3"W§ = this.width;
         }
         this.offset = 0;
         this.§each var case§ = 0;
         this.§78§ = 0;
      }
      
      public function update(param1:int, param2:Number) : void
      {
         var _loc3_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = §>R§.§do var false§ / this.width;
         var _loc9_:Number = this.direction * §>R§.§catch var each§;
         var _loc10_:Number = this.direction * §>R§.§`"c§;
         var _loc11_:Number = this.direction * §>R§.§final var implements§ / this.§3"W§;
         this.§each var case§ += _loc9_ * param1 / 1000;
         this.§78§ += _loc10_ * param1 / 1000;
         this.offset += _loc11_ * param1 / 1000;
         var _loc12_:Number = param2 / §>R§.§`!!§;
         var _loc13_:Number = param2 / 2;
         var _loc14_:Number = 1;
         var _loc15_:int = 0;
         while(_loc15_ < this.§1"U§)
         {
            _loc3_ = this.§override for catch§[_loc15_];
            _loc15_++;
            _loc4_ = this.§override for catch§[_loc15_];
            _loc3_.y = param2 - (_loc15_ >> 1) * _loc12_;
            _loc4_.y = _loc3_.y;
            _loc5_ = _loc13_ - _loc3_.y;
            _loc3_.v = _loc5_ / this.§3"W§ + this.offset;
            _loc4_.v = _loc3_.v;
            if(_loc3_.y < _loc13_)
            {
               _loc14_ = _loc3_.y / §>R§.§2=§;
            }
            else
            {
               _loc14_ = (param2 - _loc3_.y) / §>R§.§2=§;
            }
            if(_loc14_ > 1)
            {
               _loc14_ = 1;
            }
            _loc6_ = Math.sin(Math.PI * 2 * (_loc5_ + this.§each var case§) / §>R§.§override for for§);
            _loc7_ = Math.sin(Math.PI * 2 * (_loc5_ + this.§78§) / §>R§.§'5§);
            _loc3_.u = (_loc6_ + _loc7_) * 0.5 * _loc8_ * _loc14_;
            _loc4_.u = 1 + _loc3_.u;
            _loc15_++;
         }
         boundMaxY = param2;
      }
      
      public function clear() : void
      {
         setMaterialToAllFaces(null);
      }
   }
}

