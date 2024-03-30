-- Import Love2D modules
local love = require("love")

-- Constants
local Width = 800
local Height = 800
local Offset = 800.0 / 2.0
local rotationSpeedX = 0.5 -- Adjust the rotation speed
local rotationSpeedY = 0.5 -- Adjust the rotation speed
local rotationSpeedZ = 0.5-- Adjust the rotation speed

-- Node and Edge types
local Nodes = {
    {X = -100.0, Y = -100.0, Z = -100.0},
    {X = -100.0, Y = -100.0, Z = 100.0},
    {X = -100.0, Y = 100.0, Z = -100.0},
    {X = -100.0, Y = 100.0, Z = 100.0},
    {X = 100.0, Y = -100.0, Z = -100.0},
    {X = 100.0, Y = -100.0, Z = 100.0},
    {X = 100.0, Y = 100.0, Z = -100.0},
    {X = 100.0, Y = 100.0, Z = 100.0}
}
local Edges = {
    {A = 1, B = 2}, {A = 2, B = 4}, {A = 4, B = 3}, {A = 3, B = 1},
    {A = 5, B = 6}, {A = 6, B = 8}, {A = 8, B = 7}, {A = 7, B = 5},
    {A = 1, B = 5}, {A = 2, B = 6}, {A = 3, B = 7}, {A = 4, B = 8}
}

-- Function to rotate the cube
local function RotateCube(angleX, angleY, angleZ)
    local sinX = math.sin(angleX)
    local cosX = math.cos(angleX)
    local sinY = math.sin(angleY)
    local cosY = math.cos(angleY)
    local sinZ = math.sin(angleZ)
    local cosZ = math.cos(angleZ)
    
    for _, node in ipairs(Nodes) do
        local x = node.X
        local y = node.Y
        local z = node.Z

        -- Rotate around X axis
        local tempY = y
        y = y * cosX - z * sinX
        z = z * cosX + tempY * sinX
        
        -- Rotate around Y axis
        local tempX = x
        x = x * cosY - z * sinY
        z = z * cosY + tempX * sinY
        
        -- Rotate around Z axis
        tempX = x
        x = x * cosZ - y * sinZ
        y = y * cosZ + tempX * sinZ

        -- Update node coordinates
        node.X = x
        node.Y = y
        node.Z = z
    end
end

-- Love2D callback function for initialization
function love.load()
    love.window.setTitle("Rotating cube")
    love.window.setMode(Width, Height)
end

-- Love2D callback function for updating
function love.update(dt)
    local angleX = rotationSpeedX * dt
    local angleY = rotationSpeedY * dt
    local angleZ = rotationSpeedZ * dt
    RotateCube(angleX, angleY, angleZ)
end

-- Love2D callback function for drawing
function love.draw()
    love.graphics.setLineWidth(2)
    love.graphics.setBackgroundColor(0, 0, 0)
    love.graphics.setColor(0, 220, 0)
    
    -- Project and draw edges
    for _, edge in ipairs(Edges) do
        local nodeA = Nodes[edge.A]
        local nodeB = Nodes[edge.B]
        local ax = nodeA.X + Offset
        local ay = nodeA.Y + Offset
        local bx = nodeB.X + Offset
        local by = nodeB.Y + Offset
        love.graphics.line(ax, ay, bx, by)
    end
end
