CREATE TABLE OfficeEmployee
(
    Emp_id     int primary key,
    First_name varchar(40),
    Last_name  varchar(40),
    Birth_day  date,
    Sex        varchar(1),
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

ALTER table OFFICEEMPLOYEE
    add foreign key (BRANCH_ID)
        references OFFICEBRANCH (Branch_id)
            on delete set null;

Alter table OfficeEmployee
    add foreign key (SUPER_ID)
        references OfficeEmployee (EMP_ID)
            on delete set null;