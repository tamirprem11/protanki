package alternativa.tanks.gui.tankpreview
{
   import alternativa.engine3d.core.Object3D;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class RotationDecelerationState implements TankPreviewState
   {
      private static const MIN_ROTATION_SPEED:Number = 0.02;
      
      private var stateMachine:TankPreviewStateMachine;
      
      private var eventSource:IEventDispatcher;
      
      private var context:TankPreviewContext;
      
      private var lastTime:int;
      
      private var cameraContainer:Object3D;
      
      public function RotationDecelerationState(param1:TankPreviewStateMachine, param2:IEventDispatcher, param3:TankPreviewContext, param4:Object3D)
      {
         super();
         this.stateMachine = param1;
         this.eventSource = param2;
         this.context = param3;
         this.cameraContainer = param4;
      }
      
      public function enter() : void
      {
         this.eventSource.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.lastTime = getTimer();
      }
      
      public function update() : void
      {
         var _loc1_:int = getTimer();
         var _loc2_:Number = (_loc1_ - this.lastTime) / 1000;
         this.lastTime = _loc1_;
         this.cameraContainer.rotationZ += this.context.angularSpeed * _loc2_;
         if(Math.abs(this.context.angularSpeed) > MIN_ROTATION_SPEED)
         {
            this.context.angularSpeed *= Math.exp(-1.5 * _loc2_);
         }
         else
         {
            this.context.angularSpeed = 0;
            this.stateMachine.handleEvent(this,TankPreviewEvent.ROTATION_STOPPED);
         }
      }
      
      public function exit() : void
      {
         this.eventSource.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this.stateMachine.handleEvent(this,TankPreviewEvent.MOUSE_DOWN);
      }
   }
}

