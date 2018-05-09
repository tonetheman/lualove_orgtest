
GameState = Class{__includes = BaseState}

function GameState:init()
    self.blocks = {}
    local color={ r=255,g=0,b=0}
    self.blocks[1] = Block(color,10,10)
end


function GameState:render()
    for i=1,#self.blocks do
        self.blocks[i]:render()
    end
end