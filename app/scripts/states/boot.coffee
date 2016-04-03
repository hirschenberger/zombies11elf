Config = require('../config')

class Boot
  preload: ->
    @load.pack 'preload', Config.pack

  create: ->
    @game.stage.backgroundColor = 0x000000
    @scale.scaleMode = Phaser.ScaleManager.SHOW_ALL
    @game.state.start 'preload'

module.exports = Boot
