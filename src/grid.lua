Grid = Class()

local printf = function(s,...)
    return io.write(s:format(...))
end

function Grid:init(rows,cols)
    self.rows = rows
    self.cols = cols
    self.data = {}
    for i=1,self.rows do
        local tmp = {}
        for j=1,self.cols do
            -- default value is NOT and object
            tmp[j] = 0
        end
        self.data[i] = tmp
    end
end

function Grid:repr()
    for i=1,self.rows do
        for j=1,self.cols do
            printf("%s ",self.data[i][j])
        end
        printf("\n")
    end
end

function Grid:get(row,col)
    return self.data[row][col]
end

function Grid:set(row,col,val)
    self.data[row][col] = val
end

function Grid:render()
    for i=1,self.rows do
        for j=1,self.cols do
            self.data[i][j]:render()
        end
    end
end
