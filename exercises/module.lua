modDist = require("distance")

-- Ponto 1:
x1 = 1
y1 = 2

-- Ponto 2:
x2 = 2
y2 = 3

euclidianDist = modDist.euclidian(x1, y1, x2, y2)
manhattanDist = modDist.manhattan(x1, y1, x2, y2)

print("Euclidian distance: " .. euclidianDist .. "\nManhattan distance: " .. manhattanDist)