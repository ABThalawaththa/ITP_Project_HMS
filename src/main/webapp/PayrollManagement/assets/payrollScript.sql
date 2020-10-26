CREATE TABLE `doctor` (
  `id` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `basicSalary` double DEFAULT NULL,
  PRIMARY KEY (`id`)) ;

CREATE TABLE `doctor_monthly_payslip` (
  `id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `basicSalary` double DEFAULT NULL,
  `overtime` double DEFAULT NULL,
  `medical` double DEFAULT NULL,
  `bonus` double DEFAULT NULL,
  `other` double DEFAULT NULL,
  `deductionDescription` varchar(45) DEFAULT NULL,
  `deductionTotal` double DEFAULT NULL,
  `totalEarnings` double DEFAULT NULL,
  `netPay` double DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)); 

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)) ;
  
CREATE TABLE `nurse` (
  `id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `basicSalary` double DEFAULT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `nurse_monthly_payslip` (
  `id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `basicSalary` double DEFAULT NULL,
  `overtime` double DEFAULT NULL,
  `medical` double DEFAULT NULL,
  `bonus` double DEFAULT NULL,
  `other` double DEFAULT NULL,
  `deductionDescription` varchar(45) DEFAULT NULL,
  `deductionTotal` double DEFAULT NULL,
  `totalEarnings` double DEFAULT NULL,
  `netpay` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `paysheets_backup` (
  `id` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `basicSalary` double DEFAULT NULL,
  `overtime` double DEFAULT NULL,
  `medical` double DEFAULT NULL,
  `bonus` double DEFAULT NULL,
  `other` double DEFAULT NULL,
  `deductionDescription` varchar(45) DEFAULT NULL,
  `deductionTotal` double DEFAULT NULL,
  `totalEarnings` double DEFAULT NULL,
  `netpay` double DEFAULT NULL,
  PRIMARY KEY (`id`,`date`));
  
CREATE TABLE `staff` (
  `id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `basicSalary` double DEFAULT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `staff_monthly_payslip` (
  `id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `basicSalary` double DEFAULT NULL,
  `overtime` double DEFAULT NULL,
  `medical` double DEFAULT NULL,
  `bonus` double DEFAULT NULL,
  `other` double DEFAULT NULL,
  `deductionDescription` varchar(45) DEFAULT NULL,
  `deductionTotal` double DEFAULT NULL,
  `totalEarnings` double DEFAULT NULL,
  `netpay` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`));
  
insert into hmsdb.doctor values ('DC1000' , 'Dr Johnathan Treat Paine' , 'Neurologist' , 120000.00);
insert into hmsdb.doctor values ('DC1001' , 'Dr Hackman' , 'Hand Surgeons' , 90000.00);
insert into hmsdb.doctor values ('DC1002' , ' Dr Headstream' , 'Dermatologists' , 100000.00);
insert into hmsdb.doctor values ('DC1003' , 'Dr. Richard D. Pearson' , 'Medical librarian' , 110000.00);
insert into hmsdb.doctor values ('DC1004' , 'Dr. William W. Grosh' , 'Oncologist' , 100000.00);
insert into hmsdb.doctor values ('DC1005' , 'Dr. Mark E. Shaffrey' , 'Optometrist' , 100000.00);
insert into hmsdb.doctor values ('DC1006' , 'Dr. Geoffrey R. Weiss' , 'Polymorphism' , 88000.00);
insert into hmsdb.doctor values ('DC1007' , 'Dr. John Kattwinkel' , 'Pain Management' , 75000.00);
insert into hmsdb.doctor values ('DC1008' , 'Dr. Eugene J. Barrett' , 'Radiologist' , 150000.00);
insert into hmsdb.doctor values ('DC1009' , 'Dr. Suzanne Holroyd' , 'Surgeons' , 130000.00);
  
insert into hmsdb.doctor_monthly_payslip values ('DC1000' , 'Dr Johnathan Treat Paine' , 'Neurologist' , 120000.00 , 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF', 2000.00 , 6000.00 , 124000.00 ,'2020-09-30');
insert into hmsdb.doctor_monthly_payslip values ('DC1001' , 'Dr Hackman' , 'Hand Surgeons' , 90000.00, 5000.50 , 0.00 , 1000.50 , 1000.00 , 'EPF/ETF', 2000.00 , 5001.00 , 95001.00 ,'2020-09-30');

insert into hmsdb.doctor_monthly_payslip values ('DC1002' , ' Dr Headstream' , 'Dermatologists' , 100000.00, 3000.00 , 4000.00 , 1000.00 , 0.00 , 'EPF/ETF and personal loans', 18000.00 , 8000.00 , 90000.00 ,'2020-09-30');
insert into hmsdb.doctor_monthly_payslip values ('DC1003' , 'Dr. Richard D. Pearson' , 'Medical librarian' , 110000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and housing loans', 10000.00 , 6000.00 , 106000.00 ,'2020-09-30');
insert into hmsdb.doctor_monthly_payslip values ('DC1004' , 'Dr. William W. Grosh' , 'Oncologist' , 100000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and annual deduction', 2000.00 , 6000.00 , 104000.00 ,'2020-09-30');

insert into hmsdb.nurse values ('NS1000' , 'Ms. Robin Quivers' , 'Nurse Midwife' , 75000.00);
insert into hmsdb.nurse values ('NS1001' , 'Mrs. Tiffany Brissette' , 'Nurse Educator' , 90000.00);
insert into hmsdb.nurse values ('NS1002' , 'Ms. Tina Wesson' , 'Mental Health Nurse' , 88000.00);
insert into hmsdb.nurse values ('NS1003' , 'Mrs. Naomi Judd' , 'Perioperative Nurse' , 65000.00);
insert into hmsdb.nurse values ('NS1004' , 'Ms. Florence Nightingale' , 'Geriatric Nursing' , 60000.00);
insert into hmsdb.nurse values ('NS1005' , 'Mrs. Cirie Fields' , 'Critical Care Nurse' , 70000.00);
insert into hmsdb.nurse values ('NS1006' , 'Mrs. Margaret Sanger' , 'Family Nurse' , 60000.00);
insert into hmsdb.nurse values ('NS1007' , 'Mrs. John Kattwinkel' , 'ER Nurse' , 55000.00);
insert into hmsdb.nurse values ('NS1008' , 'Mr. Eugene J. Barrett' , 'Clinical Nurse' , 60000.00);
insert into hmsdb.nurse values ('NS1009' , 'Mr. Jo Brand' , 'Cardiac Nurse' , 90000.00);

insert into hmsdb.nurse_monthly_payslip values ('NS1000' , 'Ms. Robin Quivers' , 'Nurse Midwife' , 75000.00,5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF', 2000.00 , 6000.00 , 79000.00 ,'2020-09-30');
insert into hmsdb.nurse_monthly_payslip values ('NS1001' , 'Mrs. Tiffany Brissette' , 'Nurse Educator' , 90000.00, 5000.50 , 0.00 , 1000.50 , 1000.00 , 'EPF/ETF', 2000.00 , 5001.00 , 93001.00 ,'2020-09-30');
insert into hmsdb.nurse_monthly_payslip values ('NS1002' , 'Ms. Tina Wesson' , 'Mental Health Nurse' , 88000.00, 3000.00 , 4000.00 , 1000.00 , 0.00 , 'EPF/ETF and personal loans', 18000.00 , 8000.00 , 78000.00 ,'2020-09-30');
insert into hmsdb.nurse_monthly_payslip values ('NS1003' , 'Mrs. Naomi Judd' , 'Perioperative Nurse' , 65000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and housing loans', 10000.00 , 6000.00 , 61000.00 ,'2020-09-30');
insert into hmsdb.nurse_monthly_payslip values ('NS1004' , 'Ms. Florence Nightingale' , 'Geriatric Nursing' , 60000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and annual deduction', 2000.00 , 6000.00 , 64000.00 ,'2020-09-30');

insert into hmsdb.paysheets_backup values ('DC1000' ,'2020-08-30','doctor', 'Dr Johnathan Treat Paine' , 'Neurologist' , 120000.00 , 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF', 2000.00 , 6000.00 , 124000.00 );
insert into hmsdb.paysheets_backup values ('DC1001' ,'2020-08-30','doctor', 'Dr Hackman' , 'Hand Surgeons' , 90000.00, 5000.50 , 0.00 , 1000.50 , 1000.00 , 'EPF/ETF', 2000.00 , 5001.00 , 95001.00 );
insert into hmsdb.paysheets_backup values ('DC1002' ,'2020-08-30','doctor', ' Dr Headstream' , 'Dermatologists' , 100000.00, 3000.00 , 4000.00 , 1000.00 , 0.00 , 'EPF/ETF and personal loans', 18000.00 , 8000.00 , 90000.00 );
insert into hmsdb.paysheets_backup values ('DC1003' ,'2020-08-30','doctor', 'Dr. Richard D. Pearson' , 'Medical librarian' , 110000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and housing loans', 10000.00 , 6000.00 , 106000.00 );
insert into hmsdb.paysheets_backup values ('DC1004' ,'2020-08-30','doctor', 'Dr. William W. Grosh' , 'Oncologist' , 100000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and annual deduction', 2000.00 , 6000.00 , 104000.00 );


insert into hmsdb.paysheets_backup values ('NS1000' ,'2020-08-30','nurse', 'Ms. Robin Quivers' , 'Nurse Midwife' , 75000.00,5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF', 2000.00 , 6000.00 , 79000.00 );
insert into hmsdb.paysheets_backup values ('NS1001' ,'2020-08-30','nurse', 'Mrs. Tiffany Brissette' , 'Nurse Educator' , 90000.00, 5000.50 , 0.00 , 1000.50 , 1000.00 , 'EPF/ETF', 2000.00 , 5001.00 , 93001.00 );
insert into hmsdb.paysheets_backup values ('NS1002' ,'2020-08-30','nurse', 'Ms. Tina Wesson' , 'Mental Health Nurse' , 88000.00, 3000.00 , 4000.00 , 1000.00 , 0.00 , 'EPF/ETF and personal loans', 18000.00 , 8000.00 , 78000.00 );
insert into hmsdb.paysheets_backup values ('NS1003' ,'2020-08-30','nurse', 'Mrs. Naomi Judd' , 'Perioperative Nurse' , 65000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and housing loans', 10000.00 , 6000.00 , 61000.00 );
insert into hmsdb.paysheets_backup values ('NS1004' ,'2020-08-30','nurse', 'Ms. Florence Nightingale' , 'Geriatric Nursing' , 60000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and annual deduction', 2000.00 , 6000.00 , 64000.00 );


insert into hmsdb.paysheets_backup values ('ST1000' ,'2020-08-30','staff', 'Ms. Robin Quivers' , 'ward clerks' , 63000.00,5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF', 2000.00 , 6000.00 , 67000.00);
insert into hmsdb.paysheets_backup values ('ST1001' ,'2020-08-30','staff', 'Mrs. Tiffany Brissette' , 'clinical assistants' , 94000.00, 5000.50 , 0.00 , 1000.50 , 1000.00 , 'EPF/ETF', 2000.00 , 5001.00 , 97001.00 );
insert into hmsdb.paysheets_backup values ('ST1002' ,'2020-08-30','staff', 'Ms. Tina Wesson' , 'patient services assistants' , 80000.00, 3000.00 , 4000.00 , 1000.00 , 0.00 , 'EPF/ETF and personal loans', 18000.00 , 8000.00 , 70000.00 );
insert into hmsdb.paysheets_backup values ('ST1003' ,'2020-08-30','staff', 'Mrs. Naomi Judd' , 'volunteers' , 65000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and housing loans', 10000.00 , 6000.00 , 61000.00 );
insert into hmsdb.paysheets_backup values ('ST1004' ,'2020-08-30','staff', 'Ms. Florence Nightingale' , 'porters' , 60000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and annual deduction', 2000.00 , 6000.00 , 64000.00 );

insert into hmsdb.staff values ('ST1000' , 'Ms. Robin Quivers' , 'ward clerks' , 63000.00);
insert into hmsdb.staff values ('ST1001' , 'Mrs. Tiffany Brissette' , 'clinical assistants' , 94000.00);
insert into hmsdb.staff values ('ST1002' , 'Ms. Tina Wesson' , 'patient services assistants' , 80000.00);
insert into hmsdb.staff values ('ST1003' , 'Mrs. Naomi Judd' , 'volunteers' , 65000.00);
insert into hmsdb.staff values ('ST1004' , 'Ms. Florence Nightingale' , 'porters' , 60000.00);
insert into hmsdb.staff values ('ST1005' , 'Mrs. Cirie Fields' , 'patient services assistants' , 70000.00);
insert into hmsdb.staff values ('ST1006' , 'Mrs. Margaret Sanger' , 'porters' , 60000.00);
insert into hmsdb.staff values ('ST1007' , 'Mrs. John Kattwinkel' , 'volunteers' , 55000.00);
insert into hmsdb.staff values ('ST1008' , 'Mr. Eugene J. Barrett' , 'ward clerks' , 60000.00);
insert into hmsdb.staff values ('ST1009' , 'Mr. Jo Brand' , 'clinical assistants' , 90000.00);

insert into hmsdb.staff_monthly_payslip values ('ST1000' , 'Ms. Robin Quivers' , 'ward clerks' , 63000.00,5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF', 2000.00 , 6000.00 , 67000.00 ,'2020-09-30');
insert into hmsdb.staff_monthly_payslip values ('ST1001' , 'Mrs. Tiffany Brissette' , 'clinical assistants' , 94000.00, 5000.50 , 0.00 , 1000.50 , 1000.00 , 'EPF/ETF', 2000.00 , 5001.00 , 97001.00 ,'2020-09-30');
insert into hmsdb.staff_monthly_payslip values ('ST1002' , 'Ms. Tina Wesson' , 'patient services assistants' , 80000.00, 3000.00 , 4000.00 , 1000.00 , 0.00 , 'EPF/ETF and personal loans', 18000.00 , 8000.00 , 70000.00 ,'2020-09-30');
insert into hmsdb.staff_monthly_payslip values ('ST1003' , 'Mrs. Naomi Judd' , 'volunteers' , 65000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and housing loans', 10000.00 , 6000.00 , 61000.00 ,'2020-09-30');
insert into hmsdb.staff_monthly_payslip values ('ST1004' , 'Ms. Florence Nightingale' , 'porters' , 60000.00, 5000.00 , 0.00 , 1000.00 , 0.00 , 'EPF/ETF and annual deduction', 2000.00 , 6000.00 , 64000.00 ,'2020-09-30');

insert into hmsdb.login values ('root' , 'root' , 'sysAdmin');