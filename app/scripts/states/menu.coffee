Config = require("../config")

class Menu

  preload: ->
    @load.pack 'main', Config.pack
    @load.atlasJSONArray 'player', "./assets/sprites/player.png", "./assets/sprites/player.json"

  create : ->
    flash = @game.add.image 0, 0, 'zombie-flash'
    flash.anchor.set 0.5, 1.0
    flash.x = @game.world.centerX
    flash.y = @game.world.height
    title = @game.add.image @game.world.centerX, 40, 'title'
    title.anchor.set 0.5, 0.0
    title.alpha = 0.0
    title.scale.setTo(1.3, 1.3)

    t1 = @game.add.tween(title).to( { alpha: 1  }, 500, "Linear", true )
    t2 = @game.add.tween(flash).to( { alpha: 0  }, 5000, "Linear", true )
    t2.onComplete.add(() => @game.state.start 'main')

module.exports = Menu
