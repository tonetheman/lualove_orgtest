
Block = Class()

function Block:init(color,x,y)
    self.color = color
    self.x = x
    self.y = y
end

function Block:render()
    love.graphics.setColor(
        self.color.r,self.color.g,self.color.b)
    love.graphics.rectangle("fill",
        self.x,self.y,16,16)
end
