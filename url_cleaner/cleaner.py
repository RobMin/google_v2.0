import os

dirty = open('urls.csv', 'r')

cleans = set()
for line in dirty:
  parts = line.split(',')
  if len(parts) != 2 or parts[1] != 'good\n' or len(parts[0]) < 7 or len(parts[0]) > 70:
    continue

  cleans.add(line.split('/')[0])

cleanFile = open('../temp/clean_urls.csv', 'w')

i = 0
for clean in cleans:
  if len(clean) < 5:
    continue

  cleanFile.write("://{}\n".format(clean))
  i += 1
