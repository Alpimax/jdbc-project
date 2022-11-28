CREATE TABLE "OFFICEEMPLOYEE"
(
    Emp_id     int primary key,
    First_name varchar(40),
    Last_name  varchar(40),
    Birth_day  varchar(20),
    Sex        varchar(2),
    Salary     int,
    Super_id   int,
    Branch_id  int
);

CREATE TABLE OfficeBranch
(
    Branch_id      int primary key,
    Branch_name    VARCHAR(40),
    Mgr_id         int,
    Mgr_start_date DATE,
    FOREIGN KEY (Mgr_id) references OfficeEmployee (Emp_id) on delete set null
);
CREATE TABLE officeClient
(
    Client_id   int primary key,
    Client_name varchar(40),
    Branch_id   int,
    FOREIGN KEY (Branch_id) references OFFICEBRANCH (Branch_id) on delete set null
);

CREATE TABLE OfficeWorkWith
(
    emp_id      int,
    client_id   int,
    total_sales int,
    primary key (emp_id, client_id),
    foreign key (emp_id) references OfficeEmployee (Emp_id) on delete cascade,
    foreign key (emp_id) references OFFICECLIENT (client_id) on delete cascade
);

CREATE TABLE officeBranch_supplier
(
    Branch_id     int,
    Supplier_name VARCHAR(40),
    Supply_type   varchar(40),
    primary key (Branch_id, Supplier_name),
    foreign key (Branch_id) references officeBranch (Branch_id) on delete cascade
);

ALTER table OFFICEEMPLOYEE
    add foreign key (BRANCH_ID)
        references OFFICEBRANCH (Branch_id)
            on delete set null;

Alter table OfficeEmployee
    add foreign key (SUPER_ID)
        references OfficeEmployee (EMP_ID)
            on delete set null;


insert into OfficeEmployee
values (100, 'David', 'Wallace', '1967-11-17', 'M', 250000, null, null);

insert into OfficeBranch
values (1, 'Corporate', 100, '2006-02-09');

update OfficeEmployee
set Branch_id =1
where Emp_id = 100;

select *
from OFFICEEMPLOYEE;
