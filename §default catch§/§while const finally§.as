package §default catch§
{
   import §9"9§.§!!c§;
   import §9"9§.§3"B§;
   import §<"N§.§default const static§;
   import §<"N§.§super for static§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.tanks.camera.§for for native§;
   import flash.media.Sound;
   
   public class §while const finally§ extends §super for static§ implements §3"B§
   {
      private static const §extends const case§:Number = 1500;
      
      private static const §`!]§:Number = 5000;
      
      private static const §default native§:Number = 10;
      
      private static const §get for while§:Number = 1.3;
      
      private var §override for continue§:§!!c§;
      
      private var position:Vector3 = new Vector3();
      
      private var alive:Boolean;
      
      public function §while const finally§(param1:§default const static§)
      {
         super(param1);
      }
      
      public function get owner() : ClientObject
      {
         return null;
      }
      
      public function init(param1:Sound, param2:Vector3) : void
      {
         this.§override for continue§ = §!!c§.create(param1,§get for while§,§extends const case§,§`!]§,§default native§);
         this.position.copy(param2);
         this.alive = true;
      }
      
      public function play(param1:int, param2:§for for native§) : void
      {
         if(!this.§override for continue§.§;3§())
         {
            this.§override for continue§.play(0,99999);
         }
         this.§override for continue§.§#"g§(param2.position,this.position,param2.§throw var continue§);
      }
      
      public function destroy() : void
      {
         this.§override for continue§.stop();
         §!!c§.destroy(this.§override for continue§);
         this.§override for continue§ = null;
      }
      
      public function kill() : void
      {
         this.alive = false;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(!param1)
         {
            this.§override for continue§.stop();
         }
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.copy(this.position);
      }
      
      public function get §function throw§() : int
      {
         return this.alive ? int(1) : int(0);
      }
   }
}

