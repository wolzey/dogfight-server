module.exports = {
  apps : [{
    name        : "Dogfighter",
    script      : "./server/index.js",
    watch       : true,
    env: {
      "NODE_ENV": "development"
    },
    env_production : {
       "NODE_ENV": "production",
       "PORT": 5000
    }
  }]
}