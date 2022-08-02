#
# Scrapping Crossfit information
#

import pandas as pd
import csv

url = 'https://en.wikipedia.org/wiki/CrossFit_Games'

html_cross = pd.read_html(url)

recentData = html_cross[0]
championsByYear = html_cross[1]
mastersMens = html_cross[2]
mastersWeman = html_cross[3]
teens  = html_cross[4]

print(recentData)


