package alternativa.tanks.engine3d
{
   import alternativa.tanks.services.colortransform.§?!<§;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   import org1.osflash.signals.Signal;
   
   public class §false set static§ implements §try§
   {
      private static const §"",§:ColorTransform = new ColorTransform();
      
      private const §default var else§:Signal = new Signal();
      
      private const textures:Dictionary = new Dictionary();
      
      private var colorTransform:ColorTransform;
      
      public function §false set static§()
      {
         super();
      }
      
      public function clear() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = undefined;
         var _loc3_:BitmapData = null;
         if(this.colorTransform == null)
         {
            this.clearDictionary(this.textures);
         }
         else
         {
            _loc1_ = 0;
            for(_loc2_ in this.textures)
            {
               _loc3_ = this.textures[_loc2_];
               _loc3_.dispose();
               delete this.textures[_loc2_];
               _loc1_++;
            }
         }
      }
      
      public function getTexture(param1:BitmapData, param2:Boolean = true) : BitmapData
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture is null");
         }
         var _loc3_:BitmapData = this.textures[param1];
         if(_loc3_ == null)
         {
            _loc3_ = this.§class var final§(param1,param2);
            this.textures[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      private function §class var final§(param1:BitmapData, param2:Boolean = true) : BitmapData
      {
         if(this.colorTransform == null)
         {
            return param1;
         }
         if(param2)
         {
            return §?!<§.§implements var use§(param1,this.colorTransform);
         }
         return param1.clone();
      }
      
      public function §-U§(param1:Function) : void
      {
         this.§default var else§.add(param1);
      }
      
      public function setColorTransform(param1:ColorTransform) : void
      {
         var _loc2_:ColorTransform = this.§&!]§(param1);
         if(!§?!<§.§?X§(this.colorTransform,_loc2_))
         {
            this.colorTransform = _loc2_;
            this.§#!X§();
            this.§default var else§.dispatch();
         }
      }
      
      public function clearDictionary(param1:Dictionary) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in param1)
         {
            delete param1[_loc2_];
         }
      }
      
      private function §&!]§(param1:ColorTransform) : ColorTransform
      {
         var _loc2_:ColorTransform = §?!<§.clone(param1);
         if(§?!<§.§?X§(_loc2_,§"",§))
         {
            return null;
         }
         return _loc2_;
      }
      
      private function §#!X§() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:BitmapData = null;
         var _loc3_:int = 0;
         for(_loc1_ in this.textures)
         {
            _loc2_ = this.textures[_loc1_];
            if(_loc2_ != _loc1_)
            {
               _loc2_.dispose();
               _loc3_++;
            }
            this.textures[_loc1_] = this.§class var final§(_loc1_);
         }
      }
   }
}

