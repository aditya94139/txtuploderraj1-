from os import getenv
from dotenv import load_dotenv

load_dotenv()

API_ID = int(getenv("API_ID", 25586552))
API_HASH = getenv("API_HASH", f265cba9d76dc6ad70914accbe758f47)
BOT_TOKEN = getenv("BOT_TOKEN", 7049826061:AAGl35eB2P_6bsn1JPxyZ_a_ohi-812Tz6E)
OWNER_ID = int(getenv("OWNER_ID", 1368753935))
SUDO_USERS = list(map(int, getenv("SUDO_USERS", "5827915041").split()))
