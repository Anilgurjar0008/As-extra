import os
from os import getenv

API_ID = int(os.environ.get("API_ID", "29061977"))  # Replace "123456" with your actual api_id or use .env
API_HASH = os.environ.get("API_HASH", "9519882b3dcb5dd995ca75247bd934ea")
BOT_TOKEN = os.environ.get("BOT_TOKEN", "8033218814:AAEsdbr4YwMi9qqW1GehaiHj32bctl4nUGE")

OWNER_ID = int(os.environ.get("OWNER_ID", "5371688792"))  # Your Telegram user ID
SUDO_USERS = list(map(int, os.environ.get("SUDO_USERS", "5371688792").split()))  # Space-separated user IDs

MONGO_URL = os.environ.get("MONGO_URL", "mongodb+srv://anil07gurjar07:anil07gurjar07@cluster0.m4csul8.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0")##your mongo url eg: withmongodb+srv://xxxxxxx:xxxxxxx@clusterX.xxxx.mongodb.net/?retryWrites=true&w=majority
CHANNEL_ID = int(os.environ.get("CHANNEL_ID", "-1002492607383"))  # Telegram channel ID (with -100 prefix)

PREMIUM_LOGS = os.environ.get("PREMIUM_LOGS", "")  # Optional here you'll get all logs
