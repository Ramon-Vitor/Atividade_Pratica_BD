

-- Criação do Banco de Dados
CREATE database bdEstoqueLoja;
USE bdEstoqueLoja;

CREATE TABLE CategoriasDeProdutos (
    ID INT PRIMARY KEY,         
    NomeDaCategoria VARCHAR(255)  
);
	
CREATE TABLE Fornecedores (
    ID INT PRIMARY KEY,         
    Nome VARCHAR(255),         
    Endereco VARCHAR(255),      
    Telefone VARCHAR(15)      
);


CREATE TABLE Produtos (
    ID INT PRIMARY KEY,         
    Nome VARCHAR(255),         
    Descricao TEXT,            
    Preco DECIMAL(10, 2),      
    QuantidadeEmEstoque INT,    
    Categoria INT,            
    Fornecedor INT,             
    FOREIGN KEY (Categoria) REFERENCES CategoriasDeProdutos(ID),  
    FOREIGN KEY (Fornecedor) REFERENCES Fornecedores(ID)        
);

Create table Vendas(
	ID INT primary key,
    dataDaVenda Date,
	valorTotal decimal(10, 2),  
    funcionario varchar(255) 
);

CREATE TABLE ItensDeVenda (
    ID INT PRIMARY KEY,         
    IDDoProduto INT,          
    IDDaVenda INT,             
    QuantidadeVendida INT,     
    PrecoUnitario DECIMAL(10, 2), 
    FOREIGN KEY (IDDoProduto) REFERENCES Produtos(ID),  
    FOREIGN KEY (IDDaVenda) REFERENCES Vendas(ID)        
);

