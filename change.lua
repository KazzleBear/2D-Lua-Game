local width, height = love.graphics.getDimensions()
local aspectRatio = width/height

local theta --will be set to fov angle
local transform = {
    transform = function(x, y, z, w)
        return x, y, z, w
end
}
return transform