package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.engine3d.§2!W§;
   import alternativa.tanks.engine3d.§package var package§;
   import §default var get§.§3!O§;
   import flash.geom.ColorTransform;
   
   public class §'!q§ extends §super for static§ implements §=!t§
   {
      private var sprite:§2!W§;
      
      private var currentFrame:Number;
      
      private var §else catch§:Number;
      
      private var §in const finally§:int;
      
      private var §4o§:§continue var with§;
      
      private var container:§3!O§;
      
      public function §'!q§(param1:§default const static§)
      {
         super(param1);
         this.sprite = new §2!W§(1,1);
      }
      
      public function init(param1:Number, param2:Number, param3:§package var package§, param4:Number, param5:§continue var with§, param6:Number = 0.5, param7:Number = 0.5, param8:ColorTransform = null, param9:Number = 130, param10:String = "normal") : void
      {
         this.§?"f§(param1,param2,param4,param6,param7,param8,param3,param9,param10);
         param5.§for set finally§(this.sprite);
         this.§else catch§ = 0.001 * param3.fps;
         this.§4o§ = param5;
         this.currentFrame = 0;
         this.§in const finally§ = 1;
      }
      
      public function §use set get§(param1:Number, param2:Number, param3:§package var package§, param4:Number, param5:§continue var with§, param6:Number = 0.5, param7:Number = 0.5, param8:ColorTransform = null, param9:Number = 130, param10:String = "normal", param11:int = -1) : void
      {
         this.init(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         this.§in const finally§ = param11;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.sprite);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         this.sprite.§set const const§(this.currentFrame);
         this.currentFrame += param1 * this.§else catch§;
         this.§4o§.§true for if§(this.sprite,param2,param1);
         if(this.§in const finally§ > 0 && this.currentFrame >= this.sprite.getNumFrames())
         {
            --this.§in const finally§;
            if(this.§in const finally§ == 0)
            {
               return false;
            }
            this.currentFrame -= this.sprite.getNumFrames();
         }
         return true;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.sprite);
         this.container = null;
         this.sprite.clear();
         this.§4o§.destroy();
         this.§4o§ = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.§in const finally§ = 1;
         this.currentFrame = this.sprite.getNumFrames();
      }
      
      private function §?"f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:ColorTransform, param7:§package var package§, param8:Number, param9:String) : void
      {
         this.sprite.width = param1;
         this.sprite.height = param2;
         this.sprite.rotation = param3;
         this.sprite.originX = param4;
         this.sprite.originY = param5;
         this.sprite.blendMode = param9;
         this.sprite.colorTransform = param6;
         this.sprite.softAttenuation = param8;
         this.sprite.§-c§(param7);
      }
   }
}

