Config = require('../config')

class Preload
  preload: ->
    @load.pack 'menu', Config.pack
    @load.setPreloadSprite @add.sprite 0, 0, 'preload-bar'

  create: ->
    @game.state.start 'menu'

module.exports = Preload
