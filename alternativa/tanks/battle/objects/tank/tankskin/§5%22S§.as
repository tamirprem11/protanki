package alternativa.tanks.battle.objects.tank.tankskin
{
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.objects.Mesh;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.objects.tank.§]"@§;
   import alternativa.tanks.battle.objects.tank.§throw for get§;
   import alternativa.tanks.utils.DataUnitValidator;
   import alternativa.tanks.utils.DataValidatorType;
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   import projects.tanks.clients.flash.resources.resource.Tanks3DSResource;
   
   public class §5"S§ extends §set for case§ implements DataUnitValidator
   {
      public var §9c§:Vector3;
      
      private var §-!t§:EncryptedNumber;
      
      private var §@B§:EncryptedNumber;
      
      private var §!6§:EncryptedNumber;
      
      public var mesh:Mesh;
      
      public function §5"S§(param1:Tanks3DSResource)
      {
         super(param1);
         var _loc2_:Vector.<Object3D> = param1.getObjectsByName(/mount/i);
         if(_loc2_ == null)
         {
            throw new §]"@§();
         }
         var _loc3_:Object3D = _loc2_[0];
         this.§9c§ = new Vector3(_loc3_.x,_loc3_.y,_loc3_.z);
         this.§-!t§ = new EncryptedNumberImpl(_loc3_.x);
         this.§@B§ = new EncryptedNumberImpl(_loc3_.y);
         this.§!6§ = new EncryptedNumberImpl(_loc3_.z);
         this.mesh = initMesh(this.§=!b§(param1));
      }
      
      public function hasIncorrectData() : Boolean
      {
         return this.§9c§.x != this.§-!t§.getNumber() || this.§9c§.y != this.§@B§.getNumber() || this.§9c§.z != this.§!6§.getNumber();
      }
      
      public function getType() : int
      {
         return DataValidatorType.MEMHACK_TURRET_MOUNT_POINT;
      }
      
      private function §=!b§(param1:Tanks3DSResource) : Mesh
      {
         var _loc2_:Vector.<Object3D> = param1.getObjectsByName(/hull/i);
         if(_loc2_ == null)
         {
            throw new §throw for get§();
         }
         return Mesh(_loc2_[0]);
      }
      
      public function §+!v§() : Number
      {
         return this.§-!t§.getNumber();
      }
      
      public function §&![§() : Number
      {
         return this.§@B§.getNumber();
      }
      
      public function §#[§() : Number
      {
         return this.§!6§.getNumber();
      }
   }
}

