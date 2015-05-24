/* employee dataset */
insert  into `employee`(`id`,`address`,`birthDate`,`dateOfJoin`,`department`,`designation`,`email`,`empcode`,`enabled`,`firstname`,`gender`,`lastname`,`mobile`,`password`,`salary`,`ssnNo`,`username`,`upperPos_id`) values (1,'1000 N. 4th Street','2016-07-05','2016-03-05','Sample','Sample','masudjbd@gmail.com','52557','','sample ','M','admin','17027632261','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu',0,'6665151','admin',NULL),(2,'1000 N. 4th Street','2016-06-05','2016-06-05','Sample','Sample','masudjbd@gmail.com','001','','sample','M','user','17027632261','$2a$10$CtSxnoFhXPsMFeJOX8/CF.Owid/z3d43GpJQchNQ6pu/HfG3BIdZu',0,'545454','user',NULL) ;

 /* employee role dataset */
insert  into `role`(`roleId`,`roleName`,`roleLabel`) values (1,'ROLE_ADMIN','Admin'),(2,'ROLE_USER','User');

/* employee and role relation dataset */
insert  into `employee_role`(`Employee_id`,`roles_roleId`) values (1,1),(2,2);
 
 