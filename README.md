# 3DLove
________ is the main lua file for the graphics engine. 
________ is the math library.

This project uses Löve2D, you can run it by:
- copying everything over into VSC (Visual Studio Code)
- Installing the Löve2D extension, and set the shortcut to something like SHIFT + OPTION + COMMAND + L for example
- Install Löve2D aswell by going to https://love2d.org/
- Now run the shortcut in the VSC workspace and it should show a Roblox map

Want to change the loaded obj?
- In main.lua, replace "MapNameEXAMPLE" with the exact folder name

Want to add more objs (objects)?
- Make a folder and call it the exact same as your obj file, without the .obj extension, and put this folder inside "Objects"
- Add the .obj file into the folder
- If your obj has a .mtl file, add it into the folder too. The .mtl file must have the same name as the .obj file
- If your obj has textures, you need to add a "Textures" folder inside of the folder, then you can simply put all your textures in there
- If you export textures from Roblox Studio, it will add stuff to the name of the texture, you need to remove that else the code won't be able to find it
