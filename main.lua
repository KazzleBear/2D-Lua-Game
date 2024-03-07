local render = require("render")

--You can use Alt + L to open a love2d window
_G.love = require("love")
local edit = require("change")
a = {{5, 3, 5, 7},
     {7, 4, 2, 9},
     {3, 7, 9, 2},
     {1, 7, 2, 5}}
a = print()

function transform1(x, y, z, w)

    a = 5
    return a
end
a = transform1(1, 1, 1, 1)

print(a)

--[[
b = {p = print}
b.p("aper")
print = math.sin
print(1)
sin = b.p
sin(10, 20)
--]]


edit.transform(1, 1, 1, 1)



















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

    width, height = love.graphics.getDimensions()
    love.graphics.rectangle("fill", width-100, height-100, 15, 15)
end