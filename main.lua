-- function love.load()
--     number = 0
-- end

-- function love.update(dt)
--     number = number + 1
-- end

-- function love.draw()
--     love.graphics.print(number)
-- end

function love.load()
    Px = 400
    Py = 390

end

function love.update()
   
    if (Py > 390)
        then Py = 390 % love.graphics.getWidth()
            end
    
    if (Py < 110)
        then Py = 110 % love.graphics.getWidth()
         end   

    if (Px < 210)
        then Px = 210 % love.graphics.getWidth()
         end

     if (Px > 590)
        then Px = 590 % love.graphics.getWidth()
            end
function love.keypressed(key)
    if key == "down" then
        Py = (Py + 20) % love.graphics.getWidth()
        elseif key == "up" then Py = (Py - 20) % love.graphics.getWidth()
    end
    if key == "right" then
        Px = (Px + 20) % love.graphics.getWidth()
        elseif key == "left" then Px = (Px - 20) % love.graphics.getWidth()
    end
end
    
end


function love.draw()
    love.graphics.setColor(255,255,255)
    love.graphics.rectangle("line", 200, 100, 400, 300)

    love.graphics.setColor(255,0,0)
   player_1 = love.graphics.circle("fill", Px, Py, 10)
end