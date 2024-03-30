require("render")

--You can use Alt + L to open a love2d window
_G.love = require("love")

local SCREEN_WIDTH, SCREEN_HEIGHT = love.graphics.getDimensions()
local HALF_WIDTH = SCREEN_WIDTH / 2
local HALF_HEIGHT = SCREEN_HEIGHT / 2



local FOV = 30
local NEAR = 0.1
local FAR = 1000
local a = SCREEN_HEIGHT/SCREEN_WIDTH
local fovRad = 1/math.tan((0.5*FOV) * math.pi/180) --arctan of theta/2



local vector3d = {
    x, y, z
}

local triangle = {
    vector3d.x, vector3d.y, vector3d.z
}

local mesh = {
    triangles = {}
}


cube = mesh


cube.triangles = {
    --top
    {0, 1, 0,       0, 1, 1,       1, 1, 1},
    {0, 1, 0,       1, 1, 1,       1, 1, 0},
    --bottom
    {0, 0, 0,       0, 0, 1,       1, 0, 1},
    {0, 0, 0,       1, 0, 1,       1, 0, 0},
    --right
    {1, 0, 0,       1, 1, 0,       1, 1, 1},
    {1, 0, 0,       1, 1, 1,       1, 0, 1},
    --left
    {0, 0, 0,       0, 1, 0,       0, 1, 1},
    {0, 0, 0,       0, 1, 1,       0, 0, 1},
    --close
    {0, 0, 0,       0, 1, 0,       1, 1, 0},
    {0, 0, 0,       1, 1, 0,       1, 0, 0},
    --far
    {0, 0, 1,       0, 1, 1,       1, 1, 1},
    {0, 0, 1,       1, 1, 1,       1, 0, 1}
}











function love.draw()
    --Uses RGB (normally it's a number between 0 and 255, but for lua its 0-1
    --so u have to divide by 255 to get correct color)
    love.graphics.setColor(72/255, 148/255, 10/255)
    --(0,0) is at top left of screen
    love.graphics.rectangle("fill", 50, 50, 50, 50)

    love.graphics.setColor(1, 0.7, 0.1)
    love.graphics.circle("fill", a, 180, 40)

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