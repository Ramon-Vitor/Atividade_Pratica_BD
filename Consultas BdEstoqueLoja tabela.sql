use bdestoqueloja;
-- questao 01
select * from Produtos;

-- questao 02
select nome from Fornecedores;

-- questao 03
select * from CategoriasDeProdutos;

-- questao 04
select * from Produtos where Fornecedor = 2;

-- questao 05
select * from Produtos where Preco > 5;
select * from vendas;
select * from intensdevenda;
select * from Vendas V inner join itensdevenda IV on v.IV = IV.IDDaVenda
where IV.IDDoProduto =2 ;

-- questao 06

select * from Vendas inner join ItensDeVenda; 
select * from Vendas V inner join ItensDeVenda IV;
select * from Vendas V inner join ItensDeVenda IV 
on V.ID = IV.IDDaVenda; 
select * from Vendas V inner join ItensDeVenda IV 
on V.ID = IV.IDDaVenda where IV.IDDoProduto = 2;

-- questao 07
select SUM(QuantidadeEmEstoque * Preco) from Produtos;

-- questao 08
select Categoria, SUM(QuantidadeEmEstoque * Preco) from Produtos
group by Categoria;

-- questao 09
select * from Produtos where Categoria = 2;

-- questao 10
select * from Vendas where Funcionario = "Maria Santos";

-- questao 11
select * from ItensDeVenda iv
inner join Produtos p on iv.IDDoProduto = p.ID
where iv.IDDaVenda = 1; 

-- questao 12
-- desconsiderar, necessita de recursos mais avançados

-- questao 13
-- desconsiderar, necessita de recursos mais avançados

-- questao 14
select * from fornecedores inner join produtos;
SELECT * from Fornecedores f INNER JOIN Produtos p;
SELECT * from Fornecedores f INNER JOIN Produtos p ON f.ID = p.Fornecedor;
SELECT * from Fornecedores f INNER JOIN Produtos p ON f.ID = p.Fornecedor GROUP BY f.ID;
SELECT * from Fornecedores f INNER JOIN Produtos p ON f.ID = p.Fornecedor GROUP BY f.ID
HAVING SUM(p.QuantidadeEmEstoque) > 60;