package §^!S§
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   
   public class §,"T§
   {
      public static const §var§:Number = -100;
      
      public var §dynamic const static§:Number = -100;
      
      public var targets:Vector.<Body> = new Vector.<Body>();
      
      public var §catch for function§:Vector.<Vector3> = new Vector.<Vector3>();
      
      public var §final set super§:Vector3 = new Vector3();
      
      public var §"!,§:Vector3 = new Vector3();
      
      public var hasStaticHit:Boolean;
      
      public var §!"<§:int;
      
      public function §,"T§()
      {
         super();
      }
      
      public function clear() : void
      {
         this.targets.length = 0;
         this.§catch for function§.length = 0;
         this.§dynamic const static§ = §var§;
         this.hasStaticHit = false;
         this.§!"<§ = 0;
      }
      
      public function §get static§(param1:Vector3, param2:Vector3) : void
      {
         this.§final set super§.copy(param1);
         this.§"!,§.copy(param2);
         this.hasStaticHit = true;
      }
      
      public function §88§(param1:Body, param2:Vector3) : void
      {
         this.targets.push(param1);
         this.§catch for function§.push(param2);
      }
      
      public function §try for true§(param1:Body, param2:Vector3) : void
      {
         this.§88§(param1,param2);
         ++this.§!"<§;
      }
      
      public function § !+§() : Boolean
      {
         return this.targets.length > this.§!"<§;
      }
   }
}

