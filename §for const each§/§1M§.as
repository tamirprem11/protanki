package §for const each§
{
   import §9"9§.§=!t§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.camera.§for for native§;
   import controls.Label;
   import §default var get§.§3!O§;
   import filters.Filters;
   import flash.display.BitmapData;
   
   public class §1M§ extends §super for static§ implements §=!t§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private static const §&"d§:Number = 100;
      
      private static const §7Y§:Number = 250;
      
      private static const §4e§:Number = 300;
      
      private static const §1!h§:Number = 1000;
      
      private static const §function const finally§:Number = 100;
      
      private static var label:Label = new Label();
      
      private var sprite:Sprite3D;
      
      private var time:int;
      
      private var z:Number;
      
      private var origin:Vector3 = new Vector3();
      
      private var container:§3!O§;
      
      private var §final const package§:Number;
      
      private var §final case§:Number;
      
      public function §1M§(param1:§default const static§)
      {
         super(param1);
         this.sprite = new Sprite3D(0,0);
         this.sprite.perspectiveScale = false;
         this.sprite.material = new TextureMaterial(null,false,false);
         this.sprite.useShadowMap = false;
         this.sprite.useLight = false;
         this.sprite.depthTest = false;
         label.size = 16;
         label.filters = Filters.SHADOW_FILTERS;
      }
      
      public static function start(param1:Vector3, param2:uint, param3:int) : void
      {
         var _loc4_:§1M§ = §1M§(battleService.§#!o§().getObject(§1M§));
         _loc4_.init(param1,param2,param3);
         battleService.§catch include§().§override for native§(_loc4_);
      }
      
      public function §var set var§(param1:§3!O§) : void
      {
         this.container = battleService.§catch include§().§+g§();
         this.container.addChild(this.sprite);
      }
      
      public function play(param1:int, param2:§for for native§) : Boolean
      {
         this.sprite.x = this.origin.x + this.z * this.§final const package§;
         this.sprite.y = this.origin.y + this.z * this.§final case§;
         this.sprite.z = this.origin.z + this.z;
         this.time += param1;
         var _loc3_:Number = this.z < §&"d§ ? Number(§1!h§) : Number(§function const finally§);
         this.z += _loc3_ * param1 * 0.001;
         if(this.z < §7Y§)
         {
            this.sprite.alpha = 1;
         }
         else
         {
            this.sprite.alpha = (§4e§ - this.z) / (§4e§ - §7Y§);
            if(this.sprite.alpha < 0)
            {
               this.sprite.alpha = 0;
               return false;
            }
         }
         return true;
      }
      
      public function destroy() : void
      {
         this.container.removeChild(this.sprite);
         this.container = null;
         recycle();
      }
      
      public function kill() : void
      {
         this.sprite.alpha = 0;
      }
      
      private function init(param1:Vector3, param2:uint, param3:int) : void
      {
         this.origin.copy(param1);
         this.time = 0;
         this.z = 0;
         this.§final const package§ = Math.random() - 0.5;
         this.§final case§ = Math.random() - 0.5;
         label.text = param3.toString();
         label.color = param2;
         var _loc4_:BitmapData = new BitmapData(60,20,true,0);
         _loc4_.draw(label);
         TextureMaterial(this.sprite.material).texture = _loc4_;
         this.sprite.width = _loc4_.width;
         this.sprite.height = _loc4_.height;
         this.sprite.calculateBounds();
      }
   }
}

