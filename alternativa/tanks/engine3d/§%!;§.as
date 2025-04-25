package alternativa.tanks.engine3d
{
   import alternativa.engine3d.core.MipMapping;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.tankskin.§set for case§;
   import alternativa.tanks.materials.AnimatedPaintMaterial;
   import alternativa.tanks.materials.PaintMaterial;
   import alternativa.utils.TextureMaterialRegistry;
   import alternativa.utils.clearDictionary;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   
   public class §%!;§ implements TextureMaterialRegistry
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var §while override§:§in const throw§ = new §in const throw§();
      
      private var §;!i§:§return const const§;
      
      private var §if for final§:Boolean;
      
      private const materials:Vector.<TextureMaterial> = new Vector.<TextureMaterial>();
      
      private const §return for catch§:Dictionary = new Dictionary();
      
      private const §set const class§:Dictionary = new Dictionary();
      
      public function §%!;§(param1:§return const const§)
      {
         super();
         this.§;!i§ = param1;
      }
      
      public function §const var use§() : §in const throw§
      {
         return this.§while override§;
      }
      
      public function getAnimatedPaint(param1:MultiframeImageResource, param2:§set for case§) : AnimatedPaintMaterial
      {
         var _loc3_:set = null;
         ++this.§while override§.§]"]§;
         var _loc4_:String = param1.id.toString() + " " + param2.§+"G§;
         if(_loc4_ in this.§return for catch§)
         {
            _loc3_ = this.§return for catch§[_loc4_];
            ++_loc3_.§7g§;
            return _loc3_.material as AnimatedPaintMaterial;
         }
         var _loc5_:int = param1.data.width / param1.frameWidth;
         var _loc6_:int = param1.data.height / param1.frameHeight;
         var _loc7_:AnimatedPaintMaterial = new AnimatedPaintMaterial(param1.data,param2.lightmap,param2.details,_loc5_,_loc6_,param1.fps,param1.numFrames,this.§if for final§ ? int(MipMapping.PER_PIXEL) : int(0));
         _loc3_ = this.§#!r§(_loc4_,_loc7_);
         ++_loc3_.§7g§;
         this.materials.push(_loc7_);
         ++this.§while override§.§5"&§;
         return _loc7_;
      }
      
      public function getPaint(param1:ImageResource, param2:§set for case§) : PaintMaterial
      {
         var _loc3_:set = null;
         ++this.§while override§.§]"]§;
         var _loc4_:String = param1.id.toString() + " " + param2.§+"G§;
         if(_loc4_ in this.§return for catch§)
         {
            _loc3_ = this.§return for catch§[_loc4_];
            ++_loc3_.§7g§;
            return _loc3_.material as PaintMaterial;
         }
         var _loc5_:PaintMaterial = new PaintMaterial(param1.data,param2.lightmap,param2.details,this.§if for final§ ? int(MipMapping.PER_PIXEL) : int(0));
         _loc3_ = this.§#!r§(_loc4_,_loc5_);
         ++_loc3_.§7g§;
         this.materials.push(_loc5_);
         ++this.§while override§.§5"&§;
         return _loc5_;
      }
      
      public function getMaterial(param1:BitmapData, param2:Boolean = true) : TextureMaterial
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture is null");
         }
         ++this.§while override§.§]"]§;
         var _loc3_:set = this.§native var if§(param1,param2);
         ++_loc3_.§7g§;
         return _loc3_.material;
      }
      
      private function §native var if§(param1:BitmapData, param2:Boolean) : set
      {
         var _loc3_:TextureMaterial = null;
         var _loc4_:set = this.§return for catch§[param1];
         if(_loc4_ == null)
         {
            _loc3_ = this.§>N§(param1,param2);
            _loc4_ = this.§set set throw§(param1,_loc3_);
         }
         return _loc4_;
      }
      
      private function §>N§(param1:BitmapData, param2:Boolean) : TextureMaterial
      {
         var _loc3_:BitmapData = this.getTexture(param1,param2);
         var _loc4_:TextureMaterial = this.§;!i§.§ H§(_loc3_,this.§if for final§);
         this.materials.push(_loc4_);
         ++this.§while override§.§5"&§;
         return _loc4_;
      }
      
      protected function getTexture(param1:BitmapData, param2:Boolean) : BitmapData
      {
         throw new Error("Not implemented");
      }
      
      private function §#!r§(param1:String, param2:TextureMaterial) : set
      {
         var _loc3_:set = new set(param1,param2);
         this.§return for catch§[param1] = _loc3_;
         this.§set const class§[param2] = _loc3_;
         return _loc3_;
      }
      
      private function §set set throw§(param1:BitmapData, param2:TextureMaterial) : set
      {
         var _loc3_:set = new set(param1,param2);
         this.§return for catch§[param1] = _loc3_;
         this.§set const class§[param2] = _loc3_;
         return _loc3_;
      }
      
      public function addMaterial(param1:TextureMaterial) : void
      {
         var _loc2_:set = this.§set set throw§(null,param1);
         ++_loc2_.§7g§;
         this.§set const class§[param1] = _loc2_;
         this.materials.push(param1);
      }
      
      public function releaseMaterial(param1:TextureMaterial) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:set = this.§set const class§[param1];
         if(_loc2_ != null)
         {
            ++this.§while override§.§""L§;
            --_loc2_.§7g§;
            if(_loc2_.§7g§ == 0)
            {
               this.§2!G§(_loc2_);
            }
         }
      }
      
      private function §2!G§(param1:set) : void
      {
         ++this.§while override§.§const override§;
         var _loc2_:TextureMaterial = param1.material;
         if(param1.§%!!§ in this.§return for catch§)
         {
            delete this.§return for catch§[param1.§%!!§];
         }
         delete this.§set const class§[_loc2_];
         param1.material = null;
         var _loc3_:int = int(this.materials.indexOf(_loc2_));
         this.materials.splice(_loc3_,1);
         _loc2_.dispose();
      }
      
      protected function §-"4§(param1:Function) : void
      {
         var _loc2_:TextureMaterial = null;
         for each(_loc2_ in this.materials)
         {
            param1(_loc2_);
         }
      }
      
      public function setMipMapping(param1:Boolean) : void
      {
         if(this.§if for final§ != param1)
         {
            if(param1)
            {
               this.enableMipMapping();
            }
            else
            {
               this.§7"D§();
            }
         }
      }
      
      private function enableMipMapping() : void
      {
         if(!this.§if for final§)
         {
            this.§if for final§ = true;
            this.§-"4§(this.disposeResource);
            this.§-"4§(this.§]!2§);
         }
      }
      
      private function §]!2§(param1:TextureMaterial) : void
      {
         param1.mipMapping = MipMapping.PER_PIXEL;
      }
      
      private function §7"D§() : void
      {
         if(this.§if for final§)
         {
            this.§if for final§ = false;
            this.§-"4§(this.disposeResource);
            this.§-"4§(this.§finally const else§);
         }
      }
      
      private function disposeResource(param1:TextureMaterial) : void
      {
         param1.disposeResource();
      }
      
      private function §finally const else§(param1:TextureMaterial) : void
      {
         param1.mipMapping = MipMapping.NONE;
      }
      
      public function clear() : void
      {
         this.§-"4§(this.§import set false§);
         this.materials.length = 0;
         clearDictionary(this.§return for catch§);
         clearDictionary(this.§set const class§);
         this.§while override§.clear();
      }
      
      private function §import set false§(param1:TextureMaterial) : void
      {
         param1.texture = null;
      }
      
      protected function §;"^§(param1:TextureMaterial) : set
      {
         return this.§set const class§[param1];
      }
   }
}

