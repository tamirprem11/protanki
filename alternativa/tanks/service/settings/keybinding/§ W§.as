package alternativa.tanks.service.settings.keybinding
{
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.events.EventDispatcher;
   import flash.net.SharedObject;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.storage.IStorageService;
   import projects.tanks.clients.fp10.libraries.tanksservices.utils.§]r§;
   
   public class § W§ extends EventDispatcher implements KeysBindingService
   {
      public static const §else const use§:int = 3;
      
      public static const §"!v§:uint = 0;
      
      private var storageService:IStorageService;
      
      private var §if var do§:Dictionary = new Dictionary();
      
      private var §with for false§:Dictionary = new Dictionary();
      
      private var §";§:uint;
      
      private var §use const native§:Dictionary = new Dictionary();
      
      private var §1!x§:§catch for include§;
      
      public function § W§()
      {
         super();
         var _loc1_:ILocaleService = ILocaleService(OSGi.getInstance().getService(ILocaleService));
         this.storageService = IStorageService(OSGi.getInstance().getService(IStorageService));
         this.§";§ = _loc1_.language == §]r§.§[i§ ? uint(Keyboard.Y) : uint(Keyboard.Z);
         this.§#"Z§();
         this.§null set null§();
      }
      
      private static function §#!0§(param1:uint) : Boolean
      {
         return param1 == §"!v§;
      }
      
      private static function §^!>§() : Vector.<uint>
      {
         return new Vector.<uint>(§else const use§,true);
      }
      
      private function §'4§() : §catch for include§
      {
         if(!this.§1!x§)
         {
            this.§1!x§ = new §catch for include§();
         }
         return this.§1!x§;
      }
      
      public function §#n§(param1:uint) : Boolean
      {
         return this.§if var do§[param1] == null;
      }
      
      public function §<!h§(param1:§%!6§, param2:uint, param3:int) : Boolean
      {
         var _loc4_:§%!6§ = null;
         var _loc5_:Vector.<uint> = null;
         var _loc6_:int = 0;
         if(param3 >= §else const use§)
         {
            return false;
         }
         if(!this.§#n§(param2))
         {
            _loc4_ = this.§if var do§[param2];
            _loc5_ = this.§with for false§[_loc4_];
            _loc6_ = int(_loc5_.indexOf(param2));
            delete this.§if var do§[param2];
            _loc5_[_loc6_] = §"!v§;
            this.§in for null§(_loc4_,_loc5_);
            dispatchEvent(new §override import§(§override import§.§5!F§ + _loc4_.name,_loc4_));
         }
         var _loc7_:uint = this.§!!n§(param1,param3);
         if(!§#!0§(_loc7_) && _loc7_ != param2)
         {
            delete this.§if var do§[_loc7_];
         }
         this.§if var do§[param2] = param1;
         this.§with for false§[param1][param3] = param2;
         this.§in for null§(param1,this.§with for false§[param1]);
         return true;
      }
      
      private function §in for null§(param1:§%!6§, param2:Vector.<uint> = null) : void
      {
         if(!param2)
         {
            param2 = §^!>§();
         }
         var _loc3_:SharedObject = this.storageService.getStorage();
         _loc3_.data[param1.name] = param2;
         _loc3_.flush();
      }
      
      public function §!!n§(param1:§%!6§, param2:uint) : uint
      {
         if(param2 >= §else const use§)
         {
            return §"!v§;
         }
         var _loc3_:Vector.<uint> = this.§with for false§[param1];
         if(_loc3_)
         {
            return _loc3_[param2];
         }
         return §"!v§;
      }
      
      public function § "i§(param1:§%!6§) : Vector.<uint>
      {
         return this.§with for false§[param1];
      }
      
      public function §case do§(param1:uint) : §%!6§
      {
         return this.§if var do§[param1];
      }
      
      private function §#"Z§() : void
      {
         this.§use const native§[§%!6§.ROTATE_TURRET_LEFT] = Vector.<uint>([this.§";§,Keyboard.COMMA,§"!v§]);
         this.§use const native§[§%!6§.ROTATE_TURRET_RIGHT] = Vector.<uint>([Keyboard.X,Keyboard.PERIOD,§"!v§]);
         this.§use const native§[§%!6§.CENTER_TURRET] = Vector.<uint>([Keyboard.C,Keyboard.SLASH,§"!v§]);
         this.§use const native§[§%!6§.CHASSIS_LEFT_MOVEMENT] = Vector.<uint>([Keyboard.LEFT,Keyboard.A,§"!v§]);
         this.§use const native§[§%!6§.CHASSIS_RIGHT_MOVEMENT] = Vector.<uint>([Keyboard.RIGHT,Keyboard.D,§"!v§]);
         this.§use const native§[§%!6§.CHASSIS_FORWARD_MOVEMENT] = Vector.<uint>([Keyboard.UP,Keyboard.W,§"!v§]);
         this.§use const native§[§%!6§.CHASSIS_BACKWARD_MOVEMENT] = Vector.<uint>([Keyboard.DOWN,Keyboard.S,§"!v§]);
         this.§use const native§[§%!6§.FOLLOW_CAMERA_UP] = Vector.<uint>([Keyboard.PAGE_UP,Keyboard.LEFTBRACKET,Keyboard.Q]);
         this.§use const native§[§%!6§.FOLLOW_CAMERA_DOWN] = Vector.<uint>([Keyboard.PAGE_DOWN,Keyboard.RIGHTBRACKET,Keyboard.E]);
         this.§use const native§[§%!6§.DROP_FLAG] = Vector.<uint>([Keyboard.F,§"!v§,§"!v§]);
         this.§use const native§[§%!6§.BATTLE_PAUSE] = Vector.<uint>([Keyboard.P,§"!v§,§"!v§]);
         this.§use const native§[§%!6§.BATTLE_VIEW_INCREASE] = Vector.<uint>([Keyboard.NUMPAD_ADD,Keyboard.EQUAL,§"!v§]);
         this.§use const native§[§%!6§.BATTLE_VIEW_DECREASE] = Vector.<uint>([Keyboard.O,§"!v§,§"!v§]);
         this.§use const native§[§%!6§.FULL_SCREEN] = Vector.<uint>([Keyboard.O,Keyboard.F11,§"!v§]);
         this.§use const native§[§%!6§.BATTLE_VIEW_INCREASE] = Vector.<uint>([Keyboard.NUMPAD_ADD,§"!v§,§"!v§]);
         this.§use const native§[§%!6§.BATTLE_VIEW_DECREASE] = Vector.<uint>([Keyboard.NUMPAD_SUBTRACT,§"!v§,§"!v§]);
         this.§use const native§[§%!6§.SUICIDE] = Vector.<uint>([Keyboard.DELETE,§"!v§,§"!v§]);
         this.§use const native§[§%!6§.SHOW_TANK_PARAMETERS] = Vector.<uint>([Keyboard.V,Keyboard.R,§"!v§]);
         this.§use const native§[§%!6§.USE_FIRS_AID] = Vector.<uint>([Keyboard.NUMBER_1,Keyboard.NUMPAD_1,§"!v§]);
         this.§use const native§[§%!6§.USE_DOUBLE_ARMOR] = Vector.<uint>([Keyboard.NUMBER_2,Keyboard.NUMPAD_2,§"!v§]);
         this.§use const native§[§%!6§.USE_DOUBLE_DAMAGE] = Vector.<uint>([Keyboard.NUMBER_3,Keyboard.NUMPAD_3,§"!v§]);
         this.§use const native§[§%!6§.USE_NITRO] = Vector.<uint>([Keyboard.NUMBER_4,Keyboard.NUMPAD_4,§"!v§]);
         this.§use const native§[§%!6§.USE_MINE] = Vector.<uint>([Keyboard.NUMBER_5,Keyboard.NUMPAD_5,§"!v§]);
         this.§use const native§[§%!6§.DROP_GOLD_BOX] = Vector.<uint>([Keyboard.NUMBER_6,Keyboard.NUMPAD_6,§"!v§]);
         this.§use const native§[§%!6§.SHOT] = Vector.<uint>([Keyboard.SPACE,§"!v§,§"!v§]);
         this.§use const native§[§%!6§.ULTIMATE] = Vector.<uint>([Keyboard.SHIFT,§"!v§,§"!v§]);
         this.§use const native§[§%!6§.OPEN_GARAGE] = Vector.<uint>([Keyboard.G,§"!v§,§"!v§]);
      }
      
      private function §;T§(param1:§%!6§, param2:Vector.<uint>) : void
      {
         if(!param2)
         {
            param2 = this.§use const native§[param1];
            if(!param2)
            {
               param2 = §^!>§();
            }
         }
         this.§with for false§[param1] = param2;
         var _loc3_:int = 0;
         while(_loc3_ < §else const use§)
         {
            this.§<!h§(param1,param2[_loc3_],_loc3_);
            _loc3_++;
         }
      }
      
      public function §=!X§() : void
      {
         var _loc1_:§%!6§ = null;
         this.§with for false§ = new Dictionary();
         this.§if var do§ = new Dictionary();
         for each(_loc1_ in §%!6§.values)
         {
            this.§;T§(_loc1_,this.§use const native§[_loc1_].concat());
         }
      }
      
      private function §null set null§() : void
      {
         var _loc1_:§%!6§ = null;
         var _loc2_:SharedObject = this.storageService.getStorage();
         for each(_loc1_ in §%!6§.values)
         {
            this.§;T§(_loc1_,_loc2_.data[_loc1_.name]);
         }
      }
      
      public function §dynamic for default§(param1:uint) : String
      {
         return this.§'4§().§do for break§(param1);
      }
   }
}

