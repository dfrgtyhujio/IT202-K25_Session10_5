create database db_ss10;
use db_ss10;

create table records_north (
    record_id int primary key,
    patient_name varchar(100),
    diagnosis text,
    record_date date
);

create table records_south (
    record_id int primary key,
    patient_name varchar(100),
    diagnosis text,
    record_date date
);

insert into records_north values (1, 'nguyen van a', 'flu', '2026-04-28');
insert into records_south values (1, 'le thi b', 'cold', '2026-04-28');

create view national_record_view as
select *, 'north' as branch_name from records_north
union all
select *, 'south' as branch_name from records_south;

select * from national_record_view;