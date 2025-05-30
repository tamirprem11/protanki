package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.materials.Material;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   use namespace alternativa3d;
   
   public class Face
   {
      alternativa3d static var collector:Face;
      
      public var material:Material;
      
      public var smoothingGroups:uint = 0;
      
      alternativa3d var normalX:Number;
      
      alternativa3d var normalY:Number;
      
      alternativa3d var normalZ:Number;
      
      alternativa3d var offset:Number;
      
      alternativa3d var wrapper:Wrapper;
      
      alternativa3d var next:Face;
      
      alternativa3d var processNext:Face;
      
      alternativa3d var processNegative:Face;
      
      alternativa3d var processPositive:Face;
      
      alternativa3d var distance:Number;
      
      alternativa3d var geometry:VG;
      
      public var id:Object;
      
      public function Face()
      {
         super();
      }
      
      alternativa3d static function create() : Face
      {
         var _loc1_:Face = null;
         if(alternativa3d::collector != null)
         {
            _loc1_ = alternativa3d::collector;
            alternativa3d::collector = _loc1_.alternativa3d::next;
            _loc1_.alternativa3d::next = null;
            return _loc1_;
         }
         return new Face();
      }
      
      alternativa3d function create() : Face
      {
         var _loc1_:Face = null;
         if(alternativa3d::collector != null)
         {
            _loc1_ = alternativa3d::collector;
            alternativa3d::collector = _loc1_.alternativa3d::next;
            _loc1_.alternativa3d::next = null;
            return _loc1_;
         }
         return new Face();
      }
      
      public function get normal() : Vector3D
      {
         var _loc1_:Wrapper = this.alternativa3d::wrapper;
         var _loc2_:Vertex = _loc1_.alternativa3d::vertex;
         _loc1_ = _loc1_.alternativa3d::next;
         var _loc3_:Vertex = _loc1_.alternativa3d::vertex;
         _loc1_ = _loc1_.alternativa3d::next;
         var _loc4_:Vertex = _loc1_.alternativa3d::vertex;
         var _loc5_:Number = _loc3_.x - _loc2_.x;
         var _loc6_:Number = _loc3_.y - _loc2_.y;
         var _loc7_:Number = _loc3_.z - _loc2_.z;
         var _loc8_:Number = _loc4_.x - _loc2_.x;
         var _loc9_:Number = _loc4_.y - _loc2_.y;
         var _loc10_:Number = _loc4_.z - _loc2_.z;
         var _loc11_:Number = _loc10_ * _loc6_ - _loc9_ * _loc7_;
         var _loc12_:Number = _loc8_ * _loc7_ - _loc10_ * _loc5_;
         var _loc13_:Number = _loc9_ * _loc5_ - _loc8_ * _loc6_;
         var _loc14_:Number = _loc11_ * _loc11_ + _loc12_ * _loc12_ + _loc13_ * _loc13_;
         if(_loc14_ > 0.001)
         {
            _loc14_ = 1 / Math.sqrt(_loc14_);
            _loc11_ *= _loc14_;
            _loc12_ *= _loc14_;
            _loc13_ *= _loc14_;
         }
         return new Vector3D(_loc11_,_loc12_,_loc13_,_loc2_.x * _loc11_ + _loc2_.y * _loc12_ + _loc2_.z * _loc13_);
      }
      
      public function get vertices() : Vector.<Vertex>
      {
         var _loc1_:Vector.<Vertex> = new Vector.<Vertex>();
         var _loc2_:int = 0;
         var _loc3_:Wrapper = this.alternativa3d::wrapper;
         while(_loc3_ != null)
         {
            _loc1_[_loc2_] = _loc3_.alternativa3d::vertex;
            _loc2_++;
            _loc3_ = _loc3_.alternativa3d::next;
         }
         return _loc1_;
      }
      
      public function getUV(param1:Vector3D) : Point
      {
         var _loc2_:Vertex = this.alternativa3d::wrapper.alternativa3d::vertex;
         var _loc3_:Vertex = this.alternativa3d::wrapper.alternativa3d::next.alternativa3d::vertex;
         var _loc4_:Vertex = this.alternativa3d::wrapper.alternativa3d::next.alternativa3d::next.alternativa3d::vertex;
         var _loc5_:Number = _loc3_.x - _loc2_.x;
         var _loc6_:Number = _loc3_.y - _loc2_.y;
         var _loc7_:Number = _loc3_.z - _loc2_.z;
         var _loc8_:Number = _loc3_.u - _loc2_.u;
         var _loc9_:Number = _loc3_.v - _loc2_.v;
         var _loc10_:Number = _loc4_.x - _loc2_.x;
         var _loc11_:Number = _loc4_.y - _loc2_.y;
         var _loc12_:Number = _loc4_.z - _loc2_.z;
         var _loc13_:Number = _loc4_.u - _loc2_.u;
         var _loc14_:Number = _loc4_.v - _loc2_.v;
         var _loc15_:Number = -this.alternativa3d::normalX * _loc11_ * _loc7_ + _loc10_ * this.alternativa3d::normalY * _loc7_ + this.alternativa3d::normalX * _loc6_ * _loc12_ - _loc5_ * this.alternativa3d::normalY * _loc12_ - _loc10_ * _loc6_ * this.alternativa3d::normalZ + _loc5_ * _loc11_ * this.alternativa3d::normalZ;
         var _loc16_:Number = (-this.alternativa3d::normalY * _loc12_ + _loc11_ * this.alternativa3d::normalZ) / _loc15_;
         var _loc17_:Number = (this.alternativa3d::normalX * _loc12_ - _loc10_ * this.alternativa3d::normalZ) / _loc15_;
         var _loc18_:Number = (-this.alternativa3d::normalX * _loc11_ + _loc10_ * this.alternativa3d::normalY) / _loc15_;
         var _loc19_:Number = (_loc2_.x * this.alternativa3d::normalY * _loc12_ - this.alternativa3d::normalX * _loc2_.y * _loc12_ - _loc2_.x * _loc11_ * this.alternativa3d::normalZ + _loc10_ * _loc2_.y * this.alternativa3d::normalZ + this.alternativa3d::normalX * _loc11_ * _loc2_.z - _loc10_ * this.alternativa3d::normalY * _loc2_.z) / _loc15_;
         var _loc20_:Number = (this.alternativa3d::normalY * _loc7_ - _loc6_ * this.alternativa3d::normalZ) / _loc15_;
         var _loc21_:Number = (-this.alternativa3d::normalX * _loc7_ + _loc5_ * this.alternativa3d::normalZ) / _loc15_;
         var _loc22_:Number = (this.alternativa3d::normalX * _loc6_ - _loc5_ * this.alternativa3d::normalY) / _loc15_;
         var _loc23_:Number = (this.alternativa3d::normalX * _loc2_.y * _loc7_ - _loc2_.x * this.alternativa3d::normalY * _loc7_ + _loc2_.x * _loc6_ * this.alternativa3d::normalZ - _loc5_ * _loc2_.y * this.alternativa3d::normalZ - this.alternativa3d::normalX * _loc6_ * _loc2_.z + _loc5_ * this.alternativa3d::normalY * _loc2_.z) / _loc15_;
         var _loc24_:Number = _loc8_ * _loc16_ + _loc13_ * _loc20_;
         var _loc25_:Number = _loc8_ * _loc17_ + _loc13_ * _loc21_;
         var _loc26_:Number = _loc8_ * _loc18_ + _loc13_ * _loc22_;
         var _loc27_:Number = _loc8_ * _loc19_ + _loc13_ * _loc23_ + _loc2_.u;
         var _loc28_:Number = _loc9_ * _loc16_ + _loc14_ * _loc20_;
         var _loc29_:Number = _loc9_ * _loc17_ + _loc14_ * _loc21_;
         var _loc30_:Number = _loc9_ * _loc18_ + _loc14_ * _loc22_;
         var _loc31_:Number = _loc9_ * _loc19_ + _loc14_ * _loc23_ + _loc2_.v;
         return new Point(_loc24_ * param1.x + _loc25_ * param1.y + _loc26_ * param1.z + _loc27_,_loc28_ * param1.x + _loc29_ * param1.y + _loc30_ * param1.z + _loc31_);
      }
      
      public function toString() : String
      {
         return "[Face " + this.id + "]";
      }
      
      alternativa3d function calculateBestSequenceAndNormal() : void
      {
         var _loc1_:Wrapper = null;
         var _loc2_:Vertex = null;
         var _loc3_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Wrapper = null;
         var _loc17_:Wrapper = null;
         var _loc18_:Wrapper = null;
         var _loc19_:Wrapper = null;
         var _loc20_:Wrapper = null;
         if(this.alternativa3d::wrapper.alternativa3d::next.alternativa3d::next.alternativa3d::next != null)
         {
            _loc15_ = -1e+22;
            _loc1_ = this.alternativa3d::wrapper;
            while(_loc1_ != null)
            {
               _loc19_ = _loc1_.alternativa3d::next != null ? _loc1_.alternativa3d::next : this.alternativa3d::wrapper;
               _loc20_ = _loc19_.alternativa3d::next != null ? _loc19_.alternativa3d::next : this.alternativa3d::wrapper;
               _loc2_ = _loc1_.alternativa3d::vertex;
               _loc3_ = _loc19_.alternativa3d::vertex;
               _loc4_ = _loc20_.alternativa3d::vertex;
               _loc5_ = _loc3_.x - _loc2_.x;
               _loc6_ = _loc3_.y - _loc2_.y;
               _loc7_ = _loc3_.z - _loc2_.z;
               _loc8_ = _loc4_.x - _loc2_.x;
               _loc9_ = _loc4_.y - _loc2_.y;
               _loc10_ = _loc4_.z - _loc2_.z;
               _loc11_ = _loc10_ * _loc6_ - _loc9_ * _loc7_;
               _loc12_ = _loc8_ * _loc7_ - _loc10_ * _loc5_;
               _loc13_ = _loc9_ * _loc5_ - _loc8_ * _loc6_;
               _loc14_ = _loc11_ * _loc11_ + _loc12_ * _loc12_ + _loc13_ * _loc13_;
               if(_loc14_ > _loc15_)
               {
                  _loc15_ = _loc14_;
                  _loc16_ = _loc1_;
               }
               _loc1_ = _loc1_.alternativa3d::next;
            }
            if(_loc16_ != this.alternativa3d::wrapper)
            {
               _loc17_ = this.alternativa3d::wrapper.alternativa3d::next.alternativa3d::next.alternativa3d::next;
               while(_loc17_.alternativa3d::next != null)
               {
                  _loc17_ = _loc17_.alternativa3d::next;
               }
               _loc18_ = this.alternativa3d::wrapper;
               while(_loc18_.alternativa3d::next != _loc16_ && _loc18_.alternativa3d::next != null)
               {
                  _loc18_ = _loc18_.alternativa3d::next;
               }
               _loc17_.alternativa3d::next = this.alternativa3d::wrapper;
               _loc18_.alternativa3d::next = null;
               this.alternativa3d::wrapper = _loc16_;
            }
         }
         _loc1_ = this.alternativa3d::wrapper;
         _loc2_ = _loc1_.alternativa3d::vertex;
         _loc1_ = _loc1_.alternativa3d::next;
         _loc3_ = _loc1_.alternativa3d::vertex;
         _loc1_ = _loc1_.alternativa3d::next;
         _loc4_ = _loc1_.alternativa3d::vertex;
         _loc5_ = _loc3_.x - _loc2_.x;
         _loc6_ = _loc3_.y - _loc2_.y;
         _loc7_ = _loc3_.z - _loc2_.z;
         _loc8_ = _loc4_.x - _loc2_.x;
         _loc9_ = _loc4_.y - _loc2_.y;
         _loc10_ = _loc4_.z - _loc2_.z;
         _loc11_ = _loc10_ * _loc6_ - _loc9_ * _loc7_;
         _loc12_ = _loc8_ * _loc7_ - _loc10_ * _loc5_;
         _loc13_ = _loc9_ * _loc5_ - _loc8_ * _loc6_;
         _loc14_ = _loc11_ * _loc11_ + _loc12_ * _loc12_ + _loc13_ * _loc13_;
         if(_loc14_ > 0)
         {
            _loc14_ = 1 / Math.sqrt(_loc14_);
            _loc11_ *= _loc14_;
            _loc12_ *= _loc14_;
            _loc13_ *= _loc14_;
            this.alternativa3d::normalX = _loc11_;
            this.alternativa3d::normalY = _loc12_;
            this.alternativa3d::normalZ = _loc13_;
         }
         this.alternativa3d::offset = _loc2_.x * _loc11_ + _loc2_.y * _loc12_ + _loc2_.z * _loc13_;
      }
   }
}

