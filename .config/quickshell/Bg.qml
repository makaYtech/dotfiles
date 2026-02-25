import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Effects

Scope {
	Variants {
		model: Quickshell.screens

		PanelWindow {
			property var modelData
			screen: modelData

			aboveWindows: false
			color: "transparent"
			anchors {
				top: true
				left: true
				bottom: true
				right: true
			}

			Text {
					id: timetxt
					x: 730
					y: 280
					font.family: "GoMonoNerdFont"
					font.pointSize: 100
					font.bold: true
					color: "white"

					Process {
						id: dateProc
						command: ["date", "+%H:%M"]
						running: true
						stdout: SplitParser {
							onRead: data => timetxt.text = data
						}
					}
					Timer {
						interval: 1000
						running: true
						repeat: true
						onTriggered: dateProc.running = true
					}
			}

//-----------------------Image------------------------------------------

			Image {
				id: bg_2
				anchors.top: parent.top
				anchors.bottom: parent.bottom
				anchors.right: parent.right
				source: "back_sky.png"
			}

			Image {
				id: bg
				anchors.top: parent.top
				anchors.bottom: parent.bottom
				source: "back_2_mountainsBack.png"
			}

			Image {
				id: mid
				scale: 1.1
				anchors.top: parent.top
				anchors.bottom: parent.bottom
				source: "midle_mountains.png"
			}

			Image {
				id: fg
				scale: 1.1
				anchors.top: parent.top
				anchors.bottom: parent.bottom
				source: "front_flat.png"
			}

			MultiEffect {
				source: bg_2
				anchors.fill: bg_2
			}

//-----------------------MultiEffect--------------------------------

			MultiEffect {
				source: bg
				anchors.fill: bg
				blurEnabled: true
				blur: 0.4
			}

			MultiEffect {
				source: mid
				anchors.fill: mid
				blurEnabled: true
				blur: 0.2
			}

			MultiEffect {
				source: fg
				anchors.fill: fg
				blurEnabled: true
				blurMax: 32
				blur: 1.0
			}

			MultiEffect {
				source: timetxt
				anchors.fill: timetxt
				blurEnabled: true
				blurMax: 32
				blur: 1.0
			}

//----------------------------------------------------------------------

			MouseArea {
				anchors.fill: parent
				enabled: true
				hoverEnabled: true
				onPositionChanged: e => {
					var x = (e.x / parent.width - 0.5) * 2;
					var y = (e.y / parent.height - 0.5) * 2;

					timetxt.y = 280 + y * 3;
					timetxt.x = 730 + x * 5;

					bg.x = -50 + x * 2;
					mid.x = -50 + x * 4;
					fg.x = -50 + x * 5;
				}
			}
		}
	}
}