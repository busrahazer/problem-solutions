import sys
import subprocess
from PySide6.QtWidgets import QApplication
from PySide6.QtQml import QQmlApplicationEngine

from professional_page import Professional
from education_page import Education
from socialskills_page import SocialSkills
from kids_page import Kids
from PySide6.QtCore import QObject, Slot

from sharing_page import SharingPage

if __name__ == "__main__":
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()

    professional_page = Professional()
    education_page = Education()
    socialskills_page = SocialSkills()
    kids_page = Kids()

    sharing_page = SharingPage()

    engine.rootContext().setContextProperty("ProfessionalObject", professional_page)
    engine.rootContext().setContextProperty("EducationObject", education_page)
    engine.rootContext().setContextProperty("SocialSkillsObject", socialskills_page)
    engine.rootContext().setContextProperty("KidsObject", kids_page)

    engine.rootContext().setContextProperty("SharingPageObject", sharing_page)

    engine.load('Main.qml')

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
