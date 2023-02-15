import QtQuick 2.15

Rectangle {
    width: 150; height: 200; color: "white"

    ListView {
        id: view
        anchors.fill: parent
        model: NameModel {}
        // readonly property ListView __lv: ListView.view
// To define a javascript variable just use 'var' in 'type' while defining the syntax
        property var collapsed: ({})
        delegate: NameDelegate {
            anchors {
                left: parent.left; right: parent.right
            }
            expanded: __lv.isSectionExpanded( model.team )

            MouseArea {
                anchors.fill: parent
                onClicked: __lv.currentIndex = index
            }
        }
        focus: true
        clip: true
        section.property: "team"
        section.criteria: ViewSection.FullString
// This basically allows navigation to wrap around 
        keyNavigationWraps: true

        highlight: Rectangle {
            anchors {
                left: parent.left 
                right: parent.right
            }
            color: "gray"
        }
        section.delegate: SectionDelegate {
            anchors {
                left: parent.left; right: parent.right
            }
            text: section
            onClicked: __lv.toggleSection( section )
        }
    
        function isSectionExpanded( section ) {
            return !( section in collapsed )
        }

        function showSection( section ) {
            delete collapsed[section]
// Since the entire value of map 'collapsed' does not change therefore a signal would not be automatically emitted
// instead we would have to emit a signal manually
            collapsedChanged()
        }

        function hideSection( section ) {
            collapsed[section] = true
            collapsedChanged()
        }
        
        function toggleSection( section ) {
            if (isSectionExpanded( section )) {
                hideSection( section )
            }
            else {
                showSection( section )
            }
        }
    }
}