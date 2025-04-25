package alternativa.tanks.service.settings.keybinding
{
   import alternativa.tanks.AbstractEnum;
   
   public class §%!6§ extends AbstractEnum
   {
      private static var §switch for implements§:Vector.<§%!6§>;
      
      public static const ROTATE_TURRET_LEFT:§%!6§ = new §%!6§(0,"ROTATE_TURRET_LEFT");
      
      public static const ROTATE_TURRET_RIGHT:§%!6§ = new §%!6§(1,"ROTATE_TURRET_RIGHT");
      
      public static const CENTER_TURRET:§%!6§ = new §%!6§(2,"CENTER_TURRET");
      
      public static const CHASSIS_LEFT_MOVEMENT:§%!6§ = new §%!6§(3,"CHASSIS_LEFT_MOVEMENT");
      
      public static const CHASSIS_RIGHT_MOVEMENT:§%!6§ = new §%!6§(4,"CHASSIS_RIGHT_MOVEMENT");
      
      public static const CHASSIS_FORWARD_MOVEMENT:§%!6§ = new §%!6§(5,"CHASSIS_FORWARD_MOVEMENT");
      
      public static const CHASSIS_BACKWARD_MOVEMENT:§%!6§ = new §%!6§(6,"CHASSIS_BACKWARD_MOVEMENT");
      
      public static const FOLLOW_CAMERA_UP:§%!6§ = new §%!6§(7,"FOLLOW_CAMERA_UP");
      
      public static const FOLLOW_CAMERA_DOWN:§%!6§ = new §%!6§(8,"FOLLOW_CAMERA_DOWN");
      
      public static const DROP_FLAG:§%!6§ = new §%!6§(9,"DROP_FLAG");
      
      public static const BATTLE_PAUSE:§%!6§ = new §%!6§(10,"BATTLE_PAUSE");
      
      public static const BATTLE_VIEW_INCREASE:§%!6§ = new §%!6§(11,"BATTLE_VIEW_INCREASE");
      
      public static const BATTLE_VIEW_DECREASE:§%!6§ = new §%!6§(12,"BATTLE_VIEW_DECREASE");
      
      public static const FULL_SCREEN:§%!6§ = new §%!6§(13,"FULL_SCREEN");
      
      public static const SUICIDE:§%!6§ = new §%!6§(14,"SUICIDE");
      
      public static const SHOW_TANK_PARAMETERS:§%!6§ = new §%!6§(15,"SHOW_TANK_PARAMETERS");
      
      public static const USE_FIRS_AID:§%!6§ = new §%!6§(16,"USE_FIRS_AID");
      
      public static const USE_DOUBLE_ARMOR:§%!6§ = new §%!6§(17,"USE_DOUBLE_ARMOR");
      
      public static const USE_DOUBLE_DAMAGE:§%!6§ = new §%!6§(18,"USE_DOUBLE_DAMAGE");
      
      public static const USE_NITRO:§%!6§ = new §%!6§(19,"USE_NITRO");
      
      public static const USE_MINE:§%!6§ = new §%!6§(20,"USE_MINE");
      
      public static const DROP_GOLD_BOX:§%!6§ = new §%!6§(21,"DROP_GOLD_BOX");
      
      public static const SHOT:§%!6§ = new §%!6§(22,"SHOT");
      
      public static const ULTIMATE:§%!6§ = new §%!6§(23,"ULTIMATE");
      
      public static const OPEN_GARAGE:§%!6§ = new §%!6§(24,"OPEN_GARAGE");
      
      public function §%!6§(param1:int, param2:String)
      {
         super(param1,param2);
      }
      
      public static function get values() : Vector.<§%!6§>
      {
         if(!§switch for implements§)
         {
            §switch for implements§ = new Vector.<§%!6§>();
            §switch for implements§.push(ROTATE_TURRET_LEFT);
            §switch for implements§.push(ROTATE_TURRET_RIGHT);
            §switch for implements§.push(CENTER_TURRET);
            §switch for implements§.push(CHASSIS_LEFT_MOVEMENT);
            §switch for implements§.push(CHASSIS_RIGHT_MOVEMENT);
            §switch for implements§.push(CHASSIS_FORWARD_MOVEMENT);
            §switch for implements§.push(CHASSIS_BACKWARD_MOVEMENT);
            §switch for implements§.push(FOLLOW_CAMERA_UP);
            §switch for implements§.push(FOLLOW_CAMERA_DOWN);
            §switch for implements§.push(DROP_FLAG);
            §switch for implements§.push(BATTLE_PAUSE);
            §switch for implements§.push(BATTLE_VIEW_INCREASE);
            §switch for implements§.push(BATTLE_VIEW_DECREASE);
            §switch for implements§.push(FULL_SCREEN);
            §switch for implements§.push(SUICIDE);
            §switch for implements§.push(SHOW_TANK_PARAMETERS);
            §switch for implements§.push(USE_FIRS_AID);
            §switch for implements§.push(USE_DOUBLE_ARMOR);
            §switch for implements§.push(USE_DOUBLE_DAMAGE);
            §switch for implements§.push(USE_NITRO);
            §switch for implements§.push(USE_MINE);
            §switch for implements§.push(DROP_GOLD_BOX);
            §switch for implements§.push(SHOT);
            §switch for implements§.push(ULTIMATE);
            §switch for implements§.push(OPEN_GARAGE);
         }
         return §switch for implements§;
      }
   }
}

