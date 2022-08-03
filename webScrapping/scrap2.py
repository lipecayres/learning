#
# Web Scrapping 2 - Scrapping a blog
#

import requests as rq
from bs4 import BeautifulSoup

res = rq.get("https://www.tecmundo.com.br/mais-lidas")
res.encoding = 'utf-8'

soup = BeautifulSoup(res.text, 'html.parser')

posts = soup.find_all(class_ = "articles")

allPosts = []



print(posts)