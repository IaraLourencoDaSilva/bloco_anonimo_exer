-- 1.1 Faça um programa que gere um valor inteiro e o exiba.
-- DO
-- $$
-- DECLARE
-- 	n1 NUMERIC (5,2);
-- BEGIN 
-- 	n1 := random() ::int;
-- 	RAISE NOTICE '%' , n1 ;
-- END $$ ;

-- 1.2. Faça um programa que gere um valor real e o exiba.
-- DO
-- $$
-- DECLARE
-- 	n1 NUMERIC (5,2);
-- BEGIN 
-- 	n1 := random();
-- 	RAISE NOTICE '%' , n1 ;
-- END $$ ;

-- 1.3 Faça um programa que gere um valor real no intervalo [20, 30] que representa uma
-- temperatura em graus Celsius. Faça a conversão para Fahrenheit e exiba.
--°F = (°C x 1.8) + 32
-- DO
-- $$
-- DECLARE
-- 	n1 NUMERIC (5,2);
-- 	n2 NUMERIC;
-- 	limite_inferior INTEGER := 20;
-- 	limite_superior INTEGER := 30;
-- BEGIN 
-- 	n1 := floor(random() * (limite_superior - limite_inferior + 1) +
-- 	limite_inferior);
-- 	n2 := n1 * 1.8 + 32;
-- 	RAISE NOTICE 'O número de celsuis % e o número em Fahrenheit %', n1, n2;
-- END $$ ; 

-- 1.4 Faça um programa que gere três valores reais a, b, e c e mostre o valor de delta: aquele
-- que calculamos para chegar às potenciais raízes de uma equação do segundo grau.
-- delta = b^2 - 4.a.c
-- DO
-- $$
-- DECLARE
-- 	a1 INT = 2;
-- 	b1 INT = 5;
-- 	c1 INT = 3;
-- BEGIN 
-- 	RAISE NOTICE '% ^ 2 - 4 * % * % = %', b1, a1, c1, b1^2 - 4 * a1 * c1;
-- END $$ ; 

-- 1.5 Faça um programa que gere um número inteiro e mostre a raiz cúbica de seu antecessor
-- e a raiz quadrada de seu sucessor.
-- DO
-- $$
-- DECLARE
-- 	n1 INT;
-- 	n2 NUMERIC (5,2);	
-- 	n3 NUMERIC (5,2);
-- BEGIN 
-- 	n1 := random() * 20 - 1;
-- 	n2 := ||/ n1;
-- 	n3 := |/ (n1 + 2);
-- 	RAISE NOTICE 'O número é %, a raiz cúbica é %, a raiz quadrada é %', n1, n2, n3;
-- END $$ ; 

-- 1.6 Faça um programa que gere medidas reais de um terreno retangular. Gere também um
-- valor real no intervalo [60, 70] que representa o preço por metro quadrado. O programa deve
-- exibir o valor total do terreno.
-- DO
-- $$
-- DECLARE
--     n1 NUMERIC(5,2);
--     n2 NUMERIC(5,2);
--     n3 NUMERIC(5,2);  -- Use NUMERIC para valores reais
--     n4 NUMERIC(10,2); -- Use NUMERIC para o resultado do cálculo
--     limite_inferior INT := 60;
--     limite_superior INT := 70;
-- BEGIN 
--     n1 := random()::NUMERIC(5,2);
--     n2 := random()::NUMERIC(5,2);
--     n3 := (random() * (limite_superior - limite_inferior) + limite_inferior)::NUMERIC(5,2); -- Gere um número real
--     n4 := n1 * n2 * n3; -- Calcule o valor do terreno
--     RAISE NOTICE 'a largura é %.2f, o comprimento é %.2f e o valor do terreno é %.2f', n1, n2, n4;
-- END $$;

-- 1.7 Escreva um programa que gere um inteiro que representa o ano de nascimento de uma
-- pessoa no intervalo [1980, 2000] e gere um inteiro que representa o ano atual no intervalo
-- [2010, 2020]. O programa deve exibir a idade da pessoa em anos. Desconsidere detalhes
-- -- envolvendo dias, meses, anos bissextos etc.
DO
$$
DECLARE
    n1 INT;
    n2 INT;
    n3 INT;
    ano_nasc INT := 1980;
    ano_nasc2 INT := 2000;
    ano_atual INT := 2010;
    ano_atual2 INT := 2020;
BEGIN 
    n1 := (random() * (ano_nasc - ano_nasc2) + ano_nasc)::INT;
    n2 := (random() * (ano_atual - ano_atual2) + ano_atual)::INT;
    n3 := n2 - n1;
    RAISE NOTICE 'ano de nascimento é %, ano atual é %, a idade da pessoa é %', n1, n2, n3;
END $$;