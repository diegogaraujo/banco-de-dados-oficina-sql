-- create database oficina;
use oficina;
create table servicos(
	servico_id int auto_increment primary key,
    revisao float default 0,
    pintura float default 0,
    troca_oleo float default 0,
    balanceamento float default 0
);
alter table servicos auto_increment=1;
create table mecanicos(
	mecanico_id int auto_increment primary key,
    nome varchar(20),
    sobrenome varchar(20),
    especialidade enum('mecanico', 'pintor', 'balanceador')
);
alter table mecanicos auto_increment=1;
create table pagamentos(
	pagamento_id int auto_increment primary key,
    forma_pagamento enum('avista', 'cartão'),
    parcelamento boolean default false
);
alter table pagamentos auto_increment=1;
create table ordem_servico(
	ordem_id int auto_increment,
    os_mecanico_id int, 
    os_pagamento_id int,
    os_servico_id int,
    primary key (ordem_id, os_mecanico_id, os_pagamento_id, os_servico_id),
    constraint fk_os_mecanico_id foreign key (os_mecanico_id) references mecanicos(mecanico_id)
    on update cascade
    on delete cascade,
    constraint fk_os_pagamento_id foreign key (os_pagamento_id) references pagamentos(pagamento_id)
    on update cascade
    on delete cascade,
    constraint fk_os_servico_id foreign key (os_servico_id) references servicos(servico_id)
    on update cascade
    on delete cascade,
    data_final date,
    servico_final boolean default false
);
alter table ordem_servico auto_increment=1;
create table clientes(
	cliente_id int auto_increment primary key,
    cpf char(11),
    nome varchar(20),
    sobrenome varchar(20),
    celular char(9)
);
alter table clientes auto_increment=1;
create table veiculos(
	veiculo_id int auto_increment,
    vcl_cliente_id int,
    vcl_odm_servico_id int,
    primary key (veiculo_id, vcl_cliente_id, vcl_odm_servico_id),
	constraint fk_vcl_cliente_id foreign key (vcl_cliente_id) references clientes(cliente_id)
    on update cascade
    on delete cascade,
    constraint fk_odm_servico_id foreign key (vcl_odm_servico_id) references servicos(servico_id)
    on update cascade
    on delete cascade,
    modelo varchar(45),
    ano char(4),
    cor varchar(10),
    placa char(7)
);
alter table veiculos auto_increment=1;