import QtQuick
import QtQuick.Effects
import Quickshell
import QtQuick.Layouts
import Quickshell.Wayland

PanelWindow {
  id: root

  property var modelData
  readonly property var tooltip: tooltip
  readonly property real tooltipYOffset: root.height + 2
  function boundedY(targetY: real, height: real): real {
      return Math.max(bar.anchors.topMargin + height, Math.min(bar.height + bar.anchors.topMargin - height, targetY));
  }
  function boundedX(targetX: real, width: real): real {
      return Math.max(bar.anchors.leftMargin + width, Math.min(bar.width + bar.anchors.leftMargin - width, targetX));
  }

  WlrLayershell.namespace: "shell:bar"
  anchors {
    top: true
    left: true
    right: true
  }
  exclusiveZone: 0
  implicitHeight: 72
  color: "transparent"
  mask: barRegion

  Item {
    id: bar

    anchors {
      top: parent.top
      left: parent.left
      right: parent.right
    }

    implicitHeight: 48

    Rectangle {
      anchors {
        top: parent.top
        bottom: parent.bottom
        left: parent.left
      }

      implicitWidth: left.width + left.anchors.leftMargin + left.anchors.rightMargin
      implicitHeight: left.height
      color: "transparent"

      Rectangle {
        z: -1
        anchors.fill: parent
        border.color: "#BE850E"
        border.width: 4
        radius: 10
        color: "transparent"
        anchors.margins: -4
      }

      RowLayout {
        id: left

        anchors {
          top: parent.top
          bottom: parent.bottom
          left: parent.left
          leftMargin: 7
          rightMargin: 7
        }

        spacing: 12

      }
    }

    Rectangle {
      anchors {
        top: parent.top
        bottom: parent.bottom
        right: parent.right
      }

      implicitWidth: right.width + right.anchors.leftMargin + right.anchors.rightMargin
      implicitHeight: right.height
      color: "transparent"

      Rectangle {
        z: -1
        anchors.fill: parent
        border.color: "#BE850E"
        border.width: 4
        radius: 10
        color: "transparent"
        anchors.margins: -4
      }

      RowLayout {
        id: right

        anchors {
          top: parent.top
          bottom: parent.bottom
          right: parent.right
          leftMargin: 7
          rightMargin: 7
        }

        spacing: 12
      }
    }
  }
}
