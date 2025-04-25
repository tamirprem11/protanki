package §false for include§
{
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.utils.TextureMaterialRegistry;
   import flash.display.BitmapData;
   
   public class §true for true§
   {
      [Inject]
      public static var §while const case§:TextureMaterialRegistry;
      
      private static const §false const false§:String = "display";
      
      private var §case for native§:Vector.<Mesh> = new Vector.<Mesh>();
      
      private var faces:Vector.<Face> = new Vector.<Face>();
      
      private var material:TextureMaterial;
      
      private var §else set function§:BitmapData;
      
      public function §true for true§()
      {
         super();
      }
      
      public function add(param1:Mesh) : void
      {
         var _loc2_:Face = null;
         this.§case for native§.push(param1);
         for each(_loc2_ in param1.faces)
         {
            this.faces.push(_loc2_);
            if(this.material == null)
            {
               this.material = TextureMaterial(_loc2_.material);
               this.§return var get§();
            }
         }
      }
      
      public function setImage(param1:BitmapData) : void
      {
         this.§else set function§ = param1;
         this.§return var get§();
      }
      
      private function §return var get§() : void
      {
         if(this.material != null && this.§else set function§ != null)
         {
            this.material.texture = this.§else set function§;
            this.§^!I§();
         }
      }
      
      private function §^!I§() : void
      {
         if(this.§case for native§.length > 0)
         {
            this.material.resolution = 1;
         }
      }
   }
}

