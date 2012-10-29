package {
import flash.display.Sprite;
import flash.events.Event;

import gui.GuiCommon;

public class Game extends Sprite {
    public static var gui:GuiCommon = null;
    private static var resize_functions:Array = [];
    private var _flash_vars:Object;

    public function Game(flash_vars:Object) {
        _flash_vars = flash_vars;
    }

    public function init():void {
        add_events();

        var gui:GuiCommon = new GuiCommon(stage);
        addChild(gui);
        Game.gui = gui;

    }

    private function add_events():void {
        stage.addEventListener(Event.RESIZE, on_resize)
    }

    private function on_resize(e:Event):void {
        for each(var func:Function in resize_functions){
            func.call();
        }
    }

    public static function add_resize_function(func:Function):void {
        resize_functions.push(func);
    }


}
}
