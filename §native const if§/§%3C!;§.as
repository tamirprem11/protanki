package §native const if§
{
   import §9"9§.§%"^§;
   import §9"9§.§=!t§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.console.variables.ConsoleVarFloat;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   import flash.utils.Dictionary;
   
   public class §<!;§ extends §super for static§ implements §=!t§
   {
      private static const §import var continue§:ConsoleVarFloat = new ConsoleVarFloat("beam_zoffset",100,0,1000);
      
      private static const §#"`§:Vector3 = new Vector3();
      
      private static const direction:Vector3 = new Vector3();
      
      private var §extends var static§:§true var catch§;
      
      private var alive:Boolean;
      
      private var object:Object3D;
      
      private var §break set with§:Vector3 = new Vector3();
      
      private var §%!'§:Dictionary;
      
      private var container:§3!O§;
      
      public function §<!;§(param1:§default const static§)
      {
         super(param1);
         this.§extends var static§ = new §true var catch§(1,1,1,0);
      }
      
      public function init(param1:Object3D, param2:Vector3, param3:§each set set§, param4:Dictionary) : void
      {
         this.object = param1;
         this.§break set with§.copy(param2);
         this.§extends var static§.§do const function§(param3.§in const set§,param3.§in var native§);
         this.§extends var static§.§;!7§(param3.§-z§);
         this.§extends var static§.§4,§ = param3.§4,§;
         this.§super for dynamic§(param3.§%w§);
         this.§extends var static§.§0"5§(param3.§function set use§);
         this.§extends var static§.alpha = param3.alpha;
         this.alive = true;
         this.§%!'§ = param4;
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         §#"`§.x = this.object.x;
         §#"`§.y = this.object.y;
         §#"`§.z = this.object.z + §import var continue§.value;
         direction.diff(this.§break set with§,§#"`§);
         this.§extends var static§.setLength(direction.length());
         direction.normalize();
         §%"^§.§true var throw§(this.§extends var static§,§#"`§,direction,param2.position);
         this.§extends var static§.update(param1 * 0.001);
         return this.alive;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = param1;
         param1.addChild(this.§extends var static§);
         this.§%!'§[this.§extends var static§] = true;
      }
      
      public function destroy() : void
      {
         this.object = null;
         this.container.removeChild(this.§extends var static§);
         this.§extends var static§.setMaterialToAllFaces(null);
         delete this.§%!'§[this.§extends var static§];
         this.§%!'§ = null;
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      public function §super for dynamic§(param1:Number) : void
      {
         this.§extends var static§.setWidth(param1);
         this.§extends var static§.§override false§(param1);
      }
   }
}

