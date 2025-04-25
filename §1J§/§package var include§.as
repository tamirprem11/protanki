package §1J§
{
   import §],§.§while var const§;
   import flash.utils.Dictionary;
   import projects.tanks.client.battleservice.model.statistics.§"W§;
   import projects.tanks.client.battleservice.model.statistics.§^!`§;
   import projects.tanks.client.battleservice.model.statistics.§var set do§;
   
   public class §package var include§
   {
      public function §package var include§()
      {
         super();
      }
      
      public static function §=h§(param1:Dictionary, param2:Vector.<§"W§>) : Vector.<§1""§>
      {
         var _loc3_:§"W§ = null;
         var _loc4_:§1""§ = null;
         var _loc5_:Vector.<§1""§> = new Vector.<§1""§>();
         var _loc6_:int = int(param2.length);
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc3_ = param2[_loc7_];
            _loc4_ = new §1""§();
            _loc4_.§<!Q§(_loc3_,param1[_loc3_.user]);
            _loc5_.push(_loc4_);
            _loc7_++;
         }
         return _loc5_;
      }
      
      public static function §&">§(param1:Dictionary, param2:Vector.<§var set do§>) : Vector.<§1""§>
      {
         var _loc3_:§var set do§ = null;
         var _loc4_:§1""§ = null;
         var _loc5_:Vector.<§1""§> = new Vector.<§1""§>();
         var _loc6_:int = int(param2.length);
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc3_ = param2[_loc7_];
            _loc4_ = new §1""§();
            _loc4_.§with var const§(_loc3_,param1[_loc3_.user]);
            _loc5_.push(_loc4_);
            _loc7_++;
         }
         return _loc5_;
      }
      
      public static function §?J§(param1:§"W§, param2:§while var const§) : §9!n§
      {
         return new §9!n§(param1.user,param1.uid,param1.rank,false,false,param2,param1.chatModeratorLevel);
      }
      
      public static function §<f§(param1:String, param2:Vector.<§"W§>) : §"W§
      {
         var _loc3_:§"W§ = null;
         var _loc4_:int = int(param2.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param2[_loc5_];
            if(param1 == _loc3_.user)
            {
               return _loc3_;
            }
            _loc5_++;
         }
         return null;
      }
      
      public static function §try while§(param1:Vector.<§1""§>, param2:String) : Vector.<§1""§>
      {
         var _loc3_:§1""§ = null;
         var _loc4_:Vector.<§1""§> = new Vector.<§1""§>();
         var _loc5_:int = int(param1.length);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc3_ = param1[_loc6_];
            if(_loc3_.userId != param2)
            {
               _loc4_.push(_loc3_);
            }
            _loc6_++;
         }
         return _loc4_;
      }
      
      public static function §%-§(param1:Vector.<§1""§>, param2:Vector.<§^!`§>, param3:int) : void
      {
         var _loc4_:§^!`§ = null;
         var _loc5_:§1""§ = null;
         var _loc6_:int = int(param2.length);
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc4_ = param2[_loc7_];
            _loc5_ = §5'§(param1,_loc4_.userId);
            if(_loc5_ != null)
            {
               _loc5_.§package const static§ = _loc4_.§package const static§;
               _loc5_.§try false§ = _loc4_.§try false§;
               _loc5_.§var try§ = _loc4_.§var try§;
               if(_loc5_.§try false§ <= 0)
               {
                  _loc5_.§try false§ = §break const const§(_loc4_.§package const static§,param3);
               }
            }
            _loc7_++;
         }
      }
      
      public static function §5'§(param1:Vector.<§1""§>, param2:String) : §1""§
      {
         var _loc3_:§1""§ = null;
         var _loc4_:int = int(param1.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1[_loc5_];
            if(_loc3_.userId == param2)
            {
               return _loc3_;
            }
            _loc5_++;
         }
         return null;
      }
      
      public static function §,g§(param1:Vector.<§1""§>, param2:§var set do§) : §1""§
      {
         var _loc3_:§1""§ = null;
         var _loc4_:int = int(param1.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1[_loc5_];
            if(_loc3_.userId == param2.user)
            {
               _loc3_.§]I§(param2);
               return _loc3_;
            }
            _loc5_++;
         }
         return null;
      }
      
      public static function §,9§(param1:String, param2:Vector.<§^!`§>) : int
      {
         var _loc3_:§^!`§ = null;
         var _loc4_:int = int(param2.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param2[_loc5_];
            if(param1 == _loc3_.userId)
            {
               return _loc3_.§package const static§;
            }
            _loc5_++;
         }
         return -1;
      }
      
      public static function §7!8§(param1:Vector.<§1""§>, param2:String) : int
      {
         var _loc3_:§1""§ = null;
         var _loc4_:int = int(param1.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1[_loc5_];
            if(_loc3_.userId == param2)
            {
               return _loc5_;
            }
            _loc5_++;
         }
         return -1;
      }
      
      public static function §break const const§(param1:int, param2:int) : int
      {
         return Math.ceil(param1 * param2 / 100);
      }
   }
}

