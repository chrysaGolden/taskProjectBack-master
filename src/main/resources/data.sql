insert into TODO(ID,DESCRIPTION,IS_DONE,TARGET_DATE,USERNAME, WILL_DO,STATUS)
values(1000, 'Clean bathroom','Danai',current_date,'Chrysa','Danai','Started');

insert into TODO(ID,DESCRIPTION,IS_DONE,TARGET_DATE,USERNAME,WILL_DO,STATUS)
values(1001, 'Hoover','Efi',current_date,'Chrysa','Efi','Pending');

insert into TODO(ID,DESCRIPTION,IS_DONE,TARGET_DATE,USERNAME,WILL_DO,STATUS)
values(1002, 'pet the cat','Chrysa',current_date,'Chrysa','Chrysa','Complete');

insert into GUESTS_CALENDAR(ID,NAME,USERNAME,DESCRIPTION,FIRST_DAY,LAST_DAY)
values(1002, 'Chrysa','Chrysa', 'paei sto diaolo', current_date, current_date);




insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1002, 'electricity',500, current_date);

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1003, 'electricity',156.56, '2022-10-21 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1004, 'electricity',544.54, '2022-12-29 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1005, 'electricity',508.4, '2023-02-23 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1006, 'wifi',40, '2022-09-28 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1007, 'wifi',40, '2022-10-28 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1008,'wifi',40, '2022-11-28 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1009, 'wifi',40, '2022-12-28 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1010,'wifi',40, '2023-01-28 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1011, 'wifi',40, '2023-02-28 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1012, 'wifi',40, '2023-03-28 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1013, 'rent',2903, '2022-09-01 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1014, 'rent',2903, '2022-10-01 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1015, 'rent',2903, '2022-11-01 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1016, 'rent',2903, '2022-12-01 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1017, 'rent',2903, '2023-01-01 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1018,'rent',2903, '2023-02-01 00:00:00');

insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1019, 'rent',2903, '2023-03-01 00:00:00');


insert into EXPENSES(ID,TYPE_OF_EXPENSE,AMOUNT,PAID_UNTIL)
values(1020, 'rent',2903, '2023-04-01 00:00:00');

insert into USER(ID, USERNAME)
values(100001, 'Chrysa');

insert into USER(ID, USERNAME)
values(100002, 'Danai');

insert into USER(ID, USERNAME)
values(100003, 'Efi');

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1002,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1002,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1002,100003);


insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1003,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1003,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1003,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1004,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1004,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1004,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1005,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1005,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1005,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1006,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1006,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1006,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1007,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1007,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1007,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1008,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1008,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1008,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1009,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1009,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1009,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1010,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1010,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1010,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1011,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1011,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1011,100003);


insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1012,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1012,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1012,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1013,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1013,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1013,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1014,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1014,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1014,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1015,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1015,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1015,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1016,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1016,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1016,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1017,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1017,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1017,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1018,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1018,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1018,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1019,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1019,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1019,100003);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1020,100001);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1020,100002);

insert into EXPENSE_USER(EXPENSE_ID, USER_ID)
values(1020,100003);




