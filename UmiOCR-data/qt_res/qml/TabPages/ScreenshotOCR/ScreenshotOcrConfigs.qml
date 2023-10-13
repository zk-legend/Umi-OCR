// ==============================================
// =============== 截图OCR的配置项 ===============
// ==============================================

import QtQuick 2.15
import "../../Configs"

Configs {
    category_: "ScreenshotOCR"

    configDict: {
        // OCR参数
        "ocr": qmlapp.globalConfigs.ocrManager.deploy(this, "ocr"), 

        // 后处理
        "tbpu": qmlapp.globalConfigs.utilsDicts.getTbpu(),

        "hotkey": {
            "title": qsTr("快捷键"),
            "type": "group",

            "screenshot": {
                "title": qsTr("屏幕截图"),
                "type": "hotkey",
                "default": "win+alt+c", // 默认热键
                "eventTitle": "<<screenshot>>", // 触发事件标题
            },
            "paste": {
                "title": qsTr("粘贴图片"),
                "type": "hotkey",
                "default": "win+alt+v",
                "eventTitle": "<<paste>>",
            },
        },

        "action": {
            "title": qsTr("识图前后的操作"),
            "type": "group",

            "hideWindow": {
                "title": qsTr("隐藏主窗口"),
                "toolTip": qsTr("截图前，如果主窗口处于前台，则隐藏主窗口\n将会延时等待主窗口关闭"),
                "default": false,
            },
            "hideWindowTime": {
                "title": qsTr("隐藏等待时间"),
                "default": 0.2,
                "min": 0,
                "unit": qsTr("秒"),
                "isInt": false,
                "advanced": true,
            },
            "copy": {
                "title": qsTr("复制结果"),
                "default": false,
            },
            "popMainWindow": {
                "title": qsTr("弹出主窗口"),
                "toolTip": qsTr("识图后，如果主窗口最小化或处于后台，则弹到前台"),
                "default": true,
            },
        },

        "other": {
            "title": qsTr("其它"),
            "type": "group",

            "simpleNotificationType": qmlapp.globalConfigs.utilsDicts.getSimpleNotificationType()
        },
    }
}