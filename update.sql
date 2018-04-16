use bpit;
update login set course='BTech' where loginId<81;
update login set course='BBA' where loginId>80;
INSERT INTO `bpit`.`login` (`loginId`, `userId`, `password`, `firstName`, `lastName`, `mobileNumber`, `uniqueId`, `registeredAs`, `course`) VALUES ('93', 'adminBTech@bpitindia.com', 'qwerty', 'admin', 'admin', '9999999999', '9999999999', 'Teacher', 'BTech');
INSERT INTO `bpit`.`login` (`loginId`, `userId`, `password`, `firstName`, `lastName`, `mobileNumber`, `uniqueId`, `registeredAs`, `course`) VALUES ('94', 'adminBBA@bpitindia.com', 'qwerty', 'admin', 'admin', '9999999999', '9999999999', 'Teacher', 'BBA');
