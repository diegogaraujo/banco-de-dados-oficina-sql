
select * from clientes;
insert into clientes (cpf, nome, sobrenome, celular) values (15685478565, 'Marcos', 'Garcia', 984534184),
															(45615775468, 'João', 'Batista', 986344153),
                                                            (65745992442, 'José', 'Francisco', 983145775),
                                                            (65416448645, 'Mario', 'Araujo', 984525263);
                                                            
select * from veiculos;
insert into veiculos (vcl_cliente_id, modelo, ano, cor, placa) values (1, 'strada', 2018, 'preta', '7R54G36'),
																	  (2, 'palio', 2022, 'prata', '54R2B46'),
															          (3, 'gol', 2019, 'branco', '54G8E34'),
																	  (4, 'Onix', 2021, 'vermelho', '65H1U95'),
																	  (1, 'strada', 2018, 'preta', '7R54G36'),
																	  (2, 'palio', 2022, 'prata', '54R2B46'),
																	  (3, 'gol', 2019, 'branco', '54G8E34');
                                                            
select * from mecanicos;
insert into mecanicos (nome, sobrenome, especialidade) values ('Elias', 'Camargo', 'Mecanico'),
															  ('Gilmar', 'Santos', 'Pintor'),
                                                              ('Mario', 'Jesus', 'balanceador');
															

select * from servicos;
insert into servicos (revisao, pintura, troca_oleo, balanceamento) values (0, 1500, 0, 0),
																		  (200, 0, 80, 150),
                                                                          (0, 0, 80, 150),
                                                                          (0, 0, 0, 150);

select * from ordem_servico;
insert into ordem_servico (os_mecanico_id, os_servico_id, data_final, servico_finalizado) values (2, 1, '2023-8-25', true),
																								 (1, 2, '2023-8-27', true),
                                                                                                 (1, 2, '2023-8-27', true),
                                                                                                 (3, 2, '2023-8-27', true),
                                                                                                 (1, 3, '2023-8-28', true),
                                                                                                 (3, 3, '2023-8-28', true),
                                                                                                 (3, 4, '2023-8-28', true);


select * from pagamentos;
insert into pagamentos (ord_servico_pag_id, forma_pagamento, parcelamento) values (1, 'cartao', true),
																				  (2, 'cartao', true),
                                                                                  (3, 'avista', false),
                                                                                  (4, 'avista', false),
                                                                                  (5, 'avista', false),
                                                                                  (6, 'cartao', true),
                                                                                  (7, 'cartao', true);

