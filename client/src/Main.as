package {
import flash.display.LoaderInfo;
import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;

public class Main extends Sprite {

    public function Main() {
        addEventListener(Event.ADDED_TO_STAGE, added);
    }

    private function added(e:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, added);
        init();
    }

    private function init():void {
        trace("1 - Main.init");
        stage.scaleMode = StageScaleMode.NO_SCALE;
        stage.align = StageAlign.TOP_LEFT;

        var flash_params:Object = LoaderInfo(root.loaderInfo).parameters;
        var g:Game = new Game(flash_params);
        addChild(g);
        g.init();
    }

}
}
