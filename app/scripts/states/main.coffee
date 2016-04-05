Player = require('../player')

class Main

  create : ->
    @game.physics.startSystem(Phaser.Physics.ARCADE)
    @bg = @game.add.tileSprite 0, 0, @game.world.width, @game.world.height, 'bg-tiles'
    @bg.tileScale.setTo 0.2, 0.2
    style = { font: '35px Arial', fill: '#ff0044', align: 'center' }
    text = @game.add.text @game.world.centerX, @game.world.centerY-40, "Ready to rock!", style
    text.anchor.set 0.5
    text.alpha = 1
    @game.add.tween(text).to( { alpha: 0  }, 5000, "Linear", true )
    @player = new Player @game, @game.world.centerX, @game.world.centerY

module.exports = Main
