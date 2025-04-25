package §9"9§
{
   import alternativa.engine3d.core.Light3D;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.lights.SpotLight;
   import alternativa.engine3d.lights.TubeLight;
   import §each var import§.§ !e§;
   
   public final class §,!"§
   {
      private var §set for in§:int;
      
      private var time:Vector.<uint>;
      
      private var intensity:Vector.<Number>;
      
      private var color:Vector.<uint>;
      
      private var attenuationBegin:Vector.<Number>;
      
      private var attenuationEnd:Vector.<Number>;
      
      public function §,!"§(param1:Vector.<§ !e§>)
      {
         var _loc2_:§ !e§ = null;
         super();
         this.§set for in§ = param1.length;
         this.intensity = new Vector.<Number>(this.§set for in§,true);
         this.color = new Vector.<uint>(this.§set for in§,true);
         this.attenuationBegin = new Vector.<Number>(this.§set for in§,true);
         this.attenuationEnd = new Vector.<Number>(this.§set for in§,true);
         this.time = new Vector.<uint>(this.§set for in§,true);
         var _loc3_:int = 0;
         while(_loc3_ < this.§set for in§)
         {
            _loc2_ = param1[_loc3_];
            this.intensity[_loc3_] = Number(_loc2_.intensity);
            this.color[_loc3_] = uint(_loc2_.color);
            this.attenuationBegin[_loc3_] = Number(_loc2_.attenuationBegin);
            this.attenuationEnd[_loc3_] = Number(_loc2_.attenuationEnd);
            this.time[_loc3_] = uint(_loc2_.time);
            _loc3_++;
         }
      }
      
      private static function §package var null§(param1:Number, param2:Number, param3:Number) : Number
      {
         return param1 + (param2 - param1) * param3;
      }
      
      private static function §class var static§(param1:uint, param2:uint, param3:Number) : uint
      {
         var _loc4_:Number = (param1 >> 16 & 0xFF) / 255;
         var _loc5_:Number = (param1 >> 8 & 0xFF) / 255;
         var _loc6_:Number = (param1 & 0xFF) / 255;
         var _loc7_:Number = (param2 >> 16 & 0xFF) / 255;
         var _loc8_:Number = (param2 >> 8 & 0xFF) / 255;
         var _loc9_:Number = (param2 & 0xFF) / 255;
         var _loc10_:int = §package var null§(_loc4_,_loc7_,param3) * 255;
         var _loc11_:int = §package var null§(_loc5_,_loc8_,param3) * 255;
         var _loc12_:int = §package var null§(_loc6_,_loc9_,param3) * 255;
         return _loc10_ << 16 | _loc11_ << 8 | _loc12_;
      }
      
      private function §while set dynamic§(param1:Number) : Number
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = 0;
         if(param1 < this.time[this.§set for in§ - 1])
         {
            _loc2_ = 0;
            while(_loc2_ < this.§set for in§ - 1)
            {
               _loc3_ = this.time[_loc2_];
               _loc4_ = this.time[_loc2_ + 1];
               if(param1 >= _loc3_ && param1 < _loc4_)
               {
                  _loc5_ = (param1 - _loc3_) / (_loc4_ - _loc3_);
                  _loc6_ = _loc2_ + _loc5_;
                  break;
               }
               _loc2_++;
            }
         }
         else
         {
            _loc6_ = this.§set for in§ - 1;
         }
         return _loc6_;
      }
      
      public function §throw for set§() : int
      {
         return this.§set for in§;
      }
      
      private function §case set static§(param1:int) : int
      {
         return param1 < this.§set for in§ ? int(param1) : int(this.§set for in§ - 1);
      }
      
      private function §4n§(param1:Number, param2:SpotLight) : void
      {
         var _loc3_:int = this.§case set static§(Math.floor(param1));
         var _loc4_:int = this.§case set static§(Math.ceil(param1));
         var _loc5_:Number = param1 - _loc3_;
         var _loc6_:Number = this.intensity[_loc3_];
         var _loc7_:Number = this.intensity[_loc4_];
         var _loc8_:uint = this.color[_loc3_];
         var _loc9_:uint = this.color[_loc4_];
         var _loc10_:Number = this.attenuationBegin[_loc3_];
         var _loc11_:Number = this.attenuationBegin[_loc4_];
         var _loc12_:Number = this.attenuationEnd[_loc3_];
         var _loc13_:Number = this.attenuationEnd[_loc4_];
         param2.intensity = §package var null§(_loc6_,_loc7_,_loc5_);
         param2.color = §class var static§(_loc8_,_loc9_,_loc5_);
         param2.attenuationBegin = §package var null§(_loc10_,_loc11_,_loc5_);
         param2.attenuationEnd = §package var null§(_loc12_,_loc13_,_loc5_);
      }
      
      private function §=!0§(param1:Number, param2:OmniLight) : void
      {
         var _loc3_:int = this.§case set static§(Math.floor(param1));
         var _loc4_:int = this.§case set static§(Math.ceil(param1));
         var _loc5_:Number = param1 - _loc3_;
         var _loc6_:Number = this.intensity[_loc3_];
         var _loc7_:Number = this.intensity[_loc4_];
         var _loc8_:uint = this.color[_loc3_];
         var _loc9_:uint = this.color[_loc4_];
         var _loc10_:Number = this.attenuationBegin[_loc3_];
         var _loc11_:Number = this.attenuationBegin[_loc4_];
         var _loc12_:Number = this.attenuationEnd[_loc3_];
         var _loc13_:Number = this.attenuationEnd[_loc4_];
         param2.intensity = §package var null§(_loc6_,_loc7_,_loc5_);
         param2.color = §class var static§(_loc8_,_loc9_,_loc5_);
         param2.attenuationBegin = §package var null§(_loc10_,_loc11_,_loc5_);
         param2.attenuationEnd = §package var null§(_loc12_,_loc13_,_loc5_);
      }
      
      private function §set in§(param1:Number, param2:TubeLight) : void
      {
         var _loc3_:int = this.§case set static§(Math.floor(param1));
         var _loc4_:int = this.§case set static§(Math.ceil(param1));
         var _loc5_:Number = param1 - _loc3_;
         var _loc6_:Number = this.intensity[_loc3_];
         var _loc7_:Number = this.intensity[_loc4_];
         var _loc8_:uint = this.color[_loc3_];
         var _loc9_:uint = this.color[_loc4_];
         var _loc10_:Number = this.attenuationBegin[_loc3_];
         var _loc11_:Number = this.attenuationBegin[_loc4_];
         var _loc12_:Number = this.attenuationEnd[_loc3_];
         var _loc13_:Number = this.attenuationEnd[_loc4_];
         param2.intensity = §package var null§(_loc6_,_loc7_,_loc5_);
         param2.color = §class var static§(_loc8_,_loc9_,_loc5_);
         param2.attenuationBegin = §package var null§(_loc10_,_loc11_,_loc5_);
         param2.attenuationEnd = §package var null§(_loc12_,_loc13_,_loc5_);
      }
      
      public function §<"F§(param1:Light3D, param2:int, param3:int = -1) : void
      {
         var _loc4_:Number = 1;
         if(param3 > 0 && this.§set for in§ > 0)
         {
            _loc4_ = this.time[this.§set for in§ - 1] / param3;
         }
         var _loc5_:Number = this.§while set dynamic§(param2 * _loc4_);
         this.§native const extends§(param1,_loc5_);
      }
      
      private function §native const extends§(param1:Light3D, param2:Number) : void
      {
         if(param1 is OmniLight)
         {
            this.§=!0§(param2,OmniLight(param1));
         }
         else if(param1 is SpotLight)
         {
            this.§4n§(param2,SpotLight(param1));
         }
         else if(param1 is TubeLight)
         {
            this.§set in§(param2,TubeLight(param1));
         }
         param1.calculateBounds();
      }
      
      public function §implements set import§() : int
      {
         return this.time[this.§set for in§ - 1];
      }
   }
}

