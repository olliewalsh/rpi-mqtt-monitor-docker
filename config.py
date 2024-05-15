from config_base import *

refs = locals()


def set_from_env():
    import os

    global refs
    for key, val in os.environ.items():
        if "RMM_" in key:
            key = key.replace("RMM_", "").lower()
            refs[key] = val


set_from_env()
