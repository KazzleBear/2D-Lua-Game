local render = {}


--// Main Settings
local SCREEN_WIDTH, SCREEN_HEIGHT = love.graphics.getDimensions()
local HALF_WIDTH = SCREEN_WIDTH / 2
local HALF_HEIGHT = SCREEN_HEIGHT / 2



local FOV = 30
local NEAR = 0.1
local FAR = 1000
local a = SCREEN_HEIGHT/SCREEN_WIDTH
local fovRad = 1/math.tan((0.5*FOV) * math.pi/180) --arctan of theta/2


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
    --north

    --south

    --east

    --west
}



local transform = {
    transform = function(x, y, z, w)
        
end
}
return transform