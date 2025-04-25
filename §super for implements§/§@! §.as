package §super for implements§
{
   import §9"9§.§!!c§;
   import §9"9§.§3"B§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import §]l§.§const const set§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Vector3;
   import alternativa.tanks.camera.§for for native§;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class §@! § extends §super for static§ implements §3"B§
   {
      private static const §if var native§:int = 100000;
      
      private static const §extends const case§:Number = 1000;
      
      private static const §`!]§:Number = 2000;
      
      private static const §default native§:Number = 2;
      
      private static const §get for while§:Number = 1;
      
      private static const §switch var include§:int = 200;
      
      private static const position:Vector3 = new Vector3();
      
      private var sfxData:§break const switch§;
      
      private var object:Object3D;
      
      private var _type:§const const set§;
      
      private var _enabled:Boolean;
      
      private var dead:Boolean;
      
      private var §throw const do§:§!!c§;
      
      private var §function const case§:SoundChannel;
      
      public function §@! §(param1:§default const static§)
      {
         super(param1);
      }
      
      public function init(param1:§break const switch§, param2:Object3D) : void
      {
         this.sfxData = param1;
         this.object = param2;
         this._type = §const const set§.OFF;
         this.dead = false;
         this._enabled = false;
      }
      
      public function set type(param1:§const const set§) : void
      {
         if(this._type != param1)
         {
            this._type = param1;
            this.§static var null§();
         }
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(this._enabled != param1)
         {
            this._enabled = param1;
            if(!this._enabled)
            {
               this.§throw const do§.stop();
               this.§function const case§ = null;
            }
         }
      }
      
      public function play(param1:int, param2:§for for native§) : void
      {
         if(!this.dead)
         {
            if(this.§function const case§ == null)
            {
               this.§function const case§ = this.§throw const do§.play(§switch var include§,§if var native§);
            }
            position.x = this.object.x;
            position.y = this.object.y;
            position.z = this.object.z;
            this.§throw const do§.§#"g§(param2.position,position,param2.§throw var continue§);
         }
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.x = this.object.x;
         param1.y = this.object.y;
         param1.z = this.object.z;
      }
      
      public function destroy() : void
      {
         if(this.§throw const do§ != null)
         {
            §!!c§.destroy(this.§throw const do§);
            this.§throw const do§ = null;
            this.§function const case§ = null;
         }
         this.sfxData = null;
         this.object = null;
         recycle();
      }
      
      public function get §function throw§() : int
      {
         return this.dead ? int(0) : int(1);
      }
      
      public function kill() : void
      {
         this.dead = true;
      }
      
      private function §static var null§() : void
      {
         var _loc1_:SoundTransform = null;
         if(this.§function const case§ != null)
         {
            _loc1_ = this.§function const case§.soundTransform;
            this.§function const case§ = null;
         }
         if(this.§throw const do§ != null)
         {
            §!!c§.destroy(this.§throw const do§);
         }
         var _loc2_:Sound = this.§&!S§();
         this.§throw const do§ = §!!c§.create(_loc2_,§get for while§,§extends const case§,§`!]§,§default native§);
         if(_loc1_ != null)
         {
            this.§function const case§ = this.§throw const do§.play(§switch var include§,§if var native§);
            if(this.§function const case§ != null)
            {
               this.§function const case§.soundTransform = _loc1_;
            }
         }
      }
      
      private function §&!S§() : Sound
      {
         switch(this._type)
         {
            case §const const set§.IDLE:
               return this.sfxData.idleSound;
            case §const const set§.HEALING:
               return this.sfxData.§&A§;
            case §const const set§.DAMAGING:
               return this.sfxData.§#!^§;
            default:
               throw new Error();
         }
      }
   }
}

