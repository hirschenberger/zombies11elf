class Main

  create : ->
    style = { font: '35px Arial', fill: '#ff0044', align: 'center' }
    text = @game.add.text @game.world.centerX, @game.world.centerY, "Ready to rock!", style
    text.anchor.set 0.5
    text.alpha = 0.1
    @game.add.tween(text).to( { alpha: 1  }, 5000, "Linear", true )

module.exports = Main
