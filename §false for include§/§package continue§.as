package §false for include§
{
   import §!"0§.§#"%§;
   import §9"9§.§return var include§;
   import §<"N§.§if continue§;
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.containers.KDContainer;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.objects.BSP;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.engine3d.objects.Sprite3D;
   import alternativa.math.Vector3;
   import alternativa.osgi.service.command.CommandService;
   import alternativa.osgi.service.command.FormattedOutput;
   import alternativa.osgi.service.console.variables.ConsoleVarInt;
   import alternativa.physics.collision.CollisionShape;
   import alternativa.physics.collision.primitives.CollisionBox;
   import alternativa.physics.collision.primitives.CollisionRect;
   import alternativa.physics.collision.primitives.CollisionTriangle;
   import alternativa.physics.collision.types.AABB;
   import alternativa.proplib.PropLibRegistry;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§get var throw§;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.utils.DataValidator;
   import alternativa.tanks.utils.StaticCollisionBoxValidator;
   import alternativa.tanks.utils.StaticCollisionTriangleValidator;
   import alternativa.tanks.utils.StaticCollisoinRectValidator;
   import alternativa.utils.TextureMaterialRegistry;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import platform.client.fp10.core.type.AutoClosable;
   import §static const catch§.§8,§;
   
   use namespace alternativa3d;
   
   public class §package continue§ implements AutoClosable
   {
      [Inject]
      public static var §null var extends§:DataValidator;
      
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var commandService:CommandService;
      
      private static const §>"2§:ConsoleVarInt = new ConsoleVarInt("map_delay",0,0,600);
      
      private static const §package var finally§:Number = 0.1;
      
      private static const §!!P§:int = 20;
      
      private var §true const function§:TextureMaterialRegistry;
      
      private var §try var finally§:PropLibRegistry;
      
      private var §9!o§:§,!X§;
      
      private var §0n§:KDContainer;
      
      private var §;"R§:Function;
      
      private var §break set var§:AABB;
      
      private var textures:Vector.<BitmapData>;
      
      private var §do var super§:§8O§;
      
      private var §[;§:uint;
      
      private var §8!c§:Boolean;
      
      private var isComplete:Boolean;
      
      public function §package continue§(param1:TextureMaterialRegistry, param2:PropLibRegistry)
      {
         super();
         this.§true const function§ = param1;
         this.§try var finally§ = param2;
      }
      
      private function §5[§(param1:FormattedOutput) : void
      {
      }
      
      public function §in case§() : Object3DContainer
      {
         return this.§0n§;
      }
      
      public function build(param1:XML, param2:Function) : void
      {
         this.§;"R§ = param2;
         this.§`"!§(param1);
         this.§'[§(param1);
         this.§2A§();
      }
      
      private function §`"!§(param1:XML) : void
      {
         var _loc2_:Vector.<CollisionShape> = §[N§.parse(param1);
         var _loc3_:§get var throw§ = battleService.§try var final§();
         _loc3_.§finally set catch§(_loc2_);
         this.§extends do§(_loc2_);
      }
      
      private function §extends do§(param1:Vector.<CollisionShape>) : void
      {
         var _loc2_:CollisionShape = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_ is CollisionBox)
            {
               §null var extends§.addValidator(new StaticCollisionBoxValidator(CollisionBox(_loc2_)));
            }
            else if(_loc2_ is CollisionRect)
            {
               §null var extends§.addValidator(new StaticCollisoinRectValidator(CollisionRect(_loc2_)));
            }
            else if(_loc2_ is CollisionTriangle)
            {
               §null var extends§.addValidator(new StaticCollisionTriangleValidator(CollisionTriangle(_loc2_)));
            }
         }
      }
      
      private function §'[§(param1:XML) : void
      {
         this.§do var super§ = new §8O§(this.§try var finally§);
         this.§do var super§.parse(param1);
         this.§break set var§ = this.§do var super§.§4"3§();
      }
      
      private function §2A§() : void
      {
         this.§9!o§ = new §,!X§(this.§true const function§,§!!P§);
         this.§9!o§.addEventListener(Event.COMPLETE,this.onTexturesReady);
         this.§9!o§.run(this.§do var super§.§8!8§());
      }
      
      private function onTexturesReady(param1:Event) : void
      {
         var _loc2_:int = 0;
         this.§8!c§ = true;
         this.§9!o§.removeEventListener(Event.COMPLETE,this.onTexturesReady);
         this.§[;§ = setTimeout(this.complete,_loc2_);
      }
      
      private function complete() : void
      {
         this.isComplete = true;
         clearTimeout(this.§[;§);
         this.textures = this.§9!o§.§dynamic var in§();
         this.§#0§();
         this.§6!q§();
         this.§^"!§();
         this.§'!2§();
         this.§do var super§.clear();
         this.§do var super§ = null;
         this.§9!o§ = null;
         this.§true const function§ = null;
         this.§try var finally§ = null;
         this.§;"R§();
      }
      
      private function §#0§() : void
      {
         if(this.§do var super§.§null const static§() == null)
         {
            return;
         }
         (this.§do var super§.§null const static§() as BSP).alternativa3d::faces[0].material.alphaTestThreshold = 0.5;
      }
      
      private function §'!2§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Object3D = null;
         var _loc3_:Vector3 = null;
         var _loc4_:Vector3 = null;
         var _loc5_:§return var include§ = null;
         var _loc6_:§8,§ = null;
         if(this.§do var super§.§null const static§() == null)
         {
            return;
         }
         var _loc7_:Vector.<Object3D> = this.§do var super§.§false var break§();
         var _loc8_:int = int(_loc7_.length);
         var _loc9_:§if continue§ = battleService.§#!o§();
         _loc3_ = new Vector3();
         _loc1_ = 0;
         while(_loc1_ < _loc8_)
         {
            _loc2_ = _loc7_[_loc1_];
            _loc3_.x += _loc2_.x;
            _loc3_.y += _loc2_.y;
            _loc3_.z += _loc2_.z;
            _loc1_++;
         }
         _loc3_.x /= _loc8_;
         _loc3_.y /= _loc8_;
         _loc3_.z /= _loc8_;
         _loc4_ = new Vector3();
         _loc1_ = 0;
         while(_loc1_ < _loc8_)
         {
            _loc2_ = _loc7_[_loc1_];
            _loc4_.x = _loc2_.x;
            _loc4_.y = _loc2_.y;
            _loc4_.z = _loc2_.z;
            _loc5_ = §return var include§(_loc9_.getObject(§return var include§));
            _loc5_.init(_loc4_,150);
            _loc6_ = §8,§(_loc9_.getObject(§8,§));
            _loc6_.init(_loc2_ as Sprite3D,_loc5_,_loc3_);
            battleService.§catch include§().§override for native§(_loc6_);
            _loc1_++;
         }
      }
      
      private function §6!q§() : void
      {
         var _loc1_:Object3D = null;
         this.§0n§ = new KDContainer();
         this.§0n§.threshold = §package var finally§;
         this.§0n§.ignoreChildrenInCollider = true;
         var _loc2_:Vector.<Object3D> = this.§do var super§.getObjects();
         _loc2_.push(new §8!v§());
         this.§0n§.createTree(_loc2_,this.§do var super§.§continue set function§());
         var _loc3_:§,6§ = battleService.§catch include§();
         for each(_loc1_ in this.§do var super§.§7!M§())
         {
            this.§0n§.addChild(_loc1_);
            _loc3_.§>"$§.add(new §#"%§(_loc1_));
         }
         this.§0n§.calculateBounds();
         _loc3_.§continue set switch§(this.§0n§);
      }
      
      private function §^"!§() : void
      {
         var _loc1_:Mesh = null;
         var _loc2_:Vector.<Mesh> = this.§do var super§.§use for finally§();
         var _loc3_:§,6§ = battleService.§catch include§();
         for each(_loc1_ in _loc2_)
         {
            _loc3_.§34§(_loc1_);
         }
      }
      
      public function §4"3§() : AABB
      {
         return this.§break set var§;
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         clearTimeout(this.§[;§);
         if(this.§0n§ != null)
         {
            this.§0n§.destroyTree();
            this.§0n§ = null;
         }
         if(this.§9!o§ != null)
         {
            this.§9!o§.removeEventListener(Event.COMPLETE,this.onTexturesReady);
            this.§9!o§.destroy();
            this.§9!o§ = null;
         }
         if(this.§do var super§ != null)
         {
            this.§do var super§.clear();
            this.§do var super§ = null;
         }
         this.§;"R§ = null;
         this.§3!Z§();
      }
      
      private function §3!Z§() : void
      {
         var _loc1_:BitmapData = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.textures)
         {
            _loc1_.dispose();
            _loc2_++;
         }
         this.textures = null;
      }
   }
}

