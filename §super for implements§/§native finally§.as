package §super for implements§
{
   import §]<§.§switch const for§;
   import alternativa.engine3d.materials.TextureMaterial;
   import alternativa.object.ClientObject;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.engine3d.EffectsMaterialRegistry;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.engine3d.§while for var§;
   import alternativa.tanks.utils.GraphicsUtils;
   import flash.display.BitmapData;
   import flash.filters.BitmapFilter;
   import §in var in§.§6!l§;
   import §in var in§.§package const set§;
   import §in var in§.§throw var package§;
   import platform.client.fp10.core.resource.types.MultiframeImageResource;
   import §with const catch§.§in const import§;
   
   public class §native finally§ extends §throw var package§ implements §package const set§, §4!q§
   {
      [Inject]
      public static var §true const function§:EffectsMaterialRegistry;
      
      [Inject]
      public static var battleService:BattleService;
      
      public function §native finally§()
      {
         super();
      }
      
      private static function §>N§(param1:BitmapData, param2:BitmapFilter = null) : TextureMaterial
      {
         var _loc3_:BitmapData = param2 != null ? GraphicsUtils.createFilteredImage(param1,param2) : param1;
         var _loc4_:TextureMaterial = §true const function§.getMaterial(_loc3_);
         _loc4_.repeat = true;
         return _loc4_;
      }
      
      private static function §const for§(param1:Vector.<§while for var§>) : Vector.<§while for var§>
      {
         var _loc2_:Vector.<§while for var§> = new Vector.<§while for var§>();
         var _loc3_:int = int(param1.length - 1);
         while(_loc3_ >= 0)
         {
            _loc2_.push(param1[_loc3_]);
            _loc3_--;
         }
         return _loc2_;
      }
      
      [Obfuscation(rename="false")]
      public function objectLoadedPost(param1:ClientObject) : void
      {
         var _loc2_:§6!l§ = getInitParam();
         var _loc3_:§in const import§ = §in const import§(object.adapt(§in const import§));
         var _loc4_:§break const switch§ = new §break const switch§();
         var _loc5_:MultiframeImageResource = _loc2_.healingBall;
         var _loc6_:TextureMaterial = §>N§(_loc2_.healingBall.data);
         var _loc7_:TextureMaterial = §>N§(_loc2_.healingBall.data,_loc3_.createFilter("hss"));
         var _loc8_:TextureMaterial = §>N§(_loc2_.healingRay.data,_loc3_.createFilter("hs"));
         var _loc9_:TextureMaterial = §>N§(_loc2_.damagingBall.data,_loc3_.createFilter("dss"));
         var _loc10_:TextureMaterial = §>N§(_loc2_.damagingRay.data,_loc3_.createFilter("ds"));
         var _loc11_:Vector.<§while for var§> = GraphicsUtils.getUVFramesFromTexture(_loc6_.texture,_loc5_.frameWidth,_loc5_.frameHeight,_loc5_.numFrames);
         var _loc12_:Vector.<§while for var§> = §const for§(_loc11_);
         _loc4_.§static true§ = new §package var package§(_loc6_,_loc11_,_loc5_.fps);
         _loc4_.idleSound = _loc2_.idleSound.sound;
         _loc4_.§6!P§ = new §package var package§(_loc7_,_loc11_,_loc5_.fps);
         _loc4_.§case var case§ = new §package var package§(_loc7_,_loc12_,_loc5_.fps);
         _loc4_.§^"-§ = _loc8_;
         _loc4_.§&A§ = _loc2_.healingSound.sound;
         _loc4_.§else return§ = new §package var package§(_loc9_,_loc12_,_loc5_.fps);
         _loc4_.§=!V§ = new §package var package§(_loc9_,_loc11_,_loc5_.fps);
         _loc4_.§ ]§ = _loc10_;
         _loc4_.§#!^§ = _loc2_.damagingSound.sound;
         var _loc13_:§switch const for§ = §switch const for§(object.adapt(§switch const for§));
         _loc4_.§override for extends§ = _loc13_.§in var const§("start");
         _loc4_.§in const in§ = _loc13_.§in var const§("loop");
         _loc4_.§while set function§ = _loc13_.§in var const§("friendStart");
         _loc4_.§;!'§ = _loc13_.§in var const§("friendLoop");
         _loc4_.§5f§ = _loc13_.§in var const§("enemyStart");
         _loc4_.§dynamic for with§ = _loc13_.§in var const§("enemyLoop");
         _loc4_.§`!K§ = _loc13_.§in var const§("friendBeam");
         _loc4_.§implements const return§ = _loc13_.§in var const§("enemyBeam");
         param1.putParams(§break const switch§,_loc4_);
      }
      
      [Obfuscation(rename="false")]
      public function objectUnloaded(param1:ClientObject) : void
      {
         var _loc2_:§break const switch§ = §break const switch§(param1.getParams(§break const switch§));
         §true const function§.releaseMaterial(_loc2_.§static true§.material);
         §true const function§.releaseMaterial(_loc2_.§6!P§.material);
         §true const function§.releaseMaterial(_loc2_.§case var case§.material);
         §true const function§.releaseMaterial(_loc2_.§^"-§);
         §true const function§.releaseMaterial(_loc2_.§else return§.material);
         §true const function§.releaseMaterial(_loc2_.§=!V§.material);
         §true const function§.releaseMaterial(_loc2_.§ ]§);
      }
      
      public function §["`§(param1:ClientObject) : §do for function§
      {
         return new §break const class§(battleService,§break const switch§(param1.getParams(§break const switch§)));
      }
   }
}

