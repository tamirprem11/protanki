package alternativa.tanks.gui.settings
{
   import alternativa.tanks.AbstractEnum;
   
   public class §,u§ extends AbstractEnum
   {
      private static var §switch for implements§:Vector.<§,u§>;
      
      public static const GRAPHIC:§,u§ = new §,u§(0,"GRAPHIC");
      
      public static const ACCOUNT:§,u§ = new §,u§(1,"ACCOUNT");
      
      public static const SOUND:§,u§ = new §,u§(2,"SOUND");
      
      public static const GAME:§,u§ = new §,u§(3,"GAME");
      
      public static const CONTROL:§,u§ = new §,u§(4,"CONTROL");
      
      public function §,u§(param1:int, param2:String)
      {
         super(param1,param2);
      }
      
      public static function get values() : Vector.<§,u§>
      {
         if(!§switch for implements§)
         {
            §switch for implements§ = new Vector.<§,u§>(5,true);
            §switch for implements§[GRAPHIC.value] = GRAPHIC;
            §switch for implements§[ACCOUNT.value] = ACCOUNT;
            §switch for implements§[SOUND.value] = SOUND;
            §switch for implements§[GAME.value] = GAME;
            §switch for implements§[CONTROL.value] = CONTROL;
         }
         return §switch for implements§;
      }
   }
}

