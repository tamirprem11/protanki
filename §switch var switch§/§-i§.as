package §switch var switch§
{
   import §9"9§.§%"^§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.materials.Material;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   
   public class §-i§ extends §super for static§ implements §6!-§
   {
      public static const WIDTH:Number = 48;
      
      private var position:Vector3 = new Vector3();
      
      private var direction:Vector3 = new Vector3();
      
      private var §default§:Number;
      
      private var §@p§:int;
      
      private var §extends var static§:§null const catch§;
      
      private var container:§3!O§;
      
      public function §-i§(param1:§default const static§)
      {
         super(param1);
         this.§extends var static§ = new §null const catch§();
      }
      
      public function init(param1:Vector3, param2:Vector3, param3:Number, param4:Number, param5:Material, param6:int) : void
      {
         this.position.copy(param1);
         this.direction.copy(param2);
         this.§@p§ = param6;
         this.§default§ = 1 / param6;
         this.§extends var static§.init(WIDTH,param3,param4,param5);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(this.§@p§ < 0)
         {
            return false;
         }
         this.§@p§ -= param1;
         this.§extends var static§.alpha -= this.§default§ * param1;
         §%"^§.§true var throw§(this.§extends var static§,this.position,this.direction,param2.position);
         return true;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§extends var static§);
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.§extends var static§);
         this.container = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.§@p§ = -1;
      }
   }
}

