// Dependencies
const express    = require('express')
const logger     = require('morgan')
const bodyParser = require('body-parser')
const app = express()

const DEV = 'development'
const config = require('./config')(process.env.NODE_ENV || DEV)

app.use(logger(config.logLevel))

const server     = require('http').Server(app)
const io         = require('socket.io').listen(server)

require('./config/socket')(io)

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended: true}))

server.listen(config.port)
