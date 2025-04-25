package §false for include§
{
   import alternativa.tanks.engine3d.IndexedTextureConstructor;
   import alternativa.utils.TextureMaterialRegistry;
   import alternativa.utils.textureutils.ITextureConstructorListener;
   import alternativa.utils.textureutils.TextureConstructor;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §,!X§ extends EventDispatcher implements ITextureConstructorListener
   {
      private var §true const function§:TextureMaterialRegistry;
      
      private var maxBatchSize:int;
      
      private var totalCounter:int;
      
      private var §3"T§:int;
      
      private var §!I§:Vector.<§>"E§>;
      
      private var constructors:Vector.<IndexedTextureConstructor>;
      
      private var §with throw§:Boolean;
      
      private var textures:Vector.<BitmapData> = new Vector.<BitmapData>();
      
      public function §,!X§(param1:TextureMaterialRegistry, param2:int)
      {
         super();
         this.§true const function§ = param1;
         this.maxBatchSize = param2;
      }
      
      public function destroy() : void
      {
         var _loc1_:BitmapData = null;
         this.§with throw§ = true;
         this.§!I§ = null;
         this.constructors = null;
         for each(_loc1_ in this.textures)
         {
            _loc1_.dispose();
         }
         this.textures = null;
      }
      
      public function run(param1:Vector.<§>"E§>) : void
      {
         this.§!I§ = param1.concat();
         this.totalCounter = 0;
         this.§3"T§ = 0;
         this.§do for while§();
         this.§]![§();
      }
      
      private function §do for while§() : void
      {
         this.constructors = new Vector.<IndexedTextureConstructor>(this.maxBatchSize);
         var _loc1_:int = 0;
         while(_loc1_ < this.maxBatchSize)
         {
            this.constructors[_loc1_] = new IndexedTextureConstructor();
            _loc1_++;
         }
      }
      
      private function §]![§() : void
      {
         var _loc1_:IndexedTextureConstructor = null;
         for each(_loc1_ in this.constructors)
         {
            this.§'"1§(_loc1_);
         }
      }
      
      private function §'"1§(param1:IndexedTextureConstructor) : void
      {
         var _loc2_:§>"E§ = null;
         if(this.§3"T§ < this.§!I§.length)
         {
            param1.index = this.§3"T§;
            _loc2_ = this.§!I§[this.§3"T§++];
            param1.createTexture(_loc2_.§true const implements§(),this);
         }
      }
      
      [Obfuscation(rename="false")]
      public function onTextureReady(param1:TextureConstructor) : void
      {
         var _loc2_:IndexedTextureConstructor = IndexedTextureConstructor(param1);
         if(this.§with throw§)
         {
            _loc2_.§,>§();
         }
         else
         {
            this.textures.push(_loc2_.texture);
            this.§#!@§(_loc2_);
            ++this.totalCounter;
            if(this.totalCounter == this.§!I§.length)
            {
               this.complete();
            }
            else
            {
               this.§'"1§(_loc2_);
            }
         }
      }
      
      private function §#!@§(param1:IndexedTextureConstructor) : void
      {
         var _loc2_:§>"E§ = this.§!I§[param1.index];
         _loc2_.§9!§(this.§true const function§.getMaterial(param1.texture));
      }
      
      private function complete() : void
      {
         this.§!I§ = null;
         this.constructors = null;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §dynamic var in§() : Vector.<BitmapData>
      {
         return this.textures;
      }
   }
}

