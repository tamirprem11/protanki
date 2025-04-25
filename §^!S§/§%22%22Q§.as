package §^!S§
{
   import §9"9§.§%"^§;
   import §9"9§.§=!t§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.materials.Material;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   
   public class §""Q§ extends §super for static§ implements §=!t§
   {
      private var container:§3!O§;
      
      private var §!h§:§static var dynamic§;
      
      private var §get for package§:Vector3 = new Vector3();
      
      private var direction:Vector3 = new Vector3();
      
      private var §="<§:Number;
      
      private var §false for function§:Number;
      
      private var §final set§:Number;
      
      private var §-!I§:int;
      
      private var time:int;
      
      public function §""Q§(param1:§default const static§)
      {
         super(param1);
         this.§!h§ = new §static var dynamic§();
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:Material, param4:Number, param5:Number, param6:Number, param7:Number, param8:int) : void
      {
         this.§get for package§.copy(param1);
         this.direction.diff(param2,param1);
         var _loc9_:Number = this.direction.length();
         this.direction.scale(1 / _loc9_);
         this.§="<§ = param5;
         this.§false for function§ = param6;
         this.§final set§ = param7;
         this.§-!I§ = param8;
         this.§!h§.init(param4,_loc9_,param3,param7);
         this.time = 0;
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.time > this.§-!I§)
         {
            return false;
         }
         §%"^§.§true var throw§(this.§!h§,this.§get for package§,this.direction,param2.position);
         _loc4_ = this.time / this.§-!I§;
         _loc3_ = Math.sqrt(_loc4_);
         this.§!h§.scaleX = this.§="<§ + (this.§false for function§ - this.§="<§) * _loc3_;
         this.§!h§.alpha = 1 - _loc4_;
         this.§!h§.update(_loc3_);
         this.time += param1;
         return true;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§!h§);
      }
      
      public function destroy() : void
      {
         this.§!h§.clear();
         this.container.removeChild(this.§!h§);
         this.container = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.time = this.§-!I§ + 1;
      }
   }
}

