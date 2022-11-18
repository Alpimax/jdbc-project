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

ALTER table OFFICEEMPLOYEE
add foreign key(BRANCH_ID)
references OFFICEBRANCH(Branch_id)
on delete  set null ;