import sys

from PyQt5 import QtCore, QtGui, QtQml

app = QtGui.QGuiApplication(sys.argv)
engine = QtQml.QQmlApplicationEngine("example.qml")
app.exec_()
