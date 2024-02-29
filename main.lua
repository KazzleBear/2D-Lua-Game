--You can use Alt + L to open a love2d window
_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(0.5, 0.5, 1)
end

function love.update(dt)

end

function love.draw()
    --Uses RGB (normally it's a number between 0 and 255, but for lua its 0-1
    --so u have to divide by 255 to get correct color)
    love.graphics.setColor(72/255, 148/255, 10/255)
    --(0,0) is at top left of screen
    love.graphics.rectangle("fill", 50, 50, 50, 50)

    love.graphics.setColor(1, 0.7, 0.1)
    love.graphics.circle("fill", 580, 180, 40)

    --making cube (im goated)
    love.graphics.line(50, 50, 100, 100)
    love.graphics.line(150, 50, 200, 100)
    love.graphics.line(50, 150, 100, 200)
    love.graphics.line(150, 150, 200, 200)
    love.graphics.line(100, 100, 200, 100)
    love.graphics.line(100, 200, 200, 200)
    love.graphics.line(100, 100, 100, 200)
    love.graphics.line(200, 100, 200, 200)
    love.graphics.line(150, 50, 150, 150)
    love.graphics.line(50, 50, 50, 150)
    love.graphics.line(50, 50, 150, 50)
    love.graphics.line(50, 150, 150, 150)
end