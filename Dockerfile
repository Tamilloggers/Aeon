FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN pip3 install --no-cache-dir aiohttp aiofiles aioshutil anytree==2.8.0 apscheduler aria2p asyncio beautifulsoup4 bencoding cinemagoer cloudscraper dnspython feedparser flask gevent google-api-python-client google-auth-httplib2 google-auth-oauthlib gunicorn httpx langcodes[data] lxml motor mutagen markdown natsort pillow psutil pybase64 pycountry python-dotenv pyshorteners python-magic quoters qbittorrent-api requests speedtest-cli telegraph tenacity tgcrypto uvloop xattr yt-dlp pyrofork==2.2.11
COPY . .
CMD ["bash", "start.sh"]
