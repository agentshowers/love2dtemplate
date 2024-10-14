if arg[2] == "debug" then
  require("lldebugger").start()
end

Object = require("lib/classic")

function love.load()

end

function love.update(dt)

end

function love.draw()
  love.graphics.printf("Hello world!", love.graphics.newFont(20), 0, love.graphics.getHeight() / 2,
    love.graphics.getWidth(), "center")
end

local love_errorhandler = love.errorhandler

function love.errorhandler(msg)
  if lldebugger then
    error(msg, 2)
  else
    return love_errorhandler(msg)
  end
end
