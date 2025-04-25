package §default var get§
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import flash.utils.Dictionary;
   
   public class §-"8§ implements §3!O§
   {
      private var container:Object3DContainer = new Object3DContainer();
      
      private const objects:Dictionary = new Dictionary();
      
      public function §-"8§(param1:Object3DContainer = null)
      {
         super();
         this.§ "+§(param1);
      }
      
      public function addChild(param1:Object3D) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         this.objects[param1] = true;
         this.container.addChild(param1);
      }
      
      public function addChildAt(param1:Object3D, param2:int) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         this.objects[param1] = true;
         this.container.addChildAt(param1,param2);
      }
      
      public function §const const throw§(param1:Vector.<Object3D>) : void
      {
         var _loc2_:Object3D = null;
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         for each(_loc2_ in param1)
         {
            this.addChild(_loc2_);
         }
      }
      
      public function removeChild(param1:Object3D) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Parameter is null");
         }
         if(this.objects[param1])
         {
            delete this.objects[param1];
            this.container.removeChild(param1);
         }
      }
      
      public function § "+§(param1:Object3DContainer) : void
      {
         var _loc2_:Vector.<Object3D> = this.§!x§();
         this.container = param1 || new Object3DContainer();
         this.§const const throw§(_loc2_);
      }
      
      private function §!x§() : Vector.<Object3D>
      {
         var _loc1_:* = undefined;
         var _loc2_:Vector.<Object3D> = new Vector.<Object3D>();
         for(_loc1_ in this.objects)
         {
            delete this.objects[_loc1_];
            this.container.removeChild(_loc1_);
            _loc2_.push(_loc1_);
         }
         return _loc2_;
      }
   }
}

