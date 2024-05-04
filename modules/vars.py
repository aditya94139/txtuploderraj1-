from os import getenv
from dotenv import load_dotenv

load_dotenv()

API_ID = int(getenv("API_ID", 27952989))
API_HASH = getenv("API_HASH", 74f04808a359e9a516e955ec243613ca)
BOT_TOKEN = getenv("BOT_TOKEN", 6866810487:AAHkaTYQRKxMR-STBMlpwIiCm5bh1DfhBKQ)
OWNER_ID = int(getenv("OWNER_ID", 5128979564))
SUDO_USERS = list(map(int, getenv("SUDO_USERS", "5128979564").split()))
