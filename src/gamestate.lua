
GameState = Class{__includes = BaseState}

function GameState:init()
    self.grid = Grid(2,2)
    local color={ r=255,g=0,b=0}
    for i=1,2 do
        for j=1,2 do
            self.grid:set(i,j,Block(color,i*32,j*32))
        end
    end
end


function GameState:render()
    --for i=1,#self.blocks do
    --    self.blocks[i]:render()
    --end
    self.grid:render()
end