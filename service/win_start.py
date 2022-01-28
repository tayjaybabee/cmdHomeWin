import getpass
import os
from pathlib import Path

USER_NAME = getpass.getuser()

DEFAULT_FILEPATH = Path().absolute().joinpath("cmdHomeWin.exe").resolve()

BAT_PATH = (
    r"C:\Users\%s\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
    % USER_NAME
)


def add_to_startup(file_path=DEFAULT_FILEPATH):

    with open(BAT_PATH + "\\" + "cmdHomeWin.bat", "w+") as bat_file:
        bat_file.write(r'start "" %s' % file_path)


add_to_startup()
