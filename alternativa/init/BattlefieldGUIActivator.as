package alternativa.init
{
   import §@!p§.§'O§;
   import §@!p§.§'_§;
   import alternativa.osgi.CommonBundleActivator;
   import alternativa.osgi.OSGi;
   import §override const continue§.§%h§;
   
   public class BattlefieldGUIActivator extends CommonBundleActivator
   {
      public function BattlefieldGUIActivator()
      {
         super();
      }
      
      override public function start(param1:OSGi) : void
      {
         registerModel(new §%h§(),param1);
         registerModel(new §'O§(),param1);
         registerModel(new §'_§(),param1);
      }
   }
}

