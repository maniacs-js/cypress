util         = require("util")
SecretSauce  = require "./util/secret_sauce_loader"

class Chromium
  util: util

  constructor: (window) ->
    if not (@ instanceof Chromium)
      return new Chromium(window)

    if not window
      throw new Error("Instantiating lib/chromium requires a window!")

    @window = window

SecretSauce.mixin("Chromium", Chromium)

module.exports = Chromium
