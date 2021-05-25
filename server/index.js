const express = require('express')
const cors = require('cors');
const fs = require('fs')

const app = express()
app.use(cors())

const port = 8080

let scrappedUrls
fs.readdir('../data', (err, files) => {
  if (err) {
      return console.log('Unable to scan directory: ' + err);
  }

  scrappedUrls = files
});

app.get('/', (req, res) => {
  const search = req.query.search
  try {
    const resUrls = scrappedUrls.filter((url) => url.includes(search) || fs.readFileSync(`../data/${ url }`).includes(search))
    res.send(resUrls).status(200)
  } catch(e) {
    console.error(e)
    res.send('Internal error').status(500)
  }
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
