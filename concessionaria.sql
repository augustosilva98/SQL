-- Cria o banco de dados "cc" se ainda não existir
CREATE DATABASE IF NOT EXISTS cc;

-- Usa o banco de dados "cc"
USE cc;

-- Cria a tabela "carros" se ainda não existir
CREATE TABLE IF NOT EXISTS carros (
  id INT PRIMARY KEY AUTO_INCREMENT,
  modelo VARCHAR(100),
  ano_fabricacao INT,
  potencia INT,
  valor DECIMAL(10, 2),
  status VARCHAR(10)
);

-- Insere dados de exemplo na tabela "carros"
INSERT INTO carros (modelo, ano_fabricacao, potencia, valor, status)
VALUES
  ('Carro Novo 1', 2023, 200, 100000.00, 'novo'),
  ('Carro Novo 2', 2023, 180, 80000.00, 'novo'),
  ('Carro Usado 1', 2018, 150, 50000.00, 'usado'),
  ('Carro Usado 2', 2017, 170, 60000.00, 'usado');

-- Consulta os carros novos à venda e os carros usados
SELECT 'Novos' AS Tipo, modelo, NULL AS ano_fabricacao, potencia, valor
FROM carros
WHERE status = 'novo'

UNION ALL

SELECT 'Usados' AS Tipo, modelo, ano_fabricacao, potencia, valor
FROM carros
WHERE status = 'usado';
