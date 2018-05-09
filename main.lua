require("src/deps")

local currentState = nil

function love.load()
    math.randomseed(os.time())
    love.graphics.setDefaultFilter('nearest', 'nearest')
    love.window.setTitle('tony test')
    Push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        vsync = true,
        resizable = true
    })

    currentState = GameState()
end

function love.update(dt)
    currentState:update(dt)
end

function love.draw()
    currentState:render()
end


