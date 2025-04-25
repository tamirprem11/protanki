package §while finally§
{
   import §2L§.§%!x§;
   import §2L§.§%" §;
   import §],§.§while var const§;
   import §]2§.§"!4§;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.services.colortransform.ColorTransformService;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import alternativa.utils.TextureMaterialRegistry;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.BlendMode;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   import §set var catch§.§switch const get§;
   
   public class §&!-§
   {
      [Inject]
      public static var §9!c§:ColorTransformService;
      
      [Inject]
      public static var §true const function§:TextureMaterialRegistry;
      
      [Inject]
      public static var §extends var finally§:ILightingEffectsService;
      
      public static const §var for if§:Number = 1000;
      
      public static const §import var default§:Number = 350;
      
      private static const MAX_PROGRESS:Number = 100;
      
      private static const §^"Y§:Number = 1.5;
      
      private var pedestal:BSP;
      
      private var §continue const in§:TextureMaterial;
      
      private var §;!J§:TextureMaterial;
      
      private var §!!w§:TextureMaterial;
      
      private var §=r§:TextureMaterial;
      
      private var §="I§:§ F§;
      
      private var lightSource:OmniLight;
      
      private var §break set set§:§%!x§;
      
      private var §-!;§:§%!x§;
      
      private var §import static§:§%!x§;
      
      public function §&!-§(param1:String, param2:§,6§, param3:§switch const get§)
      {
         super();
         this.pedestal = §const in§(param3.pedestal);
         this.§!!w§ = §true const function§.getMaterial(param3.bluePedestalTexture.data);
         this.§;!J§ = §true const function§.getMaterial(param3.redPedestalTexture.data);
         this.§=r§ = §true const function§.getMaterial(param3.neutralPedestalTexture.data);
         var _loc4_:§%" § = §extends var finally§.§function each§(§"!4§.CP);
         this.§break set set§ = _loc4_.§import var override§(§while var const§.RED);
         this.§-!;§ = _loc4_.§import var override§(§while var const§.BLUE);
         this.§import static§ = _loc4_.§import var override§(§while var const§.NONE);
         this.§throw const while§(param1,param3);
         this.§"6§(_loc4_);
         param2.§5!O§(this.§="I§);
         param2.§5!O§(this.pedestal);
      }
      
      private static function §const in§(param1:Tanks3DSResource) : BSP
      {
         var _loc2_:Mesh = Mesh(param1.objects[0]);
         var _loc3_:BSP = new BSP();
         _loc3_.createTree(_loc2_);
         return _loc3_;
      }
      
      private static function §1!8§(param1:BitmapData) : TextureMaterial
      {
         var _loc2_:TextureMaterial = §true const function§.getMaterial(param1,false);
         _loc2_.resolution = §var for if§ / param1.width;
         return _loc2_;
      }
      
      private static function §switch const else§(param1:BitmapData, param2:BitmapData, param3:int) : Matrix
      {
         var _loc4_:int = param2.height;
         var _loc5_:Matrix = new Matrix();
         _loc5_.tx = (param1.height - _loc4_) / 2 - _loc4_ * param3;
         _loc5_.ty = (param1.height - _loc4_) / 2;
         return _loc5_;
      }
      
      private static function §with var extends§(param1:BitmapData, param2:BitmapData) : Rectangle
      {
         var _loc3_:int = param2.height;
         var _loc4_:Number = (param1.height - _loc3_) / 2;
         return new Rectangle(_loc4_,_loc4_,_loc3_,_loc3_);
      }
      
      private static function §4"B§(param1:BitmapData, param2:BitmapData) : BitmapData
      {
         var _loc3_:BitmapData = param1.clone();
         _loc3_.copyChannel(param2,param2.rect,new Point(),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         return _loc3_;
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
      
      private function §"6§(param1:§%" §) : void
      {
         this.lightSource = new OmniLight(0,param1.§=!8§(),param1.§6n§());
         this.§continue const dynamic§(this.§import static§);
      }
      
      private function §throw const while§(param1:String, param2:§switch const get§) : void
      {
         var _loc3_:BitmapData = param2.neutralCircle.data.clone();
         var _loc4_:BitmapData = param2.blueCircle.data.clone();
         var _loc5_:BitmapData = param2.redCircle.data.clone();
         var _loc6_:BitmapData = param2.bigLetters.data;
         var _loc7_:int = param1.charCodeAt(0) - "A".charCodeAt(0);
         var _loc8_:Rectangle = §with var extends§(_loc3_,_loc6_);
         var _loc9_:Matrix = §switch const else§(_loc3_,_loc6_,_loc7_);
         _loc3_.draw(_loc6_,_loc9_,null,BlendMode.NORMAL,_loc8_,true);
         _loc4_.draw(_loc6_,_loc9_,null,BlendMode.NORMAL,_loc8_,true);
         _loc5_.draw(_loc6_,_loc9_,null,BlendMode.NORMAL,_loc8_,true);
         var _loc10_:BitmapData = §4"B§(_loc4_,_loc3_);
         var _loc11_:BitmapData = §4"B§(_loc5_,_loc3_);
         var _loc12_:TextureMaterial = §1!8§(_loc3_);
         var _loc13_:TextureMaterial = §1!8§(_loc4_);
         var _loc14_:TextureMaterial = §1!8§(_loc10_);
         var _loc15_:TextureMaterial = §1!8§(_loc5_);
         var _loc16_:TextureMaterial = §1!8§(_loc11_);
         this.§="I§ = new § F§(§var for if§,§var for if§,_loc12_,_loc14_,_loc13_,_loc16_,_loc15_);
      }
      
      public function update(param1:Number, param2:Camera3D) : void
      {
         this.§="I§.setProgress(param1);
         this.§="I§.§dynamic set var§(param2);
         this.§@"B§(param1 / MAX_PROGRESS);
      }
      
      public function addToScene(param1:§,6§, param2:Vector3) : void
      {
         this.pedestal.x = param2.x;
         this.pedestal.y = param2.y;
         this.pedestal.z = param2.z;
         param1.addObject(this.pedestal);
         this.§="I§.x = param2.x;
         this.§="I§.y = param2.y;
         this.§="I§.z = param2.z + §import var default§;
         param1.addObject(this.§="I§);
         this.lightSource.x = param2.x;
         this.lightSource.y = param2.y;
         this.lightSource.z = param2.z + §import var default§;
         param1.addObject(this.lightSource);
      }
      
      public function §'"0§() : void
      {
         this.§break var override§(this.§;!J§);
         this.§continue const dynamic§(this.§break set set§);
      }
      
      public function §continue static§() : void
      {
         this.§break var override§(this.§!!w§);
         this.§continue const dynamic§(this.§-!;§);
      }
      
      public function §while var return§() : void
      {
         this.§break var override§(this.§=r§);
         this.§continue const dynamic§(this.§import static§);
      }
      
      private function §break var override§(param1:TextureMaterial) : void
      {
         if(this.§continue const in§ != param1)
         {
            this.§continue const in§ = param1;
            this.pedestal.setMaterialToAllFaces(param1);
         }
      }
      
      private function §continue const dynamic§(param1:§%!x§) : void
      {
         this.lightSource.color = param1.§with const final§();
         this.lightSource.intensity = param1.§"r§();
      }
      
      private function §@"B§(param1:Number) : void
      {
         var _loc2_:uint = param1 < 0 ? uint(this.§break set set§.§with const final§()) : uint(this.§-!;§.§with const final§());
         var _loc3_:Number = param1 < 0 ? Number(this.§break set set§.§"r§()) : Number(this.§-!;§.§"r§());
         this.lightSource.color = §class var static§(this.§import static§.§with const final§(),_loc2_,Math.pow(Math.abs(param1),§^"Y§));
         this.lightSource.intensity = §package var null§(this.§import static§.§"r§(),_loc3_,Math.pow(Math.abs(param1),§^"Y§));
      }
   }
}

