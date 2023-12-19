funct = function(...)
    local sum = 0
    for k,v in pairs{...} do
        sum = sum + stringLength(v)
    end
    return sum
end