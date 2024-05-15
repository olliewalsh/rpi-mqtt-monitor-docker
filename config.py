from config_base import *

refs = locals()


def set_from_env():
    import os

    global refs
    for key, val in os.environ.items():
        if "RMM_" in key:
            if val.isnumeric():
                val = int(val)
            elif val.lower() in ["true", "false"]:
                val = val.lower() == "true"

            key = key.replace("RMM_", "").lower()
            refs[key] = val


set_from_env()
