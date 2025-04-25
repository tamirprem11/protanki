package §9"9§
{
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Decal;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.camera.§for for native§;
   import §default var get§.§3!O§;
   
   public class §0"Q§ extends §super for static§ implements §=!t§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var §const§:Decal;
      
      private var position:Vector3 = new Vector3();
      
      private var §3r§:Vector3 = new Vector3();
      
      private var material:TextureMaterial;
      
      private var radius:Number;
      
      private var §-!I§:int;
      
      private var fadeTime:int;
      
      private var §-!U§:int;
      
      public function §0"Q§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function init(param1:Vector3, param2:TextureMaterial, param3:Vector3, param4:Number, param5:int, param6:int) : void
      {
         this.position.copy(param1);
         this.§3r§.copy(param3);
         this.radius = param4;
         this.material = param2;
         this.§-!I§ = param5;
         this.fadeTime = param6;
         this.§-!U§ = param6;
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.§const§ = battleService.§catch include§().§=!g§(this.position,this.§3r§,this.radius,this.material);
         if(this.§const§ == null)
         {
            this.kill();
         }
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         if(this.§-!U§ > 0)
         {
            if(this.§-!I§ > 0)
            {
               this.§-!I§ -= param1;
            }
            else
            {
               this.§-!U§ -= param1;
               if(this.§const§ != null)
               {
                  this.§const§.alpha = this.§-!U§ / this.fadeTime;
               }
            }
            return true;
         }
         return false;
      }
      
      public function destroy() : void
      {
         if(this.§const§ != null)
         {
            battleService.§catch include§().§try const in§(this.§const§);
            this.§const§ = null;
         }
         this.material = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.§-!U§ = 0;
      }
   }
}

