import express from 'express'

const app = express()

const port = 1548

app.get('/', (req, res) => {
  res.send('Hello')
})

app.listen(port, () => console.log('listening on port 1548'))