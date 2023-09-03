use Oficina;

select * from mecanicos;
select * from veiculos;
select concat(nome,' ',sobrenome) as NomeCompleto from mecanicos;

select * from clientes;
select * from veiculos;

select distinct cpf, placa
 from  clientes
 inner join veiculos
 on clientes.cliente_id = veiculos.vcl_cliente_id;