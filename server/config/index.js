const PROD = 'production'
const DEV  = 'development'

const config = {
  [PROD]: {
    port: process.env.PORT,
    logLevel: 'info',
  },
  [DEV]: {
    port: process.env.PORT || 3000,
    logLevel: 'dev'
  }
}

const get = function(env) {
  return config[env]
}

module.exports = get