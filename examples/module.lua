-- Require: obter acesso às funções no módulo
moduleConvert = require("convert")

-- Executar a função no módulo
print(string.format("%.3f cm", moduleConvert.ftToCm(12)))