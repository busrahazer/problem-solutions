from PySide6.QtCore import QObject, Signal, Property
class Education(QObject):
    messageChanged = Signal(str)

    def __init__(self):
        super().__init__()
        self._message = ""

    def setMessage(self, message):
        if self._message != message:
            self._message = message
            self.messageChanged.emit(self._message)

    def getMessage(self):
        return self._message

    message = Property(str, getMessage, setMessage, notify=messageChanged)


