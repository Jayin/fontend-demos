express = require 'express'
app = express()
logger = require 'morgan'
bodyParser = require 'body-parser'

app.use logger('dev')
app.use bodyParser.urlencoded({ extended: false, limit:'50mb' })

app.use express.static(__dirname + '/dist')

app.get '/', (req, res)->
    res.send "hello world"


app.post '/upload', (req, res)->
    console.log req.body.img

    fs = require 'fs'
    fs.writeFile __dirname + '/dist/img/tmp.json','{"img":"'+req.body.img+'"}',(err)->
        if err
            res.json {
                'msg':'OK'
            }
        else
            res.json {
                'msg':'OK'
            }


app.listen 3000, ()->
    console.log 'express app is running'

