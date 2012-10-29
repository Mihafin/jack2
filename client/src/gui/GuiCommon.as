package gui {
import flash.display.Sprite;
import flash.display.Stage;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;

public class GuiCommon extends Sprite{
    private static var game_stage:Stage = null;

    private var _coner_quater:Quater = null;
    private var _coner_quater2:Quater = null;
    private var _text:TextField = null;

    public function GuiCommon (_stage:Stage) {
        game_stage = _stage

        _coner_quater = new Quater();
        addChild(_coner_quater);
        _coner_quater2 = new Quater();
        addChild(_coner_quater2);
        _text = new TextField();
        _text.text = "WELCOME";
        _text.mouseEnabled = false;
        _text.selectable = false;
        _text.autoSize = (TextFieldAutoSize.LEFT);
        _text.multiline = false;
        addChild(_text);

        reposition_gui();

        Game.add_resize_function(on_resize);
    }

    private function on_resize():void {
        tr("ON_RESIZE", scene_width, scene_height);
        reposition_gui();
    }

    private function reposition_gui():void {
        _coner_quater.x = scene_width - _coner_quater.width - 5;
        _coner_quater.y = scene_height - _coner_quater.height - 5;
        _coner_quater2.x = 5;
        _coner_quater2.y = 5;

        _text.x = scene_width/2 - _text.width/2;
        _text.y = scene_height/2 - _text.height/2;
    }

    public function get scene_width():Number {
        return game_stage.stageWidth;
    }

    public function get scene_height():Number {
        return game_stage.stageHeight;
    }

}
}

import flash.display.Sprite;

class Quater extends Sprite {
    public function Quater() {
        graphics.beginFill(0);
        graphics.drawRect(0, 0, 50, 50);
        graphics.endFill();
    }
}
