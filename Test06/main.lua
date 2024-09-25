function love.load()

-- WINDOW RESOLUTION
	w = {
		width = 600,
		height = 600
	}

	love.window.setMode(w.width,w.height)
	love.window.setTitle("PRUEBA LOVE2D")

-- FONT SIZE
	font = love.graphics.newFont(38)

-- SQUARE 1
	sq1 = {
		width = 80,
		height = 80,
	}

-- SQUARE 2
	sq2 = {
		width = 80,
		height = 80,
	}

-- SQUARE 3
	sq3 = {
		width = 80,
		height = 80,
		speed = 100,
		x = 180,
		y = 20,
		corner = 0
	}

-- CHARACTER IMAGE
	character1 = love.graphics.newImage("character.png")
end

function love.update(dt)

-- SQUARE 3 KEYBOARD
	if love.keyboard.isDown("up") then
		
		sq3.y = sq3.y - sq3.speed * dt
	end

	if love.keyboard.isDown("down") then
		
		sq3.y = sq3.y + sq3.speed * dt
	end

	if love.keyboard.isDown("left") then
		
		sq3.x = sq3.x - sq3.speed * dt
	end

	if love.keyboard.isDown("right") then
		
		sq3.x = sq3.x + sq3.speed * dt
	end

	-- CHANGING THE CORNER OF THE SQUARE 3
	if love.keyboard.isDown("c") then
		sq3.corner = 30
	else
		sq3.corner = 0
	end
end

function love.draw()

-- BACKGROUND COLOR
	love.graphics.setBackgroundColor(1,1,1)
	
-- TEXT COLOR AND TEXT PRINTING
	love.graphics.setFont(font)
	love.graphics.setColor(0.2,0.4,0.3)
	love.graphics.print("Hola a todos",10,110)
	
-- SQUARE 1 PRINTING
	love.graphics.setColor(1,0.2,1)
	love.graphics.rectangle("fill", 20, 20,sq1.width, sq1.height)
	
-- SQUARE 2 PRINTING
	love.graphics.setColor(0.6,0,0.4)
	love.graphics.rectangle("fill", 100, 20, sq2.width, sq2.height)
	
-- SQUARE 3 PRINTING
	love.graphics.setColor(0.2,0.1,0.4)
	love.graphics.rectangle("fill", sq3.x, sq3.y, sq3.width, sq3.height, sq3.corner)
	
-- CHARACTER PRINTING
	love.graphics.setColor(1,1,1)
	love.graphics.draw(character1, 260, 20,0,5,5)
	character1:setFilter("nearest", "nearest")
end