> import Data.Char

Questões
1. (Valor 1,0 pt.) Desenvolva a função
    count :: (a -> Bool) -> [a] -> Int
que conta o número de elementos em uma lista de valores que satisfazem uma
condição fornecida como primeiro argumento. Sua função deve atender os
seguintes casos de teste:
    count (> 0) [0, 1, 2] == 2
    count (> 0) [-1, -2] == 0
    count (> 0) [] == 0

Solução:

> count :: (a -> Bool) -> [a] -> Int
> count p xs = count' 0 p xs
>   where
>       count' n _ [] = n
>       count' n p (x : xs)
>           | p x       = count' (n + 1) p xs
>           | otherwise = count' n p xs



2. (Valor 2,0 pts.) Desenvolva a função
    divide :: Int -> [a] -> ([a], [a])
que a partir de um inteiro n e uma lista xs produz um par de listas em que
o primeiro componente possui os n primeiros elementos de xs e o segundo
componente o restante da lista. Sua função deve atender os seguintes casos de
teste:
    divide 0 [1,2,3] == ([], [1,2,3])
    divide 5 [1,2,3] == ([1,2,3], [])
    divide 2 [1,2,3] == ([1,2], [3])

Solução:

> divide :: Int -> [a] -> ([a], [a])
> divide _ [] = ([], [])
> divide n xs = ((head' n xs), (tail' n xs))
>   where
>       head' 0 _ = []
>       head' _ [] = []
>       head' n (x : xs) = x : head' (n - 1) xs
>       
>       tail' 0 xs = xs
>       tail' _ [] = []
>       tail' n (x : xs) = tail' (n - 1) xs



3. (Valor 2,0 pts.) Desenvolva a função
    capitalize :: String -> String
que converte para maiúsculo o primeiro caractere de cada palavra que forma a
lista de entrada. Caso uma palavra não inicie com um caractere alfabético, este
deve ser deixado sem modificação. Sua função deve atender os seguintes casos
de teste:
    capitalize "aba teste dado" == "Aba Teste Dado"
    capitalize "123 caderno ?kk" == "123 Caderno ?kk"
    capitalize "" == ""
Para essa questão, você poderá considerar útil usar as seguintes funções definidas
na biblioteca padrão de Haskell:
    • words :: String -> [String]: divide uma string de entrada nas
    palavras que a constituem. Exemplo:
        words "aba teste dado" == ["aba", "teste", "dado"]
    • isLetter :: Char -> Bool: retorna verdadeiro se o caractere fornecido
    como entrada for uma letra. Exemplos:
        isLetter 'a' == True
        isLetter '1' == False
        isLetter '!' == False

Solução:

> capitalize :: String -> String
> capitalize "" = ""
> capitalize xs = concatString $ map capitalize' (words xs)
>     where
>         capitalize' (x : xs)
>             | isLetter x = (toUpper x) : xs
>             | otherwise  = x : xs
>       
>         concatString [] = []
>         concatString (x : []) = x
>         concatString (x : xs) = x ++ " " ++ (concatString xs)



4. (Valor: 5,0 pts). Considere os tipos de dados a seguir:
data Task = Task String Int
data Project = Project [Task]
O tipo Task representa tarefas formadas por uma descrição (valor de tipo String)
e o tempo de duração de uma tarefa (valor de tipo Int). Por sua vez, o tipo
Project denota um projeto e este é formado por uma lista de tarefas. Faça o
que se pede:
a) (Valor: 1,0 pt). Desenvolva a função
    validTask :: Task -> Bool
que determina se uma tarefa é ou não válida. Dizemos que uma tarefa é válida
se o tempo de duração desta tarefa é maior que zero. Sua implementação deve
satisfazer os seguintes testes:
    validTask (Task "tarefa 1" 10) == True
    validTask (Task "tarefa 2" (-1)) == False

Solução:




b) (Valor: 2,0 pts). Desenvolva a função
    validProject :: Project -> Bool
que determina se um projeto é composto apenas por tarefas válidas. Sua
implementação deve satisfazer os seguintes testes:
    validProject (Project []) == True
    validProject (Project [ Task "tarefa 1" 10
                          , Task "tarefa 2" 20]) == True
    validProject (Project [Task "tarefa 1" (-1)]) == False

Solução:




c) (Valor: 2,0 pts). Desenvolva a função
    totalTime :: Project -> Int
que calcula o tempo total gasto para execução de um projeto. O tempo de
execução de um projeto consiste na soma do tempo tempo gasto por cada uma
das tarefas que o compõe. Sua implementação deve satisfazer os seguintes testes:
    totalTime (Project []) == 0
    totalTime (Project [ Task "tarefa 1" 10
                       , Task "tarefa 2" 20]) == 30

Solução:
