package {
    import flash.display.*;
    import flash.events.Event;

    public class test extends MovieClip {
        var button:SimpleButton = null;
        var frameCount = 0;
        function incEnterFrameCount(ev) {
            frameCount += 1;
            trace("frameCount: ", frameCount, ", button.upState: ", button.upState);
            if (frameCount >= 5) {
                this.stop();
                button.removeEventListener(Event.ENTER_FRAME, incEnterFrameCount);
            }
        }
        public function test() {
            button = new SimpleButton();
            button.addEventListener(Event.ENTER_FRAME, incEnterFrameCount);
            addChild(button);
        }
    }
}
