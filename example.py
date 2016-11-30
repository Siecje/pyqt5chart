import sys

from PyQt5 import QtQml
from PyQt5.QtWidgets import QApplication

app = QApplication(sys.argv)
engine = QtQml.QQmlApplicationEngine("example.qml")
app.exec_()
