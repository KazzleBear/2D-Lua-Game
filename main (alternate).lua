require("render")

--You can use Alt + L to open a love2d window
_G.love = require("love")

local SCREEN_WIDTH, SCREEN_HEIGHT = love.graphics.getDimensions()
local HALF_WIDTH = SCREEN_WIDTH / 2.0
local HALF_HEIGHT = SCREEN_HEIGHT / 2.0



local FOV = 30.0
local NEAR = 0.1
local FAR = 1000.0
local a = SCREEN_HEIGHT/SCREEN_WIDTH
local fovRad = 1.0/math.tan((0.5*FOV) * math.pi/180) --arctan of theta/2



local vector3d = {
    x = 0.0, y = 0.0, z = 0.0
}

local triangle = {
    p = {vector3d, vector3d, vector3d}
}

local mesh = {
    triangles = {}
}


cube = mesh


cube.triangles = {
    --top
    {0.0, 1.0, 0.0,       0.0, 1.0, 1.0,       1.0, 1.0, 1.0},
    {0.0, 1.0, 0.0,       1.0, 1.0, 1.0,       1.0, 1.0, 0.0},
    --bottom
    {0.0, 0.0, 0.0,       0.0, 0.0, 1.0,       1.0, 0.0, 1.0},
    {0.0, 0.0, 0.0,       1.0, 0.0, 1.0,       1.0, 0.0, 0.0},
    --right
    {1.0, 0.0, 0.0,       1.0, 1.0, 0.0,       1.0, 1.0, 1.0},
    {1.0, 0.0, 0.0,       1.0, 1.0, 1.0,       1.0, 0.0, 1.0},
    --left
    {0.0, 0.0, 0.0,       0.0, 1.0, 0.0,       0.0, 1.0, 1.0},
    {0.0, 0.0, 0.0,       0.0, 1.0, 1.0,       0.0, 0.0, 1.0},
    --front
    {0.0, 0.0, 0.0,       0.0, 1.0, 0.0,       1.0, 1.0, 0.0},
    {0.0, 0.0, 0.0,       1.0, 1.0, 0.0,       1.0, 0.0, 0.0},
    --back
    {0.0, 0.0, 1.0,       0.0, 1.0, 1.0,       1.0, 1.0, 1.0},
    {0.0, 0.0, 1.0,       1.0, 1.0, 1.0,       1.0, 0.0, 1.0}
}



projectionMatrix = {
    {a*fovRad, 0, 0, 0},
    {0, a, 0, 0},
    {0, 0, FAR/(FAR-NEAR), 1},
    {0, 0, (-FAR * NEAR)/(FAR-NEAR), 0}
}





function projectionMatrixMultiplication(vector3d, projectionMatrix)
    transformedVector = {}

    transformedVector[1] = vector3d.x * projectionMatrix[1][1] + vector3d.y * projectionMatrix[2][1] + vector3d.z * projectionMatrix[3][1] + projectionMatrix[4][1]
    transformedVector[2] = vector3d.x * projectionMatrix[1][2] + vector3d.y * projectionMatrix[2][2] + vector3d.z * projectionMatrix[3][2] + projectionMatrix[4][2]
    transformedVector[3] = vector3d.x * projectionMatrix[1][3] + vector3d.y * projectionMatrix[2][3] + vector3d.z * projectionMatrix[3][3] + projectionMatrix[4][3]
    divisor = vector3d.x * projectionMatrix[1][4] + vector3d.y * projectionMatrix[2][4] + vector3d.z * projectionMatrix[3][4] + projectionMatrix[4][4]

    if(divisor ~= 0) then
        transformedVector[1] = transformedVector[1]/divisor
        transformedVector[2] = transformedVector[2]/divisor
        transformedVector[3] = transformedVector[3]/divisor
    end

    return transformedVector
end




--draws a triangle
function displayTriangle(x1, y1, x2, y2, x3, y3)
    love.graphics.line(x1, y1, x2, y2)
    love.graphics.line(x2, y2, x3, y3)
    love.graphics.line(x3, y3, x1, y1)
end







function love.load()


end
 

function love.update(dt)
    
    


end


function love.draw()
    for _, tri in ipairs(cube.triangles) do
        drawnTriangle = {
            projectionMatrixMultiplication(tri[1], projectionMatrix),
            projectionMatrixMultiplication(tri[2], projectionMatrix),
            projectionMatrixMultiplication(tri[3], projectionMatrix)
        }

    displayTriangle(drawnTriangle[1][1], drawnTriangle[1][2], drawnTriangle[2][1], drawnTriangle[2][2], drawnTriangle[3][1], drawnTriangle[3][2])
    end
    

end


