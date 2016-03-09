import QtQuick 2.0
import Ubuntu.Components 1.1
import QtFeedback 5.0

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "vibration.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(100)
    height: units.gu(75)

    Page {
        title: i18n.tr("vibration")

        HapticsEffect {
            id: rumbleEffect
            attackIntensity: 0.0
            attackTime: 250
            intensity: 1.0
            duration: 100
            fadeTime: 250
            fadeIntensity: 0.0
        }

        Column {
            spacing: units.gu(1)
            anchors {
                margins: units.gu(2)
                fill: parent
            }

            Button {
                objectName: "button"
                width: parent.width

                text: i18n.tr("Vibrate me!")

                onClicked: {
                    rumbleEffect.start();  // plays a rumble effect
                }
            }
        }
    }
}

