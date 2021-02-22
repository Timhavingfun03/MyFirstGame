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

--borders
B1 = 50
B2 = 50
B3 = 700
B4 = 500

end

function love.update()
   
    if (Py > 540)
        then Py = 540 % love.graphics.getWidth()
            end
    
    if (Py < 60)
        then Py = 60 % love.graphics.getWidth()
         end   

    if (Px < 60)
        then Px = 60 % love.graphics.getWidth()
         end

     if (Px > 740)
        then Px = 740 % love.graphics.getWidth()
            end

    if love.keyboard.isDown("down") then
        Py = (Py + 10) % love.graphics.getWidth()
        elseif love.keyboard.isDown("up") then Py = (Py - 10) % love.graphics.getWidth()
    end

    if love.keyboard.isDown("right") then
        Px = (Px + 10) % love.graphics.getWidth()
        elseif love.keyboard.isDown("left") then Px = (Px - 10) % love.graphics.getWidth()
    end
end 




function love.draw()

    love.graphics.setColor(255,255,255)
    love.graphics.rectangle("line", B1, B2, B3, B4)

    love.graphics.setColor(255,0,0)
   player_1 = love.graphics.circle("fill", Px, Py, 10)

end