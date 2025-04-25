package alternativa.tanks.engine3d
{
   import alternativa.engine3d.materials.TextureResourcesRegistry;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.utils.TextureMaterialRegistry;
   
   public class §7z§ implements §override const do§
   {
      private var registry:TextureMaterialRegistry;
      
      public function §7z§(param1:TextureMaterialRegistry)
      {
         super();
         this.registry = param1;
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.registry.clear();
         TextureResourcesRegistry.releaseTextureResources();
      }
   }
}

