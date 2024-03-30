local render = {}


--// Main Settings



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




normalize = {
    function(table)
        for i = 0, table.length(), 3 do
        table[1+i] = table[1+i] * a
        table[2+i] = table[2+i] * a*fovRad
        table[3+i] = table[3+i]
        end
        return table
    end
}
