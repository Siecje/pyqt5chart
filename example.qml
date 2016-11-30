import QtQuick 2.0
import QtCharts 2.0
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    height: 600
    width: 800

    ChartView {
        width: 400
        height: 300
        theme: ChartView.ChartThemeBrownSand
        antialiasing: true

        PieSeries {
            id: pieSeries
            PieSlice { label: "eaten"; value: 94.9 }
            PieSlice { label: "not yet eaten"; value: 5.1 }
        }
    }
}
