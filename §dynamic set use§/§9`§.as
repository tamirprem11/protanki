package §dynamic set use§
{
   import §%!Z§.§9!F§;
   import §%!Z§.§<"a§;
   import §%!Z§.§]"+§;
   import §9"9§.§!!c§;
   import §9"9§.§'!q§;
   import §9"9§.§,!"§;
   import §9"9§.§8"F§;
   import §9"9§.§break use§;
   import §9"9§.§case var false§;
   import §9"9§.§return var include§;
   import §<"N§.§if continue§;
   import §],§.§while var const§;
   import alternativa.engine3d.core.Sorting;
   import alternativa.engine3d.materials.Material;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.dump.IDumpService;
   import alternativa.osgi.service.dump.IDumper;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§const var dynamic§;
   import alternativa.tanks.battle.events.§if var function§;
   import alternativa.tanks.battle.events.§implements set const§;
   import alternativa.tanks.battle.events.§override const do§;
   import alternativa.tanks.battle.events.§package for null§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.battle.events.§set var override§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.models.weapon.§continue set dynamic§;
   import alternativa.tanks.utils.GraphicsUtils;
   import alternativa.utils.TextureMaterialRegistry;
   import §dynamic package§.§]"P§;
   import flash.media.Sound;
   import flash.utils.Dictionary;
   import §import import§.§finally for false§;
   import platform.client.fp10.core.model.ObjectLoadListener;
   import platform.client.fp10.core.model.ObjectUnloadListener;
   import platform.client.fp10.core.resource.types.ImageResource;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import platform.client.fp10.core.type.IGameObject;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   
   public class §9`§ extends §<"a§ implements §9!F§, ObjectLoadListener, ObjectUnloadListener, IDumper, §override const do§, §true const return§, §throw var for§
   {
      [Inject]
      public static var §while const case§:TextureMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §catch var extends§:IDumpService;
      
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private static const §?!J§:Number = 0.5;
      
      private static const §in set catch§:Number = 0.772;
      
      private static const §import const§:Number = 0.5;
      
      private static const §?%§:Number = 0.9;
      
      private static const §#"S§:Number = 3;
      
      private static const §get try§:Number = 3;
      
      private static const §5!3§:Number = 0.3;
      
      private static const §include default§:Number = 200;
      
      private static const §3r§:Vector3 = new Vector3();
      
      private var §with const default§:§override for null§ = new §override for null§();
      
      private var §get for in§:Dictionary = new Dictionary();
      
      private var §else override§:Dictionary = new Dictionary();
      
      private var §false var§:Number;
      
      private var §super set with§:Vector.<§]"+§>;
      
      private var §&!d§:TextureMaterial;
      
      private var §throw for import§:TextureMaterial;
      
      private var §@!T§:TextureMaterial;
      
      private var §`!?§:TextureMaterial;
      
      private var §default each§:Mesh;
      
      private var §7s§:§package var package§;
      
      private var §include var if§:§0!;§ = new §0!;§();
      
      private var §break for true§:§package var package§;
      
      private var §&"2§:§0!;§ = new §0!;§();
      
      private var §%"f§:TextureMaterial;
      
      private var §include const switch§:Sound;
      
      private var explosionSound:Sound;
      
      private var §9!s§:Sound;
      
      private var impactForce:Number;
      
      private var §get var dynamic§:IGameObject;
      
      private var §'K§:§return const if§;
      
      private var §!!M§:Dictionary = new Dictionary();
      
      private var §&"X§:Tank;
      
      private var minDistanceFromBase:Number;
      
      private var §+v§:§,!"§;
      
      public function §9`§()
      {
         super();
         §="%§.§9",§();
         this.§&6§();
      }
      
      private static function §finally var static§(param1:Vector3, param2:§package var package§, param3:§0!;§, param4:Number, param5:Number) : void
      {
         var _loc6_:int = 50;
         var _loc7_:§if continue§ = battleService.§#!o§();
         var _loc8_:§return var include§ = §return var include§(_loc7_.getObject(§return var include§));
         _loc8_.init(param1,_loc6_);
         var _loc9_:§'!q§ = §'!q§(_loc7_.getObject(§'!q§));
         _loc9_.init(param3.width,param3.height,param2,0,_loc8_,param4,param5);
         battleService.§catch include§().§override for native§(_loc9_);
      }
      
      private static function §!O§(param1:Sound, param2:Vector3, param3:Number) : void
      {
         var _loc4_:§!!c§ = null;
         if(param1 != null)
         {
            _loc4_ = §!!c§.create(param1,param3);
            battleService.§try var final§().§`b§().§return const null§(§8"F§.create(param2,_loc4_,0));
         }
      }
      
      private static function §case override§(param1:MultiframeImageResource, param2:int, param3:§0!;§) : §package var package§
      {
         var _loc4_:§package var package§ = GraphicsUtils.getTextureAnimationFromResource(§while const case§,param1);
         _loc4_.material.resolution = param2;
         param3.height = param1.frameHeight * param2;
         param3.width = param1.frameWidth * param2;
         return _loc4_;
      }
      
      private static function §try in§(param1:ImageResource) : TextureMaterial
      {
         return §while const case§.getMaterial(param1.data);
      }
      
      private function §&6§() : void
      {
         this.§'K§ = new §return const if§(battleEventDispatcher,this);
         this.§'K§.§import var get§(§package for null§,this.§1!"§);
         this.§'K§.§import var get§(§implements set const§,this.§7"+§);
         this.§'K§.§import var get§(§const var dynamic§,this.§native for with§);
         this.§'K§.§import var get§(§if var function§,this.§get set catch§);
         this.§'K§.§""'§();
      }
      
      public function handleBattleEvent(param1:Object) : void
      {
         this.§'K§.handleBattleEvent(param1);
      }
      
      public function §]"H§() : Number
      {
         return this.minDistanceFromBase;
      }
      
      [Obfuscation(rename="false")]
      public function objectLoaded() : void
      {
         this.§get var dynamic§ = object;
         §catch var extends§.registerDumper(this);
         this.§with const default§.§while for import§ = 100;
         this.§with const default§.§7"3§ = 300;
         this.§with const default§.§#"&§ = 204;
         this.§with const default§.§#v§ = §#",§.§8! §(getInitParam().farVisibilityRadius);
         this.§with const default§.§break in§ = §#",§.§8! §(getInitParam().nearVisibilityRadius);
         this.§false var§ = §#",§.§8! §(getInitParam().radius);
         this.impactForce = getInitParam().impactForce;
         this.§include const switch§ = getInitParam().activateSound.sound;
         this.explosionSound = getInitParam().explosionSound.sound;
         this.§9!s§ = getInitParam().deactivateSound.sound;
         this.minDistanceFromBase = §#",§.§8! §(getInitParam().minDistanceFromBase);
         this.§&"F§(Tanks3DSResource(getInitParam().model3ds));
         this.§7s§ = §case override§(getInitParam().mainExplosionTexture,§#"S§,this.§include var if§);
         this.§break for true§ = §case override§(getInitParam().idleExplosionTexture,§get try§,this.§&"2§);
         this.§%"f§ = §try in§(getInitParam().explosionMarkTexture);
         this.§&!d§ = §try in§(getInitParam().redMineTexture);
         this.§throw for import§ = §try in§(getInitParam().blueMineTexture);
         this.§@!T§ = §try in§(getInitParam().friendlyMineTexture);
         this.§`!?§ = §try in§(getInitParam().enemyMineTexture);
         this.§+v§ = §case var false§.§finally for super§;
         this.§const const each§(getInitParam().§!!^§);
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded() : void
      {
         §catch var extends§.unregisterDumper(this.dumperName);
         this.§6!h§();
         this.§include const switch§ = null;
         this.§7s§ = null;
         this.§break for true§ = null;
         this.§&!d§ = null;
         this.§throw for import§ = null;
         this.§@!T§ = null;
         this.§`!?§ = null;
         this.§get var dynamic§ = null;
         this.§&"X§ = null;
         this.§%"f§ = null;
         this.§!!M§ = new Dictionary();
      }
      
      private function §const const each§(param1:Vector.<§]"+§>) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1.length != 0)
         {
            if(this.§super set with§ == null)
            {
               this.§super set with§ = new Vector.<§]"+§>();
            }
            _loc2_ = int(param1.length);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               this.§super set with§.push(param1[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      [Obfuscation(rename="false")]
      public function §[r§(param1:String, param2:Number, param3:Number, param4:Number, param5:String) : void
      {
         var _loc6_:Tank = this.§!!M§[param5];
         if(_loc6_ == null)
         {
            if(this.§super set with§ == null)
            {
               this.§super set with§ = new Vector.<§]"+§>();
            }
            this.§super set with§.push(new §]"+§(false,param1,param5,new §finally for false§(param2,param3,param4)));
         }
         else
         {
            this.§do const switch§(param1,this.§false var§,new Vector3(param2,param3,param4),param5,_loc6_.teamType,this.§%"'§(_loc6_),false);
         }
      }
      
      [Obfuscation(rename="false")]
      public function §true for with§(param1:String) : void
      {
         var _loc2_:§]"+§ = null;
         var _loc3_:§]w§ = this.§else override§[param1];
         if(_loc3_ != null)
         {
            _loc3_.§5D§();
            §!O§(this.§include const switch§,_loc3_.position,§5!3§);
         }
         else
         {
            for each(_loc2_ in this.§super set with§)
            {
               if(_loc2_.mineId == param1)
               {
                  _loc2_.activated = true;
                  return;
               }
            }
         }
      }
      
      [Obfuscation(rename="false")]
      public function § "Z§(param1:String) : void
      {
         var _loc2_:§]w§ = null;
         var _loc3_:§]w§ = null;
         var _loc4_:§in const continue§ = this.§get for in§[param1];
         if(_loc4_ != null)
         {
            _loc2_ = _loc4_.head;
            while(_loc2_ != null)
            {
               _loc3_ = _loc2_;
               _loc2_ = _loc2_.next;
               §finally var static§(_loc3_.position,this.§break for true§,this.§&"2§,§import const§,§?%§);
               §!O§(this.§9!s§,_loc3_.position,0.1);
               this.§return var else§(_loc3_,_loc4_);
            }
         }
      }
      
      [Obfuscation(rename="false")]
      public function §package for implements§(param1:String, param2:String) : void
      {
         var _loc3_:§in const continue§ = null;
         var _loc4_:Tank = null;
         var _loc5_:§]w§ = this.§else override§[param1];
         if(_loc5_ != null)
         {
            _loc3_ = this.§get for in§[_loc5_.ownerId];
            if(_loc3_ != null)
            {
               §finally var static§(_loc5_.position,this.§7s§,this.§include var if§,§?!J§,§in set catch§);
               this.§switch else§(_loc5_.position,this.§+v§);
               this.§case var§(_loc5_);
               §!O§(this.explosionSound,_loc5_.position,0.5);
               _loc4_ = this.§!!M§[param2];
               if(_loc4_ != null)
               {
                  _loc4_.§class set set§(_loc5_.position,_loc5_.§class const super§,§continue set dynamic§.§ !0§.getNumber() * this.impactForce);
               }
               this.§return var else§(_loc5_,_loc3_);
            }
         }
      }
      
      private function §switch else§(param1:Vector3, param2:§,!"§) : void
      {
         var _loc3_:§return var include§ = §return var include§(battleService.§#!o§().getObject(§return var include§));
         var _loc4_:§break use§ = §break use§(battleService.§#!o§().getObject(§break use§));
         _loc3_.init(param1,50);
         _loc4_.init(_loc3_,param2);
         battleService.§override for native§(_loc4_);
      }
      
      private function §case var§(param1:§]w§) : void
      {
         §3r§.copy(param1.position);
         §3r§.addScaled(100,param1.§class const super§);
         battleService.§catch include§().addDecal(param1.position,§3r§,§include default§,this.§%"f§);
      }
      
      [Obfuscation(rename="false")]
      public function dump(param1:Array) : String
      {
         var _loc2_:§]w§ = null;
         var _loc3_:* = "=== Mines ===\n";
         if(this.§super set with§ != null)
         {
            _loc3_ += "Deferred:\n" + this.§super set with§.join("\n") + "\n";
         }
         _loc3_ += "On field:\n";
         for each(_loc2_ in this.§else override§)
         {
            _loc3_ += _loc2_ + "\n";
         }
         return _loc3_;
      }
      
      [Obfuscation(rename="false")]
      public function get dumperName() : String
      {
         return "mines";
      }
      
      public function §default break§(param1:§]w§) : void
      {
         battleEventDispatcher.dispatchEvent(§set var override§.§9E§);
         server.§default break§(param1.id);
      }
      
      private function §do const switch§(param1:String, param2:Number, param3:Vector3, param4:String, param5:§while var const§, param6:Material, param7:Boolean) : void
      {
         var _loc8_:§in const continue§ = null;
         var _loc9_:§]w§ = null;
         var _loc10_:RayHit = new RayHit();
         if(battleService.§try var final§().§`"N§().raycastStatic(param3,Vector3.DOWN,§]"P§.§return set for§,10000000000,null,_loc10_))
         {
            _loc8_ = this.§get for in§[param4];
            if(_loc8_ == null)
            {
               _loc8_ = new §in const continue§();
               this.§get for in§[param4] = _loc8_;
            }
            _loc9_ = §]w§.create(param1,param4,param2,this.§default each§,param6,param5,this.§with const default§,this);
            _loc9_.setPosition(_loc10_.position,_loc10_.normal);
            if(param7)
            {
               _loc9_.§5D§();
            }
            _loc8_.§do const switch§(_loc9_);
            this.§else override§[param1] = _loc9_;
            _loc9_.§for var true§();
         }
      }
      
      private function §6!h§() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:§]w§ = null;
         var _loc3_:§in const continue§ = null;
         for(_loc1_ in this.§else override§)
         {
            _loc2_ = this.§else override§[_loc1_];
            _loc2_.§#"O§();
            delete this.§else override§[_loc1_];
         }
         for(_loc1_ in this.§get for in§)
         {
            _loc3_ = this.§get for in§[_loc1_];
            _loc3_.§%!-§();
            delete this.§get for in§[_loc1_];
         }
         this.§super set with§ = null;
      }
      
      private function §&"F§(param1:Tanks3DSResource) : void
      {
         this.§default each§ = Mesh(param1.objects[0]);
         if(this.§default each§.sorting != Sorting.AVERAGE_Z)
         {
            this.§default each§.sorting = Sorting.AVERAGE_Z;
            this.§default each§.calculateFacesNormals(true);
         }
      }
      
      private function §return var else§(param1:§]w§, param2:§in const continue§) : void
      {
         delete this.§else override§[param1.id];
         param1.§#"O§();
         param2.§return var else§(param1);
      }
      
      private function §%"'§(param1:Tank) : Material
      {
         switch(param1.teamType)
         {
            case §while var const§.NONE:
               return param1 == this.§&"X§ ? this.§@!T§ : this.§`!?§;
            case §while var const§.BLUE:
               return this.§throw for import§;
            case §while var const§.RED:
               return this.§&!d§;
            default:
               return this.§`!?§;
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
         delete this.§!!M§[param1.tank.tankData.userName];
      }
      
      private function §get set catch§(param1:§if var function§) : void
      {
         if(param1.tank == this.§&"X§)
         {
            this.§6D§();
         }
         else
         {
            this.§1"'§(param1.tank);
         }
      }
      
      private function §6D§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:§]"+§ = null;
         var _loc3_:Tank = null;
         var _loc4_:Vector3 = null;
         if(this.§super set with§ != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§super set with§.length)
            {
               _loc2_ = this.§super set with§[_loc1_];
               _loc3_ = this.§!!M§[_loc2_.ownerId];
               if(_loc3_ != null)
               {
                  this.§super set with§.splice(_loc1_,1);
                  _loc1_--;
                  _loc4_ = §#",§.§include for super§(_loc2_.position);
                  this.§do const switch§(_loc2_.mineId,this.§false var§,_loc4_,_loc2_.ownerId,_loc3_.teamType,this.§%"'§(_loc3_),_loc2_.activated);
               }
               _loc1_++;
            }
         }
      }
      
      private function §1"'§(param1:Tank) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§]"+§ = null;
         var _loc4_:Vector3 = null;
         if(this.§super set with§ != null)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§super set with§.length)
            {
               _loc3_ = this.§super set with§[_loc2_];
               if(_loc3_.ownerId == param1.tankData.userName)
               {
                  this.§super set with§.splice(_loc2_,1);
                  _loc2_--;
                  _loc4_ = §#",§.§include for super§(_loc3_.position);
                  this.§do const switch§(_loc3_.mineId,this.§false var§,_loc4_,_loc3_.ownerId,param1.teamType,this.§%"'§(param1),_loc3_.activated);
               }
               _loc2_++;
            }
         }
      }
      
      [Obfuscation(rename="false")]
      private function §1!"§(param1:§package for null§) : void
      {
         this.§6!h§();
      }
   }
}

