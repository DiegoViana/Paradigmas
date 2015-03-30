--Diego Viana dos Santos
--Ci�ncia da Computa��o

--Escreva uma fun��o geraPotencias :: Int -> [Int], que gere uma lista com as pot�ncias de 2,
--com expoente de n at� 0, onde n � o argumento para a fun��o. Use a sintaxe de list comprehension.

geraPotencias :: Int -> [Int]
geraPotencias n = [2^n | n <- [n, n-1..0]]

--Escreva uma fun��o addSuffix :: String -> [String] -> [String] usando list comprehension,
--para adicionar um sufixo �s strings contidas numa lista.

addSuffix :: String -> [String] -> [String]
addSuffix su st = [st ++ su| st <- st]

--Escreva uma fun��o anosDeNascimento :: [Int] -> [Int] que receba uma lista de idades,
--selecione as que s�o maiores que 20 e, para cada uma das selecionadas,
--calcule o ano de nascimento correspondente (aproximado).

anosDeNascimento :: [Int] -> [Int]
anosDeNascimento a = [2015 - a|a <- a , a > 20]

