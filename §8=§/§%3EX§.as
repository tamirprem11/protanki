package §8=§
{
   import §1"O§.§7!G§;
   import §;",§.§>!8§;
   import §;",§.§try const return§;
   import §>P§.§class var return§;
   import §>P§.§set extends§;
   import §>P§.§static for else§;
   import §],§.§while var const§;
   import §`j§.§return var in§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.osgi.service.display.IDisplay;
   import alternativa.osgi.service.locale.ILocaleService;
   import alternativa.physics.Body;
   import alternativa.physics.BodyState;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.service.IModelService;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§const var dynamic§;
   import alternativa.tanks.battle.events.§do const static§;
   import alternativa.tanks.battle.events.§finally for override§;
   import alternativa.tanks.battle.events.§if var function§;
   import alternativa.tanks.battle.events.§implements set const§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§package for null§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.battle.events.§set var override§;
   import alternativa.tanks.battle.§get set false§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends var dynamic§;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.models.battle.battlefield.§69§;
   import alternativa.tanks.models.battle.battlefield.BattleUserInfoService;
   import alternativa.tanks.models.battle.gui.§#"K§;
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import alternativa.tanks.service.settings.keybinding.KeysBindingService;
   import alternativa.tanks.services.battleinput.BattleInputService;
   import alternativa.tanks.utils.GraphicsUtils;
   import alternativa.tanks.utils.KeyCodes;
   import alternativa.utils.TextureMaterialRegistry;
   import §catch for do§.§-!8§;
   import §catch for do§.§]!V§;
   import §catch for do§.§do for catch§;
   import §catch for do§.§else set var§;
   import §catch for do§.§return const get§;
   import §dynamic package§.§throw const function§;
   import §dynamic set use§.§throw var for§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import §import import§.§finally for false§;
   import platform.client.fp10.core.model.ObjectLoadPostListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import platform.client.fp10.core.resource.types.StubBitmapData;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   import projects.tanks.clients.fp10.libraries.tanksservices.service.battle.IBattleInfoService;
   
   public class §>X§ extends §return const get§ implements §-!8§, §^!$§, ObjectLoadPostListener, ObjectUnloadListener, §override const do§
   {
      [Inject]
      public static var battleInfoService:IBattleInfoService;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §true const function§:TextureMaterialRegistry;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      [Inject]
      public static var display:IDisplay;
      
      [Inject]
      public static var userInfoService:BattleUserInfoService;
      
      [Inject]
      public static var §0"P§:BattleInputService;
      
      [Inject]
      public static var §>!Y§:KeysBindingService;
      
      public static const §true var while§:Number = 80;
      
      private static const §set var else§:int = 128;
      
      private static const § !X§:int = 256;
      
      private static const § !R§:uint = KeyCodes.F;
      
      private static const §finally var extends§:int = 5000;
      
      private static const §try switch§:String = "taken";
      
      private static const §var var extends§:String = "lost";
      
      private static const §import set else§:String = "returned";
      
      private static const §finally in§:String = "captured";
      
      private static const §native for function§:RayHit = new RayHit();
      
      private var §^!§:Boolean;
      
      private var §4"8§:§#"K§;
      
      private var §do final§:§throw var for§;
      
      private var inventoryModel:§class var return§;
      
      private var flags:Dictionary;
      
      private var §switch const each§:Object;
      
      private var §do for try§:Object;
      
      private var §in set final§:Object;
      
      private var §in for false§:String;
      
      private var §const set dynamic§:String;
      
      private var §continue for super§:§include const false§;
      
      private var §^!1§:§include const false§;
      
      private var flagDropSound:Sound;
      
      private var flagReturnSound:Sound;
      
      private var flagTakeSound:Sound;
      
      private var winSound:Sound;
      
      private var §'K§:§return const if§;
      
      private var §!!M§:Dictionary;
      
      private var §&"X§:Tank;
      
      private var §0!N§:Vector.<§0"M§>;
      
      private var §+F§:Vector.<§get set false§>;
      
      public function §>X§()
      {
         super();
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§package for null§,this.§1!"§);
         this.§'K§.§import var get§(§do const static§,this.§,!,§);
         this.§'K§.§import var get§(§implements set const§,this.§7"+§);
         this.§'K§.§import var get§(§const var dynamic§,this.§native for with§);
         this.§'K§.§import var get§(§if var function§,this.§get set catch§);
         this.§'K§.§import var get§(§finally for override§,this.§>!4§);
         this.§'K§.§import var get§(§7!G§,this.§;!H§);
      }
      
      private static function §const in§(param1:Tanks3DSResource) : Object3D
      {
         var _loc2_:Mesh = Mesh(param1.objects[0]);
         var _loc3_:BSP = new BSP();
         _loc3_.createTree(_loc2_);
         var _loc4_:BitmapData = param1.getTextureForObject(0);
         if(_loc4_ == null)
         {
            _loc4_ = new StubBitmapData(16776960);
         }
         var _loc5_:TextureMaterial = §true const function§.getMaterial(_loc4_);
         _loc5_.resolution = 1;
         _loc3_.setMaterialToAllFaces(_loc5_);
         return _loc3_;
      }
      
      private static function §const var class§(param1:Object, param2:uint) : void
      {
         param1[§try switch§] = new §include const false§(localeService.getText(TanksLocale.TEXT_CTF_GOT_FLAG_NEUTRAL),param2);
         param1[§var var extends§] = new §include const false§(localeService.getText(TanksLocale.TEXT_CTF_LOST_FLAG_NEUTRAL),param2);
         param1[§import set else§] = new §include const false§(localeService.getText(TanksLocale.TEXT_CTF_RETURNED_FLAG_NEUTRAL),param2);
         param1[§finally in§] = new §include const false§(localeService.getText(TanksLocale.TEXT_CTF_CAPTURED_FLAG_NEUTRAL),param2);
      }
      
      private static function §native var super§(param1:§while var const§) : §while var const§
      {
         return param1 == §while var const§.BLUE ? §while var const§.RED : §while var const§.BLUE;
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function §true const const§() : §69§
      {
         return §69§.CTF;
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost() : void
      {
         var _loc1_:§else set var§ = getInitParam().§for const if§;
         this.flagDropSound = _loc1_.flagDropSound.sound;
         this.flagReturnSound = _loc1_.flagReturnSound.sound;
         this.flagTakeSound = _loc1_.flagTakeSound.sound;
         this.winSound = _loc1_.winSound.sound;
         this.§!!M§ = new Dictionary();
         this.§0!N§ = new Vector.<§0"M§>();
         this.§]H§();
         var _loc2_:IModelService = IModelService(OSGi.getInstance().getService(IModelService));
         this.inventoryModel = §class var return§(_loc2_.getModelsByInterface(§class var return§)[0]);
         this.§4"8§ = §#"K§(OSGi.getInstance().getService(§#"K§));
         this.§do final§ = §throw var for§(OSGi.getInstance().getService(§throw var for§));
         display.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         this.§'K§.§""'§();
         this.§04§();
         this.§package var override§();
      }
      
      private function §package var override§() : void
      {
         this.flags = new Dictionary();
         var _loc1_:§]!V§ = getInitParam();
         this.§function set import§(§while var const§.RED,_loc1_.§"!0§,_loc1_.redFlagSprite.data,_loc1_.redPedestalModel);
         this.§function set import§(§while var const§.BLUE,_loc1_.§throw for true§,_loc1_.blueFlagSprite.data,_loc1_.bluePedestalModel);
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded() : void
      {
         var _loc1_:§function set package§ = null;
         display.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
         for each(_loc1_ in this.flags)
         {
            _loc1_.dispose();
         }
         this.flags = null;
         this.§4"8§ = null;
         this.§&"X§ = null;
         this.§!!M§ = null;
         this.§0!N§ = null;
         this.§'K§.§const var false§();
         this.§+F§ = null;
         battleService.§native const package§(null);
         battleService.§false for§(null);
         battleService.§try for static§(null);
         battleService.§return var function§(null);
      }
      
      [Obfuscation(rename="false")]
      public function flagTaken(param1:String, param2:§while var const§) : void
      {
         var _loc3_:§function set package§ = null;
         var _loc4_:§function set package§ = this.§2!e§(param2);
         var _loc5_:Tank = this.§!!M§[param1];
         if(this.§&"X§ != null && this.§&"X§ == _loc5_)
         {
            this.§8"'§(_loc4_,param1,_loc5_);
         }
         else
         {
            this.§catch set finally§(_loc4_,param1,_loc5_);
         }
         if(this.§&"X§ != null || battleInfoService.isSpectatorMode())
         {
            this.§override continue§(_loc4_);
            if(_loc5_ == this.§&"X§ && this.§&"X§ != null)
            {
               _loc3_ = this.§2!e§(this.§&"X§.teamType);
               if(_loc3_.§for var case§ == null)
               {
                  this.§9"`§(_loc3_);
               }
            }
            this.§package implements§(param1,param2);
            battleService.§use const return§.§const set const§(this.flagTakeSound);
         }
         this.§4"8§.§<"7§(param2);
      }
      
      private function §package implements§(param1:String, param2:§while var const§) : void
      {
         var _loc3_:§include const false§ = null;
         var _loc4_:* = false;
         if(battleInfoService.isSpectatorMode())
         {
            _loc3_ = this.§dynamic extends§(§try switch§,§native var super§(param2));
         }
         else if(this.§&"X§.teamType != null)
         {
            _loc4_ = this.§&"X§.teamType != param2;
            _loc3_ = this.§4!N§(§try switch§,_loc4_);
         }
         if(_loc3_ != null)
         {
            this.§with const each§(_loc3_,param1);
            this.§4"8§.logUserAction(param1,_loc3_.text,null);
         }
      }
      
      [Obfuscation(rename="false")]
      public function returnFlagToBase(param1:§while var const§, param2:String) : void
      {
         this.§extends set use§(param1);
         if(battleInfoService.isSpectatorMode())
         {
            this.§@<§(param1,param2);
         }
         else if(Boolean(this.§&"X§) && Boolean(this.§&"X§.teamType))
         {
            this.§ A§(param1,param2);
         }
         battleService.§use const return§.§const set const§(this.flagReturnSound);
      }
      
      private function §@<§(param1:§while var const§, param2:String) : void
      {
         var _loc3_:§include const false§ = null;
         var _loc4_:§include const false§ = null;
         if(param2)
         {
            _loc3_ = this.§dynamic extends§(§import set else§,param1);
            this.§with const each§(_loc3_,param2);
            this.§4"8§.logUserAction(param2,_loc3_.text,null);
         }
         else
         {
            _loc4_ = param1 == §while var const§.BLUE ? this.§continue for super§ : this.§^!1§;
            this.§4"8§.§for for continue§(_loc4_.color,_loc4_.text);
         }
      }
      
      private function § A§(param1:§while var const§, param2:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:* = this.§&"X§.teamType == param1;
         var _loc5_:§include const false§ = this.§4!N§(§import set else§,_loc4_);
         if(param2)
         {
            this.§with const each§(_loc5_,param2);
            this.§4"8§.logUserAction(param2,_loc5_.text,null);
         }
         else
         {
            _loc3_ = _loc4_ ? this.§in for false§ : this.§const set dynamic§;
            this.§4"8§.§for for continue§(_loc5_.color,_loc3_);
         }
      }
      
      [Obfuscation(rename="false")]
      public function dropFlag(param1:§finally for false§, param2:§while var const§) : void
      {
         var _loc3_:§function set package§ = this.§2!e§(param2);
         this.§static with§(_loc3_);
         this.§4"8§.§final for throw§(_loc3_.teamType);
         this.§while var class§(_loc3_);
         _loc3_.§[F§(new Vector3(param1.x,param1.y,param1.z));
      }
      
      private function §while var class§(param1:§function set package§) : void
      {
         var _loc2_:§function set package§ = null;
         if(this.§&"X§ == null)
         {
            return;
         }
         if(param1.§for var case§ == null)
         {
            return;
         }
         if(this.§&"X§.§4r§(param1.teamType))
         {
            this.§[§(null);
         }
         if(param1.§for var case§ == this.§&"X§)
         {
            if(this.§^!§)
            {
               this.§^!§ = false;
               battleService.§try var final§().§finally var false§(new §<p§(this,getTimer() + §finally var extends§));
            }
            _loc2_ = this.§'"^§(param1.teamType);
            if(_loc2_.state == §import for null§.AT_BASE)
            {
               this.§override continue§(_loc2_);
            }
         }
         else
         {
            this.§9"`§(param1);
         }
      }
      
      private function §static with§(param1:§function set package§) : void
      {
         if(param1.§for var case§ == null)
         {
            return;
         }
         var _loc2_:§include const false§ = this.§@k§(param1.teamType);
         if(_loc2_ != null)
         {
            this.§with const each§(_loc2_,param1.§for var case§.tankData.userName);
            this.§4"8§.logUserAction(param1.§for var case§.tankData.userName,_loc2_.text,null);
            battleService.§use const return§.§const set const§(this.flagDropSound);
         }
      }
      
      private function §@k§(param1:§while var const§) : §include const false§
      {
         var _loc2_:Boolean = false;
         if(battleInfoService.isSpectatorMode())
         {
            return this.§dynamic extends§(§var var extends§,§native var super§(param1));
         }
         if(Boolean(this.§&"X§) && Boolean(this.§&"X§.teamType))
         {
            _loc2_ = this.§&"X§.§4r§(param1);
            return this.§4!N§(§var var extends§,_loc2_);
         }
         return null;
      }
      
      [Obfuscation(rename="false")]
      public function flagDelivered(param1:§while var const§, param2:String) : void
      {
         var _loc3_:Tank = null;
         var _loc4_:§include const false§ = null;
         this.§extends set use§(§#",§.§5"d§(param1));
         if(this.§&"X§ != null || battleInfoService.isSpectatorMode())
         {
            _loc3_ = this.§!!M§[param2];
            if(_loc3_ != null)
            {
               if(battleInfoService.isSpectatorMode())
               {
                  _loc4_ = this.§dynamic extends§(§finally in§,param1);
               }
               else
               {
                  _loc4_ = this.§4!N§(§finally in§,this.§&"X§.teamType == param1);
               }
               this.§with const each§(_loc4_,param2);
               this.§4"8§.logUserAction(param2,_loc4_.text,null);
               battleService.§use const return§.§const set const§(this.winSound);
            }
         }
      }
      
      public function §var throw§() : void
      {
         this.inventoryModel.§>-§(§set extends§.MINE,§static for else§.§try for final§,true);
      }
      
      public function §9"E§() : void
      {
         this.inventoryModel.§>-§(§set extends§.MINE,§static for else§.§try for final§,false);
      }
      
      public function §5"c§(param1:§function set package§) : void
      {
         this.§override continue§(param1);
         this.§'K§.dispatchEvent(§set var override§.§9E§);
         server.§5"c§(this.§&"X§,param1.teamType.name);
      }
      
      public function §var const catch§() : void
      {
         var _loc1_:§function set package§ = this.§'"^§(this.§&"X§.teamType);
         if(_loc1_.state != §import for null§.CARRIED)
         {
            this.§9"`§(_loc1_);
         }
      }
      
      private function §function set import§(param1:§while var const§, param2:§do for catch§, param3:BitmapData, param4:Tanks3DSResource) : void
      {
         var _loc5_:§function set package§ = null;
         var _loc6_:Vector3 = null;
         if(param3 == null)
         {
            param3 = new BitmapData(§set var else§,§ !X§,false,param1 == §while var const§.RED ? uint(11141120) : uint(170));
         }
         var _loc7_:§package var package§ = GraphicsUtils.getTextureAnimation(§true const function§,param3,§set var else§,param3.height,0,false);
         var _loc8_:Vector3 = new Vector3(param2.§if set super§.x,param2.§if set super§.y,param2.§if set super§.z);
         var _loc9_:§,6§ = battleService.§catch include§();
         _loc5_ = new §function set package§(param1,_loc8_,§set var else§,§ !X§,_loc7_,battleService.§try var final§().§`"N§(),this);
         this.flags[param1] = _loc5_;
         _loc5_.addToScene();
         if(param2.§#_§ != null)
         {
            this.§catch set finally§(_loc5_,param2.§#_§,this.§!!M§[param2.§#_§]);
            this.§4"8§.§<"7§(param1);
         }
         else if(param2.§<&§ != null)
         {
            _loc6_ = new Vector3();
            _loc6_.x = param2.§<&§.x;
            _loc6_.y = param2.§<&§.y;
            _loc6_.z = param2.§<&§.z;
            _loc5_.§[F§(_loc6_);
            this.§4"8§.§final for throw§(param1);
         }
         _loc9_.§@!X§(_loc5_,1);
         _loc9_.§>"$§.add(_loc5_);
         this.§?#§(param4,param2);
      }
      
      private function §?#§(param1:Tanks3DSResource, param2:§do for catch§) : void
      {
         var _loc3_:Object3D = §const in§(param1);
         var _loc4_:Vector3 = §#",§.§include for super§(param2.§if set super§);
         _loc4_.z -= §true var while§;
         _loc3_.x = _loc4_.x;
         _loc3_.y = _loc4_.y;
         _loc3_.z = _loc4_.z;
         battleService.§catch include§().addObject(_loc3_);
         var _loc5_:§throw const function§ = battleService.§try var final§().§`"N§();
         var _loc6_:§0"M§ = new §0"M§(_loc4_,200,this,_loc5_);
         this.§0!N§.push(_loc6_);
         battleService.§try var final§().§#!,§(_loc6_);
      }
      
      private function §extends set use§(param1:§while var const§) : void
      {
         var _loc2_:§function set package§ = null;
         this.§^!§ = false;
         var _loc3_:§function set package§ = this.§2!e§(param1);
         _loc3_.§ "9§();
         if(Boolean(this.§&"X§) && Boolean(this.§&"X§.teamType))
         {
            if(this.§&"X§.§4r§(param1))
            {
               this.§[§(null);
               _loc2_ = this.§'"^§(param1);
               if(_loc2_.§for var case§ == this.§&"X§)
               {
                  this.§9"`§(_loc3_);
               }
               else
               {
                  this.§override continue§(_loc3_);
               }
            }
            else
            {
               this.§9"`§(_loc3_);
            }
         }
         this.§4"8§.§package var try§(param1);
      }
      
      private function §]H§() : void
      {
         this.§switch const each§ = {};
         this.§in set final§ = {};
         this.§do for try§ = {};
         this.§get in§();
         §const var class§(this.§in set final§,MessageColor.BLUE);
         §const var class§(this.§do for try§,MessageColor.RED);
         this.§in for false§ = localeService.getText(TanksLocale.TEXT_CTF_OUR_FLAG_RETURNED);
         this.§const set dynamic§ = localeService.getText(TanksLocale.TEXT_CTF_ENEMY_FLAG_RETURNED);
         this.§continue for super§ = new §include const false§(localeService.getText(TanksLocale.TEXT_CTF_BLUE_FLAG_RETURNED),MessageColor.BLUE);
         this.§^!1§ = new §include const false§(localeService.getText(TanksLocale.TEXT_CTF_RED_FLAG_RETURNED),MessageColor.RED);
      }
      
      private function §get in§() : void
      {
         this.§var for use§(§try switch§,TanksLocale.TEXT_CTF_GOT_ENEMY_FLAG,MessageColor.§false const try§,TanksLocale.TEXT_CTF_GOT_OUR_FLAG,MessageColor.§each var use§);
         this.§var for use§(§var var extends§,TanksLocale.TEXT_CTF_LOST_OUR_FLAG,MessageColor.§false const try§,TanksLocale.TEXT_CTF_LOST_ENEMY_FLAG,MessageColor.§each var use§);
         this.§var for use§(§import set else§,TanksLocale.TEXT_CTF_RETURNED_OUR_FLAG,MessageColor.§false const try§,TanksLocale.TEXT_CTF_RETURNED_ENEMY_FLAG,MessageColor.§each var use§);
         this.§var for use§(§finally in§,TanksLocale.TEXT_CTF_CAPTURED_ENEMY_FLAG,MessageColor.§false const try§,TanksLocale.TEXT_CTF_CAPTURED_OUR_FLAG,MessageColor.§each var use§);
      }
      
      private function §var for use§(param1:String, param2:String, param3:uint, param4:String, param5:uint) : void
      {
         var _loc6_:§include const false§ = new §include const false§(localeService.getText(param2),param3);
         var _loc7_:§include const false§ = new §include const false§(localeService.getText(param4),param5);
         this.§switch const each§[param1] = new §6!c§(_loc6_,_loc7_);
      }
      
      private function §4!N§(param1:String, param2:Boolean) : §include const false§
      {
         var _loc3_:§6!c§ = this.§switch const each§[param1];
         return param2 ? _loc3_.positive : _loc3_.negative;
      }
      
      private function §dynamic extends§(param1:String, param2:§while var const§) : §include const false§
      {
         var _loc3_:Object = param2 == §while var const§.BLUE ? this.§in set final§ : this.§do for try§;
         return _loc3_[param1];
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:§%!6§ = §>!Y§.§case do§(param1.keyCode);
         switch(_loc2_)
         {
            case §%!6§.DROP_FLAG:
               this.§7"_§();
         }
      }
      
      private function §7"_§() : void
      {
         var _loc1_:§function set package§ = null;
         if(battleService.§try const get§() && !§0"P§.§3!'§() && this.§&"X§ != null && !this.§^!§)
         {
            _loc1_ = this.§'"^§(this.§&"X§.teamType);
            if(_loc1_.§for var case§ == this.§&"X§)
            {
               this.§^!§ = true;
               this.§'K§.dispatchEvent(§set var override§.§9E§);
               server.§include var throw§(this.§&"X§);
            }
         }
      }
      
      private function §with const each§(param1:§include const false§, param2:String) : void
      {
         var _loc3_:String = param2 != null ? userInfoService.§for var function§(param2) : null;
         if(_loc3_)
         {
            this.§4"8§.§for for continue§(param1.color,_loc3_ + " " + param1.text);
         }
      }
      
      private function §7"+§(param1:§implements set const§) : void
      {
         this.§!!M§[param1.tank.tankData.userName] = param1.tank;
         if(param1.isLocal)
         {
            this.§&"X§ = param1.tank;
         }
      }
      
      private function §native for with§(param1:§const var dynamic§) : void
      {
         var _loc2_:Body = null;
         var _loc3_:BodyState = null;
         var _loc4_:Vector3 = null;
         var _loc5_:Tank = param1.tank;
         var _loc6_:§function set package§ = this.§'"^§(_loc5_.teamType);
         if(_loc6_.§for var case§ == _loc5_)
         {
            _loc2_ = _loc5_.§<J§();
            _loc3_ = _loc2_.state;
            _loc4_ = _loc3_.position;
            this.dropFlag(§#",§.§in for default§(_loc4_),_loc6_.teamType);
         }
         delete this.§!!M§[_loc5_.tankData.userName];
      }
      
      private function §get set catch§(param1:§if var function§) : void
      {
         var _loc2_:§function set package§ = null;
         for each(_loc2_ in this.flags)
         {
            if(_loc2_.state == §import for null§.CARRIED && _loc2_.§finally include§ == param1.tank.tankData.userName)
            {
               this.§catch set finally§(_loc2_,_loc2_.§finally include§,param1.tank);
               this.§override continue§(_loc2_);
               break;
            }
         }
      }
      
      private function §>!4§(param1:Object) : void
      {
         var _loc2_:§get set false§ = null;
         var _loc3_:§function set package§ = this.§2!e§(this.§&"X§.teamType);
         if(_loc3_.state == §import for null§.DROPPED)
         {
            this.§9"`§(_loc3_);
         }
         var _loc4_:§function set package§ = this.§'"^§(this.§&"X§.teamType);
         if(_loc4_.state != §import for null§.CARRIED)
         {
            this.§9"`§(_loc4_);
         }
         for each(_loc2_ in this.§+F§)
         {
            _loc2_.§with for extends§(this.§&"X§.teamType);
         }
      }
      
      private function §;!H§(param1:§7!G§) : void
      {
         var _loc2_:§function set package§ = null;
         if(this.§&"X§ != null && this.§&"X§ == param1.§native const final§)
         {
            for each(_loc2_ in this.flags)
            {
               this.§override continue§(_loc2_);
            }
         }
      }
      
      private function §,!,§(param1:Object) : void
      {
         var _loc2_:§0"M§ = null;
         this.§extends set use§(§while var const§.BLUE);
         this.§extends set use§(§while var const§.RED);
         for each(_loc2_ in this.§0!N§)
         {
            _loc2_.reset();
         }
      }
      
      private function §1!"§(param1:Object) : void
      {
         var _loc2_:§function set package§ = null;
         this.§^!§ = false;
         for each(_loc2_ in this.flags)
         {
            this.§override continue§(_loc2_);
         }
      }
      
      private function §9"`§(param1:§function set package§) : void
      {
         if(this.§&"X§ != null && this.§&"X§.state == §extends var dynamic§.§<"]§ && battleService.§try const get§())
         {
            battleService.§try var final§().§#!,§(param1);
         }
      }
      
      private function §override continue§(param1:§function set package§) : void
      {
         battleService.§try var final§().§function continue§(param1);
      }
      
      private function §8"'§(param1:§function set package§, param2:String, param3:Tank) : void
      {
         param1.§7a§(param2,param3);
         this.§class set catch§(param1,param3);
      }
      
      private function §catch set finally§(param1:§function set package§, param2:String, param3:Tank) : void
      {
         param1.§0!G§(param2,param3);
         this.§class set catch§(param1,param3);
      }
      
      private function §class set catch§(param1:§function set package§, param2:Tank) : void
      {
         if(param2 != null && this.§&"X§ != null && this.§&"X§.§4r§(param1.teamType))
         {
            this.§[§(param2.§<J§());
         }
      }
      
      private function §04§() : void
      {
         this.§+F§ = new Vector.<§get set false§>();
         var _loc1_:§package const try§ = new §package const try§();
         battleService.§native const package§(_loc1_);
         this.§+F§.push(_loc1_);
         var _loc2_:§return var in§ = new §return var in§();
         battleService.§false for§(_loc2_);
         this.§+F§.push(_loc2_);
         var _loc3_:§%!b§ = new §%!b§();
         battleService.§try for static§(_loc3_);
         this.§+F§.push(_loc3_);
         var _loc4_:§try const return§ = new §try const return§();
         battleService.§return var function§(_loc4_);
         this.§+F§.push(_loc4_);
      }
      
      private function §[§(param1:Body) : void
      {
         var _loc2_:§get set false§ = null;
         for each(_loc2_ in this.§+F§)
         {
            _loc2_.§^4§(param1);
         }
      }
      
      private function §2!e§(param1:§while var const§) : §function set package§
      {
         return this.flags[param1];
      }
      
      private function §'"^§(param1:§while var const§) : §function set package§
      {
         return this.flags[§#",§.§5"d§(param1)];
      }
      
      public function §?"e§() : §>!8§
      {
         var _loc1_:§try const return§ = new §try const return§();
         this.§+F§.push(_loc1_);
         return _loc1_;
      }
   }
}

