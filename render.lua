local render = {}


--// Main Settings
local SCREEN_WIDTH, SCREEN_HEIGHT = love.graphics.getDimensions()
local HALF_WIDTH = SCREEN_WIDTH / 2
local HALF_HEIGHT = SCREEN_HEIGHT / 2

local FOV = 30
local NEAR = 0.1
local FAR = 1000

local WhiteColor = {1,1,1}
local RedColor = {1,0,0}
local GreenColor = {0,1,0}
local BlueColor = {0,0,1}

local VertexAttributes = {
    {"VertexPosition", "float", 3},
    {"VertexTexCoord", "float", 2},
    {"VertexNormal", "float", 3},
    {"VertexColor", "float", 4}
}

--// render Settings
render.DefaultTexture = nil
render.ObjectDirectory = "Objects/"
render.TextureDirectory = "Textures/"
render.MouseSensivity = 0.7
render.QuitMap = false

render.Errors = {
    MaterialMissing = false
}
local theta --will be set to fov angle
local transform = {
    transform = function(x, y, z, w)
        return x, y, z, w
end
}
return transform