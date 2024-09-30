

CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_no` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO accounts VALUES("1","11111","Sales Account","1000","1000","this is first account","1","1","2018-12-17 21:58:02","2019-01-20 04:59:06");
INSERT INTO accounts VALUES("3","21211","Sa","","0","","0","1","2018-12-17 21:58:56","2019-01-20 04:59:06");
INSERT INTO accounts VALUES("5","bank-1","zuhair","100000","100000","","","1","2022-11-28 00:58:18","2022-11-28 00:58:18");
INSERT INTO accounts VALUES("6","030303030303","SIR ZULFIQAR BALOCH","","0","","","1","2024-05-05 19:11:26","2024-05-05 19:11:26");



CREATE TABLE `adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO adjustments VALUES("13","adr-20230401-093050","1","","3","1","","2023-04-01 11:30:50","2023-04-01 11:30:50");
INSERT INTO adjustments VALUES("14","adr-20240201-013553","1","","500","1","","2024-02-01 13:35:53","2024-02-06 13:05:37");
INSERT INTO adjustments VALUES("16","adr-20240304-110928","1","","200","1","","2024-03-04 11:09:28","2024-03-04 11:09:28");
INSERT INTO adjustments VALUES("17","adr-20240405-045424","1","","2000","1","","2024-04-05 16:54:24","2024-05-07 07:10:09");
INSERT INTO adjustments VALUES("20","adr-20240604-045113","1","","1000","1","","2024-06-04 16:51:13","2024-06-04 16:51:13");
INSERT INTO adjustments VALUES("21","adr-20240604-045557","1","","1000","1","","2024-06-04 16:55:57","2024-06-04 16:55:57");



CREATE TABLE `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) NOT NULL,
  `checkout` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attendances_date_employee_id_checkin_unique` (`date`,`employee_id`,`checkin`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO attendances VALUES("1","2019-01-02","1","1","10:00am","6:30pm","1","","2019-01-01 22:30:50","2019-01-01 22:30:50");
INSERT INTO attendances VALUES("3","2019-01-02","3","1","10:15am","6:30pm","0","","2019-01-01 22:57:12","2019-01-01 22:57:12");
INSERT INTO attendances VALUES("6","2020-02-03","1","1","11:30am","6:00pm","0","","2020-02-03 04:57:30","2020-02-03 04:57:30");
INSERT INTO attendances VALUES("7","2023-08-19","1","1","10:00am","11:00am","1","","2023-08-19 03:03:36","2023-08-19 03:03:36");



CREATE TABLE `billers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) NOT NULL,
  `vat_number` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO billers VALUES("1","Ali","aks.jpg","aks","31123","yousuf@kds.com","442343324","halishahar","chittagong","","","sdgs","1","2018-05-12 17:49:30","2023-10-12 13:01:26");
INSERT INTO billers VALUES("2","tariq","","big tree","","tariq@bigtree.com","321312","khulshi","chittagong","","","","0","2018-05-12 17:57:54","2023-10-12 13:01:53");
INSERT INTO billers VALUES("3","test","","test","","test@test.com","3211","erewrwqre","afsf","","","","0","2018-05-29 22:38:58","2018-05-29 22:39:57");
INSERT INTO billers VALUES("5","modon","mogaTel.jpg","mogaTel","","modon@gmail.com","32321","nasirabad","chittagong","","","bd","0","2018-08-31 23:59:54","2023-10-12 13:01:53");
INSERT INTO billers VALUES("6","a","","a","","a@a.com","q","q","q","","","","0","2018-10-06 22:33:39","2018-10-06 22:34:18");
INSERT INTO billers VALUES("7","a","","a","","a@a.com","a","a","a","","","","0","2018-10-06 22:34:36","2018-10-06 22:36:07");
INSERT INTO billers VALUES("8","x","x.png","x","","x@x.com","x","x","x","","","","0","2019-03-18 07:02:42","2023-10-12 13:01:53");
INSERT INTO billers VALUES("22","asdad345","","ssdfsfs","","ashfaqdev.php@gmail.com","5353453","dsdsa","SFSDFSDF","","","","0","2023-05-03 02:21:51","2023-05-06 06:00:20");



CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO brands VALUES("3","HP","HP.jpg","0","2018-05-12 05:06:14","2023-10-05 04:30:31");
INSERT INTO brands VALUES("4","samsung","samsung.jpg","0","2018-05-12 05:08:41","2023-10-05 04:30:31");
INSERT INTO brands VALUES("5","Apple","Apple.jpg","0","2018-08-31 19:34:49","2023-10-05 04:30:31");
INSERT INTO brands VALUES("6","jjjj","20201019093419.jpg","0","2020-10-19 11:33:52","2020-10-19 11:35:58");
INSERT INTO brands VALUES("7","Lotto","","0","2020-11-15 23:13:41","2023-10-05 04:30:31");
INSERT INTO brands VALUES("8","cocacola","","0","2022-01-12 08:26:22","2022-01-12 08:26:30");
INSERT INTO brands VALUES("9","pepsi","20220112072659.jpg","0","2022-01-12 08:26:59","2022-01-12 08:27:07");
INSERT INTO brands VALUES("10","Ovation Healthcare","20240505082441.png","1","2023-10-05 04:27:15","2024-05-05 20:24:41");



CREATE TABLE `cash_registers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cash_registers VALUES("1","100","9","1","0","2020-10-13 03:32:54","2020-10-23 20:27:42");
INSERT INTO cash_registers VALUES("2","50","9","1","1","2020-10-13 11:25:26","2020-10-13 11:25:26");
INSERT INTO cash_registers VALUES("3","200","1","1","0","2020-10-22 03:53:07","2021-06-19 00:52:48");
INSERT INTO cash_registers VALUES("4","100","1","2","0","2020-10-23 21:04:39","2022-03-12 09:18:24");
INSERT INTO cash_registers VALUES("5","1000","1","1","0","2021-06-19 00:53:22","2022-03-12 09:18:31");
INSERT INTO cash_registers VALUES("6","120","1","2","1","2022-03-31 01:29:13","2022-03-31 01:29:13");
INSERT INTO cash_registers VALUES("7","50000","1","1","1","2023-02-14 13:11:12","2023-02-14 13:11:12");



CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO categories VALUES("1","Fruits","","9","0","2018-05-11 23:27:25","2023-10-05 04:30:24");
INSERT INTO categories VALUES("2","electronics","","","0","2018-05-11 23:35:57","2023-10-05 04:30:24");
INSERT INTO categories VALUES("3","computer","20200701093146.jpg","2","0","2018-05-11 23:36:08","2023-10-05 04:30:24");
INSERT INTO categories VALUES("4","toy","","","0","2018-05-23 18:57:48","2023-10-05 04:30:24");
INSERT INTO categories VALUES("7","jacket","","","0","2018-05-27 18:39:51","2018-05-27 18:40:48");
INSERT INTO categories VALUES("9","food","","","0","2018-06-24 21:21:40","2023-10-05 04:30:24");
INSERT INTO categories VALUES("10","anda","","","0","2018-08-28 19:36:31","2018-08-28 19:37:34");
INSERT INTO categories VALUES("11","anda","","","0","2018-08-28 19:48:06","2018-08-28 19:53:22");
INSERT INTO categories VALUES("12","accessories","","","0","2018-12-04 18:28:53","2023-10-05 04:30:24");
INSERT INTO categories VALUES("14","nn","","","0","2019-04-10 00:22:30","2019-04-10 01:38:47");
INSERT INTO categories VALUES("15","nm","","","0","2019-04-10 00:22:36","2019-04-10 01:41:43");
INSERT INTO categories VALUES("16","desktop","","3","0","2020-03-11 06:42:33","2023-10-05 04:30:24");
INSERT INTO categories VALUES("17","tostos","20200701080042.png","","0","2020-07-01 10:00:42","2020-07-01 11:35:34");
INSERT INTO categories VALUES("19","Paracetamol","","","0","2021-03-07 02:16:01","2023-10-05 04:30:24");
INSERT INTO categories VALUES("20","Automobile","","","0","2021-07-15 08:35:12","2023-10-05 04:30:24");
INSERT INTO categories VALUES("21","Productos Caballero","","","0","2022-10-15 11:42:44","2023-10-05 04:30:24");
INSERT INTO categories VALUES("22","tukutss","","","0","2023-07-31 05:46:34","2023-07-31 05:47:11");
INSERT INTO categories VALUES("23","Medicine","","","1","2023-10-05 04:25:37","2023-10-05 04:25:37");



CREATE TABLE `compliys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `queue` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `total_qty` double DEFAULT NULL,
  `total_discount` double DEFAULT NULL,
  `total_tax` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(191) DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `document` varchar(191) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 1,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO compliys VALUES("6","sr-20240212-123853","1","7","97","","49","1","1","1","12","0","0","4879680","","","","","","","","","","","","1","","","1","","sadsad","sadsadsa","2024-02-12 12:38:53","2024-02-12 12:38:53");
INSERT INTO compliys VALUES("7","sr-20240212-074600","1","7","0","","96","1","1","2","2","0","0","0","","","","","","","","","","","","1","","","1","","","","2024-02-12 00:00:00","2024-02-12 19:46:00");
INSERT INTO compliys VALUES("8","In molestias vero sa","1","7","97","","72","1","1","1","1","0","0","406640","","","","","","","","","","","","1","","","1","","Corrupti id et qui","Distinctio Elit se","1970-01-01 05:00:00","2024-02-13 11:57:50");
INSERT INTO compliys VALUES("9","Quisquam incidunt d","1","7","97","","89","1","1","1","1","0","0","406640","","","","","","","","","","","","2","","","1","","Et maiores et sunt","Quia beatae corrupti","1970-01-01 05:00:00","2024-02-13 11:59:44");
INSERT INTO compliys VALUES("10","Maxime inventore est","1","7","97","","94","1","1","1","1","0","0","406640","","","","","","","","","","","","1","","","1","","Rerum magnam vitae e","Provident quaerat e","1970-01-01 05:00:00","2024-02-13 12:39:07");
INSERT INTO compliys VALUES("11","Maxime inventore est","1","7","97","","94","1","1","1","1","0","0","406640","","","","","","","","","","","","1","","","1","","Rerum magnam vitae e","Provident quaerat e","1970-01-01 05:00:00","2024-02-13 12:45:50");
INSERT INTO compliys VALUES("12","Maxime inventore est","1","7","97","","94","1","1","1","1","0","0","406640","","","","","","","","","","","","1","","","1","","Rerum magnam vitae e","Provident quaerat e","1970-01-01 05:00:00","2024-02-13 12:46:01");



CREATE TABLE `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO coupons VALUES("1","sonar bangla","percentage","20","0","100","4","2020-11-19","1","1","2018-10-25 18:38:50","2020-11-17 19:52:39");
INSERT INTO coupons VALUES("2","i love bangladesh","fixed","200","1000","50","1","2018-12-31","1","1","2018-10-26 22:59:26","2019-03-02 00:46:48");



CREATE TABLE `couriers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `address` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO couriers VALUES("1","Rede x","6896868","Purana paltan","1","2023-07-23 07:04:19","2023-07-23 07:09:09");



CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `exchange_rate` double NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currencies VALUES("1","US Dollar","USD","1","1","2020-10-31 20:22:58","2023-04-02 05:51:28");
INSERT INTO currencies VALUES("2","Euro","Euro","0.95","0","2020-10-31 21:29:12","2023-08-14 04:42:26");
INSERT INTO currencies VALUES("3","PKR","PKR","320","1","2023-09-27 22:03:49","2023-09-27 22:03:49");



CREATE TABLE `custom_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `belongs_to` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `default_value` text DEFAULT NULL,
  `option_value` text DEFAULT NULL,
  `grid_value` int(11) NOT NULL,
  `is_table` tinyint(1) NOT NULL,
  `is_invoice` tinyint(1) NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_disable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `customer_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `percentage` varchar(191) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customer_groups VALUES("1","GENERAL","0","1","2018-05-12 04:09:36","2024-05-05 20:25:31");
INSERT INTO customer_groups VALUES("2","DISTRIBUTOR","-10","1","2018-05-12 04:12:14","2024-05-05 20:26:06");
INSERT INTO customer_groups VALUES("3","RESELLER","5","1","2018-05-12 04:12:26","2024-05-05 20:26:31");
INSERT INTO customer_groups VALUES("4","test","12","0","2018-05-29 21:17:16","2018-05-29 21:17:57");
INSERT INTO customer_groups VALUES("5","test","0","0","2018-08-03 05:10:27","2018-08-03 05:10:34");



CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `tax_no` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO customers VALUES("1","1","22","dhiman","lioncoders","dhiman@gmail.com","+8801111111101","","kajir deuri","chittagong","","","bd","11","190","20","0","2018-05-12 06:00:48","2023-10-12 13:00:32");
INSERT INTO customers VALUES("2","2","","moinul","lioncoders","","+8801200000001","","jamalkhan","chittagong","","","bd","","100","0","0","2018-05-12 06:04:51","2024-02-12 17:36:31");
INSERT INTO customers VALUES("3","3","","tariq","big tree","","3424","","khulshi","chittagong","","","bd","","","","0","2018-05-12 06:07:52","2023-10-12 13:00:32");
INSERT INTO customers VALUES("4","1","","test","","","4234","","frwerw","qwerwqr","","","","","","","0","2018-05-29 21:35:28","2018-05-29 21:37:38");
INSERT INTO customers VALUES("8","1","","anwar","smart it","anwar@smartit.com","32321","","nasirabad","chittagong","","","bd","","","","0","2018-08-31 23:26:13","2018-08-31 23:29:55");
INSERT INTO customers VALUES("11","1","","walk-in-customer","","ashfaqdev.php@gmail.com","01923000001","11111","mohammadpur","dhaka","","","","331","","0","0","2018-09-01 21:30:54","2023-10-12 13:00:32");
INSERT INTO customers VALUES("15","1","","s","","","2","","s","3e","","","","","","","0","2018-11-04 23:00:39","2018-11-07 22:37:08");
INSERT INTO customers VALUES("16","1","","asas","","","2121","","dasd","asdd","","","","","","","0","2018-11-30 19:07:53","2018-12-03 16:55:46");
INSERT INTO customers VALUES("17","1","","sadman","","","312312","","khulshi","ctg","","","","","","","0","2020-06-22 05:45:35","2020-06-22 05:45:51");
INSERT INTO customers VALUES("19","1","19","Ashfaq","Digital image","shakalaka@gmail.com","1212","999","Andorkillah","Chittagong","Chittagong","1234","Bangladesh","10178","","","0","2020-11-08 19:07:16","2023-10-12 13:00:32");
INSERT INTO customers VALUES("21","1","21","Modon Miya","modon company","modon@gmail.com","2222","","kuril road","Dhaka","","","","","","","0","2020-11-13 02:12:11","2023-10-12 13:00:33");
INSERT INTO customers VALUES("25","1","28","Imran miya","","imran@gmail.com","01923000001","","kljkj","hhjhh","","","","","","","0","2021-02-04 01:26:47","2021-02-04 01:26:47");
INSERT INTO customers VALUES("35","1","","Debu","","","32423","","dsfs","fsdfs","","","","","","","0","2023-03-13 06:11:21","2023-10-12 13:00:33");
INSERT INTO customers VALUES("44","1","","muri","","","6786786","","rtrt","fdfd","","","","","","","0","2023-07-04 01:42:59","2023-07-04 01:44:19");
INSERT INTO customers VALUES("47","1","","mmm","","","87897987","","london","uk","","","","","","","0","2023-07-23 02:36:22","2023-10-12 13:00:33");
INSERT INTO customers VALUES("48","1","","ddd","","","242342","","dasdasd","sadasds","","","","","","","0","2023-08-26 03:08:16","2023-10-12 13:00:33");
INSERT INTO customers VALUES("49","1","","RAPID PHARMA","RAPID PHARMA","","0980809809","","GULSHAN E IQBAL","KARACHI","SINDH","0000000","PAKISTAN","158855","","","1","2023-10-11 09:23:18","2024-06-04 17:06:45");
INSERT INTO customers VALUES("50","1","","dr adnan","dr adnan","","686876876876","","nagan","karachi","","","","","","","1","2023-10-11 09:48:08","2023-10-11 09:48:08");
INSERT INTO customers VALUES("51","1","","","","","","","Karachi,Pakistan","","","","","","","","0","2023-10-12 13:37:06","2023-10-12 13:40:47");
INSERT INTO customers VALUES("52","1","","","","","","","Karachi,Pakistan","","","","","","","","0","2023-10-12 13:37:52","2023-10-12 13:40:53");
INSERT INTO customers VALUES("53","1","","KAshif Abbas","","","00000000","","Karachi, Pakistan","karachi","","","","","","","0","2023-10-12 13:49:50","2023-10-12 14:46:00");
INSERT INTO customers VALUES("54","1","","asd","","","00000000","","asdasd","karachi","","","","","","","0","2023-10-12 14:43:59","2023-10-12 14:45:40");
INSERT INTO customers VALUES("55","1","","asd","","","00000000","","asdasd","karachi","","","","","","","0","2023-10-12 14:44:16","2023-10-12 14:45:40");
INSERT INTO customers VALUES("56","1","","DR SHAZIA RAB NAWAZ","","G007@@@kj","....","","....","....","","","","320","","","1","2023-10-27 10:50:41","2024-05-14 19:06:11");
INSERT INTO customers VALUES("57","1","","ALPHA MEDICAL CENTER","","G007@@@kj","0000","","ABCD","....","","","","8","","","1","2023-10-28 12:55:31","2023-10-28 13:34:41");
INSERT INTO customers VALUES("58","1","","BABA MEDICAL STORE","","G007@@@kj","....","","....","KARACHI","","","","920","","","1","2023-10-28 13:36:17","2024-02-10 15:47:28");
INSERT INTO customers VALUES("59","1","","BABA MEDICAL STORE","","G007@@@kj","....","","....","KARACHI","","","","171","","","1","2023-10-28 13:39:29","2024-01-31 13:20:42");
INSERT INTO customers VALUES("60","1","","DOCTORS COMPLEMENTRY","","G007@@@kj","...","","...","KARACHI","","","","","","","1","2023-10-28 13:46:43","2023-10-28 13:46:43");
INSERT INTO customers VALUES("61","1","","DOCTORS COMPLEMENTRY","","G007@@@kj","...","","...","KARACHI","","","","","","","1","2023-10-28 13:50:20","2023-10-28 13:50:20");
INSERT INTO customers VALUES("62","1","","DR KHALID","","...","...","","...","KARACHI","","","","","","","1","2023-10-30 17:19:14","2023-10-30 17:19:14");
INSERT INTO customers VALUES("63","1","","DR KHALID","","...","...","","...","KARACHI","","","","1355","","","1","2023-10-30 17:29:54","2023-10-30 18:13:48");
INSERT INTO customers VALUES("64","1","","DR MEER","","..","`...","","..","KARACHI","","","","","","","1","2023-10-30 17:45:51","2023-10-30 17:45:51");
INSERT INTO customers VALUES("65","1","","DR OWAIS MALIK","","..","...","","...","KARACHI","","","","","","","1","2023-10-30 17:50:30","2023-10-30 17:50:30");
INSERT INTO customers VALUES("66","1","","DR NIGHAT","","..","...","","...","KARACHI","","","","","","","1","2023-10-30 17:52:58","2023-10-30 17:52:58");
INSERT INTO customers VALUES("67","1","","DR NIGHAT","","..","...","","..","KARACHI","","","","","","","1","2023-10-30 17:53:27","2023-10-30 17:53:27");
INSERT INTO customers VALUES("68","1","","DR SEHER","","..","...","","...","KARACHI","","","","","","","1","2023-10-30 17:56:08","2023-10-30 17:56:08");
INSERT INTO customers VALUES("69","1","","MISS HINA","","..","...","","..","KARACHI","","","","","","","1","2023-10-30 18:20:27","2023-10-30 18:20:27");
INSERT INTO customers VALUES("70","1","","ISMAIL PHARMACY  (MASKAN CHOWRANGYI)","","..","...","","...","KARACHI","","","","28","","","1","2023-10-30 18:24:03","2023-10-30 18:38:57");
INSERT INTO customers VALUES("71","1","","health life (metroville)","","..","...","","...","...","","","","18","","","1","2023-10-30 18:44:51","2023-10-30 19:07:08");
INSERT INTO customers VALUES("72","1","","DR M A QURESHI","","...","...","","..","KARACHI","","","","1355","","","1","2023-10-30 19:58:44","2024-02-13 11:57:50");
INSERT INTO customers VALUES("73","1","","RAPID PHARMA","","..","..","","..","KARACHI","","","","7379363","","","1","2023-11-01 17:00:59","2023-11-01 17:14:40");
INSERT INTO customers VALUES("74","1","","YASIR PHARMY","","...","...","","...","KARACHI","","","","","","","1","2023-11-06 19:09:18","2023-11-06 19:09:18");
INSERT INTO customers VALUES("75","1","","ZULFIQAR PHARMY","","...","...","","...","KARACHI","","","","","","","1","2023-11-06 19:10:54","2023-11-06 19:10:54");
INSERT INTO customers VALUES("76","1","","DR AFSHEEN","","...","...","","...","KARACHI","","","","","","","1","2023-11-06 19:13:14","2023-11-06 19:13:14");
INSERT INTO customers VALUES("77","1","","MR ZULFIQAR","","...","...","","...","KARACHI","","","","","","","1","2023-11-21 13:33:00","2023-11-21 13:33:00");
INSERT INTO customers VALUES("78","1","","COMPLEMENTRY","","..","...","","...","KARACHI","","","","","","","1","2023-11-21 13:41:01","2023-11-21 13:41:01");
INSERT INTO customers VALUES("79","1","","COMPLEMENTRY","","..","...","","...","KARACHI","","","","","","","1","2023-11-21 13:58:13","2023-11-21 13:58:13");
INSERT INTO customers VALUES("80","1","","DR NAHEED TAHIR","","","021-36981250","","R-34 SECTOR 16-A BUFFER ZONE","Karachi","","","","30","","","1","2023-12-13 15:56:28","2024-02-06 20:20:38");
INSERT INTO customers VALUES("81","1","","ALI NASIR BOSTAN E RAZA MODEL COLONY KARACHI","","","000000000","","address","Karachi","","","","","","","1","2023-12-13 17:09:28","2023-12-13 17:09:28");
INSERT INTO customers VALUES("82","1","","MUHMMADI PHARMACY WATER PUMP","","...","....","","...","Karachi","","","","35","","","1","2023-12-18 17:09:18","2023-12-18 17:36:56");
INSERT INTO customers VALUES("83","1","","DR SIBGHAT YASMEEN","","","","","SAFOORA","Karachi","","","","3","","","1","2024-01-31 13:23:57","2024-01-31 13:26:50");
INSERT INTO customers VALUES("84","1","","S-J GHANNI","","","","","ANKEL SARYA","Karachi","","","","36","","","1","2024-01-31 14:23:31","2024-02-10 14:30:56");
INSERT INTO customers VALUES("85","1","","RAZIA MEDICAL STORE","","","","","BHENS COLONY","Karachi","","","","28","","","1","2024-01-31 14:28:24","2024-02-06 13:44:29");
INSERT INTO customers VALUES("86","1","","ALI MEDICAL STORE","","","","","AZAM BASTI","Karachi","","","","22","","","1","2024-01-31 15:52:54","2024-01-31 15:54:32");
INSERT INTO customers VALUES("87","1","","NOOR MEDICAL","","","","","SHAFIQ MOOR GHODRA","Karachi","","","","213","","","1","2024-02-06 14:32:42","2024-02-10 14:21:36");
INSERT INTO customers VALUES("88","1","","MUHMMADI HOSPITAL","","","","","WATER PUMP","Karachi","","","","12","","","1","2024-02-06 15:07:59","2024-02-06 15:08:44");
INSERT INTO customers VALUES("89","1","","F.I.N MEDICAL STORE","","email@email.com","...","","....","Karachi","","","","1507","","","1","2024-02-10 10:34:15","2024-03-14 16:05:42");
INSERT INTO customers VALUES("90","1","","THE MEDICAL PHARMACY","","","..","","...","Karachi","","","","51","","","1","2024-02-10 14:55:44","2024-03-04 21:45:44");
INSERT INTO customers VALUES("91","1","","NEW ABASSI MEDICAL STORE","","","..","","...","Karachi","","","","","","","1","2024-02-10 14:58:37","2024-02-10 14:58:37");
INSERT INTO customers VALUES("92","1","","SUNNY MEDICOS","","","..","","..","Karachi","","","","15","","","1","2024-02-10 15:12:06","2024-02-10 15:13:43");
INSERT INTO customers VALUES("93","1","","MUHAMMADI HOSPITAL","","...","..","","...","Karachi","","","","50","","","1","2024-02-10 15:27:08","2024-02-10 15:29:11");
INSERT INTO customers VALUES("94","1","","GHOUS PAK MEDICAL STORE","","email@email.com","...","","address","Karachi","","","","4090","","","1","2024-02-12 17:17:59","2024-02-13 12:46:01");
INSERT INTO customers VALUES("95","1","","PAKISTAN MEDICAL CENTER","","email@email.com","...","","..","Karachi","","","","8","","","1","2024-02-12 17:27:50","2024-03-04 19:56:29");
INSERT INTO customers VALUES("96","1","","DR KIRAN","","...","...","","..","Karachi","","","","","","","1","2024-02-12 19:45:02","2024-02-12 19:45:02");
INSERT INTO customers VALUES("97","1","","MEDCAL PHARMACY","","..","...","","NEW KARACHI (11-C)","Karachi","","","","20","","","1","2024-03-04 19:43:39","2024-03-04 19:53:11");
INSERT INTO customers VALUES("98","1","","MEDI CALL (GEN MEDICAL HOSP)","","..","...","","(NEW KARACHI 11 -C)","Karachi","","","","20","","","1","2024-03-04 22:01:19","2024-03-04 22:04:36");
INSERT INTO customers VALUES("99","1","","MEDI CALL  PHARMACY (NEW KARACHI) GEN MEDICAL HOSP","","..","...","","NEW KARACHI 11-C","Karachi","","","","20","","","1","2024-03-04 22:06:49","2024-03-04 22:08:35");
INSERT INTO customers VALUES("100","1","","DR UZMA (JPMC)","","email@email.com","..","","...","Karachi","","","","10","","","1","2024-04-15 18:47:45","2024-04-15 18:50:46");



CREATE TABLE `deliveries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `courier_id` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `delivered_by` varchar(191) DEFAULT NULL,
  `recieved_by` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO deliveries VALUES("1","dr-20180808-044431","1","1","","kajir deuri chittagong bd","abul","dhiman","","Instrument 1","3","2018-08-08 06:44:55","2020-09-26 08:25:39");
INSERT INTO deliveries VALUES("2","dr-20181106-105936","88","1","","mohammadpur dhaka","","","","","2","2018-11-05 23:59:43","2018-11-06 00:10:38");
INSERT INTO deliveries VALUES("3","dr-20181106-111321","79","1","","mohammadpur dhaka","Harun","Amjad","","","3","2018-11-06 00:13:25","2020-09-26 09:22:11");
INSERT INTO deliveries VALUES("5","dr-20211218-113624","354","1","1","mohammadpur dhaka","","","","","2","2021-12-18 00:36:30","2023-07-23 08:11:27");



CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO departments VALUES("1","Sale","1","2018-12-27 00:16:47","2018-12-27 05:40:23");
INSERT INTO departments VALUES("2","xyz","1","2018-12-27 05:28:47","2018-12-27 05:28:47");



CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO deposits VALUES("1","90","1","1","first deposit","2018-08-25 18:48:23","2018-08-25 21:18:55");
INSERT INTO deposits VALUES("3","100","2","1","","2018-08-25 20:53:16","2018-08-26 17:42:39");
INSERT INTO deposits VALUES("4","50","1","1","","2018-09-04 18:56:19","2018-09-04 18:56:19");
INSERT INTO deposits VALUES("5","50","1","1","","2018-09-09 20:08:40","2018-09-09 20:08:40");
INSERT INTO deposits VALUES("6","100","41","1","","2023-04-29 02:39:32","2023-04-29 02:39:32");



CREATE TABLE `discount_plan_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_plan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plan_customers VALUES("1","1","1","2022-02-03 07:58:12","2022-02-03 07:58:12");
INSERT INTO discount_plan_customers VALUES("2","1","19","2022-02-03 07:58:12","2022-02-03 07:58:12");
INSERT INTO discount_plan_customers VALUES("3","1","3","2022-12-06 07:07:17","2022-12-06 07:07:17");



CREATE TABLE `discount_plan_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plan_discounts VALUES("1","1","1","2022-02-03 08:02:17","2022-02-03 08:02:17");



CREATE TABLE `discount_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discount_plans VALUES("1","VIP plan","1","2022-02-03 07:58:12","2022-02-03 07:58:12");



CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `applicable_for` varchar(191) NOT NULL,
  `product_list` longtext DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(191) NOT NULL,
  `value` double NOT NULL,
  `minimum_qty` double NOT NULL,
  `maximum_qty` double NOT NULL,
  `days` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO discounts VALUES("1","10% discount","Specific","5,3","2022-02-03","2023-12-31","percentage","10","1","3","Mon,Tue,Wed,Thu,Fri,Sat,Sun","1","2022-02-03 08:02:17","2023-07-16 10:47:48");



CREATE TABLE `dso_alerts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_info` longtext NOT NULL,
  `number_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO dso_alerts VALUES("1","[{"name":"Baby doll","code":"31261512"}]","1","2022-05-28 01:27:46","2022-05-28 01:27:46");



CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `staff_id` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO employees VALUES("1","john","john@gmail.com","10001","2","12","","johngmailcom.jpg","GEC","chittagong","Bangladesh","1","2018-12-29 19:48:37","2019-03-02 01:50:23");
INSERT INTO employees VALUES("3","tests","test@test.com","111","1","","","","","","","1","2018-12-30 17:20:51","2019-01-02 19:03:54");



CREATE TABLE `expense_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expense_categories VALUES("1","16718342","washing","0","2018-08-15 20:32:48","2023-11-07 11:55:03");
INSERT INTO expense_categories VALUES("2","60128975","electric bill","1","2018-08-15 20:39:18","2018-08-15 20:39:18");
INSERT INTO expense_categories VALUES("3","83954970","test","0","2018-08-15 20:50:28","2018-08-15 20:51:40");
INSERT INTO expense_categories VALUES("4","1234","snacks","0","2018-08-31 22:40:04","2023-11-07 11:55:12");
INSERT INTO expense_categories VALUES("5","12345","salary","1","2023-10-27 10:59:08","2023-10-27 10:59:08");
INSERT INTO expense_categories VALUES("6","12","weekly activity","1","2023-10-28 16:29:17","2023-10-28 16:29:17");
INSERT INTO expense_categories VALUES("7","00","DAILY OFFICE EXPENSE","1","2023-10-31 12:39:20","2023-10-31 12:39:20");
INSERT INTO expense_categories VALUES("8","000","YEARLY TAX FILLING SERVICES","1","2023-10-31 17:11:29","2023-10-31 17:11:29");
INSERT INTO expense_categories VALUES("9","0.0","OFFICE RENT","1","2023-11-07 11:56:32","2023-11-07 11:56:32");
INSERT INTO expense_categories VALUES("10",".....","BOSS ROOM FURNITURE","1","2023-11-07 14:24:36","2023-11-07 14:24:36");
INSERT INTO expense_categories VALUES("11","..01","FOR OFFICE USES","1","2023-11-07 14:28:35","2023-11-07 14:28:35");
INSERT INTO expense_categories VALUES("12","141","GENNIC PHARMA","1","2023-11-07 14:55:06","2023-11-07 14:55:06");
INSERT INTO expense_categories VALUES("13","0.02","GENNEC HEALTH SERVICES","1","2023-11-07 17:15:40","2023-11-07 17:15:40");
INSERT INTO expense_categories VALUES("14","0.000","TRADE MARK","1","2023-11-07 17:29:46","2023-11-07 17:29:46");
INSERT INTO expense_categories VALUES("15","74","ESTATE AGENT","1","2023-11-07 17:33:45","2023-11-07 17:33:45");
INSERT INTO expense_categories VALUES("16","..","PTCL BILL","1","2023-11-21 12:34:19","2023-11-21 12:34:19");
INSERT INTO expense_categories VALUES("17","3","GAS BILL","1","2023-11-21 12:36:01","2023-11-21 12:36:01");
INSERT INTO expense_categories VALUES("18","78","MONTHLY ACTIVITY EXPENSE","1","2023-11-21 12:58:11","2023-11-21 12:58:11");
INSERT INTO expense_categories VALUES("19",".2.","INSTALMENT","1","2023-11-22 10:20:08","2023-11-22 10:20:08");
INSERT INTO expense_categories VALUES("20","123654","CREDIT VOUCHER","1","2023-11-22 10:37:28","2023-11-22 10:37:28");
INSERT INTO expense_categories VALUES("21","725","COMBINE PRINTING","1","2023-11-22 10:41:53","2023-11-22 10:41:53");
INSERT INTO expense_categories VALUES("22","845","MONTHLY ACTIVITY","1","2023-11-22 11:13:41","2023-11-22 11:13:41");



CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=866 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO expenses VALUES("58","er-20231027-111527","5","2","1","1","6","130000","(SALARY OF OCTOBER) (MR IMRAN UDDIN) (NATIONAL SALES MANAGER) Salary is (ONE LAC THIRTY THOUSAND)","2023-10-30 00:00:00","2023-11-30 11:26:16");
INSERT INTO expenses VALUES("59","er-20231027-111757","5","2","1","1","6","60000","SALARY OF OCTOBER (MISS FATIMA)  (SENIOR SALES OFFICER) Salary is (sixty thousand) paid without any deduction","2023-10-30 00:00:00","2023-11-30 11:26:48");
INSERT INTO expenses VALUES("60","er-20231027-112100","5","2","1","1","6","48000","(SALARY OF OCTOBER) (MISS HINA) (SENIOR SALES OFFICER) Salary is (forty eight thousand) paid without any deduction","2023-10-30 00:00:00","2023-11-30 11:27:17");
INSERT INTO expenses VALUES("61","er-20231027-112657","5","2","1","1","6","40000","(SALARY OF OCTOBER) MISS ANEELA (SALES OFFICER) Salary is (forty two thousand) two thousand is hold as a security deposit remaining amount (forty thousand) paid","2023-10-30 00:00:00","2023-11-30 11:27:46");
INSERT INTO expenses VALUES("62","er-20231027-112727","5","2","1","1","6","40500","(SALARY OF OCTOBER) MISS KANAWAL (SALES OFFICER) Salary is (forty two thousand five hundred) two thousand is hold as a security deposit remaining amount (forty thousand five hundred) paid","2023-10-30 00:00:00","2023-11-30 11:28:09");
INSERT INTO expenses VALUES("63","er-20231027-113125","5","2","1","1","6","37500","(SALARY OF OCTOBER) MR HUSSAIN (SALES OFFICER) Salary is (thirty seven thousand five hundred)paid without any deduction","2023-10-30 00:00:00","2023-11-30 11:28:38");
INSERT INTO expenses VALUES("64","er-20231027-113239","5","2","1","1","6","15000","(SALARY OF OCTOBER) SHAH MUHMMAD tea boy salary is (fifteen thousand) paid without any deduction","2023-10-30 00:00:00","2023-11-30 11:29:01");
INSERT INTO expenses VALUES("65","er-20231027-114014","5","2","1","1","6","25000","(SALARY OF OCTOBER) OMAR TEA BOY Salary is (twenty five thousand) paid without any deduction","2023-10-30 00:00:00","2023-11-30 11:29:22");
INSERT INTO expenses VALUES("66","er-20231031-100644","5","2","1","1","6","25000","(SALARY OF OCTOBER) MR (M ALI NASIR) D.E.O SALARY IS (TWENTY FIVE THOUSAND) SIX THOUSAND IS DEDUCTION FOR ADVANCE (NINTEEN THOUSAND) PAID","2023-10-30 00:00:00","2023-11-07 12:43:38");
INSERT INTO expenses VALUES("67","er-20231031-124626","7","2","1","1","6","2900","Overall expense is 2900 RPS on 30/10/23","2023-10-30 00:00:00","2023-10-31 12:46:26");
INSERT INTO expenses VALUES("68","er-20231031-124801","7","2","1","1","6","150","150 RPS EXPENSE ON 28/10/23","2023-10-28 00:00:00","2023-10-31 12:48:01");
INSERT INTO expenses VALUES("69","er-20231031-124839","7","2","1","1","6","150","150 RPS EXPENSE ON 27/10/23","2023-10-23 00:00:00","2024-06-06 14:00:45");
INSERT INTO expenses VALUES("70","er-20231031-125218","7","2","1","1","6","440","440 RPS EXPENSE ON 26/10/23","2023-11-26 00:00:00","2023-10-31 12:52:18");
INSERT INTO expenses VALUES("71","er-20231031-125319","7","2","1","1","6","470","470 RPS EXPENSE ON 26/10/23","2023-10-26 00:00:00","2023-10-31 14:55:55");
INSERT INTO expenses VALUES("72","er-20231031-125446","7","2","1","1","6","370","370 RPS EXPENSE ON 25/10/23","2023-10-23 00:00:00","2024-06-06 14:01:19");
INSERT INTO expenses VALUES("73","er-20231031-125641","7","2","1","1","6","220","220 RPS EXPENSE ON 24/10/23","2024-10-23 00:00:00","2023-10-31 12:56:41");
INSERT INTO expenses VALUES("74","er-20231031-010058","7","2","1","1","6","220","220 EXPENSE ON 24/10/23","2024-10-23 00:00:00","2023-10-31 13:00:58");
INSERT INTO expenses VALUES("75","er-20231031-015809","7","2","1","1","6","200","200 PRS EXPENSE ON 27/10/23","2023-10-27 00:00:00","2023-10-31 15:03:20");
INSERT INTO expenses VALUES("76","er-20231031-020031","7","2","1","1","6","370","370 RPS EXPENSE ON 25/10/23","2023-10-23 00:00:00","2024-06-06 14:01:36");
INSERT INTO expenses VALUES("77","er-20231031-020600","7","2","1","1","6","370","370 RPS EXPENSE ON 25-10-23","2023-10-23 00:00:00","2024-06-06 14:01:52");
INSERT INTO expenses VALUES("79","er-20231031-022909","7","2","1","1","6","370","370 RPS EXPENSE","2023-10-23 00:00:00","2024-06-06 14:02:09");
INSERT INTO expenses VALUES("80","er-20231031-023511","7","2","1","1","7","370","","2023-10-25 00:00:00","2023-10-31 14:42:26");
INSERT INTO expenses VALUES("81","er-20231031-023717","7","2","1","1","6","220","220 RPS EXPENSE","2024-10-23 00:00:00","2023-10-31 14:37:17");
INSERT INTO expenses VALUES("82","er-20231031-024114","7","1","1","1","7","220","220 RPS EXPENSE","2024-10-23 00:00:00","2023-10-31 14:41:14");
INSERT INTO expenses VALUES("83","er-20231031-024525","7","2","1","1","6","220","220 RPS EXPENSE","2023-10-24 00:00:00","2023-10-31 14:45:25");
INSERT INTO expenses VALUES("84","er-20231031-024702","7","2","1","1","6","2230","2230 RPS EXPENSE","2023-10-23 00:00:00","2023-10-31 14:47:02");
INSERT INTO expenses VALUES("85","er-20231031-024900","7","2","1","1","6","570","570 RPS EXPENSE","2023-10-20 00:00:00","2023-10-31 14:52:25");
INSERT INTO expenses VALUES("86","er-20231031-025110","7","2","1","1","6","320","320 RPS EXPENSE","2023-10-19 00:00:00","2023-10-31 14:51:10");
INSERT INTO expenses VALUES("87","er-20231031-025446","7","2","1","1","6","2189","2189 RPS EXPENSE ON TOOSO CLUB SANDWICH","2023-10-21 00:00:00","2023-10-31 14:54:46");
INSERT INTO expenses VALUES("88","er-20231031-025646","7","2","1","1","6","350","350 RPS EXPENSE ON MILK","2023-10-21 00:00:00","2023-10-31 14:56:46");
INSERT INTO expenses VALUES("89","er-20231031-025800","7","2","1","1","6","50","50 RPS EXPENSE","2023-10-18 00:00:00","2023-10-31 14:58:00");
INSERT INTO expenses VALUES("90","er-20231031-025846","7","2","1","1","6","1820","1820 RPS EXPENSE","2023-10-17 00:00:00","2023-10-31 14:58:46");
INSERT INTO expenses VALUES("91","er-20231031-030021","7","2","1","1","6","1700","1700 RPS EXPENSE","2023-10-13 00:00:00","2023-10-31 15:00:21");
INSERT INTO expenses VALUES("92","er-20231031-030108","7","2","1","1","6","160","160 RPS EXPENSE","2023-10-12 00:00:00","2023-10-31 15:01:08");
INSERT INTO expenses VALUES("93","er-20231031-030224","7","2","1","1","6","850","850 RPS EXPENSE","2023-10-11 00:00:00","2023-10-31 15:02:24");
INSERT INTO expenses VALUES("94","er-20231031-030357","7","2","1","1","6","210","210 RPS EXPENSE","2023-10-10 00:00:00","2023-10-31 15:03:57");
INSERT INTO expenses VALUES("95","er-20231031-030452","7","2","1","1","6","360","360 RPS EXPENSE","2023-10-08 00:00:00","2023-10-31 15:04:52");
INSERT INTO expenses VALUES("96","er-20231031-030529","7","2","1","1","6","1660","1660 RPS EXPENSE","2023-10-07 00:00:00","2023-10-31 15:05:29");
INSERT INTO expenses VALUES("97","er-20231031-030601","7","2","1","1","6","410","410 RPS EXPENSE","2023-10-06 00:00:00","2023-10-31 15:06:01");
INSERT INTO expenses VALUES("99","er-20231031-030704","7","2","1","1","6","760","760 RPS EXPENSE","2023-10-04 00:00:00","2023-10-31 15:07:04");
INSERT INTO expenses VALUES("100","er-20231031-031031","7","2","1","1","6","3000","3000 RPS U FONE POST PAID BILL  FOR ZULFIQAR BALOCH","2023-10-19 00:00:00","2023-10-31 15:10:31");
INSERT INTO expenses VALUES("101","er-20231031-031137","7","2","1","1","6","3660","3660  RPS BILL FOR PTCL BILL","2023-10-19 00:00:00","2023-10-31 15:11:37");
INSERT INTO expenses VALUES("102","er-20231031-051256","8","2","1","1","6","10000","TEN THOUSAND PAID TO (HAROON BHAI) FOR YEARLY TAX FILING SERVICES","2023-10-31 00:00:00","2023-10-31 17:12:56");
INSERT INTO expenses VALUES("103","er-20231031-051607","6","2","1","1","6","90000","(NINTY THOUSAND EXPENSE WEEKLY AMOUNT) BY MR IMRAN UDDIN  TO 17/10/2023 FROM 23/10/2023","2023-10-02 00:00:00","2023-11-30 13:03:24");
INSERT INTO expenses VALUES("104","er-20231106-093910","7","2","1","1","6","370","370 RPS EXPENSE ON 31/10/2023","2023-10-31 00:00:00","2023-11-06 09:39:10");
INSERT INTO expenses VALUES("105","er-20231106-094013","7","2","1","1","6","100","100 RPS EXPENSE ON 1/11/2023","2023-11-01 00:00:00","2023-11-06 09:40:13");
INSERT INTO expenses VALUES("106","er-20231106-040345","7","2","1","1","6","60","60 RPS EXPENSE ON 02/11/2023","2023-11-02 00:00:00","2023-11-06 16:03:45");
INSERT INTO expenses VALUES("107","er-20231107-114546","6","2","1","1","6","1000","OFFICE LUNCH","2023-09-12 00:00:00","2023-11-07 11:45:46");
INSERT INTO expenses VALUES("108","er-20231107-114723","6","2","1","1","6","1500","OFFICE LUNCH","2023-09-19 00:00:00","2023-11-07 11:47:23");
INSERT INTO expenses VALUES("109","er-20231107-115423","6","2","1","1","6","113650","ACTIVITY BY IMRAN UDDIN (PAID)","2023-09-11 00:00:00","2023-11-07 11:54:23");
INSERT INTO expenses VALUES("111","er-20231107-120133","7","2","1","1","6","760","SEVEN HUNDRED SIXTY RPS EXPENSE","2023-10-04 00:00:00","2023-11-07 12:01:33");
INSERT INTO expenses VALUES("112","er-20231107-120251","7","2","1","1","6","160","ONE HUNDRES SIXTY RPS EXPENSE","2023-10-05 00:00:00","2023-11-07 12:02:51");
INSERT INTO expenses VALUES("113","er-20231107-120606","7","2","1","1","6","770","SEVEN HUNDRED SEVENTY RPS EXPENSE","2023-09-30 00:00:00","2023-11-07 12:06:06");
INSERT INTO expenses VALUES("114","er-20231107-120742","7","2","1","1","6","300","THREE HUNDRED RPS EXPENSE","2023-10-01 00:00:00","2023-11-07 12:07:42");
INSERT INTO expenses VALUES("115","er-20231107-120833","7","2","1","1","6","2630","TWO THOUSAND SIX HUNDRED THIRTY RPS EXPENSE","2023-10-02 00:00:00","2023-11-07 12:08:33");
INSERT INTO expenses VALUES("116","er-20231107-121215","7","2","1","1","6","420","FOUR HUNDRED TWENTY RPS EXPENSE","2023-10-03 00:00:00","2023-11-07 12:12:15");
INSERT INTO expenses VALUES("117","er-20231107-121648","5","2","1","1","6","130000","(SALARY OF SEPTEMBER) MR IMRAN UDDIN SALARY IS ONE LAC THIRTY THOUSAND (PAID)","2023-10-02 00:00:00","2023-11-07 12:16:48");
INSERT INTO expenses VALUES("118","er-20231107-122048","5","2","1","1","6","60000","(SALARY OF SEPTEMBER) MISS FATIMA SALARY IS SIXTY THOUSAND RPS","2023-10-02 00:00:00","2023-11-07 12:20:48");
INSERT INTO expenses VALUES("119","er-20231107-122655","7","2","1","1","6","1459","ONE THOUSAND FOUR HUNDRED FIFTY NINE  RPS ONLY EXPENSE","2023-10-11 00:00:00","2023-11-30 11:56:23");
INSERT INTO expenses VALUES("120","er-20231107-122733","7","2","1","1","6","150","ONE HUNDRED FIFTY RPS ONLY EXPENSE","2023-10-10 00:00:00","2023-11-07 12:27:33");
INSERT INTO expenses VALUES("121","er-20231107-123127","5","2","1","1","6","37500","(SALARY OF SEPTEMBER) MR HUSSAIN SALARY IS THIRTY SEVEN THOUSAND FIVE HUNDRED (PAID)","2023-10-02 00:00:00","2023-11-07 12:31:27");
INSERT INTO expenses VALUES("122","er-20231107-123308","6","2","1","1","6","1600","SIXTEEN HUNDRED RPS EXPENSE  ON LUNCH BY (MR IMRAN)","2023-10-02 00:00:00","2023-11-07 12:33:08");
INSERT INTO expenses VALUES("123","er-20231107-123604","5","2","1","1","6","40500","(SALARY OF SEPTEMBER) MISS KANWAL SALARY IS FORTY TWO THOUSAND FIVE HUNDRED  TWO THOUSAND HOLD AS A SECURITY (FORTY THOUSAND FIVE HUNDRED IS PAID)","2023-10-02 00:00:00","2023-11-07 12:36:04");
INSERT INTO expenses VALUES("124","er-20231107-124619","5","2","1","1","6","40000","(SALARY OF SEPTEMBER) MISS ANILA SALRAY IS FORTY TWO THOUSAND..TWO THOUSAND HOLD AS SECURITY DEPOSIT FORTY THOUSAND RPS PAID","2023-10-02 00:00:00","2023-11-07 12:46:19");
INSERT INTO expenses VALUES("125","er-20231107-124751","5","2","1","1","6","46000","(SALARY OF SEPTEMBER) MISS HINA SALARY IS FORTY SIX THOUSAND RPS PAID","2023-10-02 00:00:00","2023-11-07 12:47:51");
INSERT INTO expenses VALUES("126","er-20231107-125022","6","2","1","1","6","37000","(COMBINE PRINTING COMMUNICATION) THIRTY SEVEN THOUSAND","2023-10-03 00:00:00","2023-11-07 12:50:22");
INSERT INTO expenses VALUES("127","er-20231107-125217","6","2","1","1","6","1870","ONE THOUSAND EIGHT HUNDRED SEVENTY RPS EXPENSE","2023-09-11 00:00:00","2023-11-07 12:52:17");
INSERT INTO expenses VALUES("128","er-20231107-125710","5","2","1","1","6","15000","(SALARY OF SEPTEMBER) SHAH MUHMMAD SALARY IS FIFTEEN THOUSAND PAID","2023-10-02 00:00:00","2023-11-07 12:57:10");
INSERT INTO expenses VALUES("129","er-20231107-125809","5","2","1","1","6","25000","(SALARY OF SEPTEMBER) OMER SALARY IS TWENTY FIVE THOUSAND RPS PAID","2023-10-02 00:00:00","2023-11-07 12:58:09");
INSERT INTO expenses VALUES("130","er-20231107-010901","6","2","1","1","6","90000","(MR IMRAN UDDIN) NINTY THOUSAND RPS WEEKLY ACTIVITY","2023-10-02 00:00:00","2023-11-07 13:09:01");
INSERT INTO expenses VALUES("131","er-20231107-015159","5","2","1","1","6","200000","(31/10/2022) (SALARY OF OCTOBER)  MR ZULFIQAR BALOCH SALARY IS TWO LAC RPS","2022-10-31 00:00:00","2023-11-07 13:51:59");
INSERT INTO expenses VALUES("132","er-20231107-015454","5","2","1","1","6","100000","(31/10/2022) (SALARY OF OCTOBER) MR IMRAN UDDIN SALARY IS ONE LAC RPS","2022-10-31 00:00:00","2023-11-07 14:10:18");
INSERT INTO expenses VALUES("133","er-20231107-015746","5","2","1","1","6","55000","(31/10/2022) (SALARY OF OCTOBER) MISS FATIMA SALARY IS FIFTY FIVE THOUSAND RPS","2022-10-31 00:00:00","2023-11-07 13:57:46");
INSERT INTO expenses VALUES("134","er-20231107-015919","5","2","1","1","6","55000","(31/10/2022) (SALARY OF OCTOBER) MISS NAJMA SULTANA SALARY IS FIFTY FIVE THOUSAND RPS","2022-10-31 00:00:00","2023-11-07 13:59:19");
INSERT INTO expenses VALUES("135","er-20231107-020046","5","2","1","1","6","35000","(31/10/2022) (SALARY OF OCTOBER) MR EJAZ SALARY IS THIRTY FIVE THOUSAND RPS","2022-10-31 00:00:00","2023-11-07 14:00:46");
INSERT INTO expenses VALUES("136","er-20231107-020342","5","2","1","1","6","10000","(31/10/2022) (SALARY OF OCTOBER) MR GHYAZ JAFFERI SALARY IS THIRTY THOUSAND RPS BUT RCVD AMOUNT IS (TEN THOUSAND)","2022-10-31 00:00:00","2023-11-07 14:03:42");
INSERT INTO expenses VALUES("137","er-20231107-020632","5","2","1","1","6","35000","(31/10/2022) (SALARY OF OCTOBER) MR WARIS QURESHI SALARY IS THIRTY FIVE THOUSAND","2022-10-31 00:00:00","2023-11-07 14:11:14");
INSERT INTO expenses VALUES("138","er-20231107-020808","5","2","1","1","6","12000","(31/10/2022) (SALARY OF OCTOBER) MR REHMATULAH SALARY IS THIRTY FIVE THOUSAND BUT RCVD AMOUNT IS (TWELEVE THOUSAND RPS)","2022-10-31 00:00:00","2023-11-07 14:09:21");
INSERT INTO expenses VALUES("139","er-20231107-021516","6","2","1","1","6","50000","(MR IMRAN UDDIN) WEEKLY ACTIVITY IS (FIFTY THOUSAND RPS)","2022-10-31 00:00:00","2023-11-07 14:15:16");
INSERT INTO expenses VALUES("140","er-20231107-021656","6","2","1","1","6","100000","(MR IMRAN) WEEKLY ACTIVITY IS ONE LAC RPS (24/10/2022)","2022-10-24 00:00:00","2023-11-07 14:16:56");
INSERT INTO expenses VALUES("141","er-20231107-022637","10","2","1","1","6","107300","PURCHASE BOSS ROOM FURNITURE PRICE IS 107300  WITH CONVENCE","2022-10-22 00:00:00","2023-11-07 14:26:37");
INSERT INTO expenses VALUES("142","er-20231107-023016","11","2","1","1","6","109000","FOR OFFICE USES ITEMS REG...CHAIRS...TABLE...SOFA.. PRICE IS (109000 RPS)","2022-10-22 00:00:00","2023-11-07 14:30:16");
INSERT INTO expenses VALUES("143","er-20231107-023149","11","2","1","1","6","7500","SPLIT UNIT SERVICE CHARGES GAS REFILE PRICE IS (7500 RPS)","2022-10-28 00:00:00","2023-11-07 14:31:49");
INSERT INTO expenses VALUES("144","er-20231107-023458","11","2","1","1","6","5170","FOR OFFICE USES CLEANING MATERIAL PRICE IS (5170)","2022-10-20 00:00:00","2023-11-07 14:34:58");
INSERT INTO expenses VALUES("145","er-20231107-023615","11","2","1","1","6","18000","FOR OFFICE USES SATATIONARY PRICE IS 18000 RPS","2022-10-17 00:00:00","2023-11-07 14:36:15");
INSERT INTO expenses VALUES("146","er-20231107-023742","11","2","1","1","6","6000","CABOURD CONVENCE CHARGES IS (6000 RPS)","2022-10-19 00:00:00","2023-11-07 14:37:42");
INSERT INTO expenses VALUES("147","er-20231107-024539","11","2","1","1","6","41800","PURCHASE OFFICE TABLES CHAIRS  PRICE IS (41800 RPS)","2022-10-19 00:00:00","2023-11-07 14:45:39");
INSERT INTO expenses VALUES("148","er-20231107-024838","11","2","1","1","6","1500","PURCHASE ELECTRONIC ITEM PRICE IS (1500 RPS)","2022-10-31 00:00:00","2023-11-07 14:48:38");
INSERT INTO expenses VALUES("149","er-20231107-024951","11","2","1","1","6","5632","KITCHEN ITEM PURCHASE PRICE IS (5632 RPS)","2022-10-02 00:00:00","2023-11-07 14:49:51");
INSERT INTO expenses VALUES("150","er-20231107-025145","11","2","1","1","6","3000","WATER TANKER EXPENSE (3000 RPS)","2022-10-28 00:00:00","2023-11-07 14:51:45");
INSERT INTO expenses VALUES("151","er-20231107-025403","9","2","1","1","6","105000","OFFICE DEPOSIT ADVCANCE AMOUNT IS (70000 RPS) AND RUNNING RENT IS (35000 RPS)","2022-10-14 00:00:00","2023-11-07 14:54:03");
INSERT INTO expenses VALUES("152","er-20231107-025604","12","2","1","1","6","200000","TWO LAC RPS TO (GENNIC PHARMA)","2022-10-14 00:00:00","2023-11-07 14:56:04");
INSERT INTO expenses VALUES("153","er-20231107-045229","5","2","1","1","6","200000","(SALARY OF NOVEMBER 2022) MR ZULFIQAR BALOCH SALARY IS TWO LAC RPS","2022-12-05 00:00:00","2023-11-07 16:52:29");
INSERT INTO expenses VALUES("154","er-20231107-045522","5","2","1","1","6","120000","(SALARY OF NOVMBER 2022) MR IMRAN UDDIN SALARY IS ONE LAC TWENTY THOUSAND RPS PAID","2022-12-05 00:00:00","2023-11-07 16:55:22");
INSERT INTO expenses VALUES("155","er-20231107-045727","5","2","1","1","6","50000","(SALARY OF NOVMBER 2022) MISS FATIMA SALARY IF FIFTY FIVE THOUSAND FIVE THOUSAND HOLD AS A SECURTY DEPOSIT RCVD (FIFTY THOUSAND RPS)","2022-10-05 00:00:00","2023-11-07 16:57:27");
INSERT INTO expenses VALUES("156","er-20231107-045958","5","2","1","1","6","50000","(SALARY OF NOVMBER 2022)MISS NAJMA SULTANA SALARY IS FIFTY FIVE THOUSAND  FIVE THOUSAND HOLD AS A SECURTIY DEPOSIT (FIFTY THOUSAND RCVD)","2022-10-05 00:00:00","2023-11-07 16:59:58");
INSERT INTO expenses VALUES("157","er-20231107-050255","5","2","1","1","6","32500","(SALARY OF NOVMBER 2022) MR MUHMMAD EJAZ SALARY IS 35000 BUT TWENTY FIVE HUNDRED IS HOLD AS A SECURTIY DEPOSIT (THIRTY TWO THOUSAND FIVE HUNDRED RPS PAID)","2022-12-05 00:00:00","2023-11-07 17:02:55");
INSERT INTO expenses VALUES("158","er-20231107-050524","5","2","1","1","6","32500","(SALARY OF NOVMBER 2022) MR WARIS QURESHI SALARY IS THIRTY FIVE THOUSAND RPS BUT TWENTY FIVE HUNDRED RPS HOLD AS A SECURITY DEPOSIT  (THIRTY TWO THOUSAND FIVE HUNDRED RPS PAID)","2022-12-05 00:00:00","2023-11-07 17:05:24");
INSERT INTO expenses VALUES("159","er-20231107-050700","5","2","1","1","6","30000","(SALARY OF NOVMBER 2022) MR GHYAZ JAFFRI SALARY IS THIRTY THOUSAND RPS PAID","2022-12-05 00:00:00","2023-11-07 17:07:00");
INSERT INTO expenses VALUES("160","er-20231107-050912","5","2","1","1","6","7000","(SALARY OF NOVMBER 2022) MR MUZAFFAR SALARY IS THIRTEEN THOUSAND SIX THOUSAND HOLD (SEVEN THOUSAND RPS PAID)","2022-12-05 00:00:00","2023-11-07 17:09:12");
INSERT INTO expenses VALUES("161","er-20231107-051247","9","2","1","1","6","35000","(NOVMBER 2022) RENT PAID 35000 RPS  BY CHEQUE NO(26687125)","2022-11-20 00:00:00","2023-11-07 17:12:47");
INSERT INTO expenses VALUES("162","er-20231107-051703","13","2","1","1","6","300000","(THREE LAC RPS) FOR PRODUCTION","2022-11-18 00:00:00","2023-11-07 17:17:03");
INSERT INTO expenses VALUES("163","er-20231107-051954","11","2","1","1","6","1000","PURCHASSE DISPENSER CONVNCE RENT 1000 RPS","2022-11-01 00:00:00","2023-11-07 17:19:54");
INSERT INTO expenses VALUES("164","er-20231107-052117","11","2","1","1","6","950","CONVENCE CHARGES IS 950 RPS","2022-11-01 00:00:00","2023-11-07 17:21:17");
INSERT INTO expenses VALUES("165","er-20231107-052315","11","2","1","1","6","20250","COMPUTER PURCHSE PRICE IS (20250 RPS)","2022-11-02 00:00:00","2023-11-07 17:23:15");
INSERT INTO expenses VALUES("166","er-20231107-052644","2","2","1","1","6","539","K ELECTRIC BILL IS (539 RPS PAID)","2022-11-29 00:00:00","2023-11-07 17:26:44");
INSERT INTO expenses VALUES("167","er-20231107-053054","14","2","1","1","6","50000","(FIFTY THOUSAND RPS) PAID TO TRADE MARK","2022-11-28 00:00:00","2023-11-07 17:30:54");
INSERT INTO expenses VALUES("168","er-20231107-053510","15","2","1","1","6","30000","MR ZAFAR ESTATE AGENT (30000 RPS) PAID","2022-11-15 00:00:00","2023-11-07 17:35:10");
INSERT INTO expenses VALUES("169","er-20231107-053649","11","2","1","1","6","15000","WEBSITE DESIGN OVATION HEALTH CARE (15000 RPS)","2022-11-29 00:00:00","2023-11-07 17:36:49");
INSERT INTO expenses VALUES("170","er-20231107-053929","11","2","1","1","6","5000","SAMPLE BOXES PRICE IS (5000 RPS)PAID","2022-11-10 00:00:00","2023-11-07 17:39:29");
INSERT INTO expenses VALUES("171","er-20231107-054428","6","2","1","1","6","75000","MR IMRAN UDDIN  WEEKLY ACTIVITY (75000) RPS","2022-11-21 00:00:00","2023-11-07 17:44:28");
INSERT INTO expenses VALUES("172","er-20231107-054644","6","2","1","1","6","100000","WEEKLY ACTIVITY BY MR IMRAN (100000 RPS) PAID","2022-11-14 00:00:00","2023-11-07 17:46:44");
INSERT INTO expenses VALUES("173","er-20231107-054818","6","2","1","1","6","100000","WEEKLY ACTIVITY BY MR IMRAN UDDIN (100000 RPS)","2022-11-02 00:00:00","2023-11-07 17:48:18");
INSERT INTO expenses VALUES("174","er-20231107-055400","6","2","1","1","6","50000","(FIFTY THOUSAND RPS) PAID TO MR IMRAN UDDIN","2022-11-28 00:00:00","2023-11-07 17:54:00");
INSERT INTO expenses VALUES("175","er-20231107-055551","6","2","1","1","6","50000","DR ACTIVITY IS (50000 RPS)","2022-11-07 00:00:00","2023-11-07 17:55:51");
INSERT INTO expenses VALUES("176","er-20231121-111041","7","2","1","1","6","1000","LUNCH AT OFFICE 1000 RPS AT MONDAY 20/11/2023","2023-11-20 00:00:00","2023-11-21 11:10:41");
INSERT INTO expenses VALUES("177","er-20231121-111411","7","2","1","1","6","650","SIX HUNDRED FIFITY RPS EXPENSE ON 20/11/2023","2023-11-20 00:00:00","2023-11-21 11:14:11");
INSERT INTO expenses VALUES("178","er-20231121-111538","7","2","1","1","6","1960","ONE THOUSAND NINE HUNDRED SIXTY RPS 20/11/2023","2023-11-20 00:00:00","2023-11-21 11:15:38");
INSERT INTO expenses VALUES("179","er-20231121-111625","7","2","1","1","6","1650","ONE THOUSAND SIX HUNDRED FIFTY RPS EXPENSE ON 20/11/2023  PRINTER PAGE A4","2023-11-20 00:00:00","2023-11-30 13:31:09");
INSERT INTO expenses VALUES("180","er-20231121-120430","5","2","1","1","6","200000","(SALARY OF DECEMBER 2022) NR ZULFIQAR BALOCH SALARY IS TWO LAC RPS PAID","2023-01-02 00:00:00","2023-11-21 12:04:30");
INSERT INTO expenses VALUES("181","er-20231121-122028","5","2","1","1","6","120000","(SALARY OF DECEMBER 2022) MR IMRAN UDDIN SALARY IS ONE LAC TWENTY THOUSAND RPS PAID","2023-01-02 00:00:00","2023-11-21 12:20:28");
INSERT INTO expenses VALUES("182","er-20231121-122155","5","2","1","1","6","50000","(SALARY OF DECEMBER 2022) MS FATIMA IMRAN SALARY IS FIFTY FIVE THOUSAND RPS FIVE THOUSAND RPS IS HOLD AS SECURITY DEPOSIT FIFTY THOUSAIND RPS PAID","2023-01-02 00:00:00","2023-11-21 12:24:30");
INSERT INTO expenses VALUES("183","er-20231121-122613","5","2","1","1","6","50000","(SALARY OF DEMEBER 2022) MS NAJMA SULTANA SALARY IS FIFTY FIVE THOUSAND RPS FIVE THOUSAND RPS IS HOLD AS A SECURITY DEPOSIT FIFTY THOUSAND PAID","2023-01-02 00:00:00","2023-11-21 12:26:13");
INSERT INTO expenses VALUES("184","er-20231121-122839","5","2","1","1","6","32500","(SALARY OF DECEMBER 2022) MR WARIS QURESHI SALARY IS THIRTY FIVE THOUSAND RPS TWENTY FIVE HUNDRED RPS HOLD AS A SECURITY DEPOSIT THIRTY TWO THOUSAND FIVE HUNDRED PAID","2023-01-02 00:00:00","2023-11-21 12:28:39");
INSERT INTO expenses VALUES("185","er-20231121-123130","5","2","1","1","6","25000","(SALARY OF DECEMBER 2022) MR GHAYAS JAFFRI SALARY IS THIRTY THOUSAND RPS FIVE THOUSAND RPS IS HOLD AS A SECURITY  DEPOSIT TWENTY FIVE THOUSAND RPS PAID","2023-01-02 00:00:00","2023-11-21 12:31:30");
INSERT INTO expenses VALUES("186","er-20231121-123300","5","2","1","1","6","32500","(SALARY OF DECEMBER 2022) MR HUSSAIN SALARY IS THIRTY TWO THOUSAND FIVE HUNDRED RPS  IS PAID","2023-01-02 00:00:00","2023-12-01 15:01:34");
INSERT INTO expenses VALUES("187","er-20231121-123521","16","2","1","1","6","1160","PTCL BILL IS (1160 RPS) PAID","2022-12-19 00:00:00","2023-11-21 12:35:21");
INSERT INTO expenses VALUES("188","er-20231121-123643","17","2","1","1","6","250","GAS BILL IS (250 RPS) PAID","2022-12-13 00:00:00","2023-11-21 12:36:43");
INSERT INTO expenses VALUES("189","er-20231121-124121","9","2","1","1","6","35000","(RENT OF JANUARY 2023) OFFICE RENT IS (35000 RPS) PAID ON 21/12/2022 TO HBL ACOUNT NO 00100161","2022-12-21 00:00:00","2023-11-21 12:41:21");
INSERT INTO expenses VALUES("190","er-20231121-124245","7","2","1","1","6","3000","WATER TANKER EXPENSE IS (3000 RPS) ON 13/12/2022","2022-12-13 00:00:00","2023-11-21 12:42:45");
INSERT INTO expenses VALUES("191","er-20231121-124807","11","2","1","1","6","40000","40000 RPS PAID TO MR KHALID (LAWYER) ON 07/12/2022","2022-12-07 00:00:00","2023-11-21 12:48:07");
INSERT INTO expenses VALUES("192","er-20231121-125045","13","2","1","1","6","200000","TWO LAC RPS PAID TO GENNEC HEALTH SCIENCE PVT LTD FOR MANUFACTURE ON 07/12/2022","2022-12-07 00:00:00","2023-11-21 12:50:45");
INSERT INTO expenses VALUES("193","er-20231121-125215","7","2","1","1","6","1850","MONDAY STAFF MEEETING LUNCH EXPENSE IS (1850 RPS)","2022-12-05 00:00:00","2023-11-21 12:52:15");
INSERT INTO expenses VALUES("194","er-20231121-011041","18","2","1","1","6","5000","5000 RPS PAID TO MR IMRAN  FOR ACTIVITY","2022-12-26 00:00:00","2023-11-21 13:10:41");
INSERT INTO expenses VALUES("195","er-20231121-011248","18","2","1","1","6","10000","(AFEROZ)  10,000 RPS PAID TO MR IMRAN ON 21/12/2022 FOR ACTIVITY","2022-12-21 00:00:00","2023-11-21 13:12:48");
INSERT INTO expenses VALUES("196","er-20231121-011431","18","2","1","1","6","15000","(ERUM) 15000 RPS PAID TO MISS ERUM FOR ACTIVITY","2022-12-19 00:00:00","2023-11-21 13:14:31");
INSERT INTO expenses VALUES("197","er-20231121-011612","18","2","1","1","6","25000","(HUMA MALIK) 25000 RPS PAID FOR ACTIVITY","2022-12-19 00:00:00","2023-11-21 13:16:12");
INSERT INTO expenses VALUES("198","er-20231121-021751","6","2","1","1","6","141000","ONE LAC FOURTY ONE THOUSAND PAID TO MR IMRAN UDDIN","2022-12-05 00:00:00","2023-11-21 14:17:51");
INSERT INTO expenses VALUES("199","er-20231121-025416","6","2","1","1","6","70000","70,000 RPS PAID TO MR IMRAN","2022-12-26 00:00:00","2023-11-21 14:54:16");
INSERT INTO expenses VALUES("200","er-20231121-032601","6","2","1","1","6","100000","ONE LAC RPS PAID TO MR IMRAN UDDIN","2022-12-12 00:00:00","2023-11-21 15:26:01");
INSERT INTO expenses VALUES("201","er-20231121-040059","6","2","1","1","6","72000","72000 RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY 12/12/2022 TO 19/12/2022","2022-12-19 00:00:00","2023-11-21 16:00:59");
INSERT INTO expenses VALUES("202","er-20231122-094855","5","2","1","1","6","200000","(SALARY OF JAN 2023) MR ZULFIQAR BALOCH SALARY IS TWO LAC RPS PAID ON 06/02/2023","2023-02-06 00:00:00","2023-11-22 09:48:55");
INSERT INTO expenses VALUES("203","er-20231122-095309","5","2","1","1","6","3000","(SALARY OF JAN 2023) RIZWAN MASOOD   ADJUSTMENT (DEC 2022) 3000 RPS","2023-02-18 00:00:00","2023-11-22 09:53:09");
INSERT INTO expenses VALUES("204","er-20231122-095456","5","2","1","1","6","45000","(SALARY OF JAN 2023) MR RIZWAN MASOOD SALARY IS 45000 RPS PAID ON 09/02/2023","2023-02-09 00:00:00","2023-11-22 09:54:56");
INSERT INTO expenses VALUES("205","er-20231122-095654","5","2","1","1","6","120000","(SALARY OF JAN 2023) MR IMRAN UDDIN SALARY IS 120000 RPS PAID ON 06/02/2023","2023-02-06 00:00:00","2023-11-22 09:56:54");
INSERT INTO expenses VALUES("206","er-20231122-100005","5","2","1","1","6","55000","(SALARY OF JAN 2023) MIS FATIMA IMRAN SALARY IS 55000 RPS PAID ON 06/02/2023","2023-02-06 00:00:00","2023-11-22 10:00:05");
INSERT INTO expenses VALUES("207","er-20231122-100225","5","2","1","1","6","55000","(SALARY OF JAN 2023) MIS NAJMA SULTANA SALARY IS 55000 RPS PAID ON 06/02/2023","2023-02-06 00:00:00","2023-11-22 10:02:25");
INSERT INTO expenses VALUES("208","er-20231122-100416","5","2","1","1","6","35000","(SALARY OF JAN 2023) MR HUSSAIN SALARY IS 35000 RPS PAID ON 06/02/2023","2023-02-06 00:00:00","2023-11-22 10:04:16");
INSERT INTO expenses VALUES("209","er-20231122-100538","5","2","1","1","6","35000","(SALARY OF JAN 2023) MR WARIS QURESHI SALARY IS 35000 RPS PAID ON 06/02/2023","2023-02-06 00:00:00","2023-11-22 10:05:38");
INSERT INTO expenses VALUES("210","er-20231122-100815","5","2","1","1","6","2600","(SALARY OF DEC 2022) MR MUZAFFAR HUSSAIN SALARY OF (DEC 2022) 2600 RPS PAID","2023-02-06 00:00:00","2023-11-22 10:08:15");
INSERT INTO expenses VALUES("211","er-20231122-101602","5","2","1","1","6","8000","(SALARY OF JAN 2023 IN ADVCANCE) MR MUZAFFAR RCVD 8000 RPS IN ADVNCE ON 14/01/2023","2023-02-06 00:00:00","2023-11-22 10:16:02");
INSERT INTO expenses VALUES("212","er-20231122-101800","5","2","1","1","6","5000","(SALARY OF JAN 2023) MR MUZAFFAR HUSSAIN SALARY IS 13000 RPS (8000 RPS IN ADVNCE) 5000 RPS PAID ON 06/02/2023","2023-02-06 00:00:00","2023-11-22 10:18:00");
INSERT INTO expenses VALUES("213","er-20231122-102201","19","2","1","1","6","10000","10,000 RPS INSTALMENT OF DISPENSR PAID TO MR IMRAN UDDIN","2023-01-03 00:00:00","2023-11-22 10:22:01");
INSERT INTO expenses VALUES("214","er-20231122-102442","6","2","1","1","6","57000","57000 RPS PAID TO MR IMRAN UDDIN WEEKLY ACTIVITY (FISHING PICNIC)","2023-01-09 00:00:00","2023-11-22 10:24:42");
INSERT INTO expenses VALUES("215","er-20231122-102703","6","2","1","1","6","24000","24000 RPS PAID TO MR IMRAN UDDIN  FOR ACTIVITY (FISHING PROGRAM)","2023-01-04 00:00:00","2023-11-22 10:27:03");
INSERT INTO expenses VALUES("216","er-20231122-102923","11","2","1","1","6","20000","PRINTER BILL IS 20000 RPS PAID TO MR (IMRAN UDDIN)","2023-01-11 00:00:00","2023-11-22 10:29:23");
INSERT INTO expenses VALUES("217","er-20231122-103213","13","2","1","1","6","200000","TWO LAC RPS PAID TO GENNEC HEALTH SCIENCE PVT LTD (INVOICE 0008)","2023-01-08 00:00:00","2023-11-22 10:32:13");
INSERT INTO expenses VALUES("218","er-20231122-103353","16","2","1","1","6","870","PTCL BILL IS 870 RPS PAID","2023-01-11 00:00:00","2023-11-22 10:33:53");
INSERT INTO expenses VALUES("219","er-20231122-103921","20","2","1","1","6","1000000","ONE MILLION RPS  CREDIT   ON 16/01/2023","2023-01-16 00:00:00","2023-11-22 10:39:21");
INSERT INTO expenses VALUES("220","er-20231122-104350","21","2","1","1","6","60000","SIXTY THOUSAND RPS PAID TO COMBINE PRINTING COMMUNICTION BY (CEHQUE 00100167)","2023-01-17 00:00:00","2023-11-22 10:43:50");
INSERT INTO expenses VALUES("221","er-20231122-104526","11","2","1","1","6","60000","SIXTY THOUSAND RPS PAID TO JAHANGEER CCTV","2023-01-19 00:00:00","2023-11-22 10:45:26");
INSERT INTO expenses VALUES("222","er-20231122-104813","9","2","1","1","6","35000","35000 RPS PAID OFFICE RENT TO MR MUHMMAD AMIN  CH# 00100172","2023-01-19 00:00:00","2023-11-22 10:48:13");
INSERT INTO expenses VALUES("223","er-20231122-105014","2","2","1","1","6","1004","K ELEC BILL IS 1004 RPS PAID","2023-01-31 00:00:00","2023-11-22 10:50:14");
INSERT INTO expenses VALUES("224","er-20231122-105309","18","2","1","1","6","25000","25000 RPS PAID TO DR SOHAIL DILWAR (ANKERL SARIA) FOR ACTIVITY","2023-01-06 00:00:00","2023-11-22 10:53:09");
INSERT INTO expenses VALUES("225","er-20231122-105739","6","2","1","1","6","25000","25000 RPS PAID TO DR HUMA FOR ACTIVITY","2023-01-06 00:00:00","2023-11-22 10:57:39");
INSERT INTO expenses VALUES("226","er-20231122-105913","6","2","1","1","6","30000","30000 RPS PAID TO DR (SARFRAZ ORTHO JPMC) C/O IMRAN UDDIN","2023-01-11 00:00:00","2023-11-22 10:59:13");
INSERT INTO expenses VALUES("227","er-20231122-110103","6","2","1","1","6","20000","20000 RPS PAID TO (DR KHALIL CIVIL WARD 1) C/O ZULFIQAR BALOCH OWNER","2023-01-12 00:00:00","2023-11-22 11:01:03");
INSERT INTO expenses VALUES("228","er-20231122-110315","6","2","1","1","6","40000","40000 RPS PAID TO DR ARIF ALI  ANKEL SARYA (JAMAL NOOR)","2023-01-13 00:00:00","2023-11-22 11:03:15");
INSERT INTO expenses VALUES("229","er-20231122-110501","6","2","1","1","6","15000","15000 RPS PAID TO DR MUZAMIL SERVICES HOSP","2023-01-17 00:00:00","2023-11-22 11:05:01");
INSERT INTO expenses VALUES("230","er-20231122-111123","6","2","1","1","6","20000","20000 PAID TO DR TARIQ (CIVIL WARD 2) WARD FUND","2023-01-17 00:00:00","2023-11-22 11:11:23");
INSERT INTO expenses VALUES("231","er-20231122-111446","22","2","1","1","6","15000","15000 RPS PAID TO (DR SHAZIA RAB NAWAZ) FOR MONTHLY ACTIVITY","2023-01-17 00:00:00","2023-11-22 11:14:46");
INSERT INTO expenses VALUES("232","er-20231122-111550","22","2","1","1","6","15000","15000 RPS PAID TO (DR REHANA)  FOR MONTHLY ACTIVITY","2023-01-17 00:00:00","2023-11-22 11:15:50");
INSERT INTO expenses VALUES("233","er-20231122-111720","22","2","1","1","6","25000","25000 RPS (DR ALTAF  JPMC) FOR MONTHLY ACTIVITY","2023-01-17 00:00:00","2023-11-22 11:17:20");
INSERT INTO expenses VALUES("234","er-20231122-111836","22","2","1","1","6","15000","15000 RPS PAID TO (DR ERUM) FOR MONTHLY ACTIVITY","2023-01-17 00:00:00","2023-11-22 11:18:36");
INSERT INTO expenses VALUES("235","er-20231122-111947","22","2","1","1","6","10000","10000 RPS PAID TO (DR AFROZ) FOR MONTHLY ACTIVITY","2023-01-17 00:00:00","2023-11-22 11:19:47");
INSERT INTO expenses VALUES("236","er-20231122-112130","11","2","1","1","6","150","150 RPS RENT FOR BYKEA RIDER (IMRAN SB) ODER ANKEL SERYA","2023-01-31 00:00:00","2023-11-22 11:21:30");
INSERT INTO expenses VALUES("237","er-20231122-112220","11","2","1","1","6","900","900 RPS PAID TO WATER TANKER","2023-01-27 00:00:00","2023-11-22 11:22:20");
INSERT INTO expenses VALUES("238","er-20231122-112308","11","2","1","1","6","900","900 RPS PAID TO WATER TANKER","2023-01-20 00:00:00","2023-11-22 11:23:08");
INSERT INTO expenses VALUES("239","er-20231122-112407","11","2","1","1","6","3520","3520 RPS EXPENSE TO KITCHEN ITEMS","2023-01-20 00:00:00","2023-11-22 11:24:07");
INSERT INTO expenses VALUES("240","er-20231122-112517","11","2","1","1","6","690","690 RPS EXPENSE FOR TEA (MR JHANGEER AND TEAM)","2023-01-19 00:00:00","2023-11-22 11:25:17");
INSERT INTO expenses VALUES("241","er-20231122-112626","11","2","1","1","6","150","150 RPS PAID TO BYKEA RIDER","2023-01-19 00:00:00","2023-11-22 11:26:26");
INSERT INTO expenses VALUES("242","er-20231122-112727","11","2","1","1","6","200","200 RPS EXPENSE FOR TEA TO (MR JHANGEER CCTV)","2023-01-19 00:00:00","2023-11-22 11:27:27");
INSERT INTO expenses VALUES("243","er-20231122-112905","11","2","1","1","6","280","280 RPS AID TO (MR RIZWAN MASOOD) FOR CONVNCE CHARGES","2023-01-14 00:00:00","2023-11-22 11:29:05");
INSERT INTO expenses VALUES("244","er-20231122-113012","20","2","1","1","6","1100","1100 RPS RECVD FOR PETI CASH","2023-01-12 00:00:00","2023-11-22 11:30:12");
INSERT INTO expenses VALUES("245","er-20231122-113103","11","2","1","1","6","900","900 RPS PAID TO WATER TANKER","2023-01-12 00:00:00","2023-11-22 11:31:03");
INSERT INTO expenses VALUES("246","er-20231122-113148","11","2","1","1","6","900","900 RPS PAID TO WATER TANKER","2023-01-04 00:00:00","2023-11-22 11:31:48");
INSERT INTO expenses VALUES("247","er-20231122-113331","20","2","1","1","6","2050","MR RIZWAN MASOOD RCVD PETI CASH AMOUNT IS (2050 RPS0","2023-01-04 00:00:00","2023-11-22 11:33:31");
INSERT INTO expenses VALUES("248","er-20231122-113526","11","2","1","1","6","980","980 RPS EXPENSE FOR OFFICE USES  ITEMS (PAID TO MR GHAYAZ JAFFER)","2023-01-02 00:00:00","2023-11-22 11:35:26");
INSERT INTO expenses VALUES("249","er-20231122-113914","11","2","1","1","6","21250","(CLOSING MONTH OF JAN 2023) OVER ALL EXPENSE 21250","2023-01-02 00:00:00","2023-11-22 11:39:14");
INSERT INTO expenses VALUES("250","er-20231122-114224","6","2","1","1","6","70000","70000 RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY  03/01/2023 TO 09/01/2023","2023-01-09 00:00:00","2023-11-22 11:42:24");
INSERT INTO expenses VALUES("251","er-20231122-125444","6","2","1","1","6","115000","ONE LAC FIFTEEN THOUSAND RPS PAID TO MR IMRAN UDDIN","2023-01-16 00:00:00","2023-11-22 12:54:44");
INSERT INTO expenses VALUES("252","er-20231122-013301","6","2","1","1","6","56300","FIFTY SIX THOUSAND THREE HUNDRED RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY 17/01/2023 TO 23/01/2023","2023-01-23 00:00:00","2023-11-22 13:33:01");
INSERT INTO expenses VALUES("253","er-20231122-021230","6","2","1","1","6","75070","75070 RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY (24/01/2023 TO 30/01/2023)","2023-01-30 00:00:00","2023-11-22 14:12:30");
INSERT INTO expenses VALUES("254","er-20231122-025329","11","2","1","1","6","1300","OFFICE LUNCH 1300 RPS","2023-01-24 00:00:00","2023-11-22 14:53:29");
INSERT INTO expenses VALUES("255","er-20231122-030059","6","2","1","1","6","50000","50000 RPS PAID TO MR IMRAN SB","2023-01-31 00:00:00","2023-11-22 15:00:59");
INSERT INTO expenses VALUES("256","er-20231122-030353","6","2","1","1","6","30000","30000 RPS PAID TO MR IMRAN FOR WEEKLY ACTIVITY","2023-01-31 00:00:00","2023-11-22 15:03:53");
INSERT INTO expenses VALUES("257","er-20231122-030633","6","2","1","1","6","120000","MR ZULFIQAR  DR ACTIVITY 50000+30000+40000 TOTAL (120000)","2023-02-06 00:00:00","2023-11-22 15:06:33");
INSERT INTO expenses VALUES("258","er-20231122-031446","6","2","1","1","6","10000","10000 RPS PAID TO MR IMRAN (PREVIOUS ADJSTMNT)","2023-01-09 00:00:00","2023-11-22 15:14:46");
INSERT INTO expenses VALUES("259","er-20231122-031559","20","2","1","1","6","5000","5000 RPS RCVD FOR PETI CASH","2023-01-19 00:00:00","2023-11-22 15:15:59");
INSERT INTO expenses VALUES("260","er-20231122-031829","20","2","1","1","6","30362","30,362 RPS RECVD FROM (BABA MEDICAL)","2023-01-03 00:00:00","2023-11-22 15:18:29");
INSERT INTO expenses VALUES("261","er-20231122-032020","20","2","1","1","6","10000","10,000 RPS RCVD FROM BABA MEDICAL STORE BY IMRAN SB","2023-01-04 00:00:00","2023-11-22 15:20:20");
INSERT INTO expenses VALUES("262","er-20231122-032210","20","2","1","1","6","29682","29,682 RPS RCVD FROM BABA MEDICAL STORE C/O IMRAN SB","2023-01-30 00:00:00","2023-11-22 15:22:10");
INSERT INTO expenses VALUES("263","er-20231122-032342","20","2","1","1","6","10000","10,000 RPS FOR PETI CASH","2023-01-20 00:00:00","2023-11-22 15:23:42");
INSERT INTO expenses VALUES("264","er-20231122-032612","6","2","1","1","6","100000","ONE LAC RPS PAID TO MR IMRAN UDDIN WEEKLY ACTIVITY  (26/12/2022 TO 02/01/2023)","2023-01-02 00:00:00","2023-11-22 15:26:12");
INSERT INTO expenses VALUES("265","er-20231122-042751","5","2","1","1","6","200000","(SALARY OF FEB 2023) MR ZULIFQAR BALOCH SALARY IS TWO LAC RPS","2023-03-06 00:00:00","2023-11-22 16:27:51");
INSERT INTO expenses VALUES("266","er-20231122-043521","5","2","1","1","6","45000","(SALARY OF FEB 2023) MR RIZWAN MASOOD SALARY IS 45000 RPS PAID","2023-03-06 00:00:00","2023-11-22 16:35:21");
INSERT INTO expenses VALUES("267","er-20231122-043716","5","2","1","1","6","120000","(SALARY OF FEB 2023) MR IMRAN UDDIN SALRY IS (ONE LAC TWENTY THOUSAND RPS) PAID","2023-03-06 00:00:00","2023-11-22 16:37:16");
INSERT INTO expenses VALUES("268","er-20231122-043902","5","2","1","1","6","55000","(SALARY OF FEB 2023) MISS FATIMA IMRAN SALARY IS (FIFTY FIVE THOUSAND RPS) PAID","2023-03-06 00:00:00","2023-11-22 16:42:34");
INSERT INTO expenses VALUES("269","er-20231122-044043","5","2","1","1","6","55000","(SALARY OF FEB 2023) MISS NAJMA SULTANA SALARY IS (FIFTY FIVE THOUSAND RPS) PAID","2023-03-06 00:00:00","2023-11-22 16:43:47");
INSERT INTO expenses VALUES("270","er-20231122-044717","5","2","1","1","6","35000","(SALARY OF FEB 2023) MR HUSSAIN SALARY IS (THIRTY FIVE THOUSAND RPS) PAID","2023-03-06 00:00:00","2023-11-22 16:47:17");
INSERT INTO expenses VALUES("271","er-20231122-044850","5","2","1","1","6","35000","(SALARY OF FEB 2023) MR WARIS QURESHI SALARY IS (THIRTY FIVE THOUSAND RPS)PAID","2023-03-06 00:00:00","2023-11-22 16:48:50");
INSERT INTO expenses VALUES("272","er-20231122-045049","5","2","1","1","6","8000","(SALARY OF FEB 2023) MISS SHANZA IMTIAZ SALARY IS (EIGHT THOUSAND RPS) PAID","2023-03-06 00:00:00","2023-11-22 16:50:49");
INSERT INTO expenses VALUES("273","er-20231122-045238","5","2","1","1","6","5000","(SALARY OF FEB AND MARCH 2023) MR DANISH TOTAL SALARY AMOUNT IS  (5000 PAID)","2023-03-06 00:00:00","2023-11-22 16:52:38");
INSERT INTO expenses VALUES("274","er-20231122-045448","13","2","1","1","6","100000","(ONE LAC RPS PAID) TO GENNEC MANUFACTRE","2023-02-08 00:00:00","2023-11-22 16:54:48");
INSERT INTO expenses VALUES("275","er-20231122-045623","16","2","1","1","6","1240","PTCL BILL AMOUNT IS (1240 PAID)","2023-02-13 00:00:00","2023-11-22 16:56:23");
INSERT INTO expenses VALUES("276","er-20231122-045723","2","2","1","1","6","1240","K ELECTRIC BILL (1240 RPS PAID)","2023-02-27 00:00:00","2023-11-22 16:57:23");
INSERT INTO expenses VALUES("277","er-20231122-045840","20","2","1","1","6","5000","5000 RPS RCVD FOR PETI CASH","2023-02-18 00:00:00","2023-11-22 16:58:40");
INSERT INTO expenses VALUES("278","er-20231122-050023","20","2","1","1","6","3340","(3340 RPS) RCVD FOR PETI CASH","2023-02-27 00:00:00","2023-11-22 17:00:23");
INSERT INTO expenses VALUES("279","er-20231122-050154","20","2","1","1","6","600","(600 RPS) PAID TO MR RIZWAN MASOOD AGAINST  EXPENSES","2023-02-14 00:00:00","2023-11-22 17:01:54");
INSERT INTO expenses VALUES("280","er-20231122-050253","20","2","1","1","6","1400","(1400 RCVD)  FOR PETI CASH","2023-02-04 00:00:00","2023-11-22 17:02:53");
INSERT INTO expenses VALUES("281","er-20231122-050406","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-02-02 00:00:00","2023-11-22 17:04:06");
INSERT INTO expenses VALUES("282","er-20231122-050518","11","2","1","1","6","70","REFIL WATER CAN (70 RPS PAID)","2023-02-27 00:00:00","2023-11-22 17:05:18");
INSERT INTO expenses VALUES("283","er-20231122-050616","11","2","1","1","6","80","(80 RPS) EXPENSE AT LUNCH","2023-02-27 00:00:00","2023-11-22 17:06:16");
INSERT INTO expenses VALUES("284","er-20231122-050728","11","2","1","1","6","1660","STAFF LUNCH EXPENSE IS (1660 RPS)","2023-02-27 00:00:00","2023-11-22 17:07:28");
INSERT INTO expenses VALUES("285","er-20231122-050829","11","2","1","1","6","60","(60 RPS) FOR LUNCH TO OFFICE BOY","2023-02-27 00:00:00","2023-11-22 17:08:29");
INSERT INTO expenses VALUES("286","er-20231122-050945","11","2","1","1","6","1610","(1610) RPS EXPENSE FOR OFFICE USE","2023-02-27 00:00:00","2023-11-22 17:09:45");
INSERT INTO expenses VALUES("287","er-20231122-051114","11","2","1","1","6","900","WATER TANKER (900 RPS) EXPNSE","2023-02-25 00:00:00","2023-11-22 17:11:14");
INSERT INTO expenses VALUES("288","er-20231122-051214","11","2","1","1","6","100","(100 RPS) EXPENSE FOR OFFICE USE","2023-02-23 00:00:00","2023-11-22 17:12:14");
INSERT INTO expenses VALUES("289","er-20231122-051318","11","2","1","1","6","100","(100 RPS) EXPENSE ON MILK FOR OFFICE","2023-02-22 00:00:00","2023-11-22 17:13:18");
INSERT INTO expenses VALUES("290","er-20231122-051459","11","2","1","1","6","1560","MONDAY OFFICE LUNCH & MILK (1560 RPS)","2023-02-20 00:00:00","2023-11-22 17:14:59");
INSERT INTO expenses VALUES("291","er-20231122-051706","11","2","1","1","6","70","(70 RPS) EXPENSE  FOR WATER CAN","2023-02-20 00:00:00","2023-11-22 17:17:06");
INSERT INTO expenses VALUES("292","er-20231122-051803","11","2","1","1","6","1580","PRINTING PAPER A4 SIZE AMOUNT IS (1580)","2023-02-20 00:00:00","2023-11-22 17:18:03");
INSERT INTO expenses VALUES("293","er-20231122-051931","11","2","1","1","6","900","(900 RPS) EXPENSE ON WATER TANKER","2023-02-17 00:00:00","2023-11-22 17:19:31");
INSERT INTO expenses VALUES("294","er-20231122-052050","19","2","1","1","6","5000","5000 RPS INSTALMENT FOR (FEB 2023) PAID","2023-02-13 00:00:00","2023-11-22 17:20:50");
INSERT INTO expenses VALUES("295","er-20231122-052259","11","2","1","1","6","900","(900 RPS) EXPENSE FOR WATER TANKER","2023-02-09 00:00:00","2023-11-22 17:22:59");
INSERT INTO expenses VALUES("296","er-20231122-052409","11","2","1","1","6","260","(260 RPS) EXPENSE ON ROSE PETIL TISSUE","2023-02-07 00:00:00","2023-11-22 17:24:09");
INSERT INTO expenses VALUES("297","er-20231122-052532","11","2","1","1","6","50","(50 RPS) PAID TO MR MUZAFER","2023-02-07 00:00:00","2023-11-22 17:25:32");
INSERT INTO expenses VALUES("298","er-20231122-052703","11","2","1","1","6","770","(770 RPS) EXPENSE FOR OFFICE USE ITEMS","2023-02-07 00:00:00","2023-11-22 17:27:03");
INSERT INTO expenses VALUES("299","er-20231122-052752","11","2","1","1","6","100","(100 RPS) PAID TO MR MUZAFER","2023-02-04 00:00:00","2023-11-22 17:27:52");
INSERT INTO expenses VALUES("300","er-20231122-052921","11","2","1","1","6","900","(900 RPS) PAID TO WATER TANKER","2023-02-03 00:00:00","2023-11-22 17:29:21");
INSERT INTO expenses VALUES("301","er-20231122-053109","11","2","1","1","6","100","CONVNCE CHARGES 100 RPS","2023-02-02 00:00:00","2023-11-22 17:31:09");
INSERT INTO expenses VALUES("302","er-20231122-053638","7","2","1","1","6","270","(270 RPS) EXPENSE  FOR LUNCH AT OFFICE","2023-02-28 00:00:00","2023-11-22 17:36:38");
INSERT INTO expenses VALUES("303","er-20231122-053947","21","2","1","1","6","18000","18000 RPS EXPNSE FOR (FEB 2023) PAID","2023-03-01 00:00:00","2023-11-22 17:39:47");
INSERT INTO expenses VALUES("304","er-20231122-054226","20","2","1","1","6","5000","5000 RCVD CASH (HBL)","2023-02-23 00:00:00","2023-11-22 17:42:26");
INSERT INTO expenses VALUES("305","er-20231123-092052","20","2","1","1","6","1354","(1354 RPS) RCVD FOR PETI CASH","2023-02-22 00:00:00","2023-11-23 09:20:52");
INSERT INTO expenses VALUES("306","er-20231123-092710","20","2","1","1","6","1550000","(FROM RAPID DISTIBIOUTORS TO OVATION HEALTH CARE) 7,50,000 RCVD (CHEQUE NO 66769645) 
800,000 RCVD (CHEQUE 007751507)  TOTAL AMOUNT IS (15,50,000 RPS)","2023-02-16 00:00:00","2023-11-23 09:30:03");
INSERT INTO expenses VALUES("307","er-20231123-093300","20","2","1","1","6","28165","(FROM BABA MEDICAL & ALI MEDICAL TO OVATION HEALTH CARE) 
(21471 RPS) FROM BABA MEDICAL
(6694 RPS) FROM ALI MEDICAL","2023-02-16 00:00:00","2023-11-23 09:33:00");
INSERT INTO expenses VALUES("308","er-20231123-093444","20","2","1","1","6","8110","(8110 RPS RCVD) FROM BABA MEDICAL TO OVATION HEALTH CARE","2023-02-04 00:00:00","2023-11-23 09:34:44");
INSERT INTO expenses VALUES("309","er-20231123-093640","6","2","1","1","6","75750","(75,750 RPS) FOR WEEKLY ACTIVITY 31/01/2023 TO 06/02/2023","2023-02-06 00:00:00","2023-11-23 09:36:40");
INSERT INTO expenses VALUES("311","er-20231123-101449","6","2","1","1","6","102000","(ONE LAC TWO THOUSAND RPS) PAID TO (MR IMRAN FOR WEEKLY ACTIVITY) 
07/02/2023 TO 13/02/2023","2023-02-13 00:00:00","2023-11-23 10:20:30");
INSERT INTO expenses VALUES("312","er-20231123-111013","22","2","1","1","6","11000","11000 RPS TO MR IMRAN UDDIN","2023-02-07 00:00:00","2023-11-23 11:10:13");
INSERT INTO expenses VALUES("313","er-20231123-111234","6","2","1","1","6","61000","61,000 RPS WEEKLY ACTIVITY 14/02/2023 TO 20/02/2023","2023-02-20 00:00:00","2023-11-23 11:12:34");
INSERT INTO expenses VALUES("314","er-20231123-114916","6","2","1","1","6","31500","(31500 RPS) PAID TO MR IMARN UDDIN FOR FISHING ACTIVITY","2023-02-20 00:00:00","2023-11-23 11:49:16");
INSERT INTO expenses VALUES("315","er-20231123-115242","6","2","1","1","6","30000","30000 RPS PAID TO IMRAN UDDIN FOR FISHING ACTIVITY  (SERVICES HOSPITAL DR MUJTABA)","2023-02-09 00:00:00","2023-11-23 11:52:42");
INSERT INTO expenses VALUES("316","er-20231123-115523","22","2","1","1","6","145000","1,45,000 RPS EXPENSE ON (SAMSUNG MOBILE A73) DR M A QURESHI","2023-02-08 00:00:00","2023-11-23 11:55:23");
INSERT INTO expenses VALUES("317","er-20231123-115655","18","2","1","1","6","20000","(20,000 RPS) TO DR TARIQ FOR MONTHLY WARD FUND","2023-02-10 00:00:00","2023-11-23 11:56:55");
INSERT INTO expenses VALUES("318","er-20231123-115801","22","2","1","1","6","25000","(25000 RPS) PAID TO DR SOHAIL DILWAR FOR ACTIVITY","2023-02-10 00:00:00","2023-11-23 11:58:01");
INSERT INTO expenses VALUES("319","er-20231123-120036","18","2","1","1","6","25000","(25000 RPS) PAID TO DR HUMA TABBUSUM FOR ACTIVITY","2023-02-10 00:00:00","2023-11-23 12:00:36");
INSERT INTO expenses VALUES("320","er-20231123-120242","18","2","1","1","6","20000","(20,000 RPS) DR KHALIL BABER  FOR MONTHLY WARD FUND","2023-02-10 00:00:00","2023-11-23 12:02:42");
INSERT INTO expenses VALUES("321","er-20231123-120443","18","2","1","1","6","40000","(40,000 RPS) PAID TO DR ARIF ALI FOR ACTIVITY","2023-02-18 00:00:00","2023-11-23 12:04:43");
INSERT INTO expenses VALUES("322","er-20231123-120627","18","2","1","1","6","15000","(15000 RPS) PAID TO DR ERUM FOR MONTHLY ACTIVITY","2023-02-18 00:00:00","2023-11-23 12:06:27");
INSERT INTO expenses VALUES("323","er-20231123-120750","18","2","1","1","6","10000","(10,000 RPS) PAID TO DR AFEROZ FOR MONTHLY ACTIVITY","2023-02-20 00:00:00","2023-11-23 12:07:50");
INSERT INTO expenses VALUES("324","er-20231123-120918","18","2","1","1","6","24500","(24500 RPS) PAID TO DR MUZAFER FOR ACTIVITY","2023-02-21 00:00:00","2023-11-23 12:09:18");
INSERT INTO expenses VALUES("325","er-20231123-123454","18","2","1","1","6","15000","(15000 RPS) PAID TO DR SHAZIA RUB NAWAZ","2023-02-22 00:00:00","2023-11-23 12:34:54");
INSERT INTO expenses VALUES("326","er-20231123-123701","18","2","1","1","6","10000","(10,000 RPS) PAID TO DR SEHER IRFAN FOR ACTIVITY","2023-02-22 00:00:00","2023-11-23 12:37:01");
INSERT INTO expenses VALUES("327","er-20231123-123832","18","2","1","1","6","10000","(10,000 RPS) PAID TO DR REHANA FOR ACTIVITY","2023-02-27 00:00:00","2023-11-23 12:38:32");
INSERT INTO expenses VALUES("328","er-20231123-124359","5","2","1","1","6","200000","(SALARY OF MAR 2023) MR ZULFIQAR BALOCH SALARY IS (TWO LAC RPS PAID)","2023-04-03 00:00:00","2023-11-23 12:43:59");
INSERT INTO expenses VALUES("329","er-20231123-124740","5","2","1","1","6","15000","(SALARY OF MAR 2023) MR RIZWAN MASOOD SALARY IS (45000 RPS PAID)","2023-04-03 00:00:00","2023-11-23 12:47:40");
INSERT INTO expenses VALUES("330","er-20231123-124910","5","2","1","1","6","9400","(SALARY OF MAR 2023) MR KHUDA BAKSH SALARY IS (9400 RPS PAID)","2023-04-03 00:00:00","2023-11-23 12:49:10");
INSERT INTO expenses VALUES("331","er-20231123-125047","5","2","1","1","6","5000","(SALARY OF MAR 2023) MR KHUDA BAKSH SALARY IS (5000 PAID)","2023-04-03 00:00:00","2023-11-23 12:50:47");
INSERT INTO expenses VALUES("332","er-20231123-125257","5","2","1","1","6","120000","(SALARY OF MAR 2023) MR IMRAN UDDIN SALARY IS (ONE LAC TWENTY THOUSAND RPS) PAID","2023-04-03 00:00:00","2023-11-23 12:52:57");
INSERT INTO expenses VALUES("333","er-20231123-125426","5","2","1","1","6","55000","(SALARY OF MAR 2023) MISS FATIMA IMRAN SALARY IS (55000 RPS) PAID","2023-04-03 00:00:00","2023-11-23 12:54:26");
INSERT INTO expenses VALUES("334","er-20231123-125553","5","2","1","1","6","55000","(SALARY OF MAR 2023) MISS NAJMA SULTANA SALARY IS (55000 RPS PAID)","2023-04-03 00:00:00","2023-11-23 12:55:53");
INSERT INTO expenses VALUES("335","er-20231123-125727","5","2","1","1","6","35000","(SALARY OF MAR 2023) MR HUSSAIN SALARY IS (35000 RPS PAID)","2023-04-03 00:00:00","2023-11-23 12:57:27");
INSERT INTO expenses VALUES("336","er-20231123-125908","5","2","1","1","6","35000","(SALARY OF MAR 2023) MR WARIS QURESHI SALARY IS (35000 RPS PAID)","2023-04-03 00:00:00","2023-11-23 12:59:08");
INSERT INTO expenses VALUES("337","er-20231123-010125","9","2","1","1","6","35000","(RENT OF MAR 2023) 35000 RPS PAID TO MR AMIN(LAND LORD) FOR OFFICE RENT","2023-03-27 00:00:00","2023-11-23 13:01:25");
INSERT INTO expenses VALUES("338","er-20231123-010405","12","2","1","1","6","300000","(THREE LAC RPS) PAID GENNEC MANUFACTRE FOR (PAGECAL CRANDOM) CHEQUE NO (00100179)","2023-04-02 00:00:00","2023-11-23 13:04:05");
INSERT INTO expenses VALUES("339","er-20231123-010522","19","2","1","1","6","5000","DISPENSER INSTALMNT IS (5000 RPS PAID) 4/6","2023-03-09 00:00:00","2023-11-23 13:05:22");
INSERT INTO expenses VALUES("340","er-20231123-010658","7","2","1","1","6","1200","WATER TANKER (900)  OFFICE LUNCH(100)  AND MILK(200)   TOTAL EXPENSE IS (1200 RPS)","2023-03-02 00:00:00","2023-11-23 13:08:51");
INSERT INTO expenses VALUES("341","er-20231123-010942","11","2","1","1","6","900","(900 RPS) EXPENSE FOR WATER TANKER","2023-03-17 00:00:00","2023-11-23 13:09:42");
INSERT INTO expenses VALUES("342","er-20231123-011129","11","2","1","1","6","900","(900 RPS) EXPENSE FOR WATER TANKER","2023-03-13 00:00:00","2023-11-23 13:11:29");
INSERT INTO expenses VALUES("343","er-20231123-011252","11","2","1","1","6","900","(900 RPS) EXPENSE FOR WATER TANKER","2023-03-22 00:00:00","2023-11-30 16:10:30");
INSERT INTO expenses VALUES("344","er-20231123-011417","11","2","1","1","6","6500","(6500 RPS) EXPENSE FOR CIRCIT REPAIR","2023-03-13 00:00:00","2023-11-23 13:14:17");
INSERT INTO expenses VALUES("345","er-20231123-011833","16","2","1","1","6","3192","PTCL BILL 3192 (FEB) PAID","2023-03-17 00:00:00","2023-11-23 13:18:33");
INSERT INTO expenses VALUES("346","er-20231123-011953","2","2","1","1","6","1515","K ELEC BILL IS (1515 PAID) MARCH","2023-03-22 00:00:00","2023-11-23 13:19:53");
INSERT INTO expenses VALUES("347","er-20231123-012239","21","2","1","1","6","39000","(39000 RPS) PAID TO COMBINE PRINTING","2023-03-28 00:00:00","2023-11-23 13:22:39");
INSERT INTO expenses VALUES("348","er-20231123-012423","6","2","1","1","6","95600","95,600 RPS FOR WEEKLY ACTIVITY (01/03/2023 TO 07/03/2023)","2023-03-27 00:00:00","2023-11-23 13:24:23");
INSERT INTO expenses VALUES("349","er-20231123-015733","6","2","1","1","6","54000","(54000 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY (07/03/2023 TO 13/03/2023)","2023-03-06 00:00:00","2023-11-23 13:57:33");
INSERT INTO expenses VALUES("350","er-20231123-030445","6","2","1","1","6","66150","(66,150 RPS) PAID TO MKR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-03-13 00:00:00","2023-11-23 15:04:45");
INSERT INTO expenses VALUES("351","er-20231123-030622","6","2","1","1","6","83050","(83,050 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-03-20 00:00:00","2023-11-23 15:06:22");
INSERT INTO expenses VALUES("352","er-20231123-030812","18","2","1","1","6","25000","(25000 RPS) PAID DR ALTAF FOR ACTIVITY","2023-03-27 00:00:00","2023-11-23 15:08:12");
INSERT INTO expenses VALUES("353","er-20231123-030923","18","2","1","1","6","50000","(50,000 RPS PAID) TO DR RAJESH MONTHLY ACTIVITY","2023-03-08 00:00:00","2023-11-23 15:09:23");
INSERT INTO expenses VALUES("354","er-20231123-031032","18","2","1","1","6","21000","(21000 RPS) PAID TO DR PERVAIZ JPMC","2023-03-20 00:00:00","2023-11-23 15:10:32");
INSERT INTO expenses VALUES("355","er-20231123-031245","18","2","1","1","6","22000","(22000 RPS PAID TO DR KAMRAN SOLMALANT)  BY IMRAN SB FOR MONTHLY ACTIVITY","2023-03-09 00:00:00","2023-11-23 15:12:45");
INSERT INTO expenses VALUES("356","er-20231123-031403","18","2","1","1","6","15000","(15000 RPS PAID TO DR SARFRAZ)  FOR MONTHLY ACTIVITY","2023-03-09 00:00:00","2023-11-23 15:14:03");
INSERT INTO expenses VALUES("357","er-20231123-031542","18","2","1","1","6","10000","(10,000 RPS PAID TO LALA AURANGZAIB) FOR MONTHLY ACTIVTY","2023-03-09 00:00:00","2023-11-23 15:15:42");
INSERT INTO expenses VALUES("358","er-20231123-031925","18","2","1","1","6","12000","(12000 RPS PAID) TO DR SUNEETA FOR MONTHLY ACTIVITY","2023-03-09 00:00:00","2023-11-23 15:19:25");
INSERT INTO expenses VALUES("359","er-20231123-032038","18","2","1","1","6","20000","(20,000 RPS) PAID TO DR KHALIL BABER CIVIL WARD 1  FOR MONTHLY ACTIVITY","2023-03-10 00:00:00","2023-11-23 15:20:38");
INSERT INTO expenses VALUES("360","er-20231123-032205","18","2","1","1","6","25000","(25000 RPS) PAID TO DR HUMA TABBUSUM FOR MONTHLY ACTIVITY","2023-03-09 00:00:00","2023-11-23 15:22:05");
INSERT INTO expenses VALUES("361","er-20231123-032300","18","2","1","1","6","25000","(25000 RPS PAID) TO DR SOHAIL DILWAR FOR MONTHLY ACTIVITY","2023-03-09 00:00:00","2023-11-23 15:23:00");
INSERT INTO expenses VALUES("362","er-20231123-032406","18","2","1","1","6","40000","(40,000 RPS PAID) TO DR ARIF ALI FOR MONTHLY ACTIVITY","2023-03-18 00:00:00","2023-11-23 15:24:06");
INSERT INTO expenses VALUES("363","er-20231123-032515","18","2","1","1","6","20000","(20,000 RPS PAID) TO DR TARIQ FOR MONTHLY ACTIVTY","2023-03-29 00:00:00","2023-11-23 15:25:15");
INSERT INTO expenses VALUES("364","er-20231123-032654","18","2","1","1","6","50000","(50,000 RPS PAID) TO DR YASIR FROM IMRAN SB FOR MONTHLY ACTIVTY","2023-03-18 00:00:00","2023-11-23 15:26:54");
INSERT INTO expenses VALUES("365","er-20231123-033111","20","2","1","1","6","1600000","(FROM RAPID DISTIBUTORS)  TO OVATION HEALTH CARE 
CHEQUE NO 66769668    (FIVE LAC)
CHEQUE NO 66769666    (FIVE LAC)
CHEQUE NO 66769669    (SIX LAC)","2023-03-16 00:00:00","2023-11-23 15:31:11");
INSERT INTO expenses VALUES("366","er-20231123-033931","20","2","1","1","6","19278","(19,278 RPS RCVD) FROM BABA MEDICAL  TO OVATION HEALTH CARE","2023-03-13 00:00:00","2023-11-23 15:39:31");
INSERT INTO expenses VALUES("367","er-20231123-034028","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-03-06 00:00:00","2023-11-23 15:40:28");
INSERT INTO expenses VALUES("368","er-20231123-034131","20","2","1","1","6","5000","(5000 RPS RCVD) FOR PETI CASH","2023-03-20 00:00:00","2023-11-23 15:41:31");
INSERT INTO expenses VALUES("369","er-20231123-034311","20","2","1","1","6","4000","(4000 RPS) RCVD FOR PETI CASH","2023-03-14 00:00:00","2023-11-23 15:43:11");
INSERT INTO expenses VALUES("370","er-20231123-035456","11","2","1","1","6","270","(270 RPS) EXPENSE FOR LUNCH","2023-03-01 00:00:00","2023-11-23 15:54:56");
INSERT INTO expenses VALUES("371","er-20231123-035555","11","2","1","1","6","480","(480 RPS) EXPENSE FOR OFFICE USES ITEMS","2023-03-03 00:00:00","2023-11-23 15:55:55");
INSERT INTO expenses VALUES("372","er-20231123-035710","11","2","1","1","6","1695","(1695 RPS) EXPENSE FOR OFFICE USE ITEM","2023-03-15 00:00:00","2023-11-23 15:57:10");
INSERT INTO expenses VALUES("373","er-20231124-102600","5","2","1","1","6","200000","(SALARY OF APR 2023) MR ZULFIQAR BALOCH SLARY IS (TWO LAC RPS PAID)","2023-05-01 00:00:00","2023-11-24 10:26:00");
INSERT INTO expenses VALUES("374","er-20231124-102731","5","2","1","1","6","45000","(SALARY OF APR 2023) MR RIZWAN MASOOD SALARY IS (FORTY FIVE THOUSAND RPS PAID)","2023-05-01 00:00:00","2023-11-24 10:27:31");
INSERT INTO expenses VALUES("375","er-20231124-103004","5","2","1","1","6","18000","(SALARY OF APR 2023) MR KHUDA BAKSH SALARY IS (18000 RPS PAID ADVCNCE)","2023-04-18 00:00:00","2023-11-24 10:30:04");
INSERT INTO expenses VALUES("376","er-20231124-104046","5","2","1","1","6","120000","(SALARY OF APR 2023) MR IMRAN UDDIN SALARY IS (120000 PAID)","2023-05-01 00:00:00","2023-11-24 10:40:46");
INSERT INTO expenses VALUES("377","er-20231124-104201","5","2","1","1","6","55000","(SALARY OF APR 2023) MISS FATIMA IMRAN SALARY IS (55000 RPS PAID)","2023-05-01 00:00:00","2023-11-24 10:42:01");
INSERT INTO expenses VALUES("378","er-20231124-104407","5","2","1","1","6","55000","(SALARY OF APR 2023) MIS NAJMA SULTANA SALARY IS (55000 RPS) PAID","2023-05-01 00:00:00","2023-11-24 10:44:07");
INSERT INTO expenses VALUES("379","er-20231124-104734","5","2","1","1","6","25000","(SALARY OF APR 2023) MR WARIS QURESHI SALARY IS (25000 RPS PAID)","2023-05-01 00:00:00","2023-11-24 10:47:34");
INSERT INTO expenses VALUES("380","er-20231124-104916","5","2","1","1","6","35000","(SALARY OF APR 2023) MR HUSSSAIN SALARY IS (35000 RPS PAID)","2023-04-19 00:00:00","2023-11-24 10:49:16");
INSERT INTO expenses VALUES("381","er-20231124-105030","13","2","1","1","6","400000","(FOUR LAC RPS PAID) GENNEC MANUFACTURE HEALTH SCIENCE","2023-04-27 00:00:00","2023-11-24 10:50:30");
INSERT INTO expenses VALUES("382","er-20231124-105502","2","2","1","1","6","1849","K ELECTRIC BILL (1849 PAID)","2023-04-20 00:00:00","2023-11-24 10:55:02");
INSERT INTO expenses VALUES("383","er-20231124-105651","17","2","1","1","6","1260","MAR 2023 SSGC BILL (1260 PAID)","2023-04-12 00:00:00","2023-11-24 10:56:51");
INSERT INTO expenses VALUES("384","er-20231124-105840","11","2","1","1","6","3000","MOBILE BILL PERSNOL (3000 RPS)","2023-04-18 00:00:00","2023-11-24 10:58:40");
INSERT INTO expenses VALUES("385","er-20231124-105931","16","2","1","1","6","3200","PTCL BILL (3200 RPS PAID)","2023-04-18 00:00:00","2023-11-24 10:59:31");
INSERT INTO expenses VALUES("386","er-20231124-110132","19","2","1","1","6","5000","A.M ELECTRONIC DISPENSER INSTALMENT (5000 PAID) 5/6","2023-04-04 00:00:00","2023-11-24 11:01:32");
INSERT INTO expenses VALUES("387","er-20231124-110239","11","2","1","1","6","900","WATER TANKER EXPENSE IS (900 RPS)","2023-04-13 00:00:00","2023-11-24 11:02:39");
INSERT INTO expenses VALUES("388","er-20231124-110332","11","2","1","1","6","1000","WATER TANKER EXPENSE IS (1000 RPS)","2023-04-19 00:00:00","2023-11-24 11:03:32");
INSERT INTO expenses VALUES("389","er-20231124-110423","11","2","1","1","6","900","WATER TANKER EXPENSE IS (900 RPS)","2023-04-29 00:00:00","2023-11-24 11:04:23");
INSERT INTO expenses VALUES("390","er-20231124-110521","18","2","1","1","6","25000","(25000 RPS PAID) TO DR SOHAIL DILWAR FOR MONTHLY ACTIVITY","2023-04-07 00:00:00","2023-11-24 11:05:21");
INSERT INTO expenses VALUES("391","er-20231124-110653","18","2","1","1","6","25000","(25000 RPS PAID) TO DR HUMA TABUSSUM FOR MONTHLY ACTIVITY","2023-04-07 00:00:00","2023-11-24 11:06:53");
INSERT INTO expenses VALUES("392","er-20231124-110808","18","2","1","1","6","20000","(20,000 RPS PAID) TO DR KAHLIL BABER FOR MONTHLY ACTIVITY","2023-04-07 00:00:00","2023-11-24 11:08:08");
INSERT INTO expenses VALUES("393","er-20231124-110914","18","2","1","1","6","20000","(20,000 RPS PAID) TP DR TARIQ FOR MAONTHLY ACTIVITY","2023-04-19 00:00:00","2023-11-24 11:09:14");
INSERT INTO expenses VALUES("394","er-20231124-111051","18","2","1","1","6","30000","(30,000  RPS PAID) TO DR MUZAMIL FOR MONTHLY ACTIVITY","2023-04-12 00:00:00","2023-11-24 11:10:51");
INSERT INTO expenses VALUES("395","er-20231124-111147","18","2","1","1","6","100000","(ONE LAC RPS) PAID TO DR PIR MUJTABA","2023-04-07 00:00:00","2023-11-24 11:11:47");
INSERT INTO expenses VALUES("396","er-20231124-111414","18","2","1","1","6","40000","40,000 RPS PAID DR ARIF FOR MONTHLY ACTIVITY","2023-04-17 00:00:00","2023-11-24 11:14:14");
INSERT INTO expenses VALUES("397","er-20231124-111716","6","2","1","1","6","73000","(73000 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-04-03 00:00:00","2023-11-24 11:17:16");
INSERT INTO expenses VALUES("398","er-20231124-112050","6","2","1","1","6","88200","(88,200 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-04-03 00:00:00","2023-11-24 11:20:50");
INSERT INTO expenses VALUES("399","er-20231124-113811","6","2","1","1","6","61900","(61,900 RPS PAID) TO IMRAN UDDIN FOR MONTHLY ACTIVITY","2023-04-10 00:00:00","2023-11-24 11:38:11");
INSERT INTO expenses VALUES("400","er-20231124-123236","6","2","1","1","6","71450","(71,450 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-04-17 00:00:00","2023-11-24 12:32:36");
INSERT INTO expenses VALUES("401","er-20231124-010027","20","2","1","1","6","1600000","(SIXTEEN LAC RPS) RCVD FROM RAPID DISTIBUTORS TO OVATION HEALTH CARE","2023-04-18 00:00:00","2023-11-24 13:00:27");
INSERT INTO expenses VALUES("402","er-20231124-010146","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-04-08 00:00:00","2023-11-30 15:50:20");
INSERT INTO expenses VALUES("403","er-20231124-010244","20","2","1","1","6","1400","(1400 RPS) RCVD FOR PERTI CASH","2023-04-04 00:00:00","2023-11-24 13:02:44");
INSERT INTO expenses VALUES("404","er-20231124-010355","20","2","1","1","6","38828","(38,828 RPS) RCVD FROM BABA MEDICAL STORE TO OVATION HEALTH CARE","2023-04-07 00:00:00","2023-11-24 13:03:55");
INSERT INTO expenses VALUES("405","er-20231124-010514","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-04-04 00:00:00","2023-11-24 13:05:14");
INSERT INTO expenses VALUES("406","er-20231124-010605","20","2","1","1","6","7200","(7200 RPS) RCVD FROM RAZIA MEDICAL STORE","2023-04-20 00:00:00","2023-11-24 13:06:05");
INSERT INTO expenses VALUES("407","er-20231124-010701","11","2","1","1","6","3534","(3534 RPS) EXPENSE FOR OFFICE USES","2023-04-09 00:00:00","2023-11-24 13:07:01");
INSERT INTO expenses VALUES("408","er-20231124-010855","11","2","1","1","6","1100","(1100) RPS EXPESE FOR CLEANING OUT SIDE","2023-05-01 00:00:00","2023-11-24 13:08:55");
INSERT INTO expenses VALUES("409","er-20231124-011539","7","2","1","1","6","500","500 RPS EXPENSE  FOR DAILY USES","2023-11-22 00:00:00","2023-11-24 13:15:39");
INSERT INTO expenses VALUES("410","er-20231124-011622","7","2","1","1","6","300","300 RPS EXPENSE FOR DAILY OFFICE USES","2023-04-21 00:00:00","2023-11-24 13:16:22");
INSERT INTO expenses VALUES("411","er-20231124-011725","7","2","1","1","6","650","650 RPS EXPENSE FOR DAILY USES EXPENSES","2023-04-20 00:00:00","2023-11-24 13:17:25");
INSERT INTO expenses VALUES("412","er-20231124-011807","7","2","1","1","6","150","150 RPS EXPENSE FOR DAILY OFFICE USES","2023-11-23 00:00:00","2023-11-24 13:18:07");
INSERT INTO expenses VALUES("413","er-20231124-013542","5","2","1","1","6","200000","(SALARY OF MAY 2023) MR ZULFIQAR BALOCH SALRY IS (TWO LAC RPS)","2023-06-06 00:00:00","2023-11-24 13:35:42");
INSERT INTO expenses VALUES("414","er-20231124-013734","5","2","1","1","6","45000","(SALARY OF MAY 2023) MR RIZWAN MASOOD SALARY IS (45000 RPS PAID)","2023-06-06 00:00:00","2023-11-24 13:37:34");
INSERT INTO expenses VALUES("415","er-20231124-014043","5","2","1","1","6","10000","(SALARY OF MAY 2023) MR KHUDA BAKSH SALARY IS (10000 ADVNCE 5000)","2023-06-06 00:00:00","2023-11-24 13:40:43");
INSERT INTO expenses VALUES("416","er-20231124-014138","5","2","1","1","6","120000","(SALARY OF MAY 2023) MR IMRAN UDDIN SALARY IS (120000 RPS PAID)","2023-06-06 00:00:00","2023-11-24 13:41:38");
INSERT INTO expenses VALUES("417","er-20231124-014248","5","2","1","1","6","55000","(SALARY OF MAY 2023) MISS FATIMA IMRAN SALARY IS (55000 RPS PAID)","2023-06-06 00:00:00","2023-11-24 13:42:48");
INSERT INTO expenses VALUES("418","er-20231124-014359","5","2","1","1","6","55000","(SALARY OF MAY 2023) MISS NAJMA SULTANA SALARY IS (55000 RPS PAID)","2023-06-06 00:00:00","2023-11-24 13:43:59");
INSERT INTO expenses VALUES("419","er-20231124-014724","5","2","1","1","6","28000","(SALARY OF MAY 2023) MISS HINA KHAN SALARY IS (28000 RPS PAID)   5000 RPS HOLD AS A SECURITY DEPOSIT","2023-06-06 00:00:00","2023-11-24 13:47:24");
INSERT INTO expenses VALUES("420","er-20231124-014901","5","2","1","1","6","35000","(SALARY OF MAY 2023) MR HUSSAIN SALARY IS (35000 RPS PAID)","2023-06-06 00:00:00","2023-11-24 13:49:01");
INSERT INTO expenses VALUES("421","er-20231124-015013","5","2","1","1","6","40000","(SALARY OF MAY 2023) MR WARIS QURESHI SALARY IS (40000 RPS PAID)","2023-06-06 00:00:00","2023-11-24 13:50:13");
INSERT INTO expenses VALUES("422","er-20231124-015241","9","2","1","1","6","35000","(RENT OF MAY 2023) OFFICE RENT IS (35000 RPS PAID) TO MR M.AMIN","2023-04-27 00:00:00","2023-11-24 13:52:41");
INSERT INTO expenses VALUES("423","er-20231124-015422","19","2","1","1","6","5000","A.M ELECTRONIC DISPERSER INSTALMENT IS (5000 PAID) CLOSED..","2023-04-02 00:00:00","2023-11-24 13:54:22");
INSERT INTO expenses VALUES("424","er-20231124-015557","17","2","1","1","6","450","(450 RPS) SSGC BILL PAID","2023-05-15 00:00:00","2023-11-24 13:55:57");
INSERT INTO expenses VALUES("425","er-20231124-015658","21","2","1","1","6","76000","(76000 RPS) PAID TP COMBINE PRINTING","2023-05-15 00:00:00","2023-11-24 13:56:58");
INSERT INTO expenses VALUES("426","er-20231124-015804","16","2","1","1","6","3170","(3170  RPS) PTCL BILL PAID","2023-05-19 00:00:00","2023-11-24 13:58:04");
INSERT INTO expenses VALUES("427","er-20231124-015922","9","2","1","1","6","3000","MOBILE BILL IS (3000 RPS)","2023-05-19 00:00:00","2023-11-24 13:59:22");
INSERT INTO expenses VALUES("428","er-20231124-020102","11","2","1","1","6","15000","(15000 RPS) EXPENSE SUPER SOFT TEC","2023-05-22 00:00:00","2023-11-24 14:01:02");
INSERT INTO expenses VALUES("429","er-20231124-020243","2","2","1","1","6","1601","K ELECTRIC BILL IS (1601 PAID)","2023-05-23 00:00:00","2023-11-24 14:02:43");
INSERT INTO expenses VALUES("430","er-20231124-020840","11","2","1","1","6","100000","(ONE LAC RPS) PAID MR KHALID HUSSAIN LAWYER","2023-05-25 00:00:00","2023-11-24 14:08:40");
INSERT INTO expenses VALUES("431","er-20231124-021011","13","2","1","1","6","100000","(ONE LAC RPS PAID) TO GENNEC MANUFACTURE","2023-05-31 00:00:00","2023-11-24 14:10:11");
INSERT INTO expenses VALUES("432","er-20231124-021111","11","2","1","1","6","1000","(1000 RPS) EXPNSE FOR WATER TANKER","2023-05-13 00:00:00","2023-11-24 14:11:11");
INSERT INTO expenses VALUES("433","er-20231124-021205","11","2","1","1","6","1000","(1000 RPS) EXPENSE FOR WATER TANKER","2023-05-06 00:00:00","2023-11-24 14:12:05");
INSERT INTO expenses VALUES("434","er-20231124-021251","11","2","1","1","6","1000","(1000 RPS) EXPENSE FOR WATER TANKER","2023-05-11 00:00:00","2023-11-24 14:12:51");
INSERT INTO expenses VALUES("435","er-20231124-021427","11","2","1","1","6","1000","(1000 RPS) EXPENSE FOR WATER TANKER","2023-05-19 00:00:00","2023-11-24 14:14:27");
INSERT INTO expenses VALUES("436","er-20231124-021510","11","2","1","1","6","1000","(1000 RPS) EXPENSE FOR WATER TANKER","2023-05-23 00:00:00","2023-11-24 14:15:10");
INSERT INTO expenses VALUES("437","er-20231124-021617","11","2","1","1","6","1000","(1000 RPS) EXPENSE FOR WATER TANKER","2023-05-30 00:00:00","2023-11-24 14:16:17");
INSERT INTO expenses VALUES("438","er-20231124-021801","22","2","1","1","6","20000","(20,000 RPS) PAID DR KHALIL BADAR FOR  MONTHLY ACTIVITY","2023-05-18 00:00:00","2023-11-24 14:18:01");
INSERT INTO expenses VALUES("439","er-20231124-022134","18","2","1","1","6","20000","20,000 RPS PAID TP DR TARIQ ALI KHAN WARD 2 FOR ACTIVITY","2023-05-18 00:00:00","2023-11-24 14:21:34");
INSERT INTO expenses VALUES("440","er-20231124-022252","18","2","1","1","6","25000","(25000 RPS PAID) TO DR SOHAIL DILAWAR FOR ACTIVITY","2023-05-18 00:00:00","2023-11-24 14:22:52");
INSERT INTO expenses VALUES("441","er-20231124-022354","18","2","1","1","6","25000","(25000 RPS PAID) TO DR HUMA TABBUSUM FOR ACTIVITY","2023-05-18 00:00:00","2023-11-24 14:23:54");
INSERT INTO expenses VALUES("442","er-20231124-022448","18","2","1","1","6","40000","(40000 RPS PAID) TO DR ARIF ALI FOR ACTIVITY","2023-05-18 00:00:00","2023-11-24 14:24:48");
INSERT INTO expenses VALUES("443","er-20231124-022612","18","2","1","1","6","15000","(15000 RPS PAID) TO DR MUZAMMIL FOR ACTIVITY","2023-05-22 00:00:00","2023-11-24 14:26:12");
INSERT INTO expenses VALUES("444","er-20231124-022743","19","2","1","1","6","12000","(12000 RPS)LED INSTALMENT PAID TO ALI MOMIN","2023-05-24 00:00:00","2023-11-24 14:27:43");
INSERT INTO expenses VALUES("445","er-20231124-022856","18","2","1","1","6","12000","(12000 RPS) PAID TO DR PYARE ALI FOR ACTIVITY","2023-05-19 00:00:00","2023-11-24 14:28:56");
INSERT INTO expenses VALUES("446","er-20231124-023052","19","2","1","1","6","10000","(10,000 RPS) PAID TO DR ASHRAF MOBILE INSTALMNT (ACTIVITY)","2023-05-19 00:00:00","2023-11-24 14:30:52");
INSERT INTO expenses VALUES("447","er-20231124-023155","18","2","1","1","6","30000","(30,000 RPS) PAID TO DR RAFIQUE  FOR ACTIVITY","2023-05-15 00:00:00","2023-11-24 14:31:55");
INSERT INTO expenses VALUES("448","er-20231124-023258","21","2","1","1","6","10000","(10,000 PAID) TO COMBINE PRINTING","2023-05-19 00:00:00","2023-11-24 14:32:58");
INSERT INTO expenses VALUES("449","er-20231124-023511","6","2","1","1","6","42230","(42,230 RPS) PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY ACTIVITY CONVER (MAY 2023)","2023-04-24 00:00:00","2023-11-24 14:35:11");
INSERT INTO expenses VALUES("450","er-20231124-025345","6","2","1","1","6","54850","(54,850 RPS PAID) TO MR IMRAN UDDIN FOR WWEKLY ACTIVITY","2023-05-01 00:00:00","2023-11-24 14:53:45");
INSERT INTO expenses VALUES("451","er-20231124-032102","6","2","1","1","6","67300","(67,300 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVTY","2023-05-08 00:00:00","2023-11-30 15:25:41");
INSERT INTO expenses VALUES("452","er-20231124-040655","6","2","1","1","6","82160","(82,160 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-05-15 00:00:00","2023-11-24 16:06:55");
INSERT INTO expenses VALUES("453","er-20231124-044418","6","2","1","1","6","111100","(111,100 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-05-22 00:00:00","2023-11-24 16:44:18");
INSERT INTO expenses VALUES("454","er-20231124-052209","6","2","1","1","6","59200","(59,200 RPS) PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVTY","2023-05-29 00:00:00","2023-11-24 17:22:09");
INSERT INTO expenses VALUES("455","er-20231125-102932","20","2","1","1","6","1500000","(FIFTEEN LAC RPS) RCVD FROM RAPID DISTIBUTORS TO HEALTH CARE
CHEQ NO  66769709     (FIVE LAC RPS)
CHEQ NO  66769710     (FIVE LAC RPS)
CHEQ NO  66769711     (FIVE LAC RPS)","2023-05-18 00:00:00","2023-11-25 10:29:32");
INSERT INTO expenses VALUES("456","er-20231125-103030","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-05-16 00:00:00","2023-11-25 10:30:30");
INSERT INTO expenses VALUES("457","er-20231125-103454","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-05-16 00:00:00","2023-11-25 10:34:54");
INSERT INTO expenses VALUES("458","er-20231125-103658","20","2","1","1","6","4000","(4000 RPS) RCVD FROM DR IRFAN (NOOR MEDICAL)","2023-05-29 00:00:00","2023-11-25 10:36:58");
INSERT INTO expenses VALUES("459","er-20231125-103911","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-05-24 00:00:00","2023-11-25 10:39:11");
INSERT INTO expenses VALUES("460","er-20231125-104021","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-05-25 00:00:00","2023-11-25 10:40:21");
INSERT INTO expenses VALUES("461","er-20231125-104131","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-05-17 00:00:00","2023-11-25 10:41:31");
INSERT INTO expenses VALUES("462","er-20231125-104307","20","2","1","1","6","19718","(19,718 RPS) RCVD FRO S-J GHANNI & BABA MEDICAL STORE TO OVATION HEALTH CARE","2023-05-08 00:00:00","2023-11-25 10:43:07");
INSERT INTO expenses VALUES("463","er-20231125-104428","11","2","1","1","6","1100","(1100 RPS) EXPENSE FOR OUTSIDE CLEANING","2023-05-22 00:00:00","2023-11-25 10:44:28");
INSERT INTO expenses VALUES("464","er-20231125-104632","11","2","1","1","6","520","(520 RPS)EXPENSE FOR KHALID LAWYER","2023-05-24 00:00:00","2023-11-25 10:46:32");
INSERT INTO expenses VALUES("465","er-20231125-104745","11","2","1","1","6","1300","(1300 RPS) EXPENSE FOR OFFICE STAFF LUNCH BY ZULIFQAR BALOCH","2023-05-29 00:00:00","2023-11-25 10:47:45");
INSERT INTO expenses VALUES("466","er-20231125-104807","11","2","1","1","6","1100","(1100RPS) EXPENSE FOR OUT SIDE CLEANING","2023-05-29 00:00:00","2023-11-30 15:56:36");
INSERT INTO expenses VALUES("467","er-20231125-105121","11","2","1","1","6","2210","(2210 RPS) EXPENSE FOR STAFF LUNCH  AND MILK","2023-05-22 00:00:00","2023-11-25 10:51:21");
INSERT INTO expenses VALUES("468","er-20231125-105335","11","2","1","1","6","350","(350 RPS) EXPENSE FOR BIKYEA RIDER (KHALID LAWYER  DOCS)","2023-05-20 00:00:00","2023-11-25 10:53:35");
INSERT INTO expenses VALUES("469","er-20231125-105446","11","2","1","1","6","400","(400 RPS) EXPENSE  FOR LOCK CHANGE","2023-05-19 00:00:00","2023-11-25 10:54:46");
INSERT INTO expenses VALUES("470","er-20231125-105611","11","2","1","1","6","1650","(1650 RPS) EXPENSE FOR WARDROBE LOCK CHANGE","2023-05-08 00:00:00","2023-11-25 10:56:11");
INSERT INTO expenses VALUES("471","er-20231125-110159","5","2","1","1","6","200000","(SALARY OF JUNE 2023)  MR ZULFIQAR BALOCH  SALARY IS (TWO LAC RPS)","2023-06-26 00:00:00","2023-11-25 11:01:59");
INSERT INTO expenses VALUES("472","er-20231125-110318","5","2","1","1","6","45000","(SALARY OF JUNE 2023) MR RIZWAN MASOOD SALARY IS (45000 RPS PAID)","2023-06-26 00:00:00","2023-11-25 11:03:18");
INSERT INTO expenses VALUES("473","er-20231125-110614","5","2","1","1","6","10000","(SALARY OF  JUNE 2023) MR AHMED SALARY IS (10000 RPS) FOR (10 DAY)","2023-05-26 00:00:00","2023-11-25 11:06:14");
INSERT INTO expenses VALUES("474","er-20231125-110727","5","2","1","1","6","120000","(SALARY OF JUNE 2023) MR IMRAN UDDIN SALARY IS (120000 RPS PAID)","2023-06-26 00:00:00","2023-11-25 11:07:27");
INSERT INTO expenses VALUES("475","er-20231125-110916","5","2","1","1","6","55000","(SALARY OF JUNE 2023) MISS FATIMA IMRAN SALARY IS (55000 RPS PAID)","2023-06-26 00:00:00","2023-11-25 11:09:16");
INSERT INTO expenses VALUES("476","er-20231125-111124","5","2","1","1","6","43000","(SALARY OF JUNE 2023) MS HINA KHAN SALARY IS (43000 RPS PAID) 2000 RPS HOLD AS A SECURITY DEPOSIT","2023-06-26 00:00:00","2023-11-25 11:11:24");
INSERT INTO expenses VALUES("477","er-20231125-111308","5","2","1","1","6","35000","(SALARY OF JUNE 2023)MR HUSSAIN SALARY IS (35000 RPS PAID)","2023-06-26 00:00:00","2023-11-25 11:13:08");
INSERT INTO expenses VALUES("478","er-20231125-111513","5","2","1","1","6","40000","(SALARY OF JUNE 2023) MR WARIS QURESHI SALARY IS (40000 RPS PAID)","2023-06-26 00:00:00","2023-11-25 11:15:13");
INSERT INTO expenses VALUES("479","er-20231125-111642","9","2","1","1","6","35000","OFFICE RENT (35000 RPS PAID) TO MR AMIN LANDLORD","2023-06-23 00:00:00","2023-11-25 11:16:42");
INSERT INTO expenses VALUES("480","er-20231125-111902","17","2","1","1","6","440","SSGC BILL (440 RPS PAID)","2023-06-09 00:00:00","2023-11-25 11:19:02");
INSERT INTO expenses VALUES("481","er-20231125-112047","21","2","1","1","6","36000","(36000 RPS) PAID TO COMBINE PRINTING","2023-06-06 00:00:00","2023-11-25 11:20:47");
INSERT INTO expenses VALUES("482","er-20231125-112305","18","2","1","1","6","20500","(20500 RPS) FOR AL TIBRI MEDICAL COLLEGE ACTIVITY","2023-06-07 00:00:00","2023-11-25 11:23:05");
INSERT INTO expenses VALUES("483","er-20231125-112454","16","2","1","1","6","6660","PTCL BILL  (3160 RPS)
UFONE  POSTPAID BILL (3500 RPS)   ALL PAID","2023-06-20 00:00:00","2023-11-25 11:24:54");
INSERT INTO expenses VALUES("484","er-20231125-113738","2","2","1","1","6","2449","(2449 RPS PAID)  K ELCTRIC BILL P","2023-06-21 00:00:00","2023-11-25 11:37:38");
INSERT INTO expenses VALUES("485","er-20231125-114025","11","2","1","1","6","200000","(TWO LAC RPS PAID) TO KHALID HUSSAIN LAWYER (TRADE MARK) DEMAND NOTE TRANFER","2023-06-08 00:00:00","2023-11-25 11:40:25");
INSERT INTO expenses VALUES("486","er-20231125-114152","11","2","1","1","6","1000","(1000 RPS) EXPENSE WATER TANKER","2023-06-06 00:00:00","2023-11-25 11:41:52");
INSERT INTO expenses VALUES("487","er-20231125-114240","11","2","1","1","6","1000","(1000 RPS) EXPENSE FOR WATER TANKER","2023-06-13 00:00:00","2023-11-25 11:42:40");
INSERT INTO expenses VALUES("488","er-20231125-114404","11","2","1","1","6","1000","(1000 RPS) EXPENSE FOR WATER TANKER","2023-06-19 00:00:00","2023-11-25 11:44:04");
INSERT INTO expenses VALUES("489","er-20231125-114453","11","2","1","1","6","1000","(1000 RPS) EXPENSE WATER TANKER","2023-06-26 00:00:00","2023-11-25 11:44:53");
INSERT INTO expenses VALUES("490","er-20231125-114610","18","2","1","1","6","25000","(25000 RPS PAID) DR SOHAIL DILWAER FOR ACTIVITY","2023-06-19 00:00:00","2023-11-25 11:46:10");
INSERT INTO expenses VALUES("491","er-20231125-114827","18","2","1","1","6","40000","(40,000 RPS PAID) TO DR ARIF ALI  FOR ACTIVITY","2023-06-19 00:00:00","2023-11-25 11:48:27");
INSERT INTO expenses VALUES("492","er-20231125-115038","18","2","1","1","6","20000","(20,000 RPS PAID) TO DR TARIQ FOR WARD ACTIVITY FUND","2023-06-19 00:00:00","2023-11-25 11:50:38");
INSERT INTO expenses VALUES("493","er-20231125-115235","18","2","1","1","6","15000","(15000 RPS PAID) TO DR MUZAMIL FOR ACTIVITY","2023-06-19 00:00:00","2023-11-25 11:52:35");
INSERT INTO expenses VALUES("494","er-20231125-115354","18","2","1","1","6","20000","(20,000 RPS PAID) TO DR KHALIL UR REHMAN FOR ACTIVITY CIVIL WARD 1","2023-06-16 00:00:00","2023-11-25 11:53:54");
INSERT INTO expenses VALUES("495","er-20231125-115636","18","2","1","1","6","25000","(25000 RPS PAID) TO DR HUMA TABBUSUM MALIK FOR ACTIVITY","2023-06-22 00:00:00","2023-11-25 11:56:36");
INSERT INTO expenses VALUES("496","er-20231125-115942","19","2","1","1","6","24000","(24000 RPS) DR IQBAL KIYAN  BUYING AC ON INSTALMENT  TAJ MEDICAL","2023-06-19 00:00:00","2023-11-25 11:59:42");
INSERT INTO expenses VALUES("497","er-20231125-120050","6","2","1","1","6","58100","(58,100 RPS) PAID  TO MR IMRAN UDDIN FOR WEEKLY ACTIVTY","2023-06-06 00:00:00","2023-11-25 12:00:50");
INSERT INTO expenses VALUES("498","er-20231125-125602","6","2","1","1","6","85000","(85000 RPS) PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-06-12 00:00:00","2023-11-25 12:56:02");
INSERT INTO expenses VALUES("499","er-20231125-014309","6","2","1","1","6","71200","(71,200 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-06-19 00:00:00","2023-11-25 13:43:09");
INSERT INTO expenses VALUES("500","er-20231125-020353","6","2","1","1","6","90250","(75,250 & 15000 ADJUSTMENT PHARMAX  RPS PAID)  TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-06-26 00:00:00","2023-11-30 14:53:58");
INSERT INTO expenses VALUES("501","er-20231125-023521","11","2","1","1","6","5000","(5000 RPS) EXPENSE FOR PHARMAY","2023-06-26 00:00:00","2023-11-25 14:35:21");
INSERT INTO expenses VALUES("502","er-20231125-023624","19","2","1","1","6","10000","(10,000 RPS) EXPENSE FOR MOBILE INSTALMNT TO DR ASHFAQ","2023-06-26 00:00:00","2023-11-25 14:36:24");
INSERT INTO expenses VALUES("503","er-20231125-023724","19","2","1","1","6","12000","(12000 RPS) ON LED INSTALMNT FOR DR PIYARE -ALI MOMIN","2023-06-26 00:00:00","2023-11-25 14:37:24");
INSERT INTO expenses VALUES("504","er-20231125-023859","11","2","1","1","6","1500","(1500 RPS) EXPENSE TO STAFF LUNCH ON MONDAY","2023-06-19 00:00:00","2023-11-25 14:38:59");
INSERT INTO expenses VALUES("505","er-20231125-023947","11","2","1","1","6","1200","(1200 RPS) EXPENSE FOR STAFF LUNCH ON MONDAY","2023-06-26 00:00:00","2023-11-25 14:39:47");
INSERT INTO expenses VALUES("506","er-20231125-024123","6","2","1","1","6","50000","(50,000 RPS) PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-06-05 00:00:00","2023-11-25 14:41:23");
INSERT INTO expenses VALUES("507","er-20231125-024232","11","2","1","1","6","1550","(1550 RPS) EXPENSE FOR STAF LUNCH","2023-06-06 00:00:00","2023-11-25 14:42:32");
INSERT INTO expenses VALUES("508","er-20231125-024330","11","2","1","1","6","6000","(6000 RPS) EXPENSE FOR REFRIGRATOR OIL CHANGE GAS REFIL","2023-06-06 00:00:00","2023-11-25 14:43:30");
INSERT INTO expenses VALUES("509","er-20231125-024451","20","2","1","1","6","1000000","(ONE MILLION) RPS FROM RAPID PHARMA  TO OVATION HEALTH CARE","2023-06-17 00:00:00","2023-11-25 14:44:51");
INSERT INTO expenses VALUES("510","er-20231125-024616","20","2","1","1","6","500000","(FIVE LAC RPS) RCVD FROM RAPID PHARMA TO OVATION HEALTH CARE","2023-06-20 00:00:00","2023-11-25 14:46:16");
INSERT INTO expenses VALUES("511","er-20231125-024720","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-06-12 00:00:00","2023-11-25 14:47:20");
INSERT INTO expenses VALUES("512","er-20231125-024806","20","2","1","1","6","5000","(5000 RPS) RCVD FOR PETI CASH","2023-06-09 00:00:00","2023-11-25 14:48:06");
INSERT INTO expenses VALUES("513","er-20231125-024915","20","2","1","1","6","6426","(6426 RPS) RCVD FROM DR SHAZIA RUB NAWAZ TO OVATION HEALTH CARE","2023-06-12 00:00:00","2023-11-25 14:49:15");
INSERT INTO expenses VALUES("514","er-20231125-025040","20","2","1","1","6","6426","(6426 RPS) RCVD FROM DR SHAZIA RUB NAWAZ TO OVATION HEALTH CARE","2023-06-12 00:00:00","2023-11-25 14:50:40");
INSERT INTO expenses VALUES("515","er-20231125-025224","20","2","1","1","6","12444","12,444 RPS RCVD FROM BABA MEDICAL STORE TO OVATION HEALTH CARE","2023-06-01 00:00:00","2023-11-25 14:52:24");
INSERT INTO expenses VALUES("516","er-20231125-025408","20","2","1","1","6","28114","(28,114 RPS) RCVD FROM IRFAN NOOR MEDICAL","2023-06-26 00:00:00","2023-11-25 14:54:08");
INSERT INTO expenses VALUES("517","er-20231125-025504","20","2","1","1","6","600000","(SIX LAC RPS) RCVD TO OVATION HEALTH CARE","2023-06-24 00:00:00","2023-11-25 14:55:04");
INSERT INTO expenses VALUES("518","er-20231125-031457","5","2","1","1","6","200000","(SALARY OF JUL 2023) MR ZULIFQAR BALOCH SALARY IS (TWO LAC RPS)","2023-07-31 00:00:00","2023-11-25 15:14:57");
INSERT INTO expenses VALUES("519","er-20231125-031731","5","2","1","1","6","40500","(SALARY OF JUL 2023) MR RIZWAN MASOOD SALARY IS (40500) PAID","2023-07-01 00:00:00","2023-11-25 15:17:31");
INSERT INTO expenses VALUES("520","er-20231125-031948","5","2","1","1","6","5000","(SALARY OF JUL 2023) MR AHMED SALARY IS (5000 RPS) 10000 RCVD IN ADVNCE","2023-07-31 00:00:00","2023-11-25 15:19:48");
INSERT INTO expenses VALUES("521","er-20231125-032103","5","2","1","1","6","120000","(SALARY OF JUL 2023) MR IMRAN UDDIN SALARY IS (120000 RPS PAID)","2023-07-31 00:00:00","2023-11-25 15:21:03");
INSERT INTO expenses VALUES("522","er-20231125-032243","5","2","1","1","6","55000","(SALARY OF JUL 2023) MS FATIMA IMRAN SALARY IS (55000 RPS PAID)","2023-07-31 00:00:00","2023-11-25 15:22:43");
INSERT INTO expenses VALUES("523","er-20231125-032428","5","2","1","1","6","43000","(SALARY OF JULY 2023) MISS HINA KHAN SALARY IS (43000 RPS PAID)","2023-07-31 00:00:00","2023-11-25 15:24:28");
INSERT INTO expenses VALUES("524","er-20231125-032554","5","2","1","1","6","35000","(SALARY OF JULY 2023) MR HUSSAIN SALARY IS (35000 RPS PAID)","2023-07-31 00:00:00","2023-11-25 15:25:54");
INSERT INTO expenses VALUES("525","er-20231125-032727","5","2","1","1","6","40000","(SALARY OF JULY 2023) MR WARIS QURESHI SALARY IS (40000 RPS PAID)","2023-07-31 00:00:00","2023-11-25 15:27:27");
INSERT INTO expenses VALUES("526","er-20231125-032935","7","2","1","1","6","1500","ANEELA 1 DAY EXPENSE 1500 RPS","2023-07-31 00:00:00","2023-11-25 15:29:35");
INSERT INTO expenses VALUES("527","er-20231125-033042","7","2","1","1","6","1500","MISS KANWAL ONE DAY EXPENSE 1500 RPS","2023-07-31 00:00:00","2023-11-25 15:30:42");
INSERT INTO expenses VALUES("528","er-20231125-034616","18","2","1","1","6","25000","25000 RPS TO DR SOHAIL DILAWAR","2023-07-20 00:00:00","2023-11-25 15:46:16");
INSERT INTO expenses VALUES("529","er-20231125-034728","18","2","1","1","6","25000","(25000 RPS) PAID DR HUMA MALIK ANKER SERYA","2023-06-20 00:00:00","2023-11-25 15:47:28");
INSERT INTO expenses VALUES("530","er-20231125-034816","18","2","1","1","6","40000","(40000 RPS) PAID TO DR ARIF ALI FOR ACTIVITY","2023-06-20 00:00:00","2023-11-25 15:48:16");
INSERT INTO expenses VALUES("531","er-20231125-034912","18","2","1","1","6","15000","(15000 RPS) PAID TO DR MUZAMIL FOR ACTIVTY","2023-07-20 00:00:00","2023-11-25 15:49:12");
INSERT INTO expenses VALUES("532","er-20231125-035014","18","2","1","1","6","20000","(20,000 RPS) PAID TO DR TARIQ ALI FOR ACTIVITY","2023-07-20 00:00:00","2023-11-25 15:50:14");
INSERT INTO expenses VALUES("533","er-20231125-035132","18","2","1","1","6","20000","(20,000 RPS) PAID TO DR KHALIL BABER FOR ACTIVTY","2023-07-24 00:00:00","2023-11-25 15:51:32");
INSERT INTO expenses VALUES("534","er-20231125-035226","6","2","1","1","6","55000","(55000 RPS) PAID TO MR IMRAN UDDIN FOR ACTIVTY","2023-07-03 00:00:00","2023-11-25 15:52:26");
INSERT INTO expenses VALUES("535","er-20231125-040924","6","2","1","1","6","75000","(75000 RPS) PAID TO MR IMRAN UDDIN FOR ACTIVTY","2023-07-10 00:00:00","2023-11-25 16:09:24");
INSERT INTO expenses VALUES("536","er-20231125-043224","6","2","1","1","6","93900","(93,900 RPS) PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-07-19 00:00:00","2023-11-25 16:32:24");
INSERT INTO expenses VALUES("537","er-20231125-050828","6","2","1","1","6","88250","(88,250 RPS) PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVTY","2023-07-24 00:00:00","2023-11-25 17:08:28");
INSERT INTO expenses VALUES("538","er-20231128-125720","19","2","1","1","6","29000","(29000 RPS) TO DR IQBAL KIAYANI AC INSTALMNT PHARMAX","2023-07-24 00:00:00","2023-11-28 12:57:20");
INSERT INTO expenses VALUES("539","er-20231128-125938","9","2","1","1","6","35000","35000 RPS PAID TO MR AMIN (LANDLORD) OFFICE RENT","2023-06-22 00:00:00","2023-11-28 12:59:38");
INSERT INTO expenses VALUES("540","er-20231128-010113","13","2","1","1","6","300000","(THREE LAC RPS) PAID TP GENNEC MANUFACTURES","2023-07-21 00:00:00","2023-11-28 13:01:13");
INSERT INTO expenses VALUES("541","er-20231128-010404","16","2","1","1","6","3190","(3190 RPS) PAID TO PTCL BILL (JUNE)","2023-07-21 00:00:00","2023-11-28 13:04:04");
INSERT INTO expenses VALUES("542","er-20231128-010554","16","2","1","1","6","3000","POST PAID BILL U FONE (3000 PAID)","2023-07-21 00:00:00","2023-11-28 13:05:54");
INSERT INTO expenses VALUES("543","er-20231128-010719","2","2","1","1","6","2586","K ELECTRIC BILL (2586 RPS  PAID)","2023-07-25 00:00:00","2023-11-28 13:07:19");
INSERT INTO expenses VALUES("544","er-20231128-010938","14","2","1","1","6","180000","(180,000 PAID) TO TRADE MARK REGRISTRATION PAYMENT","2023-07-13 00:00:00","2023-11-28 13:09:38");
INSERT INTO expenses VALUES("545","er-20231128-011203","21","2","1","1","6","55000","COMBINE PRINTING BILL (55000)","2023-07-26 00:00:00","2023-11-28 13:12:03");
INSERT INTO expenses VALUES("546","er-20231128-011430","11","2","1","1","6","2200","WARDROBE LOCK CHNGE","2023-07-14 00:00:00","2023-11-28 13:14:30");
INSERT INTO expenses VALUES("547","er-20231128-011725","11","2","1","1","6","1000","WATER TANKER EXPENSE (1000 RPS)","2023-07-13 00:00:00","2023-11-28 13:17:25");
INSERT INTO expenses VALUES("548","er-20231128-011935","11","2","1","1","6","1000","WATER TANKER EXPENSE  (1000 RPS)","2023-07-13 00:00:00","2023-11-28 13:19:35");
INSERT INTO expenses VALUES("549","er-20231128-012230","11","2","1","1","6","1000","WATER  TANKER EXPENSE 1000 RPS","2023-07-18 00:00:00","2023-11-28 13:22:30");
INSERT INTO expenses VALUES("550","er-20231128-012417","11","2","1","1","6","1000","WATER TANKER EXPENSE (1000 RPS)","2023-07-24 00:00:00","2023-11-28 13:24:17");
INSERT INTO expenses VALUES("551","er-20231128-012518","11","2","1","1","6","1000","WATER TANKER EXPENSE (1000 RPS)","2023-07-27 00:00:00","2023-11-28 13:25:18");
INSERT INTO expenses VALUES("552","er-20231128-012647","11","2","1","1","6","1900","MONDAY STAFF LUNCH  AND OFFICE BOY BIRYANI EXPENSE (1900 RPS","2023-07-24 00:00:00","2023-11-28 13:26:47");
INSERT INTO expenses VALUES("553","er-20231128-013228","20","2","1","1","6","800000","(8 LAC RPS) RCVD FROM RAPID PHARMA TO OVATION HEALTH CARE  (3 LAC RPS)  CHEQUE (0140)   
5 LAC RPS CASH","2023-07-17 00:00:00","2023-11-28 13:32:28");
INSERT INTO expenses VALUES("554","er-20231128-013443","20","2","1","1","6","16515","(16,515 RPS RCVD) FROM RAPID PHARMA TO OVATION HEALTH CARE","2023-07-17 00:00:00","2023-11-28 13:34:43");
INSERT INTO expenses VALUES("555","er-20231128-013531","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-07-24 00:00:00","2023-11-28 13:35:31");
INSERT INTO expenses VALUES("556","er-20231128-013624","20","2","1","1","6","5000","5000 RPS RCVD FOR PETI CASH","2023-07-17 00:00:00","2023-11-28 13:36:24");
INSERT INTO expenses VALUES("557","er-20231128-013656","20","2","1","1","6","5000","5000 RPS RCVD FOR PETI CASH","2023-07-07 00:00:00","2023-11-28 13:36:56");
INSERT INTO expenses VALUES("558","er-20231128-013739","20","2","1","1","6","4500","4500 RPS FOR PETI CASH","2023-07-31 00:00:00","2023-11-28 13:37:39");
INSERT INTO expenses VALUES("559","er-20231128-013836","20","2","1","1","6","5000","5000 RPS RCVD FROM THE MEDICAL PHARMAY TO OVATION HEALTH CARE","2023-07-31 00:00:00","2023-11-28 13:38:36");
INSERT INTO expenses VALUES("560","er-20231128-014536","5","2","1","1","6","200000","(SALARY OF AUG 2023) MR ZULIFQAR BALOCH SALARY IS (TWO LAC RPS)","2023-09-07 00:00:00","2023-11-28 13:45:36");
INSERT INTO expenses VALUES("561","er-20231128-014716","5","2","1","1","6","45000","(SALARY OF AUG 2023) MR RIZWAN MASOOQ SALARY IS (45000 RPS PAID)","2023-09-04 00:00:00","2023-11-28 13:47:16");
INSERT INTO expenses VALUES("562","er-20231128-014854","5","2","1","1","6","9000","(SALARY OF AUG 2023) MR AHMED OFFICE BOY CLEARED (9000)","2023-08-21 00:00:00","2023-11-28 13:48:54");
INSERT INTO expenses VALUES("563","er-20231128-015147","5","2","1","1","6","120000","(SALAY OF AUG 2023) MR IMRAN UDDIN SALARY IS (120000 RPS PAID)","2023-09-04 00:00:00","2023-11-28 13:51:47");
INSERT INTO expenses VALUES("564","er-20231128-015452","5","2","1","1","6","55000","(SALARY OF AUG 2023) MISS FATIMA IMRAN SALARY IS (55000 PAID)","2023-09-04 00:00:00","2023-11-28 13:54:52");
INSERT INTO expenses VALUES("565","er-20231128-015734","5","2","1","1","6","43000","(SALARY OF AUG 2023) MISS HINA KHAN SALARY IS (43000 RPS PAID)","2023-09-04 00:00:00","2023-11-28 13:57:34");
INSERT INTO expenses VALUES("566","er-20231128-015834","5","2","1","1","6","35000","(SALARY OF AUG 2023)  MR HUSSAIN SALARY IS (35000 RPS PAID)","2023-09-04 00:00:00","2023-11-28 13:58:34");
INSERT INTO expenses VALUES("567","er-20231128-020014","5","2","1","1","6","40000","(SALARY OF AUG 2023) MR WARIS QURESHI SALARY IS (40000 RPS PAID)","2023-09-04 00:00:00","2023-11-28 14:00:14");
INSERT INTO expenses VALUES("568","er-20231128-020134","5","2","1","1","6","38000","(SALARY OF AUG 2023) MS ANEELA IMRAN SALARY IS (38000 RPS PAID)","2023-09-04 00:00:00","2023-11-28 14:01:34");
INSERT INTO expenses VALUES("569","er-20231128-020411","5","2","1","1","6","36667","(SALARY OF AUG 2023) MS KANWAL HANIF SALARY IS (36,667 RPS PAID)","2023-09-04 00:00:00","2023-11-28 14:04:11");
INSERT INTO expenses VALUES("570","er-20231128-020531","13","2","1","1","6","300000","(THREE LAC RPS) PAID TO GENNEC MANUFATRES  PAYMENT","2023-08-30 00:00:00","2023-11-28 14:05:31");
INSERT INTO expenses VALUES("571","er-20231128-020657","9","2","1","1","6","35000","OFFICE RENT IS (35000 RPS PAID)","2023-08-18 00:00:00","2023-11-28 14:06:57");
INSERT INTO expenses VALUES("572","er-20231128-020859","16","2","1","1","6","6200","PTCL BILL 3200... U FONE POSTPAID BILL 3000 TOTAL (6200 RPS PAID)","2023-09-06 00:00:00","2023-11-28 14:08:59");
INSERT INTO expenses VALUES("573","er-20231128-021012","2","2","1","1","6","3242","K ELECTRICC BILL IS (3242 RPS PAID)","2023-08-24 00:00:00","2023-11-28 14:10:12");
INSERT INTO expenses VALUES("574","er-20231128-022119","17","2","1","1","6","890","(890 RPS) EXPENSE SSGC BILL","2023-08-08 00:00:00","2023-11-28 14:21:19");
INSERT INTO expenses VALUES("575","er-20231128-022322","21","2","1","1","6","24000","COMBINE PRINTING BILL (24000 RPS PAID)","2023-08-22 00:00:00","2023-11-28 14:23:22");
INSERT INTO expenses VALUES("576","er-20231128-022621","11","2","1","1","6","10500","10,500 RPS DR PERVAIZ WORK (JOHAR TRAVELS)","2023-08-31 00:00:00","2023-11-28 14:26:21");
INSERT INTO expenses VALUES("577","er-20231128-023308","18","2","1","1","6","50000","50,000 RPS PAID TO DR RAJESH (BHENS COLONY RAZIA MEDICAL CENTER)","2023-08-02 00:00:00","2023-11-28 14:33:08");
INSERT INTO expenses VALUES("578","er-20231128-023451","18","2","1","1","6","20000","(20,000 RPS PAID) DR TARIQ ALI KHAN CIVIL WARD 2 FUND ACTIVTY","2023-08-11 00:00:00","2023-11-28 14:34:51");
INSERT INTO expenses VALUES("579","er-20231128-023552","18","2","1","1","6","80000","(80,000 RPS PAID) DR AZRA RIZWAN ACTIVTY","2023-08-22 00:00:00","2023-11-28 14:35:52");
INSERT INTO expenses VALUES("580","er-20231128-023723","18","2","1","1","6","200000","(TWO LAC RPS PAID) TO DR KAMRAN SOMALANI","2023-08-22 00:00:00","2023-11-28 14:37:23");
INSERT INTO expenses VALUES("581","er-20231128-023836","18","2","1","1","6","40000","(40,000 RPS PAID) TO DR ARIF ALI FOR ACTIVITY","2023-08-22 00:00:00","2023-11-28 14:38:36");
INSERT INTO expenses VALUES("582","er-20231128-024133","18","2","1","1","6","25000","(25000 RPS PAID) TO DR SOHAIL DILAWAR","2023-08-22 00:00:00","2023-11-28 14:41:33");
INSERT INTO expenses VALUES("583","er-20231128-024304","18","2","1","1","6","25000","(25000 RPS PAID) TO DR TABBUSUM FOR ACTIVITY","2023-08-22 00:00:00","2023-11-28 14:43:04");
INSERT INTO expenses VALUES("584","er-20231128-024519","18","2","1","1","6","20000","(20,000 RPS PAID) TO DR KHALIL UR REHMAN","2023-08-22 00:00:00","2023-11-28 14:45:19");
INSERT INTO expenses VALUES("585","er-20231128-024735","18","2","1","1","6","15000","(15000 RPS PAID) DR MUZAMMIL FOR ACTIVTY","2023-08-22 00:00:00","2023-11-28 14:47:35");
INSERT INTO expenses VALUES("586","er-20231128-024942","18","2","1","1","6","20000","(20,000 RPS PAID) TO DR KAHLIL BABER FOR ACTIVTY","2023-08-23 00:00:00","2023-11-28 14:49:42");
INSERT INTO expenses VALUES("587","er-20231128-025155","6","2","1","1","6","57700","57,700 RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACITVTY 25/07/2023 TO 31/07/2023","2023-08-31 00:00:00","2023-11-28 14:51:55");
INSERT INTO expenses VALUES("588","er-20231128-025417","18","2","1","1","6","31000","(31000 RPS PAID FOR THAR TRIP)","2023-08-31 00:00:00","2023-11-28 14:54:17");
INSERT INTO expenses VALUES("589","er-20231128-031525","6","2","1","1","6","104255","(104,255 RPS PAID) TO MR IMRAN UDDIN FOR ACTIVTY","2023-08-07 00:00:00","2023-11-28 15:15:25");
INSERT INTO expenses VALUES("590","er-20231128-035259","6","2","1","1","6","87650","(87,650 RPS PAID) TO MR IMRAN UDDIN FOR ACITVTY","2023-08-12 00:00:00","2023-11-28 15:52:59");
INSERT INTO expenses VALUES("591","er-20231128-043822","6","2","1","1","6","82300","(82,300 RPS PAID) TO MR IMRAN UDIIN FOR WEEKLY ACTIVITY 15/8/2023 TO 21/8/2023","2023-08-21 00:00:00","2023-11-28 16:38:22");
INSERT INTO expenses VALUES("592","er-20231129-102512","11","2","1","1","6","1600","1600 RPS EXPNSE FOR STAFF LUNCH","2023-08-21 00:00:00","2023-11-29 10:25:12");
INSERT INTO expenses VALUES("593","er-20231129-102745","6","2","1","1","6","20000","20,000 RPS PAID TO MR IMRAN UDDIN FOR EXTRA ACTIVTY","2023-08-22 00:00:00","2023-11-29 10:27:45");
INSERT INTO expenses VALUES("594","er-20231129-102948","6","2","1","1","6","135400","(1,35,400 RPS) PAID MR IMRAN UDDIN FOR WEEKLY ACIVTY 22/8/2023 TO 28/8/2023","2023-08-28 00:00:00","2023-11-29 10:29:48");
INSERT INTO expenses VALUES("595","er-20231129-110330","18","2","1","1","6","5000","(5000 RPS) PAID TO RIAZ PHARMAX","2023-08-08 00:00:00","2023-11-29 11:03:30");
INSERT INTO expenses VALUES("596","er-20231129-110435","19","2","1","1","6","24000","(24000 RPS) PAID FOR AC INSTALMENT TO DR IQBAL KIYANI","2023-08-28 00:00:00","2023-11-29 11:04:35");
INSERT INTO expenses VALUES("597","er-20231129-110702","18","2","1","1","6","15000","(15000 RPS) PAID TO DR ASMA PRINTING","2023-08-25 00:00:00","2023-11-29 11:07:02");
INSERT INTO expenses VALUES("598","er-20231129-110759","18","2","1","1","6","20000","(20,000 RPS) PAID TO DR MAQSOOD AL TIBRI","2023-08-28 00:00:00","2023-11-29 11:07:59");
INSERT INTO expenses VALUES("599","er-20231129-110934","18","2","1","1","6","8500","(8500 RPS) PAID TO DR M A QURESHI","2023-08-28 00:00:00","2023-11-29 11:09:34");
INSERT INTO expenses VALUES("600","er-20231129-113155","22","2","1","1","6","500000","(FIVE LAC RPS) PAID TO MUSHTAQ AHMED (RIZWAN BAHI) MEZAN BANK DEPOSIT CHEQ NO (351394774)","2023-08-17 00:00:00","2023-11-29 11:31:55");
INSERT INTO expenses VALUES("601","er-20231129-113319","22","2","1","1","6","500000","(FIVE LAC RPS) PAID TO MR IMRAN UDDIN","2023-08-21 00:00:00","2023-11-29 11:33:19");
INSERT INTO expenses VALUES("602","er-20231129-113447","22","2","1","1","6","500000","(FIVE LAC RPS) CHEQ DEPOSIT INTO MCB A/C","2023-08-22 00:00:00","2023-11-29 11:34:47");
INSERT INTO expenses VALUES("603","er-20231129-113726","11","2","1","1","6","1000","(1000 RPS) WATER TANKER EXPENSE","2023-08-04 00:00:00","2023-11-29 11:37:26");
INSERT INTO expenses VALUES("604","er-20231129-113825","11","2","1","1","6","1000","(1000 RPS) EXPENSE FOR WATER TANKER","2023-08-10 00:00:00","2023-11-29 11:38:25");
INSERT INTO expenses VALUES("605","er-20231129-114029","11","2","1","1","6","2600","2600 RPS EXPENSE","2023-08-19 00:00:00","2023-11-29 11:40:29");
INSERT INTO expenses VALUES("606","er-20231129-114352","11","2","1","1","6","1000","(1000 RPS) EXPENSE FOR WATER TANKER","2023-08-19 00:00:00","2023-11-29 11:43:52");
INSERT INTO expenses VALUES("607","er-20231129-114603","7","2","1","1","6","1000","(1000 RPS) EXPENSE FOR WATER TANKER","2023-08-22 00:00:00","2023-11-29 11:46:03");
INSERT INTO expenses VALUES("608","er-20231129-114916","7","2","1","1","6","1000","(1000 RPS) EXPENSE  FOR WATER TANKER","2023-08-29 00:00:00","2023-11-29 11:49:16");
INSERT INTO expenses VALUES("609","er-20231129-115319","7","2","1","1","6","419","(419 RPS) EXPENSE","2023-08-21 00:00:00","2023-11-29 11:53:19");
INSERT INTO expenses VALUES("610","er-20231129-115757","7","2","1","1","6","3000","(3000 RPS) FOR POWER SUPLLY","2023-08-25 00:00:00","2023-11-29 11:57:57");
INSERT INTO expenses VALUES("611","er-20231129-120400","7","2","1","1","6","2330","(2330 RPS)   EXPENSE","2023-08-28 00:00:00","2023-11-29 12:04:00");
INSERT INTO expenses VALUES("612","er-20231129-120716","20","2","1","1","6","1500000","FIFTEEN LAC RPS RCVD FROM RAPID PHARMA TO OVATION HEALTH CARE
CHEQ NO 351394774    (FIVE LAC)
CHEQ NO 351394775    (FIVE LAC)
CHEQ NO 73612487      (FIVE LAC)","2023-08-16 00:00:00","2023-11-29 12:07:16");
INSERT INTO expenses VALUES("613","er-20231129-120848","20","2","1","1","6","21098","(21,098 RPS) RCVD FROM RAPID PHARMA TO OVATION HEALTH CARE","2023-08-07 00:00:00","2023-11-29 12:08:48");
INSERT INTO expenses VALUES("614","er-20231129-121022","20","2","1","1","6","4302","(4302 RPS RCVD) FROM MEDICAL PHARMAY TO OVATION HEALTH CARE","2023-08-28 00:00:00","2023-11-29 12:10:22");
INSERT INTO expenses VALUES("615","er-20231129-121203","20","2","1","1","6","20975","20,975 RPS RCVD FROM BABA M/S","2023-08-28 00:00:00","2023-11-29 12:12:03");
INSERT INTO expenses VALUES("616","er-20231129-121254","20","2","1","1","6","6426","(6426 RPS) RCVD FROM BABA M/S","2023-08-28 00:00:00","2023-11-29 12:12:54");
INSERT INTO expenses VALUES("617","er-20231129-121341","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-08-28 00:00:00","2023-11-29 12:13:41");
INSERT INTO expenses VALUES("618","er-20231129-121415","20","2","1","1","6","5000","5000 RPS RCVD FOR PETI CASH","2023-08-22 00:00:00","2023-11-29 12:14:15");
INSERT INTO expenses VALUES("619","er-20231129-121451","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-08-18 00:00:00","2023-11-29 12:14:51");
INSERT INTO expenses VALUES("620","er-20231129-121526","20","2","1","1","6","5000","5000  RPS FOR PETI CASH","2023-08-11 00:00:00","2023-11-29 12:15:26");
INSERT INTO expenses VALUES("621","er-20231129-121600","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-08-07 00:00:00","2023-11-29 12:16:00");
INSERT INTO expenses VALUES("622","er-20231130-103325","6","2","1","1","6","113650","113,650 RPS PAID TO MR IMRAN UDDIN  FOR WEEKLY ACTIVITY 05/9/2023 TO 11/9/2023","2023-09-11 00:00:00","2023-11-30 10:33:25");
INSERT INTO expenses VALUES("623","er-20231130-103709","11","2","1","1","6","870","870 RPS EXPENSE ON 11/9/2023 FOR LUNCH","2023-09-11 00:00:00","2023-11-30 10:37:09");
INSERT INTO expenses VALUES("624","er-20231130-104019","18","2","1","1","6","20000","(20,000 RPS PAID) TO DR KHALIL BABER WARD 1 FUND ACTIVITY","2023-09-20 00:00:00","2023-11-30 10:40:19");
INSERT INTO expenses VALUES("625","er-20231130-104308","9","2","1","1","6","35000","35000 RPS PAID FOR OFFICE RENT TO MR AMIN CHEQ NO (1952648953)","2023-09-20 00:00:00","2023-11-30 10:43:08");
INSERT INTO expenses VALUES("626","er-20231130-104430","20","2","1","1","6","6426","(6426 RPS RCVD) FROM DR SHAZIA RUB NAWAZ TO OVATION HEALTH CARE","2023-09-11 00:00:00","2023-11-30 10:44:30");
INSERT INTO expenses VALUES("627","er-20231130-104622","5","2","1","1","6","15000","(SALARY OF SEP 2023 CLEARNCE) MR RIZWAN MASOOD SALARY 10 DAYS (15000 RPS)","2023-09-11 00:00:00","2023-11-30 10:46:22");
INSERT INTO expenses VALUES("628","er-20231130-104833","11","2","1","1","6","1000","1000 RPS EXPENSE FOR OFFICE STAFF LUNCH (MONDAY)","2023-09-11 00:00:00","2023-11-30 10:48:33");
INSERT INTO expenses VALUES("629","er-20231130-105027","21","2","1","1","6","37000","(37000 RPS PAID) TO COMBINE PRINTING","2023-09-11 00:00:00","2023-11-30 10:50:27");
INSERT INTO expenses VALUES("630","er-20231130-105332","20","2","1","1","6","1800000","18 LAC RPS RCVD FROM RAPID PHARMA TO OVATION HEALTH CARE 
CHEQ NO (73612520) 5 LAC RPS
CHEQ NO (80299601) 5 LAC RPS
CHEQ NO (10543646) 5 LAC RPS
CHEQ NO (10543647) 3 LAC RPS","2023-09-16 00:00:00","2023-11-30 10:53:32");
INSERT INTO expenses VALUES("631","er-20231130-105723","16","2","1","1","6","6200","PTCL BILL (3200) AND UFONE POST PAID BILL (3000) PAID","2023-09-16 00:00:00","2023-11-30 10:57:23");
INSERT INTO expenses VALUES("632","er-20231130-110618","6","2","1","1","6","146950","(146,950 RPS PAID) MR IMRAN UDDIN FOR WEEKLY ACIVITY","2023-10-03 00:00:00","2023-11-30 11:06:18");
INSERT INTO expenses VALUES("633","er-20231130-111550","9","2","1","1","6","35000","35000 RPS OFFICE RENT PAID TO MUHMMAD AMIN CHEQ NO (1952648959)","2023-10-25 00:00:00","2023-11-30 11:15:50");
INSERT INTO expenses VALUES("634","er-20231130-112306","11","2","1","1","6","351","(351 RPS) EXPENSE FOR TAPAL DANEDAR","2023-10-21 00:00:00","2023-11-30 11:23:06");
INSERT INTO expenses VALUES("635","er-20231130-113710","16","2","1","1","6","3660","(3660 RPS PAID) PTCL BILL","2023-10-18 00:00:00","2023-11-30 11:37:10");
INSERT INTO expenses VALUES("636","er-20231130-115240","6","2","1","1","6","90000","(90000 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVTY","2023-10-30 00:00:00","2023-11-30 11:52:40");
INSERT INTO expenses VALUES("637","er-20231130-115432","2","2","1","1","6","12592","(12,592 RPS PAID) K ELECTRIC BILL","2023-10-27 00:00:00","2023-11-30 11:54:32");
INSERT INTO expenses VALUES("638","er-20231130-115747","6","2","1","1","6","40000","(40,000 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-10-16 00:00:00","2023-11-30 11:57:47");
INSERT INTO expenses VALUES("639","er-20231130-120037","18","2","1","1","6","25000","(25000 RPS PAID) TO DR SOHAIL DILAWAR FOR OCT 2023 ACTIVITY","2023-10-16 00:00:00","2023-11-30 12:15:28");
INSERT INTO expenses VALUES("640","er-20231130-120147","18","2","1","1","6","40000","(40,000 PAID) TO DR ARIF ALI  FOR ACTIVITY","2023-10-16 00:00:00","2023-11-30 12:15:48");
INSERT INTO expenses VALUES("641","er-20231130-120356","6","2","1","1","6","15000","(15000 RPS PAID) TO DR MUZAMIL FOR ACTIVTY","2023-10-15 00:00:00","2023-11-30 12:03:56");
INSERT INTO expenses VALUES("642","er-20231130-121501","18","2","1","1","6","25000","(25000 RPS PAID) TO DR HUMA MALIK FOR ACTIVITY","2023-10-16 00:00:00","2023-11-30 12:15:01");
INSERT INTO expenses VALUES("643","er-20231130-124216","18","2","1","1","6","15000","(15000 RPS PAID) TO DR MUZAMIL BY MR IMRAN UDDIN FOR ACTIVITY","2023-10-16 00:00:00","2023-11-30 12:42:16");
INSERT INTO expenses VALUES("644","er-20231130-124628","6","2","1","1","6","90000","(90,000 RPS PAID) TO MR IMRAN UDDIN  FOR WEEKLY ACTIVITY","2023-10-02 00:00:00","2023-11-30 12:46:28");
INSERT INTO expenses VALUES("645","er-20231130-124805","17","2","1","1","6","430","(430 RPS) SSGC BILL PAID","2023-10-27 00:00:00","2023-11-30 12:48:05");
INSERT INTO expenses VALUES("646","er-20231130-125022","11","2","1","1","6","1130","(1130 RPS EXPENSE)","2023-10-11 00:00:00","2023-11-30 12:50:22");
INSERT INTO expenses VALUES("647","er-20231130-125639","20","2","1","1","6","1500","1500 RPS FOR PETI CASH","2023-10-27 00:00:00","2023-11-30 12:56:39");
INSERT INTO expenses VALUES("648","er-20231130-125747","20","2","1","1","6","4100","4100 RPS FOR PETI CASH","2023-10-23 00:00:00","2023-11-30 12:57:47");
INSERT INTO expenses VALUES("649","er-20231130-125820","20","2","1","1","6","2000","2000 RPS FOR PETI CASH","2023-10-19 00:00:00","2023-11-30 12:58:20");
INSERT INTO expenses VALUES("650","er-20231130-010027","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-10-13 00:00:00","2023-11-30 13:00:27");
INSERT INTO expenses VALUES("651","er-20231130-010120","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-10-04 00:00:00","2023-11-30 13:01:20");
INSERT INTO expenses VALUES("652","er-20231130-010438","6","2","1","1","6","108050","(108050 RPS PAID) TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-10-17 00:00:00","2023-11-30 13:04:38");
INSERT INTO expenses VALUES("653","er-20231130-013238","11","2","1","1","6","1980","1980 RPS EXPENSE ON 27/11/2023","2023-11-27 00:00:00","2023-11-30 13:32:38");
INSERT INTO expenses VALUES("654","er-20231130-013417","18","2","1","1","6","40000","(40,000 RPS PAID) TO DR BADAR SATO ACTIVITY WORKSHOP","2023-11-23 00:00:00","2023-11-30 13:34:17");
INSERT INTO expenses VALUES("655","er-20231130-013711","21","2","1","1","6","23000","23000 RPS PAID TO COMBINE PRINTING BILL NO (3811) CHEQ NO (1962921712)","2023-11-23 00:00:00","2024-02-14 10:36:19");
INSERT INTO expenses VALUES("656","er-20231130-013830","11","2","1","1","6","25000","25000 RPS PAID TO SUPER SOFT TECNOLGY CHEQ NO (1962921713)","2023-11-23 00:00:00","2024-02-14 10:39:14");
INSERT INTO expenses VALUES("657","er-20231130-014103","9","2","1","1","6","35000","(35000 RPS PAID) OFFICE RENT CHEQ (1962921714) IS RETURND FOR STAMP PURPOSE  AN OTHER CHEQ","2023-11-23 00:00:00","2023-11-30 13:41:03");
INSERT INTO expenses VALUES("658","er-20231130-014210","7","2","1","1","6","250","(250 RPS) EXPENSE FOR OFFICE USE","2023-11-25 00:00:00","2023-11-30 13:42:10");
INSERT INTO expenses VALUES("659","er-20231130-014634","7","2","1","1","6","270","270 RPS EXPENSE ON 24/11/2023","2023-11-24 00:00:00","2023-11-30 13:46:34");
INSERT INTO expenses VALUES("660","er-20231130-014721","7","2","1","1","6","250","250 RPS EXPENSE ON 23/11/2023","2023-11-23 00:00:00","2023-11-30 13:47:21");
INSERT INTO expenses VALUES("661","er-20231130-014809","7","2","1","1","6","500","500 RPS EXPENSE ON 22/11/2023","2023-11-22 00:00:00","2023-11-30 13:48:09");
INSERT INTO expenses VALUES("662","er-20231130-014853","7","2","1","1","6","300","300 RPS EXPENSE ON 21/11/2023","2023-11-21 00:00:00","2023-11-30 13:48:53");
INSERT INTO expenses VALUES("663","er-20231130-014934","7","2","1","1","6","650","650 RPS EXPENSE ON 20/11/2023","2023-11-20 00:00:00","2023-11-30 13:49:34");
INSERT INTO expenses VALUES("664","er-20231130-015032","7","2","1","1","6","400","400 RPS EXPENSE ON 7/11/2023","2023-11-07 00:00:00","2023-11-30 13:50:32");
INSERT INTO expenses VALUES("665","er-20231130-015253","18","2","1","1","6","10000","10,000 RPS PAID 40,000 BALANCE","2023-11-06 00:00:00","2023-11-30 13:52:53");
INSERT INTO expenses VALUES("666","er-20231130-015754","18","2","1","1","6","60","60 RPS EXPENSE","2023-11-06 00:00:00","2023-11-30 13:57:54");
INSERT INTO expenses VALUES("667","er-20231130-015834","7","2","1","1","6","100","100 RPS EXPENSE","2023-11-01 00:00:00","2023-11-30 13:58:34");
INSERT INTO expenses VALUES("668","er-20231130-020005","6","2","1","1","6","82200","82,200 RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2023-11-27 00:00:00","2023-11-30 14:00:05");
INSERT INTO expenses VALUES("669","er-20231130-020619","18","2","1","1","6","145000","145000 RPS PAID FOR MONTHLY ACTIVTY TO DRS 
DR ARIF ALI                (40000)
DR SOHAIL DILAWAR (25000)
DR MUZAMIL       (15000)
DR HUMA            (25000)
CIVIL WARD-1     (20000)
CIVIL WARD -2    (20000)","2023-11-20 00:00:00","2023-11-30 14:06:19");
INSERT INTO expenses VALUES("670","er-20231130-020818","6","2","1","1","6","104000","104000 RPS WEEKLY ACTIVTY 14/11/2023 TO 20/11/2023","2023-11-20 00:00:00","2023-11-30 14:08:18");
INSERT INTO expenses VALUES("671","er-20231130-023558","5","2","1","1","6","10000","(SALARY OF JUNE 2023) MR AHMED SALARY IS 10,000 RPS (20 DAYS)","2023-06-26 00:00:00","2023-11-30 14:35:58");
INSERT INTO expenses VALUES("672","er-20231130-030330","20","2","1","1","6","2114","2114 RCVD FROM DR IRFAN NOOR MEDICAL STORE TO OVATION HEALTH CARE","2023-06-06 00:00:00","2023-11-30 15:03:30");
INSERT INTO expenses VALUES("673","er-20231130-030531","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-06-06 00:00:00","2023-11-30 15:05:31");
INSERT INTO expenses VALUES("674","er-20231130-030950","5","2","1","1","6","5000","(SALARY OF MAY 2023) ADVNCE KHUDA BAKSH 5000","2023-06-13 00:00:00","2023-11-30 15:09:50");
INSERT INTO expenses VALUES("675","er-20231130-031538","19","2","1","1","6","5000","( 5000 RPS )AM ELECTRONIC DISPENSER INSTALMENT","2023-05-02 00:00:00","2023-11-30 15:15:38");
INSERT INTO expenses VALUES("676","er-20231130-035127","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-05-29 00:00:00","2023-11-30 15:51:27");
INSERT INTO expenses VALUES("677","er-20231130-035243","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-05-22 00:00:00","2023-11-30 15:52:43");
INSERT INTO expenses VALUES("678","er-20231130-035744","11","2","1","1","6","600","600 RPS EXPENSE ON WARDROBE LOCK","2023-05-17 00:00:00","2023-11-30 15:57:44");
INSERT INTO expenses VALUES("679","er-20231130-040335","5","2","1","1","6","10000","(SALARY OF APR 2023) MR WARIS QURESHI ADVACNE (10,000 RPS)","2023-04-19 00:00:00","2023-11-30 16:03:35");
INSERT INTO expenses VALUES("680","er-20231130-040659","5","2","1","1","6","35000","(SALRY OF APRL 2023) MR HUSSAIN SALRY IS 35000 RPS","2023-05-01 00:00:00","2023-11-30 16:06:59");
INSERT INTO expenses VALUES("681","er-20231130-041916","11","2","1","1","6","900","900 RPS EXPENSE FOR WATER TANKER","2023-04-08 00:00:00","2023-11-30 16:19:16");
INSERT INTO expenses VALUES("682","er-20231130-042719","20","2","1","1","6","4000","4000 RPS FOR PETI CASH","2023-04-13 00:00:00","2023-11-30 16:27:19");
INSERT INTO expenses VALUES("683","er-20231130-043014","11","2","1","1","6","1100","1100 RPS EXPENSE FOR OUTSIDE CLEANING","2023-04-03 00:00:00","2023-11-30 16:30:14");
INSERT INTO expenses VALUES("684","er-20231130-043359","9","2","1","1","6","35000","(35000 RPS) FOR OFFICE RENT OF MAR 2023","2023-02-27 00:00:00","2023-11-30 16:33:59");
INSERT INTO expenses VALUES("685","er-20231130-043835","6","2","1","1","6","95600","95,600 RPS PAID TO WEEKLY ACTIVTY (MARCH) 1ST MARCH TO 7TH ,MARCH","2023-02-27 00:00:00","2023-11-30 16:38:35");
INSERT INTO expenses VALUES("686","er-20231130-044336","18","2","1","1","6","25000","(25000 RPS) PAID TO DR ALTAF FOR MONTHLY ACTVTY","2023-02-27 00:00:00","2023-11-30 16:43:36");
INSERT INTO expenses VALUES("687","er-20231201-104529","20","2","1","1","6","1000000","10 LAC RPS RCVD FROM RAPID PHARMA DISTIBUTORS FROM OVATIN HEALTH CARE","2023-01-14 00:00:00","2023-12-01 10:45:29");
INSERT INTO expenses VALUES("688","er-20231201-112426","6","2","1","1","6","56300","56,300 RPS PAID FOR WEEKLY ACTIVTY (17/1/2023 TO 23/1/2023)","2023-02-06 00:00:00","2023-12-01 11:24:26");
INSERT INTO expenses VALUES("689","er-20231201-113738","20","2","1","1","6","1000000","(10 LAC RPS) RCVD FROM  RAPID PHARMA TO OVATION HEALTH CARE","2022-12-16 00:00:00","2023-12-01 11:37:38");
INSERT INTO expenses VALUES("695","er-20231201-114756","18","2","1","1","6","15000","(15000 RPS PAID) SINDH SERVICES HOSP","2022-12-13 00:00:00","2023-12-01 15:16:54");
INSERT INTO expenses VALUES("696","er-20231201-114955","18","2","1","1","6","10000","10,000 RPS PAID TO ACTIVTY   DR REHANA","2022-12-12 00:00:00","2023-12-01 15:31:14");
INSERT INTO expenses VALUES("697","er-20231201-115135","18","2","1","1","6","15000","(15000 RPS PAID) FOR ACTIVTY","2022-12-07 00:00:00","2023-12-01 11:51:35");
INSERT INTO expenses VALUES("698","er-20231201-115424","18","2","1","1","6","13765","(13765 RPS PAID) FOR ACTIVTY TO ORTHO DOCTORS  KHAAN SAAB","2022-12-05 00:00:00","2023-12-01 15:15:17");
INSERT INTO expenses VALUES("699","er-20231201-115620","6","2","1","1","6","141000","(141000 RPS PAID) FOR ACTIVTY 28/11/2022 TO 05/12/2022 MR IMRAN UDDIN","2022-12-05 00:00:00","2023-12-01 11:56:20");
INSERT INTO expenses VALUES("700","er-20231201-122346","5","2","1","1","6","50000","(SALARY OF NOV 2022) MISS FATIMA IMRAN SALARY IS 50000 RPS PAID 5000 RPS HOLD AS SECURTY DEPOSIT","2022-12-05 00:00:00","2023-12-01 12:23:46");
INSERT INTO expenses VALUES("701","er-20231201-122526","5","2","1","1","6","50000","(SALARY OF NOV 2022) MISS NAJMA SULTANA SALRY IS 50000 RPS PAID 5000 RPS HOLD AS SECURTY DEPOSIT","2022-12-05 00:00:00","2023-12-01 12:25:26");
INSERT INTO expenses VALUES("702","er-20231201-123537","20","2","1","1","6","600000","(SIX LAC RPS) RCVD FROM RAPID PHARMA TO OVATION HEALTH CARE","2022-11-15 00:00:00","2023-12-01 12:35:37");
INSERT INTO expenses VALUES("703","er-20231201-123936","18","2","1","1","6","50000","(50,000 RPS) PAID FOR DR ACTIVTY","2022-10-10 00:00:00","2023-12-01 12:39:36");
INSERT INTO expenses VALUES("704","er-20231201-124058","11","2","1","1","6","20000","(20,000 RPS) PAID FOR VISITING CARD","2022-10-03 00:00:00","2023-12-01 12:40:58");
INSERT INTO expenses VALUES("705","er-20231201-124319","10","2","1","1","6","107300","(107300 RPS) EXPENSE FOR BOSS ROOM FURNITRE","2022-10-22 00:00:00","2023-12-01 12:43:19");
INSERT INTO expenses VALUES("706","er-20231201-124627","11","2","1","1","6","5632","(5632  RPS) EXPENSE FOR KITCHEN ITEM","2022-10-21 00:00:00","2023-12-01 12:46:27");
INSERT INTO expenses VALUES("707","er-20231201-125632","9","2","1","1","6","35000","(35000 RPS) PAID OFFICE RENT JULY TO AUG 2023","2023-07-18 00:00:00","2023-12-01 12:56:32");
INSERT INTO expenses VALUES("708","er-20231201-010043","11","2","1","1","6","10500","10500 RPS JOHAR TRAVELS DR PERVAIZ","2023-07-31 00:00:00","2023-12-01 13:00:43");
INSERT INTO expenses VALUES("709","er-20231201-010615","18","2","1","1","6","50000","(50,000 THOUSAND RPS)  DR RAJESH BHENS COLONY RAZIA MEDICAL CENTER","2023-07-31 00:00:00","2023-12-01 13:06:15");
INSERT INTO expenses VALUES("710","er-20231201-011341","18","2","1","1","6","15000","15000 RPS FOR  DR ASMA PRINTING","2023-08-28 00:00:00","2023-12-01 13:13:41");
INSERT INTO expenses VALUES("711","er-20231201-011942","20","2","1","1","6","2400","2400 RPS FOR PETI CASH","2023-08-18 00:00:00","2023-12-01 13:19:42");
INSERT INTO expenses VALUES("712","er-20231201-012423","5","2","1","1","6","40500","(SALARY OF JULY 2023) MR RIZWAN MASOOD SALRY IS 40500 PAID","2023-07-31 00:00:00","2023-12-01 13:24:23");
INSERT INTO expenses VALUES("713","er-20231201-012711","18","2","1","1","6","25000","25000 RPS PAID TO DR HUMA TABBUSUM ANKER LERYA","2023-07-20 00:00:00","2023-12-01 13:27:11");
INSERT INTO expenses VALUES("714","er-20231201-012750","18","2","1","1","6","40000","40000 RPS PAID TO DR ARIF ALI FOR ACTIVTY","2023-06-20 00:00:00","2023-12-01 13:27:50");
INSERT INTO expenses VALUES("715","er-20231201-013259","11","2","1","1","6","1000","1000 RPS EXPENSE ON WATER TANKER","2023-07-07 00:00:00","2023-12-01 13:32:59");
INSERT INTO expenses VALUES("716","er-20231201-013723","20","2","1","1","6","700000","(7 LAC RPS) RCVD FROM RAPID PHARMA TO OVATION HEALTH CARE","2023-07-26 00:00:00","2023-12-01 13:37:23");
INSERT INTO expenses VALUES("717","er-20231201-014018","20","2","1","1","6","5000","(5000 RPS RCVD) FROM RAPID PHARMA TO OVATION HEALTH CARE","2023-07-31 00:00:00","2023-12-01 13:40:18");
INSERT INTO expenses VALUES("718","er-20231201-024202","9","2","1","1","6","35000","CHEQUE RETURND (26687125) DUBAI ISLAMIC BANK 20/11/2022","2022-11-28 00:00:00","2023-12-01 14:42:02");
INSERT INTO expenses VALUES("719","er-20231201-030646","18","2","1","1","6","20000","20,000 CIVIL WARD 1 ORTHO FOR DR ACTIVTY","2022-12-09 00:00:00","2023-12-01 15:06:46");
INSERT INTO expenses VALUES("720","er-20231201-030826","18","2","1","1","6","30000","30,000 RPS PAID TO DR ZEEHAN ACTVTY","2022-12-07 00:00:00","2023-12-01 15:08:26");
INSERT INTO expenses VALUES("721","er-20231201-031145","18","2","1","1","6","25000","25000 RPS PAID TO DR SOHAIL DILAWAR FOR ACTVTY","2022-12-08 00:00:00","2023-12-01 15:11:45");
INSERT INTO expenses VALUES("722","er-20231201-032602","18","2","1","1","6","10000","10000 RPS DR ABUL QADIR JPMC ACTVTY","2022-12-09 00:00:00","2023-12-01 15:26:02");
INSERT INTO expenses VALUES("723","er-20231201-032748","18","2","1","1","6","20000","20,000 RPS DR TARIQ CIVIL WARD 2 ORTHO","2022-12-07 00:00:00","2023-12-01 15:27:48");
INSERT INTO expenses VALUES("724","er-20231201-033220","18","2","1","1","6","15000","15000 RPS PAID TO DR REHMAN FOR ACTIVITY","2022-12-07 00:00:00","2023-12-01 15:32:20");
INSERT INTO expenses VALUES("725","er-20231202-112632","5","2","1","1","6","3000","SALARY OF JAN 2023 (ADJUSTMNT DEC 2022) MR RIZWAN MASOOD","2023-02-18 00:00:00","2023-12-02 11:26:32");
INSERT INTO expenses VALUES("726","er-20231202-113111","5","2","1","1","6","8000","PAID ADVNCE SALARY TO MUZAFFAR (8000 RPS)","2023-01-14 00:00:00","2023-12-02 11:31:11");
INSERT INTO expenses VALUES("727","er-20231205-124850","16","2","1","1","6","6580","PTCL BILL AND POST PAID BILL (U FONE) PAID","2023-12-04 00:00:00","2023-12-05 12:48:50");
INSERT INTO expenses VALUES("728","er-20231205-125025","2","2","1","1","6","5029","K ELECTRIC BILL (5029 RPS )PAID","2023-12-04 00:00:00","2023-12-05 12:50:25");
INSERT INTO expenses VALUES("729","er-20231205-013329","11","2","1","1","6","2500","MONDAY STAFF LUNCH (2500 RPS)","2023-12-04 00:00:00","2023-12-05 13:33:29");
INSERT INTO expenses VALUES("730","er-20231205-013915","6","2","1","1","6","114000","(ONE LAC FORTEEN THOUSAND RPS)PAID TO MR IMRAN UDDIN WEEKLY ACTIVITY INCLUDE (STAFF LUNCH MONDAY)","2023-12-04 00:00:00","2023-12-05 13:39:15");
INSERT INTO expenses VALUES("731","er-20231206-112201","2","2","1","1","6","3242","K ELECTRIC BILL (3242 RPS PAID)","2023-08-23 00:00:00","2023-12-06 11:22:01");
INSERT INTO expenses VALUES("732","er-20231206-122727","18","2","1","1","6","40000","(40,000 RPS PAID) TO DR ARIF ALI SHEIKH","2023-07-20 00:00:00","2023-12-06 12:27:27");
INSERT INTO expenses VALUES("733","er-20231206-022509","9","2","1","1","6","35000","35000 RPS PAID OFFICE RENT TO MR AMIN (LAND LORD)","2023-03-22 00:00:00","2023-12-06 14:25:09");
INSERT INTO expenses VALUES("734","er-20231207-104852","5","2","1","1","6","20000","SALARY A/C 20,000","2022-11-07 00:00:00","2023-12-07 10:48:52");
INSERT INTO expenses VALUES("735","er-20231214-023008","7","2","1","1","6","480","480 RPS EXPENSE ON 14/12/2023","2023-12-14 00:00:00","2023-12-14 14:30:08");
INSERT INTO expenses VALUES("742","er-20231214-023919","17","2","1","1","6","5680","5680 SSGC BILL PAID","2023-12-13 00:00:00","2023-12-14 14:39:19");
INSERT INTO expenses VALUES("743","er-20231214-024757","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-12-07 00:00:00","2023-12-14 14:47:57");
INSERT INTO expenses VALUES("744","er-20231214-024828","20","2","1","1","6","3000","3000 RPS FOR PETI CASH","2023-12-13 00:00:00","2023-12-14 14:48:28");
INSERT INTO expenses VALUES("745","er-20231219-095519","6","2","1","1","6","100000","WEEKLY ACTIVITY  12/12/2023 TO 18/12/2023 AMOUNT (1 LAC RPS) PAID TO IMRANUDDIN","2023-12-18 00:00:00","2023-12-19 09:55:19");
INSERT INTO expenses VALUES("746","er-20231230-015034","21","2","1","1","6","55000","55000  RPS CHEQ (1962921721) DEPOSIT TO COMBINE PRINTING COUMNNIATION","2023-12-27 00:00:00","2023-12-30 13:50:34");
INSERT INTO expenses VALUES("747","er-20231230-015214","5","2","1","1","6","15000","SALARY OF DEC 15000 PAID TO SHAH MUHMAMAD","2023-12-27 00:00:00","2023-12-30 13:52:14");
INSERT INTO expenses VALUES("748","er-20231230-015319","20","2","1","1","6","1800","1800 RPS FOR PETI CASH","2023-12-17 00:00:00","2023-12-30 13:53:19");
INSERT INTO expenses VALUES("751","er-20231230-015527","20","2","1","1","6","2000","2000 RPS FOR PETI CASH","2023-11-20 00:00:00","2023-12-30 13:55:27");
INSERT INTO expenses VALUES("752","er-20231230-015603","20","2","1","1","6","2000","2000 RPS FOR PETI CASH","2023-11-24 00:00:00","2023-12-30 13:56:03");
INSERT INTO expenses VALUES("753","er-20231230-015644","20","2","1","1","6","2000","2000 RPS FOR PETI CASH","2023-11-27 00:00:00","2023-12-30 13:56:44");
INSERT INTO expenses VALUES("754","er-20231230-015744","20","2","1","1","6","5000","5000 RPS FOR PETI CASH","2023-12-01 00:00:00","2023-12-30 13:57:44");
INSERT INTO expenses VALUES("755","er-20231230-020015","16","2","1","1","6","6509","UFONE POST PAID BILL(2800 RPS) AND PTCL BILL (3709 RPS) PAID TOTAL AMOUNT 6509","2023-12-19 00:00:00","2023-12-30 14:00:15");
INSERT INTO expenses VALUES("756","er-20231230-020056","2","2","1","1","6","3664","K ELECTRIC BILL (3664 RPS )PAID","2023-12-26 00:00:00","2023-12-30 14:00:56");
INSERT INTO expenses VALUES("757","er-20231230-020214","6","2","1","1","6","90000","90000 RPS PAID TO IMRANUDDIN FOR WEEKLY ACTIVITY","2023-12-26 00:00:00","2023-12-30 14:02:14");
INSERT INTO expenses VALUES("758","er-20231230-020250","17","2","1","1","6","5680","SSGC BILL (5680 RPS) PAID","2023-12-12 00:00:00","2023-12-30 14:02:50");
INSERT INTO expenses VALUES("759","er-20231230-020335","7","2","1","1","6","480","480 RPS EXPENSE ON 23/12/2023","2023-12-23 00:00:00","2023-12-30 14:03:35");
INSERT INTO expenses VALUES("760","er-20231230-020421","7","2","1","1","6","560","560 RPS EXPENSE ON 22/12/2023","2023-12-22 00:00:00","2023-12-30 14:04:21");
INSERT INTO expenses VALUES("761","er-20231230-020557","7","2","1","1","6","540","540 RPS FOR DAILY EXPENSE","2023-12-21 00:00:00","2023-12-30 14:05:57");
INSERT INTO expenses VALUES("762","er-20231230-020638","7","2","1","1","6","630","630 RPS EXPENSE ON 20/12/2023","2023-12-20 00:00:00","2023-12-30 14:06:38");
INSERT INTO expenses VALUES("763","er-20231230-020717","7","2","1","1","6","480","480 RPS EXPNSE ON 19/12/2023","2023-12-19 00:00:00","2023-12-30 14:07:17");
INSERT INTO expenses VALUES("764","er-20231230-020810","7","2","1","1","6","1780","MONDAY 1780 RPS EXPNSE INCLUDED STAFF LUNCH","2023-12-18 00:00:00","2023-12-30 14:08:10");
INSERT INTO expenses VALUES("765","er-20231230-020904","7","2","1","1","6","480","480 RPS EXPENSE ON 16/12/2023","2023-12-16 00:00:00","2023-12-30 14:09:04");
INSERT INTO expenses VALUES("766","er-20231230-021024","7","2","1","1","6","480","480 RPS EXPNSE ON 15/12/2023","2023-12-15 00:00:00","2023-12-30 14:10:24");
INSERT INTO expenses VALUES("768","er-20231230-021131","7","2","1","1","6","480","480 RPS EXPENSE ON 13/12/2023","2023-12-13 00:00:00","2023-12-30 14:11:31");
INSERT INTO expenses VALUES("769","er-20231230-021208","7","2","1","1","6","460","460 RPS EXPENSE ON 12/12/2023","2023-12-12 00:00:00","2023-12-30 14:12:08");
INSERT INTO expenses VALUES("770","er-20231230-021336","7","2","1","1","6","1770","1770 RPS EXPENSE ON 11/12/2023 INCLUDED SUGAR AND STAF LUNCH","2023-12-11 00:00:00","2023-12-30 14:13:36");
INSERT INTO expenses VALUES("771","er-20231230-021419","7","2","1","1","6","410","410 RPS EXPENSE ON 10/12/2023 (SUNDAY)","2023-12-10 00:00:00","2023-12-30 14:14:19");
INSERT INTO expenses VALUES("772","er-20231230-021500","7","2","1","1","6","460","460 RPS EXPENSE ON 9/12/2023","2023-12-09 00:00:00","2023-12-30 14:15:00");
INSERT INTO expenses VALUES("773","er-20231230-021607","7","2","1","1","6","1680","1680 RPS EXPENSE ON 8/12/2023 WTH WATER TANKER","2023-12-08 00:00:00","2023-12-30 14:16:07");
INSERT INTO expenses VALUES("774","er-20240102-051155","5","2","1","1","6","21000","(M ALI NASIR) 21000 RPS SALARY OF DEC 2023","2024-01-01 00:00:00","2024-01-02 17:11:55");
INSERT INTO expenses VALUES("775","er-20240102-051258","5","2","1","1","6","130000","(IMRANUDDIN) 130000 RPS SALARY OF DEC 2023","2024-01-01 00:00:00","2024-01-02 17:12:58");
INSERT INTO expenses VALUES("776","er-20240102-051351","5","2","1","1","6","60000","(MISS FATIMA) 60000 RPS SALARY OF DEC 2023","2024-01-01 00:00:00","2024-01-02 17:13:51");
INSERT INTO expenses VALUES("777","er-20240102-051429","5","2","1","1","6","48000","(MISS HINA)  48000 RPS SALARY OF DEC 2023","2024-01-01 00:00:00","2024-01-02 17:14:29");
INSERT INTO expenses VALUES("778","er-20240102-051527","5","2","1","1","6","37500","(MR HUSSAIN) 37500 RPS SALARY OF DEC 2023","2024-01-01 00:00:00","2024-01-02 17:15:27");
INSERT INTO expenses VALUES("779","er-20240102-051613","5","2","1","1","6","40000","(MISS ANEELA) 40000 RPS SALARY OF DEC 2023","2024-01-01 00:00:00","2024-01-02 17:16:13");
INSERT INTO expenses VALUES("780","er-20240102-051715","5","2","1","1","6","35000","(MISS KANWAL) 35000 SALARY OF DEC 2023","2024-01-01 00:00:00","2024-01-02 17:17:15");
INSERT INTO expenses VALUES("781","er-20240102-051809","5","2","1","1","6","25000","(OMAR) 25000 RPS SALARY OF DEC 2023","2024-01-01 00:00:00","2024-01-02 17:18:09");
INSERT INTO expenses VALUES("782","er-20240102-052056","5","2","1","1","6","15000","(SHAH MUHMMAD) 15000  RPS SALARY OF DEC 2023","2024-01-01 00:00:00","2024-01-02 17:20:56");
INSERT INTO expenses VALUES("783","er-20240109-115749","19","2","1","1","6","24000","DR IQBAL KHIYANI AC INSTALMENT 24000 RPS PAID","2024-01-02 00:00:00","2024-01-09 11:57:49");
INSERT INTO expenses VALUES("785","er-20240109-010522","6","2","1","1","6","100000","WEEKLY ACTIVITY 2/1/2024 TO 8/1/2024 AMOUNT ONE LAC RPS PAID TO IMRANUDDIN","2024-01-08 00:00:00","2024-01-09 13:05:22");
INSERT INTO expenses VALUES("786","er-20240113-115241","7","2","1","1","6","350","350 RPS EXPENSE ON 12/1/2024","2024-01-12 00:00:00","2024-01-13 11:52:41");
INSERT INTO expenses VALUES("787","er-20240113-115317","7","2","1","1","6","300","300 RPS EXPENSE ON 11/1/2024","2024-01-11 00:00:00","2024-01-13 11:53:17");
INSERT INTO expenses VALUES("788","er-20240113-115354","7","2","1","1","6","900","900 RPS EXPENSE ON 10/1/20204","2024-01-10 00:00:00","2024-01-13 11:53:54");
INSERT INTO expenses VALUES("789","er-20240113-115435","7","2","1","1","6","320","320 RPS EXPENSE ON 9/1/2024","2024-01-09 00:00:00","2024-01-13 11:54:35");
INSERT INTO expenses VALUES("790","er-20240113-115507","7","2","1","1","6","310","310 RPS EXPENSE ON 8/1/2024","2024-01-08 00:00:00","2024-01-13 11:55:07");
INSERT INTO expenses VALUES("791","er-20240116-120828","20","2","1","1","6","2000","2000 RPS  FOR PETI CASH","2024-01-13 00:00:00","2024-01-16 12:08:28");
INSERT INTO expenses VALUES("792","er-20240116-121050","16","2","1","1","6","6250","6250 RPS PAID FOR PTCL  AND U FONE POST PAID","2024-01-13 00:00:00","2024-01-16 12:10:50");
INSERT INTO expenses VALUES("793","er-20240118-113118","7","2","1","1","6","218","218 RPS EXPENSE ON 17/1/2024","2024-01-17 00:00:00","2024-01-18 11:31:18");
INSERT INTO expenses VALUES("794","er-20240118-113208","7","2","1","1","6","210","210 RPS EXPENSE ON 16/1/2024","2024-01-16 00:00:00","2024-01-18 11:32:08");
INSERT INTO expenses VALUES("795","er-20240118-113413","11","2","1","1","6","10000","TEN THOUSAND RPS PAID TOMUHMMAD ARHAM KHALID  CASH DEPOSIT","2024-01-15 00:00:00","2024-01-18 11:34:13");
INSERT INTO expenses VALUES("796","er-20240123-123745","6","2","1","1","6","115000","115000 RPS PAID TO IMRAN UDDIN FOR WEEKLY ACTIVITY 16/1/2024 TO 22/1/2024","2024-01-22 00:00:00","2024-01-23 12:37:45");
INSERT INTO expenses VALUES("797","er-20240123-123833","7","2","1","1","6","1460","1460 RPS FOR DALIY EXPENSE INCLUDE WATER TANKER","2024-01-22 00:00:00","2024-01-23 12:38:33");
INSERT INTO expenses VALUES("798","er-20240123-123914","7","2","1","1","6","1500","1500 RPS STAFF LUNCH AT MONDAY 22/1/2024","2024-01-22 00:00:00","2024-01-23 12:39:14");
INSERT INTO expenses VALUES("799","er-20240123-123956","2","2","1","1","6","2654","2654 RPS PAID TO K ELECTRIC BILL AT 23/1/2024","2024-01-23 00:00:00","2024-01-23 12:39:56");
INSERT INTO expenses VALUES("800","er-20240125-044010","17","2","1","1","6","710","710 RPS PAID TO SSGC BILL WITH LATE CHARGES","2024-01-24 00:00:00","2024-01-25 16:40:10");
INSERT INTO expenses VALUES("801","er-20240125-044125","7","2","1","1","6","680","680 RPS EXPENSE ON 24/1/2024 INCLUDE TAPAL TEA PACK(380)","2024-01-24 00:00:00","2024-01-25 16:41:25");
INSERT INTO expenses VALUES("802","er-20240213-023459","6","2","1","1","6","105000","ONE LAC FIVE THOUSAND RPS PAID TO MR IMRAN UDDIN","2024-01-01 00:00:00","2024-02-13 14:34:59");
INSERT INTO expenses VALUES("803","er-20240213-023912","6","2","1","1","6","107000","ONE LAC SEVEN THOUSAND RPS PAID TO MR IMRAN UDDIN","2024-01-15 00:00:00","2024-02-13 14:39:12");
INSERT INTO expenses VALUES("805","er-20240214-105745","6","2","1","1","6","114600","ONE LAC FORTEEN THOUSAND SIX HUNDRED RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVTY","2024-02-12 00:00:00","2024-02-14 10:59:45");
INSERT INTO expenses VALUES("806","er-20240214-105921","6","2","1","1","6","80000","EIGHTY THOUSAND RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2024-02-06 00:00:00","2024-02-14 10:59:21");
INSERT INTO expenses VALUES("807","er-20240214-110222","20","2","1","1","6","2000","2000 RPS RECVD FOR PETI CASH","2024-02-13 00:00:00","2024-02-14 11:02:22");
INSERT INTO expenses VALUES("808","er-20240214-110252","20","2","1","1","6","1000","1000 RPS RCVD FOR PETI CASH","2024-02-06 00:00:00","2024-02-14 11:02:52");
INSERT INTO expenses VALUES("809","er-20240214-110327","20","2","1","1","6","3000","3000 RPS RCVD FOR PETI CASH","2024-02-01 00:00:00","2024-02-14 11:03:27");
INSERT INTO expenses VALUES("810","er-20240214-110413","7","2","1","1","6","300","300 RPS EXPENSE","2024-02-12 00:00:00","2024-02-14 11:04:13");
INSERT INTO expenses VALUES("811","er-20240214-110454","7","2","1","1","6","1310","1310 RPS EXPENSE ON 13/2/2024","2024-02-13 00:00:00","2024-02-14 11:04:54");
INSERT INTO expenses VALUES("812","er-20240214-110548","7","2","1","1","6","1110","1110 RPS EXPENSE  FOR   (FOUR DAYS)","2024-02-10 00:00:00","2024-02-14 11:05:48");
INSERT INTO expenses VALUES("813","er-20240222-010915","22","2","1","1","6","55000","55000 RPS PAID TO MR IMRANUDIN FOR DR ACTIVITIES","2024-02-19 00:00:00","2024-02-22 13:09:15");
INSERT INTO expenses VALUES("814","er-20240222-011024","20","2","1","1","6","900000","9 LAC RPS RECEIVED FROM RAPID PHARMA DISTIBUTORS","2024-02-19 00:00:00","2024-02-22 13:10:24");
INSERT INTO expenses VALUES("815","er-20240222-011119","20","2","1","1","6","600000","6 LAC RPS RECIVED FROM RAPID PHARMA DISTIBUTORS","2024-02-19 00:00:00","2024-02-22 13:11:19");
INSERT INTO expenses VALUES("816","er-20240222-011243","9","2","1","1","6","35000","35000 RPS RENT PAID  TO LAND LORD (MR REHAN KHAN)","2024-01-23 00:00:00","2024-02-22 13:12:43");
INSERT INTO expenses VALUES("817","er-20240222-011350","6","2","1","1","6","113000","113000 RPS PAID TO MR IMRANUDIIN FOR WEEKLY ACTIVITY (13/2/2024 TO 19/2/2024)","2024-02-19 00:00:00","2024-02-22 13:13:50");
INSERT INTO expenses VALUES("818","er-20240222-011434","21","2","1","1","6","63000","63000 RPS EXPENSE FOR COMBINE PRINTING BILL","2024-02-21 00:00:00","2024-02-22 13:14:34");
INSERT INTO expenses VALUES("819","er-20240222-034851","21","2","1","1","6","37000","37000 RPS PAID TO COMBINE PRINTING (CHQ 1952648951)","2023-09-11 00:00:00","2024-02-22 15:48:51");
INSERT INTO expenses VALUES("820","er-20240222-035042","21","2","1","1","6","37000","37000 RPS PAID TO COMBINE PRINTING (BILL NO 360) CHQ 1952648955","2023-10-03 00:00:00","2024-02-22 15:51:56");
INSERT INTO expenses VALUES("821","er-20240222-035512","21","2","1","1","6","50000","50000 RPS PAID TO COMBINE PRINTING ( CHQ 1952648958)","2023-10-18 00:00:00","2024-02-22 15:55:12");
INSERT INTO expenses VALUES("822","er-20240222-040752","21","2","1","1","6","20000","20000 RPS PAID TO COMBINE PRINTING FOR (LITRATURES 4 COLOR PRINT WITH DEISINNG AND VISITING CARD)","2022-10-03 00:00:00","2024-02-22 16:07:52");
INSERT INTO expenses VALUES("823","er-20240222-041117","21","2","1","1","6","50000","50000 RPS CHQ(26687134) PAID TO COMBINE PRINTING","2022-12-05 00:00:00","2024-02-22 16:11:17");
INSERT INTO expenses VALUES("824","er-20240222-041550","21","2","1","1","6","20000","20000 RPS PAID TO MR IMRAN FOR COMBINE PRINTING  (LITRATURES 4 COLOR WITH DEISINNING (1000) TOTAL (BILL IS 14000) ADVNCE (6000 RPS)","2023-01-11 00:00:00","2024-02-22 16:15:50");
INSERT INTO expenses VALUES("825","er-20240222-041705","21","2","1","1","6","60000","60000 RPS PAID TO COMBINE PRINTING CHQ (00100167)","2023-01-17 00:00:00","2024-02-22 16:17:05");
INSERT INTO expenses VALUES("826","er-20240222-042029","21","2","1","1","6","39000","39000 RPS PAID TO COMBINE PRINTING BILL BATCH NO 223","2023-03-28 00:00:00","2024-02-22 16:20:29");
INSERT INTO expenses VALUES("827","er-20240222-042354","21","2","1","1","6","76000","76000 RPS PAID TO COMBINE PRINTING CHQ (00100193)","2023-05-15 00:00:00","2024-02-22 16:23:54");
INSERT INTO expenses VALUES("828","er-20240222-042607","21","2","1","1","6","10000","10000 RPS PAID TO COMBINE PRINTING FOR DOCTORS (FILES CARD HEAD)","2023-04-19 00:00:00","2024-02-22 16:26:07");
INSERT INTO expenses VALUES("829","er-20240222-042806","21","2","1","1","6","36000","36000 RPS PAID TO COMBINE PRINTING CHQ (00100201)","2023-06-06 00:00:00","2024-02-22 16:28:06");
INSERT INTO expenses VALUES("830","er-20240222-043000","21","2","1","1","6","20500","20500 RPS PAID TO COMBINE PRINTING FOR PAGECALL BOX & LABEL","2023-06-16 00:00:00","2024-02-22 16:30:00");
INSERT INTO expenses VALUES("831","er-20240222-043235","21","2","1","1","6","55000","55000 RPS PAID TO COMBINE PRINTING CHQ (1952648938)","2023-07-27 00:00:00","2024-02-22 16:32:35");
INSERT INTO expenses VALUES("832","er-20240222-045145","21","2","1","1","6","18000","18000 RPS PAID TO MR IMRAN FOR COMBINE PRINTING CHQ 00100180)","2023-02-21 00:00:00","2024-02-22 16:51:45");
INSERT INTO expenses VALUES("833","er-20240305-104616","6","2","1","1","6","100000","ONE LAC RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY 20/2/2024 TO 26/2/2024","2024-02-26 00:00:00","2024-03-05 10:46:16");
INSERT INTO expenses VALUES("834","er-20240305-050351","6","2","1","1","6","119000","119000 RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY 27/2/2024 TO 4/3/2024","2024-03-04 00:00:00","2024-03-05 17:03:51");
INSERT INTO expenses VALUES("835","er-20240402-101951","13","2","1","1","6","300000","3 LAC RPS CHEQ DEPOSIT TO GENNEC HEALTH SCIENCE (CHEQ NO.. 1962921739)","2024-04-01 00:00:00","2024-04-02 10:19:51");
INSERT INTO expenses VALUES("836","er-20240402-105945","6","2","1","1","6","97000","97000 RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY (26/3/2024 TO 1/4/2024)","2024-04-01 00:00:00","2024-04-02 10:59:45");
INSERT INTO expenses VALUES("837","er-20240423-105010","6","2","1","1","6","107000","22/4/2024 ONE LAC SEVEN THOUSAND RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY","2024-04-23 00:00:00","2024-04-30 09:25:14");
INSERT INTO expenses VALUES("838","er-20240423-105117","20","2","1","1","6","1500000","FIFITEEN LAC RPS RECIVED FROM RAPID PHARMA","2024-04-22 00:00:00","2024-04-23 10:51:17");
INSERT INTO expenses VALUES("839","er-20240423-105457","20","2","1","1","6","2000","PETI CASH RECIVED 2000 RPS","2024-04-17 00:00:00","2024-04-23 10:54:57");
INSERT INTO expenses VALUES("840","er-20240423-105615","7","2","1","1","6","3030","3030 RPS EXPENSE FOR DAILY OFFICE USE 16/4/2024 TO 22/4/2024 INCLUDE WATER TANKER AND WATER BOTTLE","2023-04-22 00:00:00","2024-04-23 10:56:15");
INSERT INTO expenses VALUES("841","er-20240430-085321","7","2","1","1","6","1650","1650 rps expense on 29/4/2024","2024-04-29 00:00:00","2024-04-30 08:53:21");
INSERT INTO expenses VALUES("842","er-20240430-091000","5","2","1","1","6","48000","MISS HINA SALARY  48000 RPS PAID (SALARY OF APRIL 2024)","2024-04-29 00:00:00","2024-04-30 09:10:00");
INSERT INTO expenses VALUES("843","er-20240430-091054","5","2","1","1","6","42500","MISS KANWAL  SALARY 42500 RPS PAID (SALARY OF APRIL)2024","2024-04-29 00:00:00","2024-04-30 09:10:54");
INSERT INTO expenses VALUES("844","er-20240430-091150","5","2","1","1","6","37500","MR HUSSAIN SALARY IS 37500 RPS PAID (SALARY OF APRIL)2024","2024-04-29 00:00:00","2024-04-30 09:11:50");
INSERT INTO expenses VALUES("845","er-20240430-091252","5","2","1","1","6","60000","MIS FATIMA SALARY IS 60000 RPS PAID (SALARY OF APRIL)","2024-04-29 00:00:00","2024-04-30 09:12:52");
INSERT INTO expenses VALUES("846","er-20240430-091351","5","2","1","1","6","130000","MR IMRANUDDIN SALARY IS 130000 RPS PAID (SALARY OF APRIL)2024","2024-04-29 00:00:00","2024-04-30 09:13:51");
INSERT INTO expenses VALUES("847","er-20240430-091455","5","2","1","1","6","25000","M ALI NASIR SALARY IS 25000 RPS PAID (SALARY OF APRIL)2024","2024-04-29 00:00:00","2024-04-30 09:14:55");
INSERT INTO expenses VALUES("848","er-20240430-091749","22","2","1","1","6","20000","20000 RPS PAID TO DR SAIMA MODERN HOSPITAL GULSHAN","2024-04-29 00:00:00","2024-04-30 09:17:49");
INSERT INTO expenses VALUES("849","er-20240430-091950","11","2","1","1","6","4900","4900  RPS EXPENSE TP LINK AC600 DONGLE WITH 18 MONTHS WARANTY","2024-04-29 00:00:00","2024-04-30 09:19:50");
INSERT INTO expenses VALUES("850","er-20240430-092114","20","2","1","1","6","2000","2000 RPS RCVD FOR PETI CASH","2024-04-27 00:00:00","2024-04-30 09:21:14");
INSERT INTO expenses VALUES("851","er-20240430-092250","9","2","1","1","6","35000","35000 RPS CHEQUE(1962921741)MCB DEPOSIT TO MR REHAN KHAN LANDLORD FOR OFFICE RENT","2024-04-29 00:00:00","2024-04-30 09:22:50");
INSERT INTO expenses VALUES("852","er-20240430-092409","6","2","1","1","6","91000","91000 RPS PAID TO MR IMRANUDDIN FOR WEEKLY ACTIVITY 29/4/2024 MONDAY INCLUDE  LUNCH","2024-04-29 00:00:00","2024-04-30 09:24:09");
INSERT INTO expenses VALUES("853","er-20240514-102212","6","2","1","1","6","90000","90000 RPS PAID TO MR IMRAN UDDIN FOR WEEKLY ACTIVITY 7/5/2024 TO 13/5/2024","2024-05-13 00:00:00","2024-05-14 10:22:12");
INSERT INTO expenses VALUES("854","er-20240604-100145","5","2","1","1","6","130000","SALARY OF MAY (MR IMRAN UDDIN SALARY IS 130000 RPS PAID","2024-06-03 00:00:00","2024-06-04 10:01:45");
INSERT INTO expenses VALUES("855","er-20240604-100234","5","2","1","1","6","60000","SALARY OF MAY 2024 MISS FATIMA SALARY IS 60000 RPS PAID","2024-06-03 00:00:00","2024-06-04 10:02:34");
INSERT INTO expenses VALUES("856","er-20240604-100405","5","2","1","1","6","37500","SALARY OF MAY 2024 MISS KANWAL SALARY IS 37500 PAID AFTER 5000 DEDCUTION","2024-06-03 00:00:00","2024-06-04 10:04:05");
INSERT INTO expenses VALUES("857","er-20240604-100458","5","2","1","1","6","48000","SALARY OF MAY 2024 MISS HINA SALARY IS 48000 RPS PAID","2024-06-03 00:00:00","2024-06-04 10:04:58");
INSERT INTO expenses VALUES("858","er-20240604-100537","5","2","1","1","6","37500","SALARY OF MAY 2024 MR HUSSAIN SALARY IS 37500 PAID","2024-06-03 00:00:00","2024-06-04 10:05:37");
INSERT INTO expenses VALUES("859","er-20240604-100707","5","2","1","1","6","32000","SALARY OF MAY 2024 MISS NIMRA SALARY IS 32000 RPS PAID","2024-06-03 00:00:00","2024-06-04 10:07:07");
INSERT INTO expenses VALUES("860","er-20240604-100818","5","2","1","1","6","25000","SALARY OF MAY 2024 MR M ALI NASIR SALARY IS 25000 RPS PAID","2024-06-03 00:00:00","2024-06-04 10:08:18");
INSERT INTO expenses VALUES("861","er-20240604-100917","5","2","1","1","6","25000","SALARY OF MAY 2024 OMAR SALARY IS 25000 RPS PAID","2024-06-03 00:00:00","2024-06-04 10:09:17");
INSERT INTO expenses VALUES("862","er-20240604-101132","6","2","1","1","6","98900","MR IMRANUDDIN 98900 RPS RECIVED INCLUDED STAF LUNCH FOR WEEKLY ACTIVITY 28/5/2024 TO 3/6/2024","2024-06-03 00:00:00","2024-06-04 10:11:32");
INSERT INTO expenses VALUES("863","er-20240604-101312","20","2","1","1","6","5000","5000 RPS RECIVED FOR PETI CASH","2024-06-03 00:00:00","2024-06-04 10:13:12");
INSERT INTO expenses VALUES("864","er-20240604-101424","7","2","1","1","6","1590","1590 RPS EXPENSE ON 1/6/2024 INCLUDED WATER TANKER","2024-06-01 00:00:00","2024-06-04 10:14:24");
INSERT INTO expenses VALUES("865","er-20240604-101830","7","2","1","1","6","1200","1200 RPS EXPENSE ON 3/6/2024","2024-06-03 00:00:00","2024-06-04 10:18:30");



CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(191) NOT NULL,
  `site_logo` varchar(191) DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `staff_access` varchar(191) NOT NULL,
  `without_stock` varchar(255) NOT NULL DEFAULT 'no',
  `date_format` varchar(191) NOT NULL,
  `developed_by` varchar(191) DEFAULT NULL,
  `invoice_format` varchar(191) DEFAULT NULL,
  `decimal` int(11) DEFAULT 2,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_zatca` tinyint(1) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `vat_registration_number` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO general_settings VALUES("1","OVATION HEALTH CARE","20230927110325.png","0","3","","own","no","d-m-Y","LionCoders","standard","2","1","default.css","2018-07-06 02:13:11","2024-05-05 19:00:21","prefix","","0","SuperSoft Softwares","23424234");



CREATE TABLE `gift_card_recharges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO gift_card_recharges VALUES("1","2","100","1","2018-08-24 19:08:29","2018-08-24 19:08:29");
INSERT INTO gift_card_recharges VALUES("2","1","200","1","2018-08-24 19:08:50","2018-08-24 19:08:50");
INSERT INTO gift_card_recharges VALUES("3","1","100","1","2018-09-04 19:50:41","2018-09-04 19:50:41");
INSERT INTO gift_card_recharges VALUES("4","1","50","1","2018-09-04 19:51:38","2018-09-04 19:51:38");
INSERT INTO gift_card_recharges VALUES("5","1","50","1","2018-09-04 19:53:36","2018-09-04 19:53:36");
INSERT INTO gift_card_recharges VALUES("6","2","50","1","2018-09-04 19:54:34","2018-09-04 19:54:34");
INSERT INTO gift_card_recharges VALUES("7","5","10","1","2018-09-29 20:19:48","2018-09-29 20:19:48");
INSERT INTO gift_card_recharges VALUES("8","5","10","1","2018-09-29 20:20:04","2018-09-29 20:20:04");
INSERT INTO gift_card_recharges VALUES("9","2","100","1","2018-10-06 23:13:05","2018-10-06 23:13:05");
INSERT INTO gift_card_recharges VALUES("10","1","200","1","2018-10-06 23:13:39","2018-10-06 23:13:39");
INSERT INTO gift_card_recharges VALUES("11","1","300","1","2018-10-22 20:22:49","2018-10-22 20:22:49");
INSERT INTO gift_card_recharges VALUES("12","2","130","1","2021-02-11 02:36:01","2021-02-11 02:36:01");



CREATE TABLE `gift_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_no` varchar(191) NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO gift_cards VALUES("1","3571097513020486","1400","450","1","","2020-12-31","1","1","2018-08-17 21:57:40","2020-10-18 01:14:26");
INSERT INTO gift_cards VALUES("2","0452297501931931","500","100","2","","2021-12-31","1","1","2018-08-17 22:46:43","2021-02-11 02:36:01");
INSERT INTO gift_cards VALUES("3","123","13123","0","1","","2018-08-19","1","0","2018-08-18 18:38:21","2018-08-18 18:38:28");
INSERT INTO gift_cards VALUES("4","1862381252690499","100","0","","1","2018-10-04","1","0","2018-09-29 20:16:28","2018-09-29 20:17:21");
INSERT INTO gift_cards VALUES("5","2300813717254199","143","0","","1","2018-10-04","1","0","2018-09-29 20:18:49","2018-09-29 20:20:20");
INSERT INTO gift_cards VALUES("6","8327019475026421","1","0","1","","2018-10-07","1","0","2018-10-06 23:12:41","2018-10-06 23:12:55");
INSERT INTO gift_cards VALUES("7","2063379780590151","1","0","1","","2018-10-23","1","0","2018-10-22 20:23:22","2018-10-22 20:23:39");



CREATE TABLE `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO holidays VALUES("1","9","2023-07-09","2023-07-09","","1","2023-07-09 05:38:10","2023-07-09 05:38:10");



CREATE TABLE `hrm_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkin` varchar(191) NOT NULL,
  `checkout` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO hrm_settings VALUES("1","10:00am","6:00pm","2019-01-01 21:20:08","2019-01-01 23:20:53");



CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO languages VALUES("1","en","2018-07-07 18:59:17","2019-12-24 12:34:20");



CREATE TABLE `mail_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `driver` varchar(191) NOT NULL,
  `host` varchar(191) NOT NULL,
  `port` varchar(191) NOT NULL,
  `from_address` varchar(191) NOT NULL,
  `from_name` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `encryption` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO mail_settings VALUES("1","smtp","smtp.gmail.com","587","your_mail_address","your_mail_name","your_mail_username","1234","tls","2023-07-16 06:28:22","2023-07-31 06:26:06");



CREATE TABLE `medicine__activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `speciality` varchar(191) NOT NULL,
  `mobile` varchar(191) NOT NULL,
  `products` varchar(191) NOT NULL,
  `activity` varchar(191) DEFAULT NULL,
  `amount` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `_date` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2040 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO medicine__activities VALUES("11","neon","ENT","(000) 000-000","ALCO,DEPT,NIMA","LED","1200","0","12/09/2023","2023-10-09 09:51:37","2023-10-09 10:22:08");
INSERT INTO medicine__activities VALUES("12","neon","ENT","(000) 000-000","ALCO,DEPT,NIMA","LED","26003","0","12/09/2023","2023-10-09 09:51:50","2023-11-01 15:28:56");
INSERT INTO medicine__activities VALUES("13","DR SHAHZAIB","CIVIL ORTHO UNIT 2","...","...","DINNER","2000","1","3/10/23","2023-10-28 16:50:09","2023-10-30 13:03:50");
INSERT INTO medicine__activities VALUES("14","neon","ENT","(000) 000-000","ALCO,DEPT,NIMA","LED","","0","12/09/2023","2023-10-28 17:07:12","2023-11-01 15:29:07");
INSERT INTO medicine__activities VALUES("15","...","CIVIL OPD UNIT 2","...","...","REFRESHMENT","1000","1","3/10/23","2023-10-28 17:09:44","2023-10-30 13:04:21");
INSERT INTO medicine__activities VALUES("16","DR JAMILA","SINDH SERVICES GYNE OKHOI","...","...","BAKREY AND CHOCLATE","3000","1","3/10/23","2023-10-28 17:10:37","2023-10-30 13:04:37");
INSERT INTO medicine__activities VALUES("17","DR HINA","SINDH GOVERMENT HOSPITAL SAUDABD","..","...","E CATLE  INSTALMENT","2000","1","3/10/23","2023-10-28 17:11:40","2023-10-30 13:04:53");
INSERT INTO medicine__activities VALUES("18","DR WAQAR","CIVIL ORTHO UNIT 1","..","...","DINNER","2500","1","...","2023-10-28 17:12:22","2023-10-30 13:05:09");
INSERT INTO medicine__activities VALUES("19","DR SAJJAD","CIVIL ORTHO UNIT 2","...","...","DINNER","2500","1","3/10/2023","2023-10-28 17:12:58","2023-11-30 11:07:57");
INSERT INTO medicine__activities VALUES("20","...","CIVIL OPD","..","..","REFRESHMENT","500","1","..","2023-10-28 17:13:45","2023-10-30 13:05:23");
INSERT INTO medicine__activities VALUES("21","SHAKEEL","CIVIL PHARMACY","..","...","LUNCH","500","1","..","2023-10-28 17:14:36","2023-10-30 13:05:43");
INSERT INTO medicine__activities VALUES("22","DR AGHA WASEEM","JPMC ORTHO UNIT 17","...","...","LUNCH","2300","1","...","2023-10-28 17:15:13","2023-10-30 13:06:08");
INSERT INTO medicine__activities VALUES("23","DR WALIULLHA","JPMC ORTHO UNIT 17","..","..","LUNCH","3000","0","17/10/2023","2023-10-28 17:15:46","2023-10-31 17:41:07");
INSERT INTO medicine__activities VALUES("24","DR MATIULLHA","JPMC ORTHO UNIT 17","...","...","DINNER","3000","1","..","2023-10-28 17:16:22","2023-10-30 13:11:18");
INSERT INTO medicine__activities VALUES("25","DR KAMRAN","CIVIL GYNE OPD","...","..","REFRESHMENT","850","1","..","2023-10-28 17:16:55","2023-10-30 13:12:03");
INSERT INTO medicine__activities VALUES("26","DR WAJAHAT","CIVIL ORTHO UNIT 2","...","...","DINNER","2800","1","..","2023-10-28 17:17:40","2023-10-30 13:12:29");
INSERT INTO medicine__activities VALUES("27","DR SHAJEEL","JPMC ORTHO UNIT 17","...","...","LUNCH & DINNER","5000","1","...","2023-10-28 17:18:21","2023-10-30 13:12:54");
INSERT INTO medicine__activities VALUES("28","DR ASMA SAMI &DR MANSOOR","...","...","..","PRINTING","3500","1","..","2023-10-28 17:20:19","2023-10-30 13:13:12");
INSERT INTO medicine__activities VALUES("29","DR IMTIAZ","JPMC ORTHO UNIT 14","...","...","LUNCH","3100","1","..","2023-10-28 17:20:48","2023-10-30 13:13:32");
INSERT INTO medicine__activities VALUES("30","...","JPMC","...","...","REFRESHMENT","1000","1","..","2023-10-28 17:21:42","2023-10-30 13:13:55");
INSERT INTO medicine__activities VALUES("31","...","DOW HOSPITAL","...","...","ACTIVITY","1400","1","..","2023-10-28 17:22:17","2023-10-30 13:14:14");
INSERT INTO medicine__activities VALUES("32","RAPID PHARMA","..","...","...","...","18000","1","...","2023-10-28 17:22:49","2023-10-30 13:14:50");
INSERT INTO medicine__activities VALUES("33","DR SAIMA","MODERN HOSPITAL GULSHAN IQBAL","...","...","ACTIVITY","12000","1","4/10/2023","2023-10-28 17:23:31","2023-11-07 12:22:24");
INSERT INTO medicine__activities VALUES("34","..","SERVICES GYNE WARD","...","...","ACTIVITY","40000","1","...","2023-10-28 17:25:08","2023-10-30 13:20:08");
INSERT INTO medicine__activities VALUES("35","DR DANISH","JPMC WARD 14","...","...","ACTIVITY","20000","1","...","2023-10-28 17:27:16","2023-10-30 13:20:39");
INSERT INTO medicine__activities VALUES("36","DR NAZNEEN","ANKEL SERYA","..","...","EAGSS","1500","1","..","2023-10-28 17:29:10","2023-10-30 13:25:04");
INSERT INTO medicine__activities VALUES("37","DR NAZNEEN","ANKEL SERYA","..","...","EAGSS","","0","..","2023-10-28 17:29:11","2023-10-28 17:39:58");
INSERT INTO medicine__activities VALUES("38","DR NAZNEEN","ANKEL SERYA","..","...","EAGSS","","0","..","2023-10-28 17:29:11","2023-10-30 13:25:35");
INSERT INTO medicine__activities VALUES("39","DR MANSOOR","CIVIL ORTHO UNIT 1","..","..","DINNER","2000","1","..","2023-10-28 17:30:03","2023-10-30 13:26:03");
INSERT INTO medicine__activities VALUES("40","DR ZOHAIB","JPMC ORTHO WARD 17","..","...","LUNCH (SUNDAY)","","0","..","2023-10-28 17:32:02","2023-10-28 17:35:21");
INSERT INTO medicine__activities VALUES("41","DR NOMAN","JPMC ORTHO UNIT 17","...","...","DINNER(SUNDAY)","3000","1","...","2023-10-28 17:34:27","2023-10-30 13:26:56");
INSERT INTO medicine__activities VALUES("42","DR SUBHAN","JPMC ORTHO WARD 17","..","...","LUNCH","3000","1","...","2023-10-28 17:36:09","2023-10-30 13:27:26");
INSERT INTO medicine__activities VALUES("43","DR ZOHAIB","JPMC ORTHO WARD 17","...","...","DINNER","3500","1","..","2023-10-28 17:36:43","2023-10-30 13:27:46");
INSERT INTO medicine__activities VALUES("44","OFFICE","...","...","...","LUNCH","","0","..","2023-10-28 17:37:23","2023-11-29 16:47:02");
INSERT INTO medicine__activities VALUES("45","DR ZOHAIB","JPMC ORTHO UNIT 17","..","...","LUNCH (SUNDAY)","3000","1","..","2023-10-30 13:28:37","2023-10-30 13:28:37");
INSERT INTO medicine__activities VALUES("46","DR WAQAS","ORTHOPADIC UNIT 2","....","...","BOOK","3000","1","10/10/23","2023-10-30 13:32:31","2023-10-30 13:32:31");
INSERT INTO medicine__activities VALUES("47","DR SAJJAD","ORTHOPADIC UNIT 2","....","...","ORTHOCON REGISTRATION","7000","1","10/10/23","2023-10-30 13:34:23","2023-10-30 13:34:23");
INSERT INTO medicine__activities VALUES("48","AURANZAIB LALA","CIVIL HOSPITAL","....","...","...","10000","1","10/10/23","2023-10-30 13:35:09","2023-10-30 13:35:09");
INSERT INTO medicine__activities VALUES("49","MUBASHIR","CIVIL PHARMACY","...","...","DINNER","1000","1","10/10/23","2023-10-30 13:35:53","2023-10-30 13:35:53");
INSERT INTO medicine__activities VALUES("50","DR TAIMOOR","ORTHOPADIC ORTHO 2","...","...","REGISTRATION ORTHOCON","7000","1","10/10/23","2023-10-30 13:36:41","2023-10-30 13:36:41");
INSERT INTO medicine__activities VALUES("51","DR AGHA WASEEM","ORTHOPADIC JPMC WARD 14","...","...","DINNER","2600","1","10/10/23","2023-10-30 13:37:36","2023-10-30 13:37:36");
INSERT INTO medicine__activities VALUES("52","DR SHAHZAIB","ORTHOPADIC CIVIL UNIT 2","...","...","DINNER","1850","1","10/10/23","2023-10-30 13:38:27","2023-10-30 13:38:27");
INSERT INTO medicine__activities VALUES("53","DR UMAIR","OPD REFRESHMENT","...","...","..","500","1","10/10/23","2023-10-30 13:39:08","2023-10-30 13:39:08");
INSERT INTO medicine__activities VALUES("54","DR NAZNEEN","ANKEL SERYA HOSPITAL","..","...","SUPER CARD","800","1","..","2023-10-30 13:42:20","2023-10-30 13:42:20");
INSERT INTO medicine__activities VALUES("55","DR SOUGHAT","CIVIL OPD","..","...","WATER BOTTLES","300","1","..","2023-10-30 13:43:01","2023-10-30 13:43:01");
INSERT INTO medicine__activities VALUES("56","NASIR","TURAMA CENTER","..","...","GUARD","1000","1","...","2023-10-30 13:43:28","2023-11-28 17:04:45");
INSERT INTO medicine__activities VALUES("57","DR AMMAR","JPMC WARD 17 ORTHO","...","...","LUNCH","3000","1","..","2023-10-30 13:44:04","2023-10-30 13:44:04");
INSERT INTO medicine__activities VALUES("58","ZAHHER &WAHEED","CIVIL","...","...","POLIC CHOWKI","2000","1","...","2023-10-30 13:44:48","2023-10-30 13:44:48");
INSERT INTO medicine__activities VALUES("59","DR JAMEEL","DOW OJHA","...","...","ACTIVITY","2850","1","..","2023-10-30 13:45:31","2023-10-30 13:45:31");
INSERT INTO medicine__activities VALUES("60","DR SHAHZAIB","CIVIL ORTHO 2","...","...","BOOK","2300","1","...","2023-10-30 13:46:01","2023-10-30 13:46:01");
INSERT INTO medicine__activities VALUES("61","DR SAJJAD","CIVIL ORTHO 2","..","...","DINNER","2000","1","..","2023-10-30 13:46:29","2023-10-30 13:46:29");
INSERT INTO medicine__activities VALUES("62","DR SUNIL","CIVIL ORTHO  2","...","...","OPD ACTIVITY","500","1","...","2023-10-30 13:47:15","2023-10-30 13:47:15");
INSERT INTO medicine__activities VALUES("63","DR IMTIAZ","JPMC ORTHO WARD 14","...","...","LUNCH","2950","1","..","2023-10-30 13:47:49","2023-10-30 13:47:49");
INSERT INTO medicine__activities VALUES("64","DR MUGHAL","I-S-M","...","...","ROOM SPRY","1000","1","...","2023-10-30 13:48:18","2023-10-30 13:48:18");
INSERT INTO medicine__activities VALUES("65","DR MATIULLAH","JPMC ORTHO WARD 17","...","...","3500","3500","1","...","2023-10-30 13:49:18","2023-10-30 13:49:18");
INSERT INTO medicine__activities VALUES("66","DR WALIULLAH","JPMC ORTHO WARD 17","..","...","DINNER","3000","1","..","2023-10-30 13:50:01","2023-10-30 13:50:01");
INSERT INTO medicine__activities VALUES("67","DR HASNAIN","CIVIL ORTHOCON 2","..","...","DINNER","3300","1","..","2023-10-30 13:50:33","2023-10-30 13:50:33");
INSERT INTO medicine__activities VALUES("68","DR JAGDESH","CIVIL ORTHO","..","...","ACTIVITY","2500","1","..","2023-10-30 13:51:01","2023-10-30 13:51:01");
INSERT INTO medicine__activities VALUES("69","DR IM","JPMC ORTHO UNIT 1","..","...","LUNCH","1750","1","..","2023-10-30 13:51:38","2023-10-30 13:51:38");
INSERT INTO medicine__activities VALUES("70","DR ASIF","CIVIL ORTHO 2","...","...","DINNER","2300","1","..","2023-10-30 13:52:15","2023-10-30 13:52:15");
INSERT INTO medicine__activities VALUES("71","DR ANUM","JPMC","...","...","BOOK","13200","1","..","2023-10-30 13:53:50","2023-10-30 13:53:50");
INSERT INTO medicine__activities VALUES("72","DR AGHA","JPMC ORTHO WARD 14","..","..","REFRESHMENT","1200","1","...","2023-10-30 13:54:46","2023-10-30 13:54:46");
INSERT INTO medicine__activities VALUES("73","..","JPMC OPD","..","...","BREAK FAST","2200","1","..","2023-10-30 13:55:26","2023-10-30 13:55:26");
INSERT INTO medicine__activities VALUES("74","DR WAQAR","CIVIL ORTHO UNIT 1","..","...","DINNER","2500","1","...","2023-10-30 13:56:02","2023-10-30 13:56:02");
INSERT INTO medicine__activities VALUES("75","...","CIVIL GYNE OPD","...","...","REFRESHMENT","650","1","...","2023-10-30 13:56:42","2023-10-30 13:56:42");
INSERT INTO medicine__activities VALUES("76","DR SUBHAN","JPMC WARD 17","..","...","LUNCH","3000","1","..","2023-10-30 13:57:10","2023-10-30 13:57:10");
INSERT INTO medicine__activities VALUES("77","DR NAZNEEN","ANKEL SERYA","..","`...","EAGSS","1500","1","..","2023-10-30 13:57:39","2023-10-30 13:57:39");
INSERT INTO medicine__activities VALUES("78","DR ZOHAIB","JPMC","...","...","DINNER","3500","1","..","2023-10-30 13:58:09","2023-10-30 13:58:09");
INSERT INTO medicine__activities VALUES("79","SAEED","CIVIL OPD","...","...","GAURD","1000","1","...","2023-10-30 13:58:55","2023-10-30 13:58:55");
INSERT INTO medicine__activities VALUES("80","DR ANSOOR & DR ASMA","..","...","...","PRINTING BILL","3500","1","...","2023-10-30 13:59:55","2023-10-30 13:59:55");
INSERT INTO medicine__activities VALUES("81","...","CIVIL GYNE WARD 3","...","...","MICROWAVE INSTALLMENT","6000","1","10/10/23","2023-10-30 14:01:21","2023-10-30 14:01:21");
INSERT INTO medicine__activities VALUES("82","..","CIVIL OPD","...","...","ACTIVITY","1800","1","..","2023-10-30 14:01:49","2023-10-30 14:01:49");
INSERT INTO medicine__activities VALUES("83","DR SHAHZAIB","CIVIL UNIT 2","..","PAGECAL AND INFADOM","DINNER","2500","1","17/10/2023","2023-10-31 17:22:27","2023-10-31 17:22:27");
INSERT INTO medicine__activities VALUES("84","DR TARIQ BHATTI","CIVIL UNIT 1","..","PAGECAL AND INFADOM","DINNER","2000","1","17/10/2023","2023-10-31 17:24:22","2023-10-31 17:24:22");
INSERT INTO medicine__activities VALUES("85","...","ORTHO UNIT 2 OPD","..","...","REFRESHMENT","800","1","17/10/2023","2023-10-31 17:25:36","2023-10-31 17:25:36");
INSERT INTO medicine__activities VALUES("86","DR JGADESH","UNIT 2 WARD","...","...","REFRESHMENT","2000","1","17/10/2023","2023-10-31 17:26:52","2023-10-31 17:26:52");
INSERT INTO medicine__activities VALUES("87","DR QASIM","JPMC ORTHO","...","PAGECAL","INSTALMENT","7000","1","17/10/2023","2023-10-31 17:27:47","2023-10-31 17:27:47");
INSERT INTO medicine__activities VALUES("88","DR ASIF","CIVIL UNIT 2","...","PAGECAL","DINNER","2500","1","17/10/2023","2023-10-31 17:29:39","2023-10-31 17:29:39");
INSERT INTO medicine__activities VALUES("89","DR SAJJAD","CIVIL UNIT 2","...","PAGECAL & INFADOM","DINNER","2200","1","17/10/2023","2023-10-31 17:31:34","2023-10-31 17:31:34");
INSERT INTO medicine__activities VALUES("90","DR TAIMOOR","CIVIL UNIT 2","...","PAGECAL& INFADOM","SUNDAY DINNER","2000","1","17/10/2023","2023-10-31 17:32:28","2023-10-31 17:32:28");
INSERT INTO medicine__activities VALUES("91","DR PREM CHAND","CIVIL UNIT 1","...","PAGECAL","DINNER","3300","1","17/10/2023","2023-10-31 17:33:20","2023-10-31 17:33:20");
INSERT INTO medicine__activities VALUES("92","DR ASIF","CIVIL UNIT 2","...","PAGECAL & INFADOM","BOOK","2500","1","17/10/2023","2023-10-31 17:34:05","2023-10-31 17:34:05");
INSERT INTO medicine__activities VALUES("93","DR FAYAZ","CIVIL UNIT 1","...","PAGECAL","BOOK","400","1","17/10/2023","2023-10-31 17:34:59","2023-10-31 17:34:59");
INSERT INTO medicine__activities VALUES("94","DR MEER","CIVIL JPMC ORTHO","...","PAGECAL","book","1000","1","17/10/2023","2023-10-31 17:36:12","2023-10-31 17:36:12");
INSERT INTO medicine__activities VALUES("95","DR SAQIB","JPMC ORTHO 17","...","PAGECAL INFADOM","LUNCH","3200","1","17/10/2023","2023-10-31 17:37:11","2023-10-31 17:37:11");
INSERT INTO medicine__activities VALUES("96","DR WALIUULAH","JPMC ORTHO 17","...","PAGECAL INFADOM","DINNER","3000","1","17/10/2023","2023-10-31 17:38:00","2023-10-31 17:38:00");
INSERT INTO medicine__activities VALUES("97","DR IMTIAZ","JPMC ORTHO 14","...","PAGECAL","LUNCH","3500","1","17/10/2023","2023-10-31 17:38:59","2023-10-31 17:38:59");
INSERT INTO medicine__activities VALUES("98","DR DANISH","JPMC ORTHO 14","...","PAGECAL INFADOM","DINNER","1530","1","17/10/2023","2023-10-31 17:42:07","2023-10-31 17:42:07");
INSERT INTO medicine__activities VALUES("99","DR AMMAR","JPMC ORTHO 17","...","PAGECAL & INFADOM","LUNCH","3000","1","17/10/2023","2023-10-31 17:43:05","2023-10-31 17:43:05");
INSERT INTO medicine__activities VALUES("100","DR ZOHAIB","JPMC ORTHO 17","..","PAGECAL AND INFADOM","SUNDAY LUNCH","3000","1","17/10/2023","2023-10-31 17:44:45","2023-10-31 17:44:45");
INSERT INTO medicine__activities VALUES("101","DR AGHA WASEEM","JPMC ORTHO WARD 14","...","PAGECAL & INFADOM","LUNCH","2600","1","17/10/2023","2023-10-31 17:46:15","2023-10-31 17:46:15");
INSERT INTO medicine__activities VALUES("102","DR SANGITA","MOTHER CARE HOSPITAL","...","FALNEU.. IROHEME...PAGECAL","CASH","10000","1","17/10/2023","2023-10-31 17:48:23","2023-10-31 17:48:23");
INSERT INTO medicine__activities VALUES("103","DR AGHA WASEEM","JPMC WARD 14","...","PAGECAL & INFADOM","CASH","15000","1","17/10/2023","2023-10-31 17:49:15","2023-10-31 17:49:15");
INSERT INTO medicine__activities VALUES("104","RIAZ PHARMACY","...","...","...","CASH","5000","1","17/10/2023","2023-10-31 17:49:56","2023-10-31 17:49:56");
INSERT INTO medicine__activities VALUES("105","RAHEEM","JPMC","...","PHARMCY","CASH","2000","1","17/10/2023","2023-10-31 17:51:30","2023-10-31 17:51:30");
INSERT INTO medicine__activities VALUES("106","DR SAQIB","JPMC WARD 17","...","PAGECAL & INFADOM","UNIFORM","4600","1","17/10/2023","2023-10-31 17:52:34","2023-10-31 17:52:34");
INSERT INTO medicine__activities VALUES("107","PRINTING PAPER","...","...","...","...","2500","1","17/10/2023","2023-10-31 17:53:44","2023-10-31 17:53:44");
INSERT INTO medicine__activities VALUES("108","DR NAZNEEN","ANKEL SERYA","...","IROHEME...CRANDOM...FALNEU...PAGECAL","EAGGS","1500","1","17/10/2023","2023-10-31 17:54:49","2023-10-31 17:54:49");
INSERT INTO medicine__activities VALUES("109","DR ASIF","CIVIL ORTHO UNIT 2","..","PAGECAL & INFADOM","DINNER","2500","1","24/10/2023","2023-10-31 18:05:25","2023-10-31 18:05:25");
INSERT INTO medicine__activities VALUES("110","..","OPD","..","...","REFRESHMENT","700","1","24/10/2023","2023-10-31 18:06:04","2023-10-31 18:06:04");
INSERT INTO medicine__activities VALUES("111","DR DANISH","JPMC UNIT ORTHO 14","...","PAGECAL","LUNCH","2270","1","24/10/2023","2023-10-31 18:07:16","2023-10-31 18:07:16");
INSERT INTO medicine__activities VALUES("112","DR JAMILA","SERVICES OKHAI","..","PAGECAL..IROHEME...FALNEU...CARNDOM","BOOK","1300","1","24/10/2023","2023-10-31 18:08:33","2023-10-31 18:08:33");
INSERT INTO medicine__activities VALUES("113","DR WAQAR","CIVIL ORTHO UNIT 2","...","PAGECAL","DINNER","2500","1","24/10/2023","2023-10-31 18:09:19","2023-10-31 18:09:19");
INSERT INTO medicine__activities VALUES("114","DOW","...","...","...","ACTI","1200","1","24/10/2023","2023-10-31 18:10:01","2023-10-31 18:10:01");
INSERT INTO medicine__activities VALUES("115","DR NAZNEEN","ANKEL SERYA","...","PAGECAL..FALNEU..IROHEME","EAGGS","1500","1","24/10/2023","2023-10-31 18:10:51","2023-10-31 18:10:51");
INSERT INTO medicine__activities VALUES("116","DR AMMAR","JPMCWARD 17 ORTHO","...","PAGECALL IROHEME","LUNCH","3000","1","24/10/2023","2023-10-31 18:11:55","2023-10-31 18:11:55");
INSERT INTO medicine__activities VALUES("117","IMRAN PHARMACY","CIVIL HOSPITAL","...","..","CASH","3000","1","24/10/2023","2023-10-31 18:13:02","2023-10-31 18:13:02");
INSERT INTO medicine__activities VALUES("118","ATIF PHARMACY","CIVIL HOSPITAL","...","...","CASH","1000","1","24/10/2023","2023-10-31 18:14:52","2023-10-31 18:14:52");
INSERT INTO medicine__activities VALUES("119","..","OPD","...","PAGECAL","REFRESHMENT","600","1","24/10/2023","2023-10-31 18:15:32","2023-10-31 18:15:32");
INSERT INTO medicine__activities VALUES("120","DR TAIMOOR","CIVIL UNIT 2","...","PAGECAL & INFADOM","DINNER","2500","1","24/10/2023","2023-10-31 18:16:18","2023-10-31 18:16:18");
INSERT INTO medicine__activities VALUES("121","DR AGHA WASEEM","JPMC ORTHO WARD 14","...","PAGECAL","LUNCH","2350","1","24/10/2023","2023-10-31 18:17:08","2023-10-31 18:17:08");
INSERT INTO medicine__activities VALUES("122","DR MEER","JPMC ORTHO UNIT 17","...","PAGECAL & INFADOM","LUNCH","3600","1","24/10/2023","2023-10-31 18:17:59","2023-10-31 18:17:59");
INSERT INTO medicine__activities VALUES("123","DR WALIULLAH","JPMC WARD 17 ORTHO","...","PAGECAL & INFADOM","DINNER","3000","1","24","2023-10-31 18:19:00","2023-10-31 18:19:00");
INSERT INTO medicine__activities VALUES("124","DR PREMCHAND","ORTHO CIVIL UNIT 1","...","PAGECAL & INFADOM","DINNER","2300","1","24/10/2023","2023-10-31 18:19:56","2023-10-31 18:19:56");
INSERT INTO medicine__activities VALUES("125","DR SHAHZAIB","ORTH CIVIL UNIT 2","...","PAGECAL & INFADOM","DINNER","2000","1","24/10/2023","2023-10-31 18:20:52","2023-10-31 18:20:52");
INSERT INTO medicine__activities VALUES("126","DR ADEEL","ORTHO 2 HOD","...","PAGECAL","BREAK FAST","4000","1","24/10/2023","2023-10-31 18:21:35","2023-10-31 18:21:35");
INSERT INTO medicine__activities VALUES("127","DR SANGITA","MOTHER CARE","...","FALNEU.. IROHEME.","CASH","5000","1","24/10/2023","2023-10-31 18:22:15","2023-10-31 18:22:15");
INSERT INTO medicine__activities VALUES("128","DR IMTIAZ","JPMC WARD 14","...","PAGECAL","LUNCH","2550","1","24/10/2023","2023-10-31 18:23:01","2023-10-31 18:23:01");
INSERT INTO medicine__activities VALUES("129","DR ZOHAIB","JPMC WARD 17","..","PAGECAL & INFADOM","PICNIC","25000","1","24/10/2023","2023-10-31 18:23:42","2023-10-31 18:23:42");
INSERT INTO medicine__activities VALUES("130","DR ZOHAIB","JPMC WARD 17","..","PAGECAL","SUNDAY DINNER","2500","1","24/10/2023","2023-10-31 18:24:31","2023-10-31 18:24:31");
INSERT INTO medicine__activities VALUES("131","DR AZEEM KHOSO","JPMC WARD 14 ORTHO","...","PAGECAL","DINNER","2500","1","24/10/2023","2023-10-31 18:25:15","2023-10-31 18:25:15");
INSERT INTO medicine__activities VALUES("132","DR ARSALAN KHAN","JPMC WARD 17 ORTHO","...","PAGECAL","LUNCH","3000","1","24/10/2023","2023-10-31 18:26:03","2023-10-31 18:26:03");
INSERT INTO medicine__activities VALUES("133","DR JAGDESH","WARD","..","...","REFRESHMENT","1400","1","24/10/2023","2023-10-31 18:26:43","2023-10-31 18:26:43");
INSERT INTO medicine__activities VALUES("134","DR IQBAL KHIYANI","TAJ COMPLEX","..","...","INSTALMENT","24000","1","24/10/2023","2023-10-31 18:28:55","2023-10-31 18:28:55");
INSERT INTO medicine__activities VALUES("135","DR TARIQ","CIVIL ORTHO UNIT 1","...","PAGECAL ..IRHOEME..FALNEU","DINNER","2000","1","24/10/2023","2023-10-31 18:30:02","2023-10-31 18:30:02");
INSERT INTO medicine__activities VALUES("136","DR SUBHAN","CIVIL JPMC WARD 17","..","PAGECAL","LUNCH","3000","1","24/10/2023","2023-10-31 18:30:39","2023-10-31 18:30:39");
INSERT INTO medicine__activities VALUES("137","DR ZOHAIB","JPMC WARD 17 ORTHO","..","PAGECAL & INFADOM","DINNER","3500","1","24/10/2023","2023-10-31 18:31:21","2023-10-31 18:31:21");
INSERT INTO medicine__activities VALUES("138","..","CIVIL OPD","...","...","REFRESHMENT","1100","1","24/10/2023","2023-10-31 18:32:00","2023-10-31 18:32:00");
INSERT INTO medicine__activities VALUES("139","DR OMAR ABBAS","MOTHER CARE","..","FALNEU..PAGECALL..IRHOME","CAKE","2150","1","24/10/2023","2023-10-31 18:33:05","2023-10-31 18:33:05");
INSERT INTO medicine__activities VALUES("140","DR ARIF","ANKER SERYA","...","CARNDOM","DINNER FAREWEL","11500","1","24/10/2023","2023-10-31 18:33:57","2023-10-31 18:33:57");
INSERT INTO medicine__activities VALUES("141","DR ARIF ALI SHEIKH","...","...","...","...","40000","1","16/10/2023","2023-11-06 09:48:07","2023-11-06 09:48:07");
INSERT INTO medicine__activities VALUES("142","DR SAMINA MAJEED","...","...","...","PAPER FILES","9000","1","31/10/2023","2023-11-06 13:19:56","2023-11-06 13:19:56");
INSERT INTO medicine__activities VALUES("143","DR ASIF","CIVIL 2","...","...","DINNER","2500","1","31/10/2023","2023-11-06 13:21:23","2023-11-06 13:21:23");
INSERT INTO medicine__activities VALUES("144","DR SOUGHT SAHAB","CIVIL","..","...","REFRESHMENT","1000","1","31/10/2023","2023-11-06 13:22:11","2023-11-06 13:22:11");
INSERT INTO medicine__activities VALUES("145","DR AMMAR","JPMC 17","...","...","LUNCH","3000","1","31/10/2023","2023-11-06 13:23:08","2023-11-06 13:23:08");
INSERT INTO medicine__activities VALUES("146","LALA AURANGZAIB","CIVIL","..","...","5000","5000","1","31/10/2023","2023-11-06 13:24:02","2023-11-06 13:24:02");
INSERT INTO medicine__activities VALUES("147","DR ADEEL PROFESSOR","CIVIL","..","...","REFRESHMENT","2000","1","31/10/2023","2023-11-06 13:24:45","2023-11-06 13:24:45");
INSERT INTO medicine__activities VALUES("148","DR HARIS ASAD","JPMC WARD 14","..","...","LUNCH","3400","1","31/10/2023","2023-11-06 13:25:39","2023-11-06 13:25:39");
INSERT INTO medicine__activities VALUES("149","DR SHAHZAIB","CILVIL WARD 2","...","...","DINNER","1800","1","31/10/2023","2023-11-06 13:26:20","2023-11-06 13:26:20");
INSERT INTO medicine__activities VALUES("150","DR MAQSOOD","TIBRI HOSPITAL","..","...","...","20000","1","31/10/2023","2023-11-06 13:27:10","2023-11-06 13:27:10");
INSERT INTO medicine__activities VALUES("151","DR MEER","JPMC 17","..","...","LUNCH","3000","1","31/10/2023","2023-11-06 13:28:04","2023-11-06 13:28:04");
INSERT INTO medicine__activities VALUES("152","DR WALIULLAH","JPMC 17","...","...","DINNER","3000","1","31/10/2023","2023-11-06 13:29:10","2023-11-06 13:29:10");
INSERT INTO medicine__activities VALUES("153","DR WAQAR","CIVIL WARD 1","..","...","DINNER","2700","1","31/10/2023","2023-11-06 13:29:50","2023-11-06 13:29:50");
INSERT INTO medicine__activities VALUES("154","COMBINE PRINTING","PRINTING","...","...","PRINTING","3500","1","31/10/2023","2023-11-06 13:33:49","2023-11-06 13:33:49");
INSERT INTO medicine__activities VALUES("155","DR SHAHZAIB","CIVIL UNIT 2","...","PAGECAL & INFADOM","DINNER","1850","1","12/09/2023","2023-11-07 10:29:14","2023-11-07 10:31:37");
INSERT INTO medicine__activities VALUES("156","...","JPMCWARD 17","..","...","REFRESHMENT","900","1","12/09/2023","2023-11-07 10:30:14","2023-11-07 10:30:14");
INSERT INTO medicine__activities VALUES("157","ASIF","CIVIL  ORTHO WARD 2","...","PAGECAL & INFADOM","DINNER","2000","1","12/09/2023","2023-11-07 10:32:59","2023-11-07 10:32:59");
INSERT INTO medicine__activities VALUES("158","OPD","UNIT 1","...","..","REFRESHMENT","600","1","12/09/2023","2023-11-07 10:33:58","2023-11-07 10:33:58");
INSERT INTO medicine__activities VALUES("159","OPD","UNIT 2","...","...","REFRESHMENT","700","1","12/09/2023","2023-11-07 10:34:32","2023-11-07 10:34:32");
INSERT INTO medicine__activities VALUES("160","DR DANISH","JPMC WARD 17","...","PAGECAL & INFADOM","LUNCH","2000","1","12/09/2023","2023-11-07 10:35:30","2023-11-07 10:35:30");
INSERT INTO medicine__activities VALUES("161","DR IMTIAZ","JPMC WARD 17","...","PAGECAL & INFADOM","DINNER","2700","1","12/09/2023","2023-11-07 10:37:06","2023-11-07 10:37:06");
INSERT INTO medicine__activities VALUES("162","AURANZAIB LALA","CIVIL HOSPITAL","..","...","...","10000","1","12/09/2023","2023-11-07 10:38:24","2023-11-07 10:38:24");
INSERT INTO medicine__activities VALUES("163","DR PYAR DIMAN","...","...","PAGECAL","INSTALMENT","12000","1","12/09/2023","2023-11-07 10:39:46","2023-11-07 10:39:46");
INSERT INTO medicine__activities VALUES("164","DR NOMAN","JPMC","..","PAGECAL","CASH","5000","1","12/09/2023","2023-11-07 10:40:39","2023-11-07 10:41:07");
INSERT INTO medicine__activities VALUES("165","DR PREM CHAND","ORTHO 1 CIVIL","..","PAGECAL & INFADOM","DINNER","2000","1","12/09/2023","2023-11-07 10:42:10","2023-11-07 10:42:10");
INSERT INTO medicine__activities VALUES("166","DR SHARJEEL","JPMC WARD 17","...","PAGECAL & INFADOM","LUNCH","3500","1","12/09/2023","2023-11-07 10:43:31","2023-11-07 10:43:31");
INSERT INTO medicine__activities VALUES("167","DR SHAKEEL","SINDH SERVICESS HOPSITAL","..","PAGECAL & INFADOM","REFRESHMENT","1500","1","12/09/2023","2023-11-07 10:45:07","2023-11-07 10:45:07");
INSERT INTO medicine__activities VALUES("168","OPD","CIVIL UNIT 2","..","...","REFRESHMENT","500","1","12/09/2023","2023-11-07 10:46:14","2023-11-07 10:46:14");
INSERT INTO medicine__activities VALUES("169","DR SAJJAD","CIVIL UNIT 2","...","PAGECAL","DINNER","1700","1","12/09/2023","2023-11-07 10:47:05","2023-11-07 10:47:05");
INSERT INTO medicine__activities VALUES("170","DR AGHA WASEEM","JPMC WARD 14","...","PAGECAL & INFADOM","LUNCH","2300","1","12/09/2023","2023-11-07 10:48:10","2023-11-07 10:48:10");
INSERT INTO medicine__activities VALUES("171","DR MATIULLHA","JPMC","...","PAGECAL & INFADOM","LUNCH","2900","1","12/09/2023","2023-11-07 10:48:55","2023-11-07 10:48:55");
INSERT INTO medicine__activities VALUES("172","DR WALIULLHA","JPMC","...","PAGECAL & INFADOM","DINNER","3000","1","12/09/2023","2023-11-07 10:49:46","2023-11-07 10:49:46");
INSERT INTO medicine__activities VALUES("173","DR WAQAR","CIVIL  ORTHO WARD 1","..","PAGECAL & INFADOM","DINNER","2250","1","12/09/2023","2023-11-07 10:51:16","2023-11-07 10:51:16");
INSERT INTO medicine__activities VALUES("174","DR AMMAR","JPMC","...","PAGECAL","CASH","2500","1","12/09/2023","2023-11-07 10:54:02","2023-11-07 10:54:02");
INSERT INTO medicine__activities VALUES("175","DR SAQIB & DR ZOHAIB","..","...","PAGECAL & INFADOM","LUNCH & DINNER","3000 & 3500","1","12/09/2023","2023-11-07 10:55:59","2023-11-07 10:55:59");
INSERT INTO medicine__activities VALUES("176","DR NAZNEEN","ANKERL SERYA","...","IROHEME...FALNEU...PAGECAL","EAGGS","1500","1","12/09/2023","2023-11-07 10:57:36","2023-11-07 10:57:36");
INSERT INTO medicine__activities VALUES("177","DR PREM CHAND","CIVIL UNIT 1","...","PAGECAL & INFADOM","DINNER","2500","1","12/09/2023","2023-11-07 10:59:05","2023-11-07 10:59:05");
INSERT INTO medicine__activities VALUES("178","DR IMTIAZ","..","...","PAGECAL & INFADOM","LUNCH","2600","1","12/09/2023","2023-11-07 11:00:02","2023-11-07 11:00:02");
INSERT INTO medicine__activities VALUES("179","DR DANISH","..","...","PAGECAL & INFADOM","DINNER","2900","1","12/09/2023","2023-11-07 11:00:32","2023-11-07 11:00:32");
INSERT INTO medicine__activities VALUES("180","DR AZEEM KHOSO","JPMC WARD 17","...","PAGECAL & INFADOM","LUNCH (SUNDAY)","2000","1","12/09/2023","2023-11-07 11:01:43","2023-11-07 11:01:43");
INSERT INTO medicine__activities VALUES("181","DR YASIR & DR BARKAT","...","...","PAGECAL & INFADOM","GIFTS","3200","1","12/09/2023","2023-11-07 11:02:44","2023-11-07 11:02:44");
INSERT INTO medicine__activities VALUES("182","OPD","JPMC","...","...","REFRESHMENT","1000","1","12/09/2023","2023-11-07 11:03:33","2023-11-07 11:03:33");
INSERT INTO medicine__activities VALUES("183","DR JAGDESH","WARD ORTHO 1","...","...","REFRESHMENT","1150","1","12/09/2023","2023-11-07 11:04:24","2023-11-07 11:04:24");
INSERT INTO medicine__activities VALUES("184","...","JPMC","...","...","45000","45000","1","12/09/2023","2023-11-07 11:05:11","2023-11-07 11:05:11");
INSERT INTO medicine__activities VALUES("185","DR MANSOOR","UROLOGIST...K.L.M.C","..","CARNDOM","PRINTING PAPER","2500","1","19/09/2023","2023-11-07 11:10:28","2023-11-07 11:10:28");
INSERT INTO medicine__activities VALUES("186","OPD","CIVIL UNIT 2","...","....","REFRESHMENT","700","1","19/0","2023-11-07 11:11:30","2023-11-07 11:11:30");
INSERT INTO medicine__activities VALUES("187","DR TAHMOOR","CIVIL UNIT 2","...","PAGECAL & INFADOM","DINNER","2000","1","19/09/2023","2023-11-07 11:12:23","2023-11-07 11:12:23");
INSERT INTO medicine__activities VALUES("188","DR SUNNY","JPMC WARD 14","...","PAGECAL","LUNCH","2500","1","19/09/2023","2023-11-07 11:13:15","2023-11-07 11:13:15");
INSERT INTO medicine__activities VALUES("189","DR QASIM","JPMC","...","PAGECAL & INFADOM","INSTALMENT DISPENSER","7000","1","19/09/2023","2023-11-07 11:18:03","2023-11-07 11:18:03");
INSERT INTO medicine__activities VALUES("190","CIVIL","GYNE","...","IROHEME","INSTALMENT MICRO OVEN","6000","1","19/09/2023","2023-11-07 11:19:42","2023-11-07 11:19:42");
INSERT INTO medicine__activities VALUES("191","SINDH SERVICES","GYNE WARD","...","PAGECAL..FALNEU..IROHEME..CARNDOM","A.C REPAIR","9000","1","19/09/2023","2023-11-07 11:22:33","2023-11-07 11:22:33");
INSERT INTO medicine__activities VALUES("192","DR MANAN","CIVIL UNIT 1","...","PAGECAL & INFADOM","DINNER","2000","1","19/09/2023","2023-11-07 11:23:36","2023-11-07 11:23:36");
INSERT INTO medicine__activities VALUES("193","DR SHARJEEL","JPMC WARD 17","..","PAGECAL & INFADOM","LUNCH","3000","1","19/09/2023","2023-11-07 11:24:56","2023-11-07 11:24:56");
INSERT INTO medicine__activities VALUES("194","DR ASIF","CIVIL UNIT 2","...","PAGECAL","DINNER","1900","1","19/09/2023","2023-11-07 11:25:59","2023-11-07 11:25:59");
INSERT INTO medicine__activities VALUES("195","DR MATIULLHA","JPMC WARD 17","...","PAGECAL & INFADOM","3800","3300","1","19/09/2023","2023-11-07 11:26:55","2023-11-07 11:26:55");
INSERT INTO medicine__activities VALUES("196","DR WALIULLAH","JPMC WARD 17","..","PAGECAL & INFADOM","DINNER","3000","1","19/09/2023","2023-11-07 11:28:12","2023-11-07 11:28:12");
INSERT INTO medicine__activities VALUES("197","OFFICE STAFF","...","...","...","DAIRY & BACHES","4500","1","19/09/2023","2023-11-07 11:29:34","2023-11-07 11:29:34");
INSERT INTO medicine__activities VALUES("198","DR SHAHZAIB","CIVIL UNIT 2","..","PAGECAL","DINNER","1700","1","19/09/2023","2023-11-07 11:30:39","2023-11-07 11:33:12");
INSERT INTO medicine__activities VALUES("199","DR SAIMA","MODERN HOSPITAL","...","PAGECAL","ROOM WALLPAPER","5000","1","19/09/2023","2023-11-07 11:34:12","2023-11-07 11:34:12");
INSERT INTO medicine__activities VALUES("200","DR MEER","JPMC WARD 17","...","PAGECAL & INFADOM","LUNCH","3000","1","19/09/2023","2023-11-07 11:35:16","2023-11-07 11:35:16");
INSERT INTO medicine__activities VALUES("201","JPMC","WARD 17","...","...","REFRESHMENT","2000","1","19/09/2023","2023-11-07 11:36:11","2023-11-07 11:36:11");
INSERT INTO medicine__activities VALUES("202","DR AFROZ","BHORI HOSPITAL","..","PAGECAL & INFADOM","S CARDS","1600","1","19/09","2023-11-07 11:37:35","2023-11-07 11:37:35");
INSERT INTO medicine__activities VALUES("203","DR TARIQ","CIVIL UNIT1","...","PAGECAL & INFADOM","DINNER","2000","1","19/09/2023","2023-11-07 11:38:29","2023-11-07 11:38:29");
INSERT INTO medicine__activities VALUES("204","DR NAZNEEN","ANKEL SERYA","...","PAGECAL..IROHEME...FALNEU","EAGGS","1500","1","19/09/2023","2023-11-07 11:39:50","2023-11-07 11:39:50");
INSERT INTO medicine__activities VALUES("205","DR DAINSH","JPMC WARD 14","..","PAGECAL & INFADOM","LUNCH","2500","1","19/09/2023","2023-11-07 11:40:35","2023-11-07 11:40:35");
INSERT INTO medicine__activities VALUES("206","DR IMTIAZ","JPMC WARD 17","..","PAGECAL & INFADOM","DINNER","2350","1","19/09/2023","2023-11-07 11:41:55","2023-11-07 11:41:55");
INSERT INTO medicine__activities VALUES("207","DR AGHA WASEEM","WARD 14","...","PAGECAL & INFADOM","LUNCH","2500","1","19/09/2023","2023-11-07 11:42:30","2023-11-07 11:42:30");
INSERT INTO medicine__activities VALUES("208","DR ZOHAIB","JPMC WARD 17","..","PAGECAL & INFADOM","DINNER","3500","1","19/09/2023","2023-11-07 11:43:36","2023-11-07 11:43:36");
INSERT INTO medicine__activities VALUES("209","RIAZ PHARMAX","...","...","...","...","5000","1","19/09/2023","2023-11-07 11:48:08","2023-11-07 11:48:08");
INSERT INTO medicine__activities VALUES("210","...","WARD 17","...","...","PICNIC","10000","1","19/09/2023","2023-11-07 11:48:54","2023-11-07 11:48:54");
INSERT INTO medicine__activities VALUES("211","DR KHALIL","WARD 1","...","...","FUND ACTIVITY","20000","1","20/09/2023","2023-11-07 12:00:06","2023-11-07 12:00:06");
INSERT INTO medicine__activities VALUES("212","DR JAGDESH","OPD CIVIL WARD 1","..","..","...","1200","1","4/10/2023","2023-11-07 12:24:46","2023-11-07 12:24:46");
INSERT INTO medicine__activities VALUES("213","DR HINA","...","...","...","INSTALMENT","2000","1","4/10/2023","2023-11-07 12:25:31","2023-11-07 12:25:31");
INSERT INTO medicine__activities VALUES("214","DR ACTIVITY","..","...","...","DR ACTIVITY","50000","1","10/10/2022","2023-11-07 14:20:05","2023-11-07 14:20:05");
INSERT INTO medicine__activities VALUES("215","COMBINE COMUNICATION","...","...","...","CASH VISITING CARD","20000","1","03/10/2022","2023-11-07 14:21:54","2023-11-07 14:21:54");
INSERT INTO medicine__activities VALUES("216","DR QADIR","JPMC JINHA PHARMACY PRTHOPEDIC","...","PAGECAL","CASH","5000","1","31/10/2022","2023-11-07 15:17:03","2023-11-07 15:30:02");
INSERT INTO medicine__activities VALUES("217","DR QASIM","JPMC JINHA PHARMACY ORTHOPEDIC","...","PAGECAL","BOOKS","6500","1","31/10/2022","2023-11-07 15:17:45","2023-11-07 15:29:31");
INSERT INTO medicine__activities VALUES("218","MOHTASHAM","CIVIL ORTHO","...","PAGECAL & INFADOM","DINNER","3000","1","31/10/2022","2023-11-07 15:18:34","2023-11-07 15:28:46");
INSERT INTO medicine__activities VALUES("219","DR ZOHAIB","JPMC ORTHO","...","PAGECAL","DINNER","3500","1","31/10/2022","2023-11-07 15:19:12","2023-11-07 15:27:13");
INSERT INTO medicine__activities VALUES("220","DR SOHAIL","CIVIL..JPMC..APWA..UROLOGIST","...","CRANDOM","CASH","25000","1","3/0/2022","2023-11-07 15:21:11","2023-11-07 15:23:44");
INSERT INTO medicine__activities VALUES("221","DR JAGDESH","CIVIL ORTHO","...","PAGECAL & INFADOM","CASH","20000","1","31/10/2022","2023-11-07 15:22:02","2023-11-07 15:22:57");
INSERT INTO medicine__activities VALUES("222","DR TAHA","TURANE ORTHO","...","PAGECAL & INFADOM","...","2000","1","31/10/2022","2023-11-07 15:32:40","2023-11-07 15:32:40");
INSERT INTO medicine__activities VALUES("223","DR NAZNEEN","ANKER SERYA GYNE","...","PAGECAL..FALNEU..IROHEME","EAGGS","1200","1","31/10/2022","2023-11-07 15:33:53","2023-11-07 15:33:53");
INSERT INTO medicine__activities VALUES("224","MULTIPLE DOCTORS","...","...","...","FISH","14000","1","31/10/2022","2023-11-07 15:34:58","2023-11-07 15:34:58");
INSERT INTO medicine__activities VALUES("225","DR SALIQA","M JUMMA GYNE","...","PAGECAL..FALNEU","ACTIVITY","2000","1","31/10/2022","2023-11-07 15:36:21","2023-11-07 15:36:21");
INSERT INTO medicine__activities VALUES("226","DR SAQIB","JPMC","...","PAGECAL","BOOKS","12000","1","31/10/2022","2023-11-07 15:37:10","2023-11-07 15:37:10");
INSERT INTO medicine__activities VALUES("227","DR HUMA","ANKEL SERYA GYNE","...","PAGECAL..FALNEU","CASH","25000","1","3/10/2022","2023-11-07 15:39:42","2023-11-07 15:39:42");
INSERT INTO medicine__activities VALUES("228","DR SARFARAZ","JPMC ORTHO","...","PAGECAL","LUNCH","3000","1","31/10/2022","2023-11-07 15:45:21","2023-11-07 15:45:21");
INSERT INTO medicine__activities VALUES("229","...","GYNE","...","PAGECAL","REFRESHMENT","700","1","31/10/2022","2023-11-07 15:46:31","2023-11-07 15:46:31");
INSERT INTO medicine__activities VALUES("230","DR NASREEN","GYNE","...","IROHEME...FALNEU...","ACTIVITY","2000","1","31/10/2022","2023-11-07 15:47:32","2023-11-07 15:47:32");
INSERT INTO medicine__activities VALUES("231","...","GYNE","...","...","FETAL DOPPLER SERVICE HOSP","6500","1","24/10/2022","2023-11-07 15:51:02","2023-11-07 15:51:02");
INSERT INTO medicine__activities VALUES("232","...","GYNE","...","...","REFRESHMENT","1250","1","24/10/2022","2023-11-07 15:52:54","2023-11-07 15:52:54");
INSERT INTO medicine__activities VALUES("233","...","ORTHO","...","....","CHAMPBELL ORTHO","13000","1","24/10/2022","2023-11-07 15:54:05","2023-11-07 15:54:05");
INSERT INTO medicine__activities VALUES("234","DR MOHATASHM","JPMC","...","...","LUNCH","3500","1","24/10/2022","2023-11-07 15:55:05","2023-11-07 15:55:05");
INSERT INTO medicine__activities VALUES("235","DR MOHATASHAM","GROUP CIVIL","...","....","DINNER","2000","1","24/10/2022","2023-11-07 15:57:27","2023-11-07 15:57:27");
INSERT INTO medicine__activities VALUES("236","DR FAYAZ","CIVIL","....","...","DINNER","2000","1","24/10/2022","2023-11-07 15:58:15","2023-11-07 15:58:15");
INSERT INTO medicine__activities VALUES("237","DR TAHA","CIVIL","...","...","DINNER","2000","1","24/10/2022","2023-11-07 15:59:29","2023-11-07 15:59:29");
INSERT INTO medicine__activities VALUES("238","DR FAYAZ","CIVIL","...","...","DINNER","2000","1","24/10/2022","2023-11-07 16:00:26","2023-11-07 16:00:26");
INSERT INTO medicine__activities VALUES("239","DR TAHA","CIVIL","...","...","DINNER","2000","1","24/10/2022","2023-11-07 16:01:01","2023-11-07 16:01:01");
INSERT INTO medicine__activities VALUES("240","DR MOSTAQ","CIVIL","...","...","DINNER","1500","1","24/10/2022","2023-11-07 16:03:09","2023-11-07 16:03:09");
INSERT INTO medicine__activities VALUES("241","DR FAYAZ","CIVIL","...","...","DINNER","8000","1","24/10/2022","2023-11-07 16:04:02","2023-11-07 16:04:02");
INSERT INTO medicine__activities VALUES("242","DR AFROZ","CIVIL","...","...","CASH","1000","1","24/10/2022","2023-11-07 16:04:41","2023-11-07 16:04:41");
INSERT INTO medicine__activities VALUES("243","DR ERUM","CIVIL","...","...","CASH","1000","1","24/10/2022","2023-11-07 16:05:36","2023-11-07 16:05:36");
INSERT INTO medicine__activities VALUES("244","DR MUJEEB","WARD UROLOGIST","...","...","5000","5000","1","24/10/2022","2023-11-07 16:06:40","2023-11-07 16:06:40");
INSERT INTO medicine__activities VALUES("245","...","CIVIL PHARMAX","...","...","...","3200","1","24/10/2022","2023-11-07 16:07:51","2023-11-07 16:07:51");
INSERT INTO medicine__activities VALUES("246","..","JPMC","...","...","REFRESHMENT","1200","1","24/10/2022","2023-11-07 16:08:31","2023-11-07 16:08:31");
INSERT INTO medicine__activities VALUES("247","...","CIVIL UNIT 1","...","...","REFRESHMENT","1000","1","24/10/2022","2023-11-07 16:10:01","2023-11-07 16:10:01");
INSERT INTO medicine__activities VALUES("248","...","CIVIL UNIT 2","...","...","REFRESHMENT","1500","1","24/10/2022","2023-11-07 16:11:04","2023-11-07 16:11:04");
INSERT INTO medicine__activities VALUES("249","...","CIVIL UNIT 1","...","...","REFRESH","2000","1","24/10/2022","2023-11-07 16:12:14","2023-11-07 16:12:14");
INSERT INTO medicine__activities VALUES("250","DR NAZNEEN","...","...","...","EAGGS & COLOR","4600","1","24/10/2022","2023-11-07 16:13:21","2023-11-07 16:13:21");
INSERT INTO medicine__activities VALUES("251","DR RAZIA KHOREJO","...","...","....","...","800","1","24/10/2022","2023-11-07 16:14:14","2023-11-07 16:14:14");
INSERT INTO medicine__activities VALUES("252","...","AL TIBRI","...","...","REFRESHMENT  BANCHES  BANNER","16000","1","24/10/2022","2023-11-07 16:15:25","2023-11-07 16:15:25");
INSERT INTO medicine__activities VALUES("253","DR IRAM","JPMC","...","...","...","1000","1","24/10/2022","2023-11-07 16:16:00","2023-11-07 16:16:00");
INSERT INTO medicine__activities VALUES("254","DR REHANA","...","...","...","...","5000","1","24/10/2022","2023-11-07 16:16:35","2023-11-07 16:16:35");
INSERT INTO medicine__activities VALUES("255","LALA","...","...","...","...","10000","1","24/10/2022","2023-11-07 16:18:08","2023-11-07 16:18:08");
INSERT INTO medicine__activities VALUES("256","DR SHAHZAIB","ORTHO UNIT 2","...","...","...","1500","1","24/10/2022","2023-11-07 16:18:56","2023-11-07 16:18:56");
INSERT INTO medicine__activities VALUES("257","DR ZAHEER","CIVIL","...","...","...","1000","1","24/10/2022","2023-11-07 16:19:49","2023-11-07 16:19:49");
INSERT INTO medicine__activities VALUES("258","..","SERVICE STAMP","...","...","...","2000","1","24/10/2022","2023-11-07 16:20:31","2023-11-07 16:20:31");
INSERT INTO medicine__activities VALUES("259","...","PLATES","...","...","...","5000","1","24/10/2022","2023-11-07 16:21:56","2023-11-07 16:21:56");
INSERT INTO medicine__activities VALUES("260","DR SAQIB","JPMC CHAMPBELL","...","...","...","13000","1","24/10/2022","2023-11-07 16:22:42","2023-11-07 16:22:42");
INSERT INTO medicine__activities VALUES("261","DR TAHA","...","...","...","GROUP DINNER","2000","1","31/10/2022","2023-11-07 16:29:33","2023-11-07 16:29:33");
INSERT INTO medicine__activities VALUES("262","DR QASIM","JPMC","...","...","LAB COAT","1700","1","31/10/2022","2023-11-07 16:30:11","2023-11-07 16:30:11");
INSERT INTO medicine__activities VALUES("263","DR SALIQA & SHAKEEL","...","...","...","PRINTING PAPER","3000","1","31/10/2022","2023-11-07 16:30:59","2023-11-07 16:30:59");
INSERT INTO medicine__activities VALUES("264","...","...","....","...","PENS","6000","1","31/10/2022","2023-11-07 16:31:43","2023-11-07 16:31:43");
INSERT INTO medicine__activities VALUES("265","ANILA SHAFAQ","...","...","...","DOPPLR","6500","1","31/10/2022","2023-11-07 16:32:33","2023-11-07 16:32:33");
INSERT INTO medicine__activities VALUES("266","DR HURRNAIN","...","...","...","GROUP","2000","1","31/10/2022","2023-11-07 16:33:31","2023-11-07 16:33:31");
INSERT INTO medicine__activities VALUES("267","DR TALHA","OPD","...","...","REFRESHMENT","950","1","31/10/2022","2023-11-07 16:34:14","2023-11-07 16:34:14");
INSERT INTO medicine__activities VALUES("268","DR BILAL","...","...","...","GROUP DINNER","1600","1","31/10/2022","2023-11-07 16:35:48","2023-11-07 16:35:48");
INSERT INTO medicine__activities VALUES("269","...","ORTHO 2","...","...","REFRESHMENT","2800","1","31/10/2022","2023-11-07 16:36:31","2023-11-07 16:36:31");
INSERT INTO medicine__activities VALUES("270","...","PHARMAX","..","...","LUNCH","2500","1","31/10/2022","2023-11-07 16:37:20","2023-11-07 16:37:20");
INSERT INTO medicine__activities VALUES("271","DR NAZNEEN","...","...","...","EAGGS","1200","1","31/10/2022","2023-11-07 16:38:17","2023-11-07 16:38:17");
INSERT INTO medicine__activities VALUES("272","DR MOHATASHAM","GROUP","....","....","...","2000","1","31/10/2022","2023-11-07 16:39:23","2023-11-07 16:39:23");
INSERT INTO medicine__activities VALUES("273","DR FAYAZ","...","...","...","GROUP","2000","1","31/10/2022","2023-11-07 16:39:59","2023-11-07 16:39:59");
INSERT INTO medicine__activities VALUES("274","...","...","...","...","WINCO BOOKS","7500","1","31/10/2022","2023-11-07 16:40:27","2023-11-07 16:40:27");
INSERT INTO medicine__activities VALUES("275","...","GYNE OPD","...","...","REFRESHMENT","700","1","31/10/2022","2023-11-07 16:41:05","2023-11-07 16:41:05");
INSERT INTO medicine__activities VALUES("276","DR SARFARAZ","...","...","...","...","2000","1","31/10/2022","2023-11-07 16:41:31","2023-11-07 16:41:31");
INSERT INTO medicine__activities VALUES("277","DR REHMAN","JPMC ORTHOPEDIC","..","PAGECAL & INFADOM","DINNER","3000","1","14/11/2022","2023-11-07 17:58:54","2023-11-07 17:58:54");
INSERT INTO medicine__activities VALUES("278","DR MOHTASHIM","CIVIL ORTHOPEDIC","...","PAGECAL & INFADOM","DINNER","1500","1","14/11/2022","2023-11-07 18:00:32","2023-11-07 18:00:32");
INSERT INTO medicine__activities VALUES("279","AURANGZAIB LAL","CIVIL","...","....","...","5000","1","14/11/2022","2023-11-07 18:01:18","2023-11-07 18:01:18");
INSERT INTO medicine__activities VALUES("280","AURANGZAIB LALA","CIVIL HOSPITAL","...","...","...","10000","1","14/11/2023","2023-11-21 10:35:58","2023-11-21 10:35:58");
INSERT INTO medicine__activities VALUES("281","DR MADIHA","JPMC ORTHO UNIT 14","...","...","LUNCH","2300","1","14/11/2023","2023-11-21 10:37:51","2023-11-21 10:37:51");
INSERT INTO medicine__activities VALUES("282","DR MAIRAJ","CIVIL ORTHO 2","...","...","DINNER","3000","1","14/11/2023","2023-11-21 10:38:46","2023-11-21 10:38:46");
INSERT INTO medicine__activities VALUES("283","...","OPD","...","...","REFRESHMENT","500","1","14/11/2023","2023-11-21 10:39:28","2023-11-21 10:39:28");
INSERT INTO medicine__activities VALUES("284","DR JAGDESH","WARD","...","...","REFRESHMENT","1700","1","15/11/2023","2023-11-21 10:40:30","2023-11-21 10:40:30");
INSERT INTO medicine__activities VALUES("285","DR FAYAZ","CIVIL UNIT 1","...","...","DINNER","2000","1","15/11/2023","2023-11-21 10:41:32","2023-11-21 10:41:32");
INSERT INTO medicine__activities VALUES("286","DR AMMAR","JPMC WARD 17","...","...","LUNCH","3000","1","15/11/2023","2023-11-21 10:42:51","2023-11-21 10:42:51");
INSERT INTO medicine__activities VALUES("287","DR JAMEEL","DOW SAFORA","...","...","REFRESHMENT","900","1","15/11/2023","2023-11-21 10:44:56","2023-11-21 10:44:56");
INSERT INTO medicine__activities VALUES("288","DR WAJAHAT","CIVIL UNIT 2","...","...","REFRESHMENT","800","1","16/11/2023","2023-11-21 10:46:05","2023-11-21 10:46:05");
INSERT INTO medicine__activities VALUES("289","DR ASIF","CIVIL UNIT 2","...","...","DINNER","2300","1","16/11/2023","2023-11-21 10:46:48","2023-11-21 10:46:48");
INSERT INTO medicine__activities VALUES("290","DR IMTIAZ","JPMC WARD 14","..","...","LUNCH","3300","1","16/11/2023","2023-11-21 10:47:44","2023-11-21 10:47:44");
INSERT INTO medicine__activities VALUES("291","DR AZEEM","JPMC WARD 14","..","...","DINNER","2500","1","16/11/2023","2023-11-21 10:48:55","2023-11-21 10:48:55");
INSERT INTO medicine__activities VALUES("292","DR TANVEER","PRINTING","...","...","...","5500","1","16/11/2023","2023-11-21 10:49:41","2023-11-21 10:49:41");
INSERT INTO medicine__activities VALUES("293","DR WALIULLAH","JPMC WARD 17","...","...","DINNER","3000","1","17/11/2023","2023-11-21 10:51:39","2023-11-21 10:51:39");
INSERT INTO medicine__activities VALUES("294","DR MEER","JPMC WARD 17","...","...","LUNCH","3000","1","17/11/2023","2023-11-21 10:52:52","2023-11-21 10:52:52");
INSERT INTO medicine__activities VALUES("295","DR HANAIN","CIVIL UNIT 1","...","...","DINNER","3000","1","17/11/2023","2023-11-21 10:54:02","2023-11-21 10:54:02");
INSERT INTO medicine__activities VALUES("296","DR DANISH","JPMC WARD 14","...","...","DINNER","1900","1","18/11/2023","2023-11-21 10:54:51","2023-11-21 10:54:51");
INSERT INTO medicine__activities VALUES("297","DR SAJJAD","CIVIL UNIT 2","...","...","DINNER","3000","1","18/11/2023","2023-11-21 10:55:37","2023-11-21 10:55:37");
INSERT INTO medicine__activities VALUES("298","DR TEERATH","JPMC WARD 17","...","...","BOOK","700","1","18/11/2023","2023-11-21 10:56:38","2023-11-21 10:56:38");
INSERT INTO medicine__activities VALUES("299","DR SHARJEEL","JPMC WARD 17","...","...","ACTIVITY","12000","1","19/11/2023","2023-11-21 10:59:12","2023-11-21 10:59:12");
INSERT INTO medicine__activities VALUES("300","DR NOMAN","JPMC WARD 17","...","...","LUNCH","3000","1","19/11/2023","2023-11-21 11:00:26","2023-11-21 11:00:26");
INSERT INTO medicine__activities VALUES("301","DR ZOHAIB","JPMC WARD 17","...","...","DINNER","3000","1","19/11/2023","2023-11-21 11:01:10","2023-11-21 11:01:10");
INSERT INTO medicine__activities VALUES("302","DR NAILA","DAR UL SEHAT","...","...","ACTIVITY","8800","1","19/11/2023","2023-11-21 11:02:07","2023-11-21 11:02:07");
INSERT INTO medicine__activities VALUES("303","DR TARIQ","JPMC WARD 17","..","...","CASH","5000","1","19/11/2023","2023-11-21 11:03:00","2023-11-21 11:03:00");
INSERT INTO medicine__activities VALUES("304","DR TARIQ","CIVIL UNIT 1","..","...","DINNER","2000","1","20/11/2023","2023-11-21 11:03:55","2023-11-21 11:03:55");
INSERT INTO medicine__activities VALUES("305","DR NAZNEEN","ANKER SERYA","..","...","EGGS","1800","1","20/11/2023","2023-11-21 11:04:58","2023-11-21 11:04:58");
INSERT INTO medicine__activities VALUES("306","DR SUBHAN","JPMC WARD 17","..","...","LUNCH","3000","1","20/11/2023","2023-11-21 11:05:53","2023-11-21 11:05:53");
INSERT INTO medicine__activities VALUES("307","DR ZOHAIB","JPMC WARD 17","...","...","DINNER","3500","1","20/11/2023","2023-11-21 11:06:42","2023-11-21 11:06:42");
INSERT INTO medicine__activities VALUES("308","...","CIVIL OPD","...","...","REFRESHMENT","1200","1","20/11/2023","2023-11-21 11:07:33","2023-11-21 11:07:33");
INSERT INTO medicine__activities VALUES("309","DR HINA","SINDH GOVT SAUDABAD","...","...","KATLE INSTALMENT","2000","1","20/11/2023","2023-11-21 11:08:15","2023-11-21 11:08:15");
INSERT INTO medicine__activities VALUES("310","...","CIVIL GYNE","...","....","OVEN INSTALMENT","6000","1","20/11/2023","2023-11-21 11:09:09","2023-11-21 11:09:09");
INSERT INTO medicine__activities VALUES("311","DR KHALID","CIVIL WARD 1 ORTHO","..","..","ACTIVITY","20000","1","09/12/2022","2023-11-21 13:21:44","2023-11-21 13:21:44");
INSERT INTO medicine__activities VALUES("312","DR ZEHAAM","...","...","...","ACTIVITY","30000","1","07/12/2022","2023-11-21 13:23:17","2023-11-21 13:23:17");
INSERT INTO medicine__activities VALUES("313","DR SOHAIL DILWAR","...","....","...","ACTIVITY","25000","1","08/12/2022","2023-11-21 13:24:03","2023-11-21 13:24:03");
INSERT INTO medicine__activities VALUES("314","DR ABDUL QADIR","JPMC ORTHO","...","...","ACTIVITY","10000","1","09/12/2022","2023-11-21 13:25:27","2023-11-21 13:25:27");
INSERT INTO medicine__activities VALUES("315","DR TARIQ","CIVIL WARD 2 ORTHO","...","...","ACTIVITY","20000","1","07/12/","2023-11-21 13:26:55","2023-11-21 13:26:55");
INSERT INTO medicine__activities VALUES("316","DR MUHMMAD MUZAMIL","SINDH SERVICES HOSP","...","...","ACTIVITY","15000","1","13/12/2022","2023-11-21 13:27:45","2023-11-21 13:27:45");
INSERT INTO medicine__activities VALUES("317","DR REHANA","...","...","...","A/C ACTIVITY","10000","1","12/12/2022","2023-11-21 13:28:44","2023-11-21 13:28:44");
INSERT INTO medicine__activities VALUES("318","DR REHMAN","...","...","...","ACTIVITY","15000","1","07/12/2022","2023-11-21 13:29:34","2023-11-21 13:29:34");
INSERT INTO medicine__activities VALUES("319","..","civil ortho","...","...","DINNER","13765","1","05/12/2022","2023-11-21 13:31:17","2023-11-21 13:31:17");
INSERT INTO medicine__activities VALUES("320","DR TAHA","CIVIL","...","...","GROUP DINNER","2000","1","28/11/2022","2023-11-21 14:19:47","2023-11-21 14:19:47");
INSERT INTO medicine__activities VALUES("321","SHAZIA RUB NAWAZ","GYNE CIVIL","..","...","WHITE WASH","20000","1","28/11/2022","2023-11-21 14:21:02","2023-11-21 14:21:02");
INSERT INTO medicine__activities VALUES("322","...","GYNE CIVIL","...","...","LUNCH","3550","1","28/11/2022","2023-11-21 14:22:15","2023-11-21 14:22:15");
INSERT INTO medicine__activities VALUES("323","...","RAIZ PHARMAX","...","...","...","5000","1","28/11/","2023-11-21 14:23:03","2023-11-21 14:23:03");
INSERT INTO medicine__activities VALUES("324","DR KHATIJA","AL TIBRI MEMON GHOTH","..","...","MOVIE TICKET","28250","1","28/11/2022","2023-11-21 14:26:06","2023-11-21 14:26:06");
INSERT INTO medicine__activities VALUES("325","...","AL TIBRI MEMON GHOTH","...","...","TRANSPORT","7000","1","28/11/2022","2023-11-21 14:27:19","2023-11-21 14:27:19");
INSERT INTO medicine__activities VALUES("326","DR TAHA","...","...","...","GROUP DINNER","2000","1","28/11/2022","2023-11-21 14:28:59","2023-11-21 14:28:59");
INSERT INTO medicine__activities VALUES("327","DR FAYAZ","...","...","...","GROUP DINNER","1500","1","28/11/2022","2023-11-21 14:29:57","2023-11-21 14:29:57");
INSERT INTO medicine__activities VALUES("328","...","JPMC","...","...","LUNCH/DINNER","6000","1","28/11/2022","2023-11-21 14:30:42","2023-11-21 14:30:42");
INSERT INTO medicine__activities VALUES("329","...","GYNE CIVIL","...","...","REFRESHMENT","600","1","28/11/2022","2023-11-21 14:33:08","2023-11-21 14:33:08");
INSERT INTO medicine__activities VALUES("330","DR REHMAN","JPMC","...","...","CASH","5000","1","28/11/2022","2023-11-21 14:34:06","2023-11-21 14:34:06");
INSERT INTO medicine__activities VALUES("331","DR SARFARAZ","JPMC","..","...","GROUP","3000","1","28/11/2022","2023-11-21 14:35:01","2023-11-21 14:35:01");
INSERT INTO medicine__activities VALUES("332","DR FAYAZ","CIVIL","...","...","GROUP","2000","1","28/11/2022","2023-11-21 14:35:55","2023-11-21 14:35:55");
INSERT INTO medicine__activities VALUES("333","DR AGHA WASEEM","JPMC","...","...","LUNCH","1500","1","28/11/2022","2023-11-21 14:36:45","2023-11-21 14:36:45");
INSERT INTO medicine__activities VALUES("334","DR SANGITA","MOTHER CARE","...","...","...","12000","1","28/11/2022","2023-11-21 14:39:56","2023-11-21 14:39:56");
INSERT INTO medicine__activities VALUES("335","DR ERUM","BAKHT BHARI","...","...","...","5000","1","28/11/2022","2023-11-21 14:41:31","2023-11-21 14:41:31");
INSERT INTO medicine__activities VALUES("336","...","CIVIL PHARMAX","...","...","...","500","1","28/11/2022","2023-11-21 14:42:27","2023-11-21 14:42:27");
INSERT INTO medicine__activities VALUES("337","...","...","...","...","PAPER WEIGHT","10000","1","28/11/2022","2023-11-21 14:43:17","2023-11-21 14:43:17");
INSERT INTO medicine__activities VALUES("338","...","GYNE CIVIL","..","...","OVEN REPAIR","2000","1","28/11/2022","2023-11-21 14:44:04","2023-11-21 14:44:04");
INSERT INTO medicine__activities VALUES("339","DR FAYAZ","CIVIL WARD 1","...","...","CASH","8000","1","28/11/2022","2023-11-21 14:44:56","2023-11-21 14:44:56");
INSERT INTO medicine__activities VALUES("340","...","JPMC","...","...","LUNCH/DINNER","6200","1","28/11/2022","2023-11-21 14:45:57","2023-11-21 14:45:57");
INSERT INTO medicine__activities VALUES("341","DR RAIZ","...","...","...","TEA","400","1","28/11/2022","2023-11-21 14:46:34","2023-11-21 14:46:34");
INSERT INTO medicine__activities VALUES("342","DR SOHAIL","JPMC","...","...","CAKE","1200","1","28/11/2022","2023-11-21 14:47:21","2023-11-21 14:47:21");
INSERT INTO medicine__activities VALUES("343","DR INAM","..","...","..","PRINITING","500","1","28/11/2022","2023-11-21 14:48:04","2023-11-21 14:48:04");
INSERT INTO medicine__activities VALUES("344","DR JAGDESH","...","...","...","PENEFLIX","1000","1","28/11/2022","2023-11-21 14:49:00","2023-11-21 14:49:00");
INSERT INTO medicine__activities VALUES("345","DR BILAL","CIVIL","...","...","GROUP","1500","1","28/11/2022","2023-11-21 14:49:46","2023-11-21 14:49:46");
INSERT INTO medicine__activities VALUES("346","DR REHMAN/NOMAN","JPMC","..","...","LUNCH/DINNER","4000","1","28/11/2022","2023-11-21 14:50:37","2023-11-21 14:50:37");
INSERT INTO medicine__activities VALUES("347","DR NAZNEEN","ANKER SERYA","..","..","EGGS","1350","1","28/11/2022","2023-11-21 14:51:16","2023-11-21 14:51:16");
INSERT INTO medicine__activities VALUES("348","DR ARIF ALI","JPMC  ANKER SARYA","..","CRANDOM","PRINTING FILES","5000","1","20/12/2022","2023-11-21 14:56:53","2023-11-21 14:56:53");
INSERT INTO medicine__activities VALUES("349","DR AGHA WASEEM","ORTHO MASIYA /JINHA PHARMAX","...","PAGECAL","LUNCH","1700","1","20/12/2022","2023-11-21 14:58:28","2023-11-21 14:58:28");
INSERT INTO medicine__activities VALUES("350","DR ALTAF","ORTHO JAMIYAT HOSP","..","PAGECAL","DINNER","7000","1","20/12/2022","2023-11-21 14:59:44","2023-11-21 14:59:44");
INSERT INTO medicine__activities VALUES("351","DR QAMAR ABBAS","GYNE MOTHER CARE","...","PAGECAL/FALNUE/IROHEME","BLINDS","28000","1","20/12/2022","2023-11-21 15:03:53","2023-11-21 15:03:53");
INSERT INTO medicine__activities VALUES("352","DR AMMAR","ORTHO JPMC","...","PAGECAL","LUNCH","3000","1","20/12/2022","2023-11-21 15:04:57","2023-11-21 15:04:57");
INSERT INTO medicine__activities VALUES("353","DR SHARJEEL","ORTHO  AL RASHEED","...","INFADOM","DINNER","3000","1","20/12/2022","2023-11-21 15:06:02","2023-11-21 15:06:02");
INSERT INTO medicine__activities VALUES("354","MULTIPAL DRS","GYNE WARD","...","FALNUE/IROHEME","BOOKS","7000","1","20/12/2022","2023-11-21 15:07:24","2023-11-21 15:07:24");
INSERT INTO medicine__activities VALUES("355","DR OSAMA","GYNE JPMC","...","PAGECAL/INFADOM","DINNER","1500","1","20/12/2022","2023-11-21 15:08:25","2023-11-21 15:08:25");
INSERT INTO medicine__activities VALUES("356","DR BILAL","ORTHO CIVIL PHARMAX","...","PAGECAL","DINNER","1500","1","20/12/2022","2023-11-21 15:09:39","2023-11-21 15:09:39");
INSERT INTO medicine__activities VALUES("357","DR NAZNEEN","GYNE MAKKI S JGTTARI","..","FALNUE/PAGECAL/IROHEME","EGGS","1350","1","20/12/2022","2023-11-21 15:11:20","2023-11-21 15:11:20");
INSERT INTO medicine__activities VALUES("358","DR ADNAN","ORTHO CIVIL PHARMAX","...","PAGECAL","DINNER","2500","1","20/12/2022","2023-11-21 15:13:13","2023-11-21 15:13:13");
INSERT INTO medicine__activities VALUES("359","DR NOMAN","ORTHO JPMC  PHARMAX","...","PAGECAL","DINNER","2000","1","20/12/2022","2023-11-21 15:14:23","2023-11-21 15:14:23");
INSERT INTO medicine__activities VALUES("360","DR OSAMA","ORTHO JPMC AL RASHEED","...","PAGECAL","DINNER","2000","1","20/12/2022","2023-11-21 15:15:17","2023-11-21 15:15:17");
INSERT INTO medicine__activities VALUES("361","DR SUBHAN","ORTHO JPMC PHARMAX","...","PAGECAL","LUNCH","3500","1","20/12/2022","2023-11-21 15:16:10","2023-11-21 15:16:10");
INSERT INTO medicine__activities VALUES("362","DR SARFRAZ","ORTHO AM MEDICAL","...","INFADOM","DINNER","3000","1","20/12/2022","2023-11-21 15:17:39","2023-11-21 15:17:39");
INSERT INTO medicine__activities VALUES("363","DR PREM CHAND","ORTHO CIVIL PHARMACY","...","PAGECAL","DINNER","2000","1","20/12/2022","2023-11-21 15:20:31","2023-11-21 15:20:31");
INSERT INTO medicine__activities VALUES("364","BABA PHARMACY","BABA PHARMACY","...","...","ADJUSTMENT","9600","1","20/12/2022","2023-11-21 15:21:53","2023-11-21 15:21:53");
INSERT INTO medicine__activities VALUES("365","DR ZOHAIB","ORTHO JPMC","...","PAGECAL","CAMPBELL","13000","1","20/12/2022","2023-11-21 15:22:38","2023-11-21 15:22:38");
INSERT INTO medicine__activities VALUES("366","DR HABIB","ORTHO OPD 3","...","PAGECAL","LOCK/REGSTER","1500","1","20/12/2022","2023-11-21 15:23:33","2023-11-21 15:23:33");
INSERT INTO medicine__activities VALUES("367","...","GYNE OPD  WARD","...","IROHEME","REFRESHMENT","1370","1","20/12/2022","2023-11-21 15:24:34","2023-11-21 15:24:34");
INSERT INTO medicine__activities VALUES("368","...","CIVIL PHARMACY","...","...","REFRESHMENT","1000","1","5/12/2022","2023-11-21 15:30:39","2023-11-21 15:30:39");
INSERT INTO medicine__activities VALUES("369","...","CIVIL PHARMACY","...","...","REFRESHMENT","2000","1","5/12/2022","2023-11-21 15:31:27","2023-11-21 15:31:27");
INSERT INTO medicine__activities VALUES("370","DR AGHA WASEEM","JPMC","...","...","LUNCH/DINNER","3000","1","5/12/2022","2023-11-21 15:32:17","2023-11-21 15:32:17");
INSERT INTO medicine__activities VALUES("371","DR BILAL","CIVIL","..","..","DINNER","1500","1","5/12/2022","2023-11-21 15:32:59","2023-11-21 15:32:59");
INSERT INTO medicine__activities VALUES("372","...","GYNE AL TIBRI","...","...","LUNCH/MOBILE","11000","1","5/12/2022","2023-11-21 15:34:01","2023-11-21 15:34:01");
INSERT INTO medicine__activities VALUES("373","..","GYNE CIVIL","...","...","REFRESHMENT","1100","1","5/12/2022","2023-11-21 15:35:02","2023-11-21 15:35:02");
INSERT INTO medicine__activities VALUES("374","DR ZAHEER & WAHEED","CIVIL","...","...","...","2000","1","5/12/2022","2023-11-21 15:36:00","2023-11-21 15:36:00");
INSERT INTO medicine__activities VALUES("375","DR JAGDESH","CIVIL","...","...","...","3500","1","5/12/2022","2023-11-21 15:37:08","2023-11-21 15:37:08");
INSERT INTO medicine__activities VALUES("376","DR GULFAM","CIVIL PHARMACY","..","...","...","3500","1","5/12/2022","2023-11-21 15:38:10","2023-11-21 15:38:10");
INSERT INTO medicine__activities VALUES("377","DR MUSRAB & ZOHAIB","JPMC","...","...","...","500","1","5/12/2022","2023-11-21 15:39:28","2023-11-21 15:39:28");
INSERT INTO medicine__activities VALUES("378","DR FAYAZ","...","...","...","DINNER","1000","1","5/12/2022","2023-11-21 15:40:41","2023-11-21 15:40:41");
INSERT INTO medicine__activities VALUES("379","DR NAZNEEN","ANKAL SARYA","...","...","...","1350","1","5/12/2022","2023-11-21 15:43:37","2023-11-21 15:43:37");
INSERT INTO medicine__activities VALUES("380","DR JAMAL NASIR","JPMC","...","...","PENS","1000","1","5/12/2022","2023-11-21 15:44:46","2023-11-21 15:44:46");
INSERT INTO medicine__activities VALUES("381","DR TAHA","CIVIL","...","...","DINNER","3000","1","5/12/2022","2023-11-21 15:45:49","2023-11-21 15:45:49");
INSERT INTO medicine__activities VALUES("382","...","WARD","...","...","REFRESHMENT","1000","1","5/12/2022","2023-11-21 15:47:03","2023-11-21 15:47:03");
INSERT INTO medicine__activities VALUES("383","REHMAN & NOMAN","JPMC","...","...","LUNCH/DINNER","4000","1","5/12/2022","2023-11-21 15:48:15","2023-11-21 15:48:15");
INSERT INTO medicine__activities VALUES("384","DR PEER MUJTABA & 2 DRS","SERVICES HOSP","...","...","DINNER/MOVIE","25000","1","5/12/2022","2023-11-21 15:55:20","2023-11-21 15:55:20");
INSERT INTO medicine__activities VALUES("385","DR FAYAZ","CIVIL","...","...","...","6000","1","5/12/2022","2023-11-21 15:56:16","2023-11-21 15:56:16");
INSERT INTO medicine__activities VALUES("386","DR QAMAR ABBAS","MOTHER CARE","...","...","ADVANCE FOR CURTAINS","10000","1","5/12/2022","2023-11-21 15:57:22","2023-11-21 15:57:22");
INSERT INTO medicine__activities VALUES("387","DR FAYAZ","...","...","...","DINNER","1500","1","5/12/2022","2023-11-21 15:57:51","2023-11-21 15:57:51");
INSERT INTO medicine__activities VALUES("388","DR SARFRAZ","ORTHO JPMC","...","...","LUNCH /DINNER","6000","1","5/12/2022","2023-11-21 15:58:35","2023-11-21 15:58:35");
INSERT INTO medicine__activities VALUES("389","DR MOHTASHM","ORTHO CIVIL","...","...","DINNER","1500","1","12/12/2022","2023-11-21 16:02:46","2023-11-21 16:02:46");
INSERT INTO medicine__activities VALUES("390","DR NALIULLAH","JPMC","...","...","BOOK","3500","1","12/12/2022","2023-11-21 16:03:44","2023-11-21 16:03:44");
INSERT INTO medicine__activities VALUES("391","DR AGHA NASREEN","...","...","...","LUNCH","1500","1","12/12/2022","2023-11-21 16:04:32","2023-11-21 16:04:32");
INSERT INTO medicine__activities VALUES("392","DR FAYAZ","ORTHO 1","...","...","SHOPPING","6000","1","12/12/2022","2023-11-21 16:05:37","2023-11-21 16:05:37");
INSERT INTO medicine__activities VALUES("393","DR BILAL","ORTHO 2 CIVIL 2","...","...","DINNER","1500","1","12/12/2022","2023-11-21 16:06:44","2023-11-21 16:06:44");
INSERT INTO medicine__activities VALUES("394","DR SHAJEEL","JPMC","...","...","LUNCH DINNER","6000","1","12/12/2022","2023-11-21 16:07:24","2023-11-21 16:07:24");
INSERT INTO medicine__activities VALUES("395","DR TALHA","ORTHO 1","...","....","DINNER","2000","1","12/12/2022","2023-11-21 16:08:16","2023-11-21 16:08:16");
INSERT INTO medicine__activities VALUES("396","DR RIAZ LAKHO","ORTHOPEDIC","...","...","CASH","10000","1","12/12/2022","2023-11-21 16:09:40","2023-11-21 16:09:40");
INSERT INTO medicine__activities VALUES("397","DR ASMA","JPMC","...","...","DINNER","1500","1","12/12/2022","2023-11-21 16:15:28","2023-11-21 16:15:28");
INSERT INTO medicine__activities VALUES("398","DR REHANA NOMAN","JPMC","...","...","DINNER/LUNCH","4000","1","12/12/2022","2023-11-21 16:25:00","2023-11-21 16:25:00");
INSERT INTO medicine__activities VALUES("399","DR SURFARAZ","JPMC","...","...","LUNCH/DINNER","6000","1","12/12/2022","2023-11-21 16:25:56","2023-11-21 16:25:56");
INSERT INTO medicine__activities VALUES("400","DR TAHA","ORTHO CIVIL","...","...","DINNER","2000","1","12/12/2022","2023-11-21 16:26:39","2023-11-21 16:26:39");
INSERT INTO medicine__activities VALUES("401","DR JAMILA RAJPOT","SINDH SERVICES","...","...","CAKE","2000","1","12/12/2022","2023-11-21 16:27:18","2023-11-21 16:27:18");
INSERT INTO medicine__activities VALUES("402","...","JPMC","...","...","RENT A/C FAIR","20000","1","12/12/2022","2023-11-21 16:28:00","2023-11-21 16:28:00");
INSERT INTO medicine__activities VALUES("403","DR NAZNEEN","...","...",".","...","2150","1","12/12/2022","2023-11-21 16:28:40","2023-11-21 16:28:40");
INSERT INTO medicine__activities VALUES("404","...","GYNE SERVICES","..","...","..","1640","1","12/12/2022","2023-11-21 16:30:54","2023-11-21 16:30:54");
INSERT INTO medicine__activities VALUES("405","DR SARFRAZ","ORTHO JPMC","...","PAGECAL/INFADOM","CAKE","1000","1","27/12/2022","2023-11-21 16:33:56","2023-11-21 16:33:56");
INSERT INTO medicine__activities VALUES("406","DR AGHA WASEEM","ORTHO JPMC PHARMA","...","PAGECAL/INFADOM","LUNCH","2000","1","27/12/2022","2023-11-21 16:34:58","2023-11-21 16:34:58");
INSERT INTO medicine__activities VALUES("407","DR FARUKH","ORTHO JPMC PHARMA","...","PAGECAL","DINNER","2000","1","27/12/2022","2023-11-21 16:36:16","2023-11-21 16:36:16");
INSERT INTO medicine__activities VALUES("408","DR AURANGAZAIB LALA","ORTHO JPMC PHARMA","...","PAGECAL","CASH","10000","1","27/12/2022","2023-11-21 16:37:24","2023-11-21 16:37:24");
INSERT INTO medicine__activities VALUES("409","ALI MEDICAL","ORTHO BAKHT BHASHIR","...","...","ADJUSTMENT","5000","1","27/12/2022","2023-11-21 16:38:59","2023-11-21 16:38:59");
INSERT INTO medicine__activities VALUES("410","DR SHARJEEL","ORTHO  JPMC","...","PAGECAL/INFADOM","CAKE/LUNCH","4500","1","27/12/2022","2023-11-21 16:40:13","2023-11-21 16:40:13");
INSERT INTO medicine__activities VALUES("411","DR OMAIMA","GYNE CIVIL","...","IROHEME/FALNEU","BOOK","3800","1","27/12/2022","2023-11-21 16:41:11","2023-11-21 16:41:11");
INSERT INTO medicine__activities VALUES("412","...","GYNE OPD CIVIL","...","..","...","990","1","27/12/2022","2023-11-21 16:42:08","2023-11-21 16:42:08");
INSERT INTO medicine__activities VALUES("413","DR ZARA","GYNE CIVIL PHARMACY","...","IROHEME","BOOK","1700","1","27/12/2022","2023-11-21 16:43:07","2023-11-21 16:43:07");
INSERT INTO medicine__activities VALUES("414","DR RIAZ","OPD CIVIL PHARMAX","...","PAGECAL","REFRESHMENT","500","1","27/12/2022","2023-11-21 16:44:26","2023-11-21 16:44:26");
INSERT INTO medicine__activities VALUES("415","DR PONAM","GYNE CIVIL","...","IROHEME","MEDICINE","1800","1","27/12/2022","2023-11-21 17:09:25","2023-11-21 17:09:25");
INSERT INTO medicine__activities VALUES("416","DR NAZNEEN","GYNE ANKEL SERYA","...","FALNUE/IROHEME/PAGECAL","CAKE","700","1","27/12/2022","2023-11-21 17:10:42","2023-11-21 17:10:42");
INSERT INTO medicine__activities VALUES("417","DR NAZNEEN","GYNE ALKHALEEJ","...","FALNUE/IROHEME/PAGECAL","MEDICNE/EGGS","2050","1","27/12/2022","2023-11-21 17:12:05","2023-11-21 17:12:05");
INSERT INTO medicine__activities VALUES("418","DR OSAMA","ORTHO JPMC","...","PAGECAL","TEA/DINNER","2700","1","27/12/2022","2023-11-21 17:13:25","2023-11-21 17:13:25");
INSERT INTO medicine__activities VALUES("419","DR NOMAN","ORTHO JPMC","...","PAGECAL/INFAD","DINNER","2000","1","27/12/2022","2023-11-21 17:14:53","2023-11-21 17:14:53");
INSERT INTO medicine__activities VALUES("420","DR ATIF","ORTHO CIVIL PHARMAX","...","PAGECAL/FALNUE/IROHEM","CASH","1000","1","27/12/2022","2023-11-21 17:16:43","2023-11-21 17:16:43");
INSERT INTO medicine__activities VALUES("421","DR BILAL","ORTHO  CIVIL PHARMACY","...","PAGECAL","DINNER","1500","1","27/12/2022","2023-11-21 17:17:36","2023-11-21 17:17:36");
INSERT INTO medicine__activities VALUES("422","DR BILAL","ORTHO CIVIL","...","PAGECAL","BOOK","BOOK","1","27/12/2022","2023-11-21 17:18:30","2023-11-21 17:18:30");
INSERT INTO medicine__activities VALUES("423","DR ZOHAIB","ORTHO JPMC","...","PAGECAL","DINNER","2500","1","27/12/2022","2023-11-21 17:19:22","2023-11-21 17:19:22");
INSERT INTO medicine__activities VALUES("424","DR AGHA WASEEM","ORTHO JPMC","...","PAGECAL","CAKE","1500","1","27/12/2022","2023-11-21 17:20:13","2023-11-21 17:20:13");
INSERT INTO medicine__activities VALUES("425","...","...","...","...","NEW YEAR DINING","3800","1","27/12/2022","2023-11-21 17:20:53","2023-11-21 17:20:53");
INSERT INTO medicine__activities VALUES("426","DR NAVEED","ORTHO CIVIL FAREWELL","...","PAGECAL","BOOKSHEILD","2900","1","27/12/2022","2023-11-21 17:21:59","2023-11-21 17:21:59");
INSERT INTO medicine__activities VALUES("427","DR KHALID","ORTHO JPMC","...","PAGECAL","LUNCH","3000","1","27/12/2022","2023-11-21 17:22:49","2023-11-21 17:22:49");
INSERT INTO medicine__activities VALUES("428","DR KHALID","ORTHO JPMC PHARMAX","...","PAGECAL","DINNER","3000","1","27/12/2022","2023-11-21 17:23:46","2023-11-21 17:23:46");
INSERT INTO medicine__activities VALUES("429","DR TARIQ","ORTHO CIVIL PHARMACY","..","PAGECAL","DINNER","2000","1","27/12/2022","2023-11-21 17:24:35","2023-11-21 17:24:35");
INSERT INTO medicine__activities VALUES("430","DR BILAL","ORTHO REGISTRATION FEES","..","PAGECAL","CASH","1500","1","27/12/2022","2023-11-21 17:25:26","2023-11-21 17:25:26");
INSERT INTO medicine__activities VALUES("431","...","ORTHO CIVIL 1 CONSLTANT","...","PAGECAL","REFRESHMENT","2000","1","27/12/2022","2023-11-21 17:26:16","2023-11-21 17:26:16");
INSERT INTO medicine__activities VALUES("432","DR ADEEL","ORTHO 2 HOD KARACHI & GOLDEN","...","PAGECAL","CASH","1000","1","27/12/2022","2023-11-21 17:27:18","2023-11-21 17:27:18");
INSERT INTO medicine__activities VALUES("433","DR ABDULLAH","MEDICAL STORE ADJUSTMENT","...","...","CASH","6000","1","27/12/2022","2023-11-21 17:28:07","2023-11-21 17:28:07");
INSERT INTO medicine__activities VALUES("434","AURANGZAIB LALA","...","...","...","CASH","5000","1","02/01/2023","2023-11-22 11:44:53","2023-11-22 11:44:53");
INSERT INTO medicine__activities VALUES("435","DR OSAMA","ward 14 ortho","..","PAGECAL","DINNER","2500","1","02/","2023-11-22 11:46:05","2023-11-22 11:46:05");
INSERT INTO medicine__activities VALUES("436","DR BILAL","CIVIL 2 ORTHO CIVIL PHARMAX","...","PAGECAL","DINNER","1500","1","02/01/2023","2023-11-22 11:47:25","2023-11-22 11:47:25");
INSERT INTO medicine__activities VALUES("437","DR NASIR SOMRO","WARD 17 ORTHO JPMC","...","PAGECAL","LUNCH","3000","1","02/01/2023","2023-11-22 11:48:23","2023-11-22 11:48:23");
INSERT INTO medicine__activities VALUES("438","DR QASIM","WARD","...","PAGECAL","DINNER","3000","1","02/01/2023","2023-11-22 11:54:03","2023-11-22 11:55:11");
INSERT INTO medicine__activities VALUES("439","DR NAZNEEN","GYNE ANKER SERYA","...","IROHEME/PAGECAL","...","00","1","02/01/2023","2023-11-22 11:56:19","2023-11-22 11:56:19");
INSERT INTO medicine__activities VALUES("440","...","BABA M/S... MAKKI M/S","...","FALNUE","SUPER CARD ..FRIUTS..","4600","1","02/01/2023","2023-11-22 11:57:45","2023-11-22 11:57:45");
INSERT INTO medicine__activities VALUES("441","GULFAM","OPD 3 CIVIL","...","...","CASH","500","1","02/01/","2023-11-22 11:58:20","2023-11-22 11:58:20");
INSERT INTO medicine__activities VALUES("442","DR SHARJEEL","WARD 17 ORTHO JPMC","...","PAGECAL","LUNCH","2500","1","02/01/2023","2023-11-22 11:59:08","2023-11-22 11:59:08");
INSERT INTO medicine__activities VALUES("443","DR NOMAN","WARD 14 JPMC","...","PAGECAL","DINNER","2500","1","02/01/2023","2023-11-22 12:01:14","2023-11-22 12:01:14");
INSERT INTO medicine__activities VALUES("444","DR AGHA WASEEM","WARD 14 JPMC","...","PAGECAL","LUNCH","2000","1","02/01/2023","2023-11-22 12:02:13","2023-11-22 12:02:13");
INSERT INTO medicine__activities VALUES("445","DR JAMAL NASIR","WARD 17 JPMC","...","PAGECAL","LUNCH","2500","1","02/01/2023","2023-11-22 12:03:31","2023-11-22 12:03:31");
INSERT INTO medicine__activities VALUES("446","DR NOMAN","WARD 17 JPMC","...","pagecal","dinner","2500","1","02/01/2023","2023-11-22 12:04:22","2023-11-22 12:04:22");
INSERT INTO medicine__activities VALUES("447","DR TARIQ","ORTHO CIVIL","...","PAGECAL","DINNER","2000","1","02/01/2023","2023-11-22 12:05:57","2023-11-22 12:05:57");
INSERT INTO medicine__activities VALUES("448","MULTIPLE DRS","GYNE CIVIL","...","IROHEME/PAGECAL/FALNUE","REFRESHMENT","5,050","1","02/01/2023","2023-11-22 12:44:19","2023-11-22 12:44:19");
INSERT INTO medicine__activities VALUES("449","DARIY","BALANCE","...","...","...","1000","1","02/01/2023","2023-11-22 12:46:40","2023-11-22 12:46:40");
INSERT INTO medicine__activities VALUES("450","CONSLTANT","ORTHO WARD 1","...","PAGECAL/INFADOM","REFRESHMENT","2000","1","02/01/2023","2023-11-22 12:48:35","2023-11-22 12:48:35");
INSERT INTO medicine__activities VALUES("451","ZULFIQAR BAHE","PHARMAX JPMC","...","...","...","5000","1","02","2023-11-22 12:49:59","2023-11-22 12:49:59");
INSERT INTO medicine__activities VALUES("452","RIAZ","PHARMAX","...","...","...","8000","1","02/01/2023","2023-11-22 12:50:38","2023-11-22 12:50:38");
INSERT INTO medicine__activities VALUES("453","DR SADAM","ORTHO WARD JPMC","...","PAGECAL/INFADOM","LUNCH","2050","1","10/01/2023","2023-11-22 12:56:44","2023-11-22 13:01:18");
INSERT INTO medicine__activities VALUES("454","...","JPMC","...","...","...","300","1","10/01/2023","2023-11-22 13:00:45","2023-11-22 13:00:45");
INSERT INTO medicine__activities VALUES("455","DR SADIQA","GYNE  M JUMA HOSPTL","...","FALNUE/IROHEME/PAGECAL","FILES","4500","1","10/01/2023","2023-11-22 13:02:40","2023-11-22 13:02:40");
INSERT INTO medicine__activities VALUES("456","DR PARVIZ ALI","ORTHO JPMC","...","PAGECAL/INFADOM","VISITING CARD","550","1","10/01/2023","2023-11-22 13:04:45","2023-11-22 13:04:45");
INSERT INTO medicine__activities VALUES("457","DR ARIF ALI","ORTOLOGST","JPMC JAMAL NOOR","CRANDOM","FILES SHEET","500","1","10/01/2023","2023-11-22 13:06:02","2023-11-22 13:06:02");
INSERT INTO medicine__activities VALUES("458","DR OSAMA","WARD 14 ORTHO","...","PAGECAL/INFADOM","DINNER","2500","1","10/01/2023","2023-11-22 13:07:58","2023-11-22 13:07:58");
INSERT INTO medicine__activities VALUES("459","DR SAQIB","WARD 17 ORTHO","...","PAGECAL/INFADOM","DINNER","2500","1","10/01/2023","2023-11-22 13:09:25","2023-11-22 13:09:25");
INSERT INTO medicine__activities VALUES("460","DR PREM CHAND","WARD 1 ORTHO CIVIL PHARMACY","...","PAGECAL/INFADOM","LUNCH","2200","1","10/01/2023","2023-11-22 13:10:40","2023-11-22 13:10:40");
INSERT INTO medicine__activities VALUES("461","DR AMMAR","WARD 17 PHARMAX","...","PAGECAL/INFADOM","LUNCH","2500","1","10/01/2023","2023-11-22 13:11:32","2023-11-22 13:11:32");
INSERT INTO medicine__activities VALUES("462","DR LAL MALIK","WARD 17 ORTHO","...","PAGECAL/INFADOM","DINNER","2500","1","10/01/2023","2023-11-22 13:12:21","2023-11-22 13:12:21");
INSERT INTO medicine__activities VALUES("463","DR TARIQ","WARD 1 ORTHO CIVIL PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","10/01/2023","2023-11-22 13:13:40","2023-11-22 13:13:40");
INSERT INTO medicine__activities VALUES("464","DR NAZNEEN","GYNE ANKEL SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","10/01/2023","2023-11-22 13:14:31","2023-11-22 13:14:31");
INSERT INTO medicine__activities VALUES("465","DR AGHA WASEEM","WARD 14 ORTHO JPMC","...","PAGECAL/INFADOM","LUNCH","1500","1","10/01/2023","2023-11-22 13:15:48","2023-11-22 13:15:48");
INSERT INTO medicine__activities VALUES("466","DR BILAL","WARD 1 ORTHO CIVIL PHARMACY","...","PAGECAL/INFADOM","DINNER","1500","1","10/01/2023","2023-11-22 13:17:00","2023-11-22 13:17:00");
INSERT INTO medicine__activities VALUES("467","DR LAL MALIK","ORTHO WARD 17 JPMC","...","PAGECAL/INFADOM","LUNCH","2500","1","10/01/2023","2023-11-22 13:17:50","2023-11-22 13:17:50");
INSERT INTO medicine__activities VALUES("468","DR NOMAN","WARD 17 ORTHO","...","PAGECAL/INFADOM","DINNER","2000","1","10/01/2023","2023-11-22 13:19:30","2023-11-22 13:19:30");
INSERT INTO medicine__activities VALUES("469","ASIF BAHE","CIVIL PHARMCY","...","...","CASH","5000","1","10/01/2023","2023-11-22 13:20:30","2023-11-22 13:20:30");
INSERT INTO medicine__activities VALUES("470","NEW S.J","ANKEL SERYA","...","...","CASH","5000","1","10/01/2023","2023-11-22 13:21:25","2023-11-22 13:21:25");
INSERT INTO medicine__activities VALUES("471","...","JPMC CIVIL SERVICES","...","...","...","1300","1","10/01/2023","2023-11-22 13:22:33","2023-11-22 13:22:33");
INSERT INTO medicine__activities VALUES("472","MULTIPLE DRS","GYNE OPD","...","...","REFRESHMENT","2240","1","10/01/2023","2023-11-22 13:23:39","2023-11-22 13:23:39");
INSERT INTO medicine__activities VALUES("473","DR MEER","WARD 17 ORTHO","...","PAGECAL","LUNCH","3000","1","10/01/2023","2023-11-22 13:24:29","2023-11-22 13:24:29");
INSERT INTO medicine__activities VALUES("474","DR MEER","WARD 17 ORTHO JPMC","...","PAGECAL","DINNER","3500","1","10/01/2023","2023-11-22 13:25:48","2023-11-22 13:25:48");
INSERT INTO medicine__activities VALUES("475","DR TARIQ","WARD 1 ORTHO","...","PAGECAL/INFADOM","DINNER","2000","1","10/01/2023","2023-11-22 13:26:27","2023-11-22 13:26:27");
INSERT INTO medicine__activities VALUES("476","DR NAZNEEN","GYNE ANKEL SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","900","1","10/01/2023","2023-11-22 13:27:23","2023-11-22 13:27:23");
INSERT INTO medicine__activities VALUES("477","DR MATIULLAH","ORTHO JPMC","...","PAGECAL","...","12000","1","10/01/2023","2023-11-22 13:28:17","2023-11-22 13:28:17");
INSERT INTO medicine__activities VALUES("478","AURANGZAIB LALA","CIVIL HOSPTL","...","...","CASH","5000","1","10/01/2023","2023-11-22 13:28:59","2023-11-22 13:28:59");
INSERT INTO medicine__activities VALUES("479","DR SHAZIA","WARD 1 ORTHO CIVIL","...","PAGECAL","ORTHOCON","30000","1","10/01/2023","2023-11-22 13:29:53","2023-11-22 13:29:53");
INSERT INTO medicine__activities VALUES("480","DR FAROOQ","JPMC","...","CRANDOM","CASH","10000","1","10/01/2023","2023-11-22 13:30:57","2023-11-22 13:30:57");
INSERT INTO medicine__activities VALUES("481","DR TARIQ","ORTHO CIVIL PHARMAX","...","PAGECAL/INFADOM","DINNER","1500","1","17/01/2023","2023-11-22 13:39:44","2023-11-22 13:39:44");
INSERT INTO medicine__activities VALUES("482","DR JAGDESH","ORTHO CIVIL","...","PAGECAL","REFRESHMENT","1000","1","17/01/2023","2023-11-22 13:40:45","2023-11-22 13:40:45");
INSERT INTO medicine__activities VALUES("483","DR ADEEL","ORTHO 2 CIVIL PHARMAX","...","PAGECAL","REFRESHMENT","2000","1","17/01/2023","2023-11-22 13:41:55","2023-11-22 13:41:55");
INSERT INTO medicine__activities VALUES("484","DR KAREEM","CIVIL OPD INCHARGE","...","...","CASH","3000","1","17/01/2023","2023-11-22 13:42:41","2023-11-22 13:42:41");
INSERT INTO medicine__activities VALUES("485","DR OSAMA","WARD 14 JPMC","...","PAGECAL","DINNER","3000","1","17/01/2023","2023-11-22 13:43:37","2023-11-22 13:43:37");
INSERT INTO medicine__activities VALUES("486","DR ZOHAIB","WARD 17 JPMC PHARMAX","...","PAGECAL/INFADOM","LUNCH","3500","1","17/01/2023","2023-11-22 13:44:28","2023-11-22 13:44:28");
INSERT INTO medicine__activities VALUES("487","DR SARFRAZ","WARD 17 JPMC","..","PAGECAL/INFADOM","DINNER","3000","1","17/01/2023","2023-11-22 13:47:43","2023-11-22 13:47:43");
INSERT INTO medicine__activities VALUES("488","DR HABIB","CIVIL OPD","..","PAGECAL","REFRESHMENT","400","1","17/01/2023","2023-11-22 13:49:50","2023-11-22 13:49:50");
INSERT INTO medicine__activities VALUES("489","DR PREM","ORTHO 1 CIVIL PHARMAX","...","PAGECAL","DINNER","2000","1","17/01/2023","2023-11-22 13:50:44","2023-11-22 13:50:44");
INSERT INTO medicine__activities VALUES("490","DR SOUGHAT","ORTHO CIVIL PHARMACY","...","PAGECAL","MOVIE TICKETS","7800","1","17/01/2023","2023-11-22 13:51:56","2023-11-22 13:51:56");
INSERT INTO medicine__activities VALUES("491","DR SOUGHAT","ORTHO CIVIL PHARMACY","...","PAGECAL","MOVIE TICKETS","7800","1","17/01/2023","2023-11-22 13:52:04","2023-11-22 13:52:04");
INSERT INTO medicine__activities VALUES("492","DR GEETA","GYNE CARE PHARMACY","...","PAGECAL","REFRESHMENT","2100","1","17/01/2023","2023-11-22 13:52:55","2023-11-22 13:52:55");
INSERT INTO medicine__activities VALUES("493","DR GEETA","GYNE CARE PHARMACY","...","PAGECAL","REFRESHMENT","2100","1","17/01/2023","2023-11-22 13:53:00","2023-11-22 13:53:00");
INSERT INTO medicine__activities VALUES("494","DR ASIF","ORTHO CIVIL PHARMAX","...","PAGECAL","DINNER","1500","1","17/01/2023","2023-11-22 13:54:04","2023-11-22 13:54:04");
INSERT INTO medicine__activities VALUES("495","DR PONAM","CIVIL GYNE PHARMACY","...","FALNUE/IROHEME/PAGECAL","BOOK","1700","1","17/01/2023","2023-11-22 13:57:09","2023-11-22 13:57:09");
INSERT INTO medicine__activities VALUES("496","DR PONAM","CIVIL GYNE PHARMACY","...","FALNUE/IROHEME/PAGECAL","BOOK","1700","1","17/01/2023","2023-11-22 13:57:13","2023-11-22 13:57:13");
INSERT INTO medicine__activities VALUES("497","DR TARIQ","CIVIL ORTHO PHARMAX","...","PAGECAL/INFADOM","DINNER","2000","1","17/01/2023","2023-11-22 13:57:56","2023-11-22 13:57:56");
INSERT INTO medicine__activities VALUES("498","DR NASIR SOMRO","WARD 17 JPMC","...","PAGECAL/INFADOM","LUNCH","2300","1","17/01/2023","2023-11-22 13:58:55","2023-11-22 13:58:55");
INSERT INTO medicine__activities VALUES("499","DR MEER","WARD 17","...","PAGECAL/INFADOM","DINNER","2500","1","17/01/2023","2023-11-22 13:59:36","2023-11-22 13:59:36");
INSERT INTO medicine__activities VALUES("500","DR NASIR SOMRO","ORTHO WARD 17 JPMC","...","PAGECAL","BOOK","900","1","17/01/2023","2023-11-22 14:00:57","2023-11-22 14:00:57");
INSERT INTO medicine__activities VALUES("501","DR AGHA WASEEM","ORTHO WARD 14 PHARMACY","...","PAGECAL","DINNER","2000","1","17/01/2023","2023-11-22 14:02:09","2023-11-22 14:02:09");
INSERT INTO medicine__activities VALUES("502","DR SAQIB","ORTHO WARD 17 JPMC","...","PAGECAL/INFADOM","LUNCH","3000","1","17/01/2023","2023-11-22 14:04:08","2023-11-22 14:04:08");
INSERT INTO medicine__activities VALUES("503","DR REHMAN","ORTHO WARD  17 JPMC PHARMAX","...","PAGECAL","DINNER","3000","1","17/01/2023","2023-11-22 14:05:15","2023-11-22 14:05:15");
INSERT INTO medicine__activities VALUES("504","DR MANAN","ORTHO 1 CIVIL PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","17/01/2023","2023-11-22 14:06:47","2023-11-22 14:06:47");
INSERT INTO medicine__activities VALUES("505","DR NAZNEEN","GYNE  ANKER SERYA","...","FALNUE/IROHEME","EGGS","1500","1","17/01/2023","2023-11-22 14:07:43","2023-11-22 14:07:43");
INSERT INTO medicine__activities VALUES("506","ATIF","CIVIL PHARMACY","...","PAGECAL","CASH","1000","1","17/01/2023","2023-11-22 14:08:56","2023-11-22 14:08:56");
INSERT INTO medicine__activities VALUES("507","...","GYNE CIVIL","...","...","REFRESHMENT","1500","1","17/01/2023","2023-11-22 14:09:44","2023-11-22 14:09:44");
INSERT INTO medicine__activities VALUES("508","DR MAIRAJ","ORTHO WARD 2 CIVIL PHARMACY","...","PAGECAL","BOOK","6000","1","24/01/2023","2023-11-22 14:19:48","2023-11-22 14:19:48");
INSERT INTO medicine__activities VALUES("509","DR SHAZAIB","ORTHO WARD 2 PHARMAX","...","PAGECAL","DROPS","700","1","24/01/2023","2023-11-22 14:21:05","2023-11-22 14:21:05");
INSERT INTO medicine__activities VALUES("510","DR OSAMA","JPMC WARD 17","...","PAGECAL/INFADOM","lunch","3000","1","24/01/2023","2023-11-22 14:22:00","2023-11-22 14:22:00");
INSERT INTO medicine__activities VALUES("511","NASIR","APWA DR SOHAIL P.A","...","...","CASH","2000","1","24/01/2023","2023-11-22 14:22:51","2023-11-22 14:22:51");
INSERT INTO medicine__activities VALUES("512","DR HABIB","CIVIL OPD CIVIL PHARMACY","...","PAGECAL","REFRESHMENT","500","1","24/01/2023","2023-11-22 14:23:53","2023-11-22 14:23:53");
INSERT INTO medicine__activities VALUES("513","DR JAMIL","CIVIL WARD","...","PAGECAL","REFRESHMENT","2500","1","24/01/2023","2023-11-22 14:27:47","2023-11-22 14:27:47");
INSERT INTO medicine__activities VALUES("514","DR SARFRAZ","JPMC WARD  17","...","PAGECAL/IROHEME","LUNCH","3000","1","24/01/2023","2023-11-22 14:29:35","2023-11-22 14:29:35");
INSERT INTO medicine__activities VALUES("515","DR ZOHAIB","JPMC WARD 17","...","PAGECAL/INFADOM","DINNER","3000","1","24/01/2023","2023-11-22 14:30:22","2023-11-22 14:30:22");
INSERT INTO medicine__activities VALUES("516","DR NAZNEEN","ANKEL SERYA","...","FALNUE/IROHEME/PAGECAL","FRIUTS","2000","1","24/01/2023","2023-11-22 14:31:15","2023-11-22 14:31:15");
INSERT INTO medicine__activities VALUES("517","DR JAGDESH","CIVIL ORTHO","...","...","BRTHDY MOVIE TCKTS","13000","1","24/01/2023","2023-11-22 14:32:39","2023-11-22 14:32:39");
INSERT INTO medicine__activities VALUES("518","DR JAMAL NASIR","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3000","1","24/01/2023","2023-11-22 14:33:27","2023-11-22 14:33:27");
INSERT INTO medicine__activities VALUES("519","DR NOMAN","JPMC WARD 17","...","PAGECAL","DINNER","3000","1","24/01/2023","2023-11-22 14:34:23","2023-11-22 14:34:23");
INSERT INTO medicine__activities VALUES("520","DR REHAN","JPMC PHARMACY","...","PAGECAL","CASH","5000","1","24/01/2023","2023-11-22 14:35:11","2023-11-22 14:35:11");
INSERT INTO medicine__activities VALUES("521","DR LAL MALIK","JPMC PHARMACY","...","PAGECAL/INFADOM","CASH","1800","1","24/01/2023","2023-11-22 14:36:10","2023-11-22 14:36:10");
INSERT INTO medicine__activities VALUES("522","DR PREM CHAND","ORTHO 1 CIVIL","...","PAGECAL","DINNER","2000","1","24/01/2023","2023-11-22 14:36:55","2023-11-22 14:36:55");
INSERT INTO medicine__activities VALUES("523","DR RAZIA","ISM","..","PAGECAL/FALNUE","LOTION","670","1","24/01/2023","2023-11-22 14:38:14","2023-11-22 14:38:14");
INSERT INTO medicine__activities VALUES("524","DR AGHA WASEEM","ORTHO WARD 14","...","PAGECAL","LUNCH","2000","1","24/01/2023","2023-11-22 14:39:32","2023-11-22 14:39:32");
INSERT INTO medicine__activities VALUES("525","DR SHUMAILA","APWA","...","PAGECAL/IROHEME","DRY FRIUTS","2700","1","24/01/2023","2023-11-22 14:41:04","2023-11-22 14:41:04");
INSERT INTO medicine__activities VALUES("526","DR TARIQ","CIVIL ORTHO 1","...","PAGECAL/INFADOM","DINNER","2000","1","24/01/2023","2023-11-22 14:42:12","2023-11-22 14:42:12");
INSERT INTO medicine__activities VALUES("527","DR BILAL","CIVIL ORTHO 2","...","PAGECAL","DINNER","1500","1","24/01/2023","2023-11-22 14:42:58","2023-11-22 14:42:58");
INSERT INTO medicine__activities VALUES("528","DR NAZNEEN","ANKER SERYA","...","IROHEME/PAGECAL/FALNUE","EGGS","1750","1","24/01/2023","2023-11-22 14:44:04","2023-11-22 14:44:04");
INSERT INTO medicine__activities VALUES("529","DR JAMAL NASIR","JPMC WARD 17","...","PAGECAL","LUNCH","3000","1","24/01/2023","2023-11-22 14:44:52","2023-11-22 14:44:52");
INSERT INTO medicine__activities VALUES("530","DR ERUM","BAKHT BHARI","...","FALNUE/IROHEME/PAGECAL","BIRYANI","700","1","24/01/2023","2023-11-22 14:45:59","2023-11-22 14:45:59");
INSERT INTO medicine__activities VALUES("531","DR SAQIB","JPMC WARD 14","...","PAGECAL","DINNER","3000","1","24/01/2023","2023-11-22 14:46:43","2023-11-22 14:46:43");
INSERT INTO medicine__activities VALUES("532","DR WAQAR","CIVIL ORTHO 1","...","PAGECAL","DINNER","2000","1","24/01/2023","2023-11-22 14:47:34","2023-11-22 14:47:34");
INSERT INTO medicine__activities VALUES("533","DR KHALIL","CIVIL ORTHO 1","..","...","BOOK","1500","1","24/01/2023","2023-11-22 14:48:32","2023-11-22 14:48:32");
INSERT INTO medicine__activities VALUES("534","DR HANIF JAN","TAJ HANIF JAN PHARMACY","...","FALNUE/INFADOM/PAGECAL","CAKE","1250","1","24/01/2023","2023-11-22 14:49:42","2023-11-22 14:49:42");
INSERT INTO medicine__activities VALUES("535","...","CIVIL GYNE SERVICES","...","...","...","1200","1","24/01/2023","2023-11-22 14:50:26","2023-11-22 14:52:08");
INSERT INTO medicine__activities VALUES("536","DR SARFRAZ","ORTHO JPMC","...","PAGECAL/INFADOM","CAKE","1000","1","27/12/2022","2023-11-22 15:27:35","2023-11-22 15:27:35");
INSERT INTO medicine__activities VALUES("537","DR AGHA WASEEM","ORTHO JPMC","...","PAGECAL/INFADOM","LUNCH","2000","1","27/12/2022","2023-11-22 15:28:41","2023-11-22 15:28:41");
INSERT INTO medicine__activities VALUES("538","AURANGZAIB LALA","ORTHO JPMC","...","PAGECAL","CASH","10000","1","27/12/2022","2023-11-22 15:29:35","2023-11-22 15:29:35");
INSERT INTO medicine__activities VALUES("539","ALI MEDICAL","ORTHO BAKHT BHARI","...","PAGECAL","ADJSMNT","5000","1","27/12/2022","2023-11-22 15:30:38","2023-11-22 15:30:38");
INSERT INTO medicine__activities VALUES("540","DR SHARJEEL","ORTHO  JPMC","...","PAGECAL/INFADOM","CAKE LUNCH","4500","1","27/12/2022","2023-11-22 15:31:39","2023-11-22 15:31:39");
INSERT INTO medicine__activities VALUES("541","DR OMAIMA","GYNE CIVIL","...","IROHEME/FALNUE","BOOK","3800","1","27/12/2022","2023-11-22 15:32:40","2023-11-22 15:32:40");
INSERT INTO medicine__activities VALUES("542","...","GYNE OPD CIVIL","...","...","REFRESHMENT","990","1","27/12/2022","2023-11-22 15:33:30","2023-11-22 15:33:30");
INSERT INTO medicine__activities VALUES("543","DR ZARA","GYNE CIVIL","...","IROHEME","BOOK","1700","1","27/12/2022","2023-11-22 15:34:28","2023-11-22 15:34:28");
INSERT INTO medicine__activities VALUES("544","DR RIAZ","OPD CIVIL","...","PAGECAL","REFRESHMENT","500","1","27/12/2022","2023-11-22 15:35:46","2023-11-22 15:35:46");
INSERT INTO medicine__activities VALUES("545","DR OMAIMA","GYNE CIVIL","...","IROHEME/FALNUE","BOOK","3800","1","27/12/2022","2023-11-22 15:42:27","2023-11-22 15:42:27");
INSERT INTO medicine__activities VALUES("546","DR PONAM","GYNE  CIVIL","...","IROHEME","MEDICINE","1800","1","27/12/2022","2023-11-22 15:43:39","2023-11-22 15:43:39");
INSERT INTO medicine__activities VALUES("547","DR NAZNEEN","GYNE ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","CAKE","700","1","27/12/2022","2023-11-22 15:44:22","2023-11-22 15:44:22");
INSERT INTO medicine__activities VALUES("548","DR NAZNEEN","GYNE AL KHALEEJ PHARMACY","...","FALNUE/IROHEME/PAGECAL","MEDICINE & EGGS","2050","1","27/12/2022","2023-11-22 15:45:33","2023-11-22 15:45:33");
INSERT INTO medicine__activities VALUES("549","DR OSAMA","ORTHO JPMC","...","PAGECAL","TEA DINNER","2700","1","27/12/2022","2023-11-22 15:46:27","2023-11-22 15:46:27");
INSERT INTO medicine__activities VALUES("550","DR NOMAN","ORTHO JPMC PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","27/12/2022","2023-11-22 15:47:06","2023-11-22 15:47:06");
INSERT INTO medicine__activities VALUES("551","ATIF","ORTHO CIVIL","...","PAGECAL/IROHEME/FALNUE","CASH","10000","1","27/01/2023","2023-11-22 15:48:32","2023-11-22 15:48:32");
INSERT INTO medicine__activities VALUES("552","DR BILAL","ORTHO CIVIL PHARMACY","...","PAGECAL","DINNER","1500","1","27/12/2022","2023-11-22 15:49:44","2023-11-22 15:49:44");
INSERT INTO medicine__activities VALUES("553","DR BILAL","ORTHO CIVIL KARACHI","...","PAGECAL","BOOK","3600","1","27/12/2022","2023-11-22 15:50:51","2023-11-22 15:50:51");
INSERT INTO medicine__activities VALUES("554","DR ZOHAIB","ORTHO JPMC","...","PAGECAL","DINNER","2500","1","27/12/2022","2023-11-22 15:52:05","2023-11-22 15:52:05");
INSERT INTO medicine__activities VALUES("555","DR AGHA WASEEM","ORTHO JPMC","...","PAGECAL","CAKE","1500","1","27/12/2022","2023-11-22 15:52:46","2023-11-22 15:52:46");
INSERT INTO medicine__activities VALUES("556","NEW YEAR DINING","...","...","PAGECAL","CAKE","3800","1","27/12/2022","2023-11-22 16:04:34","2023-11-22 16:04:34");
INSERT INTO medicine__activities VALUES("557","DR NAVEED","ORTHO CIVIL  FAREWELL","...","PAGECAL","BOOKED SHIELD","2900","1","27/12/2022","2023-11-22 16:06:00","2023-11-22 16:06:00");
INSERT INTO medicine__activities VALUES("558","DR KHALIL","ORTHO JPMC PHARMAY","...","PAGECAL","LUNCH","3000","1","27/12/2022","2023-11-22 16:06:46","2023-11-22 16:06:46");
INSERT INTO medicine__activities VALUES("559","...","ORTHO JPMC","...","PAGECAL","DINNER","3000","1","27/12/2022","2023-11-22 16:09:31","2023-11-22 16:09:31");
INSERT INTO medicine__activities VALUES("560","DR TARIQ","ORTHO  CIVIL PHARMAY","...","PAGECAL","DINNER","2000","1","27/12/2022","2023-11-22 16:10:49","2023-11-22 16:10:49");
INSERT INTO medicine__activities VALUES("561","DR BILAL","ORTHO REGSTRTION FEES","...","PAGECAL","CASH","1500","1","27/12/2022","2023-11-22 16:11:35","2023-11-22 16:11:35");
INSERT INTO medicine__activities VALUES("562","CONSLTNT","CIVIL ORTHO 1","...","PAGECAL","REFRESHMENT","2000","1","27/12/2022","2023-11-22 16:12:53","2023-11-22 16:12:53");
INSERT INTO medicine__activities VALUES("563","DR ADEEL","ORTHO WARD 2 KARACHI + GOLDEN","...","PAGECAL","CASH","10000","1","27/12/2022","2023-11-22 16:14:04","2023-11-22 16:14:04");
INSERT INTO medicine__activities VALUES("564","...","ABDULLAH MEDICAL STORE","...","...","CASH","6000","1","27/12/2022","2023-11-22 16:16:46","2023-11-22 16:16:46");
INSERT INTO medicine__activities VALUES("565","DR SEHER","GYNE ALI M/S SAIF","..","FALNUE/IROHEME/PAGECAL","DINNER","2500","1","31/01/2023","2023-11-23 09:40:14","2023-11-23 09:40:14");
INSERT INTO medicine__activities VALUES("566","DR AGHA WASEEM","ORTHO JPMC PHARMAX","..","PAGECAL/INFADOM","LUNCH","2000","1","31/01/2023","2023-11-23 09:41:11","2023-11-23 09:41:11");
INSERT INTO medicine__activities VALUES("567","DR SARFRAZ","ORTHO JPMC PHARMAX","...","PAGECAL/INFADOM","LUNCH","4000","1","31/01/2023","2023-11-23 09:43:01","2023-11-23 09:43:01");
INSERT INTO medicine__activities VALUES("568","DR TARIQ","ORTHO CIVIL PHARMAX","...","PAGECAL/INFADOM","DINNER","2000","1","31/01/2023","2023-11-23 09:48:44","2023-11-23 09:48:44");
INSERT INTO medicine__activities VALUES("569","...","CIVIL OPD","...","...","REFRESHMENT","1500","1","31/01/2023","2023-11-23 09:49:25","2023-11-23 09:49:25");
INSERT INTO medicine__activities VALUES("570","ANWAR MAMA","CIVIL OPD CHOWKI","...","...","DONATION FOOTBALL CLUB","7000","1","31/01/2023","2023-11-23 09:50:37","2023-11-23 09:50:37");
INSERT INTO medicine__activities VALUES("571","...","GYNE  CIVIL WARD 3","...","...","OVEN REPAIR","1300","1","31/01/2023","2023-11-23 09:51:40","2023-11-23 09:51:40");
INSERT INTO medicine__activities VALUES("572","DR ZOHAIB","ORTHO JPMC PHARMAX","...","PAGECAL","DINNER","3000","1","31/01/2023","2023-11-23 09:52:31","2023-11-23 09:52:31");
INSERT INTO medicine__activities VALUES("573","DR NASIR","ORTHO JPMC PHARMAX","...","PAGECAL","LUNCH","3500","1","31/01/2023","2023-11-23 09:53:15","2023-11-23 09:53:15");
INSERT INTO medicine__activities VALUES("574","DR NOMAN","ORTHO JPMC +NOMAN+BISMILLAH","...","PAGECAL/INFADOM","DINNER","3500","1","31/01/2023","2023-11-23 09:54:16","2023-11-23 09:54:16");
INSERT INTO medicine__activities VALUES("575","DR ASIF","ORTHO CIVIL PHARMACY","...","PAGECAL","BOOK","7500","1","31/01/2023","2023-11-23 09:56:25","2023-11-23 09:56:25");
INSERT INTO medicine__activities VALUES("576","DR MANAN","ORTHO CIVIL PHARMACY","...","PAGECAL","DINNER","1500","1","31/01/2023","2023-11-23 09:59:44","2023-11-23 09:59:44");
INSERT INTO medicine__activities VALUES("577","DR BILAL","ORTHO CIVIL PHARMAX ZAIB","...","PAGECAL/INFADOM","DINNER","1500","1","31/01/2023","2023-11-23 10:00:55","2023-11-23 10:00:55");
INSERT INTO medicine__activities VALUES("578","DR OSAMA","ORTHO JPMC PHARMACY","...","PAGECAL","DINNER","1600","1","31/01/2023","2023-11-23 10:02:54","2023-11-23 10:02:54");
INSERT INTO medicine__activities VALUES("579","ZAHEER WAHEED","CIVIL HOSPITAL CHOWKI","...","PAGECAL","CASH","2000","1","31/01/2023","2023-11-23 10:03:56","2023-11-23 10:03:56");
INSERT INTO medicine__activities VALUES("580","DR QASIM","ORTHO JPMC PHARMAX","..","PAGECAL","LUNCH","3000","1","31/01/2023","2023-11-23 10:04:42","2023-11-23 10:04:42");
INSERT INTO medicine__activities VALUES("581","DR HASSAN","ORTHO JPMC PHARMAX","...","PAGECAL","DINNER","3500","1","31/01/2023","2023-11-23 10:05:30","2023-11-23 10:05:30");
INSERT INTO medicine__activities VALUES("582","DR WAQAR","ORTHO CIVIL PHARMACY","...","PAGECAL","DINNER","2000","1","31/01/2023","2023-11-23 10:06:23","2023-11-23 10:06:23");
INSERT INTO medicine__activities VALUES("583","DR JAMILA RAJPOOT","GYNE SERVICES HOSP","...","IROHEME/PAGECAL/FALNUE","BOOKED","1500","1","31/01/2023","2023-11-23 10:07:32","2023-11-23 10:07:32");
INSERT INTO medicine__activities VALUES("584","...","....","...","...","OFFICE LUNCH","1500","1","31/01/2023","2023-11-23 10:08:24","2023-11-23 10:08:24");
INSERT INTO medicine__activities VALUES("585","...","GYNE SERVICES CIVIL","..","...","CASH","3850","1","31/01/2023","2023-11-23 10:09:12","2023-11-23 10:09:12");
INSERT INTO medicine__activities VALUES("586","...","...","...","...","SERVICES REPARING","1000","1","31/01/2023","2023-11-23 10:10:05","2023-11-23 10:10:05");
INSERT INTO medicine__activities VALUES("587","DR NAZNEEN","GYNE S-J GHANNI","...","FALNUE/IROHEME","EGGS","2000","1","31/01/2023","2023-11-23 10:11:04","2023-11-23 10:11:04");
INSERT INTO medicine__activities VALUES("588","DR RAFIQUE","ORTHO RAZIA","...","PAGECAL/INFADOM","ARM CARIES","13000","1","31/01/2023","2023-11-23 10:12:03","2023-11-23 10:12:03");
INSERT INTO medicine__activities VALUES("589","AURANGZAIB LALA","CIVIL HOSPTL","..","...","CASH","10000","1","07/02/2023","2023-11-23 10:18:05","2023-11-23 10:18:05");
INSERT INTO medicine__activities VALUES("590","DR JAMILA","GYNE SINDH SERVICES","...","PAGECAL/FALNUE","BUY KEY","500","1","07/02/2023","2023-11-23 10:21:58","2023-11-23 10:21:58");
INSERT INTO medicine__activities VALUES("591","...","OKHAI UNIT","..","IROHEME","...","...","1","07/02/2023","2023-11-23 10:23:27","2023-11-23 10:23:27");
INSERT INTO medicine__activities VALUES("592","DR ARIF ALI","UROLOGIST ANKER SERYA","...","CRANDOM","FILES","8000","1","07/02/2023","2023-11-23 10:24:38","2023-11-23 10:24:38");
INSERT INTO medicine__activities VALUES("593","DR ANILA SADAF","GYNE SERVICES HOSPITAL","...","PAGECAL/IROHEME","FILES","5000","1","07/02/2023","2023-11-23 10:34:25","2023-11-23 10:34:25");
INSERT INTO medicine__activities VALUES("594","DR NAZNEEN","GYNE ANKER SERYA","...","FALNUE/IROHEME","BOTTLES & EGGS","2300","1","07/02/2023","2023-11-23 10:36:04","2023-11-23 10:36:04");
INSERT INTO medicine__activities VALUES("595","DR REHMAN","ORTHO JPMC PHARMAX","..","PAGECAL","CASH","5000","1","07/02/2023","2023-11-23 10:36:48","2023-11-23 10:36:48");
INSERT INTO medicine__activities VALUES("596","DR SHAHID","UROLOGIST JPMC","...","CRANDOM","PENEFLIX","8000","1","07/02/2023","2023-11-23 10:37:56","2023-11-23 10:37:56");
INSERT INTO medicine__activities VALUES("597","DR OSAMA","ORTHO JPMC PHARMAX","...","PAGECAL","LUNCH","2000","1","07/02/2023","2023-11-23 10:38:52","2023-11-23 10:38:52");
INSERT INTO medicine__activities VALUES("598","DR ASHFAQ","GENERAL SURGON SINDH GOVT","...","IROHEME/PAGECAL/INFADOM","MOBILE","11000","1","07/02/2023","2023-11-23 10:40:43","2023-11-23 10:40:43");
INSERT INTO medicine__activities VALUES("599","DR BILAL","ORTHO CIVIL PHARMACY","...","PAGECAL","DINNER","2000","1","07/02/2023","2023-11-23 10:41:39","2023-11-23 10:41:39");
INSERT INTO medicine__activities VALUES("600","DR TARIQ","ORTHO CIVIL PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","07/02/2023","2023-11-23 10:42:33","2023-11-23 10:42:33");
INSERT INTO medicine__activities VALUES("601","DR JAGDESH","ORTHO CIVIL PHARMACY","...","PAGECAL","REFRESHMENT","3000","1","07/02/2023","2023-11-23 10:43:43","2023-11-23 10:43:43");
INSERT INTO medicine__activities VALUES("602","...","JPMC GUARDS","...","..","....","1000","1","07/02/2023","2023-11-23 10:44:17","2023-11-23 10:44:17");
INSERT INTO medicine__activities VALUES("603","DR SARFRAZ","ORTHO JPMC PHARMAX","...","PAGECAL","CHAI","600","1","31/01/2023","2023-11-23 10:44:57","2023-11-23 10:44:57");
INSERT INTO medicine__activities VALUES("604","DR ADEEL","ORTHO CIVIL PHARMACY","...","PAGECAL","REFRESHMENT","400","1","07/02/2023","2023-11-23 10:45:59","2023-11-23 10:45:59");
INSERT INTO medicine__activities VALUES("605","DR QASIM","ORTHO JPMC PHARMAX","...","PAGECAL/INFADOM","LUNCH","3500","1","07/02/2023","2023-11-23 10:46:45","2023-11-23 10:46:45");
INSERT INTO medicine__activities VALUES("606","DR ZOHAIB","ORTHO JPMC PHARMAX","...","PAGECAL/INFADOM","DINNER","3000","1","07/02/2023","2023-11-23 10:49:16","2023-11-23 10:49:16");
INSERT INTO medicine__activities VALUES("607","...","SERVICES WARD","...","...","REPAIR","1000","1","07/02/2023","2023-11-23 10:52:07","2023-11-23 10:52:07");
INSERT INTO medicine__activities VALUES("608","...","KAREEM BHAI CIVIL","...","...","MEAT","2500","1","07/02/2023","2023-11-23 10:53:06","2023-11-23 10:53:06");
INSERT INTO medicine__activities VALUES("609","DR SHARJEEL","ORTHO JPMC PHARMAX","...","PAGECAL","LUNCH","2600","1","07/02/2023","2023-11-23 10:55:03","2023-11-23 10:55:03");
INSERT INTO medicine__activities VALUES("610","LAL MALIK","ORTHO JPMC PHARMAX","...","PAGECAL","DINNER","2500","1","07/02/2023","2023-11-23 10:55:46","2023-11-23 10:55:46");
INSERT INTO medicine__activities VALUES("611","DR MOHTASHAM","ORTHO CIVIL PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","07/02/2023","2023-11-23 10:59:34","2023-11-23 10:59:34");
INSERT INTO medicine__activities VALUES("612","DR ABDULLAH","CIVIL PHARMACY","...","PAGECAL","CASH","2000","1","07/02/2023","2023-11-23 11:00:50","2023-11-23 11:00:50");
INSERT INTO medicine__activities VALUES("613","...","RUSINA BAJI BHAKT BHARI","...","...","CASH","3000","1","07/02/2023","2023-11-23 11:01:38","2023-11-23 11:01:38");
INSERT INTO medicine__activities VALUES("614","DR ATIF","CIVIL PHARMAX","...","FALNUE/IROHEME/PAGECAL","...","1000","1","07/02/2023","2023-11-23 11:02:35","2023-11-23 11:02:35");
INSERT INTO medicine__activities VALUES("615","DR SUBHAN","ORTHO JPMC PHARMAX","...","PAGECAL","LUNCH","2500","1","07/02/2023","2023-11-23 11:03:18","2023-11-23 11:03:18");
INSERT INTO medicine__activities VALUES("616","DR BILAL","ORTHO CIVIL PHARMACY","...","PAGECAL","DINNER","3000","1","07/02/2023","2023-11-23 11:03:59","2023-11-23 11:03:59");
INSERT INTO medicine__activities VALUES("617","DR PREM","ORTHO CIVIL PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","07/02/2023","2023-11-23 11:04:42","2023-11-23 11:04:42");
INSERT INTO medicine__activities VALUES("618","DR AGHA WASEEM","ORTHO JPMC PHARMAX","...","PAGECAL","LUNCH","2000","1","07/02/2023","2023-11-23 11:05:24","2023-11-23 11:05:24");
INSERT INTO medicine__activities VALUES("619","...","SINDH SERVICES & CIVIL GYNE","...","...","...","2080","1","07/02/2023","2023-11-23 11:06:44","2023-11-23 11:06:44");
INSERT INTO medicine__activities VALUES("620","...","....","...","...","OFFICE LUNCH","1700","1","07/02/2023","2023-11-23 11:07:09","2023-11-23 11:07:09");
INSERT INTO medicine__activities VALUES("621","...","ALI MEDICAL STORE AZAM BASTI ADJSTMNT","..","...","CASH","5000","1","07/02/2023","2023-11-23 11:07:53","2023-11-23 11:07:53");
INSERT INTO medicine__activities VALUES("622","DR ADEEL","ORTHO CIVIL","...","PAGECAL","REFRESHMENT","1000","1","14/02/2023","2023-11-23 11:15:27","2023-11-23 11:15:27");
INSERT INTO medicine__activities VALUES("623","DR NAZNEEN","GYNE ANKER SERYA","...","IROHEME","EGGS","1800","1","14/02/2023","2023-11-23 11:16:25","2023-11-23 11:16:25");
INSERT INTO medicine__activities VALUES("624","DR SOUGHAT","ORTHO CIVIL PHARMACY","...","PAGECAL","REFRESHMENT","500","1","14/02/2023","2023-11-23 11:17:21","2023-11-23 11:17:21");
INSERT INTO medicine__activities VALUES("625","DR SARFRAZ","JPMC ORTHO","...","PAGECAL","LUNCH","3500","1","14/02/2023","2023-11-23 11:21:03","2023-11-23 11:21:03");
INSERT INTO medicine__activities VALUES("626","DR ZOHAIB","JPMC ORTHO PHARMAX","...","PAGECAL","DINNER","3000","1","14/02/2023","2023-11-23 11:21:49","2023-11-23 11:21:49");
INSERT INTO medicine__activities VALUES("627","DR HUSNAIN","CIVIL ORTHO  CIVIL PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","14/02/2023","2023-11-23 11:24:25","2023-11-23 11:24:25");
INSERT INTO medicine__activities VALUES("628","...","SAJID DR NANZNEEN P.A","...","...","CASH","500","1","14/02/2023","2023-11-23 11:25:27","2023-11-23 11:25:27");
INSERT INTO medicine__activities VALUES("629","...","ASLAM CIVIL PHARMACY","...","...","CASH","2500","1","14/02/2023","2023-11-23 11:26:03","2023-11-23 11:26:03");
INSERT INTO medicine__activities VALUES("630","DR TARIQ","CIVIL ORTHO CIVIL PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","14/02/2023","2023-11-23 11:26:52","2023-11-23 11:26:52");
INSERT INTO medicine__activities VALUES("631","DR TARIQ","CIVIL ORTHO CIVIL PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","14/02/2023","2023-11-23 11:28:12","2023-11-23 11:28:12");
INSERT INTO medicine__activities VALUES("632","LAL MALIK","JPMC ORTHO PHARMAX","...","PAGECAL","DINNER","3000","1","14/02/2023","2023-11-23 11:29:03","2023-11-23 11:29:03");
INSERT INTO medicine__activities VALUES("633","DR NEELAM","SERVICE SHOP AL KOUSER","...","IROHEME/PAGECAL","STAMP","500","1","14/02/2023","2023-11-23 11:29:52","2023-11-23 11:29:52");
INSERT INTO medicine__activities VALUES("634","TIME MEDICOS","DEHLI COLONY","...","...","TISSUE BOX","1700","1","14/02/2023","2023-11-23 11:30:55","2023-11-23 11:30:55");
INSERT INTO medicine__activities VALUES("635","DR BILAL","CIVIL ORTHO  PHARMAX","...","PAGECAL/INFADOM","DINNER","1500","1","14/02/2023","2023-11-23 11:31:56","2023-11-23 11:31:56");
INSERT INTO medicine__activities VALUES("636","DR AGHA WASEEM","JPMC ORTHO PHARMAX","...","PAGECAL","LUNCH","1600","1","14/02/2023","2023-11-23 11:33:17","2023-11-23 11:33:17");
INSERT INTO medicine__activities VALUES("637","DR SALAM","JPMC ORTHO","...","PAGECAL","LUNCH","2000","1","14/02/2023","2023-11-23 11:33:52","2023-11-23 11:33:52");
INSERT INTO medicine__activities VALUES("638","DR PREM CHAND","CIVIL ORTHO CIVIL PHARMACY","...","PAGECAL","DINNER","2000","1","14/02/2023","2023-11-23 11:40:47","2023-11-23 11:40:47");
INSERT INTO medicine__activities VALUES("639","DR MATIULLAH","JPMC ORTHO","...","PAGECAL","LUNCH","3000","1","14/02/2023","2023-11-23 11:42:06","2023-11-23 11:42:06");
INSERT INTO medicine__activities VALUES("640","DR NOMAN","JPMC ORTHO","...","PAGECAL","DINNER","3000","1","14/02/2023","2023-11-23 11:43:02","2023-11-23 11:43:02");
INSERT INTO medicine__activities VALUES("641","DR MOHTASHAM","CIVIL ORTHO PHARMAX","...","PAGECAL","DINNER","2000","1","14/02/2023","2023-11-23 11:43:44","2023-11-23 11:43:44");
INSERT INTO medicine__activities VALUES("642","...","RIAZ BAHE PHARMAX","..","...","OFFICE PAPER","2900","1","14/02/2023","2023-11-23 11:44:27","2023-11-23 11:44:27");
INSERT INTO medicine__activities VALUES("643","...","...","...","...","CASH","5000","1","14/02/2023","2023-11-23 11:44:54","2023-11-23 11:44:54");
INSERT INTO medicine__activities VALUES("644","...","...","...","...","PICNIC LUNCH CASH","6000","1","14/02/2023","2023-11-23 11:45:39","2023-11-23 11:45:39");
INSERT INTO medicine__activities VALUES("645","DR NAZNEEN","GYNE ANKER SERYA","...","IROHEME/FALNUE","CASH","2000","1","14","2023-11-23 11:46:18","2023-11-23 11:46:18");
INSERT INTO medicine__activities VALUES("646","DR NOMAN","JPMC WARD 17 PHARMAX","...","PAGECAL","CASH","5000","1","14/02/2023","2023-11-23 11:47:34","2023-11-23 11:47:34");
INSERT INTO medicine__activities VALUES("647","DR REHMAN","ORTHO JPMC","...","PAGECAL","CASH","5000","1","01/03/2023","2023-11-23 13:26:31","2023-11-23 13:26:31");
INSERT INTO medicine__activities VALUES("648","DR ASIFA","GYNE JPMC PHARMAX","...","FALNEU","DINNER","2500","1","01/03/2023","2023-11-23 13:30:59","2023-11-23 13:30:59");
INSERT INTO medicine__activities VALUES("649","DR BILAL","ORTHO CIVIL PHARMACY &PHARMAX","...","PAGECAL","DINNER","1500","1","01/03/2023","2023-11-23 13:31:42","2023-11-23 13:31:42");
INSERT INTO medicine__activities VALUES("650","....","OPD ORTHO 3","..","...","REFRESHMENT","1000","1","01/03/2023","2023-11-23 13:32:16","2023-11-23 13:32:16");
INSERT INTO medicine__activities VALUES("651","DR SARFRAZ","ORTHO JPMC","..","PAGECAL/INFADOM","LUNCH","3500","1","01/03/2023","2023-11-23 13:33:06","2023-11-23 13:33:06");
INSERT INTO medicine__activities VALUES("652","DR SARFRAZ","ORTHO JPMC PHARMAX","...","PAGECAL/INFADOM","DINNER","3500","1","01/03/2023","2023-11-23 13:34:16","2023-11-23 13:34:16");
INSERT INTO medicine__activities VALUES("653","DR TARIQ","ORTHO CIVIL  PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","01/03/2023","2023-11-23 13:34:58","2023-11-23 13:34:58");
INSERT INTO medicine__activities VALUES("654","...","ORTHO 2 WARD","...","PAGECAL","REFRESHMENT","2000","1","01/03/2023","2023-11-23 13:35:37","2023-11-23 13:35:37");
INSERT INTO medicine__activities VALUES("655","DR NAZNEEN","ANKEL SERYA","...","IROHEME","CHAIRS 4","22000","1","01/03/2023","2023-11-23 13:36:23","2023-11-23 13:36:23");
INSERT INTO medicine__activities VALUES("656","DR SADAM","ORTHO JPMC","...","PAGECAL/INFADOM","DINNER","2000","1","01/03/2023","2023-11-23 13:37:05","2023-11-23 13:37:05");
INSERT INTO medicine__activities VALUES("657","...","CIVIL  WARD 1/2 LED SERVICES","...","..","CASH","600","1","01/03/2023","2023-11-23 13:37:53","2023-11-23 13:37:53");
INSERT INTO medicine__activities VALUES("658","DR SHARJEEL","ORTHO JPMC PHARMAX","...","PAGECAL/INFADOM","LUNCH","3000","1","01/03/2023","2023-11-23 13:38:52","2023-11-23 13:38:52");
INSERT INTO medicine__activities VALUES("659","LAL MALIK","ORTHO JPMC","...","PAGECAL/INFADOM","DINNER","3000","1","01/03/2023","2023-11-23 13:39:50","2023-11-23 13:39:50");
INSERT INTO medicine__activities VALUES("660","DR MOHTASHM","ORTHO CIVIL PHARMACY","...","PAGECAL/INFADOM","DINNER","3000","1","01/03/2023","2023-11-23 13:40:37","2023-11-23 13:40:37");
INSERT INTO medicine__activities VALUES("661","DR HARIS","ORTHO CIVIL PHARMACY","..","PAGECAL","REFRESHMENT","500","1","01/03/2023","2023-11-23 13:41:31","2023-11-23 13:41:31");
INSERT INTO medicine__activities VALUES("662","DR MADIHA","ORTHO JPMC PHARMAX","...","PAGECAL/INFADOM","LUNCH","2500","1","01/03/2023","2023-11-23 13:42:41","2023-11-23 13:42:41");
INSERT INTO medicine__activities VALUES("663","DR NASIR SOMRO","ORTHO JPMC PHARMAX","...","PAGECAL/INFADOM","LUNCH","3000","1","01/03/2023","2023-11-23 13:43:43","2023-11-23 13:43:43");
INSERT INTO medicine__activities VALUES("664","LAL MALIK","ORHO JPMC PHARMAX","...","PAGECAL/INFADOM","DINNER","3000","1","01/03/2023","2023-11-23 13:44:46","2023-11-23 13:44:46");
INSERT INTO medicine__activities VALUES("665","DR AZAM","CIVIL ORHO PHARMACY","...","PAGECAL","REFRESHMENT","500","1","01/03/2023","2023-11-23 13:45:37","2023-11-23 13:45:37");
INSERT INTO medicine__activities VALUES("666","DR NOMAN","JPMC ORHO PHARMAX","...","PAGECAL","LUNCH","3000","1","01/03/2023","2023-11-23 13:46:23","2023-11-23 13:46:23");
INSERT INTO medicine__activities VALUES("667","DR SAQIB","ORTHO JPMC","...","PAGECAL/INFADOM","DINNER","3000","1","01/03/2023","2023-11-23 13:47:02","2023-11-23 13:47:02");
INSERT INTO medicine__activities VALUES("668","DR PREM CHAND","CIVIL ORTHO  PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","01/03/2023","2023-11-23 13:48:37","2023-11-23 13:48:37");
INSERT INTO medicine__activities VALUES("669","DR RAFIQUE","SINDH SERVICES KAUSAR M.A","...","PAGECAL/INFADOM","BOOK","2500","1","01/03/2023","2023-11-23 13:49:39","2023-11-23 13:49:39");
INSERT INTO medicine__activities VALUES("670","DR NAZNEEN","GYNE AL SARYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","01/03/2023","2023-11-23 13:50:24","2023-11-23 13:50:24");
INSERT INTO medicine__activities VALUES("671","DR ZEESHAN","ORTHO  FAIZAN REHMAT","...","PAGECAL/INFADOM","SINY BOUL","12000","1","01/03/2023","2023-11-23 13:51:27","2023-11-23 13:51:27");
INSERT INTO medicine__activities VALUES("672","DR NOMAN","JPMC ORTHO PHARMAX","...","PAGECAL/INFADOM","CASH","5000","1","01/03/2023","2023-11-23 13:52:14","2023-11-23 13:52:14");
INSERT INTO medicine__activities VALUES("673","...","CIVIL OPD","...","...","REFRESHMENT","1000","1","01/03/2023","2023-11-23 13:52:59","2023-11-23 13:55:09");
INSERT INTO medicine__activities VALUES("674","...","JPMC ORTHO DR","...","...","REFRESHMENT","1500","1","01/03/2023","2023-11-23 13:53:38","2023-11-23 13:53:38");
INSERT INTO medicine__activities VALUES("675","DR MATIULLAH","ORTHO JPMC PHARMAX","...","PAGECAL/INFADOM","CHAI","600","1","13/03/2023","2023-11-23 14:11:00","2023-11-23 14:11:00");
INSERT INTO medicine__activities VALUES("676","DR JAEEL","ORTHO CIVIL PHARMACY","...","PAGECAL/INFADOM","REFRESHMENT","1300","1","13/03/2023","2023-11-23 14:11:56","2023-11-23 14:11:56");
INSERT INTO medicine__activities VALUES("677","DR SARFRAZ","ORTHO JPMC PHARMAX","...","PAGECAL/INFADOM","LUNCH","3000","1","13/03/2023","2023-11-23 14:14:39","2023-11-23 14:14:39");
INSERT INTO medicine__activities VALUES("678","DR QASIM","ORTHO JPMC +NOMAN+BISMILLAH","...","PAGECAL/INFADOM","DINNER","3500","1","13/03/2023","2023-11-23 14:15:22","2023-11-23 14:15:22");
INSERT INTO medicine__activities VALUES("679","DR TARIQ","ORTHO CIVIL PHARMACY","..","PAGECAL/INFADOM","DINNER","2000","1","13/03/2023","2023-11-23 14:16:05","2023-11-23 14:16:05");
INSERT INTO medicine__activities VALUES("680","DR TAHIR","ORTHO CIVIL PHARMAX","...","PAGECAL","REFRESHMENT","1000","1","13/03/2023","2023-11-23 14:16:46","2023-11-23 14:16:46");
INSERT INTO medicine__activities VALUES("681","DR BILAL","ORTHO CIVIL","...","PAGECAL/INFADOM","DINNER","1500","1","13/03/2023","2023-11-23 14:17:29","2023-11-23 14:17:29");
INSERT INTO medicine__activities VALUES("682","DR YASIR","ORANGZAIB HOSP PHARMACY","...","PAGECAL/INFADOM","PRPTUSE","2900","1","13/03/2023","2023-11-23 14:19:59","2023-11-23 14:19:59");
INSERT INTO medicine__activities VALUES("683","DR SARFRAZ","JPMC ORTHO PHARMAX","...","PAGECAL","CHAI","500","1","13/03/2023","2023-11-23 14:21:26","2023-11-23 14:21:26");
INSERT INTO medicine__activities VALUES("684","DR AGHA","JPMC ORTHO  PHARMAX","...","PAGECAL","REFRESHMENT","1100","1","13/03/2023","2023-11-23 14:22:54","2023-11-23 14:22:54");
INSERT INTO medicine__activities VALUES("685","...","JPMC  GUARD","...","...","CASH","1000","1","13/03/2023","2023-11-23 14:24:02","2023-11-23 14:24:02");
INSERT INTO medicine__activities VALUES("686","...","TIME MEDICOS","..","...","TISSUE BOX","1000","1","13/03/2023","2023-11-23 14:25:24","2023-11-23 14:25:24");
INSERT INTO medicine__activities VALUES("687","DR SHARJEEL","JPMC ORTHO PHARMAX","...","PAGECAL/INFADOM","LUNCH","3000","1","13/03/2023","2023-11-23 14:26:57","2023-11-23 14:26:57");
INSERT INTO medicine__activities VALUES("688","LALA MALIK","JPMC ORTHO PHARMAX","...","PAGECAL/INFADOM","DINNER","3000","1","13/03/2023","2023-11-23 14:28:36","2023-11-23 14:28:36");
INSERT INTO medicine__activities VALUES("689","DR HASNAIN","CIVIL ORTHO PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","13/03/2023","2023-11-23 14:29:15","2023-11-23 14:29:15");
INSERT INTO medicine__activities VALUES("690","DR RAZIA","ISM PHARMACY","...","PAGECAL/FALNUE","LOTION","400","1","13/03/2023","2023-11-23 14:35:02","2023-11-23 14:35:02");
INSERT INTO medicine__activities VALUES("691","DR HUMA","SINDH SERVICES  AL KOUSAR MEDICO","...","IROHEME/PAGECAL/INFADOM","KITCHEN CLEANER","1000","1","13/03/2023","2023-11-23 14:38:13","2023-11-23 14:38:13");
INSERT INTO medicine__activities VALUES("692","DR SADAM","JPMC ORTHO PHARMAX","...","PAGECAL","LUNCH","2000","1","13/03/2023","2023-11-23 14:39:31","2023-11-23 14:39:31");
INSERT INTO medicine__activities VALUES("693","DR AGHA","JPMC ORTHO PHARMAX","...","PAGECAL","LUNCH","2200","1","13/03/2023","2023-11-23 14:40:20","2023-11-23 14:40:20");
INSERT INTO medicine__activities VALUES("694","DR AGHA","JPMC ORTHO PHARMAX","...","PAGECAL","LUNCH","2200","1","13/03/2023","2023-11-23 14:44:35","2023-11-23 14:44:35");
INSERT INTO medicine__activities VALUES("695","DR ATIF","CIVIL PHARMAX","...","FALNUE/IROHEME/PAGECAL","CASH","1000","1","13/03/2023","2023-11-23 14:45:29","2023-11-23 14:45:29");
INSERT INTO medicine__activities VALUES("696","DR JAMAL NASIR","JPMC ORTHO PHARMAX","...","PAGECAL/INFADOM","LUNCH","3000","1","13/03/2023","2023-11-23 14:46:18","2023-11-23 14:46:18");
INSERT INTO medicine__activities VALUES("697","DR NOMAN","JPMC PHARMAX","...","PAGECAL/INFADOM","DINNER","3000","1","13/03/2023","2023-11-23 14:46:54","2023-11-23 14:46:54");
INSERT INTO medicine__activities VALUES("698","DR MOHTASHAM","ORTHO CIVIL PHARMACY","...","PAGECAL","DINNER","2000","1","13/03/2023","2023-11-23 14:47:31","2023-11-23 14:47:31");
INSERT INTO medicine__activities VALUES("699","DR NAZNEEN","ANKEL SERYA","...","IROHEME/PAGECAL/FALNUE","EGGS","1500","1","13/03/2023","2023-11-23 14:48:46","2023-11-23 14:48:46");
INSERT INTO medicine__activities VALUES("700","DR JAGDESH","CIVIL ORTHO","...","PAGECAL","BRTHDY ARANGMNT","3000","1","13/03/2023","2023-11-23 14:50:15","2023-11-23 14:50:15");
INSERT INTO medicine__activities VALUES("701","DR KHALIL","CIVIL ORTHO  AL KOUSAER PHARMACY","...","PAGECAL","BRTHDY ARANGMNT","2500","1","13/03/2023","2023-11-23 14:59:34","2023-11-23 14:59:34");
INSERT INTO medicine__activities VALUES("702","DR REHMAN","JPMC ORTHO PHARMAX","...","PAGECAL","CASH","5000","1","13/03/2023","2023-11-23 15:00:34","2023-11-23 15:00:34");
INSERT INTO medicine__activities VALUES("703","DR WAQAS","ORTHO CIVIL","...","PAGECAL","CASH","5000","1","13/03/2023","2023-11-24 09:55:31","2023-11-24 09:55:31");
INSERT INTO medicine__activities VALUES("704","DR TAHMOOR","ORTHO CIVIL ABDULLAH PHARMACY","...","PAGECAL","CASH","5000","1","13/03/2023","2023-11-24 09:56:55","2023-11-24 09:56:55");
INSERT INTO medicine__activities VALUES("705","MAMA ANWER","CIVIL","..","...","PAIN KILLER JEL","800","1","13/03/2023","2023-11-24 09:57:45","2023-11-24 09:57:45");
INSERT INTO medicine__activities VALUES("706","DR NOMAN","ORTHO JPMC PHARMAX","...","PAGECAL & INFADOM","CASH","5000","1","13/03/2023","2023-11-24 09:58:36","2023-11-24 09:58:36");
INSERT INTO medicine__activities VALUES("707","DR ASMA SANI","SAFORA GARH ASMA PHARMACY","...","IROHEME/CRANDOM","WASHINING MACHINE","10000","1","13/03/2023","2023-11-24 10:01:13","2023-11-24 10:01:13");
INSERT INTO medicine__activities VALUES("708","..","CIVIL OPD SERVICES","...","...","GENERAL ACTIVITY","1000","1","13/03/2023","2023-11-24 10:02:27","2023-11-24 10:02:27");
INSERT INTO medicine__activities VALUES("709","...","CIVIL ORTHO WARD 2",".","PAGECAL","LED REPAIRING","4500","1","13/03/2023","2023-11-24 10:09:13","2023-11-24 10:09:13");
INSERT INTO medicine__activities VALUES("710","DR SARFARAZ","ORTHO JPMC PHARMAX","...","PAGECAL","REFRESHMENT","1000","1","13/03/2023","2023-11-24 10:11:12","2023-11-24 10:11:12");
INSERT INTO medicine__activities VALUES("711","DR QASIM","ORTHO JPMC PHARMAX","...","PAGECAL & INFADOM","LUNCH/CAKE","4400","1","13/03/2023","2023-11-24 10:12:08","2023-11-24 10:12:08");
INSERT INTO medicine__activities VALUES("712","DR TARIQ","ORTHO CIVIL PHARMACY","...","PAGECAL & INFADOM","DINNER","2000","1","13/03/2023","2023-11-24 10:12:51","2023-11-24 10:12:51");
INSERT INTO medicine__activities VALUES("713","DR ZOHAIB","ORTHO CIVIL PHARMAX","...","PAGECAL & INFADOM","DINNER","3000","1","13/03/2023","2023-11-24 10:13:40","2023-11-24 10:13:40");
INSERT INTO medicine__activities VALUES("714","DR HASIB","CIVIL OPD PHARMACY","...","PAGECAL","B-DAY CAKE","1800","1","13/03/2023","2023-11-24 10:14:58","2023-11-24 10:14:58");
INSERT INTO medicine__activities VALUES("715","DR ATIF","CIVIL PHARMAX","...","FALNUE/IROHEME/PAGECAL","....","1000","1","13/03/2023","2023-11-24 10:15:47","2023-11-24 10:15:47");
INSERT INTO medicine__activities VALUES("716","DR NASIR SOMROO","ORTHO JPMC","...","PAGECAL","LUNCH","3000","1","13/03/2023","2023-11-24 10:16:29","2023-11-24 10:16:29");
INSERT INTO medicine__activities VALUES("717","CAL","ORTHO JPMC PHARMAX","...","PAGECAL & INFADOM","DINNER","3000","1","13/03/2023","2023-11-24 10:17:14","2023-11-24 10:17:14");
INSERT INTO medicine__activities VALUES("718","DR WAQAR","ORTHO CIVIL PARAGON","..","PAGECAL","DINNER","1500","1","13/03/2023","2023-11-24 10:17:57","2023-11-24 10:17:57");
INSERT INTO medicine__activities VALUES("719","DR AGHA WASEEM","ORTHO JPMC MALIK","...","PAGECAL","LUNCH","1500","1","13/03/2023","2023-11-24 10:18:48","2023-11-24 10:18:48");
INSERT INTO medicine__activities VALUES("720","DR NAZNEEN","ANKER SERYA","...","IROHEME./PAGECAL","EGGS","2200","1","13/03/2023","2023-11-24 10:19:51","2023-11-24 10:19:51");
INSERT INTO medicine__activities VALUES("721","AURANZAIB LALA","CIVIL","...","..","CASH","10000","1","27/03/2023","2023-11-24 11:22:44","2023-11-24 11:22:44");
INSERT INTO medicine__activities VALUES("722","DR QAMAR ABBAS","GYNE MOTHER CARE","...","FALNUE/IROHEME/PAGECAL","CURTAINS","5000","1","27/03/2023","2023-11-24 11:23:57","2023-11-24 11:23:57");
INSERT INTO medicine__activities VALUES("723","DR TAHMOOR","CIVIL ORTHO","CIVIL PHARMACY","PAGECAL & INFADOM","IFTARI","1500","1","27/03/2023","2023-11-24 11:24:54","2023-11-24 11:24:54");
INSERT INTO medicine__activities VALUES("724","DR QASIM","JPMC ORTHO  PHARMAX","..","PAGECAL","IFTARI CAKE","3500","1","27/03/2023","2023-11-24 11:26:58","2023-11-24 11:26:58");
INSERT INTO medicine__activities VALUES("725","DR SARFARAZ","JPMC ORTHO  PHARMAX","...","PAGECAL","DINNER CAKE","4500","1","27/03/2023","2023-11-24 11:27:56","2023-11-24 11:27:56");
INSERT INTO medicine__activities VALUES("726","DR TARIQ","CIVIL ORTHO PHARMACY","..","PAGECAL & INFADOM","DINNER","2000","1","27/03/2023","2023-11-24 11:28:49","2023-11-24 11:28:49");
INSERT INTO medicine__activities VALUES("727","DR HABIB","CIVIL OPD PHARMACY","...","PAGECAL","BOOK","2000","1","27/03/2023","2023-11-24 11:29:45","2023-11-24 11:29:45");
INSERT INTO medicine__activities VALUES("728","DR ABDULLAH","M-S  CIVIL","...","IROHEME./PAGECAL","ADJSTMNT","5000","1","27/03/2023","2023-11-24 11:30:37","2023-11-24 11:30:37");
INSERT INTO medicine__activities VALUES("729","DR SADIQA","M JUMMA PHARMACY","...","FALNEU.. IROHEME...PAGECAL","FILES CARD","5000","1","27/03/2023","2023-11-24 11:31:56","2023-11-24 11:31:56");
INSERT INTO medicine__activities VALUES("730","ASLAM SADDAM","FATIMA BAI PHARMACY","...","INFADOM/IROHEME","IFTTAR BUFFET","15000","1","27/03/2023","2023-11-24 11:34:13","2023-11-24 11:34:13");
INSERT INTO medicine__activities VALUES("731","DR ASIF","CIVIL ORTHO CIVIL PHARMACY","...","IROHEME./PAGECAL","SETHETHOSCOPE","3200","1","27/03/2023","2023-11-24 11:35:28","2023-11-24 11:35:28");
INSERT INTO medicine__activities VALUES("732","AGHA WASEEM","JPMC ORTHO PHARMAX","...","PAGECAL","DINNER","1500","1","27/03/2023","2023-11-24 11:36:06","2023-11-24 11:36:06");
INSERT INTO medicine__activities VALUES("733","DR NAZNEEN","ANKERL SERYA","...","FALNEU.. IROHEME...PAGECAL","EGGS","1500","1","27/03/2023","2023-11-24 11:36:54","2023-11-24 11:36:54");
INSERT INTO medicine__activities VALUES("734","DR YASIR","CIVIL PHARMAX","...","P","CASH","2500","1","04/04/2023","2023-11-24 11:40:19","2023-11-24 11:40:19");
INSERT INTO medicine__activities VALUES("735","TIME MEDICOS","B.H.Y DELHI COLONY","...","FALNUE/IROHEME/PAGECAL","IISHU","2000","1","04/04/2023","2023-11-24 11:41:46","2023-11-24 11:41:46");
INSERT INTO medicine__activities VALUES("736","DR SUBHAN","JPMC ORTHO PHARMAX","...","PAGECAL","IFTARI","3000","1","04/04/2023","2023-11-24 11:43:10","2023-11-24 11:43:10");
INSERT INTO medicine__activities VALUES("737","DR TARIQ","CIVIL ORTHO CIVIL PHARMACY","...","PAGECAL","IFTARI","2000","1","04/04/2023","2023-11-24 11:44:14","2023-11-24 11:44:14");
INSERT INTO medicine__activities VALUES("738","DR SARFRAZ","JPMC ORTHO PHARMAX","....","PAGECAL","DINNER","3500","1","04/04/2023","2023-11-24 11:45:08","2023-11-24 11:45:08");
INSERT INTO medicine__activities VALUES("739","CIVIL GUARDS","...","...","...","CASH","300","1","04/04/2023","2023-11-24 11:45:52","2023-11-24 11:45:52");
INSERT INTO medicine__activities VALUES("740","DR BILAL","CIVIL ORTHO PHRMAX","...","IROHEME./PAGECAL","DINNER","1500","1","04/04/2023","2023-11-24 11:46:35","2023-11-24 11:46:35");
INSERT INTO medicine__activities VALUES("741","DR MATIULLAH","JPMC ORTHO  PHARMAX","...","PAGECAL","DINNER","2500","1","04/04/2023","2023-11-24 11:47:21","2023-11-24 11:47:21");
INSERT INTO medicine__activities VALUES("742","DR ASIF","CIVIL ORTHO GOLDEN","...","PAGECAL","SETHOSCOPE","2000","1","04/04/2023","2023-11-24 11:53:07","2023-11-24 11:53:07");
INSERT INTO medicine__activities VALUES("743","DR NAZNEEN","ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS SUGAR CANE","2300","1","04/04/2023","2023-11-24 11:53:56","2023-11-24 11:53:56");
INSERT INTO medicine__activities VALUES("744","DR MOHATASHAM","CIVIL ORTHO PHARMAX","..","PAGECAL & INFADOM","DINNER","2000","1","04/04/2023","2023-11-24 11:58:15","2023-11-24 11:58:15");
INSERT INTO medicine__activities VALUES("745","DR NASIR SOMRO","JPMC ORTHO","...","PAGECAL","CASH","3000","1","04/04/2023","2023-11-24 11:59:00","2023-11-24 11:59:00");
INSERT INTO medicine__activities VALUES("746","ASIF","CIVIL PHARMAX","...","IROHEME./PAGECAL","CASH","1000","1","04/04/2023","2023-11-24 11:59:55","2023-11-24 11:59:55");
INSERT INTO medicine__activities VALUES("747","ZAHEER + WAHEED","CIVIL CHOWKI","...","...","CASH","2000","1","04/04/2023","2023-11-24 12:22:41","2023-11-24 12:22:41");
INSERT INTO medicine__activities VALUES("748","DR AZAM","CIVIL ORTHO PHARMACY","....","PAGECAL & INFADOM","IFTAR","2000","1","04/04/2023","2023-11-24 12:23:46","2023-11-24 12:23:46");
INSERT INTO medicine__activities VALUES("749","RIAZ BAHE","PHARMAX","...","...","CASH","9500","1","04/04/2023","2023-11-24 12:24:55","2023-11-24 12:24:55");
INSERT INTO medicine__activities VALUES("750","DR MANAN","CIVIL ORTHO PHARMACY","...","PAGECAL","DINNER","2000","1","04/04/2023","2023-11-24 12:25:55","2023-11-24 12:25:55");
INSERT INTO medicine__activities VALUES("751","DR SAQIB","JPMC ORTHO  PHARMAX","...","PAGECAL & INFADOM","IFTAR","3000","1","04/04/2023","2023-11-24 12:26:36","2023-11-24 12:26:36");
INSERT INTO medicine__activities VALUES("752","DR WALIULLAH","JPMC ORTHO  PHARMAX","...","PAGECAL","DINNER","3000","1","04/04/2023","2023-11-24 12:27:33","2023-11-24 12:27:33");
INSERT INTO medicine__activities VALUES("753","DR PRIYA","CIVIL GYNE PHARMAX","...","IROHEME","BOOK","800","1","04/04/2023","2023-11-24 12:28:13","2023-11-24 12:28:13");
INSERT INTO medicine__activities VALUES("754","DR SADAF","CIVIL GYNE PHARMACY","...","IROHEME","BOOK","1500","1","04/04/2023","2023-11-24 12:29:08","2023-11-24 12:29:08");
INSERT INTO medicine__activities VALUES("755","DR WARISHA","CIVIL GYNE PARAGON","...","PAGECAL & INFADOM","BOOK","2500","1","04/04/2023","2023-11-24 12:29:46","2023-11-24 12:29:46");
INSERT INTO medicine__activities VALUES("756","DR MAIRAJ","CIVIL GYNE PARAGON","...","PAGECAL & INFADOM","REGISTRATION","8000","1","04/04/2023","2023-11-24 12:30:33","2023-11-24 12:30:33");
INSERT INTO medicine__activities VALUES("757","DR NAZNEEN","GYNE ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","750","1","11/04/2023","2023-11-24 12:36:48","2023-11-24 12:36:48");
INSERT INTO medicine__activities VALUES("758","DR WAQAS","CIVIL ORTHO CIVIL PHARMACY","...","PAGECAL","REGISTRATION","8000","1","11/04/2023","2023-11-24 12:37:45","2023-11-24 12:37:45");
INSERT INTO medicine__activities VALUES("759","DR BILAL","CIVIL ORTHO PARAGON","...","PAGECAL & INFADOM","DINNER","2000","1","11/04/2023","2023-11-24 12:38:47","2023-11-24 12:38:47");
INSERT INTO medicine__activities VALUES("760","DR BILAL","CIVIL ORTHO PARAGON","...","PAGECAL & INFADOM","DINNER","2000","1","11/04/2023","2023-11-24 12:40:16","2023-11-24 12:40:16");
INSERT INTO medicine__activities VALUES("761","...","SAIN PHARMACY","...","PAGECAL","CASH","2500","1","11/04/2023","2023-11-24 12:41:04","2023-11-24 12:41:04");
INSERT INTO medicine__activities VALUES("762","DR ZOHAIB","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","IFTAR","3000","1","11/04/2023","2023-11-24 12:42:02","2023-11-24 12:42:02");
INSERT INTO medicine__activities VALUES("763","DR SARFRAZ","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","DINNER","3500","1","11/04/2023","2023-11-24 12:42:49","2023-11-24 12:42:49");
INSERT INTO medicine__activities VALUES("764","DR PREM CHAND","CIVIL ORTHO PHARMACY","...","PAGECAL & INFADOM","DINNER","2000","1","11/04/2023","2023-11-24 12:44:27","2023-11-24 12:44:27");
INSERT INTO medicine__activities VALUES("765","DR SHAZIA","GYNE N.B.H.H","..","IROHEME./PAGECAL","CASH","15000","1","11/04/2023","2023-11-24 12:45:30","2023-11-24 12:45:30");
INSERT INTO medicine__activities VALUES("766","DR SAJJAD","CIVIL ORTHO PHARMAX","..","PAGECAL","DINNER","1100","1","11/04/2023","2023-11-24 12:46:24","2023-11-24 12:46:24");
INSERT INTO medicine__activities VALUES("767","DR LAL","JPMC ORTHO PHARMAX","...","PAGECAL","IFTAR","3000","1","11/04/2023","2023-11-24 12:47:36","2023-11-24 12:47:36");
INSERT INTO medicine__activities VALUES("768","DR SHARJEEL","JPMC ORTHO PHARMAX","...","PAGECAL","DINNER","3000","1","11/04/2023","2023-11-24 12:48:14","2023-11-24 12:48:14");
INSERT INTO medicine__activities VALUES("769","DR TARIQ","CIVIL ORTHO PHARMAX","...","PAGECAL & INFADOM","DINNER","2000","1","11/04/2023","2023-11-24 12:49:51","2023-11-24 12:49:51");
INSERT INTO medicine__activities VALUES("770","DR MATIULLHA","JPMC ORTHO PHARMAX","...","PAGECAL","IFTAR","3000","1","11/04/2023","2023-11-24 12:50:32","2023-11-24 12:50:32");
INSERT INTO medicine__activities VALUES("771","DR WALIULLAH","JPMC ORTHO PHARMAX","...","PAGECAL","DINNER","3000","1","11/04/2023","2023-11-24 12:51:08","2023-11-24 12:51:08");
INSERT INTO medicine__activities VALUES("772","DR NAZNEEN","GYNE ANKERL SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","11/04/2023","2023-11-24 12:52:21","2023-11-24 12:52:21");
INSERT INTO medicine__activities VALUES("773","DR WAQAR","CIVIL ORTHO PHARMAX","...","PAGECAL","DINNER","2000","1","11/04/2023","2023-11-24 12:53:33","2023-11-24 12:53:33");
INSERT INTO medicine__activities VALUES("774","DR SAMINA RAJAL","GYNE SIMS MANAN","...","PAGECAL/HAIRPLEA","SUITS/PURSE","8500","1","11/04/2023","2023-11-24 12:54:53","2023-11-24 12:54:53");
INSERT INTO medicine__activities VALUES("775","DR AZAM","CIVIL ORTHO GOLDEN","...","PAGECAL","IFTAR","1600","1","11/04/2023","2023-11-24 12:56:28","2023-11-24 12:56:28");
INSERT INTO medicine__activities VALUES("776","...","KAREEM BAHE SECURITY","...","...","CASH","3000","1","11/04/2023","2023-11-24 12:57:15","2023-11-24 12:57:15");
INSERT INTO medicine__activities VALUES("777","ALI HAIDER","JPMC ORTHO  MALIK  PHARMAX","...","PAGECAL","BOOK","1500","1","11/04/2023","2023-11-24 12:58:14","2023-11-24 12:58:14");
INSERT INTO medicine__activities VALUES("778","DR JAMILA","M JUMMA OKHAI PHARMACY","...","PAGECAL/FALNEU","SUIT","7670","1","19/04/2023","2023-11-24 14:38:50","2023-11-24 14:38:50");
INSERT INTO medicine__activities VALUES("779","DR SARFRAZ","JPMC ORTHO PHARMAX","...","IROHEME./PAGECAL","IFTAAR","3000","1","19/04/2023","2023-11-24 14:40:06","2023-11-24 14:40:06");
INSERT INTO medicine__activities VALUES("780","DR QASIM","JPMC ORTHO  PHARMAX","...","PAGECAL","DINNER","3500","1","19/04/2023","2023-11-24 14:41:13","2023-11-24 14:41:13");
INSERT INTO medicine__activities VALUES("781","DR SUBHAN","JPMC ORTHO PHARMAX","...","INFADOM","LUNCH","3000","1","19/04/2023","2023-11-24 14:41:56","2023-11-24 14:41:56");
INSERT INTO medicine__activities VALUES("782","DR SUBHAN","JPMC ORTHO AM +PHARMAX","....","PAGECAL","LUNCH","3000","1","19/04/2023","2023-11-24 14:43:13","2023-11-24 14:43:13");
INSERT INTO medicine__activities VALUES("783","DR QASIM","JPMC ORTHO PHARMAX","...","PAGECAL","LUNCH","3000","1","19/04/2023","2023-11-24 14:44:33","2023-11-24 14:44:33");
INSERT INTO medicine__activities VALUES("784","DR MOHTASHM","CIVIL ORTHO PHARMACY","...","PAGECAL & INFADOM","DINNER","3000","1","19/04/2023","2023-11-24 14:45:24","2023-11-24 14:45:24");
INSERT INTO medicine__activities VALUES("785","DR PREM CHAND","CIVIL ORTHO PHARMACY","...","PAGECAL & INFADOM","DINNER","2000","1","19/04/2023","2023-11-24 14:46:12","2023-11-24 14:46:12");
INSERT INTO medicine__activities VALUES("786","DR NELOPHER","CIVIL GYNE PHARMACY","...","IROHEME...FALNEU...","IFTAAR","2500","1","19/04/2023","2023-11-24 14:47:12","2023-11-24 14:47:12");
INSERT INTO medicine__activities VALUES("787","DR NAZNEEN","GYNE ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","560","1","19/04/2023","2023-11-24 14:48:04","2023-11-24 14:48:04");
INSERT INTO medicine__activities VALUES("788","DR TAHMOOR","CIVIL ORTHO PHARMACY","...","PAGECAL & INFADOM","IFTAR","2500","1","19/04/2023","2023-11-24 14:49:03","2023-11-24 14:49:03");
INSERT INTO medicine__activities VALUES("789","DR SHARJEEL","JPMC ORTHO PHARMAX","...","PAGECAL","3000","3000","1","19/04/2023","2023-11-24 14:49:50","2023-11-24 14:49:50");
INSERT INTO medicine__activities VALUES("790","DR RIAZ BAHE","PHARMAX","...","...","CASH","5000","1","19/04/2023","2023-11-24 14:50:30","2023-11-24 14:50:30");
INSERT INTO medicine__activities VALUES("791","DR ZOHAIB","JPMC  ORTHO PHARMAX","...","PAGECAL & INFADOM","DINNER","3000","1","24/04/2023","2023-11-24 15:04:44","2023-11-24 15:04:44");
INSERT INTO medicine__activities VALUES("792","DR KHATIJA","TIBRI HOSPITAL","...","PAGECAL","RENT CAR","12000","1","24/04/2023","2023-11-24 15:07:26","2023-11-24 15:07:26");
INSERT INTO medicine__activities VALUES("793","DR JAGDESH","ORTHO CIVIL PHARMACY","...","PAGECAL","REFRESHMENT","1500","1","24/04/2023","2023-11-24 15:08:45","2023-11-24 15:08:45");
INSERT INTO medicine__activities VALUES("794","DR ZOHAIB","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","LUNCH","3500","1","24/04/2023","2023-11-24 15:09:46","2023-11-24 15:09:46");
INSERT INTO medicine__activities VALUES("795","DR LAL","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","DINNER","3000","1","24/04/2023","2023-11-24 15:10:50","2023-11-24 15:10:50");
INSERT INTO medicine__activities VALUES("796","DR AURANGAZAIB LALA","CIVIL HOSPITAL","...","...","CASH","5000","1","24/04/2023","2023-11-24 15:12:29","2023-11-24 15:12:29");
INSERT INTO medicine__activities VALUES("797","DR NAZNEEN","ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","24/04/2023","2023-11-24 15:13:29","2023-11-24 15:13:29");
INSERT INTO medicine__activities VALUES("798","DR MOHATASHAM","CIVIL ORTHO PHARMACY","...","PAGECAL & INFADOM","DINNER","2000","1","24/04/2023","2023-11-24 15:14:34","2023-11-24 15:14:34");
INSERT INTO medicine__activities VALUES("799","DR ADEEL","CIVIL ORTHO GOLDEN","...","PAGECAL","REFRESHMENT","1850","1","24/04/2023","2023-11-24 15:15:25","2023-11-24 15:15:25");
INSERT INTO medicine__activities VALUES("800","DR SAJJAD","CIVIL ORTHO PHARMACY","...","PAGECAL & INFADOM","DINNER","2000","1","24/04/2023","2023-11-24 15:16:12","2023-11-24 15:16:12");
INSERT INTO medicine__activities VALUES("801","DR LAL","JPMC ORTHO","...","PAGECAL","LUNCH","3500","1","24/04/2023","2023-11-24 15:17:01","2023-11-24 15:17:01");
INSERT INTO medicine__activities VALUES("802","DR TARIQ","CIVIL ORTHO PHARMACY","...","PAGECAL & INFADOM","DINNER","2000","1","24/04/2023","2023-11-24 15:17:46","2023-11-24 15:17:46");
INSERT INTO medicine__activities VALUES("803","DR QAMAR","GYNE MOTHER CARE","...","FALNUE/IROHEME/PAGECAL","CURTAINS","10000","1","24/04/2023","2023-11-24 15:18:36","2023-11-24 15:18:36");
INSERT INTO medicine__activities VALUES("804","DR ASIF","PHARMAX CIVIL","...","FALNUE/IROHEME/PAGECAL","CASH","1000","1","24/04/2023","2023-11-24 15:19:16","2023-11-24 15:19:16");
INSERT INTO medicine__activities VALUES("805","DR RAHEEM SHAH","JPMC PHARMAX","...","PAGECAL & FALNEU","CASH","5000","1","01/05/2023","2023-11-24 15:25:21","2023-11-24 15:25:21");
INSERT INTO medicine__activities VALUES("806","DR SHARJEEL","JPMC ORTHO MALIK PHARMAX","...","PAGECAL & INFADOM","LUNCH","4000","1","01/05/2023","2023-11-24 15:26:19","2023-11-24 15:26:19");
INSERT INTO medicine__activities VALUES("807","DR RAFIQUE","SERVICES ORTHO  KAUSER","...","PAGECAL & INFADOM","MOVIE TCKTS","2000","1","01/05/2023","2023-11-24 15:27:37","2023-11-24 15:27:37");
INSERT INTO medicine__activities VALUES("808","DR HASAN","JPMC ORTHO PHARMAX","...","PAGECAL","DINNER","3000","1","01/05/2023","2023-11-24 15:46:12","2023-11-24 15:46:12");
INSERT INTO medicine__activities VALUES("809","DR HUSSAIN","CIVIL ORTHO PHARMACY","...","PAGECAL","DINNER","1000","1","01/05/2023","2023-11-24 15:47:23","2023-11-24 15:47:23");
INSERT INTO medicine__activities VALUES("810","RAIZ&HASEEB","OPD","...","..","REFRESHMENT","1500","1","01/05/2023","2023-11-24 15:48:26","2023-11-24 15:48:26");
INSERT INTO medicine__activities VALUES("811","DR MANAN","ORTHO CIVIL PARAGON",".","PAGECAL & INFADOM","REGISTRATION","5000","1","01/05/2023","2023-11-24 15:49:27","2023-11-24 15:49:27");
INSERT INTO medicine__activities VALUES("812","DR TARIQ","ORTHO CIVIL PHARMACY","...","FALNEU..PAGECALL.","REGISTRATION","5000","1","01/05/2023","2023-11-24 15:51:21","2023-11-24 15:51:21");
INSERT INTO medicine__activities VALUES("813","DR ALI","CIVIL ORTHO GOLDEN","...","PAGECAL","2000","2000","1","01/05/2023","2023-11-24 15:52:12","2023-11-24 15:52:12");
INSERT INTO medicine__activities VALUES("814","DR MALIHA","JPMC ORTHO PHARMACY","..","PAGECAL & INFADOM","BOOK","8000","1","01/05/2023","2023-11-24 15:53:21","2023-11-24 15:53:21");
INSERT INTO medicine__activities VALUES("815","DR WAQAS","CIVIL ORTHO PHARMACY","...","PAGECAL & INFADOM","DINNER","1000","1","01/05/2023","2023-11-24 15:54:22","2023-11-24 15:54:22");
INSERT INTO medicine__activities VALUES("816","DR NAZNEEN","GYNE ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","01/05/2023","2023-11-24 15:55:45","2023-11-24 15:55:45");
INSERT INTO medicine__activities VALUES("817","DR TARIQ","CIVIL ORTHO PHARMACY","...","PAGECAL & INFADOM","DINNER","2000","1","01/05/2023","2023-11-24 15:56:38","2023-11-24 15:56:38");
INSERT INTO medicine__activities VALUES("818","DR SARFRAZ","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","BOOK","1700","1","01/05/2023","2023-11-24 15:57:50","2023-11-24 15:57:50");
INSERT INTO medicine__activities VALUES("819","DR MATIULLAH","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","LUNCH","3500","1","01/05/2023","2023-11-24 15:58:44","2023-11-24 15:58:44");
INSERT INTO medicine__activities VALUES("820","DR WALIULLAH","JPMC ORTHO MALIK","...","PAGECAL & INFADOM","DINNER","2500","1","01/05/2023","2023-11-24 15:59:28","2023-11-24 15:59:28");
INSERT INTO medicine__activities VALUES("821","DR SAJJAD","CIVIL ORTHO PHARMACY","...","IROHEME./PAGECAL","DINNER","1600","1","01/05/2023","2023-11-24 16:00:18","2023-11-24 16:00:18");
INSERT INTO medicine__activities VALUES("822","...","CIVIL GYNE OPD","...","..","...","1500","1","01/05/2023","2023-11-24 16:01:02","2023-11-24 16:01:02");
INSERT INTO medicine__activities VALUES("823","DR JAGDESH","ORTHO","...","...","REFRESHMENT","500","1","01/05/2023","2023-11-24 16:01:45","2023-11-24 16:01:45");
INSERT INTO medicine__activities VALUES("824","DR SARFRAZ","JPMC ORTHO MALIK","...","PAGECAL & INFADOM","LUNCH","4000","1","01/05/2023","2023-11-24 16:02:39","2023-11-24 16:02:39");
INSERT INTO medicine__activities VALUES("825","DR ZOHAIB","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","DINNER","3000","1","01/05/2023","2023-11-24 16:03:20","2023-11-24 16:03:20");
INSERT INTO medicine__activities VALUES("826","DR ASIF","CIVIL ORTHO PHARMAX","...","PAGECAL","DINNER","2000","1","01/05/2023","2023-11-24 16:04:01","2023-11-24 16:04:01");
INSERT INTO medicine__activities VALUES("827","DR SHARJEEL","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","LUNCH","3000","1","01/05/2023","2023-11-24 16:04:44","2023-11-24 16:04:44");
INSERT INTO medicine__activities VALUES("828","DR LAL MALIK","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","DINNER","3000","1","01/05/2023","2023-11-24 16:05:24","2023-11-24 16:05:24");
INSERT INTO medicine__activities VALUES("829","KALEEM BAHE","SECURITY GUARD","...","...","MEAT","3000","1","08/05/2023","2023-11-24 16:09:09","2023-11-24 16:09:09");
INSERT INTO medicine__activities VALUES("830","DR TARIQ","ORTHO 1 OPD","..","...","REFRESHMENT","1000","1","08/05/2023","2023-11-24 16:09:48","2023-11-24 16:09:48");
INSERT INTO medicine__activities VALUES("831","DR ADEEL SADURANI","ORTHO 2 WARD","...","...","REFRESHMENT","1000","1","08/05/2023","2023-11-24 16:11:00","2023-11-24 16:11:00");
INSERT INTO medicine__activities VALUES("832","DR SAJJAD","CIVIL ORTHO CIVIL PHARMACY","..","PAGECAL & INFADOM","DINNER","2000","1","08/05/2023","2023-11-24 16:12:07","2023-11-24 16:12:07");
INSERT INTO medicine__activities VALUES("833","AURANGZAIB LALA","CIVIL ORTHO","..","..","CASH","10000","1","08/05/2023","2023-11-24 16:13:07","2023-11-24 16:13:07");
INSERT INTO medicine__activities VALUES("834","AFROZ","BAKHT BHARI","...","FALNEU..PAGECALL.","CASH","10000","1","08/05/2023","2023-11-24 16:15:20","2023-11-24 16:15:20");
INSERT INTO medicine__activities VALUES("835","DR RAIZ HABIB","OPD","...","PAGECAL","DAILTY REFRESHMENT","1500","1","08/05/2023","2023-11-24 16:16:34","2023-11-24 16:16:34");
INSERT INTO medicine__activities VALUES("836","DR WAQAS","CIVIL ORTHO CIVIL PHARMACY","...","PAGECAL & INFADOM","DINNER","2000","1","08/05/2023","2023-11-24 16:22:03","2023-11-24 16:22:03");
INSERT INTO medicine__activities VALUES("837","DR SHARAIN","SERVICES GYNE","...","FALNUE/IROHEME/PAGECAL","BOOK","1500","1","08/05/2023","2023-11-24 16:23:27","2023-11-24 16:23:27");
INSERT INTO medicine__activities VALUES("838","DR SARFRAZ","JPMC ORTHO PHARMAX","...","PAGECAL","CHAI","800","1","08/05/2023","2023-11-24 16:24:35","2023-11-24 16:24:35");
INSERT INTO medicine__activities VALUES("839","DR ADEEL","CIVIL ORTHO GOLDEN KARACHI","...","PAGECAL","REGISTRATION","5000","1","08/05/2023","2023-11-24 16:25:46","2023-11-24 16:25:46");
INSERT INTO medicine__activities VALUES("840","DR WAQAS","CIVIL ORTHO CIVIL PHARMACY","...","PAGECAL & INFADOM","REGISTRATION","6000","1","08/05/2023","2023-11-24 16:26:42","2023-11-24 16:26:42");
INSERT INTO medicine__activities VALUES("841","DR TARIQ","CIVIL ORTHO PHARMACY","...","PAGECAL & INFADOM","DINNER","2000","1","08/05/2023","2023-11-24 16:27:23","2023-11-24 16:27:23");
INSERT INTO medicine__activities VALUES("842","DR MATIULLAH","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","DINNER","2000","1","08/05/2023","2023-11-24 16:30:19","2023-11-24 16:30:19");
INSERT INTO medicine__activities VALUES("843","DR WALIULLAH","JPMC ORTHO","...","PAGECAL & INFADOM","DINNER","3000","1","08/05/2023","2023-11-24 16:31:06","2023-11-24 16:31:06");
INSERT INTO medicine__activities VALUES("844","DR ALI M/S","AZAM BASTI ADJSTMNT","...","CASH","5000","5000","1","08/05/2023","2023-11-24 16:32:00","2023-11-24 16:32:00");
INSERT INTO medicine__activities VALUES("845","DR TAHMOOR","CIVIL ORTHO GOLDEN","...","PAGECAL","AC REPAIR","3000","1","08/05/2023","2023-11-24 16:32:57","2023-11-24 16:32:57");
INSERT INTO medicine__activities VALUES("846","DR SARFRAZ","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","LUNCH","4000","1","08/05/2023","2023-11-24 16:33:42","2023-11-24 16:33:42");
INSERT INTO medicine__activities VALUES("847","DR ZOHAIB","JPMC ORTHO PHARMAX","..","PAGECAL & INFADOM","DINNER","3000","1","08/05/2023","2023-11-24 16:34:23","2023-11-24 16:34:23");
INSERT INTO medicine__activities VALUES("848","DR ZOHAIB","JPMC ORTHO PHARMAX","..","PAGECAL & INFADOM","DINNER","3000","1","08/05/2023","2023-11-24 16:34:31","2023-11-24 16:34:31");
INSERT INTO medicine__activities VALUES("849","DR PREM CHAND","CIVIL ORTHO PHARMACY","...","PAGECAL","DINNER","2000","1","08/05/2023","2023-11-24 16:35:27","2023-11-24 16:35:27");
INSERT INTO medicine__activities VALUES("850","..","GYNE OPD","...","...","REFRESHMENT","360","1","08/05/2023","2023-11-24 16:36:00","2023-11-24 16:36:00");
INSERT INTO medicine__activities VALUES("851","DR ASIF","CIVIL ORTHO PHARMACY","...","PAGECAL","REGISTRATION","1000","1","08/05/2023","2023-11-24 16:36:58","2023-11-24 16:36:58");
INSERT INTO medicine__activities VALUES("852","DR NOMAN","JPMC ORTHO PHARMAX","...","PAGECAL","TEA","500","1","08/05/2023","2023-11-24 16:37:35","2023-11-24 16:37:35");
INSERT INTO medicine__activities VALUES("853","DR NAZNEEN","ANKEL SERYA AL KHALEEJ","..","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","08/05/2023","2023-11-24 16:38:24","2023-11-24 16:38:24");
INSERT INTO medicine__activities VALUES("854","DR LAL","JPMC ORTHO PHARMACY","...","PAGECAL & INFADOM","LUNCH","3000","1","08/05/2023","2023-11-24 16:39:24","2023-11-24 16:39:24");
INSERT INTO medicine__activities VALUES("855","...","OPD CIVIL","...","PAGECAL & INFADOM","REFRESHMENT","3000","1","08/05/2023","2023-11-24 16:40:17","2023-11-24 16:40:17");
INSERT INTO medicine__activities VALUES("856","DR SHARJEEL","JPMC ORTHO PHARMAX","...","PAGECAL & INFADOM","DINNER","3000","1","08/05/2023","2023-11-24 16:41:06","2023-11-24 16:41:06");
INSERT INTO medicine__activities VALUES("857","ZAHEER WAHEED","CIVIL CHOWKI","...","...","cash","2000","1","08/05/2023","2023-11-24 16:41:45","2023-11-24 16:41:45");
INSERT INTO medicine__activities VALUES("858","...","CIVIL JPMC GUARD","...","...","CASH","1000","1","08/05/2023","2023-11-24 16:42:29","2023-11-24 16:42:29");
INSERT INTO medicine__activities VALUES("859","DR TARIQ","CIVIL ORTHO PHARMACY","...","PAGECAL","DINNER","2000","1","15/05/2023","2023-11-24 16:45:58","2023-11-24 16:45:58");
INSERT INTO medicine__activities VALUES("860","DR WAQAS","CIVIL ORTHO WARD 1","...","PAGECAL & INFADOM","REGISTRATION","5000","1","15/05/2023","2023-11-24 16:47:28","2023-11-24 16:47:28");
INSERT INTO medicine__activities VALUES("861","ANILA MALIK","MEMON AND SINDH SERVICES","...","FALNEU..PAGECALL.","USB","1200","1","15/05/2023","2023-11-24 16:48:25","2023-11-24 16:48:25");
INSERT INTO medicine__activities VALUES("862","MR BILAL","CIVIL ORTHO WARD 2","..","PAGECAL","FOREWELL","5000","1","15/05/2023","2023-11-24 16:49:18","2023-11-24 16:49:18");
INSERT INTO medicine__activities VALUES("863","DR SAJJAD","OPD 3","..","...","CASH","500","1","15/05/2023","2023-11-24 16:50:47","2023-11-24 16:50:47");
INSERT INTO medicine__activities VALUES("864","DR SARFRAZ","JPMC ORTHO WARD 17","...","PAGECAL & INFADOM","TEA","800","1","15/05/2023","2023-11-24 16:56:46","2023-11-24 16:56:46");
INSERT INTO medicine__activities VALUES("865","DR MATIULLHA","JPMC ORTHO  WARD 17","...","PAGECAL & INFADOM","LUNCH","3000","1","15/05/2023","2023-11-24 16:58:09","2023-11-24 16:58:09");
INSERT INTO medicine__activities VALUES("866","DR WALIULLAH","JPM,C ORTHO WARD 17","...","PAGECAL & INFADOM","DINNER","3500","1","15/05/2023","2023-11-24 16:58:51","2023-11-24 16:58:51");
INSERT INTO medicine__activities VALUES("867","...","CIVIL ORTHO WARD","..","PAGECAL & INFADOM","REFRESHMENT","2300","1","15/05/2023","2023-11-24 16:59:44","2023-11-24 16:59:44");
INSERT INTO medicine__activities VALUES("868","DR ASHFAQ","SINDH GOVERMENT HOSPITAL","..","IROHEME./PAGECAL","INSTALMNT","10000","1","15/05/2023","2023-11-24 17:01:12","2023-11-24 17:01:12");
INSERT INTO medicine__activities VALUES("869","..","GYNE % SLAIN HOSPITAL","...","...","REFRESHMENT","1000","1","15/05/2023","2023-11-24 17:02:04","2023-11-24 17:02:04");
INSERT INTO medicine__activities VALUES("870","...","JPMC PHARMAX ALL TEAM","..","...","DINNER","15000","1","15/05/2023","2023-11-24 17:02:42","2023-11-24 17:02:42");
INSERT INTO medicine__activities VALUES("871","DR SUBHAN","JPMC ORTHO","..","PAGECAL","REFRESHMENT","800","1","15/05/2023","2023-11-24 17:03:26","2023-11-24 17:03:26");
INSERT INTO medicine__activities VALUES("872","DR SUBHAN","JPMC ORTHO","...","PAGECAL","REFRESHMENT","800","1","15/05/2023","2023-11-24 17:04:51","2023-11-24 17:04:51");
INSERT INTO medicine__activities VALUES("873","DR PREM CHAND","CIVIL UNIT 1","..","PAGECAL & INFADOM","DINNER","3000","1","15/05/2023","2023-11-24 17:05:37","2023-11-24 17:05:37");
INSERT INTO medicine__activities VALUES("874","DR REHMAN","JPMC ORTHO","..","PAGECAL & INFADOM","DINNER","3000","1","15/05/2023","2023-11-24 17:07:05","2023-11-24 17:07:05");
INSERT INTO medicine__activities VALUES("875","RAIZ BAHE","..","...","...","CASH","5000","1","15/05/2023","2023-11-24 17:07:52","2023-11-24 17:07:52");
INSERT INTO medicine__activities VALUES("876","RAIZ BAHE","..","...","...","CASH","5000","1","15/05/2023","2023-11-24 17:09:00","2023-11-24 17:09:00");
INSERT INTO medicine__activities VALUES("877","DR MATIULLAH","JPMC ORTHO","...","PAGECAL","TEA","500","1","15/05/2023","2023-11-24 17:09:47","2023-11-24 17:09:47");
INSERT INTO medicine__activities VALUES("878","DR NAZNEEN","GYNE","...","FALNEU.. IROHEME.","EGGS","1500","1","15/05/2023","2023-11-24 17:11:17","2023-11-24 17:11:17");
INSERT INTO medicine__activities VALUES("879","DR QASIM","JPMC ORTHO","...","PAGECAL","LUNCH","3000","1","15/05/2023","2023-11-24 17:12:01","2023-11-24 17:12:01");
INSERT INTO medicine__activities VALUES("880","DR SUBHAN","JPMC ORTHO","...","PAGECAL & INFADOM","DINNER","2500","1","15/05/2023","2023-11-24 17:13:05","2023-11-24 17:13:05");
INSERT INTO medicine__activities VALUES("881","DR TAHMOOR","CIVIL ORTHO 2","...","PAGECAL","DINNER","1500","1","15/05/2023","2023-11-24 17:13:51","2023-11-24 17:13:51");
INSERT INTO medicine__activities VALUES("882","DR SARFRAZ","JPMC ORTHO","...","PAGECAL & INFADOM","LUNCH","3000","1","15/05/2023","2023-11-24 17:15:08","2023-11-24 17:15:08");
INSERT INTO medicine__activities VALUES("883","DR SHAHID","UROLOGY","..","CRANDOM","PAVAHY","6500","1","15/05/2023","2023-11-24 17:15:54","2023-11-24 17:15:54");
INSERT INTO medicine__activities VALUES("884","DR ZOHAIB","JPMC ORTHO","...","PAGECAL","DINNER","3000","1","15/05/2023","2023-11-24 17:16:50","2023-11-24 17:16:50");
INSERT INTO medicine__activities VALUES("885","DR TARIQ","CIVIL ORTHO 1","...","PAGECAL & INFADOM","DINNER","2000","1","15/05/2023","2023-11-24 17:17:48","2023-11-24 17:17:48");
INSERT INTO medicine__activities VALUES("886","...","CIVIL WARD","...","PAGECAL","REFRESHMENT","2000","1","15/05/2023","2023-11-24 17:18:31","2023-11-24 17:18:31");
INSERT INTO medicine__activities VALUES("887","SOUGH KHATTO","CIVIL","...","PAGECAL","MOVIE TCKTS","6000","1","15/05/2023","2023-11-24 17:19:32","2023-11-24 17:19:32");
INSERT INTO medicine__activities VALUES("888","DR NASIR SOMRO","JPMC ORTHO","...","PAGECAL","LUNCH","3500","1","15/05/2023","2023-11-24 17:20:10","2023-11-24 17:20:10");
INSERT INTO medicine__activities VALUES("889","DR LAL","JPMC ORTHO","...","PAGECAL & INFADOM","DINNER","3000","1","15/05/2023","2023-11-24 17:20:50","2023-11-24 17:20:50");
INSERT INTO medicine__activities VALUES("890","DR MANAN","ORTHO CIVIL 1","...","PAGECAL/INFADOM","PANAFLEX","1000","1","23/05/2023","2023-11-25 09:40:28","2023-11-25 09:40:28");
INSERT INTO medicine__activities VALUES("891","DR SAJJAD","ORTHO CIVIL 2","...","PAGECAL/INFADOM","PANAFLEX","1000","1","23/05/2023","2023-11-25 09:41:37","2023-11-25 09:41:37");
INSERT INTO medicine__activities VALUES("892","DR WASEEM","ORTHO CIVIL 1","..","PAGECAL","BOOK","1200","1","23/05/2023","2023-11-25 09:42:14","2023-11-25 09:42:14");
INSERT INTO medicine__activities VALUES("893","DR MATIULLAH","ORTHO","...","PAGECAL","LUNCH","3000","1","23/05/2023","2023-11-25 09:43:05","2023-11-25 09:43:05");
INSERT INTO medicine__activities VALUES("894","DR SAQIB","ORTHO JPMC","...","PAGECAL","LUNCH","3000","1","23/05/2023","2023-11-25 09:43:59","2023-11-25 09:43:59");
INSERT INTO medicine__activities VALUES("895","...","CIVIL ORTHO WARD","...","PAGECAL","REFRESHMENT","1500","1","23/05/2023","2023-11-25 09:44:57","2023-11-25 09:44:57");
INSERT INTO medicine__activities VALUES("896","DR HASNAIN","ORTHO","....","PAGECAL","A.C REPAIR","2500","1","23/05/2023","2023-11-25 09:46:23","2023-11-25 09:46:23");
INSERT INTO medicine__activities VALUES("897","...","RAFIQ SINDH SERVICES","...","PAGECAL","LICENSE","6000","1","23/05/2023","2023-11-25 09:47:21","2023-11-25 09:47:21");
INSERT INTO medicine__activities VALUES("898","DR BILAL","ORTHO CIVIL 2","...","PAGECAL","DINNER","1500","1","23/05/2023","2023-11-25 09:48:36","2023-11-25 09:48:36");
INSERT INTO medicine__activities VALUES("899","DR ASIF","ORTHO CIVIL 2","...","PAGECAL","WORKSHOP FEES","5000","1","23/05/2023","2023-11-25 09:49:55","2023-11-25 09:49:55");
INSERT INTO medicine__activities VALUES("900","DR SUBHAN","ORTHO JPMC","..","PAGECAL/INFADOM","LUNCH","3500","1","23/05/2023","2023-11-25 09:50:47","2023-11-25 09:50:47");
INSERT INTO medicine__activities VALUES("901","DR ZOHAIB","ORTHO JPMC","...","PAGECAL/INFADOM","DINNER","3000","1","23/05/2023","2023-11-25 09:52:14","2023-11-25 09:52:14");
INSERT INTO medicine__activities VALUES("902","...","REHMAN ORTHO JPMC","...","PAGECAL","LUNCH","2500","1","23/05/2023","2023-11-25 09:53:21","2023-11-25 09:53:21");
INSERT INTO medicine__activities VALUES("903","DR TAHMOOR","ORTHO 2","...","PAGECAL","DINNER","1500","1","23/05/2023","2023-11-25 09:54:20","2023-11-25 09:54:20");
INSERT INTO medicine__activities VALUES("904","DR MATIULLAH","ORTHO JPMC","...","PAGECAL","TEA","600","1","23/05/2023","2023-11-25 09:55:19","2023-11-25 09:55:19");
INSERT INTO medicine__activities VALUES("905","..","GYNE CIVIL SERVICES","...","FALNEU/INFADOM","REFRESHMENT","900","1","23/05/2023","2023-11-25 09:56:23","2023-11-25 09:56:23");
INSERT INTO medicine__activities VALUES("906","DR NOMAN","ORTHO JPMC","...","PAGECAL","TEA","600","1","23/05/2023","2023-11-25 09:57:05","2023-11-25 09:57:05");
INSERT INTO medicine__activities VALUES("907","DR IFTEKHAR","ORTHO JPMC","...","PAGECAL","REGISTRATION","8000","1","23/05/2023","2023-11-25 09:58:24","2023-11-25 09:58:24");
INSERT INTO medicine__activities VALUES("908","DR JAGDESH","CIVIL ORTHO 1","...","PAGECAL","REMOVAL","1400","1","23/05/2023","2023-11-25 09:59:00","2023-11-25 09:59:00");
INSERT INTO medicine__activities VALUES("909","DR JAGDESH","CIVIL ORTHO 1","...","PAGECAL","REMOVAL","1400","1","23/05/2023","2023-11-25 10:18:39","2023-11-25 10:18:39");
INSERT INTO medicine__activities VALUES("910","DR JAGDESH","CIVIL ORTHO 1","...","PAGECAL","REMOVAL","1400","1","23/05/2023","2023-11-25 10:19:10","2023-11-25 10:19:10");
INSERT INTO medicine__activities VALUES("911","DR SHAKIR","CIVIL PHARMAX","...","PAGECAL/IROHEME","CASH","2000","1","23/05/2023","2023-11-25 10:20:08","2023-11-25 10:20:08");
INSERT INTO medicine__activities VALUES("912","DR SHARJEEL","ORTHO JPMC","...","PAGECAL","LUNCH","3000","1","23/05/2023","2023-11-25 10:22:03","2023-11-25 10:22:03");
INSERT INTO medicine__activities VALUES("913","DR LAL","ORTHO JPMC","....","PAGECAL","DINNER","3000","1","23/05/2023","2023-11-25 10:23:39","2023-11-25 10:23:39");
INSERT INTO medicine__activities VALUES("914","DR TARIQ","ORTHO JPMC","...","PAGECAL/INFADOM","DINNER","2000","1","23/05/2023","2023-11-25 10:24:32","2023-11-25 10:24:32");
INSERT INTO medicine__activities VALUES("915","DR NAZNEEN","GYNE ANKEL SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","23/05/2023","2023-11-25 10:25:22","2023-11-25 10:25:22");
INSERT INTO medicine__activities VALUES("916","DR AMMAR","JPMC ORTHO  PHARMAX","...","PAGECAL","...","1000","1","05/06/2023","2023-11-25 12:07:31","2023-11-25 12:07:31");
INSERT INTO medicine__activities VALUES("917","AURANGZAIB LALA","CIVIL HOSPTL","...","...","CASH","5000","1","05/06/2023","2023-11-25 12:08:57","2023-11-25 12:08:57");
INSERT INTO medicine__activities VALUES("918","DR BILAL","CIVIL ORTHO PHARMAX","...","PAGECAL","CASH","1500","1","05/06/2023","2023-11-25 12:09:59","2023-11-25 12:09:59");
INSERT INTO medicine__activities VALUES("919","DR KHALID","JPMC","...","PAGECAL/INFADOM","REFRESHMENT","500","1","05/06/2023","2023-11-25 12:10:45","2023-11-25 12:10:45");
INSERT INTO medicine__activities VALUES("920","DR MATIULLAH","ORTHO JPMC","...","PAGECAL/INFADOM","CASH","6000","1","05/06/2023","2023-11-25 12:11:39","2023-11-25 12:11:39");
INSERT INTO medicine__activities VALUES("921","...","GYNE CIVIL + SERVICES SKIN HOSP","...","...","REFRESHMENT","1500","1","05/06/2023","2023-11-25 12:12:25","2023-11-25 12:12:25");
INSERT INTO medicine__activities VALUES("922","DR NAZNEEN","GYNE ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1200","1","05/06/2023","2023-11-25 12:13:21","2023-11-25 12:13:21");
INSERT INTO medicine__activities VALUES("923","DR ADEEL","CIVIL UNIT 2 HOD","...","...","REFRESHMENT","2000","1","05/06/2023","2023-11-25 12:14:57","2023-11-25 12:14:57");
INSERT INTO medicine__activities VALUES("924","DR ASMA","SANI GOHAR","...","CRANDOM/IROHEME","...","500","1","05/06/2023","2023-11-25 12:15:57","2023-11-25 12:15:57");
INSERT INTO medicine__activities VALUES("925","DR SAQIB","JPMC ORTHO","...","PAGECAL/INFADOM","...","3000","1","05/06/2023","2023-11-25 12:16:39","2023-11-25 12:16:39");
INSERT INTO medicine__activities VALUES("926","DR REHMAN","JPMC ORTHO","...","PAGECAL","...","2500","1","05/06/2023","2023-11-25 12:17:14","2023-11-25 12:17:14");
INSERT INTO medicine__activities VALUES("927","DR ZOHAIB","JPMC ORTHO","...","PAGECAL","....","4000","1","05/06/2023","2023-11-25 12:18:01","2023-11-25 12:18:01");
INSERT INTO medicine__activities VALUES("928","DR PREM CHAND","CIVIL ORTHO","...","PAGECAL/INFADOM","....","2000","1","05/06/2023","2023-11-25 12:39:48","2023-11-25 12:39:48");
INSERT INTO medicine__activities VALUES("929","DR SHAZAIB","JPMC ORTHO","...","PAGECAL/INFADOM","...","2500","1","05/06/2023","2023-11-25 12:40:30","2023-11-25 12:40:30");
INSERT INTO medicine__activities VALUES("930","DR WAQAS","ORTHO CIVIL","...","PAGECAL/INFADOM","...","900","1","05/06/2023","2023-11-25 12:41:04","2023-11-25 12:41:04");
INSERT INTO medicine__activities VALUES("931","...","OPD CIVIL HOSPITAL","...","...","...","500","1","05/06/2023","2023-11-25 12:43:35","2023-11-25 12:43:35");
INSERT INTO medicine__activities VALUES("932","DR ATIF","PHARMAX CIVIL","...","PAGECAL/FALNUE","...","1000","1","05/06/2023","2023-11-25 12:44:29","2023-11-25 12:44:29");
INSERT INTO medicine__activities VALUES("933","DR TAHMOOR","JPMC ORTHO","...","IROHEME/PAGECAL","...","1500","1","05/06/2023","2023-11-25 12:45:10","2023-11-25 12:45:10");
INSERT INTO medicine__activities VALUES("934","DR NASIR","JPMC ORTHO","...","PAGECAL","...","3500","1","05/06/2023","2023-11-25 12:46:09","2023-11-25 12:46:09");
INSERT INTO medicine__activities VALUES("935","DR LAL MALIK","JPMC ORTHO","...","INFADOM","...","3000","1","05/06/2023","2023-11-25 12:47:17","2023-11-25 12:47:17");
INSERT INTO medicine__activities VALUES("936","DR SHARJEEL","JPMC ORTHO  AD+AM+AR","...","PAGECAL/INFADOM","...","3500","1","05/06/2023","2023-11-25 12:48:59","2023-11-25 12:48:59");
INSERT INTO medicine__activities VALUES("937","DR LAL MALIK","JPMC ORTHO","...","PAGECAL/INFADOM","...","3000","1","05/06/2023","2023-11-25 12:49:42","2023-11-25 12:49:42");
INSERT INTO medicine__activities VALUES("938","DR TARIQ","CIVIL ORTHO","...","PAGECAL","...","2000","1","05/06/2023","2023-11-25 12:51:04","2023-11-25 12:51:04");
INSERT INTO medicine__activities VALUES("939","DR NAZNEEN","GYNE A ANKER SERYA","...","PAGECAL/FALNUE","...","1500","1","05/06/2023","2023-11-25 12:52:00","2023-11-25 12:52:00");
INSERT INTO medicine__activities VALUES("940","NEELEM OR SUNITA","SERVICES","...","FALNUE/IROHEME/PAGECAL","...","3000","1","05/06/2023","2023-11-25 12:52:40","2023-11-25 12:52:40");
INSERT INTO medicine__activities VALUES("941","DR SOUGHAT","ORTHO WARD","...","PAGECAL","REFRESHMENT","1500","1","05/06/2023","2023-11-25 12:53:24","2023-11-25 12:53:24");
INSERT INTO medicine__activities VALUES("942","DR ZOHAIB","ORTHO JPMC PHARMAX","...","PAGECAL","BOOK","3500","1","12/06/2023","2023-11-25 12:57:53","2023-11-25 12:57:53");
INSERT INTO medicine__activities VALUES("943","WAHEED +ZAHEER","CIVIL CHOWKI","...","...","...","2000","1","12/06/2023","2023-11-25 13:00:12","2023-11-25 13:00:12");
INSERT INTO medicine__activities VALUES("944","DR ASIF","CIVIL ORTHO CIVIL PHARMAX","..","PAGECAL","DINNER","1500","1","12/06/2023","2023-11-25 13:00:58","2023-11-25 13:00:58");
INSERT INTO medicine__activities VALUES("945","...","JPMC OPD","...","...","REFRESHMENT","700","1","12/06/2023","2023-11-25 13:02:11","2023-11-25 13:02:11");
INSERT INTO medicine__activities VALUES("946","DR NOMAN","JPMC ORTHO PHARMAX","...","PAGECAL/INFADOM","CASH","5000","1","12/06/2023","2023-11-25 13:03:42","2023-11-25 13:03:42");
INSERT INTO medicine__activities VALUES("947","DR REHAN","JPMC ORTHO SAIF SATTARI","...","PAGECAL","CASH","2500","1","12/06/2023","2023-11-25 13:05:38","2023-11-25 13:05:38");
INSERT INTO medicine__activities VALUES("948","DR MASOOD","AL TIBRI THE CARE HOSP","...","PAGECAL/INFADOM","CASH","10000","1","12/06/2023","2023-11-25 13:06:25","2023-11-25 13:06:25");
INSERT INTO medicine__activities VALUES("949","DR MATIULLAH","JPMC ORTHO MALIK","...","PAGECAL","LUNCH","3000","1","12/06/2023","2023-11-25 13:07:58","2023-11-25 13:07:58");
INSERT INTO medicine__activities VALUES("950","DR WALIULLAH","JPMC ORTHO PHARMAX","...","PAGECAL","DINNER","2500","1","12/06/2023","2023-11-25 13:08:32","2023-11-25 13:08:32");
INSERT INTO medicine__activities VALUES("951","DR WALIULLAH","JPMC ORTHO PHARMAX","...","PAGECAL","DINNER","2500","1","12/06/2023","2023-11-25 13:09:49","2023-11-25 13:09:49");
INSERT INTO medicine__activities VALUES("952","...","RAIZ PHARMAX","...","....","CASH","9000","1","12/06/2023","2023-11-25 13:10:18","2023-11-25 13:10:18");
INSERT INTO medicine__activities VALUES("953","DR ADEEL","ORTHO 2 HOD","...","PAGECAL","REFRESHMENT","2500","1","12/06/2023","2023-11-25 13:10:51","2023-11-25 13:10:51");
INSERT INTO medicine__activities VALUES("954","...","JPMC WARD","...","...","REFRESHMENT","950","1","12/06/2023","2023-11-25 13:12:40","2023-11-25 13:12:40");
INSERT INTO medicine__activities VALUES("955","...","JPMC EOR","...","...","REFRESHMENT","1000","1","12/06/2023","2023-11-25 13:13:26","2023-11-25 13:13:26");
INSERT INTO medicine__activities VALUES("956","DR LAL MALIK","JPMC ORTHO PHARMAX","...","PAGECAL","DINNER","3200","1","12/06/2023","2023-11-25 13:14:18","2023-11-25 13:14:18");
INSERT INTO medicine__activities VALUES("957","DR QASIM","JPMC ORTHO PHARMAX","..","PAGECAL/INFADOM","CASH","5000","1","12/06/2023","2023-11-25 13:15:23","2023-11-25 13:15:23");
INSERT INTO medicine__activities VALUES("958","DR ZOHAIB","JPMC ORTHO PHARMAX","...","PAGECAL","LUNCH","3500","1","12/06/2023","2023-11-25 13:16:00","2023-11-25 13:16:00");
INSERT INTO medicine__activities VALUES("959","DR SARFRAZ","JPMC ORTHO SUMMY"S MEDICOS","...","PAGECAL/INFADOM","DINNER CAKE","4000","1","12/06/2023","2023-11-25 13:16:56","2023-11-25 13:16:56");
INSERT INTO medicine__activities VALUES("960","DR HUSNAIN","CIVIL ORTHO PHARMACY","...","PAGECAL/INFADOM","DINNER","2000","1","12/06/2023","2023-11-25 13:18:24","2023-11-25 13:18:24");
INSERT INTO medicine__activities VALUES("961","DR TAHMOOR","CIVIL ORTHO CIVIL PHARMACY","...","PAGECAL","DINNER","1500","1","12/06/2023","2023-11-25 13:19:30","2023-11-25 13:19:30");
INSERT INTO medicine__activities VALUES("962","DR KHALID","JPMC","...","PAGECAL","TEA","500","1","12/06/2023","2023-11-25 13:19:58","2023-11-25 13:19:58");
INSERT INTO medicine__activities VALUES("963","DR NAZNEEN","GYNE ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","SUPER CARD","850","1","12/06/2023","2023-11-25 13:20:38","2023-11-25 13:20:38");
INSERT INTO medicine__activities VALUES("964","DR JAMILA RAJPAR","GYNE SERVICES","...","FALNUE/IROHEME/PAGECAL","CAKE","1600","1","12/06/2023","2023-11-25 13:21:17","2023-11-25 13:21:17");
INSERT INTO medicine__activities VALUES("965","DR JAMILA RAJPAR","GYNE SERVICES","...","FALNUE/IROHEME/PAGECAL","CAKE","1600","1","12/06/2023","2023-11-25 13:34:10","2023-11-25 13:34:10");
INSERT INTO medicine__activities VALUES("966","DR ISHRAT","OBVS WHEELS","...","PAGECAL/FALNUE","...","1000","1","12/06/2023","2023-11-25 13:34:54","2023-11-25 13:34:54");
INSERT INTO medicine__activities VALUES("967","DR NASIR SOOMRO","PHARMAX +AD","...","PAGECAL","LUNCH","3500","1","12/06/2023","2023-11-25 13:36:15","2023-11-25 13:36:15");
INSERT INTO medicine__activities VALUES("968","DR SHARJEEL","JPMC ORTHO","...","PAGECAL/INFADOM","DINNER","3000","1","12/06/2023","2023-11-25 13:37:29","2023-11-25 13:37:29");
INSERT INTO medicine__activities VALUES("969","DR TARIQ","CIVIL ORTHO PHARMACY","...","PAGECAL","DINNER","2000","1","12/06/2023","2023-11-25 13:38:03","2023-11-25 13:38:03");
INSERT INTO medicine__activities VALUES("970","DR NAZNEEN","GYNE ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","12/06/2023","2023-11-25 13:38:40","2023-11-25 13:38:40");
INSERT INTO medicine__activities VALUES("971","DR PREM CHAND","CIVIL SUNDAY ON CAL","...","PAGECAL","DINNER","2500","1","12/06/2023","2023-11-25 13:39:15","2023-11-25 13:39:15");
INSERT INTO medicine__activities VALUES("972","DR PREM CHAND","CIVIL SUNDAY ON CAL","...","PAGECAL","DINNER","2500","1","12/06/2023","2023-11-25 13:39:22","2023-11-25 13:39:22");
INSERT INTO medicine__activities VALUES("973","...","MIRAJ CIVIL ORTHO 2","...","PAGECAL","FAMILY DINNER","4500","1","12/06/2023","2023-11-25 13:40:35","2023-11-25 13:40:35");
INSERT INTO medicine__activities VALUES("974","...","WARD CIVIL 1","...","PAGECAL","REFRESHMENT","700","1","12/06/2023","2023-11-25 13:41:07","2023-11-25 13:41:07");
INSERT INTO medicine__activities VALUES("975","AURANGZAIB LALA","CIVIL HOSPTL","...","...","CASH","10000","1","13/06/2023","2023-11-25 13:44:37","2023-11-25 13:44:37");
INSERT INTO medicine__activities VALUES("976","DR SAJJAD","CIVIL ORTHO 2","..","PAGECAL","DINNER","1700","1","13/06/2023","2023-11-25 13:45:36","2023-11-25 13:45:36");
INSERT INTO medicine__activities VALUES("977","...","CIVIL OPD","...","...","TEA","600","1","13/06/2023","2023-11-25 13:46:30","2023-11-25 13:46:30");
INSERT INTO medicine__activities VALUES("978","DR SANAM","JPMC WARD","..","FALNUE/IROHEME","LUNCH","2100","1","13/06/2023","2023-11-25 13:47:52","2023-11-25 13:47:52");
INSERT INTO medicine__activities VALUES("979","DR MATIULLAH","JPMC ORTHO","...","PAGECAL","LUNCH","3000","1","13/06/2023","2023-11-25 13:48:38","2023-11-25 13:48:38");
INSERT INTO medicine__activities VALUES("980","DR WALIULLAH","JPMC ORTHO","...","INFADOM","DINNER","3000","1","13/06/2023","2023-11-25 13:49:12","2023-11-25 13:49:12");
INSERT INTO medicine__activities VALUES("981","DR WALIULLAH","JPMC ORTHO","..","INFADOM","DINNER","3000","1","13/06/2023","2023-11-25 13:50:59","2023-11-25 13:50:59");
INSERT INTO medicine__activities VALUES("982","DR PREM CHAND","CIVIL ORTHO","..","PAGECAL","DINNER","2500","1","13/06/2023","2023-11-25 13:51:32","2023-11-25 13:51:32");
INSERT INTO medicine__activities VALUES("983","..","...","...","...","PENS","5000","1","13/06/2023","2023-11-25 13:51:58","2023-11-25 13:51:58");
INSERT INTO medicine__activities VALUES("984","DR ADEEL","WARD","..","PAGECAL","REFRESHMENT","2000","1","13/06/2023","2023-11-25 13:52:42","2023-11-25 13:52:42");
INSERT INTO medicine__activities VALUES("985","DR BILAL","ORTHO UNIT 2","..","PAGECAL/INFADOM","BOOK","1500","1","13/06/2023","2023-11-25 13:53:16","2023-11-25 13:53:16");
INSERT INTO medicine__activities VALUES("986","DR RASALI","GYNE SERVICES","...","FALNUE/IROHEME","BOOK","1500","1","13/06/2023","2023-11-25 13:54:45","2023-11-25 13:54:45");
INSERT INTO medicine__activities VALUES("987","DR WAQAS","ORTHO UNIT 2","..","PAGECAL","BOOK","800","1","13/06/2023","2023-11-25 13:55:19","2023-11-25 13:55:19");
INSERT INTO medicine__activities VALUES("988","..","JPMC","...","...","TEA","500","1","13/06/2023","2023-11-25 13:56:27","2023-11-25 13:56:27");
INSERT INTO medicine__activities VALUES("989","DR SUBHAN","JPMC ORTHO","..","PAGECAL/INFADOM","LUNCH","3000","1","13/06/2023","2023-11-25 13:57:51","2023-11-25 13:57:51");
INSERT INTO medicine__activities VALUES("990","DR MANAN","CIVIL ORTHO","..","PAGECAL/INFADOM","DINNER","2000","1","13/06/2023","2023-11-25 13:58:35","2023-11-25 13:58:35");
INSERT INTO medicine__activities VALUES("991","DR ZOHAIB","JPMC ORTHO","...","PAGECAL","DINNER","3500","1","13/06/2023","2023-11-25 13:59:22","2023-11-25 13:59:22");
INSERT INTO medicine__activities VALUES("992","..","...","...","...","PENS &BENCHES","3000","1","13/06/2023","2023-11-25 13:59:48","2023-11-25 13:59:48");
INSERT INTO medicine__activities VALUES("993","DR WALIULLAH","JPMC","..","PAGECAL","DINNER","3000","1","13/06/2023","2023-11-25 14:00:22","2023-11-25 14:00:22");
INSERT INTO medicine__activities VALUES("994","DR NAZNEEN","ANKEL SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","2000","1","13/06/2023","2023-11-25 14:01:24","2023-11-25 14:01:24");
INSERT INTO medicine__activities VALUES("995","DR WAQAR","CIVIL ORTHO","..","PAGECAL","DINNER","2000","1","13/06/2023","2023-11-25 14:01:59","2023-11-25 14:01:59");
INSERT INTO medicine__activities VALUES("996","DR FAYYAZ","CIVIL ORTHO","...","PAGECAL","CASH","5000","1","26/06/2023","2023-11-25 14:11:19","2023-11-25 14:11:19");
INSERT INTO medicine__activities VALUES("997","DR ATIF","CIVIL PHARMAX","...","FALNUE/IROHEME/PAGECAL","CASH","1000","1","26/06/2023","2023-11-25 14:13:04","2023-11-25 14:13:04");
INSERT INTO medicine__activities VALUES("998","DR SAJJAD","CIVIL ORTHO 2","...","PAGECAL","DINNER","1750","1","26/06/2023","2023-11-25 14:15:00","2023-11-25 14:15:00");
INSERT INTO medicine__activities VALUES("999","...","JPMC WARD","...","...","REFRESHMENT","1000","1","26/06/2023","2023-11-25 14:16:06","2023-11-25 14:16:06");
INSERT INTO medicine__activities VALUES("1000","DR MATIULLAH","JPMC ORTHO PHARMAX","...","PAGECAL","LUNCH","3000","1","26/06/2023","2023-11-25 14:17:21","2023-11-25 14:17:21");
INSERT INTO medicine__activities VALUES("1001","DR WALIULLAH","JPMC AM+AR","...","PAGECAL/INFADOM","DINNER","3500","1","26/06/2023","2023-11-25 14:18:02","2023-11-25 14:18:02");
INSERT INTO medicine__activities VALUES("1002","DR TARIQ","CIVIL ORTHO","...","PAGECAL/INFADOM","DINNER","2000","1","26/06/2023","2023-11-25 14:19:36","2023-11-25 14:19:36");
INSERT INTO medicine__activities VALUES("1003","DR TARIQ","CIVIL ORTHO","...","PAGECAL/INFADOM","DINNER","2000","1","26/06/2023","2023-11-25 14:20:51","2023-11-25 14:20:51");
INSERT INTO medicine__activities VALUES("1004","DR ASIF","ORTHO 2 CIVIL","...","PAGECAL","DINNER","1500","1","26/06/2023","2023-11-25 14:21:46","2023-11-25 14:21:46");
INSERT INTO medicine__activities VALUES("1005","DR SUBHAN","JPMCORTHO","...","PAGECAL/INFADOM","LUNCH","3500","1","26/06/2023","2023-11-25 14:22:20","2023-11-25 14:22:20");
INSERT INTO medicine__activities VALUES("1006","DR ZOHAIB","JPMC ORTHO","...","PAGECAL","DINNER","3000","1","26/06/2023","2023-11-25 14:23:13","2023-11-25 14:23:13");
INSERT INTO medicine__activities VALUES("1007","...","CIVIL WARD","...","PAGECAL","...","1000","1","26/06/2023","2023-11-25 14:24:45","2023-11-25 14:24:45");
INSERT INTO medicine__activities VALUES("1008","DR ADEEL","WARD","...","...","LUNCH","2000","1","26/06/2023","2023-11-25 14:26:30","2023-11-25 14:26:30");
INSERT INTO medicine__activities VALUES("1009","DR MATIULLAH","JPMC ORTHO","..","PAGECAL/INFADOM","DINNER PARTY","20000","1","26/06/2023","2023-11-25 14:27:14","2023-11-25 14:27:14");
INSERT INTO medicine__activities VALUES("1010","DR MOHTASHAM","FAREWELL ORTHO CIVIL","...","PAGECAL","B-FAST","2500","1","26/06/2023","2023-11-25 14:28:37","2023-11-25 14:28:37");
INSERT INTO medicine__activities VALUES("1011","DR TAHMOOR","CIVIL ORTHO","...","PAGECAL","DINNER","1500","1","26/06/2023","2023-11-25 14:29:12","2023-11-25 14:29:12");
INSERT INTO medicine__activities VALUES("1012","DR NAZNEEN","CIVIL ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","26/06/2023","2023-11-25 14:29:47","2023-11-25 14:29:47");
INSERT INTO medicine__activities VALUES("1013","DR MANAN","CIVIL","...","PAGECAL","DINNER","2000","1","26/06/2023","2023-11-25 14:30:19","2023-11-25 14:30:19");
INSERT INTO medicine__activities VALUES("1014","DR SHARJEEL","JPMC MALIK +AM","..","PAGECAL","LUNCH","3000","1","26/06/2023","2023-11-25 14:30:53","2023-11-25 14:30:53");
INSERT INTO medicine__activities VALUES("1015","DR LAL","AR+SUNNY","..","PAGECAL","DINNER","3500","1","26/06/2023","2023-11-25 14:31:36","2023-11-25 14:31:36");
INSERT INTO medicine__activities VALUES("1016","DR RAIZ","PHARMAX","...","...","CASH","5000","1","26/06/2023","2023-11-25 14:32:28","2023-11-25 14:32:28");
INSERT INTO medicine__activities VALUES("1017","DR ASHFAQ","GOVT SERVICES","...","...","MOBILE INSTALMNT","10000","1","26/06/2023","2023-11-25 14:33:11","2023-11-25 14:33:11");
INSERT INTO medicine__activities VALUES("1018","DR PREM CHAN","CIVIL","...","...","DINNER","2000","1","03/07/2023","2023-11-25 15:54:35","2023-11-25 15:54:35");
INSERT INTO medicine__activities VALUES("1019","DR PIYAR E ALI MOMIN","...","...","...","CAKE","2100","1","03/07/2023","2023-11-25 15:55:10","2023-11-25 15:55:10");
INSERT INTO medicine__activities VALUES("1020","AURANGZAIB LALA","CIVIL HOSPTL","..","...","CASH","5000","1","03/07/2023","2023-11-25 15:55:57","2023-11-25 15:55:57");
INSERT INTO medicine__activities VALUES("1021","DR SAJJAD","CIVIL ORTHO 2","...","...","DINNER","1500","1","03/07/2023","2023-11-25 15:56:35","2023-11-25 15:56:35");
INSERT INTO medicine__activities VALUES("1022","DR TARIQ PG","CIVIL ORTHO 1","..","...","DINNER","2000","1","03/07/2023","2023-11-25 15:57:13","2023-11-25 15:57:13");
INSERT INTO medicine__activities VALUES("1023","DR BILAL","CIVIL ORTHO 2","...","...","DINNER","2500","1","03/07/2023","2023-11-25 15:57:43","2023-11-25 15:57:43");
INSERT INTO medicine__activities VALUES("1024","DR SUBHAN","JPMC ORTHO","..","...","LUNCH","3000","1","03/07/2023","2023-11-25 15:58:20","2023-11-25 15:58:20");
INSERT INTO medicine__activities VALUES("1025","DR WAQAR","CIVIL ORTHO 1","..","...","DINNER","2300","1","03/07/2023","2023-11-25 15:59:32","2023-11-25 15:59:32");
INSERT INTO medicine__activities VALUES("1026","DR NAZNEEN","GYNE ANKER SERYA","...","...","...","2800","1","03/07/2023","2023-11-25 16:01:00","2023-11-25 16:01:00");
INSERT INTO medicine__activities VALUES("1027","DR ZOHAIB","JPMC ORTHO","..","...","DINNER","3000","1","03/07/2023","2023-11-25 16:01:34","2023-11-25 16:01:34");
INSERT INTO medicine__activities VALUES("1028","DR REHAN","JPMC ORTHO","...","...","...","5000","1","03/07/2023","2023-11-25 16:02:23","2023-11-25 16:02:23");
INSERT INTO medicine__activities VALUES("1029","DR NOMAN","JPMC ORTHO","...","...","...","5000","1","03/07/2023","2023-11-25 16:03:10","2023-11-25 16:03:10");
INSERT INTO medicine__activities VALUES("1030","DR SHEHAZAD","CIVIL ORTHO 2","...","...","DINNER","2800","1","03/07/2023","2023-11-25 16:03:41","2023-11-25 16:03:41");
INSERT INTO medicine__activities VALUES("1031","DR SUBHAN","JPMC ORTHO","..","...","...","3000","1","03/07/2023","2023-11-25 16:04:08","2023-11-25 16:04:08");
INSERT INTO medicine__activities VALUES("1032","DR SHARJEEL","JPMC ORTHO","..","..","LUNCH","3000","1","03/07/2023","2023-11-25 16:04:53","2023-11-25 16:04:53");
INSERT INTO medicine__activities VALUES("1033","DR LAL","JPMC ORTHO","...","...","DINNER","3000","1","03/07/2023","2023-11-25 16:05:19","2023-11-25 16:05:19");
INSERT INTO medicine__activities VALUES("1034","DR MANAN","CIVIL ORTHO 1","...","...","DINNER","2000","1","03/07/2023","2023-11-25 16:06:16","2023-11-25 16:06:16");
INSERT INTO medicine__activities VALUES("1035","DR NAZNEEN","GYNE ANKER SERYA","...","...","EGGS","1500","1","03/07/2023","2023-11-25 16:06:49","2023-11-25 16:06:49");
INSERT INTO medicine__activities VALUES("1036","DR SHAHID","UROLOGIST JPMC","..","...","PENAFLEX","1500","1","03/07/2023","2023-11-25 16:07:39","2023-11-25 16:07:39");
INSERT INTO medicine__activities VALUES("1037","..","JPMC","...","...","TEA","1000","1","04/07/2023","2023-11-25 16:11:01","2023-11-25 16:11:01");
INSERT INTO medicine__activities VALUES("1038","DR MATIULLAH","JPMC","...","...","LUNCH","3000","1","04/07/2023","2023-11-25 16:11:56","2023-11-25 16:11:56");
INSERT INTO medicine__activities VALUES("1039","DR GURUDAS","CIVIL ORTHO","...","...","...","1000","1","04/07/2023","2023-11-25 16:15:07","2023-11-25 16:15:07");
INSERT INTO medicine__activities VALUES("1040","DR MEER","JPMC","...","...","DINNER","3200","1","04/07/2023","2023-11-25 16:15:39","2023-11-25 16:15:39");
INSERT INTO medicine__activities VALUES("1041","DR SHAHZAIB","CIVIL ORTHO","...","...","...","500","1","04/07/2023","2023-11-25 16:16:13","2023-11-25 16:16:13");
INSERT INTO medicine__activities VALUES("1042","DR TAHMOOR","CIVIL ORTHO","..","...","DINNER","2000","1","04/07/2023","2023-11-25 16:16:43","2023-11-25 16:16:43");
INSERT INTO medicine__activities VALUES("1043","...","JPMC OPD","...","...","TEA","800","1","04/07/2023","2023-11-25 16:17:20","2023-11-25 16:17:20");
INSERT INTO medicine__activities VALUES("1044","RAIZ BAHE","PHARMAX","..","...","...","17000","1","04/07/2023","2023-11-25 16:17:55","2023-11-25 16:17:55");
INSERT INTO medicine__activities VALUES("1045","DR ARSALAN","CIVIL PHARMACY","...","...","...","1000","1","04/07/2023","2023-11-25 16:18:26","2023-11-25 16:18:26");
INSERT INTO medicine__activities VALUES("1046","DR WAQAR","CIVIL","...","...","DINNER","2200","1","04/07/2023","2023-11-25 16:19:42","2023-11-25 16:19:42");
INSERT INTO medicine__activities VALUES("1047","DR MANAN","CIVIL","...","...","DINNER","2500","1","04/07/2023","2023-11-25 16:20:23","2023-11-25 16:20:23");
INSERT INTO medicine__activities VALUES("1048","DR SUBHAN","JPMC","...","...","LUNCH","3000","1","04/07/2023","2023-11-25 16:20:50","2023-11-25 16:20:50");
INSERT INTO medicine__activities VALUES("1049","DR ZOHAIB","JPMC","...","...","DINNER","3500","1","04/07/2023","2023-11-25 16:21:35","2023-11-25 16:21:35");
INSERT INTO medicine__activities VALUES("1050","DR NAZNEEN","GYNE ANKER SERYA","..","...","EGGS SUPER CARD","2300","1","04/07/2023","2023-11-25 16:22:29","2023-11-25 16:22:29");
INSERT INTO medicine__activities VALUES("1051","DR FARHEEN","FAMILY AYESHA","..","...","...","17000","1","04/07/2023","2023-11-25 16:23:18","2023-11-25 16:23:18");
INSERT INTO medicine__activities VALUES("1052","DR MIRAJ","CIVIL","..","...","DINNER","2000","1","04/07/2023","2023-11-25 16:23:56","2023-11-25 16:23:56");
INSERT INTO medicine__activities VALUES("1053","...","JPMC MORNNING","...","...","TEA","500","1","04/07/2023","2023-11-25 16:24:35","2023-11-25 16:24:35");
INSERT INTO medicine__activities VALUES("1054","NASIR SOMRO","JPMC","...","...","LUNCH","3500","1","04/07/2023","2023-11-25 16:25:05","2023-11-25 16:25:05");
INSERT INTO medicine__activities VALUES("1055","DR SHARJEEL","JPMC","...","...","DINNER","3000","1","04/07/2023","2023-11-25 16:25:36","2023-11-25 16:25:36");
INSERT INTO medicine__activities VALUES("1056","DR TARIQ","CIVIL","...","..","DINNER","2000","1","04/07/2023","2023-11-25 16:26:14","2023-11-25 16:26:14");
INSERT INTO medicine__activities VALUES("1057","ZAHEER WAHEED","CIVIL CHOWKI","..","...","...","2000","1","04/07/2023","2023-11-25 16:26:43","2023-11-25 16:26:43");
INSERT INTO medicine__activities VALUES("1058","...","CIVIL","..","...","REFRESHMENT","1000","1","04/07/2023","2023-11-25 16:27:08","2023-11-25 16:27:08");
INSERT INTO medicine__activities VALUES("1059","DR FAHAD","ABBASI HOSP","..","....","...","2200","1","11/07/20233","2023-11-25 16:33:54","2023-11-25 16:33:54");
INSERT INTO medicine__activities VALUES("1060","DR ABDULLAH","CIVIL SABIR","..","PAGECAL","...","3000","1","11/07/20233","2023-11-25 16:34:50","2023-11-25 16:34:50");
INSERT INTO medicine__activities VALUES("1061","DR NASIR","TURUMA GUARD","...","...","..","1000","1","11/07/20233","2023-11-25 16:35:27","2023-11-25 16:35:27");
INSERT INTO medicine__activities VALUES("1062","DR PIYARE ALI MOMIN","FIN M/S","..","HAIRPLEA","LED INSTALMNT","12000","1","11/07/20233","2023-11-25 16:36:11","2023-11-25 16:36:11");
INSERT INTO medicine__activities VALUES("1063","DR SHAHZAIB","CIVIL","...","PAGECAL/INFADOM","DINNER","2500","1","11/07/20233","2023-11-25 16:37:35","2023-11-25 16:37:35");
INSERT INTO medicine__activities VALUES("1064","OPD","CIVIL","..","...","REFRESHMENT","500","1","11/07/20233","2023-11-25 16:38:06","2023-11-25 16:38:06");
INSERT INTO medicine__activities VALUES("1065","OPD","JPMC","...","...","REFRESHMENT","1000","1","11/07/20233","2023-11-25 16:38:58","2023-11-25 16:38:58");
INSERT INTO medicine__activities VALUES("1066","DR JAMILA RAJPAR","SERVICES","..","FALNUE/IROHEME","BOUQUET","1200","1","11/07/20233","2023-11-25 16:39:44","2023-11-25 16:39:44");
INSERT INTO medicine__activities VALUES("1067","DR MATIULLAH","JPMC","..","PAGECAL/INFADOM","LUNCH","3500","1","11/07/20233","2023-11-25 16:40:26","2023-11-25 16:40:26");
INSERT INTO medicine__activities VALUES("1068","\DR SANA /DR SHAHIDA GOHAR","CONSLTANT","...","PAGECAL","PRINTER PAPER","7000","1","11/07/20233","2023-11-25 16:43:36","2023-11-25 16:43:36");
INSERT INTO medicine__activities VALUES("1069","DR WALIULLAH","JPMC","...","PAGECAL/INFADOM","LUNCH","3000","1","11/07/20233","2023-11-25 16:47:47","2023-11-25 16:47:47");
INSERT INTO medicine__activities VALUES("1070","DR WALIULLAH","JPMC","...","PAGECAL/INFADOM","PRINTER PAPER","7000","1","11/07/20233","2023-11-25 16:50:14","2023-11-25 16:50:14");
INSERT INTO medicine__activities VALUES("1071","DR NAILA","DAR UL SEHAT","...","...","BOOKS","2400","1","11/07/20233","2023-11-25 16:51:04","2023-11-25 16:51:04");
INSERT INTO medicine__activities VALUES("1072","DR AMMAR","JPMC","..","PAGECAL/INFADOM","CASH","1500","1","11/07/20233","2023-11-25 16:51:37","2023-11-25 16:51:37");
INSERT INTO medicine__activities VALUES("1073","...","CIVIL OPD","...","...","TEA","400","1","11/07/20233","2023-11-25 16:52:23","2023-11-25 16:52:23");
INSERT INTO medicine__activities VALUES("1074","...","JPMC OPD","...","...","TEA","850","1","11/07/20233","2023-11-25 16:54:29","2023-11-25 16:54:29");
INSERT INTO medicine__activities VALUES("1075","DR TAHMOOR","CIVIL ORTHO 2","...","PAGECAL","DINNER","1700","1","11/07/20233","2023-11-25 16:55:16","2023-11-25 16:55:16");
INSERT INTO medicine__activities VALUES("1076","DR MASOOD","AL TIBRI","..","PAGECAL/INFADOM","CASH","20000","1","11/07/20233","2023-11-25 16:57:50","2023-11-25 16:57:50");
INSERT INTO medicine__activities VALUES("1077","DR SAQIB","JPMC","..","PAGECAL","LUNCH","3000","1","11/07/20233","2023-11-25 16:58:27","2023-11-25 16:58:27");
INSERT INTO medicine__activities VALUES("1078","DR ZOHAIB","JPMC","...","PAGECAL/INFADOM","DINNER","3500","1","11/07/20233","2023-11-25 16:59:03","2023-11-25 16:59:03");
INSERT INTO medicine__activities VALUES("1079","DR MANAN","CIVIL","..","PAGECAL","DINNER","2300","1","11/07/20233","2023-11-25 16:59:38","2023-11-25 16:59:38");
INSERT INTO medicine__activities VALUES("1080","DR IMRAN","PHARMAX/CIVIL","...","...","CASH","1500","1","11/07/20233","2023-11-25 17:00:23","2023-11-25 17:00:23");
INSERT INTO medicine__activities VALUES("1081","DR ADEEL SIDDQUI","WARD","..","PAGECAL","ACTIVTY","1600","1","11/07/20233","2023-11-25 17:01:36","2023-11-25 17:01:36");
INSERT INTO medicine__activities VALUES("1082","DR SAJJAD","CIVIL","..","PAGECAL","DINNER","1500","1","11/07/20233","2023-11-25 17:02:18","2023-11-25 17:02:18");
INSERT INTO medicine__activities VALUES("1083","DR SUBHAN ALI","..","..","PAGECAL","ONLINE TRANSFER","3000","1","11/07/20233","2023-11-25 17:02:54","2023-11-25 17:02:54");
INSERT INTO medicine__activities VALUES("1084","DR SM ZOHAIB","JPMC 17","..","PAGECAL","ONLINE TRANSFER","3000","1","11/07/2023","2023-11-25 17:03:53","2023-11-25 17:03:53");
INSERT INTO medicine__activities VALUES("1085","DR NASIR SOMRO","JPMC 17","...","PAGECAL/INFADOM","LUNCH","3500","1","11/07/2023","2023-11-25 17:04:35","2023-11-25 17:04:35");
INSERT INTO medicine__activities VALUES("1086","DR SHARJEEL","JPMC 17","...","PAGECAL/INFADOM","DINNER","3000","1","11/07/20233","2023-11-25 17:05:09","2023-11-25 17:05:09");
INSERT INTO medicine__activities VALUES("1087","DR NAZNEEN","ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1000","1","11/07/2023","2023-11-25 17:05:54","2023-11-25 17:05:54");
INSERT INTO medicine__activities VALUES("1088","DR WAQAR","CIVIL ORTHO 1","...","PAGECAL","LUNCH","2000","1","11/07/2023","2023-11-25 17:06:29","2023-11-25 17:06:29");
INSERT INTO medicine__activities VALUES("1089","DR ASHFAQ","SERVICES HOSPITAL","...","PAGECAL/IROHEME","MOBILE INSTALMNT","10000","1","18/07/2023","2023-11-25 17:10:02","2023-11-25 17:10:02");
INSERT INTO medicine__activities VALUES("1090","...","GYNE CIVIL WARD 1","...","..","OVEN INSTALMNT","6000","1","18/07/2023","2023-11-25 17:11:07","2023-11-25 17:11:07");
INSERT INTO medicine__activities VALUES("1091","DR NAZNEEN","GYNE ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","ISPHAGHOL","600","1","18/07/2023","2023-11-25 17:11:55","2023-11-25 17:11:55");
INSERT INTO medicine__activities VALUES("1092","DR FAYAZ","CIVIL ORTHO UNIT 1","...","PAGECAL","CASH","2400","1","18/07/2023","2023-11-25 17:12:54","2023-11-25 17:12:54");
INSERT INTO medicine__activities VALUES("1093","...","CIVIL OPD","..","...","REFRESHMENT","450","1","18/07/2023","2023-11-25 17:13:32","2023-11-25 17:13:32");
INSERT INTO medicine__activities VALUES("1094","DR SAJJAD","CIVIL ORTHO UNIT 2","...","PAGECAL/IROHEME","DINNER","1850","1","18/07/2023","2023-11-25 17:14:23","2023-11-25 17:14:23");
INSERT INTO medicine__activities VALUES("1095","...","JPMC ORTHO OPD","...","...","REFRESHMENT","1600","1","18/07/2023","2023-11-25 17:15:13","2023-11-25 17:15:13");
INSERT INTO medicine__activities VALUES("1096","AURANGZAIB LALA","CIVIL HOSPTL","...","...","CASH","10000","1","18/07/2023","2023-11-25 17:18:33","2023-11-25 17:18:33");
INSERT INTO medicine__activities VALUES("1097","DR MANAN","CIVIL ORTHO UNIT 1","...","PAGECAL/INFADOM","DINNER","2000","1","18/07/2023","2023-11-25 17:19:16","2023-11-25 17:19:16");
INSERT INTO medicine__activities VALUES("1098","..","CIVIL OPD","...","...","REFRESHMENT","1000","1","18/07/2023","2023-11-25 17:20:06","2023-11-25 17:20:06");
INSERT INTO medicine__activities VALUES("1099","DR MEER","JPMC","..","...","LUNCH","3850","1","18/07/2023","2023-11-25 17:20:44","2023-11-25 17:20:44");
INSERT INTO medicine__activities VALUES("1100","DR WALIULLAH","JPMC","..","PAGECAL","DINNER","3000","1","18/07/2023","2023-11-25 17:21:26","2023-11-25 17:21:26");
INSERT INTO medicine__activities VALUES("1101","...","...",".","...","PRINTING","5000","1","18/07/2023","2023-11-25 17:26:34","2023-11-25 17:26:34");
INSERT INTO medicine__activities VALUES("1102","DR SHAHZAIB","...","...","PAGECAL/INFADOM","ONLINE TRANSFER","2200","1","18/07/2023","2023-11-25 17:27:17","2023-11-25 17:27:17");
INSERT INTO medicine__activities VALUES("1103","DR KHADIJA","TIBRIS","..","..","CASH","9000","1","18/07/2023","2023-11-25 17:27:50","2023-11-25 17:27:50");
INSERT INTO medicine__activities VALUES("1104","DR SHAHZAIB","CIVIL HOSP ORTHO UNIT 2","...","...","CASH","2000","1","07/11/2023","2023-11-28 09:56:28","2023-11-28 09:56:28");
INSERT INTO medicine__activities VALUES("1105","DR MAIRAJ","CIVIL HOSPITAL ORTHO UNIT","..","...","DINNER","1850","1","07/11/2023","2023-11-28 09:59:45","2023-11-28 09:59:45");
INSERT INTO medicine__activities VALUES("1106","OPD","ORTHO UNIT 2","...","...","REFRESHMENT","500","1","07/11/2023","2023-11-28 10:01:47","2023-11-28 10:01:47");
INSERT INTO medicine__activities VALUES("1107","DR MADIHA","JPMC WARD 14","...","...","LUNCH","2100","1","07/11/2023","2023-11-28 10:02:51","2023-11-28 10:02:51");
INSERT INTO medicine__activities VALUES("1108","DR ZOHAIB","JPMC WARD 17 ORTHO","..","...","CASH","20000","1","07/11/2023","2023-11-28 10:05:08","2023-11-28 10:05:08");
INSERT INTO medicine__activities VALUES("1109","DR GURUDAS","CIVIL ORTHO 1","...","...","CASH","4000","1","07/11/2023","2023-11-28 10:07:47","2023-11-28 10:07:47");
INSERT INTO medicine__activities VALUES("1110","WAHEED & ZAHEER","CIVIL CHOWKI","...","...","CASH","2000","1","07/11/2023","2023-11-28 10:10:24","2023-11-28 10:10:24");
INSERT INTO medicine__activities VALUES("1111","DR KAREEM","CIVIL OPD INCHARGE","...","...","MEAT","2500","1","07/11/2023","2023-11-28 10:11:36","2023-11-28 10:11:36");
INSERT INTO medicine__activities VALUES("1112","DR JAMIL","DOW SAFORA","...","...","REFRESHMENT","1800","1","07/11/2023","2023-11-28 10:12:14","2023-11-28 10:12:14");
INSERT INTO medicine__activities VALUES("1113","DR HASNAIN","CIVIL ORTHO 2","...","...","DINNER","3550","1","07/11/2023","2023-11-28 10:13:00","2023-11-28 10:13:00");
INSERT INTO medicine__activities VALUES("1114","DR AMMAR","JPMC W 17 ORTHO","...","...","LUNCH","3000","1","07/11/2023","2023-11-28 10:13:38","2023-11-28 10:13:38");
INSERT INTO medicine__activities VALUES("1115","DR JAGDESH","CIVIL ORTHO WARD","...","...","REFRESHMENT","2500","1","07/11/2023","2023-11-28 10:14:22","2023-11-28 10:14:22");
INSERT INTO medicine__activities VALUES("1116","DR ASIF","CIVIL ORTHO 2","...","...","DINNER","2500","1","07/11/2023","2023-11-28 10:15:27","2023-11-28 10:15:27");
INSERT INTO medicine__activities VALUES("1117","DR HARIS","JPMC W 14 ORTHO","...","...","LUNCH","2500","1","07/11/2023","2023-11-28 10:16:19","2023-11-28 10:16:19");
INSERT INTO medicine__activities VALUES("1118","DR AZEEM KHOSO","JPMC WARD 14 ORTHO","...","...","DINNER","2500","1","07/11/2023","2023-11-28 10:17:14","2023-11-28 10:17:14");
INSERT INTO medicine__activities VALUES("1119","RIAZ PHARMA","...","...","...","CASH","18000","1","07/11/2023","2023-11-28 10:17:44","2023-11-28 10:17:44");
INSERT INTO medicine__activities VALUES("1120","DR NAZNEEN","ANKER SERYA","...","...","SUPER CARD","850","1","07/11/2023","2023-11-28 10:18:36","2023-11-28 10:18:36");
INSERT INTO medicine__activities VALUES("1121","DR MEER","JPMC WARD 17 ORTHO","...","....","LUNCH","3400","1","07/11/2023","2023-11-28 10:19:36","2023-11-28 10:19:36");
INSERT INTO medicine__activities VALUES("1122","DR MATIULLAH","JPMC WARD 17 ORTHO","....","...","DINNER","3000","1","07/11/2023","2023-11-28 10:20:53","2023-11-28 10:20:53");
INSERT INTO medicine__activities VALUES("1123","OPD","JPMC C 17","...","...","REFRESHMENT","1500","1","07/11/2023","2023-11-28 10:22:14","2023-11-28 10:22:14");
INSERT INTO medicine__activities VALUES("1124","DR WAQAR","CIVIL UNIT 1 ORTHO","..","..","DINNER","3000","1","07/11/2023","2023-11-28 10:24:34","2023-11-28 10:24:34");
INSERT INTO medicine__activities VALUES("1125","DR WAQAR","CIVIL UNIT 1","..","...","DINNER","3000","1","07/11/2023","2023-11-28 10:31:20","2023-11-28 10:31:20");
INSERT INTO medicine__activities VALUES("1126","DR TAHMOOR","CIVIL UNIT 2","...","...","DINNER","3200","1","07/11/2023","2023-11-28 10:33:21","2023-11-28 10:33:21");
INSERT INTO medicine__activities VALUES("1127","DR JUMA","HOSPITAL","...","...","REFRESHMENT","500","1","07/11/2023","2023-11-28 10:38:16","2023-11-28 10:38:16");
INSERT INTO medicine__activities VALUES("1128","DR DANISH","JPMC WARD 14","...","...","LUNCH","2700","1","07/11/2023","2023-11-28 10:39:25","2023-11-28 10:39:25");
INSERT INTO medicine__activities VALUES("1129","DR ARSALAN","JPMC WARD 14 ORTHO","..","...","DINNER","1700","1","07/11/2023","2023-11-28 10:42:05","2023-11-28 10:42:05");
INSERT INTO medicine__activities VALUES("1130","DR NASIR","TURAMA","...","...","CASH","1000","1","07/11/2023","2023-11-28 10:43:35","2023-11-28 10:43:35");
INSERT INTO medicine__activities VALUES("1131","DR NAZNEEN","ANKER SERYA","...","...","EGGS","1800","1","07/11/2023","2023-11-28 10:44:25","2023-11-28 10:44:25");
INSERT INTO medicine__activities VALUES("1132","DR MANAN","CIVIL UNIT 1 ORTHO","...","...","DINNER","2000","1","07/11/2023","2023-11-28 10:45:04","2023-11-28 10:45:04");
INSERT INTO medicine__activities VALUES("1133","DR SUBHAN","JPMC W 17 ORTHO","...","...","LUNCH","3000","1","07/11/2023","2023-11-28 10:46:12","2023-11-28 10:46:12");
INSERT INTO medicine__activities VALUES("1134","DR ZOHAIB","JPMC W 17 ORTHO","..","...","DINNER","3500","1","07/11/2023","2023-11-28 10:47:06","2023-11-28 10:47:06");
INSERT INTO medicine__activities VALUES("1135","DR NADIR","OPD","...","...","CASH","1500","1","07/11/2023","2023-11-28 10:47:35","2023-11-28 10:47:35");
INSERT INTO medicine__activities VALUES("1136","RIAZ PHARMA","...","...","...","CASH","5000","1","21/11/2023","2023-11-28 10:49:05","2023-11-28 10:49:05");
INSERT INTO medicine__activities VALUES("1137","DR NOMAN","WARD 17 JPMC","...","...","CASH","5000","1","21/11/2023","2023-11-28 10:50:30","2023-11-28 10:50:30");
INSERT INTO medicine__activities VALUES("1138","DR QASIM","...","...","...","DISPENSER INSTALMENT","7000","1","21/11/2023","2023-11-28 10:51:15","2023-11-28 10:51:15");
INSERT INTO medicine__activities VALUES("1139","DR AGHA WASEEM","JPMC 14","...","...","LUNCH","1950","1","21/11/2023","2023-11-28 10:52:08","2023-11-28 10:52:08");
INSERT INTO medicine__activities VALUES("1140","DR MAIRAJ","CIVIL 2","...","...","DINNER","2300","1","21/11/2023","2023-11-28 10:53:24","2023-11-28 10:53:24");
INSERT INTO medicine__activities VALUES("1141","OPD","CIVIL","...","...","REFRESHMENT","1500","1","21/11/2023","2023-11-28 10:54:10","2023-11-28 10:54:10");
INSERT INTO medicine__activities VALUES("1142","DR AMMAR","JPMC 17","...","...","LUNCH","3000","1","21/11/2023","2023-11-28 10:54:48","2023-11-28 10:54:48");
INSERT INTO medicine__activities VALUES("1143","IMRAN","CIVIL PHARMAX","...","...","CASH","3000","1","21/11/2023","2023-11-28 10:55:31","2023-11-28 10:55:31");
INSERT INTO medicine__activities VALUES("1144","DR IMTIAZ","JPMC 14","...","...","LUNCH","2900","1","21/11/2023","2023-11-28 10:56:25","2023-11-28 10:56:25");
INSERT INTO medicine__activities VALUES("1145","DR HARIS","JPMC 14","...","...","CASH","5000","1","21/11/2023","2023-11-28 10:57:06","2023-11-28 10:57:06");
INSERT INTO medicine__activities VALUES("1146","DR HARIS","JPMC 14","...","...","CASH","5000","1","21/11/2023","2023-11-28 10:57:07","2023-11-28 10:57:07");
INSERT INTO medicine__activities VALUES("1147","DR NAZNEEN","ANKER SERYA","...","....","EGGS","1800","1","21/11/2023","2023-11-28 10:58:05","2023-11-28 10:58:05");
INSERT INTO medicine__activities VALUES("1148","DR TARIQ","ORTHO UNIT 1","...","...","DINNER","2000","1","21/11/2023","2023-11-28 10:58:53","2023-11-28 10:58:53");
INSERT INTO medicine__activities VALUES("1149","DR SUBHAN","JPMC W 17","...","...","DINNER","3500","1","21/11/2023","2023-11-28 10:59:36","2023-11-28 10:59:36");
INSERT INTO medicine__activities VALUES("1150","DR ZOHAIB","JPMC W 17","...","...","DINNER","3500","1","21/11/2023","2023-11-28 11:00:54","2023-11-28 11:00:54");
INSERT INTO medicine__activities VALUES("1151","DR MAIRAJ","CIVIL 2","...","...","REGISTRATION","5000","1","21/11/2023","2023-11-28 11:01:32","2023-11-28 11:01:32");
INSERT INTO medicine__activities VALUES("1152","OPD","ORTHO 2 CIVIL","..","....","REFRESHMENT","600","1","21/11/2023","2023-11-28 11:02:26","2023-11-28 11:02:26");
INSERT INTO medicine__activities VALUES("1153","DR SHAHZAIB","CIVIL 2","...","...","...","5000","1","21/11/2023","2023-11-28 11:03:24","2023-11-28 11:03:24");
INSERT INTO medicine__activities VALUES("1154","DR AZEEM KHOSO","JPMC 14","...","....","DINNER","2500","1","21/11/2023","2023-11-28 11:04:04","2023-11-28 11:04:04");
INSERT INTO medicine__activities VALUES("1155","DR NAILA JOHAR","...","...","...","...","850","1","21/11/2023","2023-11-28 11:04:34","2023-11-28 11:04:34");
INSERT INTO medicine__activities VALUES("1156","DR ASIF","CIVIL 2","...","....","DINNER","2500","1","21/11/2023","2023-11-28 11:05:09","2023-11-28 11:05:09");
INSERT INTO medicine__activities VALUES("1157","DR PREM CHAND","ORTHO","...","...","DINNER","2500","1","21/11/2023","2023-11-28 11:06:17","2023-11-28 11:06:17");
INSERT INTO medicine__activities VALUES("1158","DR RAZIA KHOREJO","I-S-M HOSP","....","...","...","600","1","21/11/2023","2023-11-28 11:07:07","2023-11-28 11:07:07");
INSERT INTO medicine__activities VALUES("1159","DR FAYYAZ","ORTHO 1 CIVIL","...","...","...","2200","1","21/11/2023","2023-11-28 11:07:58","2023-11-28 11:07:58");
INSERT INTO medicine__activities VALUES("1160","DR MEER","JPMC","...","...","LUNCH","3500","1","21/11/2023","2023-11-28 11:08:31","2023-11-28 11:08:31");
INSERT INTO medicine__activities VALUES("1161","DR WALIULLAH","JPMC","...","...","DINNER","3000","1","21/11/2023","2023-11-28 11:10:00","2023-11-28 11:10:00");
INSERT INTO medicine__activities VALUES("1162","DR SAJJAD","CIVIL ORTHO 2","...","...","DINNER","3000","1","21/11/2023","2023-11-28 11:11:24","2023-11-28 11:11:24");
INSERT INTO medicine__activities VALUES("1163","DR DANISH","JPMC WARD 14","...","...","LUNCH","2000","1","21/11/2023","2023-11-28 11:12:01","2023-11-28 11:12:01");
INSERT INTO medicine__activities VALUES("1164","DR ARSALAN","JPMC WARD 14","...","...","DINNER","2000","1","21/11/2023","2023-11-28 11:12:37","2023-11-28 11:12:37");
INSERT INTO medicine__activities VALUES("1165","DR ASHFAQ","SERVICES HOS","...","PAGECAL/IROHEME","MOBILE INSTALMNT","10000","1","23/07/2023","2023-11-28 12:28:18","2023-11-28 12:28:18");
INSERT INTO medicine__activities VALUES("1166","...","GYNE WARD 3","...","....","OVEN INSTALMNT","6000","1","23/07/2023","2023-11-28 12:29:19","2023-11-28 12:29:19");
INSERT INTO medicine__activities VALUES("1167","DR NAZNEEN","GYNE/ ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","ISPHAGHOL","600","1","23/07/2023","2023-11-28 12:31:06","2023-11-28 12:31:06");
INSERT INTO medicine__activities VALUES("1168","DR FAYAZ","CIVIL ORTHO UNIT 1","...","PAGECAL","CASH","2400","1","23/07/2023","2023-11-28 12:32:08","2023-11-28 12:32:08");
INSERT INTO medicine__activities VALUES("1169","OPD","CIVIL","....","...","REFRESHMENT","450","1","23/07/2023","2023-11-28 12:33:05","2023-11-28 12:33:05");
INSERT INTO medicine__activities VALUES("1170","DR SAJJAD","CIVIL ORTHO UNIT 2","...","PAGECAL/IROHEME","DINNER","1850","1","23/07/2023","2023-11-28 12:34:08","2023-11-28 12:34:08");
INSERT INTO medicine__activities VALUES("1171","OPD","JPMC ORTHO","...","...","REFRESHMENT","1600","1","23/07/2023","2023-11-28 12:35:16","2023-11-28 12:35:16");
INSERT INTO medicine__activities VALUES("1172","LALA AURANGZAIB","...","...","...","CASH","10000","1","23/07/2023","2023-11-28 12:36:04","2023-11-28 12:36:04");
INSERT INTO medicine__activities VALUES("1173","DR MANAN","CIVIL ORTHO UNIT 1","...","PAGECAL/INFADOM","DINNER","2000","1","23/07/2023","2023-11-28 12:36:42","2023-11-28 12:36:42");
INSERT INTO medicine__activities VALUES("1174","OPD","CIVIL","...","...","REFRESHMENT","1000","1","23/07/2023","2023-11-28 12:37:24","2023-11-28 12:37:24");
INSERT INTO medicine__activities VALUES("1175","DR MEER","JPMC","...","...","LUNCH","3850","1","23/07/2023","2023-11-28 12:38:34","2023-11-28 12:38:34");
INSERT INTO medicine__activities VALUES("1176","DR WALIULLAH","JPMC","...","PAGECAL","DINNER","3000","1","23/07/2023","2023-11-28 12:40:03","2023-11-28 12:40:03");
INSERT INTO medicine__activities VALUES("1177","DR WALIULLAH","JPMC","...","PAGECAL","DINNER","3000","1","23/07/2023","2023-11-28 12:41:39","2023-11-28 12:41:39");
INSERT INTO medicine__activities VALUES("1178","...","...","...","...","PRINTING","5000","1","23/07/2023","2023-11-28 12:42:29","2023-11-28 12:42:29");
INSERT INTO medicine__activities VALUES("1179","DR SHAHZAIB","...","...","PAGECAL/INFADOM","ONLINE TRANSFER","2200","1","23/07/2023","2023-11-28 12:43:20","2023-11-28 12:43:20");
INSERT INTO medicine__activities VALUES("1180","DR KHADIJA","TIBRIS","...","....","CASH","9000","1","23/07/2023","2023-11-28 12:44:24","2023-11-28 12:44:24");
INSERT INTO medicine__activities VALUES("1181","DR PERVEZ","...","...","...","BOOKS","3000","1","23/07/2023","2023-11-28 12:45:31","2023-11-28 12:45:31");
INSERT INTO medicine__activities VALUES("1182","DR SUBHAN","PHARMAX+KAUSER","...","INFADOM","LUNCH","3000","1","21/11/2023","2023-11-28 12:46:49","2023-11-28 12:46:49");
INSERT INTO medicine__activities VALUES("1183","DR ZOHAIB","JPMC ORTHO","...","PAGECAL/INFADOM","DINNER","3500","1","23/07/2023","2023-11-28 12:47:35","2023-11-28 12:47:35");
INSERT INTO medicine__activities VALUES("1184","DR PREM CHAND","CIVIL ORTHO PHARMACY","...","PAGECAL","DINNER","2200","1","23/07/2023","2023-11-28 12:48:15","2023-11-28 12:48:15");
INSERT INTO medicine__activities VALUES("1185","DR SUNILA","...","...","...","PAPER BUNDLE 2","2700","1","23/07/2023","2023-11-28 12:48:51","2023-11-28 12:48:51");
INSERT INTO medicine__activities VALUES("1186","DR ASIF","CIVIL ORTHO /PHARMACY","...","PAGECAL","DINNER","1700","1","23/07/2023","2023-11-28 12:50:19","2023-11-28 12:50:19");
INSERT INTO medicine__activities VALUES("1187","DR NASIR SOMROO","PHARMAX +AD+AM","...","PAGECAL","LUNCH","3700","1","23/07/2023","2023-11-28 12:51:17","2023-11-28 12:51:17");
INSERT INTO medicine__activities VALUES("1188","DR SHARJEEL","JPMC ORTHO","...","PAGECAL/INFADOM","DINNER","3000","1","23/07/2023","2023-11-28 12:52:02","2023-11-28 12:52:02");
INSERT INTO medicine__activities VALUES("1189","DR WAQAR","CIVIL ORTHO","...","PAGECAL/INFADOM","DINNER","2500","1","23/07/2023","2023-11-28 12:52:41","2023-11-28 12:52:41");
INSERT INTO medicine__activities VALUES("1190","DR NAZNEEN","GYNE ANKEL SERYA","...","FALNUE/IROHEME/PAGECAL","LED","4000","1","23/07/2023","2023-11-28 12:53:49","2023-11-28 12:53:49");
INSERT INTO medicine__activities VALUES("1191","DR NOMAN BAIG","...","...","...","ONLINE TRANSFER","5000","1","31/07/2023","2023-11-28 14:55:54","2023-11-28 14:55:54");
INSERT INTO medicine__activities VALUES("1192","OPD","JPMC","..","...","REFRESHMENT","800","1","31/07/2023","2023-11-28 14:57:09","2023-11-28 14:57:09");
INSERT INTO medicine__activities VALUES("1193","DR MATIULLAH","JPMC WARD","...","PAGECAL/INFADOM","LUNCH","3500","1","31/07/2023","2023-11-28 14:58:10","2023-11-28 14:58:10");
INSERT INTO medicine__activities VALUES("1194","DR WALIUULAH","JPMC WARD 17","...","PAGECAL/INFADOM","DINNER","3000","1","31/07/2023","2023-11-28 14:58:52","2023-11-28 14:58:52");
INSERT INTO medicine__activities VALUES("1195","OPD","CIVIL","...","...","REFRESHMENT","700","1","31/07/2023","2023-11-28 14:59:33","2023-11-28 14:59:33");
INSERT INTO medicine__activities VALUES("1196","DR MANAN","CIVIL WARD 1","...","PAGECAL/INFADOM","DINNER","2500","1","31/07/2023","2023-11-28 15:00:32","2023-11-28 15:00:32");
INSERT INTO medicine__activities VALUES("1197","DR RAFIQ","SERVICES HOSPTAL","...","PAGECAL","OT DRESS","2500","1","31/07/2023","2023-11-28 15:01:40","2023-11-28 15:01:40");
INSERT INTO medicine__activities VALUES("1198","...","...","...","...","PRINTER BILL","5000","1","31/07/2023","2023-11-28 15:02:32","2023-11-28 15:02:32");
INSERT INTO medicine__activities VALUES("1199","DR SAJJAD","CIVIL WARD 3","...","PAGECAL","DINNER","1500","1","31/07/2023","2023-11-28 15:03:27","2023-11-28 15:03:27");
INSERT INTO medicine__activities VALUES("1200","DR MEER","OPD JPMC","..","...","EXPENSES","2000","1","31/07/2023","2023-11-28 15:04:28","2023-11-28 15:04:28");
INSERT INTO medicine__activities VALUES("1201","DR RAIZ LAKHO","CIVIL OPD","..","...","REFRESHMENT","1000","1","31/07/2023","2023-11-28 15:05:35","2023-11-28 15:05:35");
INSERT INTO medicine__activities VALUES("1202","DR ZOHAIB","JPMC","...","PAGECAL/INFADOM","LUNCH","3000","1","31/07/2023","2023-11-28 15:06:22","2023-11-28 15:06:22");
INSERT INTO medicine__activities VALUES("1203","DR QASIM","JPMC","...","....","DINNER","3000","1","31/07/2023","2023-11-28 15:06:56","2023-11-28 15:06:56");
INSERT INTO medicine__activities VALUES("1204","...","CIVIL WARD 1","...","...","LUNCH","9700","1","31/07/2023","2023-11-28 15:07:38","2023-11-28 15:07:38");
INSERT INTO medicine__activities VALUES("1205","SAJJAD","CIVIL WARD 2","...","...","...","1800","1","31/07/2023","2023-11-28 15:08:13","2023-11-28 15:08:13");
INSERT INTO medicine__activities VALUES("1206","DR SHARJEEL","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3700","1","31/07/2023","2023-11-28 15:09:16","2023-11-28 15:09:16");
INSERT INTO medicine__activities VALUES("1207","DR TAHMOOR","CIVIL WARD 2","...","PAGECAL/INFADOM","DINNER","1800","1","31/07/2023","2023-11-28 15:10:10","2023-11-28 15:10:10");
INSERT INTO medicine__activities VALUES("1208","DR NAZEEN","GYNE/ANKEL SARYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","31/07/2023","2023-11-28 15:11:03","2023-11-28 15:11:03");
INSERT INTO medicine__activities VALUES("1209","DR WAQAR","CIVIL UNIT 1","...","PAGECAL","DINNER","2000","1","31/07/2023","2023-11-28 15:11:46","2023-11-28 15:11:46");
INSERT INTO medicine__activities VALUES("1210","DR LAL MALIK","JPMC WARD 17","...","PAGECAL/INFADOM","DINNER","3000","1","31/07/2023","2023-11-28 15:12:26","2023-11-28 15:12:26");
INSERT INTO medicine__activities VALUES("1211","DR ALI","CIVIL","...","...","REFRESHMENT","700","1","31/07/2023","2023-11-28 15:12:57","2023-11-28 15:12:57");
INSERT INTO medicine__activities VALUES("1212","AURANGZAIB LALA","CIVIL","...","...","CASH","5000","1","07/08/2023","2023-11-28 15:16:35","2023-11-28 15:16:35");
INSERT INTO medicine__activities VALUES("1213","DR MANAN","CIVIL WARD 1","...","PAGECAL/INFADOM","DINNER","2000","1","07/08/2023","2023-11-28 15:17:41","2023-11-28 15:17:41");
INSERT INTO medicine__activities VALUES("1214","DR JAGDESH","CIVIL OPD","...","PAGECAL","REFRESHMENT","1100","1","07/08/2023","2023-11-28 15:21:08","2023-11-28 15:21:08");
INSERT INTO medicine__activities VALUES("1215","DR MEER","JPMC WARD 17","...","...","LUNCH","3200","1","07/08/2023","2023-11-28 15:21:57","2023-11-28 15:21:57");
INSERT INTO medicine__activities VALUES("1216","DR MATILULLAH","JPMC WARD 17","...","PAGECAL/INFADOM","DINNER","3000","1","31/07/2023","2023-11-28 15:22:44","2023-11-28 15:22:44");
INSERT INTO medicine__activities VALUES("1217","DR WALIULLAH","JPMC WARD 17","...","PAGECAL/INFADOM","PERSONAL ACTIVITY","7500","1","07/08/2023","2023-11-28 15:24:18","2023-11-28 15:24:18");
INSERT INTO medicine__activities VALUES("1218","OPD","JPMC","...","...","REFRESHMENT","750","1","07/08/2023","2023-11-28 15:25:04","2023-11-28 15:25:04");
INSERT INTO medicine__activities VALUES("1219","OPD","CIVIL","...","...","REFRESHMENT","1000","1","07/08/2023","2023-11-28 15:25:48","2023-11-28 15:25:48");
INSERT INTO medicine__activities VALUES("1220","...","...","....","...","STAFF LUNCH","1200","1","07/08/2023","2023-11-28 15:27:48","2023-11-28 15:27:48");
INSERT INTO medicine__activities VALUES("1221","DR ZOHAIB/DR SARFRAZ","JPMC 17","...","PAGECAL/INFADOM","FAREWELL LUNCH","35205","1","07/08/2023","2023-11-28 15:30:06","2023-11-28 15:30:06");
INSERT INTO medicine__activities VALUES("1222","DR SHAHZAIB","CIVIL WARD 2","....","...","ONLINE TRANSFER","10000","1","07/08/2023","2023-11-28 15:31:21","2023-11-28 15:31:21");
INSERT INTO medicine__activities VALUES("1223","WAHEED & ZAHEER","...","...","...","POLICE CHOWKI","2000","1","07/08/2023","2023-11-28 15:32:09","2023-11-28 15:32:09");
INSERT INTO medicine__activities VALUES("1224","DR WAQAR","CIVIL","...","PAGECAL","BREAK FAST","2200","1","07/08/2023","2023-11-28 15:33:15","2023-11-28 15:33:15");
INSERT INTO medicine__activities VALUES("1225","DR ASIF","UNIT ORTHO 2","...","PAGECAL","DINNER","2000","1","07/08/2023","2023-11-28 15:34:03","2023-11-28 15:34:03");
INSERT INTO medicine__activities VALUES("1226","DR TAHMOOR","UNIT ORTHO 2","...","PAGECAL","DINNER","2000","1","07/08/2023","2023-11-28 15:35:23","2023-11-28 15:35:23");
INSERT INTO medicine__activities VALUES("1227","OPD","CIVIL UNIT 2","...","....","REFRESHMENT","500","1","07/08/2023","2023-11-28 15:36:48","2023-11-28 15:36:48");
INSERT INTO medicine__activities VALUES("1228","OPD","JPMC","...","...","REFRESHMENT","1200","1","07/08/2023","2023-11-28 15:38:13","2023-11-28 15:38:13");
INSERT INTO medicine__activities VALUES("1229","DR SUBHAN","JPMC","...","PAGECAL/INFADOM","LUNCH","3000","1","07/08/2023","2023-11-28 15:39:01","2023-11-28 15:39:01");
INSERT INTO medicine__activities VALUES("1230","DR ZOHAIB","JPMC","...","PAGECAL/INFADOM","DINNER","3500","1","07/08/2023","2023-11-28 15:40:12","2023-11-28 15:40:12");
INSERT INTO medicine__activities VALUES("1231","DR LAL MALIK","JPMC ORTHO","...","PAGECAL","LUNCH","3000","1","07/08/2023","2023-11-28 15:41:11","2023-11-28 15:41:11");
INSERT INTO medicine__activities VALUES("1232","DR HASNAIN","L ORTHO /PHARMAY","...","PAGECAL/INFADOM","DINNER","2500","1","07/08/2023","2023-11-28 15:42:19","2023-11-28 15:42:19");
INSERT INTO medicine__activities VALUES("1233","DR RAHIL","JPMC WARD 17","..","....","LUNCH","1000","1","07/08/2023","2023-11-28 15:43:08","2023-11-28 15:43:08");
INSERT INTO medicine__activities VALUES("1234","DR SHARJEEL","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3300","1","07/08/2023","2023-11-28 15:44:03","2023-11-28 15:44:03");
INSERT INTO medicine__activities VALUES("1235","DR LAL MALIK","JPMC ORTHO","...","PAGECAL","DINNER","3000","1","07/08/2023","2023-11-28 15:46:27","2023-11-28 15:46:27");
INSERT INTO medicine__activities VALUES("1236","DR TARIQ","CIVIL ORTHO 1","...","PAGECAL/INFADOM","DINNER","2000","1","07/08/2023","2023-11-28 15:47:59","2023-11-28 15:47:59");
INSERT INTO medicine__activities VALUES("1237","DR NAZNEEN","ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","07/08/2023","2023-11-28 15:49:01","2023-11-28 15:49:01");
INSERT INTO medicine__activities VALUES("1238","DR AGHA WASEEM","JPMC ORTHO","...","PAGECAL","LUNCH","1600","1","07/08/2023","2023-11-28 15:49:55","2023-11-28 15:49:55");
INSERT INTO medicine__activities VALUES("1239","...","....","....","....","STAFF LUNCH","1000","1","07/08/2023","2023-11-28 15:50:36","2023-11-28 15:50:36");
INSERT INTO medicine__activities VALUES("1240","RAIZ BAHE","PHARMAX","...","...","ADJUSTMENT","17500","1","08/08/2023","2023-11-28 15:57:12","2023-11-28 15:57:12");
INSERT INTO medicine__activities VALUES("1241","NASIR","CIVIL GUARD","...","....","TAURAMA","1000","1","08/08/2023","2023-11-28 15:58:32","2023-11-28 15:58:32");
INSERT INTO medicine__activities VALUES("1242","DR NOMAN","JPMC WARD 17","...","PAGECAL/INFADOM","CASH","5000","1","08/08/2023","2023-11-28 16:00:48","2023-11-28 16:00:48");
INSERT INTO medicine__activities VALUES("1243","DR ASIF","CIVIL","...","PAGECAL","DINNER","2000","1","08/08/2023","2023-11-28 16:01:38","2023-11-28 16:01:38");
INSERT INTO medicine__activities VALUES("1244","OPD","JPMC","...","...","REFRESHMENT","750","1","08/08/2023","2023-11-28 16:02:24","2023-11-28 16:02:24");
INSERT INTO medicine__activities VALUES("1245","OPD","CIVIL","...","...","REFRESHMENT","500","1","08/08/2023","2023-11-28 16:03:22","2023-11-28 16:03:22");
INSERT INTO medicine__activities VALUES("1246","DR TARIQ","PG CIVIL","...","PAGECAL/INFADOM","WORLSHOP FEES","5500","1","08/08/2023","2023-11-28 16:04:29","2023-11-28 16:04:29");
INSERT INTO medicine__activities VALUES("1247","OPD","CIVIL WARD 1","...","...","REFRESHMENT","1100","1","08/08/2023","2023-11-28 16:05:12","2023-11-28 16:05:12");
INSERT INTO medicine__activities VALUES("1248","...","...","...","...","BADGES NEW AUGUST","1500","1","08/08/2023","2023-11-28 16:06:18","2023-11-28 16:06:18");
INSERT INTO medicine__activities VALUES("1249","DR WALIULLAH","JPMC WARD 17","...","PAGECAL/INFADOM","DINNER","3000","1","08/08/2023","2023-11-28 16:07:12","2023-11-28 16:07:12");
INSERT INTO medicine__activities VALUES("1250","DR PREM CHAND","CIVIL WARD 1","..","PAGECAL/INFADOM","DINNER","2500","1","08/08/2023","2023-11-28 16:08:55","2023-11-28 16:08:55");
INSERT INTO medicine__activities VALUES("1251","OPD","CIVIL","...","...","...","500","1","08/08/2023","2023-11-28 16:09:56","2023-11-28 16:09:56");
INSERT INTO medicine__activities VALUES("1252","DR QMAR ABBAS","...","....","FALNUE/IROHEME/PAGECAL","CURTAIN REMAINING BILL","6600","1","08/08/2023","2023-11-28 16:11:04","2023-11-28 16:11:04");
INSERT INTO medicine__activities VALUES("1253","...","PHARMAX BOYS","...","...","LUNCH","2000","1","08/08/2023","2023-11-28 16:11:50","2023-11-28 16:11:50");
INSERT INTO medicine__activities VALUES("1254","DR SUBHAN","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3000","1","08/08/2023","2023-11-28 16:12:55","2023-11-28 16:12:55");
INSERT INTO medicine__activities VALUES("1255","DR ZOHAIB","JPMC WARD 17","....","PAGECAL/INFADOM","DINNER","3500","1","08/08/2023","2023-11-28 16:13:43","2023-11-28 16:13:43");
INSERT INTO medicine__activities VALUES("1256","DR RAHIL","JPMC WARD 17","...","...","REFRESHMENT","700","1","08/08/2023","2023-11-28 16:15:34","2023-11-28 16:15:34");
INSERT INTO medicine__activities VALUES("1257","DR MUZAMIL","SERVICES HOSPITAL","...","...","GIFT ITEM","1500","1","08/08/2023","2023-11-28 16:16:45","2023-11-28 16:16:45");
INSERT INTO medicine__activities VALUES("1258","DR NAZNEEN","GYNE/ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","2300","1","08/08/2023","2023-11-28 16:17:45","2023-11-28 16:17:45");
INSERT INTO medicine__activities VALUES("1259","DR AGHA WASEEM","JPMC WARD 14","...","PAGECAL","...","1500","1","08/08/2023","2023-11-28 16:20:07","2023-11-28 16:20:07");
INSERT INTO medicine__activities VALUES("1260","DR SAJJAD","CIVIL","..","PAGECAL","DINNER","2000","1","08/08/2023","2023-11-28 16:21:30","2023-11-28 16:21:30");
INSERT INTO medicine__activities VALUES("1261","DR MATIULLAH","WARD 17 PHARMAX","...","PAGECAL/INFADOM","LUNCH","3000","1","08/08/2023","2023-11-28 16:22:24","2023-11-28 16:22:24");
INSERT INTO medicine__activities VALUES("1262","DR SHARJEEL","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3000","1","08/08/2023","2023-11-28 16:23:20","2023-11-28 16:23:20");
INSERT INTO medicine__activities VALUES("1263","DR RIAZ","TRAUMA","...","...","OT DRESS","2500","1","08/08/2023","2023-11-28 16:23:58","2023-11-28 16:23:58");
INSERT INTO medicine__activities VALUES("1264","...","GYNE/WARD 3","...","...","OVEN INSTALMNT","6000","1","08/08/2023","2023-11-28 16:26:09","2023-11-28 16:26:09");
INSERT INTO medicine__activities VALUES("1265","DR QASIM","JPMC ORTHO","...","...","WATER DISPENSER ADVNCE","7000","1","08/08/2023","2023-11-28 16:28:05","2023-11-28 16:28:05");
INSERT INTO medicine__activities VALUES("1266","DR PIYAR E ALI MOMIN","F.I.N M/S","...","HAIRPLEA","LED INSTALMNT","12000","1","15/8/2023","2023-11-28 16:40:13","2023-11-28 16:40:13");
INSERT INTO medicine__activities VALUES("1267","AURANGZAIB LALA","CIVIL","...","...","CASH","10000","1","15/8/2023","2023-11-28 16:41:02","2023-11-28 16:41:02");
INSERT INTO medicine__activities VALUES("1268","DR IMTIAZ","WARD 14","...","...","LUNCH","2500","1","15/8/2023","2023-11-28 16:42:15","2023-11-28 16:42:15");
INSERT INTO medicine__activities VALUES("1269","DR SHAHZAIB","CIVIL WARD 2","...","PAGECAL/INFADOM","DINNER","2500","1","15/8/2023","2023-11-28 16:43:11","2023-11-28 16:43:11");
INSERT INTO medicine__activities VALUES("1270","DR SAJJAD","OPD CIVIL","...","...","REFRESHMENT","500","1","15/8/2023","2023-11-28 16:45:49","2023-11-28 16:45:49");
INSERT INTO medicine__activities VALUES("1271","DR JAGDSH","CIVIL WARD 1","....","PAGECAL","OPD","1800","1","15/8/2023","2023-11-28 16:46:40","2023-11-28 16:46:40");
INSERT INTO medicine__activities VALUES("1272","DR MATIULLAH","JPMC 17","...","PAGECAL/INFADOM","LUNCH","3100","1","15/8/2023","2023-11-28 16:50:36","2023-11-28 16:50:36");
INSERT INTO medicine__activities VALUES("1273","DR WALIULLAH","JPMC 17","...","PAGECAL/INFADOM","DINNER","3000","1","15/8/2023","2023-11-28 16:53:52","2023-11-28 16:53:52");
INSERT INTO medicine__activities VALUES("1274","DR PREM CHAND","CIVIL WARD 1","...","PAGECAL/INFADOM","DINNER","2000","1","15/8/2023","2023-11-28 16:55:05","2023-11-28 16:55:05");
INSERT INTO medicine__activities VALUES("1275","ANWAR MAMA","CIVIL","...","...","POLICE CHOWKI","1000","1","15/8/2023","2023-11-28 16:56:33","2023-11-28 16:56:33");
INSERT INTO medicine__activities VALUES("1276","DR ASIF","CIVIL WARD 2","...","PAGECAL","DINNER","2500","1","15/8/2023","2023-11-28 16:57:26","2023-11-28 16:57:26");
INSERT INTO medicine__activities VALUES("1277","DR TARIQ","WARD 2","...","PAGECAL/INFADOM","WARD ACTIVITY","1500","1","15/8/2023","2023-11-28 17:14:15","2023-11-28 17:14:15");
INSERT INTO medicine__activities VALUES("1278","DR SHAHZAIB","OPD WARD 2","...","PAGECAL/INFADOM","REFRESHMENT","500","1","15/8/2023","2023-11-28 17:15:09","2023-11-28 17:15:09");
INSERT INTO medicine__activities VALUES("1279","DR ASIF","CIVIL WARD 2","...","PAGECAL","DINNER","2500","1","15/8/2023","2023-11-29 10:07:33","2023-11-29 10:07:33");
INSERT INTO medicine__activities VALUES("1280","DR TARIQ","WARD 2","...","PAGECAL/INFADOM","WARD ACTIVITY","1500","1","15/8/2023","2023-11-29 10:08:27","2023-11-29 10:08:27");
INSERT INTO medicine__activities VALUES("1281","DR SHAHZAIB","OPD WARD 2","...","PAGECAL/INFADOM","CASH","500","1","15/8/2023","2023-11-29 10:09:08","2023-11-29 10:09:08");
INSERT INTO medicine__activities VALUES("1282","DR SUBHAN","WARD 17 JPMC","...","PAGECAL/INFADOM","LUNCH","3000","1","15/8/2023","2023-11-29 10:10:11","2023-11-29 10:10:11");
INSERT INTO medicine__activities VALUES("1283","DR ZOHAIB","WARD 17","...","PAGECAL/INFADOM","DINNER","3500","1","15/8/2023","2023-11-29 10:11:21","2023-11-29 10:11:21");
INSERT INTO medicine__activities VALUES("1284","DR WAQAR","CIVIL WARD 2","...","PAGECAL","DINNER","2100","1","15/8/2023","2023-11-29 10:12:12","2023-11-29 10:12:12");
INSERT INTO medicine__activities VALUES("1285","DR RAHIL","WARD 17 JPMC","...","...","REFRESHMENT","1600","1","15/8/2023","2023-11-29 10:12:51","2023-11-29 10:12:51");
INSERT INTO medicine__activities VALUES("1286","DR JAMILA RAJPAR","SERVICES HOSPITAL","...","PAGECAL/FALNUE","BOUQUET","1000","1","15/8/2023","2023-11-29 10:13:39","2023-11-29 10:13:39");
INSERT INTO medicine__activities VALUES("1287","DR DANISH","JPMC 14","...","PAGECAL/FALNUE","LUNCH","2200","1","15/8/2023","2023-11-29 10:14:59","2023-11-29 10:14:59");
INSERT INTO medicine__activities VALUES("1288","DR ASMA SAMI","GULISTAN E JOHAR","...","CRANDOM/IROHEME","ADVANCE PRINTING","12000","1","15/8/2023","2023-11-29 10:16:07","2023-11-29 10:16:07");
INSERT INTO medicine__activities VALUES("1289","DR SAJJAD","CIVIL WARD 2","...","PAGECAL","DINNER","1800","1","15/8/2023","2023-11-29 10:17:05","2023-11-29 10:17:05");
INSERT INTO medicine__activities VALUES("1290","DR ZAIN /DR RAHIL","JPMCWARD 17","...","...","REFRESHMENT","1200","1","15/8/2023","2023-11-29 10:17:46","2023-11-29 10:17:46");
INSERT INTO medicine__activities VALUES("1291","DR MANA","CIVIL WARD 1","...","PAGECAL/INFADOM","LAST MONDAY DINNER","2000","1","15/8/2023","2023-11-29 10:19:04","2023-11-29 10:19:04");
INSERT INTO medicine__activities VALUES("1292","DR JAGDESH","OPD CIVIL WARD 1","...","PAGECAL","REFRESHMENT","1000","1","15/8/2023","2023-11-29 10:19:51","2023-11-29 10:19:51");
INSERT INTO medicine__activities VALUES("1293","DR MANSOOR","UROLOGY KORANGYI","...","CRANDOM","PENEFLEX","1000","1","15/8/2023","2023-11-29 10:20:36","2023-11-29 10:20:36");
INSERT INTO medicine__activities VALUES("1294","DR MANAN","CIVIL WARD 1","....","PAGECAL/INFADOM","TONIGHT DINNER","2000","1","15/8/2023","2023-11-29 10:21:27","2023-11-29 10:21:27");
INSERT INTO medicine__activities VALUES("1295","DR NAZNEEN","GYNE/ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","15/8/2023","2023-11-29 10:22:59","2023-11-29 10:22:59");
INSERT INTO medicine__activities VALUES("1296","DR SHARJEEL","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3500","1","15/8/2023","2023-11-29 10:23:45","2023-11-29 10:23:45");
INSERT INTO medicine__activities VALUES("1297","RIAZ UDDIN KHAWAJA","...","...","...","ONLINE TRANSFER","5000","1","22/08/2023","2023-11-29 10:34:22","2023-11-29 10:34:22");
INSERT INTO medicine__activities VALUES("1298","DR NOMAN","JPMC 17","...","PAGECAL/INFADOM","CASH","5000","1","22/08/2023","2023-11-29 10:35:00","2023-11-29 10:35:00");
INSERT INTO medicine__activities VALUES("1299","DR IMTIAZ","WARD 14","...","...","LUNCH","2500","1","22/08/2023","2023-11-29 10:35:39","2023-11-29 10:35:39");
INSERT INTO medicine__activities VALUES("1300","DR AZEEM","JPMC 14","...","...","DINNER","2000","1","22/08/2023","2023-11-29 10:36:42","2023-11-29 10:36:42");
INSERT INTO medicine__activities VALUES("1301","DR IQBAL KIYANI","TAJ COMPLEX","...","IROHEME/PAGECAL/FALNUE","AC INSTALMENT","24000","1","22/08/2023","2023-11-29 10:38:27","2023-11-29 10:38:27");
INSERT INTO medicine__activities VALUES("1302","DR ASIF","CIVIL WARD 2","....","PAGECAL","DINNER","2200","1","22/08/2023","2023-11-29 10:39:20","2023-11-29 10:39:20");
INSERT INTO medicine__activities VALUES("1303","DR ASIF","CIVIL WARD 2","....","PAGECAL","DINNER","2200","1","22/08/2023","2023-11-29 10:40:34","2023-11-29 10:40:34");
INSERT INTO medicine__activities VALUES("1304","DR ALI AKRAM","CIVIL WARD OPD","...","PAGECAL","REFRESHMENT","600","1","22/08/2023","2023-11-29 10:41:16","2023-11-29 10:41:16");
INSERT INTO medicine__activities VALUES("1305","DR ALI RAZA","CIVIL WARD 1","...","PAGECAL/INFADOM","OPD ACTIVITY","3000","1","22/08/2023","2023-11-29 10:42:07","2023-11-29 10:42:07");
INSERT INTO medicine__activities VALUES("1306","DR MEER","JPMC 17","...","PAGECAL","LUNCH","3000","1","22/08/2023","2023-11-29 10:44:36","2023-11-29 10:44:36");
INSERT INTO medicine__activities VALUES("1307","DR MATILULLAH","JPMC 17","...","PAGECAL/INFADOM","DINNER","3000","1","22/08/2023","2023-11-29 10:45:23","2023-11-29 10:45:23");
INSERT INTO medicine__activities VALUES("1308","DR RAHEEL","JPMC","...","...","CASH","900","1","22/08/2023","2023-11-29 10:45:51","2023-11-29 10:45:51");
INSERT INTO medicine__activities VALUES("1309","DR SANGITA","MOTHER CARE","...","PAGECAL/FALNUE","REFRESHMENT","1100","1","22/08/2023","2023-11-29 10:46:52","2023-11-29 10:46:52");
INSERT INTO medicine__activities VALUES("1310","DR UMAIR","CIVIL OPD","...","PAGECAL","REFRESHMENT","500","1","22/08/2023","2023-11-29 10:47:27","2023-11-29 10:47:27");
INSERT INTO medicine__activities VALUES("1311","DR SAJJAD","CIVIL UNIT 2","...","PAGECAL","BOOKS","800","1","22/08/2023","2023-11-29 10:48:27","2023-11-29 10:48:27");
INSERT INTO medicine__activities VALUES("1312","DR ASMA SAMI","SAFURA","...","IROHEME/PAGECAL/FALNUE","PRINTING","15000","1","22/08/2023","2023-11-29 10:50:10","2023-11-29 10:50:10");
INSERT INTO medicine__activities VALUES("1313","DR SHAHZAIB","CIVIL WARD 2","...","PAGECAL","DINNER","2500","1","22/08/2023","2023-11-29 10:51:42","2023-11-29 10:51:42");
INSERT INTO medicine__activities VALUES("1314","DR REHMAN","JPMC 17","...","PAGECAL/INFADOM","CASH","10000","1","22/08/2023","2023-11-29 10:52:22","2023-11-29 10:52:22");
INSERT INTO medicine__activities VALUES("1315","DR SUBHAN","JPMC 17","...","PAGECAL/INFADOM","LUNCH","3000","1","22/08/2023","2023-11-29 10:53:38","2023-11-29 10:53:38");
INSERT INTO medicine__activities VALUES("1316","DR ZOHAIB","JPMC 17","...","PAGECAL/INFADOM","DINNER","3500","1","22/08/2023","2023-11-29 10:54:19","2023-11-29 10:54:19");
INSERT INTO medicine__activities VALUES("1317","DR MAQSOOD","AL TIBRI HOSP","...","PAGECAL/INFADOM","CASH","20000","1","22/08/2023","2023-11-29 10:55:15","2023-11-29 10:55:15");
INSERT INTO medicine__activities VALUES("1318","DR AGHA WASEEM","JPMC 14","...","PAGECAL","LUNCH","2500","1","22/08/2023","2023-11-29 10:56:00","2023-11-29 10:56:00");
INSERT INTO medicine__activities VALUES("1319","DR SAJJAD","CIVIL WARD 2","...","PAGECAL","DINNER","2500","1","22/08/2023","2023-11-29 10:56:43","2023-11-29 10:56:43");
INSERT INTO medicine__activities VALUES("1320","DR UMAIR SIDDIQUE","CIVIL UNIT 2","...","PAGECAL/INFADOM","BOOKS","1800","1","22/08/2023","2023-11-29 10:57:49","2023-11-29 10:57:49");
INSERT INTO medicine__activities VALUES("1321","DR NOMAN","JPMC 17","...","PAGECAL","LUNCH","3000","1","22/08/2023","2023-11-29 10:58:30","2023-11-29 10:58:30");
INSERT INTO medicine__activities VALUES("1322","DR ZOHAIB","JPMC 17","...","PAGECAL/INFADOM","DINNER","3000","1","22/08/2023","2023-11-29 10:59:07","2023-11-29 10:59:07");
INSERT INTO medicine__activities VALUES("1323","DR M A QURESHI","CIVIL OPD","...","PAGECAL","FISH ACTIVITY","8500","1","22/08/2023","2023-11-29 10:59:57","2023-11-29 10:59:57");
INSERT INTO medicine__activities VALUES("1324","DR SHARJEEL","JPMC 17","...","PAGECAL/INFADOM","LUNCH","3000","1","22/08/2023","2023-11-29 11:00:44","2023-11-29 11:00:44");
INSERT INTO medicine__activities VALUES("1325","DR NAZNEEN","GYNE/ANKER SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","22/08/2023","2023-11-29 11:01:24","2023-11-29 11:01:24");
INSERT INTO medicine__activities VALUES("1326","DR MANAN","CIVIL WARD 2","...","PAGECAL/INFADOM","DINNER","2000","1","22/08/2023","2023-11-29 11:02:03","2023-11-29 11:02:03");
INSERT INTO medicine__activities VALUES("1327","DR SUBHAN","JPMC 17","...","PAGECAL/INFADOM","BOOK","3000","1","29/8/2023","2023-11-29 11:11:20","2023-11-29 11:11:20");
INSERT INTO medicine__activities VALUES("1328","DR IMTIAZ","JPMC 14","..","PAGECAL/INFADOM","LUNCH","2000","1","29/8/2023","2023-11-29 11:12:52","2023-11-29 11:12:52");
INSERT INTO medicine__activities VALUES("1329","DR AZEEM","JPMC 14","...","PAGECAL/INFADOM","DINNER","2500","1","29/8/2023","2023-11-29 11:15:46","2023-11-29 11:15:46");
INSERT INTO medicine__activities VALUES("1330","OPD","JPMC 17","...","...","REFRESHMENT","1000","1","29/8/2023","2023-11-29 11:16:39","2023-11-29 11:16:39");
INSERT INTO medicine__activities VALUES("1331","OPD","CIVIL WARD 1","...",".....","REFRESHMENT","500","1","29/8/2023","2023-11-29 11:17:21","2023-11-29 11:17:21");
INSERT INTO medicine__activities VALUES("1332","DR ASIF","CIVIL WARD 2","...","PAGECAL","DINNER","2500","1","29/8/2023","2023-11-29 11:18:09","2023-11-29 11:18:09");
INSERT INTO medicine__activities VALUES("1333","DR HASNAIN","WARD 1","...","PAGECAL/INFADOM","DINNER","2500","1","29/8/2023","2023-11-29 11:18:51","2023-11-29 11:18:51");
INSERT INTO medicine__activities VALUES("1334","DR MATIULLAH","JPMC 17","...","PAGECAL/INFADOM","LUNCH","3000","1","29/8/2023","2023-11-29 11:19:38","2023-11-29 11:19:38");
INSERT INTO medicine__activities VALUES("1335","DR WALIULLAH","JPMC 17","...","PAGECAL/INFADOM","DINNER","3000","1","29/8/2023","2023-11-29 11:20:42","2023-11-29 11:20:42");
INSERT INTO medicine__activities VALUES("1336","DR MEER","CAMPBELL ORTHOPEDIC","...","PAGECAL/INFADOM","BOOKS","13000","1","29/8/2023","2023-11-29 11:21:31","2023-11-29 11:21:31");
INSERT INTO medicine__activities VALUES("1337","DR RAHIL","JPMC 17","...","...","REFRESHMENT","1500","1","29/8/2023","2023-11-29 11:22:23","2023-11-29 11:22:23");
INSERT INTO medicine__activities VALUES("1338","DRS","OPD WARD 1","...","...","REFRESHMENT","1000","1","29/8/2023","2023-11-29 11:23:02","2023-11-29 11:23:02");
INSERT INTO medicine__activities VALUES("1339","DR RASIA","GYNE WARD 3 CIVIL","...","IROHEME","DINNER","1500","1","29/8/2023","2023-11-29 11:23:48","2023-11-29 11:23:48");
INSERT INTO medicine__activities VALUES("1340","DR DANISH","JPMC 14","...","...","LUNCH","2000","1","29/8/2023","2023-11-29 11:24:27","2023-11-29 11:24:27");
INSERT INTO medicine__activities VALUES("1341","DR MARIYUM","CIVIL WARD 2 OPD","...","FALNUE/IROHEME/PAGECAL","REFRESHMENT","750","1","29/8/2023","2023-11-29 11:25:57","2023-11-29 11:25:57");
INSERT INTO medicine__activities VALUES("1342","DR WAQAR","CIVIL WARD 1","...","PAGECAL","AC REPAIR","2500","1","29/8/2023","2023-11-29 11:26:36","2023-11-29 11:26:36");
INSERT INTO medicine__activities VALUES("1343","KAREEM","SECURITY GUARD","...","...","MUTTON KARHAI","2000","1","29/8/2023","2023-11-29 11:27:13","2023-11-29 11:27:13");
INSERT INTO medicine__activities VALUES("1344","DR PEER MUJTABA","SERVICES HOSPITAL","...","PAGECAL","REFRESHMENT","2000","1","05/9/2023","2023-11-29 13:38:15","2023-11-29 13:38:15");
INSERT INTO medicine__activities VALUES("1345","DR MIRAJ","CIVIL WARD 2","...","PAGECAL/INFADOM","BOOKS CHAMPBEL","13000","1","05/9/2023","2023-11-29 13:39:02","2023-11-29 13:39:02");
INSERT INTO medicine__activities VALUES("1346","DR ALI  IKRAM","CIVIL WARD 2","...","PAGECAL","BOOKS/ORTHO","8000","1","05/9/2023","2023-11-29 13:40:19","2023-11-29 13:40:19");
INSERT INTO medicine__activities VALUES("1347","DR DANISH","JPMC 14","..","PAGECAL","LUNCH","2500","1","05/9/2023","2023-11-29 13:41:11","2023-11-29 13:41:11");
INSERT INTO medicine__activities VALUES("1348","DR SHAHID","UROLOGY JPMC JAMAT","...","CRANDOM","CASH","10000","1","05/9/2023","2023-11-29 13:42:04","2023-11-29 13:42:04");
INSERT INTO medicine__activities VALUES("1349","DR ADEEL","SENIOR WARD 2 HOD","...","PAGECAL/INFADOM","LUNCH","2000","1","05/9/2023","2023-11-29 13:43:04","2023-11-29 13:43:04");
INSERT INTO medicine__activities VALUES("1350","DR HANAIN","ORTHO UNIT 1","...","PAGECAL","CASH","6000","1","05/9/2023","2023-11-29 13:44:03","2023-11-29 13:44:03");
INSERT INTO medicine__activities VALUES("1351","DR ASIF","ORTHO UNIT 2","...","PAGECAL","DINNER","1800","1","05/9/2023","2023-11-29 13:45:07","2023-11-29 13:45:07");
INSERT INTO medicine__activities VALUES("1352","DR HASSAM","JPMC URO","...","CRANDOM","CASH","2000","1","05/9/2023","2023-11-29 13:46:10","2023-11-29 13:46:10");
INSERT INTO medicine__activities VALUES("1353","DR PREM CHAND","ORTHO CIVIL UNIT 1","...","PAGECAL","DINNER","2500","1","05/9/2023","2023-11-29 13:47:23","2023-11-29 13:47:23");
INSERT INTO medicine__activities VALUES("1354","DR SAMINA MAJEED","...","...","PAGECAL/HAIRPLEA","PRINTING","7000","1","05/9/2023","2023-11-29 13:48:40","2023-11-29 13:48:40");
INSERT INTO medicine__activities VALUES("1355","DR SHARJEEL","JPMC","...","PAGECAL/INFADOM","LUNCH","3500","1","05/9/2023","2023-11-29 13:49:39","2023-11-29 13:49:39");
INSERT INTO medicine__activities VALUES("1356","OPD","CIVIL","...","....","REFRESHMENT","1200","1","05/9/2023","2023-11-29 13:50:13","2023-11-29 13:50:13");
INSERT INTO medicine__activities VALUES("1357","OPD","JPMC WARD 17","...","...","REFRESHMENT","1300","1","05/9/2023","2023-11-29 13:51:05","2023-11-29 13:51:05");
INSERT INTO medicine__activities VALUES("1358","DR SAJJAD","CIVIL UNIT 2","...","PAGECAL","DINNER","1850","1","05/9/2023","2023-11-29 13:52:02","2023-11-29 13:52:02");
INSERT INTO medicine__activities VALUES("1359","RIAZ UDDIN KHAWAJA","PHARMAX","...","PAGECAL","ONLINE TRANSFER","15000","1","05/9/2023","2023-11-29 13:55:20","2023-11-29 13:55:20");
INSERT INTO medicine__activities VALUES("1360","DR WAQAR","CIVIL WARD 1","...","PAGECAL","DINNER","2200","1","05/9/2023","2023-11-29 13:56:07","2023-11-29 13:56:07");
INSERT INTO medicine__activities VALUES("1361","DR MATIULLAH","JPMC 17","...","PAGECAL/INFADOM","LUNCH","2400","1","05/9/2023","2023-11-29 13:57:04","2023-11-29 13:57:04");
INSERT INTO medicine__activities VALUES("1362","DR WALIULLAH","JPMC 17","...","PAGECAL/INFADOM","DINNER","3000","1","05/9/2023","2023-11-29 13:57:45","2023-11-29 13:57:45");
INSERT INTO medicine__activities VALUES("1363","DR IMTIAZ","JPMC 14","...","PAGECAL","LUNCH","2900","1","05","2023-11-29 13:58:16","2023-11-29 13:58:16");
INSERT INTO medicine__activities VALUES("1364","DR AZEEM","JPMC 14","...","PAGECAL","DINNER","2100","1","05/9/2023","2023-11-29 13:58:57","2023-11-29 13:58:57");
INSERT INTO medicine__activities VALUES("1365","DR ASIF","CIVIL ORTHO /PHARMACY","...","PAGECAL","FISH ACTIVITY","2000","1","05/9/2023","2023-11-29 13:59:38","2023-11-29 13:59:38");
INSERT INTO medicine__activities VALUES("1366","DR SHAHZAIB","CIVIL WARD 1","...","PAGECAL/INFADOM","DINNER","2000","1","05/9/2023","2023-11-29 14:00:35","2023-11-29 14:00:35");
INSERT INTO medicine__activities VALUES("1367","DR KALSOOM","KHARADAR","...","IROHEME","CAMP ACTIVITY","1600","1","05/9/2023","2023-11-29 14:01:20","2023-11-29 14:01:20");
INSERT INTO medicine__activities VALUES("1368","DR NAZEEN","ANKER SERYA","...","IROHEME/PAGECAL/FALNUE","EGGS","1500","1","05/9/2023","2023-11-29 14:02:36","2023-11-29 14:02:36");
INSERT INTO medicine__activities VALUES("1369","DR SUBHAN","JPMC 17","...","PAGECAL/INFADOM","LUNCH","3000","1","05/9/2023","2023-11-29 14:03:24","2023-11-29 14:03:24");
INSERT INTO medicine__activities VALUES("1370","DR ZOHAIB","JPMC 17","...","PAGECAL/INFADOM","DINNER","3500","1","05/9/2023","2023-11-29 14:04:13","2023-11-29 14:04:13");
INSERT INTO medicine__activities VALUES("1371","DR SHARJEEL","JPMC 17","..","PAGECAL/INFADOM","LUNCH","3000","1","05/9/2023","2023-11-29 14:04:54","2023-11-29 14:04:54");
INSERT INTO medicine__activities VALUES("1372","DR SAJJAD","CIVIL WARD 2","...","PAGECAL","DINNER","2000","1","05/06/2023","2023-11-29 14:05:38","2023-11-29 14:05:38");
INSERT INTO medicine__activities VALUES("1373","ZAHEER + WAHEED","CIVIL","...","...","POLICE CHOWKI","2000","1","05/9/2023","2023-11-29 14:06:21","2023-11-29 14:06:21");
INSERT INTO medicine__activities VALUES("1374","DR NAZNEEN","ANKEL SERYA","...","FALNUE/IROHEME/PAGECAL","SUPER CARD","800","1","05/9/2023","2023-11-29 14:07:09","2023-11-29 14:07:09");
INSERT INTO medicine__activities VALUES("1375","DR ASIF","CIVIL ORTHO 2","...","PAGECAL/INFADOM","DINNER","2000","1","12/9/2023","2023-11-29 14:08:50","2023-11-29 14:08:50");
INSERT INTO medicine__activities VALUES("1376","DR ASIF","CIVIL ORTHO 2","...","PAGECAL/INFADOM","DINNER","2000","1","12/9/2023","2023-11-29 14:10:04","2023-11-29 14:10:04");
INSERT INTO medicine__activities VALUES("1377","OPD","UNIT 1","...","...","REFRESHMENT","600","1","12/9/2023","2023-11-29 14:10:34","2023-11-29 14:10:34");
INSERT INTO medicine__activities VALUES("1378","OPD","UNIT 2","...","...","REFRESHMENT","700","1","12/9/2023","2023-11-29 14:11:02","2023-11-29 14:11:02");
INSERT INTO medicine__activities VALUES("1379","DR DANISH","JPMC W 17","...","PAGECAL/INFADOM","LUNCH","2000","1","12/9/2023","2023-11-29 14:11:40","2023-11-29 14:11:40");
INSERT INTO medicine__activities VALUES("1380","DR IMTIAZ","...","...","PAGECAL/INFADOM","DINNER","2700","1","12/9/2023","2023-11-29 14:12:32","2023-11-29 14:12:32");
INSERT INTO medicine__activities VALUES("1381","AURANGZAIB LALA","CIVIL HOSP","...","...","...","10000","1","12/9/2023","2023-11-29 14:13:08","2023-11-29 14:13:08");
INSERT INTO medicine__activities VALUES("1382","DR PIYAR ALI MOMIN","....","....","HAIRPLEA","INSTALMENT","12000","1","12/9/2023","2023-11-29 14:14:11","2023-11-29 14:14:11");
INSERT INTO medicine__activities VALUES("1383","DR NOMAN","JPMC","...","PAGECAL","CASH","5000","1","12/9/2023","2023-11-29 14:14:54","2023-11-29 14:14:54");
INSERT INTO medicine__activities VALUES("1384","DR PREM CHAND","ORTHO 1 CIVIL","...","PAGECAL/INFADOM","DINNER","2000","1","12/9/2023","2023-11-29 14:15:59","2023-11-29 14:15:59");
INSERT INTO medicine__activities VALUES("1385","DR SHARJEEL","JPMC W 17","...","PAGECAL/INFADOM","LUNCH","3500","1","12/9/2023","2023-11-29 14:17:07","2023-11-29 14:17:07");
INSERT INTO medicine__activities VALUES("1386","DR SHAKEEL","SINDH SERVICES HOSP","...","PAGECAL/INFADOM","R","1500","1","12/9/2023","2023-11-29 14:18:24","2023-11-29 14:18:24");
INSERT INTO medicine__activities VALUES("1387","OPD","CIVIL UNIT 2","...","....","R","500","1","12/9/2023","2023-11-29 14:19:12","2023-11-29 14:19:12");
INSERT INTO medicine__activities VALUES("1388","DR SAJJAD","CIVIL UNIT 2","...","PAGECAL","DINNER","1700","1","12/9/2023","2023-11-29 14:20:10","2023-11-29 14:20:10");
INSERT INTO medicine__activities VALUES("1389","DR AGHA WASEEM","JPMC W 14","...","PAGECAL/INFADOM","LUNCH","2300","1","12/9/2023","2023-11-29 14:20:52","2023-11-29 14:20:52");
INSERT INTO medicine__activities VALUES("1390","DR MATIULLAH","JPMC","...","PAGECAL/INFADOM","LUNCH","2900","1","12/9/2023","2023-11-29 14:22:47","2023-11-29 14:22:47");
INSERT INTO medicine__activities VALUES("1391","DR WALULLAJ","JPMC","...","PAGECAL/INFADOM","DINNER","3000","1","12/9/2023","2023-11-29 14:23:23","2023-11-29 14:23:23");
INSERT INTO medicine__activities VALUES("1392","DR WAQAR","CIVIL ORTHO 1","...","PAGECAL/INFADOM","DINNER","2250","1","12","2023-11-29 14:24:16","2023-11-29 14:24:16");
INSERT INTO medicine__activities VALUES("1393","DR SHAHZAIB","CIVIL UNIT 2","...","PAGECAL/INFADOM","DINNER","1850","1","12/9/2023","2023-11-29 14:25:03","2023-11-29 14:25:03");
INSERT INTO medicine__activities VALUES("1394","....","JPMC W 17","....","...","REFRESHMENT","900","1","12/9/2023","2023-11-29 14:25:42","2023-11-29 14:25:42");
INSERT INTO medicine__activities VALUES("1395","DR AMMAR","JPMC","...","PAGECAL","CASH","2500","1","12/9/2023","2023-11-29 14:27:17","2023-11-29 14:27:17");
INSERT INTO medicine__activities VALUES("1396","DR SAQIB","...","...","PAGECAL","LUNCH","3000","1","12/9/2023","2023-11-29 14:27:59","2023-11-29 14:27:59");
INSERT INTO medicine__activities VALUES("1397","DR ZOHAIB","...","....","INFADOM","DINNER","3500","1","12/9/2023","2023-11-29 14:28:35","2023-11-29 14:28:35");
INSERT INTO medicine__activities VALUES("1398","DR NAZNEEN","ANKEL SERYA","...","IROHEME/PAGECAL/FALNUE","EGGS","1500","1","12/9/2023","2023-11-29 14:35:00","2023-11-29 14:35:00");
INSERT INTO medicine__activities VALUES("1399","DR PREM CHAND","CIVIL UNIT 1","...","PAGECAL/INFADOM","DINNER","2500","1","12/9/2023","2023-11-29 14:35:46","2023-11-29 14:35:46");
INSERT INTO medicine__activities VALUES("1400","DR IMTIAZ & DR DANISH","...","...","PAGECAL/INFADOM","LUNCH...DINNER","2600 + 2900","1","12/9/2023","2023-11-29 14:37:10","2023-11-29 14:37:10");
INSERT INTO medicine__activities VALUES("1401","DR AZEEM KHOSO","JPMC W 17","...","PAGECAL/INFADOM","SUNDAY LUNCH","2000","1","12/9/2023","2023-11-29 14:38:17","2023-11-29 14:38:17");
INSERT INTO medicine__activities VALUES("1402","DR YASIR & DR BARKAT","...","...","PAGECAL/INFADOM","GIFT","3200","1","12/9/2023","2023-11-29 14:39:45","2023-11-29 14:39:45");
INSERT INTO medicine__activities VALUES("1403","OPD","JPMC","...","...","REFRESHMENT","1000","1","12/9/2023","2023-11-29 14:40:29","2023-11-29 14:40:29");
INSERT INTO medicine__activities VALUES("1404","DR JAGDESH","ORTHO WARD 1","...","...","REFRESHMENT","1150","1","12/9/2023","2023-11-29 14:41:17","2023-11-29 14:41:17");
INSERT INTO medicine__activities VALUES("1405","DR MANSOOR","UROLOGIST","....","CRANDOM","PRINTING PAPER","2500","1","19/09/2023","2023-11-29 14:44:38","2023-11-29 14:44:38");
INSERT INTO medicine__activities VALUES("1406","OPD","CIVIL UNIT 2","...","...","REFRESHMENT","700","1","19/09/2023","2023-11-29 14:45:30","2023-11-29 14:45:30");
INSERT INTO medicine__activities VALUES("1407","DR TAHMOOR","CIVIL UNIT 2","...","PAGECAL/INFADOM","DINNER","2000","1","19/09/2023","2023-11-29 14:46:14","2023-11-29 14:46:14");
INSERT INTO medicine__activities VALUES("1408","DR SUNNY","JPMC W 14","...","PAGECAL","LUNCH","2500","1","19/09/2023","2023-11-29 14:47:12","2023-11-29 14:47:12");
INSERT INTO medicine__activities VALUES("1409","DR QASIM","JPMC","....","PAGECAL/INFADOM","INSTALMENT","7000","1","19/09/2023","2023-11-29 14:48:14","2023-11-29 14:48:14");
INSERT INTO medicine__activities VALUES("1410","CIVIL","GYNE","....","IROHEME","INSTALMENT","6000","1","19/09/2023","2023-11-29 14:49:05","2023-11-29 14:49:05");
INSERT INTO medicine__activities VALUES("1411","SINDH SERVICES","GYNE WARD","...","IROHEME/PAGECAL/INFADOM/CRANDOM","AC REPAIR","9000","1","19/09/2023","2023-11-29 14:50:34","2023-11-29 14:50:34");
INSERT INTO medicine__activities VALUES("1412","DR MANAN","CIVIL UNIT 1","...","PAGECAL/INFADOM","DINNER","2000","1","19/09/2023","2023-11-29 14:53:35","2023-11-29 14:53:35");
INSERT INTO medicine__activities VALUES("1413","DR SHARJEEL","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3000","1","19/09/2023","2023-11-29 14:54:26","2023-11-29 14:54:26");
INSERT INTO medicine__activities VALUES("1414","DR ASIF","CIVIL UNIT 2","...","PAGECAL","DINNER","1900","1","19/09/2023","2023-11-29 14:55:21","2023-11-29 14:55:21");
INSERT INTO medicine__activities VALUES("1415","DR MATIULLAH","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3800","1","19/09/2023","2023-11-29 14:56:15","2023-11-29 14:56:15");
INSERT INTO medicine__activities VALUES("1416","DR MATIULLAH","JPMC WARD 17","...","PAGECAL/INFADOM","dinner","3000","1","19/09/2023","2023-11-29 14:57:09","2023-11-29 14:57:09");
INSERT INTO medicine__activities VALUES("1417","...","office staff","...","...","DAIRY+BANCHES","4500","1","19/09/2023","2023-11-29 14:58:50","2023-11-29 14:58:50");
INSERT INTO medicine__activities VALUES("1418","DR SHAHZAIB","CIVIL UNIT 2","...","PAGECAL","DINNER","1700","1","19/09/2023","2023-11-29 15:13:08","2023-11-29 15:13:08");
INSERT INTO medicine__activities VALUES("1419","DR SAIMA","MODERN HOSP","...","PAGECAL","ROOM WALLPAER","5000","1","19/09/2023","2023-11-29 15:15:19","2023-11-29 15:15:19");
INSERT INTO medicine__activities VALUES("1420","DR MEER","JPMC WARD  17","...","PAGECAL/INFADOM","LUNCH","3000","1","19/09/2023","2023-11-29 15:16:12","2023-11-29 15:16:12");
INSERT INTO medicine__activities VALUES("1421","DR QASIM","JPMC WARD 17","...","PAGECAL/INFADOM","DINNER","3000","1","19/09/2023","2023-11-29 15:17:47","2023-11-29 15:17:47");
INSERT INTO medicine__activities VALUES("1422","JPMC","WARD 17","...","...","REFRESHMENT","2000","1","19/09/2023","2023-11-29 15:22:03","2023-11-29 15:22:03");
INSERT INTO medicine__activities VALUES("1423","DR AFROZ","BAKHT BHARI HOSP","...","PAGECAL/INFADOM","SUPER CARD","1600","1","19/09/2023","2023-11-29 15:23:06","2023-11-29 15:23:06");
INSERT INTO medicine__activities VALUES("1424","DR TARIQ","CIVIL UNIT 1","...","PAGECAL/INFADOM","DINNER","2000","1","19/09/2023","2023-11-29 15:23:38","2023-11-29 15:23:38");
INSERT INTO medicine__activities VALUES("1425","DR NAZNEEN","ANKEL SERYA","...","FALNUE/IROHEME/PAGECAL","EGGS","1500","1","19/09/2023","2023-11-29 15:25:24","2023-11-29 15:25:24");
INSERT INTO medicine__activities VALUES("1426","DR DANISH","JPMC WARD 14","...","PAGECAL/INFADOM","LUNCH","2500","1","19/09/2023","2023-11-29 15:26:18","2023-11-29 15:26:18");
INSERT INTO medicine__activities VALUES("1427","DR IMTIAZ","JPMC WARD 14","...","PAGECAL/INFADOM","DINNER","2350","1","19/09/2023","2023-11-29 15:27:16","2023-11-29 15:27:16");
INSERT INTO medicine__activities VALUES("1428","DR AGHA WASEEM","JPMC WARD 14","...","PAGECAL/INFADOM","LUNCH","2500","1","19/09/2023","2023-11-29 15:28:11","2023-11-29 15:28:11");
INSERT INTO medicine__activities VALUES("1429","DR REHMAN","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3000","1","19/09/2023","2023-11-29 15:29:02","2023-11-29 15:29:02");
INSERT INTO medicine__activities VALUES("1430","DR ZOHAIB","JPMC WARD 17","..","PAGECAL/INFADOM","DINNER","3500","1","19/09/2023","2023-11-29 15:29:38","2023-11-29 15:29:38");
INSERT INTO medicine__activities VALUES("1431","...","....","....","...","PREVIOUS WEEK OFFICE LUNCH","1000","1","19","2023-11-29 15:31:06","2023-11-29 15:31:06");
INSERT INTO medicine__activities VALUES("1432","..","...","...","...","THIS WEEK LUNCH","1500","1","19/09/2023","2023-11-29 15:31:48","2023-11-29 15:31:48");
INSERT INTO medicine__activities VALUES("1433","DR SAJJAD","ORTHO CIVIL UNIT 2","...","PAGECAL/INFADOM","BOOKS","4000","1","25/9/2023","2023-11-29 15:35:24","2023-11-29 15:35:24");
INSERT INTO medicine__activities VALUES("1434","DR YASIR","ORANGZAIB PHARMACY QUAIDABAD","...","PAGECAL/INFADOM","PRPTUBES","2150","1","25/9/2023","2023-11-29 15:37:18","2023-11-29 15:37:18");
INSERT INTO medicine__activities VALUES("1435","AURANGZAIB LALA","CIVIL HOSPTL","..","...","CASH","5000","1","19/09/2023","2023-11-29 15:38:33","2023-11-29 15:38:33");
INSERT INTO medicine__activities VALUES("1436","DR TAHMOOR","CIVIL UNIT 2","...","PAGECAL","DINNER","3500","1","25/9/2023","2023-11-29 15:39:25","2023-11-29 15:39:25");
INSERT INTO medicine__activities VALUES("1437","DR WAQAR","CIVIL UNIT 17","...","PAGECAL","DINNER","2350","1","25/9/2023","2023-11-29 15:40:06","2023-11-29 15:40:06");
INSERT INTO medicine__activities VALUES("1438","OPD","CIVIL UNIT 2","...","...","REFRESHMENT","700","1","25/9/2023","2023-11-29 15:41:07","2023-11-29 15:41:07");
INSERT INTO medicine__activities VALUES("1439","OPD","CIVIL UNIT 1","...","...","REFRESHMENT","300","1","25/9/2023","2023-11-29 15:42:00","2023-11-29 15:42:00");
INSERT INTO medicine__activities VALUES("1440","DR SHARJEEL","JPMC W 17","...","PAGECAL/INFADOM","DINNER","3000","1","25/9/2023","2023-11-29 15:42:46","2023-11-29 15:42:46");
INSERT INTO medicine__activities VALUES("1441","DR WAJAHAT","CIVIL UNIT 2","...","PAGECAL","REFRESHMENT","500","1","25/9/2023","2023-11-29 15:43:23","2023-11-29 15:43:23");
INSERT INTO medicine__activities VALUES("1442","DR ASIF","CIVIL UNIT 2","...","PAGECAL/INFADOM","BOOKS","4000","1","25/9/2023","2023-11-29 15:44:12","2023-11-29 15:44:12");
INSERT INTO medicine__activities VALUES("1443","DR MATIULLAH","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3000","1","25/9/2023","2023-11-29 15:45:18","2023-11-29 15:45:18");
INSERT INTO medicine__activities VALUES("1444","DR WALIULLAH","JPMC WARD 17","...","PAGECAL/INFADOM","DINNER","3000","1","25/9/2023","2023-11-29 15:46:05","2023-11-29 15:46:05");
INSERT INTO medicine__activities VALUES("1445","DR DANISH","JPMC WARD 14","...","PAGECAL","LUNCH","2900","1","25/9/2023","2023-11-29 15:46:44","2023-11-29 15:46:44");
INSERT INTO medicine__activities VALUES("1446","DR AZEEM KHOSO","JPMC WARD 14","...","PAGECAL","DINNER","3300","1","25/9/2023","2023-11-29 15:47:54","2023-11-29 15:47:54");
INSERT INTO medicine__activities VALUES("1447","DR IQBAL KIYANI","TAJ COMPLEX","...","IROHEME/PAGECAL/INFADOM","INSTALMENT","24000","1","25/9/2023","2023-11-29 15:49:28","2023-11-29 15:49:28");
INSERT INTO medicine__activities VALUES("1448","DR SHAHZAIB","CIVIL UNIT 2","...","PAGECAL","REFRESHMENT","1200","1","25/9/2023","2023-11-29 15:50:19","2023-11-29 15:50:19");
INSERT INTO medicine__activities VALUES("1449","DR MANSOOR","UROLOGY K.L.M","...","CRANDOM","BOARD PENAFLEX","5000","1","25/9/2023","2023-11-29 15:52:22","2023-11-29 15:52:22");
INSERT INTO medicine__activities VALUES("1450","DR ASMA","ASMA MEDICAL","...","IROHEME/PAGECAL/CRANDOM","FILES CARD","5000","1","25/9/2023","2023-11-29 15:53:39","2023-11-29 15:53:39");
INSERT INTO medicine__activities VALUES("1451","OJHA","HOSPITAL SAFORA","...","...","ACTIVTY","1400","1","25/9/2023","2023-11-29 15:54:43","2023-11-29 15:54:43");
INSERT INTO medicine__activities VALUES("1452","NASIR","TRUMA GUARD","...","...","CASH","1000","1","25/9/2023","2023-11-29 15:55:16","2023-11-29 15:55:16");
INSERT INTO medicine__activities VALUES("1453","DR NASIR","JPMC ORTHO","..","PAGECAL/INFADOM","ACTIVITY","1200","1","25/9/2023","2023-11-29 15:56:30","2023-11-29 15:56:30");
INSERT INTO medicine__activities VALUES("1454","JPMC","WARD 17","...","...","REFRESHMENT","900","1","25/9/2023","2023-11-29 15:58:38","2023-11-29 15:58:38");
INSERT INTO medicine__activities VALUES("1455","DR AGHA WASEEM","JPMC WARD 17","..","PAGECAL","LUNCH","2600","1","25/9/2023","2023-11-29 16:01:00","2023-11-29 16:01:00");
INSERT INTO medicine__activities VALUES("1456","DR NAZNEEN","ANKEL SERYA","....","IROHEME/PAGECAL/FALNUE","EGGS","1500","1","25/9/2023","2023-11-29 16:02:07","2023-11-29 16:02:07");
INSERT INTO medicine__activities VALUES("1457","DR TARIQ","CIVIL UNIT 1","...","PAGECAL/INFADOM","DINNER","2000","1","25/9/2023","2023-11-29 16:02:55","2023-11-29 16:02:55");
INSERT INTO medicine__activities VALUES("1458","DR SUBHAN","JPMC WARD 17","...","PAGECAL/INFADOM","LUNCH","3000","1","25/9/2023","2023-11-29 16:03:38","2023-11-29 16:03:38");
INSERT INTO medicine__activities VALUES("1459","DR ZOHAIB","JPMC WARD 17","...","PAGECAL","DINNER","3500","1","25/9/2023","2023-11-29 16:04:23","2023-11-29 16:04:23");
INSERT INTO medicine__activities VALUES("1460","DR ASIF","CIVIL ORTHO UNIT 2","...","...","REFRESHMENT","700","1","28/11/2023","2023-12-05 13:06:17","2023-12-05 13:06:17");
INSERT INTO medicine__activities VALUES("1461","DR SAJJAD","CIVIL ORTHO 2","...","...","DINNER","3000","1","28/11/2023","2023-12-05 13:07:51","2023-12-05 13:07:51");
INSERT INTO medicine__activities VALUES("1462","DR MADIHA","JPMC ORTHO W 14","...","....","LUNCH","2000","1","28/11/2023","2023-12-05 13:09:17","2023-12-05 13:09:17");
INSERT INTO medicine__activities VALUES("1463","IMRAN","...","...","...","PRINTER BILL","5000","1","29/11/2023","2023-12-05 13:09:57","2023-12-05 13:09:57");
INSERT INTO medicine__activities VALUES("1464","DR AMMAR","JPMC ORTHO W 17","...","...","LUNCH","3000","1","29/11/2023","2023-12-05 13:10:53","2023-12-05 13:10:53");
INSERT INTO medicine__activities VALUES("1465","DR TARIQ","CIVIL ORTHO UNIT 1","...","...","DINNER","2000","1","29/11/2023","2023-12-05 13:11:43","2023-12-05 13:11:43");
INSERT INTO medicine__activities VALUES("1466","DR JAMEEL","DOW SAFORA","...","...","REFRESHMENT","800","1","29/11/2023","2023-12-05 13:12:34","2023-12-05 13:12:34");
INSERT INTO medicine__activities VALUES("1467","JPMC","PHARMAX BOYS","...","...","LUNCH","6000","1","29/11/2023","2023-12-05 13:13:32","2023-12-05 13:13:32");
INSERT INTO medicine__activities VALUES("1468","DR QAMAR ABBAS","MOTHER CARE HOSP","...","...","ACTIVITY","4000","1","29/11/2023","2023-12-05 13:14:45","2023-12-05 13:14:45");
INSERT INTO medicine__activities VALUES("1469","DR IQBAL KHIYANI","TAJ COMPLEX","...","...","INSTALMENT","24000","1","29/11/2023","2023-12-05 13:15:48","2023-12-05 13:15:48");
INSERT INTO medicine__activities VALUES("1470","DR IMTIAZ","JPMC ORTHO W 14","...","...","LUNCH","2600","1","30/11/2023","2023-12-05 13:16:35","2023-12-05 13:16:35");
INSERT INTO medicine__activities VALUES("1471","DR AZEEM KHOSO","JPMC ORTHO W 14","...","...","DINNER","2000","1","30/11/2023","2023-12-05 13:17:23","2023-12-05 13:17:23");
INSERT INTO medicine__activities VALUES("1472","DR ASIF","CIVIL UNIT 2","...","...","DINNER","2400","1","30/11/2023","2023-12-05 13:20:04","2023-12-05 13:20:04");
INSERT INTO medicine__activities VALUES("1473","DR SHAHZAIB","OPD CIVIL","...","....","REFRESHMENT","800","1","30/11/2023","2023-12-05 13:21:01","2023-12-05 13:21:01");
INSERT INTO medicine__activities VALUES("1474","DR MEER","JPMC W 17 ORTHO","...","...","LUNCH","3400","1","1/12/2023","2023-12-05 13:21:41","2023-12-05 13:21:41");
INSERT INTO medicine__activities VALUES("1475","DR WALIULLAH","JPMC W 17","...","...","DINNER","3000","1","1/12/2023","2023-12-05 13:22:52","2023-12-05 13:22:52");
INSERT INTO medicine__activities VALUES("1476","DR PREM CHAND","CIVIL ORTHO 1","...","...","DINNER","3000","1","1/12/2023","2023-12-05 13:24:04","2023-12-05 13:24:04");
INSERT INTO medicine__activities VALUES("1477","DR MASOOD","AL TIBRI","...","...3","BOOKS & USB","3500","1","1/12/2023","2023-12-05 13:24:47","2023-12-05 13:24:47");
INSERT INTO medicine__activities VALUES("1478","ATIF","CIVIL PHARMAX","..","...","DINNER","1000","1","1/12/2023","2023-12-05 13:25:52","2023-12-05 13:25:52");
INSERT INTO medicine__activities VALUES("1479","DR SHAHZAIB","CIVIL UNIT 2","...","...","DINNER","2000","1","1/12/2023","2023-12-05 13:26:37","2023-12-05 13:26:37");
INSERT INTO medicine__activities VALUES("1480","DR DANISH","JPMC ORTHO W 14","...","...","LUNCH","3000","1","2/12/2023","2023-12-05 13:27:20","2023-12-05 13:27:20");
INSERT INTO medicine__activities VALUES("1481","DR AMMAR","JPMC ORTHO W 17","...","...","LUNCH","3000","1","3/12/2023","2023-12-05 13:28:16","2023-12-05 13:28:16");
INSERT INTO medicine__activities VALUES("1482","DR ZOHAIB","JPMC W 17","...","...","CASH","15000","1","4/12/2023","2023-12-05 13:28:48","2023-12-05 13:28:48");
INSERT INTO medicine__activities VALUES("1483","DR SUBHAN","JPMC ORTHO W 17","...","...","LUNCH","3000","1","4/12/2023","2023-12-05 13:29:59","2023-12-05 13:29:59");
INSERT INTO medicine__activities VALUES("1484","DR ZOHAIB","JPMC ORTHO W 17","...","...","DINNER","3500","1","4/12/2023","2023-12-05 13:30:50","2023-12-05 13:30:50");
INSERT INTO medicine__activities VALUES("1485","DR NAZNEEN","ANKER SERYA","...","...","ACTIVITY","1800","1","4/12/2023","2023-12-05 13:31:22","2023-12-05 13:31:22");
INSERT INTO medicine__activities VALUES("1486","DR HASNAIN","CIVIL ORTHO UNIT 1","...","...","DINNER","3000","1","4/12/2023","2023-12-05 13:32:00","2023-12-05 13:32:00");
INSERT INTO medicine__activities VALUES("1487","AURANGZAIB LALA","CIVIL","...","...","CASH","5000","1","4/12/2023","2023-12-05 13:32:31","2023-12-05 13:32:31");
INSERT INTO medicine__activities VALUES("1488","DR  MADIHA","JPMC 14","...","...","LUNCH","2350","1","12/12/2023","2023-12-19 09:28:17","2023-12-19 09:28:17");
INSERT INTO medicine__activities VALUES("1489","...","CIVIL ORTHO UNIT 2","...","...","REFRESHMENT","600","1","12/12/2023","2023-12-19 09:28:57","2023-12-19 09:28:57");
INSERT INTO medicine__activities VALUES("1490","DR SHAZAIB","CIVIL ORTHO 2","...","...","DINNER","2500","1","12/12/2023","2023-12-19 09:29:54","2023-12-19 09:29:54");
INSERT INTO medicine__activities VALUES("1491","DR HASNANIN","CIVIL ORTHO UNIT 1","...","...","DINNER","3500","1","13/12/2023","2023-12-19 09:30:40","2023-12-19 09:30:40");
INSERT INTO medicine__activities VALUES("1492","DR AMMAR","JPMC ORTHO W 17","...","...","LUNCH","3000","1","13/12/2023","2023-12-19 09:31:22","2023-12-19 09:31:22");
INSERT INTO medicine__activities VALUES("1493","DR JAMI","DOW SAFORA","...","...","REFRESHMENT","1200","1","13/12/2023","2023-12-19 09:32:15","2023-12-19 09:32:15");
INSERT INTO medicine__activities VALUES("1494","DR KHADIJA &DR UMAIR&DR ARSALAN","...","....","...","BOOKS","4800","1","13/12/2023","2023-12-19 09:33:05","2023-12-19 09:33:05");
INSERT INTO medicine__activities VALUES("1495","DR SHUJHAT","OPD","...","...","REFRESHEMNT","700","1","14/12/2023","2023-12-19 09:33:53","2023-12-19 09:33:53");
INSERT INTO medicine__activities VALUES("1496","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","2300","1","14/12/2023","2023-12-19 09:34:27","2023-12-19 09:34:27");
INSERT INTO medicine__activities VALUES("1497","DR IMTIAZ","JPMC ORTHO 14","..","...","LUNCH","2800","1","14/12/2023","2023-12-19 09:35:04","2023-12-19 09:35:04");
INSERT INTO medicine__activities VALUES("1498","DR ALTAF","AWAD KORANGI","..","..","PENEFLEX","1600","1","14/12/2023","2023-12-19 09:36:06","2023-12-19 09:36:06");
INSERT INTO medicine__activities VALUES("1499","DR MANSOR","KLMC","..","...","ACTIVITY","4000","1","14/12/2023","2023-12-19 09:36:33","2023-12-19 09:36:33");
INSERT INTO medicine__activities VALUES("1500","...`","JPMC OPD","...","...","REFRESHMENT","1000","1","14/12/2023","2023-12-19 09:37:04","2023-12-19 09:37:04");
INSERT INTO medicine__activities VALUES("1501","..","CIVIL ORTHO  2 WARD 1","..","...","REFRESHMENT","1500","1","14/12/2023","2023-12-19 09:37:40","2023-12-19 09:37:40");
INSERT INTO medicine__activities VALUES("1502","DR AZEEM KHOSO","JPMC ORTHO 14","..","...","DINNER","2000","1","14/12/2023","2023-12-19 09:38:09","2023-12-19 09:38:09");
INSERT INTO medicine__activities VALUES("1503","DR NOMAN","JPMC W 17 ORTHO","..","...","DINNER","2000","1","14/12/2023","2023-12-19 09:39:08","2023-12-19 09:39:08");
INSERT INTO medicine__activities VALUES("1504","DR NOMAN","JPMC W 17 ORTHO","..","...","CASH","5000","1","14/12/2023","2023-12-19 09:39:50","2023-12-19 09:39:50");
INSERT INTO medicine__activities VALUES("1505","DR WAQAR","CIVILORTHO 1","..","...","DINNER","2300","1","15/12/2023","2023-12-19 09:40:20","2023-12-19 09:40:20");
INSERT INTO medicine__activities VALUES("1506","DR MEER","JPMC ORTHO 17","...","..","LUNCH","3500","1","15/12/2023","2023-12-19 09:42:52","2023-12-19 09:42:52");
INSERT INTO medicine__activities VALUES("1507","DR WALIULLAH","JPMC ORTHO 17","...","...","DINNER","3000","1","15/12/2023","2023-12-19 09:43:34","2023-12-19 09:43:34");
INSERT INTO medicine__activities VALUES("1508","AURANGZAIB LALA","...","...","...","CASH","10000","1","15/12/2023","2023-12-19 09:44:08","2023-12-19 09:44:08");
INSERT INTO medicine__activities VALUES("1509","...","JPMC WARD 14","...","...","REFRESHMENT","2000","1","16/12/2023","2023-12-19 09:44:44","2023-12-19 09:44:44");
INSERT INTO medicine__activities VALUES("1510","DR PRIYA","CIVIL GYNE 2","...","...","BOOK","2000","1","16/12/2023","2023-12-19 09:45:23","2023-12-19 09:45:23");
INSERT INTO medicine__activities VALUES("1511","DR SAJJAD","CIVIL ORTHO 2","..","...","DINNER","3000","1","16/12/2023","2023-12-19 09:45:56","2023-12-19 09:45:56");
INSERT INTO medicine__activities VALUES("1512","DR DANISH","JPMC W 14 ORTHO","..","...","LUNCH","2000","1","16/12/2023","2023-12-19 09:46:30","2023-12-19 09:46:30");
INSERT INTO medicine__activities VALUES("1513","DR MEER","JPMC W 17 ORTHO","..","..","LUNCH (SUNDAY)","3500","1","17/12/2023","2023-12-19 09:47:25","2023-12-19 09:47:25");
INSERT INTO medicine__activities VALUES("1514","DR WALIULLAH","JPMC W 17 ORTHO","..","..","DINNER","3000","1","17/12/2023","2023-12-19 09:48:01","2023-12-19 09:48:01");
INSERT INTO medicine__activities VALUES("1515","DR SOGHAT","WARD UNIT 1","..","...","REFRESHMENT","4000","1","18/12/2023","2023-12-19 09:48:39","2023-12-19 09:48:39");
INSERT INTO medicine__activities VALUES("1516","DR MANAN","CIVIL ORTHO 1","..","..","DINNER","2500","1","18/12/2023","2023-12-19 09:49:11","2023-12-19 09:49:11");
INSERT INTO medicine__activities VALUES("1517","DR NAZNEEN","ANKER SERYA","...","..","EGGS / SUPER CARD","2650","1","18/12/2023","2023-12-19 09:50:13","2023-12-19 09:50:13");
INSERT INTO medicine__activities VALUES("1518","DR SUBHAN","JPMC W 17 ORTHO","..","...","LUNCH","3000","1","18/12/2023","2023-12-19 09:50:42","2023-12-19 09:50:42");
INSERT INTO medicine__activities VALUES("1519","DR ZOHAIB","JPMC W 17 ORTHO","..","...","DINNER","3500","1","18/12/2023","2023-12-19 09:51:16","2023-12-19 09:51:16");
INSERT INTO medicine__activities VALUES("1520","DR HINA","SINDH GOVERMNET","..","...","INSTALMENT","2000","1","18/12/2023","2023-12-19 09:52:39","2023-12-19 09:52:39");
INSERT INTO medicine__activities VALUES("1521","DR DILIP KUMAR","...","...","...","MICRO OVEN (NEW)","5700","1","18/12/2023","2023-12-19 09:53:49","2023-12-19 09:53:49");
INSERT INTO medicine__activities VALUES("1522","DR ASIF","CIVIL ORTHO UNIT 2","...","...","DINNER","2500","1","2/1/2024","2024-01-09 11:54:59","2024-01-09 11:54:59");
INSERT INTO medicine__activities VALUES("1523","DR IMTIAZ","JPMC ORTHO W 14","...","...","LUNCH","3030","1","2/1/2024","2024-01-09 11:55:43","2024-01-09 11:55:43");
INSERT INTO medicine__activities VALUES("1524","DR AZEEM","JPMC ORTHO 14","..","....","DINNER","2000","1","2/1/2024","2024-01-09 11:56:35","2024-01-09 11:56:35");
INSERT INTO medicine__activities VALUES("1525","DR MANAN","CIVIL ORTHO UNIT","...","...","DINNER","2000","1","3/1/2024","2024-01-09 11:59:09","2024-01-09 11:59:09");
INSERT INTO medicine__activities VALUES("1526","DR SUBHAN","JPMC ORTHO W 17","...","...","LUNCH","3200","1","3/1/2024","2024-01-09 11:59:56","2024-01-09 11:59:56");
INSERT INTO medicine__activities VALUES("1527","DR REHAN","JPMC ORTHO W 17","...","...","DINNER","3000","1","3/1/2024","2024-01-09 12:01:43","2024-01-09 12:01:43");
INSERT INTO medicine__activities VALUES("1528","LALA AURANGZAIB","CIVIL","...","...","CASH","5000","1","3/1/2024","2024-01-09 12:02:26","2024-01-09 12:02:26");
INSERT INTO medicine__activities VALUES("1529","DR JAMEEL","DOW SAFORA","...","...","REFRESHMENT","500","1","3/1/2024","2024-01-09 12:03:20","2024-01-09 12:03:20");
INSERT INTO medicine__activities VALUES("1530","DR JAGDESH","CIVIL OPD","...","...","REFRESHMENT","2500","1","3/1/2024","2024-01-09 12:04:01","2024-01-09 12:04:01");
INSERT INTO medicine__activities VALUES("1531","DR SAJJAD","CIVIL ORTHO 2","...","...","DINNER","3000","1","4/1/2024","2024-01-09 12:06:09","2024-01-09 12:06:09");
INSERT INTO medicine__activities VALUES("1532","CIVIL","OPD","...","...","REFRESHMENT","700","1","4/1/2024","2024-01-09 12:06:59","2024-01-09 12:06:59");
INSERT INTO medicine__activities VALUES("1533","DR ADEEL","ORTHO UNIT 2","...","...","REFRESHMENT","600","1","4/1/2024","2024-01-09 12:07:50","2024-01-09 12:07:50");
INSERT INTO medicine__activities VALUES("1534","DR DANISH","JPMC ORTHO 14","...","...","LUNCH","3100","1","4/1/2024","2024-01-09 12:08:31","2024-01-09 12:08:31");
INSERT INTO medicine__activities VALUES("1535","DR HARIS","JPMC ORTHO 14","...","...","DINNER","2500","1","4/1/2024","2024-01-09 12:19:35","2024-01-09 12:19:35");
INSERT INTO medicine__activities VALUES("1536","JPMC","W 17","...","...","REFRESHMENT","1500","1","4/1/2024","2024-01-09 12:22:00","2024-01-09 12:22:00");
INSERT INTO medicine__activities VALUES("1537","JPMC","W 14","...","...","REFRESHMENT","1000","1","4/1/2024","2024-01-09 12:24:49","2024-01-09 12:24:49");
INSERT INTO medicine__activities VALUES("1538","DR WAQAS","CIVIL ORTHO 1","...","...","DINNER","2000","1","5/1/2024","2024-01-09 12:25:55","2024-01-09 12:25:55");
INSERT INTO medicine__activities VALUES("1539","DR FAYAZ","CIVIL ORTHO 1","...","...","BREAK FAST","4500","1","5/1/2024","2024-01-09 12:34:29","2024-01-09 12:34:29");
INSERT INTO medicine__activities VALUES("1540","DR SHAHZAIB","CIVIL ORTHO 2","...","...","DINNER","2500","1","6/1/2024","2024-01-09 12:35:12","2024-01-09 12:35:12");
INSERT INTO medicine__activities VALUES("1541","DR M A QURESHI","ANKEL SERYA","...","...","FISH ACTIVITY","7500","1","6/1/2024","2024-01-09 12:35:53","2024-01-09 12:35:53");
INSERT INTO medicine__activities VALUES("1542","DR PERVEZ & DR ASIF","..","...","...","BOOKS","2800","1","6/1/2024","2024-01-09 12:56:11","2024-01-09 12:56:11");
INSERT INTO medicine__activities VALUES("1543","DR MADIHA","JPMC ORTHO 14","...","...","LUNCH","2000","1","6/1/2024","2024-01-09 12:57:40","2024-01-09 12:57:40");
INSERT INTO medicine__activities VALUES("1544","DR MADIHA","JPMC ORTHO 14","...","...","LUNCH","2000","1","6/1/2024","2024-01-09 12:57:41","2024-01-09 12:57:41");
INSERT INTO medicine__activities VALUES("1545","DR ASAD","JPMC ORTHO 14","...","...","DINNER","2000","1","6/1/2024","2024-01-09 12:59:55","2024-01-09 12:59:55");
INSERT INTO medicine__activities VALUES("1546","DR IMTIAZ","JPMC ORTHO 14","...","...","LUNCH","2000","1","7/1/2024","2024-01-09 13:00:28","2024-01-09 13:00:28");
INSERT INTO medicine__activities VALUES("1547","ZAHHER & WAHEED","CIVIL CHOWKI","...","...","CASH","2000","1","8/1/2024","2024-01-09 13:01:09","2024-01-09 13:01:09");
INSERT INTO medicine__activities VALUES("1548","DR HUSNAIN","CIVIL ORTHO 1","...","...","DINNER","3000","1","8/1/2024","2024-01-09 13:01:46","2024-01-09 13:01:46");
INSERT INTO medicine__activities VALUES("1549","DR NAZNEEN","ANKER SERYA","..","....","EGGS","1800","1","8/1/2024","2024-01-09 13:02:14","2024-01-09 13:02:14");
INSERT INTO medicine__activities VALUES("1550","DR QASIM","JPMC ORTHO 17","...","...","LUNCH","3500","1","8/1/2024","2024-01-09 13:02:45","2024-01-09 13:02:45");
INSERT INTO medicine__activities VALUES("1551","DR WALIULLAH","JPMC ORTHO 17","...","...","DINNER","3000","1","8/1/2024","2024-01-09 13:03:19","2024-01-09 13:03:19");
INSERT INTO medicine__activities VALUES("1552","DR HARIS","OPD","...","...","REFRESHMENT","1000","1","8/1/2024","2024-01-09 13:03:53","2024-01-09 13:03:53");
INSERT INTO medicine__activities VALUES("1553","IMRAN PRINTER","...","...","...","CASH","3000","1","26/12/2023","2024-01-09 13:39:06","2024-01-09 13:39:06");
INSERT INTO medicine__activities VALUES("1554","CIVIL","OPD","...","...","REFRESHMENT","1000","1","26/12/2023","2024-01-09 13:39:48","2024-01-09 13:39:48");
INSERT INTO medicine__activities VALUES("1555","DR MADIHA","JPMC ORTHO W 14","...","...","LUNCH","2000","1","26/12/2023","2024-01-09 13:40:26","2024-01-09 13:40:26");
INSERT INTO medicine__activities VALUES("1556","DR SHAHZAIB","CIVIL ORTHO 2","...","...","DINNER","3000","1","26/12/2023","2024-01-09 13:42:15","2024-01-09 13:42:15");
INSERT INTO medicine__activities VALUES("1557","DR AMMAR","JPMC WARD 17","...","...","LUNCH","3000","1","27/12/2023","2024-01-09 13:43:20","2024-01-09 13:43:20");
INSERT INTO medicine__activities VALUES("1558","DR HASNAIN","CIVIL ORTHO UNIT 1","...","...","dinner","3150","1","27/12/2023","2024-01-09 13:47:45","2024-01-09 13:47:45");
INSERT INTO medicine__activities VALUES("1559","DR MUZAMIL","SERVICES","...","...","ACTIVITY","1700","1","27/12/2023","2024-01-09 13:50:27","2024-01-09 13:50:27");
INSERT INTO medicine__activities VALUES("1560","DR FARHEEN","AL TIBRI","...","...","BOOKS","1600","1","27/12/2023","2024-01-09 13:51:25","2024-01-09 13:51:25");
INSERT INTO medicine__activities VALUES("1561","DR FARHEEN","AL TIBIRI","..","...","BOOKS","1600","1","28/12/2023","2024-01-09 14:04:55","2024-01-09 14:04:55");
INSERT INTO medicine__activities VALUES("1562","DR SAJJAD","CIVIL ORTHO UNIT 2","...","..","DINNER","3000","1","28/12/2023","2024-01-09 14:05:34","2024-01-09 14:05:34");
INSERT INTO medicine__activities VALUES("1563","CIVIL","OPD","...","...","REFRESHMENT","700","1","28/12/2023","2024-01-09 14:07:14","2024-01-09 14:07:14");
INSERT INTO medicine__activities VALUES("1564","DR HARIS","JPMC ORTHO 14","...","...","LUNCH","3000","1","28/12/2023","2024-01-09 14:07:50","2024-01-09 14:07:50");
INSERT INTO medicine__activities VALUES("1565","DR AZEEM","JPMC ORTHO W 14","...","...","DINNER","2500","1","28/12/2023","2024-01-09 14:08:46","2024-01-09 14:08:46");
INSERT INTO medicine__activities VALUES("1566","...","JPMC WARD","...","...","ACTIVITY","1000","1","28/12/2023","2024-01-09 14:09:39","2024-01-09 14:09:39");
INSERT INTO medicine__activities VALUES("1567","DR MASOOD","AL TIBRI","...","...","CASH","20000","1","29/12/2023","2024-01-09 14:10:41","2024-01-09 14:10:41");
INSERT INTO medicine__activities VALUES("1568","DR MEER","JPMC ORTHO W 17","...","...","LUNCH","3500","1","29/12/2023","2024-01-09 14:12:01","2024-01-09 14:12:01");
INSERT INTO medicine__activities VALUES("1569","DR MATILULLAH","JPMC ORTHO W 17","...","...","DINNER","3000","1","29/12/2023","2024-01-09 14:13:42","2024-01-09 14:13:42");
INSERT INTO medicine__activities VALUES("1570","...","JPMC","...","...","FARE WELL CAKE","1800","1","29/12/2023","2024-01-09 14:15:45","2024-01-09 14:15:45");
INSERT INTO medicine__activities VALUES("1571","DR WAQAS","CIVIL ORTHO 1","...","...","DINNER","3200","1","29/12/2023","2024-01-09 14:16:26","2024-01-09 14:16:26");
INSERT INTO medicine__activities VALUES("1572","DR DAINSH","JPMC ORTHO W 14","...","...","LUNCH","2550","1","30/12/2023","2024-01-09 14:17:23","2024-01-09 14:17:23");
INSERT INTO medicine__activities VALUES("1573","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","2250","1","30/12/2023","2024-01-09 14:18:17","2024-01-09 14:18:17");
INSERT INTO medicine__activities VALUES("1574","DR ZOHAIB","JPMC ORTHO W 17","...","...","LUNCH","3500","1","31/12/2023","2024-01-09 14:19:40","2024-01-09 14:19:40");
INSERT INTO medicine__activities VALUES("1575","DR SAQIB","JPMC ORTHO W 17","...","...","DINNER","3500","1","31/12/2023","2024-01-09 14:36:18","2024-01-09 14:36:18");
INSERT INTO medicine__activities VALUES("1576","DR HARIS","JPMC W 14","...","...","CASH","5000","1","1/1/2024","2024-01-09 14:36:52","2024-01-09 14:36:52");
INSERT INTO medicine__activities VALUES("1577","DR DANISH","JPMC W 14","...","...","CASH","5000","1","1/1/2024","2024-01-09 14:38:07","2024-01-09 14:38:07");
INSERT INTO medicine__activities VALUES("1578","DR QASIM","JPMC W 17","...","...","LUNCH","3000","1","1/1/2024","2024-01-09 14:38:38","2024-01-09 14:38:38");
INSERT INTO medicine__activities VALUES("1579","DR WALIULLAH","JPMC W 17","...","...","DINNER","3000","1","1/1/2024","2024-01-09 14:39:09","2024-01-09 14:39:09");
INSERT INTO medicine__activities VALUES("1580","DR NAZNEEN","ANKER SERYA","...","...","EGGS","1800","1","1/1/2024","2024-01-09 14:39:41","2024-01-09 14:39:41");
INSERT INTO medicine__activities VALUES("1581","DR SAJJAD","CIVIL ORTHO 2","...","...","DINNER","3200","1","31/12/2023","2024-01-09 14:40:42","2024-01-09 14:40:42");
INSERT INTO medicine__activities VALUES("1582","DR MANAN","CIVIL ORTHO 1","...","...","DINNER","2000","1","1/1/2024","2024-01-09 14:41:30","2024-01-09 14:41:30");
INSERT INTO medicine__activities VALUES("1583","IMRAN PHARMAX","...","...","..","CASH","3000","1","1/1/2024","2024-01-09 14:42:01","2024-01-09 14:42:01");
INSERT INTO medicine__activities VALUES("1584","KAMRAN BAHI","CIVIL","...","...","ACTIVITY","2500","1","23/1/2024","2024-02-13 10:20:02","2024-02-13 10:20:02");
INSERT INTO medicine__activities VALUES("1585","CIVIL","OPD UNIT2","...","...","REFRESHMENT","900","1","23/1/2024","2024-02-13 10:21:24","2024-02-13 10:21:24");
INSERT INTO medicine__activities VALUES("1586","DR IMTIAZ","JPMC W 14 ORTHO","...","...","LUNCH","3300","1","23/1/2024","2024-02-13 10:24:53","2024-02-13 10:24:53");
INSERT INTO medicine__activities VALUES("1587","DR AZEE,","JPMC W 14 ORTHO","...","...","DINNER","2500","1","23/1/2024","2024-02-13 10:26:13","2024-02-13 10:26:13");
INSERT INTO medicine__activities VALUES("1588","DR SHAZAIB","CIVIL ORTHO 2","..","..","DINNER","2300","1","23/1/2024","2024-02-13 10:28:45","2024-02-13 10:28:45");
INSERT INTO medicine__activities VALUES("1589","DR SUBHAN","JPMC W 17 ORTHO","...","...","CASH","10000","1","23/1/2024","2024-02-13 10:31:08","2024-02-13 10:31:08");
INSERT INTO medicine__activities VALUES("1590","DR MANAN","CIVIL ORTHO UNIT 1","...","..","DINNER","2000","1","24/1/2024","2024-02-13 10:32:06","2024-02-13 10:32:06");
INSERT INTO medicine__activities VALUES("1591","DR MEER","JPMC W 17 ORTHO","...","...","LUNCH","3500","1","24/1/2024","2024-02-13 10:34:21","2024-02-13 10:34:21");
INSERT INTO medicine__activities VALUES("1592","DR NOMAN","JPMC W 17 ORTHO","...","...","DINNER","3000","1","24/1/2024","2024-02-13 10:35:10","2024-02-13 10:35:10");
INSERT INTO medicine__activities VALUES("1593","DR NASIR","JPMC W 17 ORTHO","...","...","CASH","2000","1","24/1/2024","2024-02-13 10:36:07","2024-02-13 10:36:07");
INSERT INTO medicine__activities VALUES("1594","DR ADEEL","ORTHO UNIT 2 WARD","...","...","REFRESHMENT","2400","1","25/1/2024","2024-02-13 10:38:10","2024-02-13 10:38:10");
INSERT INTO medicine__activities VALUES("1595","CIVIL","IRTHO OPD","...","...","REFRESHMENT","500","1","25/1/2024","2024-02-13 10:39:00","2024-02-13 10:39:00");
INSERT INTO medicine__activities VALUES("1596","DR ASIF","CIVIL ORTHO 2","...","...","DINNER","2000","1","25/1/2024","2024-02-13 10:39:47","2024-02-13 10:39:47");
INSERT INTO medicine__activities VALUES("1597","DR SUNITA","SINDH SERVICES APWA","...","..","CASH","7500","1","25/1/2024","2024-02-13 10:40:32","2024-02-13 10:40:32");
INSERT INTO medicine__activities VALUES("1598","DR DAINSH","JPMC W 14 ORTHO","...","...","LUNCH","2800","1","25/1/2024","2024-02-13 10:42:05","2024-02-13 10:42:05");
INSERT INTO medicine__activities VALUES("1599","DR JAFFER","JPMC W 14 ORTHO","...","...","DINNER","2500","1","25/1/2024","2024-02-13 10:43:21","2024-02-13 10:43:21");
INSERT INTO medicine__activities VALUES("1600","DR HUMMA","SINDH SERVICES","...","...","CASH","1500","1","26/1/2024","2024-02-13 10:44:27","2024-02-13 10:44:27");
INSERT INTO medicine__activities VALUES("1601","DR HASNAIN","CIVIL ORTHO 1","...","...","DINNER","3300","1","26/1/2024","2024-02-13 10:46:20","2024-02-13 10:46:20");
INSERT INTO medicine__activities VALUES("1602","DR SAJJAD","CIVIL ORTHO 2","...","...","DINNER","3500","1","27/1/2024","2024-02-13 10:47:04","2024-02-13 10:47:04");
INSERT INTO medicine__activities VALUES("1603","DR MADIHA","JPMC W 14 ORTHO","...","...","LUNCH","3000","1","27/1/2024","2024-02-13 10:47:41","2024-02-13 10:47:41");
INSERT INTO medicine__activities VALUES("1604","DR HARIS","JPMC W 14 ORTHO","...","...","DINNER","2500","1","27/1/2024","2024-02-13 10:48:42","2024-02-13 10:48:42");
INSERT INTO medicine__activities VALUES("1605","DR AMMAR","JPMC W 17 ORTHO","...","...","LUNCH","4500","1","27/1/2024","2024-02-13 10:49:22","2024-02-13 10:49:22");
INSERT INTO medicine__activities VALUES("1606","DR WAJAHAT","CIVIL ORTHO 2","...","...","DINNER","2200","1","27/1/2024","2024-02-13 10:50:04","2024-02-13 10:50:04");
INSERT INTO medicine__activities VALUES("1607","DR  NAZNEEN","ANKEL SERYA","...","..","CASH","1800","1","29/1/2024","2024-02-13 10:54:26","2024-02-13 10:54:26");
INSERT INTO medicine__activities VALUES("1608","DR WAQAR","CIVIL ORTHO 1","...","...","DINNER","2500","1","29/1/2024","2024-02-13 10:55:40","2024-02-13 10:55:40");
INSERT INTO medicine__activities VALUES("1609","DR BADER","OPD ORTHO","...","..","REFRESHMENT","1700","1","29/1/2024","2024-02-13 10:56:34","2024-02-13 10:56:34");
INSERT INTO medicine__activities VALUES("1610","DR JAGDESH","CIVIL ORTHO 1","...","..","CASH","2000","1","29/1/2024","2024-02-13 11:11:17","2024-02-13 11:11:17");
INSERT INTO medicine__activities VALUES("1611","DR HASIB","CIVIL ORTHO OPD","...","...","CASH","1000","1","29/1/2024","2024-02-13 11:11:54","2024-02-13 11:11:54");
INSERT INTO medicine__activities VALUES("1612","DR SAJJAD","CIVIL ORTHO 2","...","....","DINNER","3000","1","9/1/2024","2024-02-13 11:24:22","2024-02-13 11:24:22");
INSERT INTO medicine__activities VALUES("1613","DR ADEEL","CIVIL ORTHO 2 WARD","...","...","REFRESHMENT","2400","1","9/1/2024","2024-02-13 11:25:45","2024-02-13 11:25:45");
INSERT INTO medicine__activities VALUES("1614","DR IMTIAZ","JPMC W 14 ORTHO","...","...","LUNCH","3400","1","9/1/2024","2024-02-13 11:26:29","2024-02-13 11:26:29");
INSERT INTO medicine__activities VALUES("1615","DR AZEEM KHOSO","JPMC W 14 ORTHO","..","..","DINNER","2000","1","9/1/2024","2024-02-13 11:27:42","2024-02-13 11:27:42");
INSERT INTO medicine__activities VALUES("1616","DR MER","JPMC W 17 ORTHO","...","...","LUNCH","3500","1","10/1/2024","2024-02-13 11:28:25","2024-02-13 11:28:25");
INSERT INTO medicine__activities VALUES("1617","DR JAMEL","OJHA ORTHO DOW SAFORA","...","...","OPD REFRESMENT","1300","1","10/1/2024","2024-02-13 11:31:53","2024-02-13 11:31:53");
INSERT INTO medicine__activities VALUES("1618","DR NOMAN","JPMC W 17 ORTHO","...","...","DINNER","3000","1","10/1/2024","2024-02-13 11:32:32","2024-02-13 11:32:32");
INSERT INTO medicine__activities VALUES("1619","DR HABIB","CIVIL ORTHO OPD INCHRGE","..","...","FISH ACTIVITY","6500","1","10/1/2024","2024-02-13 11:33:17","2024-02-13 11:33:17");
INSERT INTO medicine__activities VALUES("1620","RIAZ","PHARMAX","..","...","CASH","17500","1","10/1/2024","2024-02-13 11:34:34","2024-02-13 11:34:34");
INSERT INTO medicine__activities VALUES("1621","DR SHAZAIB","CIVIL ORTHO 2","...","...","DINNER","2500","1","11/1/2024","2024-02-13 11:35:11","2024-02-13 11:35:11");
INSERT INTO medicine__activities VALUES("1622","DR DANISH","JPMC W 14 ORTHO","..","...","LUNCH","2000","1","11/1/2024","2024-02-13 11:38:08","2024-02-13 11:38:08");
INSERT INTO medicine__activities VALUES("1623","DR HARIS","JPMC W 14 ORTHO","...","...","DINNER","2000","1","11/1/2024","2024-02-13 11:38:46","2024-02-13 11:38:46");
INSERT INTO medicine__activities VALUES("1624","...","JPMC OPD","...","...","REFRESHMENT","1000","1","11/1/2024","2024-02-13 11:40:17","2024-02-13 11:40:17");
INSERT INTO medicine__activities VALUES("1625","DR ASIF","CIVIL OPD","...","..","REFRESHMENT","500","1","11/1/2024","2024-02-13 11:41:11","2024-02-13 11:41:11");
INSERT INTO medicine__activities VALUES("1626","DR QURATULAIN","MODERN HOSPITAL","...","...","CASH","12000","1","11/1/2024","2024-02-13 11:43:17","2024-02-13 11:43:17");
INSERT INTO medicine__activities VALUES("1627","DR SUNNY","JPMC ORTHO 14","..","..","FAREWELL","10000","1","11/1/2024","2024-02-13 11:43:54","2024-02-13 11:43:54");
INSERT INTO medicine__activities VALUES("1628","DR PREM CHAND","CIVIL ORTHO 1","...","...","DINNER","3000","1","12/1/2024","2024-02-13 11:44:38","2024-02-13 11:44:38");
INSERT INTO medicine__activities VALUES("1629","DR ASIF","CIVIL ORTHO 2","...","...","DINER","1600","1","13/1/2024","2024-02-13 11:45:37","2024-02-13 11:45:37");
INSERT INTO medicine__activities VALUES("1630","DR ZAHID","CIVIL ORTHO 2","...","...","DINNER","2800","1","14/1/2024","2024-02-13 11:46:18","2024-02-13 11:46:18");
INSERT INTO medicine__activities VALUES("1631","DR FARUKH","JPMC ORTHO W 14","...","..","LUNCH","2700","1","13/1/2024","2024-02-13 11:47:08","2024-02-13 11:47:08");
INSERT INTO medicine__activities VALUES("1632","DR WAQAR","JPMC ORTHO","..","..","MOBILE ACTIVITY","5000","1","13/1/2024","2024-02-13 11:47:49","2024-02-13 11:47:49");
INSERT INTO medicine__activities VALUES("1633","NADIR","CIVIL GUARD","...","...","CASH","1500","1","15/1/2024","2024-02-13 11:48:29","2024-02-13 11:48:29");
INSERT INTO medicine__activities VALUES("1634","DR JAGDSH","CIVIL ORTHO OPD","...","...","REFRESHMENT","1800","1","15/1/2024","2024-02-13 11:49:29","2024-02-13 11:49:29");
INSERT INTO medicine__activities VALUES("1635","DR MANAN","CIVIL ORTHHO 1","...","...","DINNER","2500","1","15/1/2024","2024-02-13 11:50:24","2024-02-13 11:50:24");
INSERT INTO medicine__activities VALUES("1636","DR ZAHID","CIVIL ORTHO 2","...","...","DINNER","2800","1","14/1/2024","2024-02-13 12:14:18","2024-02-13 12:14:18");
INSERT INTO medicine__activities VALUES("1637","DR FARUKH","JPMC ORTHO W 14","...","...","LUNCH","2700","1","13/1/2024","2024-02-13 12:15:10","2024-02-13 12:15:10");
INSERT INTO medicine__activities VALUES("1638","DR JAGDESH","CIVIL ORTHO OPD","...","...","REFRESHMENT","1800","1","15/1/2024","2024-02-13 12:21:12","2024-02-13 12:21:12");
INSERT INTO medicine__activities VALUES("1639","DR MANAN","CIVIL ORTHO 1","...","...","DINNER","2500","1","15/1/2024","2024-02-13 12:22:06","2024-02-13 12:22:06");
INSERT INTO medicine__activities VALUES("1640","DR QASIM","JPMC ORTHO W 17","...","...","LUNCH","3500","1","15/1/2024","2024-02-13 12:22:52","2024-02-13 12:22:52");
INSERT INTO medicine__activities VALUES("1641","DR SULTAN","JPMC ORTHO W 17","...","...","LUNCH","3500","1","15/1/2024","2024-02-13 12:25:13","2024-02-13 12:25:13");
INSERT INTO medicine__activities VALUES("1642","DR ALTAF","JPMC ORTHO W 17","...","...","REFRESHMENT","1500","1","15/1/2024","2024-02-13 12:25:51","2024-02-13 12:25:51");
INSERT INTO medicine__activities VALUES("1643","DR NAZNEEN","ANKER SERYA","...","...","CASH","1800","1","15/1/2024","2024-02-13 12:27:04","2024-02-13 12:27:04");
INSERT INTO medicine__activities VALUES("1644","CIVIL","OPD","...","...","REFRESHMENT","1000","1","26/1/2024","2024-02-13 12:30:32","2024-02-13 12:30:32");
INSERT INTO medicine__activities VALUES("1645","DR QASIM","JPMC W 17 ORTHO","...","...","INSTALMENT","7000","1","26/12/2023","2024-02-13 12:58:59","2024-02-13 12:58:59");
INSERT INTO medicine__activities VALUES("1646","DR SHAZAIB","CIVIL ORTHO 2","...","...","DINNER","3000","1","26/12/2023","2024-02-13 13:02:14","2024-02-13 13:02:14");
INSERT INTO medicine__activities VALUES("1647","DR AMMAR","JPMC ORTHO W 17","...","...","LUNCH","3000","1","27/1/2024","2024-02-13 13:20:32","2024-02-13 13:20:32");
INSERT INTO medicine__activities VALUES("1648","DR HASNAIN","CIVIL ORTHO UNIT 1","...","...","DINNER","3150","1","27/12/2023","2024-02-13 13:21:20","2024-02-13 13:21:20");
INSERT INTO medicine__activities VALUES("1649","DR MUZAMIL","SERVICES & BANTVA","...","...","ACTIVITY","1700","1","27/12/2023","2024-02-13 13:22:18","2024-02-13 13:22:18");
INSERT INTO medicine__activities VALUES("1650","DR FARHEEN","AL TIBRI","...","...","BOOKS","1600","1","27/12/2023","2024-02-13 13:23:33","2024-02-13 13:23:33");
INSERT INTO medicine__activities VALUES("1651","DR SAJJAD","CIVIL ORTHO UNIT 2","...","..","DINNER","3000","1","28/12/2023","2024-02-13 13:35:44","2024-02-13 13:35:44");
INSERT INTO medicine__activities VALUES("1652","...","CIVIL OPD","...","...","REFRESHMENT","700","1","28/12/2023","2024-02-13 13:37:49","2024-02-13 13:37:49");
INSERT INTO medicine__activities VALUES("1653","DR HARIS","JPMC ORTHO  W 14","...","...","LUNCH","3000","1","28/12/2023","2024-02-13 13:38:32","2024-02-13 13:38:32");
INSERT INTO medicine__activities VALUES("1654","DR AZEEM","JPMC ORTHO W 14","...","...","DINNER","2500","1","28/12/2023","2024-02-13 13:40:09","2024-02-13 13:40:09");
INSERT INTO medicine__activities VALUES("1655","..","JPMC WARD","...","...","ACTIVITY","1000","1","28/12/2023","2024-02-13 13:40:51","2024-02-13 13:40:51");
INSERT INTO medicine__activities VALUES("1656","DR MASOOD","AL TIBRI","...","...","CASH","20000","1","29/12/2023","2024-02-13 13:41:36","2024-02-13 13:41:36");
INSERT INTO medicine__activities VALUES("1657","DR MEER","JPMC ORTHO W 17","..","...","LUNCH","3500","1","29/12/2023","2024-02-13 13:42:24","2024-02-13 13:42:24");
INSERT INTO medicine__activities VALUES("1658","DR HARIS","JPMC  ORTHO W 14","...","..","LUNCH","3000","1","28/12/2023","2024-02-13 13:48:29","2024-02-13 13:48:29");
INSERT INTO medicine__activities VALUES("1659","..","CIVIL OPD","..","....","REFRESHMENT","700","1","28/12/2023","2024-02-13 13:50:46","2024-02-13 13:50:46");
INSERT INTO medicine__activities VALUES("1660","DR AZEEM","JPMC ORTHO W 14","...","...","DINNER","2500","1","28/12/2023","2024-02-13 13:51:32","2024-02-13 13:51:32");
INSERT INTO medicine__activities VALUES("1661","...","JPMC WARD","...","...","DINNER","1000","1","28/12/2023","2024-02-13 13:52:23","2024-02-13 13:52:23");
INSERT INTO medicine__activities VALUES("1662","DR MASOOD","AL TIBRI","...","...","CASH","20000","1","29/12/2023","2024-02-13 14:05:56","2024-02-13 14:05:56");
INSERT INTO medicine__activities VALUES("1663","DR MEER","JPMC ORTHO W 17","...","...","LUNCH","3500","1","29/12/2023","2024-02-13 14:07:04","2024-02-13 14:07:04");
INSERT INTO medicine__activities VALUES("1664","DR MADHIA","JPMC ORTHO W 17","...","...","DINNER","3000","1","29/12/2023","2024-02-13 14:08:43","2024-02-13 14:08:43");
INSERT INTO medicine__activities VALUES("1665","..","JPMC  FAREWELL","...","...","CAKE","1800","1","29/12/2023","2024-02-13 14:09:40","2024-02-13 14:09:40");
INSERT INTO medicine__activities VALUES("1666","DR WAQAR","CIVIL ORTHO W 1","...","...","DINNER","3200","1","29/12/2023","2024-02-13 14:11:36","2024-02-13 14:11:36");
INSERT INTO medicine__activities VALUES("1667","DR DANISH","JPMC ORTHO W 14","..","..","LUNCH","2550","1","30/12/2023","2024-02-13 14:13:32","2024-02-13 14:15:58");
INSERT INTO medicine__activities VALUES("1668","DR ASIF","CIVIL ORTHO W 2","..","..","DINNER","2250","1","30/12/2023","2024-02-13 14:14:46","2024-02-13 14:14:46");
INSERT INTO medicine__activities VALUES("1669","DR  ZOHAIB","JPMC ORTHO W 17","..","...","LUNCH","3500","1","3/12/2023","2024-02-13 14:18:28","2024-02-13 14:18:28");
INSERT INTO medicine__activities VALUES("1670","DR SAQIB","JPMC ORTHO W 17","..","...","DINNER","3500","1","31/12/2023","2024-02-13 14:19:40","2024-02-13 14:19:40");
INSERT INTO medicine__activities VALUES("1671","DR HARIS","JPMC W 14 ORTHO","...","..","CASH","CASH","1","1/1/2024","2024-02-13 14:21:51","2024-02-13 14:21:51");
INSERT INTO medicine__activities VALUES("1672","DR DANISH","JPMC W 14 ORTHO","..","..","CASH","5000","1","1/1/2024","2024-02-13 14:26:11","2024-02-13 14:26:11");
INSERT INTO medicine__activities VALUES("1673","DR QASIM","JPMC W 14","..","..","LUNCH","3000","1","1/1/2024","2024-02-13 14:27:17","2024-02-13 14:27:17");
INSERT INTO medicine__activities VALUES("1674","DR WALIULLAH","JPMC W 14","..","...","DINNER","3000","1","1/1/2024","2024-02-13 14:28:29","2024-02-13 14:28:29");
INSERT INTO medicine__activities VALUES("1675","DR NAZNEEN","ANKEL SERYA","..","..","CASH","2000","1","1/1/2024","2024-02-13 14:29:12","2024-02-13 14:29:12");
INSERT INTO medicine__activities VALUES("1676","DR SAJJAD","CIVIL ORTHO 2","...","...","DINNER","3200","1","31/12/2023","2024-02-13 14:31:48","2024-02-13 14:31:48");
INSERT INTO medicine__activities VALUES("1677","DR MANAN","CIVIL ORTHO 1","..","..","DINNER","2000","1","1/1/2023`","2024-02-13 14:32:35","2024-02-13 14:32:35");
INSERT INTO medicine__activities VALUES("1678","IMRAN","PHARMAX","..","..","CASH","3000","1","1/1/2024","2024-02-13 14:33:18","2024-02-13 14:33:18");
INSERT INTO medicine__activities VALUES("1679","DR DANISH","JPMC W 14","..","..","DINNER","2000","1","19/1/2024","2024-02-13 14:42:31","2024-02-13 14:42:31");
INSERT INTO medicine__activities VALUES("1680","DR HASNAIN","CIVIL ORTHO 1","..","..","DINNER","2800","1","20/1/2024","2024-02-13 14:44:20","2024-02-13 14:44:20");
INSERT INTO medicine__activities VALUES("1681","DR RAZIA KHOJO","I-S-M HOSP","..","..","ACTIVITY","500","1","20/1/2024","2024-02-13 14:45:58","2024-02-13 14:45:58");
INSERT INTO medicine__activities VALUES("1682","DR KHADIJA","AL TIBRI","..","..","BREAK  FAST","16000","1","21/1/2024","2024-02-13 14:46:48","2024-02-13 14:46:48");
INSERT INTO medicine__activities VALUES("1683","DR ASIF","CIVIL ORTHO 2","....","...","DINNER","2250","1","21/1/2024","2024-02-13 14:49:46","2024-02-13 14:49:46");
INSERT INTO medicine__activities VALUES("1684","DR FARAZ","JPMC W 14 ORTHO","..","..","LUNCH","3050","1","21/1/2024","2024-02-13 14:50:24","2024-02-13 14:50:24");
INSERT INTO medicine__activities VALUES("1685","DR JAFFAR","JPMC W 14 ORTHO","..","..","DINNER","2500","1","21/1/2024","2024-02-13 14:51:55","2024-02-13 14:51:55");
INSERT INTO medicine__activities VALUES("1686","DR DANISH","JPMC W 14 ORTHO","..","..","LUNCH","2000","1","21/1/2024","2024-02-13 14:53:12","2024-02-13 14:53:12");
INSERT INTO medicine__activities VALUES("1687","DR HARIS","JPMC W 14","..","..","DINNER","2000","1","21/1/2024","2024-02-13 14:54:19","2024-02-13 14:54:19");
INSERT INTO medicine__activities VALUES("1688","DR JAGDESH","CIVIL OPD","..","..","REFRESHMENT","1800","1","22/1/2024","2024-02-13 14:55:18","2024-02-13 14:55:18");
INSERT INTO medicine__activities VALUES("1689","DR FAYAZ","CIVIL ORTHO 1","..","..","DINNER","2500","1","22/1/2024","2024-02-13 14:56:03","2024-02-13 14:56:03");
INSERT INTO medicine__activities VALUES("1690","DR AMMAR","JPMC W 17","..","..","LUNCH","4500","1","22/1/2024","2024-02-13 14:57:14","2024-02-13 14:57:14");
INSERT INTO medicine__activities VALUES("1691","DR NAZNEEN","ANKEL SERYA","..","..","ACTIVITY","3300","1","22/1/2024","2024-02-13 14:58:45","2024-02-13 14:58:45");
INSERT INTO medicine__activities VALUES("1692","DR HINA","SINDH SERVICES","..","..","INSTALMENT","2000","1","22/1/2024","2024-02-13 15:02:04","2024-02-13 15:02:04");
INSERT INTO medicine__activities VALUES("1693","AURANGZAIB LALA","CIVIL","..","..","CASH","10000","1","17/1/2024","2024-02-13 15:05:10","2024-02-13 15:05:10");
INSERT INTO medicine__activities VALUES("1694","DR SAJJAD","CIVIL ORTHO UNIT 2","..","..","DINNER","3000","1","17/1/2024","2024-02-13 15:07:32","2024-02-13 15:07:32");
INSERT INTO medicine__activities VALUES("1695","DR ZAHID","CIVIL ORTHO UNIT 2","..","..","BOOK","1200","1","17/1/2024","2024-02-13 15:10:31","2024-02-13 15:10:31");
INSERT INTO medicine__activities VALUES("1696","DR IMTIAZ","JPMC W 14 ORTHO","..","..","LUNCH","2900","1","17/1/2024","2024-02-13 15:11:31","2024-02-13 15:11:31");
INSERT INTO medicine__activities VALUES("1697","DR AZEEM","JPMC W 14","..","...","DINNER","2000","1","17/1/2024","2024-02-13 15:12:29","2024-02-13 15:12:29");
INSERT INTO medicine__activities VALUES("1698","DR PEER","SINDH SERVICES HOSP","..","...","REPARE","13000","1","17/1/2024","2024-02-13 15:14:02","2024-02-13 15:14:02");
INSERT INTO medicine__activities VALUES("1699","DR NOMAN","JPMC W 17 ORTHO","..","..","CASH","5000","1","17/1/2024","2024-02-13 15:15:09","2024-02-13 15:15:09");
INSERT INTO medicine__activities VALUES("1700","DR QASIM","JPMC W 17 ORTHO","..","..","INSTALMENT","7000","1","17/1/2024","2024-02-13 15:17:27","2024-02-13 15:17:27");
INSERT INTO medicine__activities VALUES("1701","RIAZ","PHARMACY","..","...","CASH","5000","1","17/1/2024","2024-02-13 15:18:10","2024-02-13 15:18:10");
INSERT INTO medicine__activities VALUES("1702","DR SUBHAN","JPMC WRD 17","..","..","REFRESHMENT","2000","1","17/1/2024","2024-02-13 15:19:27","2024-02-13 15:19:27");
INSERT INTO medicine__activities VALUES("1703","DR KHALID","JPMC WARD 17","..","..","LUNCH","3000","1","18/1/2024","2024-02-13 15:20:31","2024-02-13 15:20:31");
INSERT INTO medicine__activities VALUES("1704","DR MEER","JPMC WARD 17","..","..","DINNER","3500","1","18/1/2024","2024-02-13 15:21:33","2024-02-13 15:21:33");
INSERT INTO medicine__activities VALUES("1705","DR WAQAR","CIVIL ORTHO UNIT 1","...","..","DINNER","2500","1","18/1/2024","2024-02-13 15:22:53","2024-02-13 15:22:53");
INSERT INTO medicine__activities VALUES("1706","DR JAMEEL","DOW UNIVERSITY","..","..","REFRESHMENT","900","1","18/1/2024","2024-02-13 15:23:44","2024-02-13 15:23:44");
INSERT INTO medicine__activities VALUES("1707","DR MADIHA","JPMC W 14 ORTHO","..","..","LUNCH","2000","1","19/1/2024","2024-02-13 15:25:16","2024-02-13 15:25:16");
INSERT INTO medicine__activities VALUES("1708","DR MADHIA","JPMC W 14  ORTHO","..","..","LUNCH","2000","1","19/1/2024","2024-02-13 15:32:53","2024-02-13 15:32:53");
INSERT INTO medicine__activities VALUES("1709","DR DANISH","JPMC W 14 ORTHO","..","..","DINNER","2000","1","19/1/2024","2024-02-13 15:33:23","2024-02-13 15:33:23");
INSERT INTO medicine__activities VALUES("1710","DR SHAHZAIB","CIVIL ORTHO UNIT 2","..","..","DINNER","2700","1","19/1/2024","2024-02-13 15:34:04","2024-02-13 15:34:04");
INSERT INTO medicine__activities VALUES("1711","DR WAJAHAT","OPD","..","..","REFRESHMENT","1000","1","19/1/2024","2024-02-13 15:34:50","2024-02-13 15:34:50");
INSERT INTO medicine__activities VALUES("1712","DR ASIF","CIVIL ORTHO UNIT 2","..","...","DINNER","2500","1","2/1/2024","2024-02-13 15:39:11","2024-02-13 15:39:11");
INSERT INTO medicine__activities VALUES("1713","DR IMTIAZ","JPMC ORTHO W 14","...","..","LUNCH","3030","1","2/1/2024","2024-02-13 15:40:00","2024-02-13 15:40:00");
INSERT INTO medicine__activities VALUES("1714","DR AZEEM KHOSO","JPMC ORTHO 14","..","..","DINNER","2000","1","2/1/2024","2024-02-13 15:40:55","2024-02-13 15:40:55");
INSERT INTO medicine__activities VALUES("1715","DR IQBAL KIYANI","TAJ COMPLEX","..","..","INSTALMENT","24000","1","2/1/2024","2024-02-13 15:42:11","2024-02-13 15:42:11");
INSERT INTO medicine__activities VALUES("1716","DR MANAN","CIVIL ORTHO UNIT 1","..","..","dinner","2000","1","3/1/2024","2024-02-13 15:42:49","2024-02-13 15:42:49");
INSERT INTO medicine__activities VALUES("1717","dr subhan","jpmc ortho w 17","...","..","lunch","3200","1","3/1/2024","2024-02-13 15:44:51","2024-02-13 15:44:51");
INSERT INTO medicine__activities VALUES("1718","DR REHAN","JPMC ORTHO W 17","...","...","DINNER","3000","1","3/1/2024","2024-02-13 15:45:43","2024-02-13 15:45:43");
INSERT INTO medicine__activities VALUES("1719","LALA AURANGZAIB","CIVIL","..","..","CASH","5000","1","3/1/2024","2024-02-13 15:46:30","2024-02-13 15:46:30");
INSERT INTO medicine__activities VALUES("1720","DR JAMEEL","DOW SAFORA","..","..","REFRESHMENT","500","1","3/1/2024","2024-02-13 15:47:21","2024-02-13 15:47:21");
INSERT INTO medicine__activities VALUES("1721","DR JAGDESH","CIVIL OPD","...","...","REFRESHMENT","2500","1","3/1/2024","2024-02-13 15:48:03","2024-02-13 15:48:03");
INSERT INTO medicine__activities VALUES("1722","DR SAJJAD","CIVIL  ORTHO 2","..","..","DINNER","3000","1","4/1/2024","2024-02-13 15:49:28","2024-02-13 15:49:28");
INSERT INTO medicine__activities VALUES("1723","CIVIL","OPD ORTHO","..","..","REFRESHMENT","700","1","4/1/2024","2024-02-13 15:51:16","2024-02-13 15:51:16");
INSERT INTO medicine__activities VALUES("1724","DR ADEEL","ORTHO UNIT 2","..","...","REFRESHMENT","600","1","4/1/2024","2024-02-13 15:52:15","2024-02-13 15:52:15");
INSERT INTO medicine__activities VALUES("1725","DR DANISH","JPMC ORTHO 14","..","..","LUNCH","3100","1","4/1/2024","2024-02-13 15:53:13","2024-02-13 15:53:13");
INSERT INTO medicine__activities VALUES("1726","DR HARIS","JPMC ORTHO 14","..","..","DINNER","2500","1","4/1/2024","2024-02-13 15:54:25","2024-02-13 15:54:25");
INSERT INTO medicine__activities VALUES("1727","JPMC","WARD 17","...","..","REFRESHMENT","1500","1","4/1/2024","2024-02-13 15:55:13","2024-02-13 15:55:13");
INSERT INTO medicine__activities VALUES("1728","JPMC","WARD 14","..","..","REFRESHMENT","1000","1","4/1/2024","2024-02-13 15:56:34","2024-02-13 15:56:34");
INSERT INTO medicine__activities VALUES("1729","DR WAQAR","CIVIL ORTHO 1","...","..","DINNER","2000","1","5/1/2024","2024-02-13 15:57:33","2024-02-13 15:57:33");
INSERT INTO medicine__activities VALUES("1730","DR FAYAZ","CIVIL ORTHO 1","...","..","B FAST","4500","1","5/1/2024","2024-02-13 16:03:32","2024-02-13 16:03:32");
INSERT INTO medicine__activities VALUES("1731","DR SHAZAIB","CIVIL ORTHO 2","...","..","DINNER","2500","1","6/1/2024","2024-02-13 16:04:30","2024-02-13 16:04:30");
INSERT INTO medicine__activities VALUES("1732","DR M A QURESHI","ANKEL SERYA","..","..","FISH ACTIVITY","7500","1","5/1/2024","2024-02-13 16:05:54","2024-02-13 16:05:54");
INSERT INTO medicine__activities VALUES("1733","DR PARVEZ & DR ASIF BOOKS","...","...","...","BOOKS","2800","1","6/1/2024","2024-02-13 16:06:47","2024-02-13 16:06:47");
INSERT INTO medicine__activities VALUES("1734","DR MADIHA","JPMC ORTHO 14","..","..","LUNCH","2000","1","6/1/2024","2024-02-13 16:08:09","2024-02-13 16:08:09");
INSERT INTO medicine__activities VALUES("1735","DR ASAD","JPMC ORTHO 14","..","..","DINNER","2000","1","6/1/2024","2024-02-13 16:08:54","2024-02-13 16:08:54");
INSERT INTO medicine__activities VALUES("1736","DR SAJJAD","CIVIL ORTHO 2","..","...","DINNER","3000","1","19/2/2024","2024-02-22 11:57:43","2024-02-22 11:57:43");
INSERT INTO medicine__activities VALUES("1737","DR ADEEL","CIVIL ORTHO 2 HOD","..","...","REFRESHMENT","2700","1","19/2/2024","2024-02-22 12:00:15","2024-02-22 12:00:15");
INSERT INTO medicine__activities VALUES("1738","ZAHEER WAHEED","CIVIL CHOWKI","..","...","CASH","2000","1","19/2/2024","2024-02-22 12:00:54","2024-02-22 12:00:54");
INSERT INTO medicine__activities VALUES("1739","DR IMTIAZ","JPMC W 14 ORTHO","..","...","LUNCH","3100","1","19/2/2024","2024-02-22 12:02:24","2024-02-22 12:02:24");
INSERT INTO medicine__activities VALUES("1740","DR AZEEM KHOSO","JPMC W 14 ORTHO","..","...","DINNER","2500","1","19/2/2024","2024-02-22 12:03:05","2024-02-22 12:03:05");
INSERT INTO medicine__activities VALUES("1741","AURANGZAIB LALA","CIVIL HOSP","..","..",".CASH","10000","1","19/2/2024","2024-02-22 12:03:47","2024-02-22 12:03:47");
INSERT INTO medicine__activities VALUES("1742","MULU JUMMA","HOSPITAL","...","...","REFRESHMENT","1000","1","19/2/2024","2024-02-22 12:04:43","2024-02-22 12:04:43");
INSERT INTO medicine__activities VALUES("1743","DR MEER","JPMC W 17 ORTHO","..","...","LUNCH & DINNER","6000","1","19/2/2024","2024-02-22 12:05:22","2024-02-22 12:05:22");
INSERT INTO medicine__activities VALUES("1744","DR SUBHAN","JPMC W 17 ORTHO","..","...","ACTIVITY","7000","1","19/2/2024","2024-02-22 12:06:59","2024-02-22 12:06:59");
INSERT INTO medicine__activities VALUES("1745","DR SAJJAD SHANI","JPMC W 14 ORTHO","..","..","ACTIVITY","5000","1","19/2/2024","2024-02-22 12:08:24","2024-02-22 12:08:24");
INSERT INTO medicine__activities VALUES("1746","NADIR","CIVIL OPD","..","..","ACTIVITY","1500","1","19/2/2024","2024-02-22 12:10:59","2024-02-22 12:10:59");
INSERT INTO medicine__activities VALUES("1747","DR HASNAIN","CIVIL ORTHO 1","..","..","DINNER","3500","1","19/2/2024","2024-02-22 12:11:32","2024-02-22 12:11:32");
INSERT INTO medicine__activities VALUES("1748","dr jameel","DOW SAFORA","...","...","REFRESHMENT","1200","1","19/2/2024","2024-02-22 12:12:12","2024-02-22 12:12:12");
INSERT INTO medicine__activities VALUES("1749","CIVIL","OPD","..","..","REFRESHMENT","1000","1","19/2/2024","2024-02-22 12:12:36","2024-02-22 12:12:36");
INSERT INTO medicine__activities VALUES("1750","CIVIL","OPD ORTHO 2","..",".","REFRESHMENT","1000","1","19/2/2024","2024-02-22 12:13:00","2024-02-22 12:13:00");
INSERT INTO medicine__activities VALUES("1751","DR MADIHA","JPMC W 14","..","..","LUNCH","3150","1","19/2/2024","2024-02-22 12:13:31","2024-02-22 12:13:31");
INSERT INTO medicine__activities VALUES("1752","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","3000","1","19/2/2024","2024-02-22 12:14:10","2024-02-22 12:14:10");
INSERT INTO medicine__activities VALUES("1753","DR DANISH","JPMC ORTHO W 14","..","..","DINNER","2500","1","19/2/2024","2024-02-22 12:14:49","2024-02-22 12:14:49");
INSERT INTO medicine__activities VALUES("1754","DR MANAN","CIVIL ORTHO 1","..","...","DINNER","2000","1","19/2/2024","2024-02-22 12:15:28","2024-02-22 12:15:28");
INSERT INTO medicine__activities VALUES("1755","DR LAL MALIK","JPMC W 17 ORTHO","..",".","LUNCH & DINNER","6000","1","19/2/2024","2024-02-22 12:16:21","2024-02-22 12:16:21");
INSERT INTO medicine__activities VALUES("1756","DR QAMAR ABBAS","MOTHER CARE","..","....","ACTIVITY","2500","1","19/2/2024","2024-02-22 12:16:55","2024-02-22 12:16:55");
INSERT INTO medicine__activities VALUES("1757","DR MAIRAJ","CIVIL ORTHO 2","...","...","DINNER","3000","1","19/2/2024","2024-02-22 12:17:40","2024-02-22 12:17:40");
INSERT INTO medicine__activities VALUES("1758","DR FARUKH","JPMC W 14 ORTHO","...","...","LUNCH","2000","1","19/2/2024","2024-02-22 12:18:20","2024-02-22 12:18:20");
INSERT INTO medicine__activities VALUES("1759","DR SHAZAIB","CIVIL ORTHO 2","..","...","DINNER","3000","1","19/2/2024","2024-02-22 12:19:33","2024-02-22 12:19:33");
INSERT INTO medicine__activities VALUES("1760","DR AZEEM KHOSO","JPMC W 14","..","..","LUNCH (SUNDAY)","3000","1","19/2/2024","2024-02-22 12:20:21","2024-02-22 12:20:21");
INSERT INTO medicine__activities VALUES("1761","DR IMTIAZ","JPMC W 14","...","...","DINNER","3100","1","19/2/2024","2024-02-22 12:21:05","2024-02-22 12:21:05");
INSERT INTO medicine__activities VALUES("1762","DR JAGDESH","CIVIL ORTHO 1","..","...","REFRESHMENT","1500","1","19/2/2024","2024-02-22 12:22:09","2024-02-22 12:22:09");
INSERT INTO medicine__activities VALUES("1763","DR PREM CHAND","CIVIL ORTHO 1","..","..","DINNER","3500","1","19/2/2024","2024-02-22 12:22:45","2024-02-22 12:22:45");
INSERT INTO medicine__activities VALUES("1764","DR NAZNEEN","ANKEL SERYA","..","..","ACTIVITY","3000","1","19/2/2024","2024-02-22 12:23:16","2024-02-22 12:23:16");
INSERT INTO medicine__activities VALUES("1765","DR QURATULAIN","MODERN HOSP","..","..","ACTIVITY","13000","1","19/2/2024","2024-02-22 12:23:53","2024-02-22 12:23:53");
INSERT INTO medicine__activities VALUES("1766","DR PEER MUJTABA","SINDH SERVICES HOSP","...","..","ACTIVITY","7000","1","19/2/2024","2024-02-22 12:24:54","2024-02-22 12:24:54");
INSERT INTO medicine__activities VALUES("1767","DR SAJJAD","CIVIL ORTHO 2","..","...","DINNER","3000","1","26/2/2024","2024-03-05 10:50:00","2024-03-05 10:50:00");
INSERT INTO medicine__activities VALUES("1768","DR MADIHA","JPMC W 14 ORTHO","..","...","LUNCH","3000","1","26/2/2024","2024-03-05 10:52:42","2024-03-05 10:52:42");
INSERT INTO medicine__activities VALUES("1769","CIVIL","OPD","..","...","REFRESHMENT","500","1","26/2/2024","2024-03-05 10:53:38","2024-03-05 10:53:38");
INSERT INTO medicine__activities VALUES("1770","DR QAMAR ABBAS","MOTHER CARE","..","...","LABOUR","3000","1","26/2/2024","2024-03-05 10:54:19","2024-03-05 10:54:19");
INSERT INTO medicine__activities VALUES("1771","DR AZEEM KHOSO","JPMC ORTHO W 14","..","...","DINNER","2500","1","26/2/2024","2024-03-05 10:55:02","2024-03-05 10:55:02");
INSERT INTO medicine__activities VALUES("1772","DR HARIS","JPMC W 14 ORTHO","..","...","ACTIVITY","3000","1","26/2/2024","2024-03-05 10:57:20","2024-03-05 10:57:20");
INSERT INTO medicine__activities VALUES("1773","DR SHARJEEL","CIVIL ORTHO 1","...","...","BOOK","1900","1","26/2/2024","2024-03-05 11:03:30","2024-03-05 11:03:30");
INSERT INTO medicine__activities VALUES("1774","DR HABIB MEMON","CIVIL OPD ORTHO","..","..","VISITING CARD","2000","1","26/2/2024","2024-03-05 11:04:21","2024-03-05 11:04:21");
INSERT INTO medicine__activities VALUES("1775","DR RAZZAK","JPM W 14 ORTHO","..","...","ACTIVITY","1500","1","26/2/2024","2024-03-05 11:06:15","2024-03-05 11:06:15");
INSERT INTO medicine__activities VALUES("1776","DR MANAN","CIVIL ORTHO 1","..","...","DINNER","2000","1","26/2/2024","2024-03-05 11:06:52","2024-03-05 11:06:52");
INSERT INTO medicine__activities VALUES("1777","DR MEER","JPMC ORTHO W 17","..","..","LUNCH + DINNER","6000","1","26/2/2024","2024-03-05 11:07:49","2024-03-05 11:07:49");
INSERT INTO medicine__activities VALUES("1778","DR NASIR SOMRO","JPMC ORTHO W 17","...","...","ACTIVITY","2000","1","26/2/2024","2024-03-05 11:09:03","2024-03-05 11:09:03");
INSERT INTO medicine__activities VALUES("1779","CIVIL","ORTHO WARD 1","..","...","REFRESHMENT","1500","1","26/2/2024","2024-03-05 11:10:14","2024-03-05 11:10:14");
INSERT INTO medicine__activities VALUES("1780","DR JAMEEL","DOW UNIVERSITY","..","..","REFRESHMENT","500","1","26/2/2024","2024-03-05 11:11:10","2024-03-05 11:11:10");
INSERT INTO medicine__activities VALUES("1781","DR ASIF","CIVIL ORTHO 2","...","...","DINNER","2500","1","26/2/2024","2024-03-05 11:13:11","2024-03-05 11:13:11");
INSERT INTO medicine__activities VALUES("1782","CIVIL","ORTHO 2","...","..","REFRESHMENT","1000","1","26/2/2024","2024-03-05 11:13:57","2024-03-05 11:13:57");
INSERT INTO medicine__activities VALUES("1783","DR DANISH","JPMC W 14 ORTHO","..","...","LUNCH","2500","1","26/2/2024","2024-03-05 11:14:35","2024-03-05 11:14:35");
INSERT INTO medicine__activities VALUES("1784","DR JAFFER","JPMC W 14","..","...","DINNER","2500","1","26/2/2024","2024-03-05 11:15:12","2024-03-05 11:15:12");
INSERT INTO medicine__activities VALUES("1785","DR MEER","JPMC W 17","...","..","BOOK","4000","1","26/2/2024","2024-03-05 11:15:41","2024-03-05 11:15:41");
INSERT INTO medicine__activities VALUES("1786","DR WASEEM","CIVIL ORTHO 1","..","..","DINNER","2000","1","26/2/2024","2024-03-05 11:16:21","2024-03-05 11:16:21");
INSERT INTO medicine__activities VALUES("1787","DR PREM CHAND","CIVIL ORTHO 1","..","..","DINNER","3000","1","26/2/2024","2024-03-05 11:17:20","2024-03-05 11:17:20");
INSERT INTO medicine__activities VALUES("1788","RIAZ BAHE","..","..","..","CASH","5000","1","26/2/2024","2024-03-05 11:19:15","2024-03-05 11:19:15");
INSERT INTO medicine__activities VALUES("1789","DR LAL MALIK","JPMC W 17 ORTHO","..","...","LUNCH & DINNER","6000","1","26/2/2024","2024-03-05 11:24:21","2024-03-05 11:24:21");
INSERT INTO medicine__activities VALUES("1790","DR IMTIAZ","JPMC W 14 ORTHO","...","...","LUNCH","3500","1","26/2/2024","2024-03-05 11:34:43","2024-03-05 11:34:43");
INSERT INTO medicine__activities VALUES("1791","DR FARUKH","JPMC W 14 ORTHO","...","..","DINNER","3000","1","26/2/2024","2024-03-05 11:35:59","2024-03-05 11:35:59");
INSERT INTO medicine__activities VALUES("1792","JPMC","W 14","...","...","REFRESHMENT","1000","1","26/2/2024","2024-03-05 11:42:45","2024-03-05 11:42:45");
INSERT INTO medicine__activities VALUES("1793","DR WAJAHAT","CIVIL 2 ORTHO","...","...","DINNER","3000","1","26/2/2024","2024-03-05 11:43:16","2024-03-05 11:43:16");
INSERT INTO medicine__activities VALUES("1794","DR SAJJAD","CIVIL ORTO 2","...","..","DINNER (SUNDAY)","2500","1","26/2/2024","2024-03-05 11:44:04","2024-03-05 11:44:04");
INSERT INTO medicine__activities VALUES("1795","DR LAL MALIK","JPMC WARD 17","...","..","LUNCH & DINNER","6000","1","26/2/2024","2024-03-05 11:46:30","2024-03-05 11:46:30");
INSERT INTO medicine__activities VALUES("1796","DR MANAN","CIVIL ORTHO","...","...","DINNER","2000","1","26/2/2024","2024-03-05 11:47:32","2024-03-05 11:47:32");
INSERT INTO medicine__activities VALUES("1797","DR AMAR","JPMC ORTHO 17","...","...","LUNCH & DINNER","10000","1","26/2/2024","2024-03-05 11:50:44","2024-03-05 11:50:44");
INSERT INTO medicine__activities VALUES("1798","DR NAZNEEN","ANKEL SERYA","...","...","EGGS SUPER CARD","2900","1","26/2/2024","2024-03-05 11:54:27","2024-03-05 11:54:27");
INSERT INTO medicine__activities VALUES("1799","DR DLIP KUMAR","ANKEL SERYA",".","..","CASH","15000","1","26/2/2024","2024-03-05 11:55:15","2024-03-05 11:55:15");
INSERT INTO medicine__activities VALUES("1800","DR JAGDESH","CIVIL ORTHO 1","...","...","REFRESHMENT","1500","1","26/2/2024","2024-03-05 11:57:30","2024-03-05 11:57:30");
INSERT INTO medicine__activities VALUES("1801","DR ASIF","CIVIL ORTHO 2","...","..","DINNER","3000","1","4/3/2024","2024-03-05 16:45:20","2024-03-05 16:45:20");
INSERT INTO medicine__activities VALUES("1802","CIVIL","OPD","...","..","REFRESHMENT","700","1","4/3/2024","2024-03-05 16:45:47","2024-03-05 16:45:47");
INSERT INTO medicine__activities VALUES("1803","DR MADIHA","JPMC W 14","..","...","LUNCH","3000","1","4/3/2024","2024-03-05 16:46:25","2024-03-05 16:46:25");
INSERT INTO medicine__activities VALUES("1804","DR AZEEM KHOSO","JPMC W 14","..","..","DINNER","3000","1","4/3/2024","2024-03-05 16:47:01","2024-03-05 16:47:01");
INSERT INTO medicine__activities VALUES("1805","DR SADIA","CIVIL GYNE","...","..","B P  APP","3500","1","4/3/2024","2024-03-05 16:47:35","2024-03-05 16:47:35");
INSERT INTO medicine__activities VALUES("1806","IMRAN","PHARMAX","..","....","CASH","3000","1","4/3/2024","2024-03-05 16:48:13","2024-03-05 16:48:13");
INSERT INTO medicine__activities VALUES("1807","DR FAYAZ","CIVIL ORTHO 1","..","..","DINNER","2200","1","4/3/2024","2024-03-05 16:48:44","2024-03-05 16:48:44");
INSERT INTO medicine__activities VALUES("1808","DR OWAIS","JPMC W 17","..","..","B P APP","1500","1","4/3/2024","2024-03-05 16:49:22","2024-03-05 16:49:22");
INSERT INTO medicine__activities VALUES("1809","DR MEER N GROUP","...","...","...","LUNCH & DINNER","6000","1","4/3/2024","2024-03-05 16:49:53","2024-03-05 16:49:53");
INSERT INTO medicine__activities VALUES("1810","DR SHABAZ","JPMC W 17","..","..","BOOK B P APP","2200","1","4/3/2024","2024-03-05 16:50:36","2024-03-05 16:50:36");
INSERT INTO medicine__activities VALUES("1811","..","JPMC OPD","...","...","REFRESHMENT","1500","1","4/3/2024","2024-03-05 16:51:07","2024-03-05 16:51:07");
INSERT INTO medicine__activities VALUES("1812","DR UMAIR","CIVIL","..","..","B P APP STEHT","2300","1","4/3/2024","2024-03-05 16:51:38","2024-03-05 16:51:38");
INSERT INTO medicine__activities VALUES("1813","SR ASMA SAMI","...","...","..","CASH","3000","1","4/3/2024","2024-03-05 16:52:01","2024-03-05 16:52:01");
INSERT INTO medicine__activities VALUES("1814","CIVIL","OPD","...","..","REFRESHMENT","1000","1","4/3/2024","2024-03-05 16:52:24","2024-03-05 16:52:24");
INSERT INTO medicine__activities VALUES("1815","DR SAJJAD","CIVIL ORTHO 2","..","...","DINNER","3000","1","4/3/2024","2024-03-05 16:52:52","2024-03-05 16:52:52");
INSERT INTO medicine__activities VALUES("1816","DR DANISH","JPMC W 14","..","..","LUNCH","2500","1","4/3/2024","2024-03-05 16:53:39","2024-03-05 16:53:39");
INSERT INTO medicine__activities VALUES("1817","DR JAFFER","JPMC W 14","..","..","DINNER","2500","1","4/3/2024","2024-03-05 16:54:10","2024-03-05 16:54:10");
INSERT INTO medicine__activities VALUES("1818","DR SOUGHAT","CIVIL ORTHO 1","..","..","ACTIVITY","3000","1","4/3/2024","2024-03-05 16:54:46","2024-03-05 16:54:46");
INSERT INTO medicine__activities VALUES("1819","AURANGZAIB LALA","CIVIL","...","..","cash","5000","1","4/3/2024","2024-03-05 16:55:16","2024-03-05 16:55:16");
INSERT INTO medicine__activities VALUES("1820","DR LAL MALIK","JPMC WARD 17","..","..","LUNCH & DINNER","6000","1","4/3/2024","2024-03-05 16:55:54","2024-03-05 16:55:54");
INSERT INTO medicine__activities VALUES("1821","DR FARUKH","jpmc w 14","...","...","LUNCH","2600","1","4/3/2024","2024-03-05 16:56:48","2024-03-05 16:56:48");
INSERT INTO medicine__activities VALUES("1822","DR IMTIAZ","JPMC WARD 14","..","..","DINNER","3000","1","4/3/2024","2024-03-05 16:57:34","2024-03-05 16:57:34");
INSERT INTO medicine__activities VALUES("1823","DR SHAHZAIB","ORTHO CIVIL 2","..","..","CAKE DINNER","3500","1","4/3/2024","2024-03-05 16:58:19","2024-03-05 16:58:19");
INSERT INTO medicine__activities VALUES("1824","DR HASIB","CIVIL OPD","...","..","REFRESHMENT","350","1","4/3/2024","2024-03-05 16:59:01","2024-03-05 16:59:01");
INSERT INTO medicine__activities VALUES("1825","DR NAZNEEN","ANKEL SERYA","..","..","ACTIVITY","2000","1","4/3/2024","2024-03-05 16:59:45","2024-03-05 16:59:45");
INSERT INTO medicine__activities VALUES("1826","DR KHALIL","OPD ORTHO 1","..","...","REFRESHMENT","3000","1","4/3/2024","2024-03-05 17:00:21","2024-03-05 17:00:21");
INSERT INTO medicine__activities VALUES("1827","DR HINA","SINDH GOVERMNET","..","...","CATTLE INSTALMENT","2000","1","4/3/2024","2024-03-05 17:01:10","2024-03-05 17:01:10");
INSERT INTO medicine__activities VALUES("1828","DR DILIP KUMAR","JPMC W 26 SURGRY","..","..","OVEN INSTALMENT","5700","1","4/3/2024","2024-03-05 17:01:51","2024-03-05 17:01:51");
INSERT INTO medicine__activities VALUES("1829","DR MANAN","CIVIL ORTHO 2","..","..","DINNER","2500","1","4/3/2024","2024-03-05 17:02:19","2024-03-05 17:02:19");
INSERT INTO medicine__activities VALUES("1830","DR KIRAN AND DR MASOOD","...","..",".","CASH","35000","1","4/3/2024","2024-03-05 17:02:44","2024-03-05 17:02:44");
INSERT INTO medicine__activities VALUES("1831","CIVIL","ORTHO 2 WARD","...","...","REFRESHMENT","2000","1","11/3/2024","2024-03-13 09:35:58","2024-03-13 09:35:58");
INSERT INTO medicine__activities VALUES("1832","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","2500","1","11/3/2024","2024-03-13 09:36:56","2024-03-13 09:36:56");
INSERT INTO medicine__activities VALUES("1833","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","2500","1","11/3/2024","2024-03-13 09:37:13","2024-03-13 09:37:13");
INSERT INTO medicine__activities VALUES("1834","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","2500","1","11/3/2024","2024-03-13 09:37:29","2024-03-13 09:37:29");
INSERT INTO medicine__activities VALUES("1835","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","2500","1","11/3/2024","2024-03-13 09:37:30","2024-03-13 09:37:30");
INSERT INTO medicine__activities VALUES("1836","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","2500","1","11/3/2024","2024-03-13 09:37:30","2024-03-13 09:37:30");
INSERT INTO medicine__activities VALUES("1837","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","2500","1","11/3/2024","2024-03-13 09:37:31","2024-03-13 09:37:31");
INSERT INTO medicine__activities VALUES("1838","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","2500","1","11/3/2024","2024-03-13 09:48:10","2024-03-13 09:48:10");
INSERT INTO medicine__activities VALUES("1839","DR FARUKH","JPMC WARD 14 ORTHO","...","...","LUNCH","2000","1","11/3/2024","2024-03-13 09:48:55","2024-03-13 09:48:55");
INSERT INTO medicine__activities VALUES("1840","DR IMTIAZ","JPMC W 14  ORTHO","...","...","DINNER","3000","1","11/3/2024","2024-03-13 09:49:49","2024-03-13 09:49:49");
INSERT INTO medicine__activities VALUES("1841","DR AMMAR","JPMC W 14","...","...","BOOK","3500","1","11/3/2024","2024-03-13 09:50:28","2024-03-13 09:50:28");
INSERT INTO medicine__activities VALUES("1842","DR ALI EKRAM","CIVIL ORTHO 2","...","...","BOOK","15000","1","11/3/2024","2024-03-13 09:51:11","2024-03-13 09:51:11");
INSERT INTO medicine__activities VALUES("1843","DR MANAN","CIVIL ORTHO 1","...","...","DINNER","2500","1","11/3/2024","2024-03-13 09:51:53","2024-03-13 09:51:53");
INSERT INTO medicine__activities VALUES("1844","DR LAL MALIK","JPMC W 17 ORTHO","...","...","LUNCH + DINNER","6000","1","11/3/2024","2024-03-13 09:52:33","2024-03-13 09:52:33");
INSERT INTO medicine__activities VALUES("1845","DR NASIR","JPMC W 17","...","...","ACTIVITY","2000","1","11/3/2024","2024-03-13 09:53:13","2024-03-13 09:53:13");
INSERT INTO medicine__activities VALUES("1846","ZAHEER& WAHEED","CIVIL CHOWKI","...","...","CASH","2000","1","11/3/2024","2024-03-13 09:54:20","2024-03-13 09:54:20");
INSERT INTO medicine__activities VALUES("1847","ZAHEER& WAHEED","CIVIL CHOWKI","...","...","CASH","2000","1","11/3/2024","2024-03-13 09:54:28","2024-03-13 09:54:28");
INSERT INTO medicine__activities VALUES("1848","DR SAJJAD","CIVIL ORTHO 2","...","...","DINNER","3000","1","11/3/2024","2024-03-13 09:56:54","2024-03-13 09:56:54");
INSERT INTO medicine__activities VALUES("1849","DR AZEEM","JPMC W 14","..","...","DINNER","2500","1","11/3/2024","2024-03-13 09:57:52","2024-03-13 09:57:52");
INSERT INTO medicine__activities VALUES("1850","DR MATILULLAH","JPMC W 17 ORTHO","...","..","LUNCH & DINNER (SUNDAY)","6000","1","10/3/2024","2024-03-13 09:58:49","2024-03-13 09:58:49");
INSERT INTO medicine__activities VALUES("1851","DR HUMA","SINDH SERVICES HOSP","...","...","BOOK","1500","1","11/3/2024","2024-03-13 09:59:29","2024-03-13 09:59:29");
INSERT INTO medicine__activities VALUES("1852","DR HASNAIN","CIVIL ORTHO 1","...","...","DINNER","3500","1","11/3/2024","2024-03-13 10:00:43","2024-03-13 10:00:43");
INSERT INTO medicine__activities VALUES("1853","DR JAGDESH","CIVIL ORTHO 1","...","....","REFRESHMENT","2000","1","11/3/2024","2024-03-13 10:01:15","2024-03-13 10:01:15");
INSERT INTO medicine__activities VALUES("1854","DR DLISHAD","JPMC W ORTHO","...","...","BOOK","2000","1","11/3/2024","2024-03-13 10:02:45","2024-03-13 10:02:45");
INSERT INTO medicine__activities VALUES("1855","DR SHAHID UMANI","JPMC UROLOGIST","...","...","ACTIVITY","1000","1","5/3/2024","2024-03-13 10:03:49","2024-03-13 10:03:49");
INSERT INTO medicine__activities VALUES("1856","DR SHAHID UMANI","JPMC UROLOGIST","...","...","ACTIVITY","1000","1","5/3/2024","2024-03-13 10:05:57","2024-03-13 10:05:57");
INSERT INTO medicine__activities VALUES("1857","CIVIL","ORTHO OPD","...","...","REFRESHMENT","500","1","5/3/2024","2024-03-13 10:06:36","2024-03-13 10:06:36");
INSERT INTO medicine__activities VALUES("1858","DR SHAHZAIB","CIVIL ORTHO 2","...","...","DINNER","2500","1","5/3/2024","2024-03-13 10:07:08","2024-03-13 10:07:08");
INSERT INTO medicine__activities VALUES("1859","DR THERATH","CIVIL ORTHO 2","...","....","BOOK","1200","1","5/3/2024","2024-03-13 10:08:29","2024-03-13 10:08:29");
INSERT INTO medicine__activities VALUES("1860","DR MADIHA","JPMC ORTHO W 14","...","...","LUNCH","1700","1","5/3/2024","2024-03-13 10:09:29","2024-03-13 10:09:29");
INSERT INTO medicine__activities VALUES("1861","JPMC","ORTHO W 14","...","....","REFRESHMENT","1700","1","5/3/2024","2024-03-13 10:10:17","2024-03-13 10:10:17");
INSERT INTO medicine__activities VALUES("1862","DR JAFER","JPMC W 14","...","...","DINNER","2500","1","5/3/2024","2024-03-13 10:11:27","2024-03-13 10:11:27");
INSERT INTO medicine__activities VALUES("1863","DR ZAHID","CIVIL ORTHO 2","...","...","BOOK","2000","1","5/3/2024","2024-03-13 10:12:47","2024-03-13 10:12:47");
INSERT INTO medicine__activities VALUES("1864","DR FAYAZ","CIVIL ORTHO 1","...","...","DINNER","3500","1","6/3/2024","2024-03-13 10:13:52","2024-03-13 10:13:52");
INSERT INTO medicine__activities VALUES("1865","CIVIL","OPD","...","...","WATER BOTLES","300","1","6/3/2024","2024-03-13 10:14:42","2024-03-13 10:14:42");
INSERT INTO medicine__activities VALUES("1866","DR JAMAL","DOW HOSPITAL","...","...","REFRESHMENT","1000","1","6/3/2024","2024-03-13 10:15:26","2024-03-13 10:15:26");
INSERT INTO medicine__activities VALUES("1867","DR JAMEEL","DOW HOSPITAL","...","...","REFRESHMENT","1000","1","6/3/2024","2024-03-13 10:43:03","2024-03-13 10:43:03");
INSERT INTO medicine__activities VALUES("1868","DR NOMAN","JPMC W 17 ORTHO","...","...","CASH","5000","1","6/3/2024","2024-03-13 10:43:39","2024-03-13 10:43:39");
INSERT INTO medicine__activities VALUES("1869","JPMC","W 14 ORTHO","...","...","REFRESHMENT","1500","1","6/3/2024","2024-03-13 10:44:28","2024-03-13 10:44:28");
INSERT INTO medicine__activities VALUES("1870","DR MEER","JPMC W 17","...","...","LUNCH & DINNER","6000","1","6/3/2024","2024-03-13 10:45:07","2024-03-13 10:45:07");
INSERT INTO medicine__activities VALUES("1871","DR MEER","JPMC W 17","...","...","LUNCH & DINNER","6000","1","6/3/2024","2024-03-13 10:45:20","2024-03-13 10:45:20");
INSERT INTO medicine__activities VALUES("1872","DR MEER","JPMC W 17","...","...","LUNCH & DINNER","6000","1","6/3/2024","2024-03-13 10:45:21","2024-03-13 10:45:21");
INSERT INTO medicine__activities VALUES("1873","CIVIL","ORTHO OPD","..","...","REFRESHMENT","1500","1","7/3/2024","2024-03-13 10:45:49","2024-03-13 10:45:49");
INSERT INTO medicine__activities VALUES("1874","DR SAJJAD","CIVIL ORTHO 2","...","...","IFTARI","3350","1","1/4/2024","2024-04-02 10:21:35","2024-04-02 10:21:35");
INSERT INTO medicine__activities VALUES("1875","DR SADIA","CIVIL GYNE","...","...","IFTARI","1000","1","1/4/2024","2024-04-02 10:22:09","2024-04-02 10:22:09");
INSERT INTO medicine__activities VALUES("1876","DR WALIULLAH","JPMC W 17","...","...","ACTIVITY","3000","1","1/1/2024","2024-04-02 10:22:59","2024-04-02 10:22:59");
INSERT INTO medicine__activities VALUES("1877","IMRAN PRINTER","...","...","...","CASH","2000","1","1/1/2024","2024-04-02 10:23:32","2024-04-02 10:23:32");
INSERT INTO medicine__activities VALUES("1878","DR DANISH","JPMC W 14","...","...","IFTARI","2500","1","1/1/2024","2024-04-02 10:24:08","2024-04-02 10:24:08");
INSERT INTO medicine__activities VALUES("1879","DR MANAN","JPMC W 14","...","...","IFTARI","2500","1","1/1/2024","2024-04-02 10:24:46","2024-04-02 10:24:46");
INSERT INTO medicine__activities VALUES("1880","DR MANAN","CIVIL ORTHO 1","...","...","DINNER","2000","1","1/1/2024","2024-04-02 10:39:28","2024-04-02 10:39:28");
INSERT INTO medicine__activities VALUES("1881","DR MEER","JPMC W 17","...","...","IFTARI+DINNER","6000","1","1/4/2024","2024-04-02 10:42:32","2024-04-02 10:42:32");
INSERT INTO medicine__activities VALUES("1882","DR HASNAIN","CIVIL","...","...","BOOKS","2500","1","1/1/2024","2024-04-02 10:43:15","2024-04-02 10:43:15");
INSERT INTO medicine__activities VALUES("1883","DR SHAHZAIB","CIVIL ORTHO 2","..","..","DINNER","3000","1","1/4/2024","2024-04-02 10:44:04","2024-04-02 10:44:04");
INSERT INTO medicine__activities VALUES("1884","DR AZEEM KHOSO","W 14","...","...","DINNER","3000","1","1/4/2024","2024-04-02 10:44:38","2024-04-02 10:44:38");
INSERT INTO medicine__activities VALUES("1885","DR SAQIB","JPMC W 17",".","...","ACTIVITY","1500","1","1/4/2024","2024-04-02 10:45:13","2024-04-02 10:45:58");
INSERT INTO medicine__activities VALUES("1886","I MADE","HOSP","..","...","DONATION","2500","1","1/4/2024","2024-04-02 10:46:41","2024-04-02 10:46:41");
INSERT INTO medicine__activities VALUES("1887","DR LAL MALIK","JPMC W 17","..","...","CASH","6000","1","1/4/2024","2024-04-02 10:48:22","2024-04-02 10:48:22");
INSERT INTO medicine__activities VALUES("1888","DR PREM CHAND","CIVIL ORTHO 1","...","...","IFTARI","2200","1","1/4/2024","2024-04-02 10:49:28","2024-04-02 10:49:28");
INSERT INTO medicine__activities VALUES("1889","DR KIRAN MASOOD","AL TIBRI","..","...","CASH","7000","1","1/4/2024","2024-04-02 10:50:13","2024-04-02 10:50:13");
INSERT INTO medicine__activities VALUES("1890","DR WAFA'S GROUP","JPMC WARD 17","..","...","IFTARI +DINNER FAREWELL","5000","1","1/4/2024","2024-04-02 10:51:07","2024-04-02 10:51:07");
INSERT INTO medicine__activities VALUES("1891","AURANGZAIB LALA","CIVIL","...","...","CASH","5000","1","1/4/2024","2024-04-02 10:51:51","2024-04-02 10:51:51");
INSERT INTO medicine__activities VALUES("1892","DR SHAHID","URO JPMC","..","..","CASH","10000","1","1/4/2024","2024-04-02 10:52:33","2024-04-02 10:52:33");
INSERT INTO medicine__activities VALUES("1893","RIAZ PHARMAX","...","...","...","CASH","13000","1","1/4/2024","2024-04-02 10:53:10","2024-04-02 10:55:21");
INSERT INTO medicine__activities VALUES("1894","DR ASIF","CIVIL ORTHO 2","..","...","DINNER","3500","1","1/4/2024","2024-04-02 10:55:57","2024-04-02 10:55:57");
INSERT INTO medicine__activities VALUES("1895","DR IMTIAZ","JPMC W 14 ORTHO","..","...","DINNER","3000","1","1/4/2024","2024-04-02 10:56:35","2024-04-02 10:56:35");
INSERT INTO medicine__activities VALUES("1896","DR AZEEM KHOSO","JPMC W 14","..","...","DINNER (SUNDAY)","3000","1","1/4/2024","2024-04-02 10:57:24","2024-04-02 10:57:24");
INSERT INTO medicine__activities VALUES("1897","DR HASNAIN","CIVIL ORTHO 1","..","...","IFTARI","3000","1","1/4/2024","2024-04-02 10:58:03","2024-04-02 10:58:03");
INSERT INTO medicine__activities VALUES("1898","DR NAZNEEN","ANKEL SERYA","..","...","ACTIVITY","1600","1","1/4/2024","2024-04-02 10:58:44","2024-04-02 10:58:44");
INSERT INTO medicine__activities VALUES("1899","CIVIL","OPD","..","...","REFRESHMENT","800","1","22/4/2024","2024-04-23 11:49:56","2024-04-23 11:49:56");
INSERT INTO medicine__activities VALUES("1900","DR ASIF","CIVIL ORTHO 1","..","...","DINNER","3100","1","22/4/2024","2024-04-23 11:50:47","2024-04-23 11:50:47");
INSERT INTO medicine__activities VALUES("1901","DR HASNAIN GROUP","CIVIL ORTHO 1","...","...","DINNER","3850","1","22/4/2024","2024-04-23 11:51:49","2024-04-23 11:51:49");
INSERT INTO medicine__activities VALUES("1902","DR JAGDESH","CIVIL OPD ORTHO 1","..","...","REFRESHMENT","2000","1","22/4/2024","2024-04-23 11:52:42","2024-04-23 11:52:42");
INSERT INTO medicine__activities VALUES("1903","DR SHAZAIB","CIVIL ORTHO 2","..","...","DINNER","3100","1","22/4/2024","2024-04-23 11:53:45","2024-04-23 11:53:45");
INSERT INTO medicine__activities VALUES("1904","CIVIL","OPD","...","...","WATER BOTTLES","600","1","22/4/2024","2024-04-23 11:58:19","2024-04-23 11:58:19");
INSERT INTO medicine__activities VALUES("1905","ATIF","CIVIL PHARMAX","..","...","CASH","1000","1","22/4/2024","2024-04-23 12:00:49","2024-04-23 12:00:49");
INSERT INTO medicine__activities VALUES("1906","DR WAQAR","CIVIL ORTHO 1","...","...","DINNER","3000","1","22/4/2024","2024-04-23 12:03:01","2024-04-23 12:03:01");
INSERT INTO medicine__activities VALUES("1907","DR SAJJAD","CIVIL ORTHO 1","...","...","DINNER","3000","1","22/4/2024","2024-04-23 12:07:50","2024-04-23 12:07:50");
INSERT INTO medicine__activities VALUES("1908","DR WAJAHAT","CIVIL ORTHO 2","...","...","BOOK","4200","1","22/4/2024","2024-04-23 12:09:25","2024-04-23 12:09:25");
INSERT INTO medicine__activities VALUES("1909","DR WAJAHAT","CIVIL ORTHO 2","...","...","BOOK","4200","1","22/4/2024","2024-04-23 12:11:29","2024-04-23 12:11:29");
INSERT INTO medicine__activities VALUES("1910","DR PUSHPA","CIVIL WARD","...","...","REFRESHMENT","4200","1","22/4/2024","2024-04-23 12:12:02","2024-04-23 12:12:02");
INSERT INTO medicine__activities VALUES("1911","DR UMAIR","CIVIL ORHTO 1","..","...","DINNER SUNDAY","2500","1","22/4/2024","2024-04-23 12:12:40","2024-04-23 12:12:40");
INSERT INTO medicine__activities VALUES("1912","IMRAN","PRINTER","..","...","...","2500","1","22/4/2024","2024-04-23 12:13:30","2024-04-23 12:13:30");
INSERT INTO medicine__activities VALUES("1913","NADIR","CIVIL","...","...","...","1500","1","22/4/2024","2024-04-23 12:14:01","2024-04-23 12:14:01");
INSERT INTO medicine__activities VALUES("1914","DR HUMA","SINDH SERVICES","...","...","BOOK","2500","1","22/4/2024","2024-04-23 12:15:06","2024-04-23 12:15:06");
INSERT INTO medicine__activities VALUES("1915","DR MANAN","CIVIL","..","...","DINNER","2500","1","22/4/2024","2024-04-23 12:16:37","2024-04-23 12:16:37");
INSERT INTO medicine__activities VALUES("1916","DR DANISH","JPMC 14","...","...","LUNCH","2500","1","22/4/2024","2024-04-23 12:18:05","2024-04-23 12:18:05");
INSERT INTO medicine__activities VALUES("1917","DR MEER","JPMC W 17 ORTHO","..","...","LUNCH +DINNER","6000","1","22/4/2024","2024-04-23 12:18:49","2024-04-23 12:18:49");
INSERT INTO medicine__activities VALUES("1918","DR ISMAIL","JPMC W 17","...","...","...","4000","1","22/4/2024","2024-04-23 12:19:21","2024-04-23 12:19:21");
INSERT INTO medicine__activities VALUES("1919","DR REHMAN","JPMC W 17","..","...","REFRESHMENT","1500","1","22/4/2024","2024-04-23 12:20:21","2024-04-23 12:20:21");
INSERT INTO medicine__activities VALUES("1920","DR LAL MALIK","JPMC WARD 17","..","...","DINNER","6000","1","22/4/2024","2024-04-23 12:22:23","2024-04-23 12:22:23");
INSERT INTO medicine__activities VALUES("1921","DR QASIM","JPMC W 17","..","..","BOOK","3000","1","22/4/2024","2024-04-23 12:23:00","2024-04-23 12:23:00");
INSERT INTO medicine__activities VALUES("1922","DR MADIHA","JPMC W 14 ORTHO","...","..","LUNCH","2500","1","22/4/2024","2024-04-23 12:23:42","2024-04-23 12:23:42");
INSERT INTO medicine__activities VALUES("1923","DR AZEEM KHOSO","JPMC W 14 ORTHO","...","..","DINNER","2000","1","22/4/2024","2024-04-23 12:24:29","2024-04-23 12:24:29");
INSERT INTO medicine__activities VALUES("1924","DR AMMAR","JPMC WARD 17","..","..","DINNER","6000","1","22/4/2024","2024-04-23 12:24:59","2024-04-23 12:24:59");
INSERT INTO medicine__activities VALUES("1925","RIAZ","PHARMAX","...","...","CASH","5000","1","22/4/2024","2024-04-23 12:25:35","2024-04-23 12:25:35");
INSERT INTO medicine__activities VALUES("1926","DR SADIA","JAIL ROAD","..","..","ACTIVITY","15000","1","22/4/2024","2024-04-23 12:26:31","2024-04-23 12:26:31");
INSERT INTO medicine__activities VALUES("1927","DR NAZNEEN","...","...","...","ACTIVITY","2000","1","22/4/2024","2024-04-23 12:27:01","2024-04-23 12:27:01");
INSERT INTO medicine__activities VALUES("1928","DR QASIM","JPMC 17","..","..","LUNCH","6000","1","22/4/2024","2024-04-23 12:35:32","2024-04-23 12:35:32");
INSERT INTO medicine__activities VALUES("1929","DR QASIM","JPMC 17","..","..","LUNCH","6000","1","22/4/2024","2024-04-23 12:35:34","2024-04-23 12:35:34");
INSERT INTO medicine__activities VALUES("1930","DR HASNAIN","JPMC 17","...","...","DINNER","4000","1","22/4/2024","2024-04-23 12:36:07","2024-04-23 12:36:07");
INSERT INTO medicine__activities VALUES("1931","DR IMTIAZ","JPMC 14","..","...","LUNCH","4000","1","22/4/2024","2024-04-23 12:36:42","2024-04-23 12:36:42");
INSERT INTO medicine__activities VALUES("1932","DR SANGITA","MOTHER CARE","..","...","MOBILE","75000","1","27/3/2024","2024-04-25 18:09:52","2024-04-25 18:10:41");
INSERT INTO medicine__activities VALUES("1933","DR MEER GROUP","JPMC","..","...","LUNCH & DINNER","6000","1","29/4/2024","2024-04-30 09:44:29","2024-04-30 09:44:29");
INSERT INTO medicine__activities VALUES("1934","DR IMTIAZ","JPMC","..","...","LUNCH","3000","1","29/4/2024","2024-04-30 09:45:03","2024-04-30 09:45:03");
INSERT INTO medicine__activities VALUES("1935","JPMC","WARD","...","...","REFRESHMENT","1200","1","23/4/2024","2024-04-30 09:45:34","2024-04-30 09:45:34");
INSERT INTO medicine__activities VALUES("1936","ZULFIQAR","PHARMAX","...","...","ACTIVITY","5000","1","23/4/2024","2024-04-30 09:46:10","2024-04-30 09:46:10");
INSERT INTO medicine__activities VALUES("1937","DR MEHRAN","JPMC W17","..","..","LUNCH","4000","1","29/4/2024","2024-04-30 09:47:45","2024-04-30 09:47:45");
INSERT INTO medicine__activities VALUES("1938","DR LAL MALIK","JPMC","...","...","DINNER","6000","1","29/4/2024","2024-04-30 09:48:18","2024-04-30 09:48:18");
INSERT INTO medicine__activities VALUES("1939","DR MADIHA","JPMC W 14","..","...","LUNCH","2000","1","29/4/2024","2024-04-30 09:49:17","2024-04-30 09:49:17");
INSERT INTO medicine__activities VALUES("1940","DR HARIS","JPMC W14","..","...","DINNER","2500","1","29/4/2024","2024-04-30 09:50:05","2024-04-30 09:50:05");
INSERT INTO medicine__activities VALUES("1941","DR AWAIS","JPMC W 17","..","...","CASH WORK SHOP","5000","1","29/4/2024","2024-04-30 09:51:13","2024-04-30 09:51:13");
INSERT INTO medicine__activities VALUES("1942","DR DANISH","JPMC ORTHO W 14","...","...","LUNCH","3000","1","29/4/2024","2024-04-30 09:52:03","2024-04-30 09:52:03");
INSERT INTO medicine__activities VALUES("1943","DR JAMILA","SINDH SERVICES HOSP","...","...","PRINTER PAPER","2000","1","29/4/2024","2024-04-30 09:53:16","2024-04-30 09:53:16");
INSERT INTO medicine__activities VALUES("1944","DR JAGDESH","WARD CIVIL","...","...","REFRESHMENT","2100","1","29/4/2024","2024-04-30 09:56:45","2024-04-30 09:56:45");
INSERT INTO medicine__activities VALUES("1945","DR NAZNEEN","ANKEL SERYA","...","...","ACTIVITY","3000","1","29/4","2024-04-30 09:57:18","2024-04-30 09:57:18");
INSERT INTO medicine__activities VALUES("1946","DR AZEEM KHOSO","JPMC W 14","...","....","DINNER","3000","1","29/4/2024","2024-04-30 09:58:02","2024-04-30 09:58:02");
INSERT INTO medicine__activities VALUES("1947","DR SHAHID","JPMC","...","..","10000","10000","1","29/4/2024","2024-04-30 09:58:47","2024-04-30 09:58:47");
INSERT INTO medicine__activities VALUES("1948","UMRANI","JPMC W17","...","...","FAREWEL PARTY","10000","1","29/4/2024","2024-04-30 09:59:37","2024-04-30 09:59:37");
INSERT INTO medicine__activities VALUES("1949","DR SHAHZAIB","CIVIL ORTHO 2","...","...","DINNER","2500","1","29/4/2024","2024-04-30 10:00:55","2024-04-30 10:00:55");
INSERT INTO medicine__activities VALUES("1950","DR SADIA","CIVIL GYNE WARD 3","...","...","DINNER","1800","1","29/4/2024","2024-04-30 10:01:26","2024-04-30 10:01:26");
INSERT INTO medicine__activities VALUES("1951","DR HASNAIN GROUP","CIVIL ORTHO 1","...","...","DINNER","2000","1","29/4/2024","2024-04-30 10:02:08","2024-04-30 10:02:08");
INSERT INTO medicine__activities VALUES("1952","DR ASIF","CIVIL ORTHO 1","...","...","DINNER","3000","1","29/4/2024","2024-04-30 10:02:39","2024-04-30 10:02:39");
INSERT INTO medicine__activities VALUES("1953","DR WAQAR","CIVIL ORTHO 1","...","...","DINNER","3000","1","29/4/2024","2024-04-30 10:03:33","2024-04-30 10:03:33");
INSERT INTO medicine__activities VALUES("1954","DR SAJJAD","CIVIL ORTHO","...","..","DINNER","3000","1","29/4/2024","2024-04-30 10:04:13","2024-04-30 10:04:13");
INSERT INTO medicine__activities VALUES("1955","CIVIL","ORTHO 2","...","...","REFRESHMENT","1000","1","29/4/2024","2024-04-30 10:04:44","2024-04-30 10:04:44");
INSERT INTO medicine__activities VALUES("1956","DR JAGDESH","CIVIL","...","...","PERSONAL ACTIVITY","1500","1","29/4/2024","2024-04-30 10:05:14","2024-04-30 10:05:14");
INSERT INTO medicine__activities VALUES("1957","OPD","CIVIL","...","...","WATER BOTLES","500","1","29/4/2024","2024-04-30 10:05:40","2024-04-30 10:05:40");
INSERT INTO medicine__activities VALUES("1958","DR HASNAIN","civil 1","...","...","dinner","3000","1","29/4/2024","2024-04-30 10:06:08","2024-04-30 10:06:08");
INSERT INTO medicine__activities VALUES("1959","RIAZ BAHE","PHARMAX","..","...","CASH","16000","1","8/5/2024","2024-05-14 09:47:09","2024-05-14 09:47:09");
INSERT INTO medicine__activities VALUES("1960","TIBRI","HOSPIATL GYNE STAFF","...","...","LUNCH","6000","1","8/5/2024","2024-05-14 09:48:09","2024-05-14 09:48:09");
INSERT INTO medicine__activities VALUES("1961","IMRAN","PRINTER","...","...","CASH","2000","1","8/5/2024","2024-05-14 09:48:39","2024-05-14 09:48:39");
INSERT INTO medicine__activities VALUES("1962","DR YASIR","AURANGZAIB HOSPITAL","...","...","STAMP","1000","1","8/5/2024","2024-05-14 09:49:17","2024-05-14 09:49:17");
INSERT INTO medicine__activities VALUES("1963","DR NAZNEEN","ANKEL SERYA","...","...","ACTIVITY","2000","1","8/5/2024","2024-05-14 09:55:07","2024-05-14 09:55:07");
INSERT INTO medicine__activities VALUES("1964","DR ASIF","CIVIL ORTHO 2","...","...","DINNER","3000","1","7/5/2024","2024-05-14 10:01:32","2024-05-14 10:01:32");
INSERT INTO medicine__activities VALUES("1965","DR WASEEM","CIVIL ORTHO","...","...","BOOK","3000","1","7/5/2024","2024-05-14 10:02:50","2024-05-14 10:02:50");
INSERT INTO medicine__activities VALUES("1966","ZAHEER WAHEED","CIVIL CHOWKI","...","...","ACTIVITY","2000","1","7/5/2024","2024-05-14 10:03:53","2024-05-14 10:03:53");
INSERT INTO medicine__activities VALUES("1967","DR WAQAR","CIVIL ORTHO 1","...","...","DINNER","3000","1","8/5/2024","2024-05-14 10:05:10","2024-05-14 10:05:10");
INSERT INTO medicine__activities VALUES("1968","DR SOUGHT","CIVIL WARD","...","..","REFRESHMENT","3500","1","8/5/2024","2024-05-14 10:06:51","2024-05-14 10:06:51");
INSERT INTO medicine__activities VALUES("1969","DR SAJJAD","CIVIL ORTHO 2","...","...","DINNER","3000","1","9/5/2024","2024-05-14 10:08:50","2024-05-14 10:08:50");
INSERT INTO medicine__activities VALUES("1970","CIVIL","ORTHO OPD","...","...","WATER BOTLES","600","1","9/5/2024","2024-05-14 10:10:51","2024-05-14 10:10:51");
INSERT INTO medicine__activities VALUES("1971","DR WASEEM","CIVIL ORTHO 1","...","...","dinner","3000","1","10/5/2024","2024-05-14 10:12:50","2024-05-14 10:12:50");
INSERT INTO medicine__activities VALUES("1972","DR SHAHZAIB","CIVIL ORTHO 2","...","...","DINNER","3000","1","11/5/2024","2024-05-14 10:14:14","2024-05-14 10:14:14");
INSERT INTO medicine__activities VALUES("1973","DR SADIA","CIVIL GYNE 3","...","...","BOOK","1500","1","11/5/2024","2024-05-14 10:15:50","2024-05-14 10:15:50");
INSERT INTO medicine__activities VALUES("1974","DR HABIB","OPD CIVIL","...","...","WATER BOTLES","500","1","13/5/2024","2024-05-14 10:17:19","2024-05-14 10:17:19");
INSERT INTO medicine__activities VALUES("1975","DR PREM CHAND","CIVIL ORTHO 1","..","..","DINNER","3000","1","13/5/2024","2024-05-14 10:18:01","2024-05-14 10:18:01");
INSERT INTO medicine__activities VALUES("1976","DR ADEEL","CIVIL ORTHO 2","...","...","REFRESHMENT","1500","1","13/5/2024","2024-05-14 10:20:32","2024-05-14 10:20:32");
INSERT INTO medicine__activities VALUES("1977","DR IMTIAZ","JPMC ORTHO","...","...","DINNER","4000","1","3/6/2024","2024-06-04 10:38:32","2024-06-04 10:38:32");
INSERT INTO medicine__activities VALUES("1978","DR ZOHAIB","JPMC CMO","...","...","LUNCH","1000","1","3/6/2024","2024-06-04 10:40:48","2024-06-04 10:40:48");
INSERT INTO medicine__activities VALUES("1979","JPMC","....","...","...","REFRESHMENT","1000","1","3/6/2024","2024-06-04 10:49:32","2024-06-04 10:49:32");
INSERT INTO medicine__activities VALUES("1980","DR HARIS","JPMC W 14","...","...","LUNCH","2500","1","3/6/2024","2024-06-04 10:50:06","2024-06-04 10:50:06");
INSERT INTO medicine__activities VALUES("1981","JPMC","OPD W 17","...","...","REFRESHMENT","1600","1","3/6/2024","2024-06-04 10:51:12","2024-06-04 10:51:12");
INSERT INTO medicine__activities VALUES("1982","DR NOMAN","JPMC W 17","...","...","CASH","5000","1","3/6/2024","2024-06-04 10:52:46","2024-06-04 10:52:46");
INSERT INTO medicine__activities VALUES("1983","DR FARHAD","JPMC W 17","...","...","CASH","10000","1","3/6/2024","2024-06-04 10:54:10","2024-06-04 10:54:10");
INSERT INTO medicine__activities VALUES("1984","DR MEER","JPMC W 17","...","...","LUNCH","4500","1","3/6/2024","2024-06-04 10:54:52","2024-06-04 10:54:52");
INSERT INTO medicine__activities VALUES("1985","DR KHALID","JPMC WARD 17","...","...","DINNER","4500","1","3/6/2024","2024-06-04 10:55:50","2024-06-04 10:55:50");
INSERT INTO medicine__activities VALUES("1986","DR ETHESHAM","JPMC W 14","...","...","DINNER","2800","1","3/6/2024","2024-06-04 10:58:01","2024-06-04 10:58:01");
INSERT INTO medicine__activities VALUES("1987","DR WALIULLAH","JPMC W 17","...","...","REFRESHMENT","1700","1","3/6/2024","2024-06-04 10:58:55","2024-06-04 10:58:55");
INSERT INTO medicine__activities VALUES("1988","DR AMMAR","JPMC","...","...","LUNCH","6000","1","3/6/2024","2024-06-04 11:00:27","2024-06-04 11:00:27");
INSERT INTO medicine__activities VALUES("1989","DR ISMAIL","JPMC ORTHO W 17","...","...","LUNCH","3500","1","3/6/2024","2024-06-04 11:01:21","2024-06-04 11:01:21");
INSERT INTO medicine__activities VALUES("1990","DR LAL MALIK","JPMC ORTHO","..","....","DINNER","4500","1","3/6/2024","2024-06-04 11:02:07","2024-06-04 11:02:07");
INSERT INTO medicine__activities VALUES("1991","JPMC","ER","..","..","REFRESHMENT","1000","1","3/6/2024","2024-06-04 11:03:06","2024-06-04 11:03:06");
INSERT INTO medicine__activities VALUES("1992","DR NAZNEEN","ANKEL SERYA","...","..","ACTIVITY","2000","1","3/6/2024","2024-06-04 11:03:54","2024-06-04 11:03:54");
INSERT INTO medicine__activities VALUES("1993","IMRAN PRINTER","....","...","...","CASH","3000","1","3/6/2024","2024-06-04 11:04:23","2024-06-04 11:04:23");
INSERT INTO medicine__activities VALUES("1994","DR MAIRAJ","CIVIL ORTHO 2","...","..","DINNER","3000","1","3/6/2024","2024-06-04 11:06:05","2024-06-04 11:06:05");
INSERT INTO medicine__activities VALUES("1995","AURANGZAIB LALA","CIVIL","...","...","CASH","5000","1","3/6/2024","2024-06-04 11:07:11","2024-06-04 11:07:11");
INSERT INTO medicine__activities VALUES("1996","AURANGZAIB LALA","CIVIL","...","...","CASH","5000","1","3/6/2024","2024-06-04 11:08:52","2024-06-04 11:08:52");
INSERT INTO medicine__activities VALUES("1997","CIVIL","OPD","...","...","REFRESHMENT","1800","1","3/6/2024","2024-06-04 11:09:30","2024-06-04 11:09:30");
INSERT INTO medicine__activities VALUES("1998","DR UMAIR","CIVIL OPD","...","...","REFRESHMENT","900","1","3/6/2024","2024-06-04 11:10:32","2024-06-04 11:10:32");
INSERT INTO medicine__activities VALUES("1999","DR ASIF","CIVIL","...","...","DINNER","3000","1","3/6/2024","2024-06-04 11:11:08","2024-06-04 11:11:08");
INSERT INTO medicine__activities VALUES("2000","DR WAQAR","CIVIL ORTHO","...","...","DINNER","3200","1","3/6/2024","2024-06-04 11:12:55","2024-06-04 11:12:55");
INSERT INTO medicine__activities VALUES("2001","DR SHAHZAIB","CIVIL ORTHO","...","...","DINNER","3500","1","3/6/2024","2024-06-04 11:16:07","2024-06-04 11:16:07");
INSERT INTO medicine__activities VALUES("2002","DR SANIYA","CIVIL GYNE 3","...","...","BOOK","2700","1","3/6/2024","2024-06-04 11:18:34","2024-06-04 11:18:34");
INSERT INTO medicine__activities VALUES("2003","DR ALI EKRAM","CIVIL ORTHO","..","..","DINNER","2500","1","3/6/2024","2024-06-04 11:20:19","2024-06-04 11:20:19");
INSERT INTO medicine__activities VALUES("2004","IMRAN","CIVIL PHARMAX","...","...","CASH","3000","1","3/6/2024","2024-06-04 11:21:41","2024-06-04 11:21:41");
INSERT INTO medicine__activities VALUES("2005","DR JAGDESH","CIVIL OPD","...","..","WATER BOTLES","800","1","3/6/2024","2024-06-04 11:22:17","2024-06-04 11:22:17");
INSERT INTO medicine__activities VALUES("2006","DR MANAN","CIVIL ORTHO 1","...","...","DINNER","3000","1","3/6/2024","2024-06-04 11:22:54","2024-06-04 11:22:54");
INSERT INTO medicine__activities VALUES("2007","DR WASEM","CIVIL ORTHO 1","...","...","DINNER","3000","1","3/6/2024","2024-06-04 11:23:56","2024-06-04 11:23:56");
INSERT INTO medicine__activities VALUES("2008","DR SADIA","CIVIL GYNE 3","...","...","BOOKS","2500","1","3/6/2024","2024-06-04 11:24:24","2024-06-04 11:24:24");
INSERT INTO medicine__activities VALUES("2009","DR JAGDESH","WARD","...","...","REFRESHMENT","2500","1","10/6/2024","2024-06-20 14:13:32","2024-06-20 14:13:32");
INSERT INTO medicine__activities VALUES("2010","DR ADEEL","WARD","...","...","REFRESHMENT","1500","1","10/6/2024","2024-06-20 14:14:06","2024-06-20 14:14:06");
INSERT INTO medicine__activities VALUES("2011","DR ALTAF","OPD W 17","...","...","REFRESHMENT","1600","1","10/6/2024","2024-06-20 14:15:33","2024-06-20 14:15:33");
INSERT INTO medicine__activities VALUES("2012","ALI","...","...","...","CASH","5000","1","10/6/2024","2024-06-20 14:16:08","2024-06-20 14:16:08");
INSERT INTO medicine__activities VALUES("2013","DR AMMAR","...","...","...","MOBILE ADVANCE","15000","1","10/6/2024","2024-06-20 14:17:00","2024-06-20 14:17:00");
INSERT INTO medicine__activities VALUES("2014","DR AZEEM KHOSO","W 14","...","...","DINNER","3000","1","10/6/","2024-06-20 14:17:42","2024-06-20 14:17:42");
INSERT INTO medicine__activities VALUES("2015","DR KHALID","OPD","...","...","REFRESHMENT","1500","1","10/6/2024","2024-06-20 14:18:27","2024-06-20 14:18:27");
INSERT INTO medicine__activities VALUES("2016","DR NASIR","...","...","...","ACTIVITY","2500","1","10/6/2024","2024-06-20 14:19:16","2024-06-20 14:19:16");
INSERT INTO medicine__activities VALUES("2017","DR NOMAN","W 17","..","...","LUNCH","4000","1","10/6/2024","2024-06-20 14:19:58","2024-06-20 14:19:58");
INSERT INTO medicine__activities VALUES("2018","DR SAMINA MAJEED","....","...","...","STEHOSCOPE","2500","1","10/6/2024","2024-06-20 14:20:52","2024-06-20 14:20:52");
INSERT INTO medicine__activities VALUES("2019","DR RAJESH","RAZIA MEDICAL","...","...","B.P APPARTS","4500","1","10/6/2024","2024-06-20 14:22:14","2024-06-20 14:22:14");
INSERT INTO medicine__activities VALUES("2020","DR IMTIAZ","JPMC W 14","...","...","LUNCH","4000","1","10/6/2024","2024-06-20 14:24:00","2024-06-20 14:24:00");
INSERT INTO medicine__activities VALUES("2021","DR ZOHAIB","ER JPMC","..","..","DINNER","1200","1","10/6/2024","2024-06-20 14:25:16","2024-06-20 14:25:16");
INSERT INTO medicine__activities VALUES("2022","DR HASSAN","JPMC W 17","...","...","LUNCH","6000","1","10/6/2024","2024-06-20 14:26:29","2024-06-20 14:26:29");
INSERT INTO medicine__activities VALUES("2023","DR ETHESHAM","JPMC W 14","...","...","DINNER","3000","1","10/6/2024","2024-06-20 14:28:20","2024-06-20 14:28:20");
INSERT INTO medicine__activities VALUES("2024","DR MEHTAB","JPMC OPD W 17","...","...","REFRESHMENT","1000","1","10/6/2024","2024-06-20 14:29:31","2024-06-20 14:29:31");
INSERT INTO medicine__activities VALUES("2025","DR SAQIB","JPMC 17","...","...","ACTIVITY","4000","1","10/6/2024","2024-06-20 14:31:10","2024-06-20 14:31:10");
INSERT INTO medicine__activities VALUES("2026","DR SAQIB","JPMC 17","...","...","ACTIVITY","4000","1","10/6/2024","2024-06-20 14:32:08","2024-06-20 14:32:08");
INSERT INTO medicine__activities VALUES("2027","DR LAL MALIK","JPMC W 17","...","...","DINNER","4500","1","10/6/2024","2024-06-20 14:33:11","2024-06-20 14:33:11");
INSERT INTO medicine__activities VALUES("2028","DR MAIRAJ","CIVIL ORTHO 2","...","...","DINNER","3000","1","10/6/2024","2024-06-20 14:43:02","2024-06-20 14:43:02");
INSERT INTO medicine__activities VALUES("2029","MUBBASHIR","PHARMAX CIVIL","...","....","ACTIVITY","2000","1","10/6/2024","2024-06-20 14:43:45","2024-06-20 14:43:45");
INSERT INTO medicine__activities VALUES("2030","CIVIL ORTHO","OPD UNIT 2","...","...","WATER BOTLES","800","1","10/6/2024","2024-06-20 14:44:27","2024-06-20 14:44:27");
INSERT INTO medicine__activities VALUES("2031","DR PREM CHAND","CIVIL ORTHO 1","...","...","DINNER","3500","1","10/6/2024","2024-06-20 14:45:08","2024-06-20 14:45:08");
INSERT INTO medicine__activities VALUES("2032","DR UMAIR","CIVIL ORTHO 2","...","...","BOOKS","1800","1","10/6/2024","2024-06-20 14:46:00","2024-06-20 14:46:00");
INSERT INTO medicine__activities VALUES("2033","DR ASIF","CIVIL ORTHO 2","...","...","DINNER","3000","1","10/6/2024","2024-06-20 14:46:45","2024-06-20 14:46:45");
INSERT INTO medicine__activities VALUES("2034","DR WAQAR","CIVIL ORTHO 1","...","...","DINNER","3000","1","10/6/2024","2024-06-20 14:47:24","2024-06-20 14:47:24");
INSERT INTO medicine__activities VALUES("2035","DR SHAHZAIB","CIVIL ORTHO UNIT 2","...","...","DINNER","3000","1","10/6/2024","2024-06-20 14:51:46","2024-06-20 14:51:46");
INSERT INTO medicine__activities VALUES("2036","ARSALAN","CIVIL PHARMAX","...","...","ACTIVITY","1000","1","10/6/2024","2024-06-20 14:52:23","2024-06-20 14:52:23");
INSERT INTO medicine__activities VALUES("2037","ZAHEER WAHEED","CIVIL","...","...","CASH","2000","1","10/6/2024","2024-06-20 14:53:01","2024-06-20 14:53:01");
INSERT INTO medicine__activities VALUES("2038","CIVIL","OPD","...","...","WATER BOTLES","500","1","10/6/2024","2024-06-20 14:53:32","2024-06-20 14:53:32");
INSERT INTO medicine__activities VALUES("2039","DR WAQAR","CIVIL","...","...","DINNER","3000","1","10/6/2024","2024-06-20 14:54:19","2024-06-20 14:54:19");



CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("1","2014_10_12_000000_create_users_table","1");
INSERT INTO migrations VALUES("2","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("3","2018_02_17_060412_create_categories_table","1");
INSERT INTO migrations VALUES("4","2018_02_20_035727_create_brands_table","1");
INSERT INTO migrations VALUES("5","2018_02_25_100635_create_suppliers_table","1");
INSERT INTO migrations VALUES("6","2018_02_27_101619_create_warehouse_table","1");
INSERT INTO migrations VALUES("7","2018_03_03_040448_create_units_table","1");
INSERT INTO migrations VALUES("8","2018_03_04_041317_create_taxes_table","1");
INSERT INTO migrations VALUES("9","2018_03_10_061915_create_customer_groups_table","1");
INSERT INTO migrations VALUES("10","2018_03_10_090534_create_customers_table","1");
INSERT INTO migrations VALUES("11","2018_03_11_095547_create_billers_table","1");
INSERT INTO migrations VALUES("12","2018_04_05_054401_create_products_table","1");
INSERT INTO migrations VALUES("13","2018_04_06_133606_create_purchases_table","1");
INSERT INTO migrations VALUES("14","2018_04_06_154600_create_product_purchases_table","1");
INSERT INTO migrations VALUES("15","2018_04_06_154915_create_product_warhouse_table","1");
INSERT INTO migrations VALUES("16","2018_04_10_085927_create_sales_table","1");
INSERT INTO migrations VALUES("17","2018_04_10_090133_create_product_sales_table","1");
INSERT INTO migrations VALUES("18","2018_04_10_090254_create_payments_table","1");
INSERT INTO migrations VALUES("19","2018_04_10_090341_create_payment_with_cheque_table","1");
INSERT INTO migrations VALUES("20","2018_04_10_090509_create_payment_with_credit_card_table","1");
INSERT INTO migrations VALUES("21","2018_04_13_121436_create_quotation_table","1");
INSERT INTO migrations VALUES("22","2018_04_13_122324_create_product_quotation_table","1");
INSERT INTO migrations VALUES("23","2018_04_14_121802_create_transfers_table","1");
INSERT INTO migrations VALUES("24","2018_04_14_121913_create_product_transfer_table","1");
INSERT INTO migrations VALUES("25","2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table","2");
INSERT INTO migrations VALUES("26","2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table","3");
INSERT INTO migrations VALUES("27","2018_05_20_054532_create_adjustments_table","4");
INSERT INTO migrations VALUES("28","2018_05_20_054859_create_product_adjustments_table","4");
INSERT INTO migrations VALUES("29","2018_05_21_163419_create_returns_table","5");
INSERT INTO migrations VALUES("30","2018_05_21_163443_create_product_returns_table","5");
INSERT INTO migrations VALUES("31","2018_06_02_050905_create_roles_table","6");
INSERT INTO migrations VALUES("32","2018_06_02_073430_add_columns_to_users_table","7");
INSERT INTO migrations VALUES("33","2018_06_03_053738_create_permission_tables","8");
INSERT INTO migrations VALUES("36","2018_06_21_063736_create_pos_setting_table","9");
INSERT INTO migrations VALUES("37","2018_06_21_094155_add_user_id_to_sales_table","10");
INSERT INTO migrations VALUES("38","2018_06_21_101529_add_user_id_to_purchases_table","11");
INSERT INTO migrations VALUES("39","2018_06_21_103512_add_user_id_to_transfers_table","12");
INSERT INTO migrations VALUES("40","2018_06_23_061058_add_user_id_to_quotations_table","13");
INSERT INTO migrations VALUES("41","2018_06_23_082427_add_is_deleted_to_users_table","14");
INSERT INTO migrations VALUES("42","2018_06_25_043308_change_email_to_users_table","15");
INSERT INTO migrations VALUES("43","2018_07_06_115449_create_general_settings_table","16");
INSERT INTO migrations VALUES("44","2018_07_08_043944_create_languages_table","17");
INSERT INTO migrations VALUES("45","2018_07_11_102144_add_user_id_to_returns_table","18");
INSERT INTO migrations VALUES("46","2018_07_11_102334_add_user_id_to_payments_table","18");
INSERT INTO migrations VALUES("47","2018_07_22_130541_add_digital_to_products_table","19");
INSERT INTO migrations VALUES("49","2018_07_24_154250_create_deliveries_table","20");
INSERT INTO migrations VALUES("50","2018_08_16_053336_create_expense_categories_table","21");
INSERT INTO migrations VALUES("51","2018_08_17_115415_create_expenses_table","22");
INSERT INTO migrations VALUES("55","2018_08_18_050418_create_gift_cards_table","23");
INSERT INTO migrations VALUES("56","2018_08_19_063119_create_payment_with_gift_card_table","24");
INSERT INTO migrations VALUES("57","2018_08_25_042333_create_gift_card_recharges_table","25");
INSERT INTO migrations VALUES("58","2018_08_25_101354_add_deposit_expense_to_customers_table","26");
INSERT INTO migrations VALUES("59","2018_08_26_043801_create_deposits_table","27");
INSERT INTO migrations VALUES("60","2018_09_02_044042_add_keybord_active_to_pos_setting_table","28");
INSERT INTO migrations VALUES("61","2018_09_09_092713_create_payment_with_paypal_table","29");
INSERT INTO migrations VALUES("62","2018_09_10_051254_add_currency_to_general_settings_table","30");
INSERT INTO migrations VALUES("63","2018_10_22_084118_add_biller_and_store_id_to_users_table","31");
INSERT INTO migrations VALUES("65","2018_10_26_034927_create_coupons_table","32");
INSERT INTO migrations VALUES("66","2018_10_27_090857_add_coupon_to_sales_table","33");
INSERT INTO migrations VALUES("67","2018_11_07_070155_add_currency_position_to_general_settings_table","34");
INSERT INTO migrations VALUES("68","2018_11_19_094650_add_combo_to_products_table","35");
INSERT INTO migrations VALUES("69","2018_12_09_043712_create_accounts_table","36");
INSERT INTO migrations VALUES("70","2018_12_17_112253_add_is_default_to_accounts_table","37");
INSERT INTO migrations VALUES("71","2018_12_19_103941_add_account_id_to_payments_table","38");
INSERT INTO migrations VALUES("72","2018_12_20_065900_add_account_id_to_expenses_table","39");
INSERT INTO migrations VALUES("73","2018_12_20_082753_add_account_id_to_returns_table","40");
INSERT INTO migrations VALUES("74","2018_12_26_064330_create_return_purchases_table","41");
INSERT INTO migrations VALUES("75","2018_12_26_144210_create_purchase_product_return_table","42");
INSERT INTO migrations VALUES("76","2018_12_26_144708_create_purchase_product_return_table","43");
INSERT INTO migrations VALUES("77","2018_12_27_110018_create_departments_table","44");
INSERT INTO migrations VALUES("78","2018_12_30_054844_create_employees_table","45");
INSERT INTO migrations VALUES("79","2018_12_31_125210_create_payrolls_table","46");
INSERT INTO migrations VALUES("80","2018_12_31_150446_add_department_id_to_employees_table","47");
INSERT INTO migrations VALUES("81","2019_01_01_062708_add_user_id_to_expenses_table","48");
INSERT INTO migrations VALUES("82","2019_01_02_075644_create_hrm_settings_table","49");
INSERT INTO migrations VALUES("83","2019_01_02_090334_create_attendances_table","50");
INSERT INTO migrations VALUES("84","2019_01_27_160956_add_three_columns_to_general_settings_table","51");
INSERT INTO migrations VALUES("85","2019_02_15_183303_create_stock_counts_table","52");
INSERT INTO migrations VALUES("86","2019_02_17_101604_add_is_adjusted_to_stock_counts_table","53");
INSERT INTO migrations VALUES("87","2019_04_13_101707_add_tax_no_to_customers_table","54");
INSERT INTO migrations VALUES("89","2019_10_14_111455_create_holidays_table","55");
INSERT INTO migrations VALUES("90","2019_11_13_145619_add_is_variant_to_products_table","56");
INSERT INTO migrations VALUES("91","2019_11_13_150206_create_product_variants_table","57");
INSERT INTO migrations VALUES("92","2019_11_13_153828_create_variants_table","57");
INSERT INTO migrations VALUES("93","2019_11_25_134041_add_qty_to_product_variants_table","58");
INSERT INTO migrations VALUES("94","2019_11_25_134922_add_variant_id_to_product_purchases_table","58");
INSERT INTO migrations VALUES("95","2019_11_25_145341_add_variant_id_to_product_warehouse_table","58");
INSERT INTO migrations VALUES("96","2019_11_29_182201_add_variant_id_to_product_sales_table","59");
INSERT INTO migrations VALUES("97","2019_12_04_121311_add_variant_id_to_product_quotation_table","60");
INSERT INTO migrations VALUES("98","2019_12_05_123802_add_variant_id_to_product_transfer_table","61");
INSERT INTO migrations VALUES("100","2019_12_08_114954_add_variant_id_to_product_returns_table","62");
INSERT INTO migrations VALUES("101","2019_12_08_203146_add_variant_id_to_purchase_product_return_table","63");
INSERT INTO migrations VALUES("102","2020_02_28_103340_create_money_transfers_table","64");
INSERT INTO migrations VALUES("103","2020_07_01_193151_add_image_to_categories_table","65");
INSERT INTO migrations VALUES("105","2020_09_26_130426_add_user_id_to_deliveries_table","66");
INSERT INTO migrations VALUES("107","2020_10_11_125457_create_cash_registers_table","67");
INSERT INTO migrations VALUES("108","2020_10_13_155019_add_cash_register_id_to_sales_table","68");
INSERT INTO migrations VALUES("109","2020_10_13_172624_add_cash_register_id_to_returns_table","69");
INSERT INTO migrations VALUES("110","2020_10_17_212338_add_cash_register_id_to_payments_table","70");
INSERT INTO migrations VALUES("111","2020_10_18_124200_add_cash_register_id_to_expenses_table","71");
INSERT INTO migrations VALUES("112","2020_10_21_121632_add_developed_by_to_general_settings_table","72");
INSERT INTO migrations VALUES("113","2019_08_19_000000_create_failed_jobs_table","73");
INSERT INTO migrations VALUES("114","2020_10_30_135557_create_notifications_table","73");
INSERT INTO migrations VALUES("115","2020_11_01_044954_create_currencies_table","74");
INSERT INTO migrations VALUES("116","2020_11_01_140736_add_price_to_product_warehouse_table","75");
INSERT INTO migrations VALUES("117","2020_11_02_050633_add_is_diff_price_to_products_table","76");
INSERT INTO migrations VALUES("118","2020_11_09_055222_add_user_id_to_customers_table","77");
INSERT INTO migrations VALUES("119","2020_11_17_054806_add_invoice_format_to_general_settings_table","78");
INSERT INTO migrations VALUES("120","2021_02_10_074859_add_variant_id_to_product_adjustments_table","79");
INSERT INTO migrations VALUES("121","2021_03_07_093606_create_product_batches_table","80");
INSERT INTO migrations VALUES("122","2021_03_07_093759_add_product_batch_id_to_product_warehouse_table","80");
INSERT INTO migrations VALUES("123","2021_03_07_093900_add_product_batch_id_to_product_purchases_table","80");
INSERT INTO migrations VALUES("124","2021_03_11_132603_add_product_batch_id_to_product_sales_table","81");
INSERT INTO migrations VALUES("127","2021_03_25_125421_add_is_batch_to_products_table","82");
INSERT INTO migrations VALUES("128","2021_05_19_120127_add_product_batch_id_to_product_returns_table","82");
INSERT INTO migrations VALUES("130","2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table","83");
INSERT INTO migrations VALUES("131","2021_05_23_124848_add_product_batch_id_to_product_transfer_table","84");
INSERT INTO migrations VALUES("132","2021_05_26_153106_add_product_batch_id_to_product_quotation_table","85");
INSERT INTO migrations VALUES("133","2021_06_08_213007_create_reward_point_settings_table","86");
INSERT INTO migrations VALUES("134","2021_06_16_104155_add_points_to_customers_table","87");
INSERT INTO migrations VALUES("135","2021_06_17_101057_add_used_points_to_payments_table","88");
INSERT INTO migrations VALUES("136","2021_07_06_132716_add_variant_list_to_products_table","89");
INSERT INTO migrations VALUES("137","2021_09_27_161141_add_is_imei_to_products_table","90");
INSERT INTO migrations VALUES("138","2021_09_28_170052_add_imei_number_to_product_warehouse_table","91");
INSERT INTO migrations VALUES("139","2021_09_28_170126_add_imei_number_to_product_purchases_table","91");
INSERT INTO migrations VALUES("140","2021_10_03_170652_add_imei_number_to_product_sales_table","92");
INSERT INTO migrations VALUES("141","2021_10_10_145214_add_imei_number_to_product_returns_table","93");
INSERT INTO migrations VALUES("142","2021_10_11_104504_add_imei_number_to_product_transfer_table","94");
INSERT INTO migrations VALUES("143","2021_10_12_160107_add_imei_number_to_purchase_product_return_table","95");
INSERT INTO migrations VALUES("144","2021_10_12_205146_add_is_rtl_to_general_settings_table","96");
INSERT INTO migrations VALUES("145","2021_10_23_142451_add_is_approve_to_payments_table","97");
INSERT INTO migrations VALUES("146","2022_01_13_191242_create_discount_plans_table","97");
INSERT INTO migrations VALUES("147","2022_01_14_174318_create_discount_plan_customers_table","97");
INSERT INTO migrations VALUES("148","2022_01_14_202439_create_discounts_table","98");
INSERT INTO migrations VALUES("149","2022_01_16_153506_create_discount_plan_discounts_table","98");
INSERT INTO migrations VALUES("150","2022_02_05_174210_add_order_discount_type_and_value_to_sales_table","99");
INSERT INTO migrations VALUES("154","2022_05_26_195506_add_daily_sale_objective_to_products_table","100");
INSERT INTO migrations VALUES("155","2022_05_28_104209_create_dso_alerts_table","101");
INSERT INTO migrations VALUES("156","2022_06_01_112100_add_is_embeded_to_products_table","102");
INSERT INTO migrations VALUES("157","2022_06_14_130505_add_sale_id_to_returns_table","103");
INSERT INTO migrations VALUES("159","2022_07_19_115504_add_variant_data_to_products_table","104");
INSERT INTO migrations VALUES("160","2022_07_25_194300_add_additional_cost_to_product_variants_table","104");
INSERT INTO migrations VALUES("161","2022_09_04_195610_add_purchase_id_to_return_purchases_table","105");
INSERT INTO migrations VALUES("162","2023_01_18_123842_alter_table_pos_setting","106");
INSERT INTO migrations VALUES("164","2023_01_18_125040_alter_table_general_settings","107");
INSERT INTO migrations VALUES("165","2023_01_18_133701_alter_table_pos_setting","108");
INSERT INTO migrations VALUES("166","2023_01_25_145309_add_expiry_date_to_general_settings_table","109");
INSERT INTO migrations VALUES("167","2023_02_23_125656_alter_table_sales","110");
INSERT INTO migrations VALUES("168","2023_02_26_124100_add_package_id_to_general_settings_table","111");
INSERT INTO migrations VALUES("169","2023_03_04_120325_create_custom_fields_table","111");
INSERT INTO migrations VALUES("170","2023_03_22_174352_add_currency_id_and_exchange_rate_to_returns_table","112");
INSERT INTO migrations VALUES("171","2023_03_27_114320_add_currency_id_and_exchange_rate_to_purchases_table","113");
INSERT INTO migrations VALUES("172","2023_03_27_132747_add_currency_id_and_exchange_rate_to_return_purchases_table","114");
INSERT INTO migrations VALUES("173","2023_04_25_150236_create_mail_settings_table","115");
INSERT INTO migrations VALUES("174","2023_05_13_125424_add_zatca_to_general_settings_table","116");
INSERT INTO migrations VALUES("175","2023_05_28_155540_create_tables_table","117");
INSERT INTO migrations VALUES("176","2023_05_29_115039_add_is_table_to_pos_setting_table","117");
INSERT INTO migrations VALUES("177","2023_05_29_115301_add_table_id_to_sales_table","117");
INSERT INTO migrations VALUES("178","2023_05_31_165049_add_queue_no_to_sales_table","117");
INSERT INTO migrations VALUES("181","2023_07_23_160254_create_couriers_table","118");
INSERT INTO migrations VALUES("182","2023_07_23_174343_add_courier_id_to_deliveries_table","119");
INSERT INTO migrations VALUES("183","2023_06_12_161041_add_state_to_sales_table","120");
INSERT INTO migrations VALUES("184","2023_08_14_142608_add_is_active_to_currencies_table","120");
INSERT INTO migrations VALUES("185","2023_08_12_124016_add_staff_id_to_employees_table","121");
INSERT INTO migrations VALUES("186","2023_08_24_130203_change_columns_to_attendances_table","121");
INSERT INTO migrations VALUES("187","2023_09_10_134503_add_without_stock_to_general_settings_table","121");



CREATE TABLE `money_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO money_transfers VALUES("2","mtr-20200228-071852","1","3","100","2020-02-28 08:18:52","2020-02-28 08:18:52");
INSERT INTO money_transfers VALUES("3","mtr-20221128-120014","5","1","10000","2022-11-28 01:00:14","2022-11-28 01:00:14");



CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO notifications VALUES("3289c7ca-7edc-40a2-8978-226c8fd511d6","App\Notifications\SendNotification","App\User","9","{"sender_id":"1","receiver_id":"9","reminder_date":"2023-07-21","document_name":null,"message":"hello staff"}","2023-07-21 12:33:51","2023-07-21 12:33:08","2023-07-21 12:33:51");
INSERT INTO notifications VALUES("55018eeb-b30f-4ddd-a2d3-2e69d8293e64","App\Notifications\SendNotification","App\User","9","{"sender_id":"1","receiver_id":"9","reminder_date":"2023-04-04","document_name":null,"message":"first reminder"}","2023-04-04 02:04:41","2023-04-04 02:03:50","2023-04-04 02:04:41");
INSERT INTO notifications VALUES("6bd3fca0-3a7a-4397-aa01-6901afb859a8","App\Notifications\SendNotification","App\User","1","{"sender_id":"9","receiver_id":"1","reminder_date":"2023-07-21","document_name":null,"message":"hi\r\nadmin"}","2023-07-21 12:35:36","2023-07-21 12:35:08","2023-07-21 12:35:36");
INSERT INTO notifications VALUES("9bf0de38-65d8-462d-b7e2-58ca84f88e57","App\Notifications\SendNotification","App\User","9","{"sender_id":"1","receiver_id":"9","reminder_date":"2023-04-05","document_name":null,"message":"second reminder"}","","2023-04-04 02:05:33","2023-04-04 02:05:33");
INSERT INTO notifications VALUES("d0623880-4199-459c-af55-3bc1464cbe71","App\Notifications\SendNotification","App\User","9","{"sender_id":"1","receiver_id":"9","document_name":"20220523012859.jpg","message":"hjhjhh"}","2022-05-23 05:50:47","2022-05-23 03:29:00","2022-05-23 05:50:47");
INSERT INTO notifications VALUES("ea3e6ccc-a25a-44b7-8e43-b0ab09204ee6","App\Notifications\SendNotification","App\User","9","{"sender_id":"1","receiver_id":"9","document_name":null,"message":"hello"}","2022-05-23 06:24:31","2022-05-23 06:24:06","2022-05-23 06:24:31");



CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO password_resets VALUES("ashfaqdev.php@gmail.com","$2y$10$plxHOMxChJlHd9t6FQkoN.4dXMdtZ9fE5tXBBItzjxB1R5JF9OpbO","2023-07-15 07:31:30");



CREATE TABLE `payment_with_cheque` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_with_cheque VALUES("1","19","23425235235","2018-06-30 23:09:48","2018-06-30 23:09:48");
INSERT INTO payment_with_cheque VALUES("2","24","3123123123","2018-07-09 21:21:32","2018-07-09 21:21:32");
INSERT INTO payment_with_cheque VALUES("3","31","767867678","2018-08-08 06:36:22","2018-08-08 06:36:22");
INSERT INTO payment_with_cheque VALUES("4","34","3123412","2018-08-08 19:55:54","2018-08-08 19:55:54");
INSERT INTO payment_with_cheque VALUES("5","35","7765","2018-08-08 20:32:14","2018-08-08 20:32:14");
INSERT INTO payment_with_cheque VALUES("7","51","6576764646","2018-09-03 00:08:21","2018-09-03 00:08:21");
INSERT INTO payment_with_cheque VALUES("9","79","1111","2018-10-05 20:51:55","2018-10-05 20:51:55");
INSERT INTO payment_with_cheque VALUES("10","147","221133","2018-12-03 19:58:35","2018-12-03 19:58:35");
INSERT INTO payment_with_cheque VALUES("11","175","1111","2019-02-07 01:38:23","2019-02-07 01:38:23");
INSERT INTO payment_with_cheque VALUES("12","176","1111","2019-02-07 01:54:59","2019-02-07 01:54:59");
INSERT INTO payment_with_cheque VALUES("15","295","111122222","2020-10-18 01:17:24","2020-10-18 01:17:24");
INSERT INTO payment_with_cheque VALUES("16","406","13123123","2022-03-11 10:15:29","2022-03-11 10:15:29");



CREATE TABLE `payment_with_credit_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) DEFAULT NULL,
  `charge_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_with_credit_card VALUES("4","294","1","cus_IDw8z9yJZn4qH3","ch_1HdUGJKwOmA8HLXePiqphlky","2020-10-18 01:16:55","2020-10-18 01:16:55");



CREATE TABLE `payment_with_gift_card` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_with_gift_card VALUES("1","36","2","2018-08-24 17:48:36","2018-08-24 20:57:35");
INSERT INTO payment_with_gift_card VALUES("4","39","1","2018-08-24 22:36:34","2018-08-24 22:36:34");
INSERT INTO payment_with_gift_card VALUES("6","50","1","2018-09-02 19:01:38","2018-09-02 19:01:38");
INSERT INTO payment_with_gift_card VALUES("8","293","1","2020-10-18 01:14:26","2020-10-18 01:14:26");



CREATE TABLE `payment_with_paypal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_reference` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) NOT NULL,
  `payment_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payments VALUES("33","spr-20180809-055453","1","","2","","1","1000","","0","Cash","","2018-08-08 19:54:53","2018-08-08 19:54:53");
INSERT INTO payments VALUES("34","spr-20180809-055553","1","","2","","1","1200","","0","Cheque","","2018-08-08 19:55:53","2018-08-08 19:56:36");
INSERT INTO payments VALUES("35","spr-20180809-063214","1","","3","","1","897","","0","Cheque","","2018-08-08 20:32:14","2018-08-08 20:32:14");
INSERT INTO payments VALUES("36","spr-20180825-034836","1","","4","","1","100","","0","Gift Card","100 bucks paid...","2018-08-24 17:48:36","2018-08-24 20:57:35");
INSERT INTO payments VALUES("39","spr-20180825-083634","1","","4","","1","200","","0","Gift Card","","2018-08-24 22:36:34","2018-08-24 22:36:34");
INSERT INTO payments VALUES("42","spr-20180827-073545","1","","7","","1","880","","0","Cash","","2018-08-26 21:35:45","2018-08-26 21:35:45");
INSERT INTO payments VALUES("46","spr-20180902-053954","1","","8","","1","3529.8","","0","Cash","fully paid","2018-09-01 19:39:54","2018-09-01 19:39:54");
INSERT INTO payments VALUES("49","spr-20180903-033314","1","","9","","1","20","","0","Deposit","fully paid","2018-09-02 17:33:14","2018-09-02 17:33:14");
INSERT INTO payments VALUES("50","spr-20180903-050138","1","","10","","1","200","","0","Gift Card","50 bucks due...","2018-09-02 19:01:38","2018-09-09 17:40:28");
INSERT INTO payments VALUES("51","spr-20180903-100821","1","","11","","1","5500","","0","Cheque","","2018-09-03 00:08:21","2018-09-03 00:08:21");
INSERT INTO payments VALUES("78","spr-20180926-092105","1","","31","","1","560","","0","Cash","","2018-09-25 23:21:05","2018-09-25 23:21:05");
INSERT INTO payments VALUES("79","spr-20181006-065017","1","","30","","1","100","","0","Cheque","","2018-10-05 20:50:17","2018-10-05 20:51:55");
INSERT INTO payments VALUES("80","spr-20181006-065222","1","","30","","1","20","","0","Cash","","2018-10-05 20:52:22","2018-10-05 20:52:22");
INSERT INTO payments VALUES("83","spr-20181010-041636","1","","41","","1","461","","0","Cash","","2018-10-09 18:16:36","2018-10-09 18:16:36");
INSERT INTO payments VALUES("84","spr-20181010-053456","1","","42","","1","440","","0","Cash","","2018-10-09 19:34:56","2018-10-09 19:34:56");
INSERT INTO payments VALUES("91","spr-20181021-065338","1","","55","","1","250","","0","Cash","","2018-10-20 20:53:38","2018-10-20 20:53:38");
INSERT INTO payments VALUES("92","spr-20181021-082618","1","","57","","1","575.2","","0","Cash","","2018-10-20 22:26:18","2018-10-20 22:26:18");
INSERT INTO payments VALUES("93","spr-20181022-032730","1","","58","","1","1220","","0","Cash","","2018-10-22 05:27:30","2018-10-22 05:27:30");
INSERT INTO payments VALUES("104","spr-20181023-071548","11","","73","","1","5500","","0","Cash","","2018-10-22 21:15:48","2018-10-22 21:15:48");
INSERT INTO payments VALUES("105","spr-20181023-071648","1","","74","","1","2320","","0","Cash","","2018-10-22 21:16:48","2018-10-22 21:16:48");
INSERT INTO payments VALUES("126","spr-20181101-050033","1","","75","","1","7678","","0","Cash","","2018-10-31 19:00:33","2018-10-31 19:00:33");
INSERT INTO payments VALUES("127","spr-20181101-050130","1","","76","","1","1424","","0","Cash","","2018-10-31 19:01:30","2018-11-07 22:44:51");
INSERT INTO payments VALUES("129","spr-20181105-091523","1","","79","","1","14454","","0","Cash","","2018-11-04 22:15:23","2018-11-04 22:15:23");
INSERT INTO payments VALUES("130","spr-20181105-092002","1","","80","","1","2500","","0","Cash","","2018-11-04 22:20:02","2018-11-04 22:20:02");
INSERT INTO payments VALUES("137","spr-20181105-095952","1","","86","","1","1100","","0","Cash","","2018-11-04 22:59:52","2018-11-04 22:59:52");
INSERT INTO payments VALUES("138","spr-20181105-100310","1","","88","","1","1100","","0","Cash","","2018-11-04 23:03:10","2018-11-04 23:03:10");
INSERT INTO payments VALUES("139","spr-20181126-020534","1","","94","","1","120","","0","Cash","","2018-11-26 03:05:34","2018-11-26 03:05:34");
INSERT INTO payments VALUES("140","spr-20181128-071515","1","","96","","1","132","","0","Cash","","2018-11-27 20:15:15","2018-11-27 20:15:15");
INSERT INTO payments VALUES("141","spr-20181201-060524","1","","97","","1","200","","300","Cash","","2018-11-30 19:05:24","2018-12-03 19:21:05");
INSERT INTO payments VALUES("150","spr-20181205-053608","1","","98","","1","800","","200","Cash","","2018-12-04 18:36:08","2018-12-04 18:36:08");
INSERT INTO payments VALUES("151","spr-20181205-053724","1","","99","","1","800","","0","Cash","","2018-12-04 18:37:24","2018-12-04 18:37:24");
INSERT INTO payments VALUES("152","spr-20181208-062032","1","","101","","1","100","","400","Cash","","2018-12-07 19:20:32","2018-12-10 22:19:39");
INSERT INTO payments VALUES("159","spr-20181224-045832","1","","103","","1","120","","0","Cash","","2018-12-23 17:58:32","2018-12-23 17:58:32");
INSERT INTO payments VALUES("160","spr-20190101-054544","1","","105","","1","21","","0","Cash","","2018-12-31 18:45:44","2018-12-31 18:45:44");
INSERT INTO payments VALUES("161","spr-20190101-091040","1","","106","","1","860","","0","Cash","","2018-12-31 22:10:40","2018-12-31 22:10:40");
INSERT INTO payments VALUES("162","spr-20190103-065627","1","","107","","1","5040","","960","Cash","","2019-01-02 19:56:27","2019-01-02 19:56:27");
INSERT INTO payments VALUES("163","spr-20190120-035824","1","","108","","1","120","","0","Cash","","2019-01-20 04:58:24","2019-01-20 04:58:24");
INSERT INTO payments VALUES("166","spr-20190129-101451","9","","109","","1","540","","460","Cash","","2019-01-28 23:14:51","2019-01-28 23:14:51");
INSERT INTO payments VALUES("167","spr-20190129-115048","9","","110","","1","1700","","300","Cash","","2019-01-29 00:50:48","2019-01-29 00:50:48");
INSERT INTO payments VALUES("168","spr-20190131-110839","9","","111","","1","271","","0","Cash","","2019-01-31 00:08:39","2019-01-31 00:08:39");
INSERT INTO payments VALUES("169","spr-20190202-104045","1","","112","","1","440","","0","Cash","","2019-02-01 23:40:45","2019-02-01 23:40:45");
INSERT INTO payments VALUES("170","spr-20190202-114117","1","","113","","1","350","","0","Cash","","2019-02-02 00:41:17","2019-02-02 00:41:17");
INSERT INTO payments VALUES("171","spr-20190205-030454","1","","114","","1","440","","0","Cash","","2019-02-05 04:04:54","2019-02-05 04:04:54");
INSERT INTO payments VALUES("179","spr-20190207-010915","1","","120","","1","50","","50","Cash","","2019-02-07 02:09:15","2019-02-07 02:09:15");
INSERT INTO payments VALUES("180","spr-20190209-104816","1","","121","","1","1272","","728","Cash","","2019-02-08 23:48:16","2019-02-08 23:48:16");
INSERT INTO payments VALUES("183","spr-20190219-023214","1","","123","","1","440","","0","Cash","","2019-02-19 03:32:14","2019-02-19 03:32:14");
INSERT INTO payments VALUES("189","spr-20190303-104010","1","","127","","1","2500","","0","Cash","","2019-03-02 23:40:10","2019-03-02 23:40:10");
INSERT INTO payments VALUES("193","spr-20190404-095555","1","","128","","1","560","","0","Cash","","2019-04-03 23:55:55","2019-04-03 23:55:55");
INSERT INTO payments VALUES("195","spr-20190404-095937","1","","129","","1","120","","0","Cash","","2019-04-03 23:59:37","2019-04-03 23:59:37");
INSERT INTO payments VALUES("196","spr-20190421-122124","1","","130","","1","586","","0","Cash","","2019-04-21 02:21:24","2019-04-21 02:21:24");
INSERT INTO payments VALUES("197","spr-20190528-103229","1","","131","","1","2890","","0","Cash","","2019-05-28 00:32:29","2019-05-28 00:32:29");
INSERT INTO payments VALUES("199","spr-20190613-101637","1","","132","","1","840","","0","Cash","","2019-06-13 00:16:37","2019-06-13 00:16:37");
INSERT INTO payments VALUES("201","spr-20190613-101752","1","","133","","1","2700","","0","Cash","","2019-06-13 00:17:52","2019-06-13 00:17:52");
INSERT INTO payments VALUES("203","spr-20191019-033028","1","","134","","1","2940","","60","Cash","","2019-10-19 05:30:28","2019-10-19 05:30:28");
INSERT INTO payments VALUES("205","spr-20191103-114044","1","","139","","1","488","","12","Cash","","2019-11-03 01:40:44","2019-11-03 01:40:44");
INSERT INTO payments VALUES("211","spr-20191109-074131","1","","144","","1","1220","","0","Cash","","2019-11-09 08:41:31","2019-11-09 08:41:31");
INSERT INTO payments VALUES("217","spr-20191111-104008","1","","147","","1","2220","","780","Cash","","2019-11-10 23:40:08","2019-11-10 23:40:08");
INSERT INTO payments VALUES("222","spr-20191203-115128","1","","163","","1","3","","0","Cash","","2019-12-03 00:51:28","2019-12-03 00:51:28");
INSERT INTO payments VALUES("228","spr-20191205-092712","1","","173","","1","621","","0","Cash","","2019-12-04 22:27:12","2019-12-04 22:27:12");
INSERT INTO payments VALUES("239","spr-20191222-104058","1","","187","","1","288","","212","Cash","","2019-12-21 23:40:58","2019-12-21 23:40:58");
INSERT INTO payments VALUES("241","spr-20191223-125946","1","","190","","1","1100","","400","Cash","","2019-12-23 01:59:46","2019-12-23 01:59:46");
INSERT INTO payments VALUES("246","spr-20200101-022028","1","","193","","1","1100","","400","Cash","","2020-01-01 03:20:28","2020-01-01 03:20:28");
INSERT INTO payments VALUES("252","spr-20200102-043947","1","","194","","1","892","","108","Cash","","2020-01-02 05:39:47","2020-01-02 05:39:47");
INSERT INTO payments VALUES("258","spr-20200203-035256","1","","201","","1","120","","880","Cash","","2020-02-03 04:52:56","2020-02-03 04:52:56");
INSERT INTO payments VALUES("259","spr-20200204-105853","1","","202","","1","1400","","100","Cash","","2020-02-04 11:58:53","2020-02-04 11:58:53");
INSERT INTO payments VALUES("261","spr-20200302-115414","1","","203","","1","350","","150","Cash","","2020-03-02 00:54:14","2020-03-02 00:54:14");
INSERT INTO payments VALUES("262","spr-20200302-115741","1","","204","","1","40","","10","Cash","","2020-03-02 00:57:41","2020-03-02 00:57:41");
INSERT INTO payments VALUES("265","spr-20200311-044642","1","","205","","1","352","","148","Cash","","2020-03-11 06:46:42","2020-03-11 06:46:42");
INSERT INTO payments VALUES("267","spr-20200406-074024","1","","207","","1","500","","500","Cash","","2020-04-06 09:40:24","2020-04-06 09:40:24");
INSERT INTO payments VALUES("268","spr-20200406-074201","1","","207","","1","144","","56","Cash","","2020-04-06 09:42:01","2020-04-06 09:42:01");
INSERT INTO payments VALUES("269","spr-20200506-105950","1","","208","","1","1540","","460","Cash","","2020-05-06 12:59:50","2020-05-06 12:59:50");
INSERT INTO payments VALUES("270","spr-20200609-124248","1","","209","","1","1220","","780","Cash","","2020-06-09 02:42:48","2020-06-09 02:42:48");
INSERT INTO payments VALUES("273","spr-20200703-063914","1","","212","","1","2585","","415","Cash","","2020-07-03 08:39:14","2020-07-03 08:39:14");
INSERT INTO payments VALUES("274","spr-20200712-095153","1","","213","","1","13","","37","Cash","","2020-07-12 11:51:53","2020-07-12 11:51:53");
INSERT INTO payments VALUES("276","spr-20200727-083808","1","","217","","1","385","","0","Cash","","2020-07-27 10:38:08","2020-07-27 10:38:08");
INSERT INTO payments VALUES("277","spr-20200727-084024","1","","218","","1","385","","0","Cash","","2020-07-27 10:40:24","2020-07-27 10:40:24");
INSERT INTO payments VALUES("278","spr-20200727-084645","1","","219","","1","385","","0","Cash","","2020-07-27 10:46:45","2020-07-27 10:46:45");
INSERT INTO payments VALUES("279","spr-20200812-062806","1","","220","","1","760","","240","Cash","","2020-08-12 08:28:06","2020-08-12 08:28:06");
INSERT INTO payments VALUES("281","spr-20200812-063035","1","","221","","1","1100","","0","Cash","","2020-08-12 08:30:35","2020-08-12 08:30:35");
INSERT INTO payments VALUES("282","spr-20200816-100426","1","","222","","1","23000","","2000","Cash","","2020-08-16 12:04:26","2020-08-16 12:04:26");
INSERT INTO payments VALUES("283","spr-20200816-100523","1","","223","","1","300","","200","Cash","","2020-08-16 12:05:23","2020-08-16 12:05:23");
INSERT INTO payments VALUES("284","spr-20200816-100632","1","","223","","1","100","","0","Cash","","2020-08-16 12:06:32","2020-08-16 12:06:32");
INSERT INTO payments VALUES("285","spr-20200816-100735","1","","223","","1","40","","0","Cash","","2020-08-16 12:07:35","2020-08-16 12:07:35");
INSERT INTO payments VALUES("290","spr-20201017-092854","9","","230","2","1","200","","0","Cash","","2020-10-17 11:28:54","2020-10-18 00:48:54");
INSERT INTO payments VALUES("291","spr-20201018-105138","9","","230","2","1","50","","0","Cash","","2020-10-18 00:51:38","2020-10-18 00:51:38");
INSERT INTO payments VALUES("292","spr-20201018-111333","9","","231","2","1","100","","0","Cash","","2020-10-18 01:13:33","2020-10-18 01:13:33");
INSERT INTO payments VALUES("293","spr-20201018-111426","9","","231","2","1","50","","0","Gift Card","","2020-10-18 01:14:26","2020-10-18 01:14:26");
INSERT INTO payments VALUES("294","spr-20201018-111651","9","","231","2","1","50","","0","Credit Card","","2020-10-18 01:16:51","2020-10-18 01:16:51");
INSERT INTO payments VALUES("295","spr-20201018-111724","9","","231","2","1","50","","0","Cheque","","2020-10-18 01:17:24","2020-10-18 01:17:24");
INSERT INTO payments VALUES("296","spr-20201022-013018","9","","232","2","1","100","","0","Cash","","2020-10-22 03:30:18","2020-10-22 03:30:18");
INSERT INTO payments VALUES("297","spr-20201022-015606","1","","233","3","1","250","","0","Cash","","2020-10-22 03:56:06","2020-10-22 03:56:06");
INSERT INTO payments VALUES("298","spr-20201024-070508","1","","234","4","1","11500","","0","Cash","","2020-10-23 21:05:08","2020-10-23 21:05:08");
INSERT INTO payments VALUES("299","spr-20201024-070753","1","","235","4","1","250","","0","Cash","","2020-10-23 21:07:53","2020-10-23 21:07:53");
INSERT INTO payments VALUES("300","spr-20201024-034619","1","","237","4","1","61900","","0","Cash","","2020-10-24 05:46:19","2020-10-24 05:46:19");
INSERT INTO payments VALUES("302","spr-20201027-054004","1","","239","3","1","2","","0","Cash","","2020-10-26 19:40:04","2020-10-26 19:40:04");
INSERT INTO payments VALUES("303","spr-20201027-054207","1","","240","3","1","6","","0","Cash","","2020-10-26 19:42:07","2020-10-26 19:42:07");
INSERT INTO payments VALUES("304","spr-20201027-063202","1","","241","4","1","250","","0","Cash","","2020-10-26 20:32:02","2020-10-26 20:32:02");
INSERT INTO payments VALUES("305","spr-20201029-073033","1","","242","4","1","250","","0","Cash","","2020-10-28 21:30:33","2020-10-28 21:30:33");
INSERT INTO payments VALUES("306","spr-20201101-072115","1","","243","4","1","250","","0","Cash","","2020-10-31 21:21:15","2020-10-31 21:21:15");
INSERT INTO payments VALUES("307","spr-20201101-074225","1","","245","3","1","1130","","0","Cash","","2020-10-31 21:42:25","2020-10-31 21:42:25");
INSERT INTO payments VALUES("308","spr-20201101-075019","1","","246","4","1","440","","0","Cash","","2020-10-31 21:50:19","2020-10-31 21:50:19");
INSERT INTO payments VALUES("310","spr-20201106-013042","1","","250","4","1","378.4","","0","Cash","","2020-11-06 02:30:42","2020-11-06 02:30:42");
INSERT INTO payments VALUES("311","spr-20201109-011527","1","","251","4","1","500","","0","Cash","","2020-11-09 02:15:27","2020-11-09 02:15:27");
INSERT INTO payments VALUES("312","spr-20201111-055902","1","","252","3","1","229.5","","0","Cash","","2020-11-10 18:59:02","2020-11-10 18:59:02");
INSERT INTO payments VALUES("313","spr-20201114-064739","1","","253","4","1","10242.5","","0","Cash","","2020-11-13 19:47:39","2020-11-13 19:47:39");
INSERT INTO payments VALUES("316","spr-20201117-064751","1","","256","4","1","715","","0","Cash","","2020-11-16 19:47:51","2020-11-16 19:47:51");
INSERT INTO payments VALUES("317","spr-20201117-070920","1","","257","4","1","250","","0","Cash","","2020-11-16 20:09:20","2020-11-16 20:09:20");
INSERT INTO payments VALUES("321","spr-20201118-065242","1","","258","4","1","27200","","0","Cash","","2020-11-17 19:52:42","2020-11-17 19:52:42");
INSERT INTO payments VALUES("324","spr-20201208-094000","1","","263","4","1","300","","200","Cash","","2020-12-07 22:40:00","2020-12-07 22:40:00");
INSERT INTO payments VALUES("325","spr-20210106-022350","1","","263","4","1","50","","0","Cash","","2021-01-06 03:23:50","2021-01-06 03:23:50");
INSERT INTO payments VALUES("330","spr-20210111-021625","1","","271","3","1","1274","","0","Cash","","2021-01-11 03:16:25","2021-01-11 03:16:25");
INSERT INTO payments VALUES("332","spr-20210113-070243","1","","274","4","1","1556","","0","Cash","","2021-01-12 20:02:43","2021-01-12 20:02:43");
INSERT INTO payments VALUES("333","spr-20210201-023748","1","","275","4","1","484","","0","Cash","","2021-02-01 03:37:48","2021-02-01 03:37:48");
INSERT INTO payments VALUES("335","spr-20210216-070948","1","","277","4","1","15156","","0","Cash","","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO payments VALUES("336","spr-20210217-073238","1","","278","4","1","26949.9","","0","Cash","","2021-02-16 20:32:38","2021-02-16 20:32:38");
INSERT INTO payments VALUES("338","spr-20210524-074506","1","","290","3","1","250","","0","Cash","","2021-05-24 09:45:06","2021-05-24 09:45:06");
INSERT INTO payments VALUES("339","spr-20210524-074647","1","","290","3","1","-130","","0","Cash","","2021-05-24 09:46:47","2021-05-24 09:46:47");
INSERT INTO payments VALUES("341","spr-20210601-123530","1","","294","4","1","440","","0","Cash","","2021-06-01 02:35:30","2021-06-01 02:35:30");
INSERT INTO payments VALUES("342","spr-20210601-032209","1","","295","3","1","2","","0","Cash","","2021-06-01 05:22:09","2021-06-01 05:22:09");
INSERT INTO payments VALUES("343","spr-20210601-034624","1","","296","3","1","2","","0","Cash","","2021-06-01 05:46:24","2021-06-01 05:46:24");
INSERT INTO payments VALUES("344","spr-20210601-074150","9","","297","2","1","250","","0","Cash","","2021-06-01 09:41:50","2021-06-01 09:41:50");
INSERT INTO payments VALUES("345","spr-20210601-075547","9","","298","2","1","2","","0","Cash","","2021-06-01 09:55:47","2021-06-01 09:55:47");
INSERT INTO payments VALUES("346","spr-20210616-105325","1","","299","4","1","1100","","0","Cash","","2021-06-16 00:53:25","2021-06-16 00:53:25");
INSERT INTO payments VALUES("347","spr-20210616-111044","1","","300","4","1","440","","0","Cash","","2021-06-16 01:10:44","2021-06-16 01:10:44");
INSERT INTO payments VALUES("348","spr-20210616-111120","1","","301","4","1","2200","","0","Cash","","2021-06-16 01:11:20","2021-06-16 01:11:20");
INSERT INTO payments VALUES("349","spr-20210616-080543","1","","303","4","1","440","2","0","Points","","2021-06-16 10:05:43","2021-06-16 10:05:43");
INSERT INTO payments VALUES("351","spr-20210616-082851","1","","305","4","1","440","","0","Cash","","2021-06-16 10:28:51","2021-06-16 10:28:51");
INSERT INTO payments VALUES("352","spr-20210617-115553","1","","306","3","1","1100","4","0","Points","","2021-06-17 01:55:53","2021-06-17 01:55:53");
INSERT INTO payments VALUES("353","spr-20210617-121359","1","","304","4","1","440","2","0","Points","","2021-06-17 02:13:59","2021-06-17 02:13:59");
INSERT INTO payments VALUES("354","spr-20210617-030013","1","","307","3","1","100","","0","Cash","","2021-06-17 05:00:13","2021-06-17 05:00:13");
INSERT INTO payments VALUES("356","spr-20210618-083127","1","","308","4","1","1608","","392","Cash","","2021-06-18 10:31:27","2021-06-18 10:31:27");
INSERT INTO payments VALUES("357","spr-20210618-083254","1","","309","3","1","2","","0","Cash","","2021-06-18 10:32:54","2021-06-18 10:32:54");
INSERT INTO payments VALUES("359","spr-20210619-105121","1","","310","4","1","958","","42","Cash","","2021-06-19 00:51:21","2021-06-19 00:51:21");
INSERT INTO payments VALUES("360","spr-20210619-110231","1","","312","4","1","440","2","0","Points","","2021-06-19 01:02:31","2021-06-19 01:02:31");
INSERT INTO payments VALUES("361","spr-20210619-110638","1","","313","4","1","250","1","0","Points","","2021-06-19 01:06:38","2021-06-19 01:06:38");
INSERT INTO payments VALUES("362","spr-20210627-124247","1","","314","4","1","1100","","0","Cash","","2021-06-27 02:42:47","2021-06-27 02:42:47");
INSERT INTO payments VALUES("364","spr-20210707-103455","1","","317","4","1","18","","0","Cash","","2021-07-07 00:34:55","2021-07-07 00:34:55");
INSERT INTO payments VALUES("367","spr-20210814-092805","1","","325","4","1","1250","","0","Cash","","2021-08-14 11:28:05","2021-08-14 11:28:05");
INSERT INTO payments VALUES("371","spr-20210921-010722","1","","333","4","1","2","","0","Cash","","2021-09-21 03:07:22","2021-09-21 03:07:22");
INSERT INTO payments VALUES("372","spr-20210921-035020","1","","334","4","1","120","","0","Cash","","2021-09-21 05:50:20","2021-09-21 05:50:20");
INSERT INTO payments VALUES("373","spr-20210923-024704","1","","335","4","1","11","","0","Cash","","2021-09-23 04:47:04","2021-09-23 04:47:04");
INSERT INTO payments VALUES("374","spr-20211003-051829","1","","336","4","1","1220","","0","Cash","","2021-10-03 07:18:29","2021-10-03 07:18:29");
INSERT INTO payments VALUES("376","spr-20211003-054404","1","","338","4","1","1100","","0","Cash","","2021-10-03 07:44:04","2021-10-03 07:44:04");
INSERT INTO payments VALUES("378","spr-20211007-025229","1","","340","4","1","1100","","0","Cash","","2021-10-07 04:52:29","2021-10-07 04:52:29");
INSERT INTO payments VALUES("379","spr-20211007-033840","1","","341","4","1","1100","","0","Cash","","2021-10-07 05:38:40","2021-10-07 05:38:40");
INSERT INTO payments VALUES("384","spr-20211014-035825","1","","348","4","1","1100","","0","Cash","","2021-10-14 05:58:25","2021-10-14 05:58:25");
INSERT INTO payments VALUES("385","spr-20211020-011209","1","","349","4","1","102","","0","Cash","","2021-10-20 03:12:09","2021-10-20 03:12:09");
INSERT INTO payments VALUES("386","spr-20211114-013929","1","","353","4","1","374","","0","Cash","","2021-11-14 02:39:29","2021-11-14 02:39:29");
INSERT INTO payments VALUES("387","spr-20211124-062858","1","","355","4","1","3161","","0","Cash","","2021-11-24 07:28:58","2021-11-24 07:28:58");
INSERT INTO payments VALUES("388","spr-20211207-070932","1","","356","4","1","573","","0","Cash","","2021-12-07 08:09:32","2021-12-07 08:09:32");
INSERT INTO payments VALUES("391","spr-20211222-070313","1","","360","4","1","24","","0","Cash","","2021-12-22 08:03:13","2021-12-22 08:03:13");
INSERT INTO payments VALUES("393","spr-20220203-035948","1","","362","4","1","8.5","","0","Cash","","2022-02-03 04:59:48","2022-02-03 04:59:48");
INSERT INTO payments VALUES("394","spr-20220203-070602","1","","363","4","1","466","","34","Cash","","2022-02-03 08:06:02","2022-02-03 08:06:02");
INSERT INTO payments VALUES("395","spr-20220205-054526","1","","364","4","1","396","","0","Cash","","2022-02-05 06:45:26","2022-02-05 06:45:26");
INSERT INTO payments VALUES("396","spr-20220205-054616","1","","365","4","1","240","","0","Cash","","2022-02-05 06:46:16","2022-02-05 06:46:16");
INSERT INTO payments VALUES("403","spr-20220227-115905","1","","377","4","1","500","2","0","Points","","2022-02-27 00:59:05","2022-02-27 00:59:05");
INSERT INTO payments VALUES("405","spr-20220309-115901","1","","379","4","1","1790","","0","Cash","","2022-03-09 00:59:01","2022-03-09 00:59:01");
INSERT INTO payments VALUES("406","spr-20220311-091529","1","","377","4","1","10","","0","Cheque","cheque payment","2022-03-11 10:15:29","2022-03-11 10:15:29");
INSERT INTO payments VALUES("408","payment-101","1","","377","4","1","11","","0","Cash","","2022-03-12 08:12:38","2022-03-12 08:43:28");
INSERT INTO payments VALUES("409","spr-20220312-082027","1","","380","","1","440","","0","Cash","","2022-03-12 09:20:27","2022-03-12 09:20:27");
INSERT INTO payments VALUES("410","spr-20220312-082452","1","","381","","1","250","","0","Cash","","2022-03-12 09:24:52","2022-03-12 09:24:52");
INSERT INTO payments VALUES("411","spr-20220312-082622","1","","381","","1","100","","0","Cash","","2022-03-12 09:26:22","2022-03-12 09:26:22");
INSERT INTO payments VALUES("412","spr-20220424-110144","1","","382","6","1","1225","","775","Cash","","2022-04-24 01:01:44","2022-04-24 01:01:44");
INSERT INTO payments VALUES("414","spr-20220516-112427","1","","383","6","1","3300","","700","Cash","","2022-05-16 01:24:27","2022-05-16 01:24:27");
INSERT INTO payments VALUES("416","spr-20220526-090112","1","","385","6","1","370","","0","Cash","","2022-05-26 11:01:12","2022-05-26 11:01:12");
INSERT INTO payments VALUES("417","spr-20220531-122028","1","","386","6","1","440","","0","Cash","","2022-05-31 02:20:28","2022-05-31 02:20:28");
INSERT INTO payments VALUES("427","spr-20220606-051413","1","","397","6","1","2320","","0","Cash","","2022-06-06 07:14:13","2022-06-06 07:14:13");
INSERT INTO payments VALUES("429","spr-20220611-064206","1","","1","","1","380","","0","Cash","Paid by bank cheque","2022-06-11 08:42:06","2022-06-11 08:42:06");
INSERT INTO payments VALUES("430","spr-20220611-064206","1","","4","","1","580","","0","Cash","Paid by bank cheque","2022-06-11 08:42:06","2022-06-11 08:42:06");
INSERT INTO payments VALUES("431","spr-20220611-064207","1","","29","","1","40","","0","Cash","Paid by bank cheque","2022-06-11 08:42:07","2022-06-11 08:42:07");
INSERT INTO payments VALUES("432","spr-20220611-064655","1","","29","","1","92","","0","Cash","","2022-06-11 08:46:55","2022-06-11 08:46:55");
INSERT INTO payments VALUES("433","spr-20220611-064655","1","","37","","1","208","","0","Cash","","2022-06-11 08:46:55","2022-06-11 08:46:55");
INSERT INTO payments VALUES("434","spr-20220611-065042","1","","37","","1","42","","0","Cash","","2022-06-11 08:50:42","2022-06-11 08:50:42");
INSERT INTO payments VALUES("435","spr-20220611-065042","1","","43","","1","440","","0","Cash","","2022-06-11 08:50:42","2022-06-11 08:50:42");
INSERT INTO payments VALUES("436","spr-20220611-065042","1","","104","","1","18","","0","Cash","","2022-06-11 08:50:42","2022-06-11 08:50:42");
INSERT INTO payments VALUES("437","spr-20220611-065205","1","","104","","1","100","","0","Cash","","2022-06-11 08:52:05","2022-06-11 08:52:05");
INSERT INTO payments VALUES("438","spr-20220614-110245","1","","10","6","1","50","","0","Cash","","2022-06-14 01:02:45","2022-06-14 01:02:45");
INSERT INTO payments VALUES("439","spr-20220614-110245","1","","30","6","1","320","","0","Cash","","2022-06-14 01:02:45","2022-06-14 01:02:45");
INSERT INTO payments VALUES("440","spr-20220614-110245","1","","32","6","1","130","","0","Cash","","2022-06-14 01:02:45","2022-06-14 01:02:45");
INSERT INTO payments VALUES("441","spr-20220614-115719","1","","400","6","1","3300","","0","Cash","","2022-06-14 01:57:19","2022-06-14 01:57:19");
INSERT INTO payments VALUES("444","spr-20220614-050144","1","","403","6","1","111","","0","Cash","","2022-06-14 07:01:44","2022-06-14 07:01:44");
INSERT INTO payments VALUES("445","spr-20220615-102330","1","","404","6","1","300","","0","Cash","","2022-06-15 00:23:30","2022-06-15 00:23:30");
INSERT INTO payments VALUES("448","spr-20220809-115444","1","","409","","1","591","","0","Cash","","2022-08-09 01:54:44","2022-08-09 01:54:44");
INSERT INTO payments VALUES("449","spr-20220825-013137","1","","410","6","1","120","","0","Cash","","2022-08-25 03:31:37","2022-08-25 03:31:37");
INSERT INTO payments VALUES("451","spr-20220901-123619","1","","411","6","1","690","","0","Cash","","2022-09-01 02:36:19","2022-09-01 02:36:19");
INSERT INTO payments VALUES("452","spr-20220904-035525","1","","400","6","1","-1100","","0","Cash","payment to customer for returned products.","2022-09-04 05:55:25","2022-09-04 05:55:25");
INSERT INTO payments VALUES("454","spr-20220911-011826","1","","413","","1","1210","","40","Cash","","2022-09-11 03:18:26","2022-09-11 03:18:26");
INSERT INTO payments VALUES("455","spr-20220915-085900","1","","414","6","1","440","","0","Cash","","2022-09-15 10:59:00","2022-09-15 10:59:00");
INSERT INTO payments VALUES("457","spr-20221002-081636","1","","415","6","1","560","","0","Cash","","2022-10-02 10:16:36","2022-10-02 10:16:36");
INSERT INTO payments VALUES("542","spr-20231028-013848","1","","498","7","1","6430","","0","Cash","","2023-10-28 13:38:48","2023-10-28 13:38:48");
INSERT INTO payments VALUES("543","spr-20231028-014022","1","","499","7","1","6090","","0","Cash","","2023-10-28 13:40:22","2023-10-28 13:40:22");
INSERT INTO payments VALUES("544","spr-20240126-023519","1","","554","7","1","970700","","0","Cash","","2024-01-26 14:35:19","2024-01-26 14:35:19");
INSERT INTO payments VALUES("545","spr-20240126-024016","1","","555","7","1","202491.25","","0","Cash","","2024-01-26 14:40:16","2024-01-26 14:40:16");
INSERT INTO payments VALUES("547","spr-20240126-025146","1","","557","7","1","234515","","0","Cash","","2024-01-26 14:51:46","2024-01-26 14:51:46");
INSERT INTO payments VALUES("548","spr-20240126-025456","1","","558","7","1","891225","","0","Cash","","2024-01-26 14:54:56","2024-01-26 14:54:56");
INSERT INTO payments VALUES("549","spr-20240126-025814","1","","559","7","1","993395","","0","Cash","","2024-01-26 14:58:14","2024-01-26 14:58:14");
INSERT INTO payments VALUES("550","spr-20240131-010941","1","","561","7","1","234780.05","","0","Cash","","2024-01-31 13:09:41","2024-01-31 13:09:41");
INSERT INTO payments VALUES("551","spr-20240131-011238","1","","562","7","1","760750","","0","Cash","","2024-01-31 13:12:38","2024-01-31 13:12:38");
INSERT INTO payments VALUES("552","spr-20240131-011515","1","","563","7","1","116394.75","","0","Cash","","2024-01-31 13:15:15","2024-01-31 13:15:15");
INSERT INTO payments VALUES("553","spr-20240131-012042","1","","564","7","1","45577","","0","Cash","","2024-01-31 13:20:42","2024-01-31 13:20:42");
INSERT INTO payments VALUES("554","spr-20240131-012650","1","","565","7","1","1077.39","","0","Cash","","2024-01-31 13:26:50","2024-01-31 13:26:50");
INSERT INTO payments VALUES("555","spr-20240131-014231","1","","566","7","1","104939.65","","0","Cash","","2024-01-31 13:42:31","2024-01-31 13:42:31");
INSERT INTO payments VALUES("556","spr-20240131-015155","1","","567","7","1","925523.44","","0","Cash","","2024-01-31 13:51:55","2024-01-31 13:51:55");
INSERT INTO payments VALUES("557","spr-20240131-021801","1","","568","7","1","29682","","0","Cash","","2024-01-31 14:18:01","2024-01-31 14:18:01");
INSERT INTO payments VALUES("558","spr-20240131-022220","1","","569","7","1","30362","","0","Cash","","2024-01-31 14:22:20","2024-01-31 14:22:20");
INSERT INTO payments VALUES("559","spr-20240131-023336","1","","570","7","1","1354.05","","0","Cash","","2024-01-31 14:33:36","2024-01-31 14:33:36");
INSERT INTO payments VALUES("560","spr-20240131-024936","1","","571","7","1","135768.38","","0","Cash","","2024-01-31 14:49:36","2024-01-31 14:49:36");
INSERT INTO payments VALUES("561","spr-20240131-030003","1","","572","7","1","560266.88","","0","Cash","","2024-01-31 15:00:03","2024-01-31 15:00:03");
INSERT INTO payments VALUES("562","spr-20240131-034608","1","","573","7","1","521921.25","","0","Cash","","2024-01-31 15:46:08","2024-01-31 15:46:08");
INSERT INTO payments VALUES("563","spr-20240131-035432","1","","575","7","1","6694.6","","0","Cash","","2024-01-31 15:54:32","2024-01-31 15:54:32");
INSERT INTO payments VALUES("564","spr-20240131-035842","1","","576","7","1","21471","","0","Cash","","2024-01-31 15:58:42","2024-01-31 15:58:42");
INSERT INTO payments VALUES("565","spr-20240201-020222","1","","578","7","1","8109","","0","Cash","","2024-02-01 14:02:22","2024-02-01 14:02:22");
INSERT INTO payments VALUES("566","spr-20240201-020603","1","","579","7","1","6426","","0","Cash","","2024-02-01 14:06:03","2024-02-01 14:06:03");
INSERT INTO payments VALUES("567","spr-20240206-012023","1","","581","7","1","19278","","0","Cash","","2024-02-06 13:20:23","2024-02-06 13:20:23");
INSERT INTO payments VALUES("568","spr-20240206-014429","1","","583","7","1","7229.25","","0","Cash","","2024-02-06 13:44:29","2024-02-06 13:44:29");
INSERT INTO payments VALUES("569","spr-20240206-024346","1","","586","7","1","28113.75","","0","Cash","","2024-02-06 14:43:46","2024-02-06 14:43:46");
INSERT INTO payments VALUES("570","spr-20240206-025501","1","","587","7","1","485908.89","","0","Cash","","2024-02-06 14:55:01","2024-02-06 14:55:01");
INSERT INTO payments VALUES("571","spr-20240206-030233","1","","588","7","1","1362124.82","","0","Cash","","2024-02-06 15:02:33","2024-02-06 15:02:33");
INSERT INTO payments VALUES("572","spr-20240206-030844","1","","589","7","1","3614.63","","0","Cash","","2024-02-06 15:08:44","2024-02-06 15:08:44");
INSERT INTO payments VALUES("573","spr-20240206-031446","1","","590","7","1","6426","","0","Cash","","2024-02-06 15:14:46","2024-02-06 15:14:46");
INSERT INTO payments VALUES("574","spr-20240206-032034","1","","591","7","1","17482.8","","0","Cash","","2024-02-06 15:20:34","2024-02-06 15:20:34");
INSERT INTO payments VALUES("575","spr-20240206-032843","1","","592","7","1","715906.13","","0","Cash","","2024-02-06 15:28:43","2024-02-06 15:28:43");
INSERT INTO payments VALUES("576","spr-20240206-033623","1","","593","7","1","713526.97","","0","Cash","","2024-02-06 15:36:23","2024-02-06 15:36:23");
INSERT INTO payments VALUES("577","spr-20240206-033802","1","","594","7","1","110867.63","","0","Cash","","2024-02-06 15:38:02","2024-02-06 15:38:02");
INSERT INTO payments VALUES("578","spr-20240210-021112","1","","597","7","1","11500.29","","0","Cash","","2024-02-10 14:11:12","2024-02-10 14:11:12");
INSERT INTO payments VALUES("579","spr-20240210-021520","1","","598","7","1","7003.88","","0","Cash","","2024-02-10 14:15:20","2024-02-10 14:15:20");
INSERT INTO payments VALUES("580","spr-20240210-021823","1","","599","7","1","11495.3","","0","Cash","","2024-02-10 14:18:23","2024-02-10 14:18:23");
INSERT INTO payments VALUES("581","spr-20240210-022137","1","","600","7","1","30121.9","","0","Cash","","2024-02-10 14:21:37","2024-02-10 14:21:37");
INSERT INTO payments VALUES("582","spr-20240210-022629","1","","601","7","1","15725","","0","Cash","","2024-02-10 14:26:29","2024-02-10 14:26:29");
INSERT INTO payments VALUES("583","spr-20240210-023056","1","","602","7","1","3993.29","","0","Cash","","2024-02-10 14:30:56","2024-02-10 14:30:56");
INSERT INTO payments VALUES("584","spr-20240210-024953","1","","603","7","1","19278","","0","Cash","","2024-02-10 14:49:53","2024-02-10 14:49:53");
INSERT INTO payments VALUES("585","spr-20240210-025729","1","","604","7","1","9302.17","","0","Cash","","2024-02-10 14:57:29","2024-02-10 14:57:29");
INSERT INTO payments VALUES("586","spr-20240210-030132","1","","605","7","1","12444","","0","Cash","","2024-02-10 15:01:32","2024-02-10 15:01:32");
INSERT INTO payments VALUES("587","spr-20240210-030803","1","","606","7","1","78603.75","","0","Cash","","2024-02-10 15:08:03","2024-02-10 15:08:03");
INSERT INTO payments VALUES("588","spr-20240210-031343","1","","607","7","1","4578.53","","0","Cash","","2024-02-10 15:13:43","2024-02-10 15:13:43");
INSERT INTO payments VALUES("589","spr-20240210-031736","1","","608","7","1","20974.6","","0","Cash","","2024-02-10 15:17:36","2024-02-10 15:17:36");
INSERT INTO payments VALUES("590","spr-20240210-032450","1","","609","7","1","6426","","0","Cash","","2024-02-10 15:24:50","2024-02-10 15:24:50");
INSERT INTO payments VALUES("591","spr-20240210-032911","1","","610","7","1","15032.23","","0","Cash","","2024-02-10 15:29:11","2024-02-10 15:29:11");
INSERT INTO payments VALUES("592","spr-20240210-033506","1","","611","7","1","784373.63","","0","Cash","","2024-02-10 15:35:06","2024-02-10 15:35:06");
INSERT INTO payments VALUES("593","spr-20240210-033700","1","","612","7","1","184728.38","","0","Cash","","2024-02-10 15:37:00","2024-02-10 15:37:00");
INSERT INTO payments VALUES("594","spr-20240210-034104","1","","613","7","1","1455848.56","","0","Cash","","2024-02-10 15:41:04","2024-02-10 15:41:04");
INSERT INTO payments VALUES("595","spr-20240210-034215","1","","614","7","1","11500.29","","0","Cash","","2024-02-10 15:42:15","2024-02-10 15:42:15");
INSERT INTO payments VALUES("596","spr-20240210-034728","1","","615","7","1","18768","","0","Cash","","2024-02-10 15:47:28","2024-02-10 15:47:28");
INSERT INTO payments VALUES("599","ppr-20240215-022512","1","309","","","1","107000","","0","Cash","THIS AMOUNT IS PAID","2024-02-15 14:25:12","2024-02-15 14:25:12");
INSERT INTO payments VALUES("600","ppr-20240223-100127","1","279","","","1","24025","","0","Cash","PAID","2024-02-23 10:01:27","2024-02-23 10:01:27");
INSERT INTO payments VALUES("601","ppr-20240223-100157","1","281","","","1","63705","","0","Cash","PAID","2024-02-23 10:01:57","2024-02-23 10:01:57");
INSERT INTO payments VALUES("602","ppr-20240223-100230","1","283","","","1","294785","","0","Cash","PAID","2024-02-23 10:02:30","2024-02-23 10:02:30");
INSERT INTO payments VALUES("603","ppr-20240223-100406","1","282","","","1","126125","","0","Cash","PAID","2024-02-23 10:04:06","2024-02-23 10:04:06");
INSERT INTO payments VALUES("604","ppr-20240223-100451","1","274","","","1","146450","","0","Cash","PAID","2024-02-23 10:04:51","2024-02-23 10:04:51");
INSERT INTO payments VALUES("605","ppr-20240223-100523","1","273","","","1","125875","","0","Cash","PAID","2024-02-23 10:05:23","2024-02-23 10:05:23");
INSERT INTO payments VALUES("606","ppr-20240223-100555","1","276","","","1","156240","","0","Cash","PAID","2024-02-23 10:05:55","2024-02-23 10:05:55");
INSERT INTO payments VALUES("607","ppr-20240223-100623","1","278","","","1","61750","","0","Cash","PAID","2024-02-23 10:06:23","2024-02-23 10:06:23");
INSERT INTO payments VALUES("608","ppr-20240223-100707","1","327","","","1","113200","","0","Cash","PAID","2024-02-23 10:07:07","2024-02-23 10:07:07");
INSERT INTO payments VALUES("609","ppr-20240223-100739","1","280","","","1","66650","","0","Cash","PAID","2024-02-23 10:07:39","2024-02-23 10:07:39");
INSERT INTO payments VALUES("610","ppr-20240223-100825","1","326","","","1","151900","","0","Cash","PAID","2024-02-23 10:08:25","2024-02-23 10:08:25");
INSERT INTO payments VALUES("611","ppr-20240223-100858","1","332","","","1","130200","","0","Cash","PAID","2024-02-23 10:08:58","2024-02-23 10:08:58");
INSERT INTO payments VALUES("612","ppr-20240223-100925","1","325","","","1","18360","","0","Cash","PAID","2024-02-23 10:09:25","2024-02-23 10:09:25");
INSERT INTO payments VALUES("613","ppr-20240223-101007","1","277","","","1","154570","","0","Cash","PAID","2024-02-23 10:10:07","2024-02-23 10:10:07");
INSERT INTO payments VALUES("614","ppr-20240223-101035","1","287","","","1","72075","","0","Cash","PAID","2024-02-23 10:10:35","2024-02-23 10:10:35");
INSERT INTO payments VALUES("615","ppr-20240223-101101","1","331","","","1","203700","","0","Cash","PAID","2024-02-23 10:11:01","2024-02-23 10:11:01");
INSERT INTO payments VALUES("616","ppr-20240223-111500","1","284","","","1","153450","","0","Cash","PAID","2024-02-23 11:15:00","2024-02-23 11:15:00");
INSERT INTO payments VALUES("617","ppr-20240223-111532","1","320","","","1","125450","","0","Cash","PAID","2024-02-23 11:15:32","2024-02-23 11:15:32");
INSERT INTO payments VALUES("618","ppr-20240223-111600","1","319","","","1","120000","","0","Cash","PAID","2024-02-23 11:16:00","2024-02-23 11:16:00");
INSERT INTO payments VALUES("619","ppr-20240223-111625","1","330","","","1","168450","","0","Cash","PAID","2024-02-23 11:16:25","2024-02-23 11:16:25");
INSERT INTO payments VALUES("620","ppr-20240223-111700","1","329","","","1","130500","","0","Cash","PAID","2024-02-23 11:17:00","2024-02-23 11:17:00");
INSERT INTO payments VALUES("621","ppr-20240223-111725","1","318","","","1","266640","","0","Cash","PAID","2024-02-23 11:17:25","2024-02-23 11:17:25");
INSERT INTO payments VALUES("622","ppr-20240223-111748","1","324","","","1","111600","","0","Cash","PAID","2024-02-23 11:17:48","2024-02-23 11:17:48");
INSERT INTO payments VALUES("623","ppr-20240223-111836","1","317","","","1","230000","","0","Cash","PAID","2024-02-23 11:18:36","2024-02-23 11:18:36");
INSERT INTO payments VALUES("624","ppr-20240223-112036","1","316","","","1","129220","","0","Cash","PAID","2024-02-23 11:20:36","2024-02-23 11:20:36");
INSERT INTO payments VALUES("625","ppr-20240223-112226","1","328","","","1","20150","","0","Cash","PAID","2024-02-23 11:22:26","2024-02-23 11:22:26");
INSERT INTO payments VALUES("626","ppr-20240223-112416","1","315","","","1","204400","","0","Cash","PAID","2024-02-23 11:24:16","2024-02-23 11:24:16");
INSERT INTO payments VALUES("627","ppr-20240223-112540","1","323","","","1","228960","","0","Cash","PAID","2024-02-23 11:25:40","2024-02-23 11:25:40");
INSERT INTO payments VALUES("628","ppr-20240223-112606","1","322","","","1","125400","","0","Cash","PAID","2024-02-23 11:26:06","2024-02-23 11:26:06");
INSERT INTO payments VALUES("629","ppr-20240223-112723","1","314","","","1","235370","","0","Cash","PAID","2024-02-23 11:27:23","2024-02-23 11:27:23");
INSERT INTO payments VALUES("631","spr-20240512-074704","1","","554","7","1","-51170","","0","Cash","","2024-05-12 19:47:04","2024-05-12 19:47:04");



CREATE TABLE `payments_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO payments_modules VALUES("2","PI","919530.00","cash","OVATION-001","1","2022-01-01 04:46:32","2024-01-03 00:48:26");
INSERT INTO payments_modules VALUES("3","PI","182,242.00","cash","OVATION-0002","1","2022-09-29 05:47:08","2023-12-27 04:47:08");
INSERT INTO payments_modules VALUES("4","PI","211,064.00","cash","OVATION-0003","1","2022-10-14 05:47:30","2023-12-27 04:47:30");
INSERT INTO payments_modules VALUES("5","PI","802,102.00","cash","OVATION-0004","1","2022-10-18 05:47:30","2023-12-27 04:47:50");
INSERT INTO payments_modules VALUES("6","PI","894,056.00","cash","OVATION-0005","1","2022-10-31 05:47:30","2023-12-27 04:48:43");
INSERT INTO payments_modules VALUES("7","PI","104,755.00","cash","OVATION-0006","1","2022-11-01 05:47:30","2023-12-27 04:49:18");
INSERT INTO payments_modules VALUES("8","PI","684,675.00","cash","OVATION-0007","1","2022-11-15 04:49:57","2023-12-27 04:49:57");
INSERT INTO payments_modules VALUES("9","PI","234,778.00","cash","OVATION-0008","1","2022-11-19 04:47:30","2023-12-27 04:50:18");
INSERT INTO payments_modules VALUES("10","PI","925,520.00","cash","OVATION-00012","1","2022-12-01 04:47:30","2023-12-27 04:50:48");
INSERT INTO payments_modules VALUES("11","PI","104939.00","cash","OVATION-00013","1","2021-01-07 04:47:30","2024-01-03 00:48:13");
INSERT INTO payments_modules VALUES("12","PI","521,921.00","cash","OVATION-00014","1","2023-01-15 04:47:30","2023-12-27 04:51:31");
INSERT INTO payments_modules VALUES("13","PI","560,267.00","cash","OVATION-00015","1","2023-02-27 04:51:52","2023-12-27 04:51:52");
INSERT INTO payments_modules VALUES("14","PI","135,768.00","cash","OVATION-00016","1","2023-02-17 04:52:10","2023-12-27 04:52:10");
INSERT INTO payments_modules VALUES("15","PI","1,400,658.00","cash","OVATION-00017","1","2023-03-17 05:52:32","2023-12-27 04:52:32");
INSERT INTO payments_modules VALUES("16","PI","182,242.00","cash","OVATION-00018","1","2023-12-27 04:52:52","2023-12-28 02:19:45");
INSERT INTO payments_modules VALUES("17","PI","677,063.00","cash","OVATION-00019","1","2023-12-27 04:53:18","2023-12-27 04:53:18");
INSERT INTO payments_modules VALUES("18","PI","1,364,745.00","cash","OVATION-00020","1","2023-12-27 04:53:36","2023-12-27 04:54:02");
INSERT INTO payments_modules VALUES("19","PI","485,909.00","cash","OVATION-00021","1","2023-12-27 04:54:23","2023-12-27 04:54:23");
INSERT INTO payments_modules VALUES("20","PI","715,906.00","cash","OVATION-ZB-021","1","2023-12-27 04:54:53","2023-12-27 04:54:53");
INSERT INTO payments_modules VALUES("21","PI","713,527.00","cash","OVATION-00023","1","2023-12-27 04:55:15","2023-12-27 04:55:15");
INSERT INTO payments_modules VALUES("22","PI","110,868.00","cash","OVATION-00024","1","2023-12-27 04:55:34","2023-12-27 04:55:34");
INSERT INTO payments_modules VALUES("23","PI","78,604.00","cash","OVATION-00025","1","2023-12-27 04:55:51","2023-12-27 04:55:51");
INSERT INTO payments_modules VALUES("24","PI","1,455,849.00","cash","OVATION-00026","1","2023-12-27 04:56:13","2023-12-27 04:56:13");
INSERT INTO payments_modules VALUES("25","PI","184,728.00","cash","OVATION-00027","1","2023-12-27 04:56:33","2023-12-27 04:56:33");
INSERT INTO payments_modules VALUES("26","PI","1,035,772.00","cash","OVATION-00029","1","2023-12-27 04:56:57","2023-12-27 04:56:57");
INSERT INTO payments_modules VALUES("27","PI","784,374.00","cash","OVATION-00028","1","2023-12-27 04:57:16","2023-12-27 04:57:16");
INSERT INTO payments_modules VALUES("28","PI","1,830,044.00","cash","OVATION-00030","1","2023-12-27 04:58:55","2023-12-27 04:58:55");
INSERT INTO payments_modules VALUES("29","PI","114,368.00","cash","OVATION-141023","1","2023-12-27 04:59:18","2023-12-27 04:59:18");
INSERT INTO payments_modules VALUES("30","PI","1,787,832.00","cash","OVATION-021123","1","2023-12-27 04:59:48","2023-12-27 04:59:48");
INSERT INTO payments_modules VALUES("31","PI","1,616,487.00","cash","OVATION-022946","1","2023-12-27 05:00:08","2023-12-27 05:00:08");
INSERT INTO payments_modules VALUES("32","PI","934352.00","cash","OVATION-030811","1","2024-01-14 10:59:12","2024-01-14 10:59:12");



CREATE TABLE `payrolls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payrolls VALUES("8","payroll-20190101-055231","1","1","1","100","0","","2018-12-31 18:52:31","2018-12-31 18:52:31");
INSERT INTO payrolls VALUES("9","payroll-20191204-113802","1","1","1","10000","0","","2019-12-04 12:38:02","2019-12-04 12:38:02");
INSERT INTO payrolls VALUES("10","payroll-20210619-123706","1","1","1","200","0","","2021-06-19 02:37:06","2021-06-19 02:37:06");



CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissions VALUES("4","products-edit","web","2018-06-02 21:00:09","2018-06-02 21:00:09");
INSERT INTO permissions VALUES("5","products-delete","web","2018-06-03 18:54:22","2018-06-03 18:54:22");
INSERT INTO permissions VALUES("6","products-add","web","2018-06-03 20:34:14","2018-06-03 20:34:14");
INSERT INTO permissions VALUES("7","products-index","web","2018-06-03 23:34:27","2018-06-03 23:34:27");
INSERT INTO permissions VALUES("8","purchases-index","web","2018-06-04 04:03:19","2018-06-04 04:03:19");
INSERT INTO permissions VALUES("9","purchases-add","web","2018-06-04 04:12:25","2018-06-04 04:12:25");
INSERT INTO permissions VALUES("10","purchases-edit","web","2018-06-04 05:47:36","2018-06-04 05:47:36");
INSERT INTO permissions VALUES("11","purchases-delete","web","2018-06-04 05:47:36","2018-06-04 05:47:36");
INSERT INTO permissions VALUES("12","sales-index","web","2018-06-04 06:49:08","2018-06-04 06:49:08");
INSERT INTO permissions VALUES("13","sales-add","web","2018-06-04 06:49:52","2018-06-04 06:49:52");
INSERT INTO permissions VALUES("14","sales-edit","web","2018-06-04 06:49:52","2018-06-04 06:49:52");
INSERT INTO permissions VALUES("15","sales-delete","web","2018-06-04 06:49:53","2018-06-04 06:49:53");
INSERT INTO permissions VALUES("16","quotes-index","web","2018-06-04 18:05:10","2018-06-04 18:05:10");
INSERT INTO permissions VALUES("17","quotes-add","web","2018-06-04 18:05:10","2018-06-04 18:05:10");
INSERT INTO permissions VALUES("18","quotes-edit","web","2018-06-04 18:05:10","2018-06-04 18:05:10");
INSERT INTO permissions VALUES("19","quotes-delete","web","2018-06-04 18:05:10","2018-06-04 18:05:10");
INSERT INTO permissions VALUES("20","transfers-index","web","2018-06-04 18:30:03","2018-06-04 18:30:03");
INSERT INTO permissions VALUES("21","transfers-add","web","2018-06-04 18:30:03","2018-06-04 18:30:03");
INSERT INTO permissions VALUES("22","transfers-edit","web","2018-06-04 18:30:03","2018-06-04 18:30:03");
INSERT INTO permissions VALUES("23","transfers-delete","web","2018-06-04 18:30:03","2018-06-04 18:30:03");
INSERT INTO permissions VALUES("24","returns-index","web","2018-06-04 18:50:24","2018-06-04 18:50:24");
INSERT INTO permissions VALUES("25","returns-add","web","2018-06-04 18:50:24","2018-06-04 18:50:24");
INSERT INTO permissions VALUES("26","returns-edit","web","2018-06-04 18:50:25","2018-06-04 18:50:25");
INSERT INTO permissions VALUES("27","returns-delete","web","2018-06-04 18:50:25","2018-06-04 18:50:25");
INSERT INTO permissions VALUES("28","customers-index","web","2018-06-04 19:15:54","2018-06-04 19:15:54");
INSERT INTO permissions VALUES("29","customers-add","web","2018-06-04 19:15:55","2018-06-04 19:15:55");
INSERT INTO permissions VALUES("30","customers-edit","web","2018-06-04 19:15:55","2018-06-04 19:15:55");
INSERT INTO permissions VALUES("31","customers-delete","web","2018-06-04 19:15:55","2018-06-04 19:15:55");
INSERT INTO permissions VALUES("32","suppliers-index","web","2018-06-04 19:40:12","2018-06-04 19:40:12");
INSERT INTO permissions VALUES("33","suppliers-add","web","2018-06-04 19:40:12","2018-06-04 19:40:12");
INSERT INTO permissions VALUES("34","suppliers-edit","web","2018-06-04 19:40:12","2018-06-04 19:40:12");
INSERT INTO permissions VALUES("35","suppliers-delete","web","2018-06-04 19:40:12","2018-06-04 19:40:12");
INSERT INTO permissions VALUES("36","product-report","web","2018-06-24 19:05:33","2018-06-24 19:05:33");
INSERT INTO permissions VALUES("37","purchase-report","web","2018-06-24 19:24:56","2018-06-24 19:24:56");
INSERT INTO permissions VALUES("38","sale-report","web","2018-06-24 19:33:13","2018-06-24 19:33:13");
INSERT INTO permissions VALUES("39","customer-report","web","2018-06-24 19:36:51","2018-06-24 19:36:51");
INSERT INTO permissions VALUES("40","due-report","web","2018-06-24 19:39:52","2018-06-24 19:39:52");
INSERT INTO permissions VALUES("41","users-index","web","2018-06-24 20:00:10","2018-06-24 20:00:10");
INSERT INTO permissions VALUES("42","users-add","web","2018-06-24 20:00:10","2018-06-24 20:00:10");
INSERT INTO permissions VALUES("43","users-edit","web","2018-06-24 20:01:30","2018-06-24 20:01:30");
INSERT INTO permissions VALUES("44","users-delete","web","2018-06-24 20:01:30","2018-06-24 20:01:30");
INSERT INTO permissions VALUES("45","profit-loss","web","2018-07-14 17:50:05","2018-07-14 17:50:05");
INSERT INTO permissions VALUES("46","best-seller","web","2018-07-14 18:01:38","2018-07-14 18:01:38");
INSERT INTO permissions VALUES("47","daily-sale","web","2018-07-14 18:24:21","2018-07-14 18:24:21");
INSERT INTO permissions VALUES("48","monthly-sale","web","2018-07-14 18:30:41","2018-07-14 18:30:41");
INSERT INTO permissions VALUES("49","daily-purchase","web","2018-07-14 18:36:46","2018-07-14 18:36:46");
INSERT INTO permissions VALUES("50","monthly-purchase","web","2018-07-14 18:48:17","2018-07-14 18:48:17");
INSERT INTO permissions VALUES("51","payment-report","web","2018-07-14 19:10:41","2018-07-14 19:10:41");
INSERT INTO permissions VALUES("52","warehouse-stock-report","web","2018-07-14 19:16:55","2018-07-14 19:16:55");
INSERT INTO permissions VALUES("53","product-qty-alert","web","2018-07-14 19:33:21","2018-07-14 19:33:21");
INSERT INTO permissions VALUES("54","supplier-report","web","2018-07-29 23:00:01","2018-07-29 23:00:01");
INSERT INTO permissions VALUES("55","expenses-index","web","2018-09-04 21:07:10","2018-09-04 21:07:10");
INSERT INTO permissions VALUES("56","expenses-add","web","2018-09-04 21:07:10","2018-09-04 21:07:10");
INSERT INTO permissions VALUES("57","expenses-edit","web","2018-09-04 21:07:10","2018-09-04 21:07:10");
INSERT INTO permissions VALUES("58","expenses-delete","web","2018-09-04 21:07:11","2018-09-04 21:07:11");
INSERT INTO permissions VALUES("59","general_setting","web","2018-10-19 19:10:04","2018-10-19 19:10:04");
INSERT INTO permissions VALUES("60","mail_setting","web","2018-10-19 19:10:04","2018-10-19 19:10:04");
INSERT INTO permissions VALUES("61","pos_setting","web","2018-10-19 19:10:04","2018-10-19 19:10:04");
INSERT INTO permissions VALUES("62","hrm_setting","web","2019-01-02 05:30:23","2019-01-02 05:30:23");
INSERT INTO permissions VALUES("63","purchase-return-index","web","2019-01-02 16:45:14","2019-01-02 16:45:14");
INSERT INTO permissions VALUES("64","purchase-return-add","web","2019-01-02 16:45:14","2019-01-02 16:45:14");
INSERT INTO permissions VALUES("65","purchase-return-edit","web","2019-01-02 16:45:14","2019-01-02 16:45:14");
INSERT INTO permissions VALUES("66","purchase-return-delete","web","2019-01-02 16:45:14","2019-01-02 16:45:14");
INSERT INTO permissions VALUES("67","account-index","web","2019-01-02 17:06:13","2019-01-02 17:06:13");
INSERT INTO permissions VALUES("68","balance-sheet","web","2019-01-02 17:06:14","2019-01-02 17:06:14");
INSERT INTO permissions VALUES("69","account-statement","web","2019-01-02 17:06:14","2019-01-02 17:06:14");
INSERT INTO permissions VALUES("70","department","web","2019-01-02 17:30:01","2019-01-02 17:30:01");
INSERT INTO permissions VALUES("71","attendance","web","2019-01-02 17:30:01","2019-01-02 17:30:01");
INSERT INTO permissions VALUES("72","payroll","web","2019-01-02 17:30:01","2019-01-02 17:30:01");
INSERT INTO permissions VALUES("73","employees-index","web","2019-01-02 17:52:19","2019-01-02 17:52:19");
INSERT INTO permissions VALUES("74","employees-add","web","2019-01-02 17:52:19","2019-01-02 17:52:19");
INSERT INTO permissions VALUES("75","employees-edit","web","2019-01-02 17:52:19","2019-01-02 17:52:19");
INSERT INTO permissions VALUES("76","employees-delete","web","2019-01-02 17:52:19","2019-01-02 17:52:19");
INSERT INTO permissions VALUES("77","user-report","web","2019-01-16 01:48:18","2019-01-16 01:48:18");
INSERT INTO permissions VALUES("78","stock_count","web","2019-02-17 05:32:01","2019-02-17 05:32:01");
INSERT INTO permissions VALUES("79","adjustment","web","2019-02-17 05:32:02","2019-02-17 05:32:02");
INSERT INTO permissions VALUES("80","sms_setting","web","2019-02-22 00:18:03","2019-02-22 00:18:03");
INSERT INTO permissions VALUES("81","create_sms","web","2019-02-22 00:18:03","2019-02-22 00:18:03");
INSERT INTO permissions VALUES("82","print_barcode","web","2019-03-07 00:02:19","2019-03-07 00:02:19");
INSERT INTO permissions VALUES("83","empty_database","web","2019-03-07 00:02:19","2019-03-07 00:02:19");
INSERT INTO permissions VALUES("84","customer_group","web","2019-03-07 00:37:15","2019-03-07 00:37:15");
INSERT INTO permissions VALUES("85","unit","web","2019-03-07 00:37:15","2019-03-07 00:37:15");
INSERT INTO permissions VALUES("86","tax","web","2019-03-07 00:37:15","2019-03-07 00:37:15");
INSERT INTO permissions VALUES("87","gift_card","web","2019-03-07 01:29:38","2019-03-07 01:29:38");
INSERT INTO permissions VALUES("88","coupon","web","2019-03-07 01:29:38","2019-03-07 01:29:38");
INSERT INTO permissions VALUES("89","holiday","web","2019-10-19 04:57:15","2019-10-19 04:57:15");
INSERT INTO permissions VALUES("90","warehouse-report","web","2019-10-22 02:00:23","2019-10-22 02:00:23");
INSERT INTO permissions VALUES("91","warehouse","web","2020-02-26 01:47:32","2020-02-26 01:47:32");
INSERT INTO permissions VALUES("92","brand","web","2020-02-26 01:59:59","2020-02-26 01:59:59");
INSERT INTO permissions VALUES("93","billers-index","web","2020-02-26 02:11:15","2020-02-26 02:11:15");
INSERT INTO permissions VALUES("94","billers-add","web","2020-02-26 02:11:15","2020-02-26 02:11:15");
INSERT INTO permissions VALUES("95","billers-edit","web","2020-02-26 02:11:15","2020-02-26 02:11:15");
INSERT INTO permissions VALUES("96","billers-delete","web","2020-02-26 02:11:15","2020-02-26 02:11:15");
INSERT INTO permissions VALUES("97","money-transfer","web","2020-03-02 00:41:48","2020-03-02 00:41:48");
INSERT INTO permissions VALUES("98","category","web","2020-07-13 08:13:16","2020-07-13 08:13:16");
INSERT INTO permissions VALUES("99","delivery","web","2020-07-13 08:13:16","2020-07-13 08:13:16");
INSERT INTO permissions VALUES("100","send_notification","web","2020-10-31 02:21:31","2020-10-31 02:21:31");
INSERT INTO permissions VALUES("101","today_sale","web","2020-10-31 02:57:04","2020-10-31 02:57:04");
INSERT INTO permissions VALUES("102","today_profit","web","2020-10-31 02:57:04","2020-10-31 02:57:04");
INSERT INTO permissions VALUES("103","currency","web","2020-11-08 19:23:11","2020-11-08 19:23:11");
INSERT INTO permissions VALUES("104","backup_database","web","2020-11-14 19:16:55","2020-11-14 19:16:55");
INSERT INTO permissions VALUES("105","reward_point_setting","web","2021-06-27 00:34:42","2021-06-27 00:34:42");
INSERT INTO permissions VALUES("106","revenue_profit_summary","web","2022-02-08 08:57:21","2022-02-08 08:57:21");
INSERT INTO permissions VALUES("107","cash_flow","web","2022-02-08 08:57:22","2022-02-08 08:57:22");
INSERT INTO permissions VALUES("108","monthly_summary","web","2022-02-08 08:57:22","2022-02-08 08:57:22");
INSERT INTO permissions VALUES("109","yearly_report","web","2022-02-08 08:57:22","2022-02-08 08:57:22");
INSERT INTO permissions VALUES("110","discount_plan","web","2022-02-16 04:12:26","2022-02-16 04:12:26");
INSERT INTO permissions VALUES("111","discount","web","2022-02-16 04:12:38","2022-02-16 04:12:38");
INSERT INTO permissions VALUES("112","product-expiry-report","web","2022-03-30 01:39:20","2022-03-30 01:39:20");
INSERT INTO permissions VALUES("113","purchase-payment-index","web","2022-06-05 10:12:27","2022-06-05 10:12:27");
INSERT INTO permissions VALUES("114","purchase-payment-add","web","2022-06-05 10:12:28","2022-06-05 10:12:28");
INSERT INTO permissions VALUES("115","purchase-payment-edit","web","2022-06-05 10:12:28","2022-06-05 10:12:28");
INSERT INTO permissions VALUES("116","purchase-payment-delete","web","2022-06-05 10:12:28","2022-06-05 10:12:28");
INSERT INTO permissions VALUES("117","sale-payment-index","web","2022-06-05 10:12:28","2022-06-05 10:12:28");
INSERT INTO permissions VALUES("118","sale-payment-add","web","2022-06-05 10:12:28","2022-06-05 10:12:28");
INSERT INTO permissions VALUES("119","sale-payment-edit","web","2022-06-05 10:12:28","2022-06-05 10:12:28");
INSERT INTO permissions VALUES("120","sale-payment-delete","web","2022-06-05 10:12:28","2022-06-05 10:12:28");
INSERT INTO permissions VALUES("121","all_notification","web","2022-06-05 10:12:29","2022-06-05 10:12:29");
INSERT INTO permissions VALUES("122","sale-report-chart","web","2022-06-05 10:12:29","2022-06-05 10:12:29");
INSERT INTO permissions VALUES("123","dso-report","web","2022-06-05 10:12:29","2022-06-05 10:12:29");
INSERT INTO permissions VALUES("124","product_history","web","2022-08-25 10:04:05","2022-08-25 10:04:05");
INSERT INTO permissions VALUES("125","supplier-due-report","web","2022-08-31 05:46:33","2022-08-31 05:46:33");
INSERT INTO permissions VALUES("126","custom_field","web","2023-05-02 03:41:35","2023-05-02 03:41:35");
INSERT INTO permissions VALUES("127","ledger-report","web","2024-01-04 18:32:24","2024-01-04 18:32:24");



CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `is_table` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_public_key` varchar(191) DEFAULT NULL,
  `stripe_secret_key` varchar(191) DEFAULT NULL,
  `paypal_live_api_username` varchar(191) DEFAULT NULL,
  `paypal_live_api_password` varchar(191) DEFAULT NULL,
  `paypal_live_api_secret` varchar(191) DEFAULT NULL,
  `payment_options` text DEFAULT NULL,
  `invoice_option` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `pos_setting_id_unique` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO pos_setting VALUES("1","11","2","1","3","0","0","","","admin","admin","","cash,card,cheque,gift_card,deposit,paypal","A4","2018-09-01 23:17:04","2023-09-18 08:14:18");



CREATE TABLE `product_adjustments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_adjustments VALUES("16","13","5","","3","-","2023-04-01 11:30:50","2023-04-01 11:30:50");
INSERT INTO product_adjustments VALUES("17","14","98","","500","+","2024-02-01 13:35:53","2024-02-06 13:05:37");
INSERT INTO product_adjustments VALUES("19","16","97","","200","+","2024-03-04 11:09:28","2024-03-04 11:09:28");
INSERT INTO product_adjustments VALUES("20","17","111","","2000","+","2024-04-05 16:54:24","2024-05-07 07:10:09");
INSERT INTO product_adjustments VALUES("23","20","99","","1000","+","2024-06-04 16:51:13","2024-06-04 16:51:13");
INSERT INTO product_adjustments VALUES("24","21","99","","1000","+","2024-06-04 16:55:57","2024-06-04 16:55:57");



CREATE TABLE `product_batches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_batches VALUES("1","71","1001","2023-05-31","-16","2021-03-07 03:14:05","2023-10-18 12:40:12");
INSERT INTO product_batches VALUES("2","71","1002","2023-05-31","1","2021-03-07 03:55:06","2023-10-18 12:40:12");
INSERT INTO product_batches VALUES("3","71","1003","2023-09-30","-2","2021-03-09 04:42:13","2023-10-18 12:40:11");
INSERT INTO product_batches VALUES("4","22","10001","2021-11-30","0","2021-10-20 03:47:09","2023-10-18 12:40:09");
INSERT INTO product_batches VALUES("5","95","CM-500","2025-06-20","-245","2024-02-15 13:12:27","2024-06-04 17:06:45");
INSERT INTO product_batches VALUES("6","98","IM-007","2025-04-25","561","2024-02-15 13:17:00","2024-05-07 07:17:28");
INSERT INTO product_batches VALUES("7","100","PG-224","2025-04-25","1986","2024-02-15 13:17:00","2024-02-15 13:17:00");
INSERT INTO product_batches VALUES("8","98","IM-010","2026-01-28","212","2024-02-15 13:21:21","2024-05-12 14:56:16");
INSERT INTO product_batches VALUES("9","100","PG-235","2026-01-27","1395","2024-02-15 13:21:21","2024-02-15 13:27:24");
INSERT INTO product_batches VALUES("10","95","CM-502","2025-10-25","668","2024-02-15 13:27:24","2024-02-15 13:27:24");
INSERT INTO product_batches VALUES("11","100","PG-234","2025-10-27","1956","2024-02-15 13:29:16","2024-02-15 13:31:58");
INSERT INTO product_batches VALUES("12","95","CR-335","2025-10-27","310","2024-02-15 13:31:58","2024-02-15 13:31:58");
INSERT INTO product_batches VALUES("13","100","PG-225","2025-05-28","1000","2024-02-15 13:33:26","2024-02-15 13:33:26");
INSERT INTO product_batches VALUES("14","96","FU-334","2025-09-25","-66","2024-02-15 13:37:35","2024-06-04 17:06:45");
INSERT INTO product_batches VALUES("15","100","PG-233","2025-09-25","2018","2024-02-15 13:37:35","2024-02-15 13:37:35");
INSERT INTO product_batches VALUES("16","99","IH-122","2025-09-25","-728","2024-02-15 13:37:35","2024-05-28 13:04:11");
INSERT INTO product_batches VALUES("17","100","PG-231","2025-08-25","877","2024-02-15 13:40:32","2024-02-15 13:40:32");
INSERT INTO product_batches VALUES("18","100","PG-232","2025-08-25","1045","2024-02-15 13:42:00","2024-02-15 13:42:00");
INSERT INTO product_batches VALUES("19","96","FU-033","2025-12-05","1993","2024-02-15 13:45:39","2024-02-17 09:50:40");
INSERT INTO product_batches VALUES("20","100","PG-022","2024-11-05","2825","2024-02-15 13:45:39","2024-02-17 09:52:30");
INSERT INTO product_batches VALUES("21","99","IH-011","2025-02-25","994","2024-02-15 13:47:20","2024-02-15 13:47:20");
INSERT INTO product_batches VALUES("22","96","FU-333","2025-05-28","1000","2024-02-15 13:55:51","2024-02-15 13:55:51");
INSERT INTO product_batches VALUES("23","99","IH-111","2025-05-28","1000","2024-02-15 13:55:51","2024-02-15 13:55:51");
INSERT INTO product_batches VALUES("24","100","PG-222","2025-02-01","2800","2024-02-15 13:59:42","2024-02-17 09:44:41");
INSERT INTO product_batches VALUES("25","100","PG-230","2025-06-28","1908","2024-02-15 14:03:33","2024-02-15 14:03:33");
INSERT INTO product_batches VALUES("26","95","CM-044","2024-11-25","930","2024-02-15 14:04:34","2024-02-15 14:04:34");
INSERT INTO product_batches VALUES("27","100","PG-002","2024-08-25","653","2024-02-16 14:50:06","2024-02-16 14:58:12");
INSERT INTO product_batches VALUES("28","100","PGL-2004","2024-09-25","620","2024-02-16 14:53:14","2024-02-16 14:53:14");
INSERT INTO product_batches VALUES("29","99","IHE-2005","2024-09-25","310","2024-02-16 14:53:14","2024-02-16 14:53:14");
INSERT INTO product_batches VALUES("30","95","CNM-2003","2024-09-25","310","2024-02-16 14:53:14","2024-02-16 14:53:14");
INSERT INTO product_batches VALUES("31","98","INF-003","2024-08-25","400","2024-02-16 14:58:12","2024-02-16 14:58:12");
INSERT INTO product_batches VALUES("32","96","FU-003","2024-08-25","300","2024-02-16 14:58:12","2024-02-16 14:58:12");
INSERT INTO product_batches VALUES("33","95","CM-004","2024-08-25","100","2024-02-16 14:58:12","2024-02-16 14:58:12");
INSERT INTO product_batches VALUES("34","95","CM-444","2025-02-01","465","2024-02-17 09:44:41","2024-02-17 09:44:41");
INSERT INTO product_batches VALUES("35","108","PG-236","2026-01-10","-1410","2024-03-04 11:36:40","2024-03-04 11:57:16");
INSERT INTO product_batches VALUES("36","109","HP-006","2026-01-10","-110","2024-03-04 11:37:47","2024-03-04 11:57:16");
INSERT INTO product_batches VALUES("37","112","HP-006","2026-01-10","-281","2024-03-04 12:20:18","2024-04-15 18:50:46");
INSERT INTO product_batches VALUES("38","111","PG-236","2026-01-10","-6655","2024-03-04 12:22:34","2024-06-04 17:06:45");
INSERT INTO product_batches VALUES("39","99","IH-112","2025-09-10","202","2024-06-03 18:25:23","2024-06-04 17:06:45");



CREATE TABLE `product_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=682 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_purchases VALUES("566","266","96","","","","1007","1007","1","120","0","0","0","120840","2023-10-31 02:54:46","2023-10-31 02:54:46");
INSERT INTO product_purchases VALUES("573","273","96","","","","1007","1007","1","125","0","0","0","125875","2023-10-31 14:56:49","2023-10-31 14:56:49");
INSERT INTO product_purchases VALUES("574","274","100","","","","1010","1010","1","145","0","0","0","146450","2023-10-31 14:57:27","2023-10-31 14:57:27");
INSERT INTO product_purchases VALUES("576","276","95","","","","1008","1008","1","155","0","0","0","156240","2023-10-31 14:58:23","2023-10-31 14:58:23");
INSERT INTO product_purchases VALUES("577","277","100","","","","1066","1066","1","145","0","0","0","154570","2023-10-31 14:59:04","2023-10-31 14:59:04");
INSERT INTO product_purchases VALUES("578","278","98","","","","950","950","1","65","0","0","0","61750","2023-10-31 14:59:47","2023-10-31 14:59:47");
INSERT INTO product_purchases VALUES("580","280","99","","","","430","430","1","155","0","0","0","66650","2023-10-31 15:00:53","2023-10-31 15:00:53");
INSERT INTO product_purchases VALUES("581","281","99","","","","411","411","1","155","0","0","0","63705","2023-10-31 15:01:26","2023-10-31 15:01:26");
INSERT INTO product_purchases VALUES("582","282","96","","","","1009","1009","1","125","0","0","0","126125","2023-10-31 15:03:41","2023-10-31 15:03:41");
INSERT INTO product_purchases VALUES("583","283","100","","","","2033","2033","1","145","0","0","0","294785","2023-10-31 15:04:17","2023-10-31 15:04:17");
INSERT INTO product_purchases VALUES("584","284","95","","","","990","990","1","155","0","0","0","153450","2023-10-31 15:04:44","2023-10-31 15:04:44");
INSERT INTO product_purchases VALUES("587","287","95","","","","465","465","1","155","0","0","0","72075","2023-10-31 15:06:31","2023-10-31 15:06:31");
INSERT INTO product_purchases VALUES("633","320","95","5","","","965","965","1","130","0","0","0","125450","2024-02-15 13:12:27","2024-02-15 13:12:27");
INSERT INTO product_purchases VALUES("634","318","98","6","","","885","885","1","32","0","0","0","28320","2024-02-15 13:17:00","2024-02-15 13:17:00");
INSERT INTO product_purchases VALUES("635","318","100","7","","","1986","1986","1","120","0","0","0","238320","2024-02-15 13:17:00","2024-02-15 13:17:00");
INSERT INTO product_purchases VALUES("636","309","98","8","","","500","500","1","28","0","0","0","14000","2024-02-15 13:21:21","2024-02-15 13:21:21");
INSERT INTO product_purchases VALUES("637","309","100","9","","","775","775","1","120","0","0","0","93000","2024-02-15 13:21:21","2024-02-15 13:21:21");
INSERT INTO product_purchases VALUES("638","310","95","10","","","668","668","1","130","0","0","0","86840","2024-02-15 13:27:24","2024-02-15 13:27:24");
INSERT INTO product_purchases VALUES("639","310","100","9","","","620","620","1","120","0","0","0","74400","2024-02-15 13:27:24","2024-02-15 13:27:24");
INSERT INTO product_purchases VALUES("640","321","100","11","","","277","277","1","120","0","0","0","33240","2024-02-15 13:29:16","2024-02-15 13:29:16");
INSERT INTO product_purchases VALUES("641","311","95","12","","","310","310","1","130","0","0","0","40300","2024-02-15 13:31:58","2024-02-15 13:31:58");
INSERT INTO product_purchases VALUES("642","311","100","11","","","1679","1679","1","120","0","0","0","201480","2024-02-15 13:31:58","2024-02-15 13:31:58");
INSERT INTO product_purchases VALUES("643","312","100","13","","","1000","1000","1","120","0","0","0","120000","2024-02-15 13:33:26","2024-02-15 13:33:26");
INSERT INTO product_purchases VALUES("644","313","96","14","","","1050","1050","1","100","0","0","0","105000","2024-02-15 13:37:35","2024-02-15 13:37:35");
INSERT INTO product_purchases VALUES("645","313","100","15","","","2018","2018","1","120","0","0","0","242160","2024-02-15 13:37:35","2024-02-15 13:37:35");
INSERT INTO product_purchases VALUES("646","313","99","16","","","1012","1012","1","130","0","0","0","131560","2024-02-15 13:37:35","2024-02-15 13:37:35");
INSERT INTO product_purchases VALUES("647","314","100","17","","","877","877","1","120","0","0","0","105240","2024-02-15 13:40:32","2024-02-15 13:40:32");
INSERT INTO product_purchases VALUES("648","314","95","5","","","1001","1001","1","130","0","0","0","130130","2024-02-15 13:40:32","2024-02-15 13:40:32");
INSERT INTO product_purchases VALUES("649","322","100","18","","","1045","1045","1","120","0","0","0","125400","2024-02-15 13:42:00","2024-02-15 13:42:00");
INSERT INTO product_purchases VALUES("650","315","96","19","","","1000","1000","1","100","0","0","0","100000","2024-02-15 13:45:39","2024-02-15 13:45:39");
INSERT INTO product_purchases VALUES("651","315","100","20","","","870","870","1","120","0","0","0","104400","2024-02-15 13:45:39","2024-02-15 13:45:39");
INSERT INTO product_purchases VALUES("652","316","99","21","","","994","994","1","130","0","0","0","129220","2024-02-15 13:47:20","2024-02-15 13:47:20");
INSERT INTO product_purchases VALUES("653","317","96","22","","","1000","1000","1","100","0","0","0","100000","2024-02-15 13:55:51","2024-02-15 13:55:51");
INSERT INTO product_purchases VALUES("654","317","99","23","","","1000","1000","1","130","0","0","0","130000","2024-02-15 13:55:51","2024-02-15 13:55:51");
INSERT INTO product_purchases VALUES("655","319","100","24","","","1000","1000","1","120","0","0","0","120000","2024-02-15 13:59:42","2024-02-15 13:59:42");
INSERT INTO product_purchases VALUES("656","323","100","25","","","1908","1908","1","120","0","0","0","228960","2024-02-15 14:03:33","2024-02-15 14:03:33");
INSERT INTO product_purchases VALUES("657","324","95","26","","","930","930","1","120","0","0","0","111600","2024-02-15 14:04:34","2024-02-15 14:04:34");
INSERT INTO product_purchases VALUES("658","325","100","27","","","153","153","1","120","0","0","0","18360","2024-02-16 14:50:06","2024-02-16 14:50:06");
INSERT INTO product_purchases VALUES("659","326","100","28","","","620","620","1","120","0","0","0","74400","2024-02-16 14:53:14","2024-02-16 14:53:14");
INSERT INTO product_purchases VALUES("660","326","99","29","","","310","310","1","130","0","0","0","40300","2024-02-16 14:53:14","2024-02-16 14:53:14");
INSERT INTO product_purchases VALUES("661","326","95","30","","","310","310","1","120","0","0","0","37200","2024-02-16 14:53:14","2024-02-16 14:53:14");
INSERT INTO product_purchases VALUES("662","327","98","31","","","400","400","1","28","0","0","0","11200","2024-02-16 14:58:12","2024-02-16 14:58:12");
INSERT INTO product_purchases VALUES("663","327","96","32","","","300","300","1","100","0","0","0","30000","2024-02-16 14:58:12","2024-02-16 14:58:12");
INSERT INTO product_purchases VALUES("664","327","100","27","","","500","500","1","120","0","0","0","60000","2024-02-16 14:58:12","2024-02-16 14:58:12");
INSERT INTO product_purchases VALUES("665","327","95","33","","","100","100","1","120","0","0","0","12000","2024-02-16 14:58:12","2024-02-16 14:58:12");
INSERT INTO product_purchases VALUES("666","328","95","5","","","155","155","1","130","0","0","0","20150","2024-02-17 09:35:21","2024-02-17 09:35:21");
INSERT INTO product_purchases VALUES("667","329","100","24","","","900","900","1","145","0","0","0","130500","2024-02-17 09:42:21","2024-02-17 09:42:21");
INSERT INTO product_purchases VALUES("668","330","95","34","","","465","465","1","130","0","0","0","60450","2024-02-17 09:44:41","2024-02-17 09:44:41");
INSERT INTO product_purchases VALUES("669","330","100","24","","","900","900","1","120","0","0","0","108000","2024-02-17 09:44:41","2024-02-17 09:44:41");
INSERT INTO product_purchases VALUES("670","331","96","19","","","993","993","1","100","0","0","0","99300","2024-02-17 09:50:40","2024-02-17 09:50:40");
INSERT INTO product_purchases VALUES("671","331","100","20","","","870","870","1","120","0","0","0","104400","2024-02-17 09:50:40","2024-02-17 09:50:40");
INSERT INTO product_purchases VALUES("672","332","100","20","","","1085","1085","1","120","0","0","0","130200","2024-02-17 09:52:30","2024-02-17 09:52:30");
INSERT INTO product_purchases VALUES("674","279","99","","","","155","155","1","155","0","0","0","24025","2024-02-23 09:59:04","2024-02-23 09:59:04");
INSERT INTO product_purchases VALUES("675","333","108","35","","","2000","2000","1","888.25","0","0","0","1776500","2024-03-04 11:36:40","2024-03-04 11:36:40");
INSERT INTO product_purchases VALUES("676","334","109","36","","","200","200","1","1270.75","0","0","0","254150","2024-03-04 11:37:47","2024-03-04 11:37:47");
INSERT INTO product_purchases VALUES("677","335","112","37","","","200","200","1","1495","0","0","0","299000","2024-03-04 12:20:18","2024-03-04 12:20:18");
INSERT INTO product_purchases VALUES("678","336","111","38","","","2000","2000","1","1045","0","0","0","2090000","2024-03-04 12:22:34","2024-03-04 12:22:34");
INSERT INTO product_purchases VALUES("679","337","111","38","","","2000","2000","1","165","0","0","0","330000","2024-06-03 17:43:40","2024-06-03 17:43:40");
INSERT INTO product_purchases VALUES("681","339","99","39","","","500","500","1","155","0","0","0","77500","2024-06-04 15:25:30","2024-06-04 15:25:30");



CREATE TABLE `product_quotation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_quotation VALUES("2","1","1","","","1","2","5030","10","15","754.5","5784.5","2018-08-08 19:52:50","2018-08-27 20:09:57");
INSERT INTO product_quotation VALUES("3","1","4","","","50","1","1.5","25","10","7.5","82.5","2018-08-08 19:53:25","2018-08-27 20:34:36");
INSERT INTO product_quotation VALUES("4","1","2","","","6","1","9.55","0","10","5.73","63","2018-08-27 21:03:48","2018-08-27 21:07:07");
INSERT INTO product_quotation VALUES("5","2","10","","","2.5","7","22","0","0","0","55","2018-09-03 18:02:58","2018-09-20 06:37:41");
INSERT INTO product_quotation VALUES("6","2","13","","","1","0","21","0","0","0","21","2018-09-03 18:02:58","2018-09-03 18:02:58");
INSERT INTO product_quotation VALUES("7","3","1","","","1","1","400","0","10","40","440","2018-10-22 20:12:49","2019-12-21 01:41:37");
INSERT INTO product_quotation VALUES("19","3","48","","2","1","1","13","0","0","0","13","2019-12-07 03:50:02","2019-12-21 01:41:37");
INSERT INTO product_quotation VALUES("27","11","61","","","2","1","10000","0","15","3000","23000","2020-10-23 23:08:14","2020-10-23 23:28:35");
INSERT INTO product_quotation VALUES("28","12","3","","","10","1","250","0","0","0","2500","2020-12-09 18:34:01","2020-12-09 18:34:01");
INSERT INTO product_quotation VALUES("29","12","22","","","5","1","1200","0","10","600","6600","2020-12-09 18:34:01","2020-12-09 18:34:01");
INSERT INTO product_quotation VALUES("30","13","2","","","10","1","10.43","0","15","15.65","120","2021-01-12 01:58:03","2021-01-12 01:59:15");
INSERT INTO product_quotation VALUES("32","13","1","","","1","1","400","0","10","40","440","2021-01-12 01:58:03","2021-01-12 01:59:15");
INSERT INTO product_quotation VALUES("33","13","22","","","1","1","1000","0","10","100","1100","2021-01-12 01:59:15","2021-01-12 01:59:15");
INSERT INTO product_quotation VALUES("37","15","71","1","","1","1","2","0","0","0","2","2021-05-29 00:53:56","2021-05-30 04:04:07");
INSERT INTO product_quotation VALUES("38","15","1","","","1","1","400","0","10","40","440","2021-05-29 00:53:56","2021-05-30 04:04:07");
INSERT INTO product_quotation VALUES("39","16","5","","","1","1","120","0","0","0","120","2022-02-19 01:20:55","2022-02-19 01:20:55");
INSERT INTO product_quotation VALUES("40","17","1","","","1","1","400","0","10","40","440","2022-02-19 01:41:03","2022-02-19 01:41:03");
INSERT INTO product_quotation VALUES("41","18","1","","","1","1","400","0","10","40","440","2022-02-19 01:46:38","2022-02-19 01:46:38");
INSERT INTO product_quotation VALUES("42","19","75","","","1","0","197","0","0","0","197","2022-03-08 05:05:21","2022-03-13 00:38:58");
INSERT INTO product_quotation VALUES("43","19","5","","","1","1","121","0","0","0","121","2022-03-08 05:05:21","2022-03-13 00:38:58");
INSERT INTO product_quotation VALUES("44","19","3","","","1","1","248","0","0","0","248","2022-03-08 05:06:04","2022-03-13 00:38:58");



CREATE TABLE `product_returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_returns VALUES("3","2","4","","","","20","1","2","0","0","0","40","","");
INSERT INTO product_returns VALUES("4","3","10","","","","2","7","22","0","0","0","44","","2018-10-06 22:19:40");
INSERT INTO product_returns VALUES("6","5","3","","","","1","1","250","0","0","0","250","","2018-12-25 17:16:08");
INSERT INTO product_returns VALUES("12","6","1","","","","1","1","400","0","10","40","440","","");
INSERT INTO product_returns VALUES("23","11","13","","","","1","0","21","0","0","0","21","2019-12-24 00:20:29","2019-12-24 00:20:29");
INSERT INTO product_returns VALUES("26","13","61","","","","1","1","10000","0","15","1500","11500","2020-08-16 12:25:02","2020-08-16 12:25:02");
INSERT INTO product_returns VALUES("27","14","1","","","","1","1","400","0","10","40","440","2020-10-13 07:39:54","2020-10-13 07:39:54");
INSERT INTO product_returns VALUES("31","18","61","","","","1","1","10000","0","15","1500","11500","2020-11-17 20:02:18","2020-11-17 20:02:18");
INSERT INTO product_returns VALUES("32","19","3","","","","1","1","250","0","0","0","250","2020-12-09 19:40:25","2020-12-09 19:40:25");
INSERT INTO product_returns VALUES("58","33","25","","","","1","1","1000","0","10","100","1100","2022-05-31 02:33:40","2022-05-31 02:33:40");
INSERT INTO product_returns VALUES("59","34","1","","","","1","1","400","0","10","40","440","2022-05-31 02:48:17","2022-05-31 02:48:17");
INSERT INTO product_returns VALUES("61","36","22","","","","1","1","1000","0","10","100","1100","2022-06-14 05:20:48","2022-06-14 05:20:48");
INSERT INTO product_returns VALUES("63","38","3","","","","1","1","250","0","0","0","250","2022-09-04 03:19:08","2022-09-04 03:19:08");
INSERT INTO product_returns VALUES("64","39","5","","","","1","1","108","0","0","0","108","2023-03-23 02:50:50","2023-03-23 02:50:50");



CREATE TABLE `product_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1081 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_sales VALUES("1","1","2","","","","1","2","104.35","0","15","15.65","120","2018-08-08 06:36:23","2018-08-08 07:13:27");
INSERT INTO product_sales VALUES("3","1","5","","","","2","1","115","10","0","0","230","2018-08-08 07:13:28","2018-08-08 07:13:28");
INSERT INTO product_sales VALUES("4","2","1","","","","10","1","420","0","10","420","4620","2018-08-08 19:54:53","2018-08-08 19:54:53");
INSERT INTO product_sales VALUES("5","2","4","","","","50","1","2.1","0","0","0","105","2018-08-08 19:54:53","2018-08-08 19:54:53");
INSERT INTO product_sales VALUES("6","2","2","","","","3","2","109.57","0","15","49.3","378","2018-08-08 19:54:53","2018-08-08 19:54:53");
INSERT INTO product_sales VALUES("7","3","4","","","","20","1","2.1","0","0","0","42","2018-08-08 20:32:15","2018-08-08 20:32:15");
INSERT INTO product_sales VALUES("8","3","5","","","","5","1","126","0","0","0","630","2018-08-08 20:32:15","2018-08-08 20:32:15");
INSERT INTO product_sales VALUES("9","3","3","","","","1","1","225","0","0","0","225","2018-08-08 20:32:15","2018-08-08 20:32:15");
INSERT INTO product_sales VALUES("10","4","1","","","","2","1","400","0","10","80","880","2018-08-24 17:48:37","2018-08-24 17:48:37");
INSERT INTO product_sales VALUES("13","7","1","","","","2","1","400","0","10","80","880","2018-08-26 21:35:45","2018-08-26 21:35:45");
INSERT INTO product_sales VALUES("14","8","5","","","","2","2","1440","0","10","288","3168","2018-09-01 19:39:54","2018-09-01 19:39:54");
INSERT INTO product_sales VALUES("15","9","4","","","","10","1","2","0","0","0","20","2018-09-02 17:33:14","2018-09-02 17:33:14");
INSERT INTO product_sales VALUES("16","10","3","","","","1","1","250","0","0","0","250","2018-09-02 19:01:39","2018-09-02 19:01:39");
INSERT INTO product_sales VALUES("17","11","22","","","","5","1","1000","0","10","500","5500","2018-09-03 00:08:21","2018-09-03 00:08:21");
INSERT INTO product_sales VALUES("18","12","22","","","","10","1","1050","0","10","1050","11550","2018-09-03 00:10:33","2018-09-03 00:10:33");
INSERT INTO product_sales VALUES("46","29","5","","","","1","1","120","0","0","0","120","2018-09-08 23:38:41","2018-09-08 23:38:41");
INSERT INTO product_sales VALUES("47","30","1","","","","1","1","400","0","10","40","440","2018-09-09 18:57:06","2018-09-20 05:12:38");
INSERT INTO product_sales VALUES("48","31","1","","","","1","1","400","0","10","40","440","2018-09-25 23:20:59","2018-09-25 23:21:25");
INSERT INTO product_sales VALUES("49","31","2","","","","1","2","104.35","0","15","15.65","120","2018-09-25 23:20:59","2018-09-25 23:21:25");
INSERT INTO product_sales VALUES("50","32","1","","","","1","1","400","0","10","40","440","2018-10-03 23:55:48","2018-10-03 23:55:48");
INSERT INTO product_sales VALUES("51","33","1","","","","1","1","400","0","10","40","440","2018-10-04 00:00:23","2018-10-04 00:00:23");
INSERT INTO product_sales VALUES("57","37","3","","","","1","1","250","0","0","0","250","2018-10-06 20:46:05","2018-10-06 20:46:05");
INSERT INTO product_sales VALUES("58","38","1","","","","1","1","400","0","10","40","440","2018-10-06 20:47:19","2018-10-06 20:47:19");
INSERT INTO product_sales VALUES("61","40","1","","","","1","1","400","0","10","40","440","2018-10-06 21:13:12","2018-10-06 21:13:12");
INSERT INTO product_sales VALUES("62","41","1","","","","1","1","400","0","10","40","440","2018-10-09 18:16:21","2018-10-09 18:16:21");
INSERT INTO product_sales VALUES("63","41","13","","","","1","0","21","0","0","0","21","2018-10-09 18:16:21","2018-10-09 18:16:21");
INSERT INTO product_sales VALUES("64","42","1","","","","1","1","400","0","10","40","440","2018-10-09 19:34:51","2018-10-09 19:34:51");
INSERT INTO product_sales VALUES("65","43","1","","","","1","1","400","0","10","40","440","2018-10-15 17:34:35","2018-10-15 17:34:35");
INSERT INTO product_sales VALUES("78","55","3","","","","1","1","250","0","0","0","250","2018-10-20 20:53:34","2018-10-20 20:53:34");
INSERT INTO product_sales VALUES("80","57","1","","","","1","1","400","0","10","40","440","2018-10-20 22:26:12","2018-10-20 22:26:12");
INSERT INTO product_sales VALUES("81","57","13","","","","2","0","21","0","0","0","42","2018-10-20 22:26:13","2018-10-20 22:26:13");
INSERT INTO product_sales VALUES("82","58","22","","","","1","1","1000","0","10","100","1100","2018-10-22 05:27:24","2018-10-22 05:27:24");
INSERT INTO product_sales VALUES("83","58","5","","","","1","1","120","0","0","0","120","2018-10-22 05:27:24","2018-10-22 05:27:24");
INSERT INTO product_sales VALUES("101","73","25","","","","3","1","1000","0","10","300","3300","2018-10-22 21:15:43","2018-10-22 21:15:43");
INSERT INTO product_sales VALUES("102","73","22","","","","2","1","1000","0","10","200","2200","2018-10-22 21:15:44","2018-10-22 21:15:44");
INSERT INTO product_sales VALUES("103","74","22","","","","1","1","1000","0","10","100","1100","2018-10-22 21:16:44","2018-10-22 21:16:44");
INSERT INTO product_sales VALUES("104","74","25","","","","1","1","1000","0","10","100","1100","2018-10-22 21:16:44","2018-10-22 21:16:44");
INSERT INTO product_sales VALUES("105","74","5","","","","1","1","120","0","0","0","120","2018-10-22 21:16:44","2018-10-22 21:16:44");
INSERT INTO product_sales VALUES("106","75","2","","","","3","2","104.35","0","15","46.96","360","2018-10-31 19:00:27","2018-10-31 19:00:27");
INSERT INTO product_sales VALUES("107","75","22","","","","2","1","1000","0","10","200","2200","2018-10-31 19:00:27","2018-10-31 19:00:27");
INSERT INTO product_sales VALUES("108","75","25","","","","3","1","1000","0","10","300","3300","2018-10-31 19:00:27","2018-10-31 19:00:27");
INSERT INTO product_sales VALUES("109","75","1","","","","2","1","400","0","10","80","880","2018-10-31 19:00:27","2018-10-31 19:00:27");
INSERT INTO product_sales VALUES("110","75","5","","","","2","1","120","0","0","0","240","2018-10-31 19:00:27","2018-10-31 19:00:27");
INSERT INTO product_sales VALUES("111","76","3","","","","1","1","250","0","0","0","250","2018-10-31 19:01:26","2018-11-02 23:28:56");
INSERT INTO product_sales VALUES("112","76","22","","","","1","1","1000","0","10","100","1100","2018-10-31 19:01:27","2018-11-02 23:28:56");
INSERT INTO product_sales VALUES("113","76","13","","","","4","0","21","0","0","0","84","2018-10-31 19:01:27","2018-11-02 23:28:56");
INSERT INTO product_sales VALUES("117","79","1","","","","4","1","400","0","10","160","1760","2018-11-04 22:15:17","2018-11-04 22:15:17");
INSERT INTO product_sales VALUES("118","79","2","","","","7","2","104.35","0","15","109.57","840","2018-11-04 22:15:17","2018-11-04 22:15:17");
INSERT INTO product_sales VALUES("119","79","3","","","","7","1","250","0","0","0","1750","2018-11-04 22:15:17","2018-11-04 22:15:17");
INSERT INTO product_sales VALUES("120","79","4","","","","7","1","2","0","0","0","14","2018-11-04 22:15:17","2018-11-04 22:15:17");
INSERT INTO product_sales VALUES("121","79","22","","","","8","1","1000","0","10","800","8800","2018-11-04 22:15:17","2018-11-04 22:15:17");
INSERT INTO product_sales VALUES("122","79","13","","","","10","0","21","0","0","0","210","2018-11-04 22:15:17","2018-11-04 22:15:17");
INSERT INTO product_sales VALUES("123","79","5","","","","9","1","120","0","0","0","1080","2018-11-04 22:15:17","2018-11-04 22:15:17");
INSERT INTO product_sales VALUES("124","80","2","","","","2","2","104.35","0","15","31.3","240","2018-11-04 22:19:58","2018-11-04 22:19:58");
INSERT INTO product_sales VALUES("125","80","3","","","","2","1","250","0","0","0","500","2018-11-04 22:19:58","2018-11-04 22:19:58");
INSERT INTO product_sales VALUES("126","80","1","","","","4","1","400","0","10","160","1760","2018-11-04 22:19:58","2018-11-04 22:19:58");
INSERT INTO product_sales VALUES("132","86","22","","","","1","1","1000","0","10","100","1100","2018-11-04 22:59:48","2018-11-04 22:59:48");
INSERT INTO product_sales VALUES("134","88","22","","","","1","1","1000","0","10","100","1100","2018-11-04 23:02:58","2018-11-04 23:02:58");
INSERT INTO product_sales VALUES("142","94","2","","","","1","2","104.35","0","15","15.65","120","2018-11-26 03:05:34","2018-11-26 03:05:34");
INSERT INTO product_sales VALUES("143","95","5","","","","3","1","120","0","0","0","360","2018-11-26 22:36:08","2018-11-26 22:36:08");
INSERT INTO product_sales VALUES("144","95","5","","","","3","1","120","0","0","0","360","2018-11-26 22:36:08","2018-11-26 22:36:08");
INSERT INTO product_sales VALUES("145","96","2","","","","1","2","104.35","0","15","15.65","120","2018-11-27 20:15:09","2018-11-27 20:15:09");
INSERT INTO product_sales VALUES("146","97","2","","","","2","2","104.35","0","15","31.3","240","2018-11-30 19:05:18","2018-11-30 19:05:18");
INSERT INTO product_sales VALUES("147","97","10","","","","1","7","22","0","0","0","22","2018-11-30 19:05:18","2018-11-30 19:05:18");
INSERT INTO product_sales VALUES("148","98","30","","","","2","1","100","0","0","0","200","2018-12-04 18:35:58","2018-12-04 18:35:58");
INSERT INTO product_sales VALUES("149","98","31","","","","2","1","300","0","0","0","600","2018-12-04 18:35:58","2018-12-04 18:35:58");
INSERT INTO product_sales VALUES("150","99","30","","","","2","1","100","0","0","0","200","2018-12-04 18:37:19","2018-12-04 18:37:19");
INSERT INTO product_sales VALUES("151","99","31","","","","2","1","300","0","0","0","600","2018-12-04 18:37:20","2018-12-04 18:37:20");
INSERT INTO product_sales VALUES("153","101","30","","","","1","1","100","0","0","0","100","2018-12-07 19:20:26","2018-12-07 19:20:26");
INSERT INTO product_sales VALUES("155","103","2","","","","1","2","104.35","0","15","15.65","120","2018-12-23 17:58:32","2018-12-23 17:58:32");
INSERT INTO product_sales VALUES("156","104","33","","","","4","1","2","0","0","0","8","2018-12-23 22:15:27","2018-12-24 16:55:23");
INSERT INTO product_sales VALUES("157","104","26","","","","2","0","1250","0","0","0","2500","2018-12-24 16:47:54","2018-12-24 16:55:23");
INSERT INTO product_sales VALUES("158","105","13","","","","1","0","21","0","0","0","21","2018-12-31 18:45:38","2018-12-31 18:45:38");
INSERT INTO product_sales VALUES("159","106","2","","","","1","2","104.35","0","15","15.65","120","2018-12-31 22:10:40","2018-12-31 22:10:40");
INSERT INTO product_sales VALUES("160","106","3","","","","2","1","250","0","0","0","500","2018-12-31 22:10:40","2018-12-31 22:10:40");
INSERT INTO product_sales VALUES("161","106","5","","","","2","1","120","0","0","0","240","2018-12-31 22:10:40","2018-12-31 22:10:40");
INSERT INTO product_sales VALUES("162","107","3","","","","2","1","250","0","0","0","500","2019-01-02 19:56:27","2019-01-02 19:56:27");
INSERT INTO product_sales VALUES("163","107","5","","","","2","1","120","0","0","0","240","2019-01-02 19:56:27","2019-01-02 19:56:27");
INSERT INTO product_sales VALUES("164","107","22","","","","2","1","1000","0","10","200","2200","2019-01-02 19:56:27","2019-01-02 19:56:27");
INSERT INTO product_sales VALUES("165","107","25","","","","1","1","1000","0","10","100","1100","2019-01-02 19:56:27","2019-01-02 19:56:27");
INSERT INTO product_sales VALUES("166","107","1","","","","2","1","400","0","10","80","880","2019-01-02 19:56:27","2019-01-02 19:56:27");
INSERT INTO product_sales VALUES("167","107","2","","","","1","2","104.35","0","15","15.65","120","2019-01-02 19:56:27","2019-01-02 19:56:27");
INSERT INTO product_sales VALUES("168","108","2","","","","1","2","104.35","0","15","15.65","120","2019-01-20 04:58:24","2019-01-20 04:58:24");
INSERT INTO product_sales VALUES("169","109","1","","","","1","1","400","0","10","40","440","2019-01-28 23:14:43","2019-01-28 23:14:43");
INSERT INTO product_sales VALUES("170","109","30","","","","1","1","100","0","0","0","100","2019-01-28 23:14:43","2019-01-28 23:14:43");
INSERT INTO product_sales VALUES("171","110","31","","","","2","1","300","0","0","0","600","2019-01-29 00:50:41","2019-01-29 00:50:41");
INSERT INTO product_sales VALUES("172","110","25","","","","1","1","1000","0","10","100","1100","2019-01-29 00:50:41","2019-01-29 00:50:41");
INSERT INTO product_sales VALUES("173","111","3","","","","1","1","250","0","0","0","250","2019-01-31 00:08:39","2019-01-31 00:08:39");
INSERT INTO product_sales VALUES("174","111","13","","","","1","0","21","0","0","0","21","2019-01-31 00:08:39","2019-01-31 00:08:39");
INSERT INTO product_sales VALUES("175","112","1","","","","1","1","400","0","10","40","440","2019-02-01 23:40:45","2019-02-01 23:40:45");
INSERT INTO product_sales VALUES("176","113","3","","","","1","1","250","0","0","0","250","2019-02-02 00:41:17","2019-02-02 00:41:17");
INSERT INTO product_sales VALUES("177","113","30","","","","1","1","100","0","0","0","100","2019-02-02 00:41:17","2019-02-02 00:41:17");
INSERT INTO product_sales VALUES("178","114","1","","","","1","1","400","0","10","40","440","2019-02-05 04:04:45","2019-02-05 04:04:45");
INSERT INTO product_sales VALUES("183","118","1","","","","1","1","400","0","10","40","440","2019-02-07 00:15:42","2019-02-07 00:15:42");
INSERT INTO product_sales VALUES("185","120","1","","","","1","1","400","0","10","40","440","2019-02-07 00:40:37","2019-02-07 00:40:37");
INSERT INTO product_sales VALUES("186","121","3","","","","1","1","250","0","0","0","250","2019-02-08 23:48:14","2019-02-08 23:48:14");
INSERT INTO product_sales VALUES("187","121","2","","","","1","2","104.35","0","15","15.65","120","2019-02-08 23:48:14","2019-02-08 23:48:14");
INSERT INTO product_sales VALUES("188","121","4","","","","10","1","2","0","0","0","20","2019-02-08 23:48:15","2019-02-08 23:48:15");
INSERT INTO product_sales VALUES("189","121","13","","","","2","0","21","0","0","0","42","2019-02-08 23:48:15","2019-02-08 23:48:15");
INSERT INTO product_sales VALUES("190","121","1","","","","1","1","400","0","10","40","440","2019-02-08 23:48:15","2019-02-08 23:48:15");
INSERT INTO product_sales VALUES("191","121","31","","","","1","1","300","0","0","0","300","2019-02-08 23:48:15","2019-02-08 23:48:15");
INSERT INTO product_sales VALUES("192","121","30","","","","1","1","100","0","0","0","100","2019-02-08 23:48:15","2019-02-08 23:48:15");
INSERT INTO product_sales VALUES("194","123","1","","","","1","1","400","0","10","40","440","2019-02-19 03:32:14","2019-02-19 03:32:14");
INSERT INTO product_sales VALUES("198","127","31","","","","1","1","300","0","0","0","300","2019-03-02 23:40:10","2019-03-02 23:40:10");
INSERT INTO product_sales VALUES("199","127","25","","","","1","1","1000","0","10","100","1100","2019-03-02 23:40:10","2019-03-02 23:40:10");
INSERT INTO product_sales VALUES("200","127","22","","","","1","1","1000","0","10","100","1100","2019-03-02 23:40:10","2019-03-02 23:40:10");
INSERT INTO product_sales VALUES("201","128","1","","","","1","1","400","0","10","40","440","2019-04-03 23:55:55","2019-04-03 23:55:55");
INSERT INTO product_sales VALUES("202","128","2","","","","1","2","104.35","0","15","15.65","120","2019-04-03 23:55:55","2019-04-03 23:55:55");
INSERT INTO product_sales VALUES("203","129","5","","","","2","1","120","0","0","0","240","2019-04-03 23:59:37","2019-04-11 00:50:16");
INSERT INTO product_sales VALUES("204","130","1","","","","1","1","400","0","10","40","440","2019-04-21 02:21:24","2019-04-21 02:21:24");
INSERT INTO product_sales VALUES("205","130","2","","","","1","2","125.22","0","15","18.78","144","2019-04-21 02:21:24","2019-04-21 02:21:24");
INSERT INTO product_sales VALUES("206","130","4","","","","1","1","2","0","0","0","2","2019-04-21 02:21:24","2019-04-21 02:21:24");
INSERT INTO product_sales VALUES("207","131","1","","","","1","1","400","0","10","40","440","2019-05-28 00:32:29","2019-05-28 00:32:29");
INSERT INTO product_sales VALUES("208","131","3","","","","1","1","250","0","0","0","250","2019-05-28 00:32:29","2019-05-28 00:32:29");
INSERT INTO product_sales VALUES("209","131","25","","","","1","1","1000","0","10","100","1100","2019-05-28 00:32:29","2019-05-28 00:32:29");
INSERT INTO product_sales VALUES("210","131","22","","","","1","1","1000","0","10","100","1100","2019-05-28 00:32:29","2019-05-28 00:32:29");
INSERT INTO product_sales VALUES("211","132","1","","","","1","1","400","0","10","40","440","2019-06-13 00:16:37","2019-06-13 00:16:37");
INSERT INTO product_sales VALUES("212","132","30","","","","1","1","100","0","0","0","100","2019-06-13 00:16:37","2019-06-13 00:16:37");
INSERT INTO product_sales VALUES("213","132","31","","","","1","1","300","0","0","0","300","2019-06-13 00:16:37","2019-06-13 00:16:37");
INSERT INTO product_sales VALUES("214","133","3","","","","2","1","250","0","0","0","500","2019-06-13 00:17:51","2019-06-13 00:17:51");
INSERT INTO product_sales VALUES("215","133","25","","","","1","1","1000","0","10","100","1100","2019-06-13 00:17:52","2019-06-13 00:17:52");
INSERT INTO product_sales VALUES("216","133","22","","","","1","1","1000","0","10","100","1100","2019-06-13 00:17:52","2019-06-13 00:17:52");
INSERT INTO product_sales VALUES("217","134","1","","","","1","1","400","0","10","40","440","2019-10-19 05:30:28","2019-10-19 05:30:28");
INSERT INTO product_sales VALUES("218","134","22","","","","1","1","1000","0","10","100","1100","2019-10-19 05:30:28","2019-10-19 05:30:28");
INSERT INTO product_sales VALUES("219","134","25","","","","1","1","1000","0","10","100","1100","2019-10-19 05:30:28","2019-10-19 05:30:28");
INSERT INTO product_sales VALUES("220","134","31","","","","1","1","300","0","0","0","300","2019-10-19 05:30:28","2019-10-19 05:30:28");
INSERT INTO product_sales VALUES("224","138","5","","","","1","1","120","0","0","0","120","2019-10-31 02:29:37","2019-10-31 02:29:37");
INSERT INTO product_sales VALUES("225","139","2","","","","2","2","125.22","0","15","37.57","288","2019-11-03 01:40:44","2019-11-03 01:40:44");
INSERT INTO product_sales VALUES("226","139","4","","","","100","1","2","0","0","0","200","2019-11-03 01:40:44","2019-11-03 01:40:44");
INSERT INTO product_sales VALUES("236","144","22","","","","1","1","1000","0","10","100","1100","2019-11-09 08:41:31","2019-11-09 08:41:31");
INSERT INTO product_sales VALUES("237","144","5","","","","1","1","120","0","0","0","120","2019-11-09 08:41:31","2019-11-09 08:41:31");
INSERT INTO product_sales VALUES("241","147","22","","","","1","1","1000","0","10","100","1100","2019-11-10 23:40:08","2019-11-10 23:40:08");
INSERT INTO product_sales VALUES("242","147","25","","","","1","1","1000","0","10","100","1100","2019-11-10 23:40:08","2019-11-10 23:40:08");
INSERT INTO product_sales VALUES("243","147","4","","","","10","1","2","0","0","0","20","2019-11-10 23:40:08","2019-11-10 23:40:08");
INSERT INTO product_sales VALUES("282","172","1","","","","1","1","400","0","10","40","440","2019-12-03 04:46:31","2019-12-03 04:46:31");
INSERT INTO product_sales VALUES("283","173","3","","","","1","1","225","0","0","0","225","2019-12-04 12:19:40","2019-12-04 12:19:40");
INSERT INTO product_sales VALUES("284","173","1","","","","1","1","360","0","10","36","396","2019-12-04 12:19:40","2019-12-04 12:19:40");
INSERT INTO product_sales VALUES("306","187","2","","","","2","2","125.22","0","15","37.57","288","2019-12-21 23:40:58","2019-12-21 23:40:58");
INSERT INTO product_sales VALUES("308","190","22","","","","1","1","1000","0","10","100","1100","2019-12-23 01:59:46","2019-12-23 01:59:46");
INSERT INTO product_sales VALUES("312","193","25","","","","1","1","1000","0","10","100","1100","2020-01-01 03:20:28","2020-01-01 03:20:28");
INSERT INTO product_sales VALUES("313","194","1","","","","2","1","400","0","10","80","880","2020-01-02 05:39:47","2020-01-02 05:39:47");
INSERT INTO product_sales VALUES("314","194","2","","","","1","1","10.43","0","15","1.57","12","2020-01-02 05:39:47","2020-01-02 05:39:47");
INSERT INTO product_sales VALUES("323","201","5","","","","1","1","120","0","0","0","120","2020-02-03 04:52:56","2020-02-03 04:52:56");
INSERT INTO product_sales VALUES("324","202","25","","","","1","1","1000","0","10","100","1100","2020-02-04 11:58:53","2020-02-04 11:58:53");
INSERT INTO product_sales VALUES("325","202","31","","","","1","1","300","0","0","0","300","2020-02-04 11:58:53","2020-02-04 11:58:53");
INSERT INTO product_sales VALUES("326","203","3","","","","1","1","250","0","0","0","250","2020-03-02 00:54:14","2020-03-02 00:54:14");
INSERT INTO product_sales VALUES("327","203","30","","","","1","1","100","0","0","0","100","2020-03-02 00:54:14","2020-03-02 00:54:14");
INSERT INTO product_sales VALUES("328","204","4","","","","20","1","2","0","0","0","40","2020-03-02 00:57:41","2020-03-02 00:57:41");
INSERT INTO product_sales VALUES("329","205","1","","","","1","1","400","0","10","40","440","2020-03-11 06:46:42","2020-03-11 06:46:42");
INSERT INTO product_sales VALUES("330","206","5","","","","1","1","120","0","0","0","120","2020-03-11 06:52:30","2020-03-11 06:54:04");
INSERT INTO product_sales VALUES("331","207","30","","","","2","1","100","0","0","0","200","2020-04-06 09:40:24","2020-04-06 09:41:11");
INSERT INTO product_sales VALUES("332","207","31","","","","1","1","300","0","0","0","300","2020-04-06 09:40:24","2020-04-06 09:41:11");
INSERT INTO product_sales VALUES("333","207","2","","","","1","2","125.22","0","15","18.78","144","2020-04-06 09:41:11","2020-04-06 09:41:11");
INSERT INTO product_sales VALUES("334","208","25","","","","1","1","1000","0","10","100","1100","2020-05-06 12:59:50","2020-05-06 12:59:50");
INSERT INTO product_sales VALUES("335","208","1","","","","1","1","400","0","10","40","440","2020-05-06 12:59:50","2020-05-06 12:59:50");
INSERT INTO product_sales VALUES("336","209","5","","","","1","1","120","0","0","0","120","2020-06-09 02:42:48","2020-06-09 02:42:48");
INSERT INTO product_sales VALUES("337","209","25","","","","1","1","1000","0","10","100","1100","2020-06-09 02:42:48","2020-06-09 02:42:48");
INSERT INTO product_sales VALUES("340","212","1","","","","1","1","350","0","10","35","385","2020-07-03 08:39:14","2020-07-03 08:39:14");
INSERT INTO product_sales VALUES("341","212","25","","","","1","1","1000","0","10","100","1100","2020-07-03 08:39:14","2020-07-03 08:39:14");
INSERT INTO product_sales VALUES("342","212","22","","","","1","1","1000","0","10","100","1100","2020-07-03 08:39:14","2020-07-03 08:39:14");
INSERT INTO product_sales VALUES("343","213","48","","2","","1","1","13","0","0","0","13","2020-07-12 11:51:53","2020-07-12 11:51:53");
INSERT INTO product_sales VALUES("347","217","1","","","","1","1","350","0","10","35","385","2020-07-27 10:38:08","2020-07-27 10:38:08");
INSERT INTO product_sales VALUES("348","218","1","","","","1","1","350","0","10","35","385","2020-07-27 10:40:24","2020-07-27 10:40:24");
INSERT INTO product_sales VALUES("349","219","1","","","","1","1","350","0","10","35","385","2020-07-27 10:46:45","2020-07-27 10:46:45");
INSERT INTO product_sales VALUES("350","220","31","","","","2","1","300","0","0","0","600","2020-08-12 08:28:04","2020-08-12 08:28:04");
INSERT INTO product_sales VALUES("351","220","33","","","","3","1","20","0","0","0","60","2020-08-12 08:28:04","2020-08-12 08:28:04");
INSERT INTO product_sales VALUES("352","220","30","","","","1","1","100","0","0","0","100","2020-08-12 08:28:04","2020-08-12 08:28:04");
INSERT INTO product_sales VALUES("353","221","25","","","","1","1","1000","0","10","100","1100","2020-08-12 08:30:35","2020-08-12 08:30:35");
INSERT INTO product_sales VALUES("354","222","61","","","","2","1","10000","0","15","3000","23000","2020-08-16 12:04:24","2020-08-16 12:04:24");
INSERT INTO product_sales VALUES("355","223","1","","","","1","1","400","0","10","40","440","2020-08-16 12:05:23","2020-08-16 12:05:23");
INSERT INTO product_sales VALUES("356","224","1","","","","3","1","390","30","10","117","1287","2020-08-26 10:01:39","2020-08-26 10:01:39");
INSERT INTO product_sales VALUES("362","230","3","","","","1","1","250","0","0","0","250","2020-10-17 11:28:52","2020-10-17 11:28:52");
INSERT INTO product_sales VALUES("363","231","1","","","","1","1","400","0","10","40","440","2020-10-18 01:13:33","2020-10-18 01:13:33");
INSERT INTO product_sales VALUES("364","232","30","","","","1","1","100","0","0","0","100","2020-10-22 03:30:14","2020-10-22 03:30:14");
INSERT INTO product_sales VALUES("365","233","3","","","","1","1","250","0","0","0","250","2020-10-22 03:56:04","2020-10-22 03:56:04");
INSERT INTO product_sales VALUES("366","234","61","","","","1","1","10000","0","15","1500","11500","2020-10-23 21:05:06","2020-10-23 21:05:06");
INSERT INTO product_sales VALUES("367","235","3","","","","1","1","250","0","0","0","250","2020-10-23 21:07:52","2020-10-23 21:07:52");
INSERT INTO product_sales VALUES("369","237","25","","","","2","1","1000","0","10","200","2200","2020-10-24 05:46:01","2020-10-24 05:46:01");
INSERT INTO product_sales VALUES("370","237","22","","","","2","1","1000","0","10","200","2200","2020-10-24 05:46:01","2020-10-24 05:46:01");
INSERT INTO product_sales VALUES("371","237","61","","","","5","1","10000","0","15","7500","57500","2020-10-24 05:46:01","2020-10-24 05:46:01");
INSERT INTO product_sales VALUES("373","239","60","","9","","1","1","2","0","0","0","2","2020-10-26 19:40:02","2020-10-26 19:40:02");
INSERT INTO product_sales VALUES("374","240","60","","9","","2","1","3","0","0","0","6","2020-10-26 19:42:06","2020-10-26 19:42:06");
INSERT INTO product_sales VALUES("375","241","3","","","","1","1","250","0","0","0","250","2020-10-26 20:32:00","2020-10-26 20:32:00");
INSERT INTO product_sales VALUES("376","242","3","","","","1","1","250","0","0","0","250","2020-10-28 21:30:30","2020-10-28 21:30:30");
INSERT INTO product_sales VALUES("377","243","3","","","","1","1","250","0","0","0","250","2020-10-31 21:21:12","2020-10-31 21:21:12");
INSERT INTO product_sales VALUES("380","245","1","","","","2","1","400","0","10","80","880","2020-10-31 21:42:23","2020-10-31 21:42:23");
INSERT INTO product_sales VALUES("381","245","3","","","","1","1","250","0","0","0","250","2020-10-31 21:42:23","2020-10-31 21:42:23");
INSERT INTO product_sales VALUES("382","246","1","","","","1","1","400","0","10","40","440","2020-10-31 21:50:18","2020-11-02 05:39:17");
INSERT INTO product_sales VALUES("386","250","1","","","","1","1","344","0","10","34.4","378.4","2020-11-06 02:30:41","2020-11-06 02:30:41");
INSERT INTO product_sales VALUES("387","251","1","","","","1","1","344","0","10","34.4","378.4","2020-11-09 02:15:24","2020-11-09 02:15:24");
INSERT INTO product_sales VALUES("388","251","3","","","","1","1","232.2","0","0","0","232.2","2020-11-09 02:15:24","2020-11-09 02:15:24");
INSERT INTO product_sales VALUES("389","252","3","","","","1","1","229.5","0","0","0","229.5","2020-11-10 18:58:58","2020-11-10 18:58:58");
INSERT INTO product_sales VALUES("390","253","3","","","","1","1","212.5","0","0","0","212.5","2020-11-13 19:47:36","2020-11-13 19:47:36");
INSERT INTO product_sales VALUES("391","253","31","","","","1","1","255","0","0","0","255","2020-11-13 19:47:36","2020-11-13 19:47:36");
INSERT INTO product_sales VALUES("392","253","61","","","","1","1","8500","0","15","1275","9775","2020-11-13 19:47:36","2020-11-13 19:47:36");
INSERT INTO product_sales VALUES("395","256","1","","","","1","1","400","0","10","40","440","2020-11-16 19:47:48","2020-11-16 19:47:48");
INSERT INTO product_sales VALUES("396","256","3","","","","1","1","250","0","10","25","275","2020-11-16 19:47:48","2020-11-16 19:47:48");
INSERT INTO product_sales VALUES("397","257","3","","","","1","1","250","0","0","0","250","2020-11-16 20:09:19","2020-11-16 20:09:19");
INSERT INTO product_sales VALUES("398","258","61","","","","3","1","10000","0","15","4500","34500","2020-11-17 19:52:39","2020-11-17 19:52:39");
INSERT INTO product_sales VALUES("402","262","61","","","","2","1","10000","0","15","3000","23000","2020-11-28 18:21:30","2020-11-28 18:21:30");
INSERT INTO product_sales VALUES("403","263","1","","","","1","1","400","0","10","40","440","2020-12-07 22:39:57","2020-12-07 22:39:57");
INSERT INTO product_sales VALUES("416","270","2","","","","1","3","250.43","0","15","37.57","288","2021-01-11 02:45:35","2021-01-11 02:58:44");
INSERT INTO product_sales VALUES("419","270","22","","","","1","1","1000","0","10","100","1100","2021-01-11 02:54:04","2021-01-11 02:58:44");
INSERT INTO product_sales VALUES("420","271","2","","","","1","2","125.22","0","15","18.78","144","2021-01-11 03:16:25","2021-01-11 03:16:25");
INSERT INTO product_sales VALUES("421","271","3","","","","1","1","250","0","0","0","250","2021-01-11 03:16:25","2021-01-11 03:16:25");
INSERT INTO product_sales VALUES("422","271","1","","","","2","1","400","0","10","80","880","2021-01-11 03:16:25","2021-01-11 03:16:25");
INSERT INTO product_sales VALUES("429","274","2","","","","10","1","10.43","0","15","15.65","120","2021-01-12 20:02:43","2021-01-12 20:02:43");
INSERT INTO product_sales VALUES("430","274","30","","","","1","1","100","0","0","0","100","2021-01-12 20:02:43","2021-01-12 20:02:43");
INSERT INTO product_sales VALUES("431","274","3","","","","2","1","250","0","0","0","500","2021-01-12 20:02:43","2021-01-12 20:02:43");
INSERT INTO product_sales VALUES("432","274","1","","","","2","1","380","40","10","76","836","2021-01-12 20:02:43","2021-01-12 20:02:43");
INSERT INTO product_sales VALUES("433","275","1","","","","1","1","400","0","10","40","440","2021-02-01 03:37:48","2021-02-01 03:37:48");
INSERT INTO product_sales VALUES("437","277","32","","","","1","1","10","0","0","0","10","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("438","277","48","","5","","1","1","53","0","0","0","53","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("439","277","48","","2","","1","1","13","0","0","0","13","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("440","277","48","","3","","1","1","3","0","0","0","3","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("441","277","61","","","","1","1","10000","0","15","1500","11500","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("442","277","31","","","","1","1","300","0","0","0","300","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("443","277","30","","","","1","1","100","0","0","0","100","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("444","277","25","","","","1","1","1000","0","10","100","1100","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("445","277","22","","","","1","1","1000","0","10","100","1100","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("446","277","13","","","","1","0","21","0","0","0","21","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("447","277","5","","","","1","1","120","0","0","0","120","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("448","277","4","","","","1","1","2","0","0","0","2","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("449","277","3","","","","1","1","250","0","0","0","250","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("450","277","2","","","","1","2","125.22","0","15","18.78","144","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("451","277","1","","","","1","1","400","0","10","40","440","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO product_sales VALUES("452","278","1","","","","1","1","400","0","10","40","440","2021-02-16 20:32:38","2021-02-16 20:32:38");
INSERT INTO product_sales VALUES("453","278","61","","","","2","1","10000","0","15","3000","23000","2021-02-16 20:32:38","2021-02-16 20:32:38");
INSERT INTO product_sales VALUES("454","278","22","","","","1","1","1000","0","10","100","1100","2021-02-16 20:32:38","2021-02-16 20:32:38");
INSERT INTO product_sales VALUES("455","278","3","","","","1","1","250","0","0","0","250","2021-02-16 20:32:38","2021-02-16 20:32:38");
INSERT INTO product_sales VALUES("456","278","5","","","","1","1","120","0","0","0","120","2021-02-16 20:32:38","2021-02-16 20:32:38");
INSERT INTO product_sales VALUES("457","279","71","1","","","2","1","2","0","0","0","4","2021-03-11 02:40:34","2021-03-11 02:40:34");
INSERT INTO product_sales VALUES("458","280","71","2","","","1","1","2","0","0","0","2","2021-03-16 18:14:11","2021-03-16 18:14:11");
INSERT INTO product_sales VALUES("459","282","71","1","","","1","1","2","0","0","0","2","2021-03-17 19:47:29","2021-03-20 00:59:57");
INSERT INTO product_sales VALUES("468","288","5","","","","1","1","120","0","0","0","120","2021-04-12 03:40:46","2021-04-12 03:40:46");
INSERT INTO product_sales VALUES("473","290","5","","","","1","1","120","0","0","0","120","2021-05-24 09:45:58","2021-05-24 09:45:58");
INSERT INTO product_sales VALUES("478","294","1","","","","1","1","400","0","10","40","440","2021-06-01 02:35:30","2021-06-01 02:35:30");
INSERT INTO product_sales VALUES("479","295","71","3","","","1","1","2","0","0","0","2","2021-06-01 05:22:09","2021-06-01 05:22:09");
INSERT INTO product_sales VALUES("480","296","71","1","","","1","1","2","0","0","0","2","2021-06-01 05:46:24","2021-06-01 05:46:24");
INSERT INTO product_sales VALUES("481","297","3","","","","1","1","250","0","0","0","250","2021-06-01 09:41:50","2021-06-01 09:41:50");
INSERT INTO product_sales VALUES("482","298","71","3","","","1","1","2","0","0","0","2","2021-06-01 09:55:47","2021-06-01 09:55:47");
INSERT INTO product_sales VALUES("483","299","22","","","","1","1","1000","0","10","100","1100","2021-06-16 00:53:25","2021-06-16 00:53:25");
INSERT INTO product_sales VALUES("484","300","1","","","","1","1","400","0","10","40","440","2021-06-16 01:10:33","2021-06-16 01:10:33");
INSERT INTO product_sales VALUES("485","301","22","","","","1","1","1000","0","10","100","1100","2021-06-16 01:11:11","2021-06-16 01:11:11");
INSERT INTO product_sales VALUES("486","301","25","","","","1","1","1000","0","10","100","1100","2021-06-16 01:11:11","2021-06-16 01:11:11");
INSERT INTO product_sales VALUES("487","302","1","","","","1","1","400","0","10","40","440","2021-06-16 10:04:52","2021-06-16 10:04:52");
INSERT INTO product_sales VALUES("488","303","1","","","","1","1","400","0","10","40","440","2021-06-16 10:05:43","2021-06-16 10:05:43");
INSERT INTO product_sales VALUES("489","304","1","","","","1","1","400","0","10","40","440","2021-06-16 10:06:34","2021-06-16 10:06:34");
INSERT INTO product_sales VALUES("490","305","1","","","","1","1","400","0","10","40","440","2021-06-16 10:28:42","2021-06-16 10:28:42");
INSERT INTO product_sales VALUES("491","306","22","","","","1","1","1000","0","10","100","1100","2021-06-17 01:55:53","2021-06-17 01:55:53");
INSERT INTO product_sales VALUES("492","307","22","","","","2","1","1000","0","10","200","2200","2021-06-17 02:23:49","2021-06-17 04:59:33");
INSERT INTO product_sales VALUES("493","308","2","","","","2","2","125.22","0","15","37.57","288","2021-06-18 10:31:27","2021-06-18 10:31:27");
INSERT INTO product_sales VALUES("494","308","1","","","","3","1","400","0","10","120","1320","2021-06-18 10:31:27","2021-06-18 10:31:27");
INSERT INTO product_sales VALUES("495","309","71","2","","","1","1","2","0","0","0","2","2021-06-18 10:32:54","2021-06-18 10:32:54");
INSERT INTO product_sales VALUES("496","310","71","","","","1","1","2","0","0","0","2","2021-06-19 00:51:21","2021-06-19 00:51:21");
INSERT INTO product_sales VALUES("497","310","5","","","","1","1","120","0","0","0","120","2021-06-19 00:51:21","2021-06-19 00:51:21");
INSERT INTO product_sales VALUES("498","310","4","","","","1","1","2","0","0","0","2","2021-06-19 00:51:21","2021-06-19 00:51:21");
INSERT INTO product_sales VALUES("499","310","3","","","","1","1","250","0","0","0","250","2021-06-19 00:51:21","2021-06-19 00:51:21");
INSERT INTO product_sales VALUES("500","310","2","","","","1","2","125.22","0","15","18.78","144","2021-06-19 00:51:21","2021-06-19 00:51:21");
INSERT INTO product_sales VALUES("501","310","1","","","","1","1","400","0","10","40","440","2021-06-19 00:51:21","2021-06-19 00:51:21");
INSERT INTO product_sales VALUES("502","311","1","","","","1","1","400","0","10","40","440","2021-06-19 00:53:44","2021-06-19 00:53:44");
INSERT INTO product_sales VALUES("503","312","1","","","","1","1","400","0","10","40","440","2021-06-19 01:02:31","2021-06-19 01:02:31");
INSERT INTO product_sales VALUES("504","313","3","","","","1","1","250","0","0","0","250","2021-06-19 01:06:28","2021-06-19 01:06:28");
INSERT INTO product_sales VALUES("505","314","22","","","","1","1","1000","0","10","100","1100","2021-06-27 02:42:47","2021-06-27 02:42:47");
INSERT INTO product_sales VALUES("508","317","74","","","","1","0","18","0","0","0","18","2021-07-07 00:34:55","2021-07-07 00:34:55");
INSERT INTO product_sales VALUES("536","325","26","","","","2","0","1200","0","0","0","2400","2021-08-14 11:28:05","2021-08-14 11:34:27");
INSERT INTO product_sales VALUES("547","333","71","","","","1","1","2","0","0","0","2","2021-09-21 03:07:22","2021-09-21 03:07:22");
INSERT INTO product_sales VALUES("548","334","5","","","","1","1","120","0","0","0","120","2021-09-21 05:50:20","2021-09-21 05:50:20");
INSERT INTO product_sales VALUES("549","335","10","","","","0.5","7","22","0","0","0","11","2021-09-23 04:47:04","2021-09-23 04:47:04");
INSERT INTO product_sales VALUES("550","336","5","","","","1","1","120","0","0","0","120","2021-10-03 07:18:29","2021-10-03 07:18:29");
INSERT INTO product_sales VALUES("551","336","22","","","1103","1","1","1000","0","10","100","1100","2021-10-03 07:18:29","2021-10-03 07:18:29");
INSERT INTO product_sales VALUES("553","338","22","","","11103","1","1","1000","0","10","100","1100","2021-10-03 07:44:04","2021-10-03 07:44:04");
INSERT INTO product_sales VALUES("555","340","22","","","11104","1","1","1000","0","10","100","1100","2021-10-07 04:52:29","2021-10-07 04:52:29");
INSERT INTO product_sales VALUES("556","341","22","","","91101","1","1","1000","0","10","100","1100","2021-10-07 05:38:40","2021-10-07 05:38:40");
INSERT INTO product_sales VALUES("557","342","25","","","99901,99902","2","1","1000","0","10","200","2200","2021-10-09 02:12:42","2021-10-09 06:22:39");
INSERT INTO product_sales VALUES("558","342","5","","","","1","1","120","0","0","0","120","2021-10-09 06:22:39","2021-10-09 06:22:39");
INSERT INTO product_sales VALUES("559","343","22","","","1105,91102","2","1","1000","0","10","200","2200","2021-10-09 06:32:32","2021-10-09 06:32:32");
INSERT INTO product_sales VALUES("564","348","22","","","11101","1","1","1000","0","10","100","1100","2021-10-14 05:58:20","2021-10-14 05:58:20");
INSERT INTO product_sales VALUES("565","349","5","","","","1","1","102","0","0","0","102","2021-10-20 03:12:09","2021-10-20 03:12:09");
INSERT INTO product_sales VALUES("568","353","1","","","","1","1","340","0","10","34","374","2021-11-14 02:39:29","2021-11-14 02:39:29");
INSERT INTO product_sales VALUES("569","354","22","","","","1","1","1000","0","10","100","1100","2021-11-15 01:03:09","2021-11-15 01:03:09");
INSERT INTO product_sales VALUES("570","354","71","1","","","1","1","2","0","0","0","2","2021-11-15 01:03:09","2021-11-15 01:03:09");
INSERT INTO product_sales VALUES("571","354","1","","","","1","1","400","0","10","40","440","2021-11-15 01:03:09","2021-11-15 01:03:09");
INSERT INTO product_sales VALUES("572","355","25","","","","1","1","1000","0","10","100","1100","2021-11-24 07:28:58","2021-11-24 07:28:58");
INSERT INTO product_sales VALUES("573","355","22","","","","1","1","1000","0","10","100","1100","2021-11-24 07:28:58","2021-11-24 07:28:58");
INSERT INTO product_sales VALUES("574","355","13","","","","1","0","21","0","0","0","21","2021-11-24 07:28:58","2021-11-24 07:28:58");
INSERT INTO product_sales VALUES("575","355","3","","","","2","1","250","0","0","0","500","2021-11-24 07:28:58","2021-11-24 07:28:58");
INSERT INTO product_sales VALUES("576","355","1","","","","1","1","400","0","10","40","440","2021-11-24 07:28:58","2021-11-24 07:28:58");
INSERT INTO product_sales VALUES("577","356","48","","2","","1","1","13","0","0","0","13","2021-12-07 08:09:32","2021-12-07 08:09:32");
INSERT INTO product_sales VALUES("578","356","5","","","","1","1","120","0","0","0","120","2021-12-07 08:09:32","2021-12-07 08:09:32");
INSERT INTO product_sales VALUES("579","356","1","","","","1","1","400","0","10","40","440","2021-12-07 08:09:32","2021-12-07 08:09:32");
INSERT INTO product_sales VALUES("584","360","2","","","","2","1","10.43","0","15","3.13","24","2021-12-22 08:03:13","2022-01-30 02:37:54");
INSERT INTO product_sales VALUES("587","362","72","","","","2","1","4.25","0","0","0","8.5","2022-02-03 04:59:31","2022-02-03 04:59:31");
INSERT INTO product_sales VALUES("588","363","5","","","","2","1","118","0","0","0","236","2022-02-03 08:05:47","2022-05-22 06:39:48");
INSERT INTO product_sales VALUES("589","363","3","","","","1","1","250","0","0","0","250","2022-02-03 08:05:47","2022-05-22 06:39:48");
INSERT INTO product_sales VALUES("590","364","1","","","","1","1","400","0","10","40","440","2022-02-05 06:45:26","2022-02-05 08:31:58");
INSERT INTO product_sales VALUES("591","365","3","","","","1","1","250","0","0","0","250","2022-02-05 06:46:16","2022-02-05 08:31:09");
INSERT INTO product_sales VALUES("598","372","5","","","","1","1","120","0","0","0","120","2022-02-19 01:08:15","2022-02-20 10:15:54");
INSERT INTO product_sales VALUES("603","376","1","","","","1","1","400","0","10","40","440","2022-02-20 09:36:38","2022-02-20 10:15:23");
INSERT INTO product_sales VALUES("604","377","3","","","","2","1","250","0","0","0","500","2022-02-27 00:59:05","2022-03-05 01:16:22");
INSERT INTO product_sales VALUES("608","377","5","","","","1","1","120","0","0","0","120","2022-03-05 01:12:38","2022-03-05 01:16:22");
INSERT INTO product_sales VALUES("609","363","13","","","","1","0","15","0","0","0","15","2022-03-08 03:25:13","2022-05-22 06:39:48");
INSERT INTO product_sales VALUES("610","363","75","","","","1","0","20","0","0","0","20","2022-03-08 03:25:13","2022-05-22 06:39:48");
INSERT INTO product_sales VALUES("611","379","22","","","","1","1","1000","0","10","100","1100","2022-03-09 00:59:01","2022-03-09 00:59:01");
INSERT INTO product_sales VALUES("612","379","3","","","","1","1","250","0","0","0","250","2022-03-09 00:59:01","2022-03-09 00:59:01");
INSERT INTO product_sales VALUES("613","379","1","","","","1","1","400","0","10","40","440","2022-03-09 00:59:01","2022-03-09 00:59:01");
INSERT INTO product_sales VALUES("614","380","1","","","","1","1","400","0","10","40","440","2022-03-12 09:20:27","2022-03-13 00:37:35");
INSERT INTO product_sales VALUES("615","381","3","","","","1","1","250","0","0","0","250","2022-03-12 09:24:52","2022-03-12 09:25:35");
INSERT INTO product_sales VALUES("616","381","5","","","","1","1","110","0","0","0","110","2022-03-12 09:25:35","2022-03-12 09:25:35");
INSERT INTO product_sales VALUES("617","382","5","","","","1","1","120","0","0","0","120","2022-04-24 01:01:44","2022-04-24 01:01:44");
INSERT INTO product_sales VALUES("618","382","72","","","","1","1","5","0","0","0","5","2022-04-24 01:01:44","2022-04-24 01:01:44");
INSERT INTO product_sales VALUES("619","382","25","","","","1","1","1000","0","10","100","1100","2022-04-24 01:01:44","2022-04-24 01:01:44");
INSERT INTO product_sales VALUES("620","383","25","","","","2","1","1000","0","10","200","2200","2022-05-16 01:24:27","2022-05-16 01:24:27");
INSERT INTO product_sales VALUES("621","383","22","","","","1","1","1000","0","10","100","1100","2022-05-16 01:24:27","2022-05-16 01:24:27");
INSERT INTO product_sales VALUES("623","385","3","","","","1","1","250","0","0","0","250","2022-05-26 11:01:12","2022-05-26 11:01:12");
INSERT INTO product_sales VALUES("624","385","5","","","","1","1","120","0","0","0","120","2022-05-26 11:01:12","2022-05-26 11:01:12");
INSERT INTO product_sales VALUES("625","386","1","","","","2","1","400","0","10","80","880","2022-05-31 02:20:26","2022-06-06 07:11:27");
INSERT INTO product_sales VALUES("644","397","5","","","","1","1","120","0","0","0","120","2022-06-06 07:14:13","2022-06-06 07:14:13");
INSERT INTO product_sales VALUES("645","397","22","","","","1","1","1000","0","10","100","1100","2022-06-06 07:14:13","2022-06-06 07:14:13");
INSERT INTO product_sales VALUES("646","397","25","","","","1","1","1000","0","10","100","1100","2022-06-06 07:14:13","2022-06-06 07:14:13");
INSERT INTO product_sales VALUES("649","400","25","","","","1","1","1000","0","10","100","1100","2022-06-14 01:57:19","2022-06-14 01:57:19");
INSERT INTO product_sales VALUES("650","400","22","","","","2","1","1000","0","10","200","2200","2022-06-14 01:57:19","2022-06-14 01:57:19");
INSERT INTO product_sales VALUES("653","403","5","","","","1","1","120","0","0","0","120","2022-06-14 07:01:44","2022-06-14 07:01:44");
INSERT INTO product_sales VALUES("654","404","31","","","","1","1","300","0","0","0","300","2022-06-15 00:23:30","2022-06-15 00:23:30");
INSERT INTO product_sales VALUES("665","409","1","","","","1","1","400","0","10","40","440","2022-08-09 01:54:44","2022-08-09 01:54:44");
INSERT INTO product_sales VALUES("666","409","5","","","","1","1","120","0","0","0","120","2022-08-09 01:54:44","2022-08-09 01:54:44");
INSERT INTO product_sales VALUES("667","409","87","","30","","1","1","31","0","0","0","31","2022-08-09 01:54:44","2022-08-09 01:54:44");
INSERT INTO product_sales VALUES("668","410","5","","","","1","1","120","0","0","0","120","2022-08-25 03:31:37","2022-08-25 03:31:37");
INSERT INTO product_sales VALUES("669","411","1","","","","1","1","400","0","10","40","440","2022-09-01 02:36:19","2022-09-01 02:36:19");
INSERT INTO product_sales VALUES("670","411","3","","","","1","1","250","0","0","0","250","2022-09-01 02:36:19","2022-09-01 02:36:19");
INSERT INTO product_sales VALUES("671","412","3","","","","1","1","250","0","0","0","250","2022-09-04 03:17:55","2022-09-04 03:17:55");
INSERT INTO product_sales VALUES("672","412","1","","","","1","1","400","0","10","40","440","2022-09-04 03:17:55","2022-09-04 03:17:55");
INSERT INTO product_sales VALUES("673","413","90","","35","","1","1","1100","0","10","110","1210","2022-09-11 03:18:26","2022-09-11 03:18:26");
INSERT INTO product_sales VALUES("674","414","1","","","","1","1","400","0","10","40","440","2022-09-15 10:59:00","2022-09-15 10:59:00");
INSERT INTO product_sales VALUES("675","415","1","","","","1","1","400","0","10","40","440","2022-10-02 10:16:36","2022-10-02 10:16:36");
INSERT INTO product_sales VALUES("676","415","5","","","","1","1","120","0","0","0","120","2022-10-02 10:16:36","2022-10-02 10:16:36");
INSERT INTO product_sales VALUES("786","494","97","","","","100","1","1143.67","12708","0","0","114367","2023-10-12 20:38:15","2023-10-12 20:38:15");
INSERT INTO product_sales VALUES("787","495","100","","","","10","1","641.8","0","0","0","6418","2023-10-28 13:19:10","2023-10-28 13:30:33");
INSERT INTO product_sales VALUES("788","496","100","","","","2","1","762.85","0","0","0","1525.7","2023-10-28 13:33:14","2023-10-28 13:33:14");
INSERT INTO product_sales VALUES("789","497","98","","","","2","1","553","0","0","0","1106","2023-10-28 13:34:41","2023-10-28 13:34:41");
INSERT INTO product_sales VALUES("790","498","100","","","","10","1","643","0","0","0","6430","2023-10-28 13:38:44","2023-10-28 13:38:44");
INSERT INTO product_sales VALUES("791","499","96","","","","10","1","609","0","0","0","6090","2023-10-28 13:40:22","2023-10-28 13:40:22");
INSERT INTO product_sales VALUES("792","500","98","","","","2","1","0","0","0","0","0","2023-10-28 13:49:17","2023-10-28 14:14:23");
INSERT INTO product_sales VALUES("793","501","100","","","","1","1","0","0","0","0","0","2023-10-28 14:19:02","2023-10-28 14:19:02");
INSERT INTO product_sales VALUES("794","502","100","","","","1","1","0","0","0","0","0","2023-10-28 14:23:04","2023-10-28 14:23:04");
INSERT INTO product_sales VALUES("796","504","100","","","","3","1","0","0","0","0","0","2023-10-28 14:29:23","2023-10-28 14:29:23");
INSERT INTO product_sales VALUES("797","505","100","","","","1","1","0","0","0","0","0","2023-10-28 14:32:01","2023-10-28 14:32:01");
INSERT INTO product_sales VALUES("798","506","100","","","","1","1","0","0","0","0","0","2023-10-28 14:33:18","2023-10-28 14:33:18");
INSERT INTO product_sales VALUES("799","507","100","","","","1","1","0","0","0","0","0","2023-10-28 14:37:30","2023-10-28 14:37:30");
INSERT INTO product_sales VALUES("800","508","99","","","","1","1","0","0","0","0","0","2023-10-28 14:38:44","2023-10-28 14:38:44");
INSERT INTO product_sales VALUES("801","509","96","","","","1","1","0","0","0","0","0","2023-10-28 14:41:39","2023-10-28 14:41:39");
INSERT INTO product_sales VALUES("802","510","100","","","","2","1","0","0","0","0","0","2023-10-28 14:42:48","2023-10-28 14:42:48");
INSERT INTO product_sales VALUES("803","511","99","","","","1","1","0","0","0","0","0","2023-10-28 14:44:13","2023-10-28 14:44:13");
INSERT INTO product_sales VALUES("804","512","100","","","","2","1","0","0","0","0","0","2023-10-30 17:22:15","2023-10-30 17:22:15");
INSERT INTO product_sales VALUES("805","513","100","","","","1","1","0","0","0","0","0","2023-10-30 17:38:32","2023-10-30 17:38:32");
INSERT INTO product_sales VALUES("806","514","100","","","","1","1","0","0","0","0","0","2023-10-30 17:44:13","2023-10-30 17:44:13");
INSERT INTO product_sales VALUES("807","515","100","","","","1","1","0","0","0","0","0","2023-10-30 17:48:08","2023-10-30 17:48:08");
INSERT INTO product_sales VALUES("808","516","100","","","","1","1","0","0","0","0","0","2023-10-30 17:52:10","2023-10-30 17:52:10");
INSERT INTO product_sales VALUES("809","516","99","","","","1","1","0","0","0","0","0","2023-10-30 17:52:11","2023-10-30 17:52:11");
INSERT INTO product_sales VALUES("810","517","98","","","","2","1","0","0","0","0","0","2023-10-30 17:55:26","2023-10-30 17:55:26");
INSERT INTO product_sales VALUES("811","518","99","","","","1","1","0","0","0","0","0","2023-10-30 17:57:36","2023-10-30 17:57:36");
INSERT INTO product_sales VALUES("812","519","97","","","","1","1","0","0","0","0","0","2023-10-30 18:11:16","2023-10-30 18:11:16");
INSERT INTO product_sales VALUES("813","520","97","","","","1","1","406640","0","0","0","406640","2023-10-30 18:13:48","2023-10-30 18:13:48");
INSERT INTO product_sales VALUES("814","521","97","","","","1","1","0","0","0","0","0","2023-10-30 18:15:30","2023-10-30 18:15:30");
INSERT INTO product_sales VALUES("815","522","100","","","","1","1","0","0","0","0","0","2023-10-30 18:22:37","2023-10-30 18:22:37");
INSERT INTO product_sales VALUES("816","523","100","","","","3","1","2168.77","0","0","0","6506.31","2023-10-30 18:26:43","2023-10-30 18:26:43");
INSERT INTO product_sales VALUES("817","524","100","","","","3","1","722","240.75","0","0","2166","2023-10-30 18:38:57","2023-10-30 18:38:57");
INSERT INTO product_sales VALUES("818","525","100","","","","5","1","723","400","0","0","3615","2023-10-30 18:53:45","2023-10-30 18:53:45");
INSERT INTO product_sales VALUES("819","526","100","","","","2","1","524.25","116","0","0","1048.5","2023-10-30 19:01:09","2023-10-30 19:01:09");
INSERT INTO product_sales VALUES("820","527","98","","","","2","1","524.25","116","0","0","1048.5","2023-10-30 19:07:08","2023-10-30 19:07:08");
INSERT INTO product_sales VALUES("821","528","100","","","","1","1","0","0","0","0","0","2023-10-30 19:59:42","2023-10-30 19:59:42");
INSERT INTO product_sales VALUES("822","529","96","","","","185","1","684.67","14073.88","0","0","126664.87","2023-11-01 17:14:40","2023-11-01 17:26:30");
INSERT INTO product_sales VALUES("823","529","95","","","","226","1","715.28","17960.22","0","0","161653.28","2023-11-01 17:14:41","2023-11-01 17:26:30");
INSERT INTO product_sales VALUES("824","529","100","","","","1705","1","722.93","136945.6","0","0","1232595.65","2023-11-01 17:14:41","2023-11-01 17:26:30");
INSERT INTO product_sales VALUES("825","529","99","","","","215","1","875.93","20923.8","0","0","188324.95","2023-11-01 17:14:41","2023-11-01 17:26:30");
INSERT INTO product_sales VALUES("826","529","98","","","","150","1","524.03","8733","0","0","78604.5","2023-11-01 17:14:41","2023-11-01 17:26:30");
INSERT INTO product_sales VALUES("827","530","97","","","","1","1","0","0","0","0","0","2023-11-06 19:40:08","2023-11-06 19:40:08");
INSERT INTO product_sales VALUES("828","530","100","","","","2","1","0","0","0","0","0","2023-11-06 19:40:08","2023-11-06 19:40:08");
INSERT INTO product_sales VALUES("830","532","100","","","","1","1","55","0","0","0","55","2023-11-15 14:16:51","2023-11-15 14:16:51");
INSERT INTO product_sales VALUES("831","532","98","","","","2","1","55","0","0","0","110","2023-11-15 14:16:51","2023-11-15 14:16:51");
INSERT INTO product_sales VALUES("832","533","100","","","","10","1","643","1607.5","0","0","6430","2023-11-15 14:37:37","2023-11-15 14:37:37");
INSERT INTO product_sales VALUES("833","533","95","","","","10","1","635.8","1589.5","0","0","6358","2023-11-15 14:37:37","2023-11-15 14:37:37");
INSERT INTO product_sales VALUES("834","534","99","","","","1","1","0","0","0","0","0","2023-11-21 13:35:40","2023-11-21 13:35:40");
INSERT INTO product_sales VALUES("835","534","97","","","","2","1","0","0","0","0","0","2023-11-21 13:35:40","2023-11-21 13:35:40");
INSERT INTO product_sales VALUES("836","534","100","","","","2","1","0","0","0","0","0","2023-11-21 13:35:40","2023-11-21 13:35:40");
INSERT INTO product_sales VALUES("837","535","98","","","","2","1","0","0","0","0","0","2023-11-21 13:54:37","2023-11-21 13:54:37");
INSERT INTO product_sales VALUES("838","535","100","","","","4","1","0","0","0","0","0","2023-11-21 13:54:37","2023-11-21 13:54:37");
INSERT INTO product_sales VALUES("839","535","99","","","","1","1","0","0","0","0","0","2023-11-21 13:54:37","2023-11-21 13:54:37");
INSERT INTO product_sales VALUES("840","535","97","","","","3","1","0","0","0","0","0","2023-11-21 13:54:37","2023-11-21 13:54:37");
INSERT INTO product_sales VALUES("841","536","99","","","","1","1","0","0","0","0","0","2023-11-21 14:00:48","2023-11-21 14:00:48");
INSERT INTO product_sales VALUES("842","536","97","","","","2","1","0","0","0","0","0","2023-11-21 14:00:48","2023-11-21 14:00:48");
INSERT INTO product_sales VALUES("843","537","97","","","","2","1","0","0","0","0","0","2023-11-21 14:08:43","2023-11-21 14:08:43");
INSERT INTO product_sales VALUES("844","538","99","","","","1","1","0","0","0","0","0","2023-11-27 18:18:26","2023-11-27 18:18:26");
INSERT INTO product_sales VALUES("845","538","98","","","","2","1","0","0","0","0","0","2023-11-27 18:18:26","2023-11-27 18:18:26");
INSERT INTO product_sales VALUES("846","538","100","","","","3","1","0","0","0","0","0","2023-11-27 18:18:26","2023-11-27 18:18:26");
INSERT INTO product_sales VALUES("847","538","95","","","","3","1","0","0","0","0","0","2023-11-27 18:18:26","2023-11-27 18:18:26");
INSERT INTO product_sales VALUES("848","539","100","","","","1395","1","722.92","112053.38","0","0","1008480.37","2023-12-02 14:29:46","2023-12-02 15:51:52");
INSERT INTO product_sales VALUES("849","539","99","","","","155","1","875.92","15085.38","0","0","135768.38","2023-12-02 14:29:46","2023-12-02 15:51:52");
INSERT INTO product_sales VALUES("850","539","98","","","","73","1","524.03","4250.06","0","0","38254.19","2023-12-02 14:29:46","2023-12-02 15:51:52");
INSERT INTO product_sales VALUES("851","539","96","","","","310","1","684.68","23581.7","0","0","212250.8","2023-12-02 14:29:46","2023-12-02 15:51:52");
INSERT INTO product_sales VALUES("852","539","95","","","","310","1","715.28","24635.7","0","0","221736.8","2023-12-02 14:29:46","2023-12-02 15:51:52");
INSERT INTO product_sales VALUES("853","540","100","","","","2","1","0","0","0","0","0","2023-12-07 12:14:51","2023-12-07 12:14:51");
INSERT INTO product_sales VALUES("854","540","95","","","","3","1","0","0","0","0","0","2023-12-07 12:14:51","2023-12-07 12:14:51");
INSERT INTO product_sales VALUES("855","541","95","","","","5","1","635.8","794.75","0","0","3179","2023-12-13 15:59:10","2023-12-13 16:41:21");
INSERT INTO product_sales VALUES("857","543","96","","","","5","1","646.64","570.55","0","0","3233.2","2023-12-18 17:36:56","2023-12-18 17:36:56");
INSERT INTO product_sales VALUES("858","543","99","","","","5","1","827.27","729.9","0","0","4136.35","2023-12-18 17:36:56","2023-12-18 17:36:56");
INSERT INTO product_sales VALUES("859","543","100","","","","5","1","682.77","602.4","0","0","3413.85","2023-12-18 17:36:56","2023-12-18 17:36:56");
INSERT INTO product_sales VALUES("860","544","99","","","","2","1","0","0","0","0","0","2023-12-18 17:54:04","2023-12-18 17:54:04");
INSERT INTO product_sales VALUES("861","544","100","","","","3","1","0","0","0","0","0","2023-12-18 17:54:04","2023-12-18 17:54:04");
INSERT INTO product_sales VALUES("862","545","97","","","","1","1","0","0","0","0","0","2024-01-01 18:58:39","2024-01-01 18:58:39");
INSERT INTO product_sales VALUES("863","545","98","","","","2","1","0","0","0","0","0","2024-01-01 18:58:39","2024-01-01 18:58:39");
INSERT INTO product_sales VALUES("864","545","100","","","","5","1","0","0","0","0","0","2024-01-01 18:58:39","2024-01-01 18:58:39");
INSERT INTO product_sales VALUES("865","546","97","","","","45","1","1143.67","5718.38","0","0","51465.38","2024-01-02 15:08:11","2024-01-02 15:08:11");
INSERT INTO product_sales VALUES("866","546","100","","","","775","1","722.92","62251.88","0","0","560266.88","2024-01-02 15:08:11","2024-01-02 15:08:11");
INSERT INTO product_sales VALUES("867","546","99","","","","205","1","875.92","19951.63","0","0","179564.63","2024-01-02 15:08:11","2024-01-02 15:08:11");
INSERT INTO product_sales VALUES("868","546","95","","","","200","1","715.28","15894","0","0","143056","2024-01-02 15:08:11","2024-01-02 15:08:11");
INSERT INTO product_sales VALUES("869","547","95","","","","5","1","635.8","794.75","0","0","3179","2024-01-08 18:22:43","2024-01-08 18:22:43");
INSERT INTO product_sales VALUES("870","548","96","","","","60","1","684.67","4564.5","0","0","41080.5","2024-01-16 16:03:28","2024-01-16 16:03:28");
INSERT INTO product_sales VALUES("871","549","98","","","","100","1","524.03","5822","0","0","52403","2024-01-17 16:27:20","2024-01-17 16:27:20");
INSERT INTO product_sales VALUES("872","550","98","","","","5","1","0","0","0","0","0","2024-01-18 11:52:38","2024-01-18 11:52:38");
INSERT INTO product_sales VALUES("873","550","100","","","","4","1","0","0","0","0","0","2024-01-18 11:52:38","2024-01-18 11:52:38");
INSERT INTO product_sales VALUES("874","550","97","","","","2","1","0","0","0","0","0","2024-01-18 11:52:38","2024-01-18 11:52:38");
INSERT INTO product_sales VALUES("875","550","99","","","","1","1","0","0","0","0","0","2024-01-18 11:52:38","2024-01-18 11:52:38");
INSERT INTO product_sales VALUES("876","551","95","","","","1","1","0","0","0","0","0","2024-01-23 12:42:53","2024-01-23 12:42:53");
INSERT INTO product_sales VALUES("877","551","97","","","","2","1","0","0","0","0","0","2024-01-23 12:42:53","2024-01-23 12:42:53");
INSERT INTO product_sales VALUES("879","553","100","","","","6","1","0","0","0","0","0","2024-01-26 14:17:39","2024-01-26 14:17:39");
INSERT INTO product_sales VALUES("880","553","97","","","","6","1","0","0","0","0","0","2024-01-26 14:17:39","2024-01-26 14:17:39");
INSERT INTO product_sales VALUES("881","554","96","","","","500","1","675.75","0","0","0","337875","2024-01-26 14:35:19","2024-05-12 19:44:58");
INSERT INTO product_sales VALUES("882","554","100","","","","500","1","760.75","0","0","0","380375","2024-01-26 14:35:19","2024-05-12 19:44:58");
INSERT INTO product_sales VALUES("883","554","97","","","","150","1","1270.75","0","0","0","190612.5","2024-01-26 14:35:19","2024-05-12 19:44:58");
INSERT INTO product_sales VALUES("884","554","95","","","","150","1","752.25","0","0","0","112837.5","2024-01-26 14:35:19","2024-05-12 19:44:58");
INSERT INTO product_sales VALUES("885","555","99","","","","155","1","930.75","0","0","0","144266.25","2024-01-26 14:40:16","2024-01-26 14:44:14");
INSERT INTO product_sales VALUES("886","555","98","","","","100","1","582.25","0","0","0","58225","2024-01-26 14:40:16","2024-01-26 14:44:14");
INSERT INTO product_sales VALUES("889","557","100","","","","155","1","760.75","0","0","0","117916.25","2024-01-26 14:51:46","2024-01-26 14:51:46");
INSERT INTO product_sales VALUES("890","557","95","","","","155","1","752.25","0","0","0","116598.75","2024-01-26 14:51:46","2024-01-26 14:51:46");
INSERT INTO product_sales VALUES("891","558","98","","","","400","1","582.25","0","0","0","232900","2024-01-26 14:54:56","2024-01-26 14:54:56");
INSERT INTO product_sales VALUES("892","558","96","","","","300","1","675.75","0","0","0","202725","2024-01-26 14:54:56","2024-01-26 14:54:56");
INSERT INTO product_sales VALUES("893","558","100","","","","500","1","760.75","0","0","0","380375","2024-01-26 14:54:56","2024-01-26 14:54:56");
INSERT INTO product_sales VALUES("894","558","95","","","","100","1","752.25","0","0","0","75225","2024-01-26 14:54:56","2024-01-26 14:54:56");
INSERT INTO product_sales VALUES("895","559","100","","","","620","1","760.75","0","0","0","471665","2024-01-26 14:58:14","2024-01-26 14:58:14");
INSERT INTO product_sales VALUES("896","559","99","","","","310","1","930.75","0","0","0","288532.5","2024-01-26 14:58:14","2024-01-26 14:58:14");
INSERT INTO product_sales VALUES("897","559","95","","","","310","1","752.25","0","0","0","233197.5","2024-01-26 14:58:14","2024-01-26 14:58:14");
INSERT INTO product_sales VALUES("898","560","96","","","","82","1","684.68","6237.74","0","0","56143.76","2024-01-26 15:03:23","2024-01-26 15:03:23");
INSERT INTO product_sales VALUES("899","561","99","","","","155","1","837.68","14425.85","0","0","129840.4","2024-01-31 13:09:41","2024-01-31 13:09:41");
INSERT INTO product_sales VALUES("900","561","95","","","","155","1","677.03","11659.1","0","0","104939.65","2024-01-31 13:09:41","2024-01-31 13:09:41");
INSERT INTO product_sales VALUES("901","562","100","","","","1000","1","760.75","0","0","0","760750","2024-01-31 13:12:38","2024-01-31 13:12:38");
INSERT INTO product_sales VALUES("902","563","100","","","","153","1","760.75","0","0","0","116394.75","2024-01-31 13:15:15","2024-01-31 13:15:15");
INSERT INTO product_sales VALUES("903","564","96","","","","30","1","540.6","4054.5","0","0","16218","2024-01-31 13:20:42","2024-01-31 13:20:42");
INSERT INTO product_sales VALUES("904","564","100","","","","20","1","608.6","3043","0","0","12172","2024-01-31 13:20:42","2024-01-31 13:20:42");
INSERT INTO product_sales VALUES("905","564","99","","","","15","1","744.6","2792.25","0","0","11169","2024-01-31 13:20:42","2024-01-31 13:20:42");
INSERT INTO product_sales VALUES("906","564","95","","","","10","1","601.8","1504.5","0","0","6018","2024-01-31 13:20:42","2024-01-31 13:20:42");
INSERT INTO product_sales VALUES("907","565","100","","","","1","1","570.57","190.18","0","0","570.57","2024-01-31 13:26:50","2024-01-31 13:26:50");
INSERT INTO product_sales VALUES("908","565","96","","","","1","1","506.82","168.93","0","0","506.82","2024-01-31 13:26:50","2024-01-31 13:26:50");
INSERT INTO product_sales VALUES("909","566","95","","","","155","1","677.03","11659.1","0","0","104939.65","2024-01-31 13:42:31","2024-01-31 13:42:31");
INSERT INTO product_sales VALUES("910","567","100","","","","620","1","684.67","47166.5","0","0","424498.5","2024-01-31 13:51:55","2024-01-31 13:51:55");
INSERT INTO product_sales VALUES("911","567","99","","","","310","1","837.68","28851.7","0","0","259680.8","2024-01-31 13:51:55","2024-01-31 13:51:55");
INSERT INTO product_sales VALUES("912","567","96","","","","310","1","608.18","20946.7","0","0","188535.8","2024-01-31 13:51:55","2024-01-31 13:51:55");
INSERT INTO product_sales VALUES("913","567","95","","","","78","1","677.03","5867.16","0","0","52808.34","2024-01-31 13:51:55","2024-01-31 13:51:55");
INSERT INTO product_sales VALUES("914","568","100","","","","15","1","608.6","2282.25","0","0","9129","2024-01-31 14:18:01","2024-01-31 14:18:01");
INSERT INTO product_sales VALUES("915","568","99","","","","5","1","744.6","930.75","0","0","3723","2024-01-31 14:18:01","2024-01-31 14:18:01");
INSERT INTO product_sales VALUES("916","568","96","","","","20","1","540.6","2703","0","0","10812","2024-01-31 14:18:01","2024-01-31 14:18:01");
INSERT INTO product_sales VALUES("917","568","95","","","","10","1","601.8","1504.5","0","0","6018","2024-01-31 14:18:01","2024-01-31 14:18:01");
INSERT INTO product_sales VALUES("918","569","95","","","","10","1","601.8","1504.5","0","0","6018","2024-01-31 14:22:20","2024-01-31 14:22:20");
INSERT INTO product_sales VALUES("919","569","99","","","","10","1","744.6","1861.5","0","0","7446","2024-01-31 14:22:20","2024-01-31 14:22:20");
INSERT INTO product_sales VALUES("920","569","96","","","","20","1","540.6","2703","0","0","10812","2024-01-31 14:22:20","2024-01-31 14:22:20");
INSERT INTO product_sales VALUES("921","569","100","","","","10","1","608.6","1521.5","0","0","6086","2024-01-31 14:22:20","2024-01-31 14:22:20");
INSERT INTO product_sales VALUES("922","570","95","","","","2","1","677.02","150.45","0","0","1354.05","2024-01-31 14:33:36","2024-01-31 14:33:36");
INSERT INTO product_sales VALUES("923","571","99","","","","155","1","875.92","15085.38","0","0","135768.38","2024-01-31 14:49:36","2024-01-31 14:49:36");
INSERT INTO product_sales VALUES("924","572","100","","","","775","1","722.92","62251.88","0","0","560266.88","2024-01-31 15:00:03","2024-01-31 15:00:03");
INSERT INTO product_sales VALUES("925","573","98","","","","50","1","524.02","2911.25","0","0","26201.25","2024-01-31 15:46:08","2024-01-31 15:46:08");
INSERT INTO product_sales VALUES("926","573","100","","","","250","1","684.67","19018.75","0","0","171168.75","2024-01-31 15:46:08","2024-01-31 15:46:08");
INSERT INTO product_sales VALUES("927","573","97","","","","50","1","1143.67","6353.75","0","0","57183.75","2024-01-31 15:46:08","2024-01-31 15:46:08");
INSERT INTO product_sales VALUES("928","573","96","","","","50","1","608.17","3378.75","0","0","30408.75","2024-01-31 15:46:08","2024-01-31 15:46:08");
INSERT INTO product_sales VALUES("929","573","95","","","","350","1","677.02","26328.75","0","0","236958.75","2024-01-31 15:46:08","2024-01-31 15:46:08");
INSERT INTO product_sales VALUES("930","574","100","","","","10","1","608.6","1521.5","0","0","6086","2024-01-31 15:51:40","2024-01-31 15:51:40");
INSERT INTO product_sales VALUES("931","575","100","","","","10","1","669.46","912.9","0","0","6694.6","2024-01-31 15:54:32","2024-01-31 15:54:32");
INSERT INTO product_sales VALUES("932","576","100","","","","5","1","642.6","803.25","0","0","3213","2024-01-31 15:58:42","2024-01-31 15:58:42");
INSERT INTO product_sales VALUES("933","576","99","","","","10","1","744.6","1861.5","0","0","7446","2024-01-31 15:58:42","2024-01-31 15:58:42");
INSERT INTO product_sales VALUES("934","576","96","","","","20","1","540.6","2703","0","0","10812","2024-01-31 15:58:42","2024-01-31 15:58:42");
INSERT INTO product_sales VALUES("935","577","100","","","","1550","1","722.92","124503.75","0","0","1120533.75","2024-02-01 13:44:14","2024-02-01 13:44:14");
INSERT INTO product_sales VALUES("936","577","99","","","","155","1","875.92","15085.38","0","0","135768.38","2024-02-01 13:44:14","2024-02-01 13:44:14");
INSERT INTO product_sales VALUES("937","577","97","","","","100","1","1143.67","12707.5","0","0","114367.5","2024-02-01 13:44:14","2024-02-01 13:44:14");
INSERT INTO product_sales VALUES("938","577","96","","","","200","1","684.67","15215","0","0","136935","2024-02-01 13:44:14","2024-02-01 13:44:14");
INSERT INTO product_sales VALUES("939","577","95","","","","358","1","715.27","28452.05","0","0","256068.45","2024-02-01 13:44:14","2024-02-01 13:44:14");
INSERT INTO product_sales VALUES("940","577","98","","","","100","1","524.02","5822.5","0","0","52402.5","2024-02-01 13:44:14","2024-02-01 13:44:14");
INSERT INTO product_sales VALUES("941","578","96","","","","15","1","540.6","2027.25","0","0","8109","2024-02-01 14:02:22","2024-02-01 14:02:22");
INSERT INTO product_sales VALUES("942","579","100","","","","10","1","642.6","1606.5","0","0","6426","2024-02-01 14:06:03","2024-02-01 14:06:03");
INSERT INTO product_sales VALUES("943","580","100","","","","1085","1","722.92","87152.63","0","0","784373.63","2024-02-06 13:16:17","2024-02-06 13:16:17");
INSERT INTO product_sales VALUES("944","580","99","","","","200","1","875.92","19465","0","0","175185","2024-02-06 13:16:17","2024-02-06 13:16:17");
INSERT INTO product_sales VALUES("945","580","98","","","","100","1","524.02","5822.5","0","0","52402.5","2024-02-06 13:16:17","2024-02-06 13:16:17");
INSERT INTO product_sales VALUES("946","580","97","","","","50","1","1143.67","6353.75","0","0","57183.75","2024-02-06 13:16:17","2024-02-06 13:16:17");
INSERT INTO product_sales VALUES("947","580","96","","","","200","1","608.17","13515","0","0","121635","2024-02-06 13:16:17","2024-02-06 13:16:17");
INSERT INTO product_sales VALUES("948","580","95","","","","310","1","677.02","23319.75","0","0","209877.75","2024-02-06 13:16:17","2024-02-06 13:16:17");
INSERT INTO product_sales VALUES("949","581","99","","","","15","1","744.6","2792.25","0","0","11169","2024-02-06 13:20:23","2024-02-06 13:20:23");
INSERT INTO product_sales VALUES("950","581","96","","","","15","1","540.6","2027.25","0","0","8109","2024-02-06 13:20:23","2024-02-06 13:20:23");
INSERT INTO product_sales VALUES("951","582","95","","","","155","1","715.27","12318.63","0","0","110867.63","2024-02-06 13:41:56","2024-02-06 13:41:56");
INSERT INTO product_sales VALUES("952","582","99","","","","155","1","875.92","15085.38","0","0","135768.38","2024-02-06 13:41:56","2024-02-06 13:41:56");
INSERT INTO product_sales VALUES("953","582","96","","","","155","1","608.17","10474.13","0","0","94267.13","2024-02-06 13:41:56","2024-02-06 13:41:56");
INSERT INTO product_sales VALUES("954","582","100","","","","465","1","722.92","37351.13","0","0","336160.13","2024-02-06 13:41:56","2024-02-06 13:41:56");
INSERT INTO product_sales VALUES("955","583","100","","","","10","1","722.92","803.25","0","0","7229.25","2024-02-06 13:44:29","2024-02-06 13:44:29");
INSERT INTO product_sales VALUES("956","584","100","","","","10","1","642.6","1606.5","0","0","6426","2024-02-06 14:29:46","2024-02-10 13:58:19");
INSERT INTO product_sales VALUES("957","584","99","","","","20","1","778.6","3893","0","0","15572","2024-02-06 14:29:46","2024-02-10 13:58:19");
INSERT INTO product_sales VALUES("958","584","96","","","","20","1","540.6","2703","0","0","10812","2024-02-06 14:29:46","2024-02-10 13:58:19");
INSERT INTO product_sales VALUES("959","584","95","","","","10","1","601.8","1504.5","0","0","6018","2024-02-06 14:29:46","2024-02-10 13:58:19");
INSERT INTO product_sales VALUES("960","585","98","","","","15","1","407.57","2620.13","0","0","6113.63","2024-02-06 14:34:12","2024-02-06 14:34:12");
INSERT INTO product_sales VALUES("961","586","100","","","","50","1","562.27","12048.75","0","0","28113.75","2024-02-06 14:43:46","2024-02-06 14:43:46");
INSERT INTO product_sales VALUES("962","587","100","","","","155","1","722.92","12450.38","0","0","112053.38","2024-02-06 14:55:01","2024-02-06 14:55:01");
INSERT INTO product_sales VALUES("963","587","99","","","","155","1","875.92","15085.38","0","0","135768.38","2024-02-06 14:55:01","2024-02-06 14:55:01");
INSERT INTO product_sales VALUES("964","587","97","","","","155","1","1143.67","19696.63","0","0","177269.63","2024-02-06 14:55:01","2024-02-06 14:55:01");
INSERT INTO product_sales VALUES("965","587","96","","","","100","1","608.17","6757.5","0","0","60817.5","2024-02-06 14:55:01","2024-02-06 14:55:01");
INSERT INTO product_sales VALUES("966","588","100","","","","1240","1","722.92","99603","0","0","896427","2024-02-06 15:02:33","2024-02-06 15:02:33");
INSERT INTO product_sales VALUES("967","588","99","","","","141","1","875.92","13722.83","0","0","123505.42","2024-02-06 15:02:33","2024-02-06 15:02:33");
INSERT INTO product_sales VALUES("968","588","98","","","","150","1","524.02","8733.75","0","0","78603.75","2024-02-06 15:02:33","2024-02-06 15:02:33");
INSERT INTO product_sales VALUES("969","588","96","","","","50","1","608.18","3378.5","0","0","30409","2024-02-06 15:02:33","2024-02-06 15:02:33");
INSERT INTO product_sales VALUES("970","588","95","","","","326","1","715.27","25908.85","0","0","233179.65","2024-02-06 15:02:33","2024-02-06 15:02:33");
INSERT INTO product_sales VALUES("971","589","100","","","","5","1","722.92","401.63","0","0","3614.63","2024-02-06 15:08:44","2024-02-06 15:08:44");
INSERT INTO product_sales VALUES("972","590","100","","","","10","1","642.6","1606.5","0","0","6426","2024-02-06 15:14:46","2024-02-06 15:14:46");
INSERT INTO product_sales VALUES("973","591","99","","","","10","1","778.6","1946.5","0","0","7786","2024-02-06 15:20:34","2024-02-06 15:20:34");
INSERT INTO product_sales VALUES("974","591","96","","","","10","1","608.6","1521.5","0","0","6086","2024-02-06 15:20:34","2024-02-06 15:20:34");
INSERT INTO product_sales VALUES("975","591","95","","","","6","1","601.8","902.7","0","0","3610.8","2024-02-06 15:20:34","2024-02-06 15:20:34");
INSERT INTO product_sales VALUES("976","592","100","","","","500","1","722.92","40162.5","0","0","361462.5","2024-02-06 15:28:43","2024-02-06 15:28:43");
INSERT INTO product_sales VALUES("977","592","99","","","","170","1","875.92","16545.25","0","0","148907.25","2024-02-06 15:28:43","2024-02-06 15:28:43");
INSERT INTO product_sales VALUES("978","592","98","","","","50","1","524.02","2911.25","0","0","26201.25","2024-02-06 15:28:43","2024-02-06 15:28:43");
INSERT INTO product_sales VALUES("979","592","96","","","","100","1","684.67","7607.5","0","0","68467.5","2024-02-06 15:28:43","2024-02-06 15:28:43");
INSERT INTO product_sales VALUES("980","592","95","","","","155","1","715.27","12318.63","0","0","110867.63","2024-02-06 15:28:43","2024-02-06 15:28:43");
INSERT INTO product_sales VALUES("981","593","100","","","","987","1","722.92","79280.78","0","0","713526.97","2024-02-06 15:36:23","2024-02-06 15:36:23");
INSERT INTO product_sales VALUES("982","594","95","","","","155","1","715.27","12318.63","0","0","110867.63","2024-02-06 15:38:02","2024-02-06 15:38:02");
INSERT INTO product_sales VALUES("983","595","100","","","","10","1","642.6","1606.5","0","0","6426","2024-02-06 20:18:02","2024-02-06 20:18:02");
INSERT INTO product_sales VALUES("984","596","95","","","","5","1","635.8","794.75","0","0","3179","2024-02-06 20:20:38","2024-02-06 20:20:38");
INSERT INTO product_sales VALUES("985","597","97","","","","10","1","1150.03","1207.21","0","0","11500.29","2024-02-10 14:11:12","2024-02-10 14:11:12");
INSERT INTO product_sales VALUES("986","598","99","","","","3","1","880.74","277.52","0","0","2642.23","2024-02-10 14:15:20","2024-02-10 14:15:20");
INSERT INTO product_sales VALUES("987","598","100","","","","6","1","726.94","457.85","0","0","4361.65","2024-02-10 14:15:20","2024-02-10 14:15:20");
INSERT INTO product_sales VALUES("988","599","97","","","","10","1","1149.53","1207.2","0","0","11495.3","2024-02-10 14:18:23","2024-02-10 14:18:23");
INSERT INTO product_sales VALUES("989","600","100","","","","50","1","602.44","10040.6","0","0","30121.9","2024-02-10 14:21:37","2024-02-10 14:21:37");
INSERT INTO product_sales VALUES("990","601","99","","","","5","1","778.6","973.25","0","0","3893","2024-02-10 14:26:29","2024-02-10 14:26:29");
INSERT INTO product_sales VALUES("991","601","96","","","","10","1","540.6","1351.5","0","0","5406","2024-02-10 14:26:29","2024-02-10 14:26:29");
INSERT INTO product_sales VALUES("992","601","100","","","","10","1","642.6","1606.5","0","0","6426","2024-02-10 14:26:29","2024-02-10 14:26:29");
INSERT INTO product_sales VALUES("993","602","100","","","","3","1","722.92","240.98","0","0","2168.77","2024-02-10 14:30:56","2024-02-10 14:30:56");
INSERT INTO product_sales VALUES("994","602","96","","","","3","1","608.17","202.73","0","0","1824.52","2024-02-10 14:30:56","2024-02-10 14:30:56");
INSERT INTO product_sales VALUES("995","603","99","","","","15","1","744.6","2792.25","0","0","11169","2024-02-10 14:49:53","2024-02-10 14:49:53");
INSERT INTO product_sales VALUES("996","603","96","","","","15","1","540.6","2027.25","0","0","8109","2024-02-10 14:49:53","2024-02-10 14:49:53");
INSERT INTO product_sales VALUES("997","604","98","","","","5","1","494.91","436.69","0","0","2474.57","2024-02-10 14:57:29","2024-02-10 14:57:29");
INSERT INTO product_sales VALUES("998","604","100","","","","10","1","682.76","1204.9","0","0","6827.6","2024-02-10 14:57:29","2024-02-10 14:57:29");
INSERT INTO product_sales VALUES("999","605","100","","","","10","1","642.6","1606.5","0","0","6426","2024-02-10 15:01:32","2024-02-10 15:01:32");
INSERT INTO product_sales VALUES("1000","605","95","","","","10","1","601.8","1504.5","0","0","6018","2024-02-10 15:01:32","2024-02-10 15:01:32");
INSERT INTO product_sales VALUES("1001","606","98","","","","150","1","524.02","8733.75","0","0","78603.75","2024-02-10 15:08:03","2024-02-10 15:08:03");
INSERT INTO product_sales VALUES("1002","607","100","","","","6","1","763.09","240.97","0","0","4578.53","2024-02-10 15:13:43","2024-02-10 15:13:43");
INSERT INTO product_sales VALUES("1003","608","99","","","","10","1","778.6","1946.5","0","0","7786","2024-02-10 15:17:36","2024-02-10 15:17:36");
INSERT INTO product_sales VALUES("1004","608","96","","","","6","1","608.6","912.9","0","0","3651.6","2024-02-10 15:17:36","2024-02-10 15:17:36");
INSERT INTO product_sales VALUES("1005","608","95","","","","15","1","635.8","2384.25","0","0","9537","2024-02-10 15:17:36","2024-02-10 15:17:36");
INSERT INTO product_sales VALUES("1006","609","100","","","","10","1","642.6","1606.5","0","0","6426","2024-02-10 15:24:50","2024-02-10 15:24:50");
INSERT INTO product_sales VALUES("1007","610","99","","","","5","1","875.92","486.63","0","0","4379.63","2024-02-10 15:29:11","2024-02-10 15:29:11");
INSERT INTO product_sales VALUES("1008","610","96","","","","5","1","684.67","380.4","0","0","3423.35","2024-02-10 15:29:11","2024-02-10 15:29:11");
INSERT INTO product_sales VALUES("1009","610","100","","","","10","1","722.92","803.25","0","0","7229.25","2024-02-10 15:29:11","2024-02-10 15:29:11");
INSERT INTO product_sales VALUES("1010","611","100","","","","1085","1","722.92","87152.63","0","0","784373.63","2024-02-10 15:35:06","2024-02-10 15:35:06");
INSERT INTO product_sales VALUES("1011","612","98","","","","150","1","524.02","8733.75","0","0","78603.75","2024-02-10 15:37:00","2024-02-10 15:37:00");
INSERT INTO product_sales VALUES("1012","612","96","","","","155","1","684.67","11791.63","0","0","106124.63","2024-02-10 15:37:00","2024-02-10 15:37:00");
INSERT INTO product_sales VALUES("1013","613","100","","","","1366","1","722.92","109723.95","0","0","987515.55","2024-02-10 15:41:04","2024-02-10 15:41:04");
INSERT INTO product_sales VALUES("1014","613","99","","","","155","1","875.92","15085.38","0","0","135768.38","2024-02-10 15:41:04","2024-02-10 15:41:04");
INSERT INTO product_sales VALUES("1015","613","98","","","","20","1","524.02","1164.5","0","0","10480.5","2024-02-10 15:41:04","2024-02-10 15:41:04");
INSERT INTO product_sales VALUES("1016","613","96","","","","110","1","684.67","8368.25","0","0","75314.25","2024-02-10 15:41:04","2024-02-10 15:41:04");
INSERT INTO product_sales VALUES("1017","613","95","","","","345","1","715.27","27418.87","0","0","246769.88","2024-02-10 15:41:04","2024-02-10 15:41:04");
INSERT INTO product_sales VALUES("1018","614","97","","","","10","1","1150.03","1207.21","0","0","11500.29","2024-02-10 15:42:15","2024-02-10 15:42:15");
INSERT INTO product_sales VALUES("1019","615","100","","","","15","1","642.6","2409.75","0","0","9639","2024-02-10 15:47:28","2024-02-10 15:47:28");
INSERT INTO product_sales VALUES("1020","615","96","","","","15","1","608.6","2282.25","0","0","9129","2024-02-10 15:47:28","2024-02-10 15:47:28");
INSERT INTO product_sales VALUES("1021","616","98","","","","1","1","553.14","29.11","0","0","553.14","2024-02-12 17:21:48","2024-02-12 17:21:48");
INSERT INTO product_sales VALUES("1022","616","100","","","","1","1","763.09","40.16","0","0","763.09","2024-02-12 17:21:48","2024-02-12 17:21:48");
INSERT INTO product_sales VALUES("1023","617","98","","","","5","1","553.14","145.56","0","0","2765.69","2024-02-12 17:26:18","2024-02-12 17:26:18");
INSERT INTO product_sales VALUES("1024","617","100","","","","5","1","763.09","200.81","0","0","3815.44","2024-02-12 17:26:18","2024-02-12 17:26:18");
INSERT INTO product_sales VALUES("1025","618","100","","","","2","1","763.09","80.32","0","0","1526.18","2024-02-12 17:29:12","2024-02-12 17:29:12");
INSERT INTO product_sales VALUES("1026","619","98","","","","1","1","0","0","0","0","0","2024-02-12 19:49:48","2024-02-12 19:49:48");
INSERT INTO product_sales VALUES("1027","619","100","","","","1","1","0","0","0","0","0","2024-02-12 19:49:48","2024-02-12 19:49:48");
INSERT INTO product_sales VALUES("1028","620","98","8","","","288","1","582.25","0","0","0","167688","2024-03-02 13:31:47","2024-05-12 14:56:16");
INSERT INTO product_sales VALUES("1033","623","111","38","","","1705","1","799.42","151446.63","0","0","1363019.63","2024-03-04 12:28:16","2024-03-04 12:28:16");
INSERT INTO product_sales VALUES("1034","623","112","37","","","155","1","1143.67","19696.63","0","0","177269.63","2024-03-04 12:28:16","2024-03-04 12:28:16");
INSERT INTO product_sales VALUES("1035","624","98","6","","","1","1","0","0","0","0","0","2024-03-04 19:14:58","2024-03-04 19:14:58");
INSERT INTO product_sales VALUES("1036","624","111","38","","","2","1","0","0","0","0","0","2024-03-04 19:14:58","2024-03-04 19:14:58");
INSERT INTO product_sales VALUES("1037","625","99","16","","","1","1","0","0","0","0","0","2024-03-04 19:39:18","2024-03-04 19:39:18");
INSERT INTO product_sales VALUES("1038","625","95","5","","","1","1","0","0","0","0","0","2024-03-04 19:39:18","2024-03-04 19:39:18");
INSERT INTO product_sales VALUES("1039","625","112","37","","","1","1","0","0","0","0","0","2024-03-04 19:39:18","2024-03-04 19:39:18");
INSERT INTO product_sales VALUES("1040","625","98","6","","","1","1","0","0","0","0","0","2024-03-04 19:39:18","2024-03-04 19:39:18");
INSERT INTO product_sales VALUES("1041","625","111","38","","","6","1","0","0","0","0","0","2024-03-04 19:39:18","2024-03-04 19:39:18");
INSERT INTO product_sales VALUES("1042","626","111","38","","","5","1","722.92","401.63","0","0","3614.63","2024-03-04 19:53:11","2024-03-04 19:53:11");
INSERT INTO product_sales VALUES("1043","626","98","6","","","5","1","524.02","291.13","0","0","2620.13","2024-03-04 19:53:11","2024-03-04 19:53:11");
INSERT INTO product_sales VALUES("1044","627","98","6","","","2","1","553.14","58.23","0","0","1106.28","2024-03-04 19:56:29","2024-03-04 19:56:29");
INSERT INTO product_sales VALUES("1045","628","98","6","","","5","1","524.02","291.13","0","0","2620.13","2024-03-04 21:45:44","2024-03-04 21:45:44");
INSERT INTO product_sales VALUES("1046","628","111","38","","","5","1","722.92","401.63","0","0","3614.63","2024-03-04 21:45:44","2024-03-04 21:45:44");
INSERT INTO product_sales VALUES("1047","629","98","6","","","5","1","524.02","291.13","0","0","2620.13","2024-03-04 22:04:36","2024-03-04 22:04:36");
INSERT INTO product_sales VALUES("1048","629","111","38","","","5","1","722.92","401.63","0","0","3614.63","2024-03-04 22:04:36","2024-03-04 22:04:36");
INSERT INTO product_sales VALUES("1049","630","98","6","","","5","1","524.02","291.13","0","0","2620.13","2024-03-04 22:08:35","2024-03-04 22:08:35");
INSERT INTO product_sales VALUES("1050","630","111","38","","","5","1","722.92","401.63","0","0","3614.63","2024-03-04 22:08:35","2024-03-04 22:08:35");
INSERT INTO product_sales VALUES("1051","631","95","5","","","155","1","715.27","12318.63","0","0","110867.63","2024-03-07 14:24:07","2024-03-07 14:24:07");
INSERT INTO product_sales VALUES("1052","632","96","14","","","155","1","684.67","11791.63","0","0","106124.63","2024-03-07 14:26:53","2024-03-07 14:26:53");
INSERT INTO product_sales VALUES("1055","635","95","5","","","310","1","761.17","26218.25","0","0","235964.25","2024-03-09 10:49:37","2024-03-09 10:49:37");
INSERT INTO product_sales VALUES("1057","637","112","37","","","10","1","1143.67","1270.8","0","0","11436.7","2024-03-14 16:05:42","2024-03-14 16:05:42");
INSERT INTO product_sales VALUES("1062","639","99","16","","","155","1","952.42","16402.88","0","0","147625.88","2024-04-06 15:02:36","2024-04-06 15:02:36");
INSERT INTO product_sales VALUES("1063","639","96","14","","","155","1","730.58","12582.13","0","0","113239.13","2024-04-06 15:02:36","2024-04-06 15:02:36");
INSERT INTO product_sales VALUES("1064","640","112","37","","","5","1","635.38","3176.88","0","0","3176.88","2024-04-15 18:50:46","2024-04-15 18:50:46");
INSERT INTO product_sales VALUES("1065","641","111","38","","","1085","1","799.42","96375.13","0","0","867376.13","2024-04-16 17:36:04","2024-04-16 17:36:04");
INSERT INTO product_sales VALUES("1066","641","99","16","","","310","1","952.42","32805.75","0","0","295251.75","2024-04-16 17:36:04","2024-04-16 17:36:04");
INSERT INTO product_sales VALUES("1067","641","96","14","","","310","1","730.58","25164.25","0","0","226478.25","2024-04-16 17:36:04","2024-04-16 17:36:04");
INSERT INTO product_sales VALUES("1068","641","95","5","","","310","1","761.17","26218.25","0","0","235964.25","2024-04-16 17:36:04","2024-04-16 17:36:04");
INSERT INTO product_sales VALUES("1069","642","98","6","","","50","1","524.02","2911.25","0","0","26201.25","2024-05-02 13:45:12","2024-05-02 13:45:12");
INSERT INTO product_sales VALUES("1071","644","98","6","","","250","1","524.02","14556.25","0","0","131006.25","2024-05-07 07:17:28","2024-05-07 07:17:28");
INSERT INTO product_sales VALUES("1072","644","95","5","","","310","1","761.17","26218.25","0","0","235964.25","2024-05-07 07:17:28","2024-05-07 07:17:28");
INSERT INTO product_sales VALUES("1073","644","111","38","","","1000","1","799.42","88825","0","0","799425","2024-05-07 07:17:28","2024-05-07 07:17:28");
INSERT INTO product_sales VALUES("1074","620","99","16","","","155","1","1058.25","0","0","0","164028.75","2024-05-12 14:56:16","2024-05-12 14:56:16");
INSERT INTO product_sales VALUES("1075","645","111","38","","","10","1","710.6","1776.5","0","0","7106","2024-05-14 19:06:11","2024-05-14 19:06:11");
INSERT INTO product_sales VALUES("1076","646","99","16","","","155","1","952.42","16402.88","0","0","147625.88","2024-05-28 13:04:11","2024-05-28 13:04:11");
INSERT INTO product_sales VALUES("1077","647","96","14","","","154","1","730.58","12500.95","0","0","112508.55","2024-06-04 17:06:45","2024-06-04 17:06:45");
INSERT INTO product_sales VALUES("1078","647","111","38","","","1705","1","799.42","151446.63","0","0","1363019.63","2024-06-04 17:06:45","2024-06-04 17:06:45");
INSERT INTO product_sales VALUES("1079","647","95","5","","","310","1","761.17","26218.25","0","0","235964.25","2024-06-04 17:06:45","2024-06-04 17:06:45");
INSERT INTO product_sales VALUES("1080","647","99","39","","","298","1","952.42","31535.85","0","0","283822.65","2024-06-04 17:06:45","2024-06-04 17:06:45");



CREATE TABLE `product_transfer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_transfer VALUES("1","1","4","","","","100","1","1","0","0","100","2018-08-08 07:17:10","2018-12-24 17:16:55");
INSERT INTO product_transfer VALUES("7","6","48","","3","","1","1","2","0","0","2","2019-12-05 08:55:04","2019-12-05 09:09:42");
INSERT INTO product_transfer VALUES("11","8","5","","","","10","1","100","0","0","1000","2020-01-22 01:30:59","2020-01-22 01:30:59");
INSERT INTO product_transfer VALUES("13","10","1","","","","1","1","320","10","32","352","2020-10-08 03:27:35","2020-10-08 03:29:35");
INSERT INTO product_transfer VALUES("14","11","62","","12","","1","1","1","0","0","1","2020-10-18 08:17:08","2020-10-18 08:17:08");
INSERT INTO product_transfer VALUES("15","12","61","","","","10","1","3000","15","4500","34500","2020-10-23 23:01:46","2020-10-23 23:01:46");
INSERT INTO product_transfer VALUES("32","21","5","","","","6","1","100","0","0","600","2022-03-09 00:44:11","2022-06-05 02:37:31");



CREATE TABLE `product_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) NOT NULL,
  `additional_cost` double DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_variants VALUES("3","48","3","1","S-93475396","","","-1","2019-11-21 02:03:04","2023-10-18 12:40:15");
INSERT INTO product_variants VALUES("5","48","5","3","L-93475396","10","50","-1","2019-11-24 01:07:20","2023-10-18 12:40:14");
INSERT INTO product_variants VALUES("6","48","2","2","M-93475396","5","10","-3","2019-11-24 02:17:07","2023-10-18 12:40:15");
INSERT INTO product_variants VALUES("10","60","9","1","a-32081679","","","-3","2020-05-18 12:44:14","2023-10-18 12:40:13");
INSERT INTO product_variants VALUES("11","60","11","2","b-32081679","","","0","2020-05-18 12:58:31","2020-05-18 12:58:31");
INSERT INTO product_variants VALUES("12","62","12","1","variant 1-81145830","","","0","2020-09-27 02:08:27","2023-10-18 12:40:13");
INSERT INTO product_variants VALUES("13","62","13","2","variant 2-81145830","","","0","2020-09-27 02:08:27","2020-09-27 02:08:27");
INSERT INTO product_variants VALUES("26","87","18","1","s/red-82490498","","","0","2022-08-03 01:25:19","2022-08-03 01:25:19");
INSERT INTO product_variants VALUES("27","87","24","2","s/blue-82490498","","","0","2022-08-03 01:25:19","2022-08-03 01:25:19");
INSERT INTO product_variants VALUES("28","87","20","4","m/red-82490498","","","0","2022-08-03 01:25:19","2022-08-06 01:54:37");
INSERT INTO product_variants VALUES("29","87","25","5","m/blue-82490498","","","0","2022-08-03 01:25:20","2022-08-06 01:54:37");
INSERT INTO product_variants VALUES("30","87","22","7","l/red-82490498","2","5","0","2022-08-03 01:25:20","2023-10-18 12:39:45");
INSERT INTO product_variants VALUES("31","87","26","8","l/blue-82490498","2","5","0","2022-08-03 01:25:20","2022-08-06 01:54:37");
INSERT INTO product_variants VALUES("32","87","27","3","s/green-82490498","","","0","2022-08-06 01:54:37","2022-08-06 01:54:37");
INSERT INTO product_variants VALUES("33","87","28","6","m/green-82490498","","","0","2022-08-06 01:54:37","2022-08-06 01:54:37");
INSERT INTO product_variants VALUES("34","87","29","9","l/green-82490498","2","5","0","2022-08-06 01:54:37","2022-08-08 09:58:47");
INSERT INTO product_variants VALUES("38","87","30","10","xl/red-82490498","3","6","-1","2022-08-08 10:05:58","2023-10-18 12:39:45");
INSERT INTO product_variants VALUES("39","87","31","11","xl/blue-82490498","3","6","0","2022-08-08 10:05:58","2022-08-08 10:05:58");
INSERT INTO product_variants VALUES("40","87","32","12","xl/green-82490498","3","6","0","2022-08-08 10:05:58","2022-08-08 10:05:58");
INSERT INTO product_variants VALUES("43","90","33","1","red-17628500","","","0","2022-09-11 02:56:55","2023-10-18 12:39:45");
INSERT INTO product_variants VALUES("44","90","34","2","black-17628500","","","0","2022-09-11 02:56:55","2023-10-18 12:39:45");
INSERT INTO product_variants VALUES("45","90","35","3","blue-17628500","50","100","-1","2022-09-11 02:56:55","2023-10-18 12:39:45");
INSERT INTO product_variants VALUES("46","92","36","1","s/white-91876421","","","0","2023-08-09 05:50:04","2023-10-12 12:49:16");
INSERT INTO product_variants VALUES("47","92","24","2","s/blue-91876421","","","0","2023-08-09 05:50:04","2023-08-09 05:50:04");
INSERT INTO product_variants VALUES("48","92","37","3","m/white-91876421","","","0","2023-08-09 05:50:04","2023-08-09 05:50:04");
INSERT INTO product_variants VALUES("49","92","25","4","m/blue-91876421","","","0","2023-08-09 05:50:04","2023-08-09 05:50:04");
INSERT INTO product_variants VALUES("50","92","38","5","l/white-91876421","5","10","0","2023-08-09 05:50:04","2023-10-12 12:49:16");
INSERT INTO product_variants VALUES("51","92","26","6","l/blue-91876421","5","10","0","2023-08-09 05:50:04","2023-08-09 05:50:04");



CREATE TABLE `product_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_warehouse VALUES("10","1","","","","1","22","","2018-08-08 04:30:12","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("11","2","","","","1","146","","2018-08-08 04:30:12","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("12","3","","","","1","-4","","2018-08-08 04:30:13","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("13","5","","","","1","-39","","2018-08-08 04:30:13","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("14","4","","","","1","71","","2018-08-08 05:16:09","2023-10-18 12:40:43");
INSERT INTO product_warehouse VALUES("15","4","","","","2","-281","","2018-08-08 07:16:15","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("16","2","","","","2","-613","","2018-08-08 07:26:49","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("17","1","","","","2","-123","","2018-08-08 07:33:33","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("18","3","","","","2","-60","","2018-08-08 19:47:23","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("19","5","","","","2","-49","","2018-08-08 19:48:36","2023-10-18 12:40:45");
INSERT INTO product_warehouse VALUES("20","10","","","","1","0","","2018-08-08 19:49:29","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("21","10","","","","2","0.5","","2018-08-08 19:49:55","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("22","22","","","11101,11102,11103,,7001,2002","1","-6","","2018-09-03 00:06:09","2023-10-18 12:40:44");
INSERT INTO product_warehouse VALUES("23","22","","","7001","2","-55","","2018-09-03 00:07:14","2023-10-18 12:40:43");
INSERT INTO product_warehouse VALUES("24","24","","","","2","0","","2018-09-15 17:49:30","2018-09-15 17:50:49");
INSERT INTO product_warehouse VALUES("25","25","","","","1","-5","","2018-10-22 21:14:21","2023-10-18 12:40:43");
INSERT INTO product_warehouse VALUES("26","25","","","","2","-33","","2018-10-22 21:14:41","2023-10-18 12:40:43");
INSERT INTO product_warehouse VALUES("27","31","","","","1","-4","","2018-12-04 18:34:30","2023-10-18 12:40:42");
INSERT INTO product_warehouse VALUES("28","30","","","","1","-4","","2018-12-04 18:34:30","2023-10-18 12:40:42");
INSERT INTO product_warehouse VALUES("29","31","","","","2","-13","","2018-12-04 18:35:08","2023-10-18 12:40:42");
INSERT INTO product_warehouse VALUES("30","30","","","","2","-12","","2018-12-04 18:35:08","2023-10-18 12:40:42");
INSERT INTO product_warehouse VALUES("31","32","","","","1","0","","2018-12-18 18:57:16","2023-10-18 12:40:40");
INSERT INTO product_warehouse VALUES("32","32","","","","2","-1","","2018-12-18 18:57:41","2023-10-18 12:40:42");
INSERT INTO product_warehouse VALUES("33","33","","","","1","-4","","2018-12-23 19:38:40","2023-10-18 12:40:42");
INSERT INTO product_warehouse VALUES("34","33","","","","2","-3","","2019-02-08 23:21:38","2023-10-18 12:40:41");
INSERT INTO product_warehouse VALUES("35","48","","3","","1","-1","","2019-11-25 09:23:02","2023-10-18 12:40:15");
INSERT INTO product_warehouse VALUES("36","48","","2","","1","0","","2019-11-26 01:47:42","2023-10-18 12:40:15");
INSERT INTO product_warehouse VALUES("37","48","","3","","2","-1","","2019-11-26 03:12:08","2023-10-18 12:40:14");
INSERT INTO product_warehouse VALUES("38","48","","2","","2","-3","","2019-11-26 03:12:08","2023-10-18 12:40:15");
INSERT INTO product_warehouse VALUES("39","48","","5","","1","0","","2019-12-21 05:18:51","2023-10-18 12:40:14");
INSERT INTO product_warehouse VALUES("40","48","","5","","2","-1","","2019-12-22 03:36:39","2023-10-18 12:40:14");
INSERT INTO product_warehouse VALUES("45","61","","","","2","-23","","2020-08-16 12:02:07","2023-10-18 12:40:13");
INSERT INTO product_warehouse VALUES("46","62","","12","","1","-1","","2020-09-27 02:55:33","2023-10-18 12:40:13");
INSERT INTO product_warehouse VALUES("47","62","","12","","2","1","","2020-10-18 08:17:08","2021-02-10 20:28:16");
INSERT INTO product_warehouse VALUES("48","61","","","","1","8","","2020-10-23 23:01:46","2020-11-28 18:21:30");
INSERT INTO product_warehouse VALUES("49","60","","9","","1","-3","","2020-10-26 06:34:05","2023-10-18 12:40:13");
INSERT INTO product_warehouse VALUES("51","71","1","","","1","-1","","2021-03-07 03:14:05","2023-10-18 12:40:12");
INSERT INTO product_warehouse VALUES("52","71","1","","","2","-6","","2021-03-07 03:21:16","2023-10-18 12:40:12");
INSERT INTO product_warehouse VALUES("53","71","2","","","1","-2","","2021-03-07 03:55:06","2023-10-18 12:40:12");
INSERT INTO product_warehouse VALUES("54","71","3","","","1","-2","","2021-03-09 04:42:13","2023-10-18 12:40:11");
INSERT INTO product_warehouse VALUES("55","71","2","","","2","0","","2021-05-23 03:09:03","2021-05-26 03:38:06");
INSERT INTO product_warehouse VALUES("56","72","","","","1","0","","2021-07-06 03:10:42","2023-10-18 12:40:10");
INSERT INTO product_warehouse VALUES("57","72","","","","2","-4","","2021-07-06 03:11:07","2023-10-18 12:40:10");
INSERT INTO product_warehouse VALUES("58","22","4","","","1","0","","2021-10-20 03:47:09","2023-10-18 12:40:09");
INSERT INTO product_warehouse VALUES("59","79","","","","2","0","","2022-06-01 02:41:19","2023-10-18 12:39:46");
INSERT INTO product_warehouse VALUES("67","87","","30","","1","-1","","2022-08-08 11:13:57","2023-10-18 12:39:45");
INSERT INTO product_warehouse VALUES("68","87","","22","","1","0","","2022-08-08 11:13:57","2023-10-18 12:39:46");
INSERT INTO product_warehouse VALUES("69","90","","35","","1","-1","","2022-09-11 03:04:41","2023-10-18 12:39:45");
INSERT INTO product_warehouse VALUES("70","90","","34","","1","0","","2022-09-11 03:04:41","2023-10-18 12:39:45");
INSERT INTO product_warehouse VALUES("71","90","","33","","1","0","","2022-09-11 03:04:41","2023-10-18 12:39:45");
INSERT INTO product_warehouse VALUES("72","92","","38","","1","0","20","2023-08-09 05:51:42","2023-10-12 12:49:16");
INSERT INTO product_warehouse VALUES("73","92","","36","","1","0","20","2023-08-09 05:51:42","2023-10-12 12:49:16");
INSERT INTO product_warehouse VALUES("74","93","","","","2","0","","2023-09-18 07:53:16","2023-09-19 07:18:10");
INSERT INTO product_warehouse VALUES("75","94","","","","2","0","10","2023-09-18 08:12:00","2023-09-19 07:18:10");
INSERT INTO product_warehouse VALUES("76","100","","","","1","-13187","","2023-10-09 07:54:21","2024-05-12 19:44:58");
INSERT INTO product_warehouse VALUES("77","99","","","","1","66","","2023-10-09 07:54:21","2024-06-04 16:55:57");
INSERT INTO product_warehouse VALUES("78","98","","","","1","-191","","2023-10-09 07:54:21","2024-02-15 15:33:38");
INSERT INTO product_warehouse VALUES("79","97","","","","1","-505","","2023-10-09 07:54:21","2024-05-12 19:44:58");
INSERT INTO product_warehouse VALUES("80","96","","","","1","-65","","2023-10-09 07:54:21","2024-05-12 19:44:58");
INSERT INTO product_warehouse VALUES("81","95","","","","1","-1635","","2023-10-09 07:54:21","2024-05-12 19:44:58");
INSERT INTO product_warehouse VALUES("82","101","","","","1","0","","2024-02-15 11:19:59","2024-02-15 11:35:08");
INSERT INTO product_warehouse VALUES("83","102","","","","1","0","","2024-02-15 11:36:32","2024-02-15 11:37:43");
INSERT INTO product_warehouse VALUES("84","95","5","","","1","725","","2024-02-15 13:12:27","2024-06-04 17:06:45");
INSERT INTO product_warehouse VALUES("85","98","6","","","1","561","","2024-02-15 13:17:00","2024-05-07 07:17:28");
INSERT INTO product_warehouse VALUES("86","100","7","","","1","1986","","2024-02-15 13:17:00","2024-02-15 13:17:00");
INSERT INTO product_warehouse VALUES("87","98","8","","","1","212","","2024-02-15 13:21:21","2024-05-12 14:56:16");
INSERT INTO product_warehouse VALUES("88","100","9","","","1","1395","","2024-02-15 13:21:21","2024-02-15 13:27:24");
INSERT INTO product_warehouse VALUES("89","95","10","","","1","668","","2024-02-15 13:27:24","2024-02-15 13:27:24");
INSERT INTO product_warehouse VALUES("90","100","11","","","1","1956","","2024-02-15 13:29:16","2024-02-15 13:31:58");
INSERT INTO product_warehouse VALUES("91","95","12","","","1","310","","2024-02-15 13:31:58","2024-02-15 13:31:58");
INSERT INTO product_warehouse VALUES("92","100","13","","","1","1000","","2024-02-15 13:33:26","2024-02-15 13:33:26");
INSERT INTO product_warehouse VALUES("93","96","14","","","1","276","","2024-02-15 13:37:35","2024-06-04 17:06:45");
INSERT INTO product_warehouse VALUES("94","100","15","","","1","2018","","2024-02-15 13:37:35","2024-02-15 13:37:35");
INSERT INTO product_warehouse VALUES("95","99","16","","","1","236","","2024-02-15 13:37:35","2024-05-28 13:04:11");
INSERT INTO product_warehouse VALUES("96","100","17","","","1","877","","2024-02-15 13:40:32","2024-02-15 13:40:32");
INSERT INTO product_warehouse VALUES("97","100","18","","","1","1045","","2024-02-15 13:42:00","2024-02-15 13:42:00");
INSERT INTO product_warehouse VALUES("98","96","19","","","1","1993","","2024-02-15 13:45:39","2024-02-17 09:50:40");
INSERT INTO product_warehouse VALUES("99","100","20","","","1","2825","","2024-02-15 13:45:39","2024-02-17 09:52:30");
INSERT INTO product_warehouse VALUES("100","99","21","","","1","994","","2024-02-15 13:47:20","2024-02-15 13:47:20");
INSERT INTO product_warehouse VALUES("101","96","22","","","1","1000","","2024-02-15 13:55:51","2024-02-15 13:55:51");
INSERT INTO product_warehouse VALUES("102","99","23","","","1","1000","","2024-02-15 13:55:51","2024-02-15 13:55:51");
INSERT INTO product_warehouse VALUES("103","100","24","","","1","2800","","2024-02-15 13:59:42","2024-02-17 09:44:41");
INSERT INTO product_warehouse VALUES("104","100","25","","","1","1908","","2024-02-15 14:03:33","2024-02-15 14:03:33");
INSERT INTO product_warehouse VALUES("105","95","26","","","1","930","","2024-02-15 14:04:34","2024-02-15 14:04:34");
INSERT INTO product_warehouse VALUES("106","100","27","","","1","653","","2024-02-16 14:50:06","2024-02-16 14:58:12");
INSERT INTO product_warehouse VALUES("107","100","28","","","1","620","","2024-02-16 14:53:14","2024-02-16 14:53:14");
INSERT INTO product_warehouse VALUES("108","99","29","","","1","310","","2024-02-16 14:53:14","2024-02-16 14:53:14");
INSERT INTO product_warehouse VALUES("109","95","30","","","1","310","","2024-02-16 14:53:14","2024-02-16 14:53:14");
INSERT INTO product_warehouse VALUES("110","98","31","","","1","400","","2024-02-16 14:58:12","2024-02-16 14:58:12");
INSERT INTO product_warehouse VALUES("111","96","32","","","1","300","","2024-02-16 14:58:12","2024-02-16 14:58:12");
INSERT INTO product_warehouse VALUES("112","95","33","","","1","100","","2024-02-16 14:58:12","2024-02-16 14:58:12");
INSERT INTO product_warehouse VALUES("113","95","34","","","1","465","","2024-02-17 09:44:41","2024-02-17 09:44:41");
INSERT INTO product_warehouse VALUES("114","108","35","","","1","2000","","2024-03-04 11:36:40","2024-03-04 11:57:16");
INSERT INTO product_warehouse VALUES("115","109","36","","","1","200","","2024-03-04 11:37:47","2024-03-04 11:57:16");
INSERT INTO product_warehouse VALUES("116","112","37","","","1","29","","2024-03-04 12:20:18","2024-04-15 18:50:46");
INSERT INTO product_warehouse VALUES("117","111","38","","","1","467","","2024-03-04 12:22:34","2024-06-04 17:06:45");
INSERT INTO product_warehouse VALUES("118","99","39","","","1","202","","2024-06-03 18:25:23","2024-06-04 17:06:45");



CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `barcode_symbology` varchar(191) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` double NOT NULL,
  `price` double NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `daily_sale_objective` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) DEFAULT NULL,
  `starting_date` varchar(200) DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `is_embeded` tinyint(1) DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) DEFAULT NULL,
  `variant_list` varchar(191) DEFAULT NULL,
  `qty_list` varchar(191) DEFAULT NULL,
  `price_list` varchar(191) DEFAULT NULL,
  `product_details` text DEFAULT NULL,
  `variant_option` text DEFAULT NULL,
  `variant_value` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products VALUES("1","Mouse","6952897986810","standard","UPCE","4","3","1","1","1","320","400","-101","20","","","350","2020-06-30","2020-07-31","1","2","toponemouse.jpg","","0","","","0","","1","","","","","11:11:30 AMhello world","","","0","2018-05-12 18:23:03","2023-10-18 12:40:44");
INSERT INTO products VALUES("2","mango","72782608","standard","C128","","1","1","3","2","8","12","-467","3180","","","","","","2","2","mango.jpg","","","","","0","","1","","","","","","","","0","2018-05-12 18:38:31","2023-10-18 12:40:44");
INSERT INTO products VALUES("3","Earphone","85415108","standard","C128","4","2","1","1","1","200","250","-64","25","","","220","2020-11-02","2020-11-30","","2","airphonesamsung.jpg","","","","","0","","1","","","","","Earphone with good sound quality.
jhjkhjkhjh @@","","","0","2018-05-12 18:39:55","2023-10-18 12:40:44");
INSERT INTO products VALUES("4","lychee","38314290","standard","C128","","1","1","1","1","1","2","-210","50","","","","","","","2","lychee.jpg","","","","","","","1","","","","","sweet lychee from kalipur, bashkhali","","","0","2018-05-23 18:54:56","2023-10-18 12:40:44");
INSERT INTO products VALUES("5","Baby doll","31261512","standard","C128","3","4","1","1","1","100","120","-88","50","2","1","100","2023-03-29","2023-04-30","","2","","","0","","","0","","1","","","","","muri kha!","","","0","2018-05-23 18:58:20","2023-10-18 12:40:45");
INSERT INTO products VALUES("6","test","78041363","standard","C128","","2","1","1","1","12","21","0","","","","","","","","1","","","","","","","","","","","","","","","","0","2018-05-27 19:50:25","2023-10-05 04:30:24");
INSERT INTO products VALUES("10","potato","212132","standard","C128","","9","7","7","7","10","22","0.5","","","","","","","","2","potato.jpeg","","0","","","0","","1","","","","","","","","0","2018-06-24 21:34:53","2023-10-18 12:40:44");
INSERT INTO products VALUES("13","ldms","40624536","digital","C128","","3","0","0","0","0","21","0","","","","","","","","2","ldms.jpg","1532330693.JPG","","","","","","1","","","","","Amazon Prime 1 MonthPrice: 300tk
User Ability: Max 2 Mobile UserDuration: 1 MonthPackage: Premium","","","0","2018-07-22 21:09:29","2023-10-05 04:30:24");
INSERT INTO products VALUES("14","ni","40237871","standard","C128","","9","8","8","8","55","56","0","","","","","","","","1","","","","","","","","","","","","","","","","0","2018-07-31 18:36:51","2023-10-05 04:30:24");
INSERT INTO products VALUES("15","edawe","awd","standard","C128","","1","4","4","4","312","132","0","","","","","","","","1","","","","","","","","","","","","","","","","0","2018-08-04 21:26:19","2023-10-05 04:30:24");
INSERT INTO products VALUES("16","weq","eqw","digital","C128","","2","0","0","0","0","2","0","","","","","","","","1","","1533454125.jpg","","","","","","","","","","","","","","0","2018-08-04 21:28:45","2023-10-05 04:30:24");
INSERT INTO products VALUES("17","et","wer","standard","C128","","2","4","4","4","12","21","0","","","","","","","","1","","","","","","","","","","","","","","","","0","2018-08-06 00:25:43","2023-10-05 04:30:24");
INSERT INTO products VALUES("18","wre","wre","standard","C128","","1","4","4","4","3","2","0","","","","","","","","1","","","","","","","","","","","","","","","","0","2018-08-06 00:45:42","2023-10-05 04:30:24");
INSERT INTO products VALUES("19","ewr","wer","standard","C128","","2","4","4","4","3","23","0","","","1","","2018-08-06","2018-08-10","","1","","","","","","","","","","","","","","","","0","2018-08-06 01:41:46","2023-10-05 04:30:24");
INSERT INTO products VALUES("20","dim","4234","standard","C128","","10","1","1","1","1","2","0","","","","","","","","1","","","","","","","","","","","","","","","","0","2018-08-28 19:37:07","2018-08-28 19:43:18");
INSERT INTO products VALUES("21","dim","1","standard","C128","","11","1","1","1","1","2","0","","","","","","","","1","","","","","","","","","","","","","","","","0","2018-08-28 19:49:27","2018-08-28 19:53:21");
INSERT INTO products VALUES("22","iphone-X","97103461","standard","C128","5","2","1","1","1","800","1000","-61","20","","","","","","1","2","iphoneX.jpg","","","","","0","1","1","","","","","","","","0","2018-09-03 00:05:17","2023-10-18 12:40:44");
INSERT INTO products VALUES("23","qwq","1237920612311a","standard","C39","","2","1","1","1","1","2","0","","","","","","","","1","","","","","","","","","","","","","","","","0","2018-09-10 19:53:18","2023-10-05 04:30:24");
INSERT INTO products VALUES("24","chocolate","84802317","standard","C128","","9","1","1","1","1","2","0","","","","","","","","1","","","","","","","","1","","","","","","","","0","2018-09-15 17:42:01","2023-10-05 04:30:24");
INSERT INTO products VALUES("25","Galaxy S9","72100265","standard","C128","","2","1","1","1","500","1000","-38","50","","","","","","1","2","SamsungGalaxyS9.jpg","","","","","0","","1","","","","","","","","0","2018-10-22 21:13:22","2023-10-18 12:40:43");
INSERT INTO products VALUES("26","Samsung Set","39053411","combo","C128","4","2","0","0","0","0","1250","0","","","","","","","","2","zummXD2dvAtI.png","","","","","","","","3,25","","1,1","250,1000","","","","0","2018-11-18 22:59:06","2023-10-05 04:30:24");
INSERT INTO products VALUES("27","mixed fruit juice","24805187","combo","C128","","9","0","0","0","0","16","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","4,2","","3,1","2,10","","","","0","2018-11-19 04:39:26","2023-10-05 04:30:24");
INSERT INTO products VALUES("28","ssaaa","sasas","standard","C128","","2","1","1","2","1","2","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","0","2018-11-19 23:14:12","2023-10-05 04:30:24");
INSERT INTO products VALUES("29","testcloth","16055884","standard","C128","","4","10","10","10","10","15","0","","","","","2018-11-29","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","0","2018-11-28 22:49:25","2023-10-05 04:30:24");
INSERT INTO products VALUES("30","Polo Shirt","53467102","standard","C128","","12","1","1","1","50","100","-16","10","","","","","","","2","PoloShirt.jpg","","","","","","","1","","","","","","","","0","2018-12-04 18:29:43","2023-10-18 12:40:42");
INSERT INTO products VALUES("31","Shoe","90471412","standard","C128","","12","1","1","1","250","300","-17","10","","","","","","","2","Shoe.jpg","","","","","","","1","","","","","","","","0","2018-12-04 18:33:09","2023-10-18 12:40:42");
INSERT INTO products VALUES("32","Toothpaste","859875003032","standard","C128","","12","1","1","1","5","10","-1","","","","","","","","2","1572759415477product-page-fresh-breath.jpg","","","","","","","","","","","","","","","0","2018-12-18 18:56:08","2023-10-18 12:40:42");
INSERT INTO products VALUES("33","tissue","8941161008066","standard","C128","","12","1","1","1","10","20","-7","","","","","","","","2","zummXD2dvAtI.png","","","","","","","0","","","","","","","","0","2018-12-23 18:33:58","2023-10-18 12:40:42");
INSERT INTO products VALUES("48","T-shirt","93475396","standard","C128","","12","1","1","1","2","3","-6","","","","","","","","2","1577165120189220px-Blue_Tshirt.jpg","","0","1","","0","","0","","","","","","","","0","2019-11-21 02:03:04","2023-10-18 12:40:15");
INSERT INTO products VALUES("60","testvar","32081679","standard","C128","","12","1","1","1","1","2","-3","","","","","","","","2","zummXD2dvAtI.png","","","1","","","","0","","","","","","","","0","2020-05-18 12:44:14","2023-10-18 12:40:13");
INSERT INTO products VALUES("61","TV","32703342","standard","C128","4","2","1","1","1","3000","10000","-15","","","","","","","2","2","zummXD2dvAtI.png","","","","","","","1","","","","","","","","0","2020-08-16 11:58:39","2023-10-18 12:40:13");
INSERT INTO products VALUES("62","Test variant","81145830","standard","C128","","4","1","1","1","1","2","0","","","","","","","","2","zummXD2dvAtI.png","","","1","","","","","","","","","","","","0","2020-09-27 02:08:27","2023-10-18 12:40:13");
INSERT INTO products VALUES("71","Napa","41930312","standard","C128","","19","1","1","1","1","2","-11","","","","","","","","2","zummXD2dvAtI.png","","","","1","0","","0","","","","","","","","0","2021-03-07 03:12:53","2023-10-18 12:40:12");
INSERT INTO products VALUES("72","Denim Jeans","19243053","standard","C128","","12","1","1","1","2","5","-4","10","","","","","","","2","16255551802975de6825f-5bbc-4d74-bce9-2aa4ab2311ce.jpg","","0","","","0","","1","","","","","","","","0","2021-05-31 04:05:38","2023-10-18 12:40:10");
INSERT INTO products VALUES("74","Medium T shirt and Jeans","10203123","combo","C128","","12","0","0","0","0","18","0","","","","","","","","2","zummXD2dvAtI.png","","","","","","","","48,72","2,","1,1","13,5","","","","0","2021-07-06 03:31:58","2023-10-05 04:30:24");
INSERT INTO products VALUES("75","Car Repair","16972383","service","C128","","20","0","0","0","0","200","0","","","","","","","","2","zummXD2dvAtI.png","","","","","","","","","","","","","","","0","2021-07-15 08:38:41","2023-10-05 04:30:24");
INSERT INTO products VALUES("76","dasdas","32781116","standard","C128","","4","1","1","1","1","2","0","","","","","","","","2","zummXD2dvAtI.png","","","","","","1","","","","","","","","","0","2021-11-09 05:57:02","2023-10-05 04:30:24");
INSERT INTO products VALUES("77","chukus","48547006","standard","C128","","2","1","1","1","1","2","0","","","","","","","","1","163886942338193136640_10156697499916330_2126367939505422336_n.jpg,1638869424762105705782_159243222380186_243702843374862028_o.jpg,202112070415034.jpg,202112070427354.jpg","","","","","0","","0","","","","","","","","0","2021-12-07 04:30:43","2023-10-05 04:30:24");
INSERT INTO products VALUES("79","Alpha Cheese","2000004","standard","C128","","9","7","7","7","12","25","0","","","","","","","","2","zummXD2dvAtI.png","","1","","","0","","0","","","","","","","","0","2022-06-01 01:37:28","2023-10-18 12:39:46");
INSERT INTO products VALUES("87","Cotton Punjabi","82490498","standard","C128","7","12","1","1","1","10","25","-1","","","","","","","","2","zummXD2dvAtI.png","","0","1","","0","","0","","","","","","["Size","Color"]","["s,m,l,xl","red,blue,green"]","0","2022-08-03 01:25:19","2023-10-18 12:39:46");
INSERT INTO products VALUES("90","Iphone 14","17628500","standard","C128","5","2","1","1","1","500","1000","-1","","","","","","","1","2","1662879338234iphone-14-pro-model-unselect-gallery-2-202209_GEO_US.jpg","","","1","","","","1","","","","","


NETWORK
Technology
GSM / CDMA / HSPA / EVDO / LTE / 5G






Dimensions
160.7 x 77.6 x 7.9 mm (6.33 x 3.06 x 0.31 in)


","["color"]","["red,black,blue"]","0","2022-09-11 02:56:55","2023-10-18 12:39:45");
INSERT INTO products VALUES("91","tkis","64593272","standard","C128","","2","1","1","1","1","2","0","","","","","","","","1","zummXD2dvAtI.png","","0","","","0","","0","","","","","","","","0","2023-07-31 05:47:45","2023-10-05 04:30:24");
INSERT INTO products VALUES("92","Formal shirt","91876421","standard","C128","","12","1","1","1","10","20","0","","","","","","","","1","zummXD2dvAtI.png","","","1","","","","","","","","","","["size","color"]","["s,m,l","white,blue"]","0","2023-08-09 05:50:04","2023-10-12 12:49:16");
INSERT INTO products VALUES("93","uuu","42691385","standard","C128","","2","1","1","1","2","3","0","","","","","","","","1","zummXD2dvAtI.png","","0","","","0","","0","","","","","","","","0","2023-09-18 06:06:16","2023-10-05 04:30:24");
INSERT INTO products VALUES("94","jjj","02461323","standard","C128","","2","4","4","4","7","10","0","","","","","","","","1","zummXD2dvAtI.png","","0","","","0","","0","","","","","","","","0","2023-09-18 06:31:05","2023-10-05 04:30:24");
INSERT INTO products VALUES("95","CRANDOM CAPSULE","CRA","standard","C128","10","23","1","1","1","155","845.75","1873","100","","","","","","","1","202310050129421.jpg","","0","","1","0","","0","","","","","","","","1","2023-10-05 04:29:42","2024-06-04 17:06:45");
INSERT INTO products VALUES("96","FALNEU TAB","FA","standard","C128","10","23","1","1","1","125","811.75","3504","","","","","","","","1","zummXD2dvAtI.png","","0","","1","0","","0","","","","","","","","1","2023-10-05 04:35:01","2024-06-04 17:06:45");
INSERT INTO products VALUES("97","HAIRPLEA TAB 30s","HA","standard","C128","10","23","1","1","1","195","1270.75","-504","100","","","","","","","1","202310050142001.jpg","","0","","1","0","","0","","","","","","","","0","2023-10-05 04:42:00","2024-05-12 19:44:58");
INSERT INTO products VALUES("98","INFADOM DROPS","INF","standard","C128","10","23","1","1","1","65","582.25","982","","","","","","","","1","202310070814531.jpg","","0","","1","0","","0","","","","","","","","1","2023-10-07 11:14:53","2024-05-12 14:56:16");
INSERT INTO products VALUES("99","IROHEME CAPSULE","IRO","standard","C128","10","23","1","1","1","155","1058.25","2808","100","","","","","","","1","202310070818071.jpg","","0","","1","0","","0","","","","","","","","1","2023-10-07 11:18:07","2024-06-04 17:06:45");
INSERT INTO products VALUES("100","PAGECAL TAB","PG","standard","C128","10","23","1","1","1","145","803.25","5896","","","","","","","","1","202310070819381.jpg","","0","","1","0","","0","","","","","","","","0","2023-10-07 11:19:38","2024-05-12 19:44:58");
INSERT INTO products VALUES("101","PAGECAL","P","standard","C128","","23","1","1","1","120","945","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","0","2024-02-15 11:19:59","2024-02-15 11:35:08");
INSERT INTO products VALUES("102","INFADOM","INF","standard","C39","10","23","1","1","1","28","582.25","0","","","","","","","","1","zummXD2dvAtI.png","","0","","1","0","","0","","","","","","","","0","2024-02-15 11:36:32","2024-02-15 13:04:11");
INSERT INTO products VALUES("103","PAGECAL","P","standard","C128","10","23","1","1","1","120","803.25","0","","","","","","","","1","zummXD2dvAtI.png","","","","1","","","","","","","","","","","0","2024-02-15 11:55:26","2024-02-15 13:05:28");
INSERT INTO products VALUES("104","Ivy Cooke","0102302310","standard","C39","10","23","1","1","1","77","354","0","779","50","","351","1984-04-04","2014-04-06","4","1","zummXD2dvAtI.png","","","","1","","","","","","","","","","","0","2024-02-15 12:00:47","2024-02-15 12:10:03");
INSERT INTO products VALUES("105","CRANDOM","CR","standard","C128","","23","1","1","1","130","935","0","","","","","","","","1","zummXD2dvAtI.png","","","","1","","","","","","","","","","","0","2024-02-15 12:59:24","2024-02-15 13:02:21");
INSERT INTO products VALUES("106","Nevada Schmidt","Ipsa est excepturi","standard","C128","10","23","1","1","1","11","218","0","209","20","","19","1999-12-11","2007-12-22","1","2","zummXD2dvAtI.png","","","","1","","","","","","","","","","","0","2024-02-15 13:04:14","2024-02-15 15:31:11");
INSERT INTO products VALUES("107","PAGECALL","P","standard","C128","10","23","1","1","1","888.25","945","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","0","2024-03-04 11:20:22","2024-03-04 11:21:18");
INSERT INTO products VALUES("108","PAGECAL","P","standard","C128","10","23","1","1","1","888.25","945","2000","","","","","","","","1","zummXD2dvAtI.png","","","","1","","","","","","","","","","","0","2024-03-04 11:22:47","2024-03-04 11:57:16");
INSERT INTO products VALUES("109","HAIRPLEA","HA","standard","C128","10","23","1","1","1","1270.75","1495","200","","","","","","","","1","zummXD2dvAtI.png","","","","1","","","","","","","","","","","0","2024-03-04 11:24:13","2024-03-04 11:57:16");
INSERT INTO products VALUES("110","PAGECAL","P","standard","C128","10","23","1","1","1","888.25","945","0","","","","","","","","1","zummXD2dvAtI.png","","","","1","","","","","","","","","","","0","2024-03-04 11:58:53","2024-03-04 12:14:28");
INSERT INTO products VALUES("111","PAGECAL","PG","standard","C128","10","23","1","1","1","165","888.25","467","","","","","","","","1","202405050737392.png","","0","","1","0","","0","","","","","","","","1","2024-03-04 12:15:33","2024-06-04 17:06:45");
INSERT INTO products VALUES("112","HAIRPLEA","HA","standard","C128","10","23","1","1","1","155","1270.75","29","","","","","","","","1","zummXD2dvAtI.png","","0","","1","0","","0","","","","","","","","1","2024-03-04 12:18:56","2024-04-15 18:50:46");
INSERT INTO products VALUES("113","CRANDOM","CR","standard","C128","10","23","1","1","1","845.75","995","0","","","","","","","","1","zummXD2dvAtI.png","","","","","","","","","","","","","","","0","2024-03-09 10:39:30","2024-03-09 10:41:15");



CREATE TABLE `purchase_product_return` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchase_product_return VALUES("1","1","3","","","","1","1","200","0","0","0","200","","2019-12-07 06:19:03");
INSERT INTO purchase_product_return VALUES("23","12","1","","","","1","1","320","0","10","32","352","2022-07-27 06:04:44","2022-07-27 06:04:44");
INSERT INTO purchase_product_return VALUES("26","14","25","","","","1","1","500","0","10","50","550","2022-09-04 10:02:14","2022-09-04 10:02:14");
INSERT INTO purchase_product_return VALUES("27","15","5","","","","1","1","90","0","0","0","90","2023-03-27 03:33:37","2023-03-27 03:33:37");



CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO purchases VALUES("266","pr-20231031-025445","1","1","6","3","320","1","1007","0","0","120840","0","0","0","0","120840","0","1","1","","","1970-01-01 05:00:00","2023-10-31 02:54:45");
INSERT INTO purchases VALUES("273","pr-20231031-025649","1","1","6","3","320","1","1007","0","0","125875","0","0","0","0","125875","125875","1","2","","","2022-09-28 00:00:00","2024-02-23 10:05:23");
INSERT INTO purchases VALUES("274","pr-20231031-025727","1","1","6","3","320","1","1010","0","0","146450","0","0","0","0","146450","146450","1","2","","","2022-09-28 00:00:00","2024-02-23 10:04:51");
INSERT INTO purchases VALUES("276","pr-20231031-025823","1","1","6","3","320","1","1008","0","0","156240","0","0","0","0","156240","156240","1","2","","","2022-09-29 00:00:00","2024-02-23 10:05:55");
INSERT INTO purchases VALUES("277","pr-20231031-025904","1","1","6","3","320","1","1066","0","0","154570","0","0","0","0","154570","154570","1","2","","","2022-12-10 00:00:00","2024-02-23 10:10:07");
INSERT INTO purchases VALUES("278","pr-20231031-025947","1","1","6","3","320","1","950","0","0","61750","0","0","0","0","61750","61750","1","2","","","2022-10-14 00:00:00","2024-02-23 10:06:23");
INSERT INTO purchases VALUES("279","pr-20231031-030022","1","1","6","3","320","1","155","0","0","24025","0","0","0","0","24025","24025","1","2","","PAID","2022-01-10 00:00:00","2024-02-23 10:01:27");
INSERT INTO purchases VALUES("280","pr-20231031-030053","1","1","6","3","320","1","430","0","0","66650","0","0","0","0","66650","66650","1","2","","","2022-10-27 00:00:00","2024-02-23 10:07:39");
INSERT INTO purchases VALUES("281","pr-20231031-030126","1","1","6","3","320","1","411","0","0","63705","0","0","0","0","63705","63705","1","2","","","2022-05-11 00:00:00","2024-02-23 10:01:57");
INSERT INTO purchases VALUES("282","pr-20231031-030341","1","1","6","3","320","1","1009","0","0","126125","0","0","0","0","126125","126125","1","2","","","2022-08-12 00:00:00","2024-02-23 10:04:06");
INSERT INTO purchases VALUES("283","pr-20231031-030417","1","1","6","3","320","1","2033","0","0","294785","0","0","0","0","294785","294785","1","2","","","2022-08-12 00:00:00","2024-02-23 10:02:30");
INSERT INTO purchases VALUES("284","pr-20231031-030444","1","1","6","3","320","1","990","0","0","153450","0","0","0","0","153450","153450","1","2","","","2023-01-14 00:00:00","2024-02-23 11:15:00");
INSERT INTO purchases VALUES("287","pr-20231031-030631","1","1","6","3","320","1","465","0","0","72075","0","0","0","0","72075","72075","1","2","","","2023-01-03 00:00:00","2024-02-23 10:10:35");
INSERT INTO purchases VALUES("309","pr-20240215-114033","1","1","6","3","320","2","1275","0","0","107000","0","0","0","0","107000","107000","1","2","","","2024-02-01 00:00:00","2024-02-15 14:25:12");
INSERT INTO purchases VALUES("310","pr-20240215-115950","1","1","6","3","320","2","1288","0","0","161240","0","0","0","0","161240","0","1","1","","","2024-01-30 00:00:00","2024-02-15 13:27:24");
INSERT INTO purchases VALUES("311","pr-20240215-121945","1","1","6","3","320","2","1989","0","0","241780","0","0","0","0","241780","0","1","1","","","2023-12-01 00:00:00","2024-02-15 13:31:58");
INSERT INTO purchases VALUES("312","pr-20240215-122052","1","1","6","3","320","1","1000","0","0","120000","0","0","0","0","120000","0","1","1","","","2023-11-08 00:00:00","2024-02-15 13:33:26");
INSERT INTO purchases VALUES("313","pr-20240215-122316","1","1","6","3","320","3","4080","0","0","478720","0","0","0","0","478720","0","1","1","","","2023-10-31 00:00:00","2024-02-15 13:37:35");
INSERT INTO purchases VALUES("314","pr-20240215-122840","1","1","6","3","320","2","1878","0","0","235370","0","0","0","0","235370","235370","1","2","","","2023-09-28 00:00:00","2024-02-23 11:27:23");
INSERT INTO purchases VALUES("315","pr-20240215-123128","1","1","6","3","320","2","1870","0","0","204400","0","0","0","0","204400","204400","1","2","","","2023-08-01 00:00:00","2024-02-23 11:24:16");
INSERT INTO purchases VALUES("316","pr-20240215-123252","1","1","6","3","320","1","994","0","0","129220","0","0","0","0","129220","129220","1","2","","","2023-07-02 00:00:00","2024-02-23 11:20:36");
INSERT INTO purchases VALUES("317","pr-20240215-123527","1","1","6","3","320","2","2000","0","0","230000","0","0","0","0","230000","230000","1","2","","","2023-06-21 00:00:00","2024-02-23 11:18:36");
INSERT INTO purchases VALUES("318","pr-20240215-123830","1","1","6","3","320","2","2871","0","0","266640","0","0","0","0","266640","266640","1","2","","","2023-05-30 00:00:00","2024-02-23 11:17:25");
INSERT INTO purchases VALUES("319","pr-20240215-124605","1","1","6","3","320","1","1000","0","0","120000","0","0","0","0","120000","120000","1","2","","","2023-02-09 00:00:00","2024-02-23 11:16:00");
INSERT INTO purchases VALUES("320","pr-20240215-011227","1","1","6","3","320","1","965","0","0","125450","0","0","0","0","125450","125450","1","2","","","2023-02-08 00:00:00","2024-02-23 11:15:32");
INSERT INTO purchases VALUES("321","pr-20240215-012916","1","1","6","3","320","1","277","0","0","33240","0","0","0","0","33240","0","1","1","","","2024-01-30 00:00:00","2024-02-15 13:29:16");
INSERT INTO purchases VALUES("322","pr-20240215-014200","1","1","6","3","320","1","1045","0","0","125400","0","0","0","0","125400","125400","1","2","","","2023-09-28 00:00:00","2024-02-23 11:26:06");
INSERT INTO purchases VALUES("323","pr-20240215-020333","1","1","6","3","320","1","1908","0","0","228960","0","0","0","0","228960","228960","1","2","","","2023-08-02 00:00:00","2024-02-23 11:25:40");
INSERT INTO purchases VALUES("324","pr-20240215-020434","1","1","6","3","320","1","930","0","0","111600","0","0","0","0","111600","111600","1","2","","","2023-06-01 00:00:00","2024-02-23 11:17:48");
INSERT INTO purchases VALUES("325","pr-20240216-025006","1","1","6","3","320","1","153","0","0","18360","0","0","0","0","18360","18360","1","2","","PAID","2022-12-07 00:00:00","2024-02-23 10:09:25");
INSERT INTO purchases VALUES("326","pr-20240216-025314","1","1","6","3","320","3","1240","0","0","151900","0","0","0","0","151900","151900","1","2","","PAID","2022-11-18 00:00:00","2024-02-23 10:08:25");
INSERT INTO purchases VALUES("327","pr-20240216-025812","1","1","6","3","320","4","1300","0","0","113200","0","0","0","0","113200","113200","1","2","","PAID","2022-10-25 00:00:00","2024-02-23 10:07:07");
INSERT INTO purchases VALUES("328","pr-20240217-093521","1","1","6","3","320","1","155","0","0","20150","0","0","0","0","20150","20150","1","2","","","2023-07-24 00:00:00","2024-02-23 11:22:26");
INSERT INTO purchases VALUES("329","pr-20240217-094221","1","1","6","3","320","1","900","0","0","130500","0","0","0","0","130500","130500","1","2","","","2023-03-01 00:00:00","2024-02-23 11:17:00");
INSERT INTO purchases VALUES("330","pr-20240217-094441","1","1","6","3","320","2","1365","0","0","168450","0","0","0","0","168450","168450","1","2","","","2023-03-01 00:00:00","2024-02-23 11:16:25");
INSERT INTO purchases VALUES("331","pr-20240217-095040","1","1","6","3","320","2","1863","0","0","203700","0","0","0","0","203700","203700","1","2","","","2023-01-07 00:00:00","2024-02-23 10:11:01");
INSERT INTO purchases VALUES("332","pr-20240217-095230","1","1","6","3","320","1","1085","0","0","130200","0","0","0","0","130200","130200","1","2","","","2022-12-07 00:00:00","2024-02-23 10:08:58");
INSERT INTO purchases VALUES("333","pr-20240304-113640","1","1","6","3","320","1","2000","0","0","1776500","0","0","0","0","1776500","0","1","1","","","2024-03-04 00:00:00","2024-03-04 11:36:40");
INSERT INTO purchases VALUES("334","pr-20240304-113747","1","1","6","3","320","1","200","0","0","254150","0","0","0","0","254150","0","1","1","","","2024-03-04 00:00:00","2024-03-04 11:37:47");
INSERT INTO purchases VALUES("335","pr-20240304-122018","1","1","6","3","320","1","200","0","0","299000","0","0","0","0","299000","0","1","1","","","2024-03-04 00:00:00","2024-03-04 12:20:18");
INSERT INTO purchases VALUES("336","pr-20240304-122234","1","1","6","3","320","1","2000","0","0","2090000","0","0","0","0","2090000","0","1","1","","","2024-03-04 00:00:00","2024-03-04 12:22:34");
INSERT INTO purchases VALUES("337","pr-20240603-054340","1","1","6","3","320","1","2000","0","0","330000","0","0","0","0","330000","0","1","1","","","2024-06-03 00:00:00","2024-06-03 17:43:40");
INSERT INTO purchases VALUES("339","pr-20240604-032530","1","1","6","3","320","1","500","0","0","77500","0","0","0","0","77500","0","1","1","","","2024-06-03 00:00:00","2024-06-04 15:25:30");



CREATE TABLE `quotations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO quotations VALUES("1","qr-20180809-055250","1","1","3","3","1","3","57","35","767.73","5930","10","583","100","500","6913","2","","first quotation...","2018-08-08 19:52:50","2018-09-03 23:32:16");
INSERT INTO quotations VALUES("2","qr-20180904-040257","1","1","","1","1","2","3.5","0","0","76","0","0","1.6","2.7","77.1","1","","","2018-09-03 18:02:57","2018-09-21 03:05:57");
INSERT INTO quotations VALUES("3","qr-20181023-061249","9","1","3","11","1","2","2","0","40","453","0","0","0","0","453","2","","","2018-10-22 20:12:49","2019-12-21 01:41:36");
INSERT INTO quotations VALUES("11","qr-20201024-090814","1","1","","1","1","1","2","0","3000","23000","0","0","0","0","23000","1","","","2020-10-23 23:08:14","2020-10-23 23:28:35");
INSERT INTO quotations VALUES("12","qr-20201210-053401","1","1","1","19","2","2","15","0","600","9100","0","0","100","500","9500","1","","","2020-12-09 18:34:01","2020-12-09 18:34:01");
INSERT INTO quotations VALUES("13","qr-20210112-125803","1","1","","11","1","3","12","0","155.65","1660","0","0","0","0","1660","1","","","2021-01-12 01:58:03","2021-01-12 01:59:14");
INSERT INTO quotations VALUES("15","qr-20210529-105356","1","1","","11","2","2","2","0","40","442","0","0","0","0","442","1","","","2021-05-29 00:53:56","2021-05-30 04:04:07");
INSERT INTO quotations VALUES("16","qr-20220219-122055","1","1","","19","1","1","1","0","0","120","0","0","","","120","1","","","2022-02-19 01:20:55","2022-02-19 01:20:55");
INSERT INTO quotations VALUES("17","qr-20220219-124103","1","1","","11","1","1","1","0","40","440","0","0","10","","430","1","","","2022-02-19 01:41:03","2022-02-19 01:41:03");
INSERT INTO quotations VALUES("18","qr-20220219-124638","1","1","","11","1","1","1","0","40","440","0","0","10","","430","1","","","2022-02-19 01:46:38","2022-02-19 01:46:38");
INSERT INTO quotations VALUES("19","qr-20220308-040521","1","1","","1","1","3","3","0","0","566","0","0","0","0","566","1","","asfsdf
fsdfsdf
sfsdfsdfs","2022-03-08 05:05:21","2022-03-13 00:38:58");



CREATE TABLE `return_purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO return_purchases VALUES("1","prr-20190101-090759","3","1","1","","1","","","1","1","0","0","200","0","0","200","","","","2018-12-31 22:07:59","2019-12-07 06:19:03");
INSERT INTO return_purchases VALUES("12","prr-20220727-040444","","2","1","","1","","","1","1","0","32","352","0","0","352","","","","2022-07-27 06:04:44","2022-07-27 06:04:44");
INSERT INTO return_purchases VALUES("14","prr-20220904-080213","1","2","1","161","1","","","1","1","0","50","550","0","0","550","","","","2022-09-04 10:02:13","2022-09-04 10:02:13");
INSERT INTO return_purchases VALUES("15","prr-20230327-013337","","1","1","172","1","2","0.9","1","1","0","0","90","0","0","90","","","","2023-03-27 03:33:37","2023-03-27 03:33:37");



CREATE TABLE `returns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO returns VALUES("2","rr-20180809-055834","1","","","1","1","1","1","","","1","20","0","0","40","10","4","44","","","","2018-08-08 19:58:34","2018-08-08 19:58:34");
INSERT INTO returns VALUES("3","rr-20180828-045527","1","","","1","2","1","1","","","1","2","0","0","44","0","0","44","","","","2018-08-27 18:55:27","2018-09-20 07:03:47");
INSERT INTO returns VALUES("5","rr-20181007-082129","1","","","11","2","2","1","","","1","1","0","0","250","0","0","250","","","","2018-10-06 22:21:29","2018-12-25 17:16:08");
INSERT INTO returns VALUES("6","rr-20190101-090630","9","","","1","1","1","1","","","1","1","0","40","440","0","0","440","","","","2018-12-31 22:06:30","2018-12-31 22:06:30");
INSERT INTO returns VALUES("13","rr-20200816-102502","1","","","1","2","2","1","","","1","1","0","1500","11500","0","0","11500","","","","2020-08-16 12:25:02","2020-08-16 12:25:02");
INSERT INTO returns VALUES("14","rr-20201013-053954","9","","1","1","1","1","1","","","1","1","0","40","440","0","0","440","","","","2020-10-13 07:39:54","2020-10-13 07:39:54");
INSERT INTO returns VALUES("18","rr-20201118-070218","1","","4","1","2","1","1","","","1","1","0","1500","11500","0","0","11500","","","","2020-11-17 20:02:18","2020-11-17 20:02:18");
INSERT INTO returns VALUES("19","rr-20201210-064025","1","","3","19","1","1","1","","","1","1","0","0","250","0","0","250","","","","2020-12-09 19:40:25","2020-12-09 19:40:25");
INSERT INTO returns VALUES("33","rr-20220531-123340","1","","","11","1","1","1","","","1","1","0","100","1100","0","0","1100","","","","2022-05-31 02:33:40","2022-05-31 02:33:40");
INSERT INTO returns VALUES("34","rr-20220531-124817","1","","","11","1","1","1","","","1","1","0","40","440","0","0","440","","","","2022-05-31 02:48:17","2022-05-31 02:48:17");
INSERT INTO returns VALUES("36","rr-20220614-032048","1","400","6","11","2","1","1","","","1","1","0","100","1100","0","0","1100","","","","2022-06-14 05:20:48","2022-06-14 05:20:48");
INSERT INTO returns VALUES("38","rr-20220904-011908","1","412","","11","1","5","1","","","1","1","0","0","250","0","0","250","","","","2022-09-04 03:19:08","2022-09-04 03:19:08");
INSERT INTO returns VALUES("39","rr-20230323-125050","1","457","7","1","1","1","1","2","0.9","1","1","0","0","108","0","0","108","","","","2023-03-23 02:50:50","2023-03-23 02:50:50");



CREATE TABLE `reward_point_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO reward_point_settings VALUES("1","300","1000","1","Year","1","2021-06-08 11:40:15","2021-06-27 01:20:55");



CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO role_has_permissions VALUES("4","1");
INSERT INTO role_has_permissions VALUES("4","2");
INSERT INTO role_has_permissions VALUES("4","4");
INSERT INTO role_has_permissions VALUES("5","1");
INSERT INTO role_has_permissions VALUES("5","2");
INSERT INTO role_has_permissions VALUES("6","1");
INSERT INTO role_has_permissions VALUES("6","2");
INSERT INTO role_has_permissions VALUES("6","4");
INSERT INTO role_has_permissions VALUES("7","1");
INSERT INTO role_has_permissions VALUES("7","2");
INSERT INTO role_has_permissions VALUES("7","4");
INSERT INTO role_has_permissions VALUES("8","1");
INSERT INTO role_has_permissions VALUES("8","2");
INSERT INTO role_has_permissions VALUES("8","4");
INSERT INTO role_has_permissions VALUES("9","1");
INSERT INTO role_has_permissions VALUES("9","2");
INSERT INTO role_has_permissions VALUES("9","4");
INSERT INTO role_has_permissions VALUES("10","1");
INSERT INTO role_has_permissions VALUES("10","2");
INSERT INTO role_has_permissions VALUES("11","1");
INSERT INTO role_has_permissions VALUES("11","2");
INSERT INTO role_has_permissions VALUES("12","1");
INSERT INTO role_has_permissions VALUES("12","2");
INSERT INTO role_has_permissions VALUES("12","4");
INSERT INTO role_has_permissions VALUES("13","1");
INSERT INTO role_has_permissions VALUES("13","2");
INSERT INTO role_has_permissions VALUES("14","1");
INSERT INTO role_has_permissions VALUES("14","2");
INSERT INTO role_has_permissions VALUES("15","1");
INSERT INTO role_has_permissions VALUES("15","2");
INSERT INTO role_has_permissions VALUES("16","1");
INSERT INTO role_has_permissions VALUES("16","2");
INSERT INTO role_has_permissions VALUES("17","1");
INSERT INTO role_has_permissions VALUES("17","2");
INSERT INTO role_has_permissions VALUES("18","1");
INSERT INTO role_has_permissions VALUES("18","2");
INSERT INTO role_has_permissions VALUES("19","1");
INSERT INTO role_has_permissions VALUES("19","2");
INSERT INTO role_has_permissions VALUES("20","1");
INSERT INTO role_has_permissions VALUES("20","2");
INSERT INTO role_has_permissions VALUES("20","4");
INSERT INTO role_has_permissions VALUES("21","1");
INSERT INTO role_has_permissions VALUES("21","2");
INSERT INTO role_has_permissions VALUES("21","4");
INSERT INTO role_has_permissions VALUES("22","1");
INSERT INTO role_has_permissions VALUES("22","2");
INSERT INTO role_has_permissions VALUES("22","4");
INSERT INTO role_has_permissions VALUES("23","1");
INSERT INTO role_has_permissions VALUES("23","2");
INSERT INTO role_has_permissions VALUES("24","1");
INSERT INTO role_has_permissions VALUES("24","2");
INSERT INTO role_has_permissions VALUES("24","4");
INSERT INTO role_has_permissions VALUES("25","1");
INSERT INTO role_has_permissions VALUES("25","2");
INSERT INTO role_has_permissions VALUES("25","4");
INSERT INTO role_has_permissions VALUES("26","1");
INSERT INTO role_has_permissions VALUES("26","2");
INSERT INTO role_has_permissions VALUES("27","1");
INSERT INTO role_has_permissions VALUES("27","2");
INSERT INTO role_has_permissions VALUES("28","1");
INSERT INTO role_has_permissions VALUES("28","2");
INSERT INTO role_has_permissions VALUES("28","4");
INSERT INTO role_has_permissions VALUES("29","1");
INSERT INTO role_has_permissions VALUES("29","2");
INSERT INTO role_has_permissions VALUES("29","4");
INSERT INTO role_has_permissions VALUES("30","1");
INSERT INTO role_has_permissions VALUES("30","2");
INSERT INTO role_has_permissions VALUES("31","1");
INSERT INTO role_has_permissions VALUES("31","2");
INSERT INTO role_has_permissions VALUES("32","1");
INSERT INTO role_has_permissions VALUES("32","2");
INSERT INTO role_has_permissions VALUES("33","1");
INSERT INTO role_has_permissions VALUES("33","2");
INSERT INTO role_has_permissions VALUES("34","1");
INSERT INTO role_has_permissions VALUES("34","2");
INSERT INTO role_has_permissions VALUES("35","1");
INSERT INTO role_has_permissions VALUES("35","2");
INSERT INTO role_has_permissions VALUES("36","1");
INSERT INTO role_has_permissions VALUES("36","2");
INSERT INTO role_has_permissions VALUES("37","1");
INSERT INTO role_has_permissions VALUES("37","2");
INSERT INTO role_has_permissions VALUES("38","1");
INSERT INTO role_has_permissions VALUES("38","2");
INSERT INTO role_has_permissions VALUES("39","1");
INSERT INTO role_has_permissions VALUES("39","2");
INSERT INTO role_has_permissions VALUES("40","1");
INSERT INTO role_has_permissions VALUES("40","2");
INSERT INTO role_has_permissions VALUES("41","1");
INSERT INTO role_has_permissions VALUES("41","2");
INSERT INTO role_has_permissions VALUES("42","1");
INSERT INTO role_has_permissions VALUES("42","2");
INSERT INTO role_has_permissions VALUES("43","1");
INSERT INTO role_has_permissions VALUES("43","2");
INSERT INTO role_has_permissions VALUES("44","1");
INSERT INTO role_has_permissions VALUES("44","2");
INSERT INTO role_has_permissions VALUES("45","1");
INSERT INTO role_has_permissions VALUES("45","2");
INSERT INTO role_has_permissions VALUES("46","1");
INSERT INTO role_has_permissions VALUES("46","2");
INSERT INTO role_has_permissions VALUES("47","1");
INSERT INTO role_has_permissions VALUES("47","2");
INSERT INTO role_has_permissions VALUES("48","1");
INSERT INTO role_has_permissions VALUES("48","2");
INSERT INTO role_has_permissions VALUES("49","1");
INSERT INTO role_has_permissions VALUES("49","2");
INSERT INTO role_has_permissions VALUES("50","1");
INSERT INTO role_has_permissions VALUES("50","2");
INSERT INTO role_has_permissions VALUES("51","1");
INSERT INTO role_has_permissions VALUES("51","2");
INSERT INTO role_has_permissions VALUES("52","1");
INSERT INTO role_has_permissions VALUES("52","2");
INSERT INTO role_has_permissions VALUES("53","1");
INSERT INTO role_has_permissions VALUES("53","2");
INSERT INTO role_has_permissions VALUES("54","1");
INSERT INTO role_has_permissions VALUES("54","2");
INSERT INTO role_has_permissions VALUES("55","1");
INSERT INTO role_has_permissions VALUES("55","2");
INSERT INTO role_has_permissions VALUES("55","4");
INSERT INTO role_has_permissions VALUES("56","1");
INSERT INTO role_has_permissions VALUES("56","2");
INSERT INTO role_has_permissions VALUES("56","4");
INSERT INTO role_has_permissions VALUES("57","1");
INSERT INTO role_has_permissions VALUES("57","2");
INSERT INTO role_has_permissions VALUES("57","4");
INSERT INTO role_has_permissions VALUES("58","1");
INSERT INTO role_has_permissions VALUES("58","2");
INSERT INTO role_has_permissions VALUES("59","1");
INSERT INTO role_has_permissions VALUES("59","2");
INSERT INTO role_has_permissions VALUES("60","1");
INSERT INTO role_has_permissions VALUES("60","2");
INSERT INTO role_has_permissions VALUES("61","1");
INSERT INTO role_has_permissions VALUES("61","2");
INSERT INTO role_has_permissions VALUES("62","1");
INSERT INTO role_has_permissions VALUES("62","2");
INSERT INTO role_has_permissions VALUES("63","1");
INSERT INTO role_has_permissions VALUES("63","2");
INSERT INTO role_has_permissions VALUES("63","4");
INSERT INTO role_has_permissions VALUES("64","1");
INSERT INTO role_has_permissions VALUES("64","2");
INSERT INTO role_has_permissions VALUES("64","4");
INSERT INTO role_has_permissions VALUES("65","1");
INSERT INTO role_has_permissions VALUES("65","2");
INSERT INTO role_has_permissions VALUES("66","1");
INSERT INTO role_has_permissions VALUES("66","2");
INSERT INTO role_has_permissions VALUES("67","1");
INSERT INTO role_has_permissions VALUES("67","2");
INSERT INTO role_has_permissions VALUES("68","1");
INSERT INTO role_has_permissions VALUES("68","2");
INSERT INTO role_has_permissions VALUES("69","1");
INSERT INTO role_has_permissions VALUES("69","2");
INSERT INTO role_has_permissions VALUES("70","1");
INSERT INTO role_has_permissions VALUES("70","2");
INSERT INTO role_has_permissions VALUES("71","1");
INSERT INTO role_has_permissions VALUES("71","2");
INSERT INTO role_has_permissions VALUES("72","1");
INSERT INTO role_has_permissions VALUES("72","2");
INSERT INTO role_has_permissions VALUES("73","1");
INSERT INTO role_has_permissions VALUES("73","2");
INSERT INTO role_has_permissions VALUES("74","1");
INSERT INTO role_has_permissions VALUES("74","2");
INSERT INTO role_has_permissions VALUES("75","1");
INSERT INTO role_has_permissions VALUES("75","2");
INSERT INTO role_has_permissions VALUES("76","1");
INSERT INTO role_has_permissions VALUES("76","2");
INSERT INTO role_has_permissions VALUES("77","1");
INSERT INTO role_has_permissions VALUES("77","2");
INSERT INTO role_has_permissions VALUES("78","1");
INSERT INTO role_has_permissions VALUES("78","2");
INSERT INTO role_has_permissions VALUES("79","1");
INSERT INTO role_has_permissions VALUES("79","2");
INSERT INTO role_has_permissions VALUES("80","1");
INSERT INTO role_has_permissions VALUES("80","2");
INSERT INTO role_has_permissions VALUES("81","1");
INSERT INTO role_has_permissions VALUES("81","2");
INSERT INTO role_has_permissions VALUES("82","1");
INSERT INTO role_has_permissions VALUES("82","2");
INSERT INTO role_has_permissions VALUES("83","1");
INSERT INTO role_has_permissions VALUES("83","2");
INSERT INTO role_has_permissions VALUES("84","1");
INSERT INTO role_has_permissions VALUES("84","2");
INSERT INTO role_has_permissions VALUES("85","1");
INSERT INTO role_has_permissions VALUES("85","2");
INSERT INTO role_has_permissions VALUES("86","1");
INSERT INTO role_has_permissions VALUES("86","2");
INSERT INTO role_has_permissions VALUES("87","1");
INSERT INTO role_has_permissions VALUES("87","2");
INSERT INTO role_has_permissions VALUES("88","1");
INSERT INTO role_has_permissions VALUES("88","2");
INSERT INTO role_has_permissions VALUES("89","1");
INSERT INTO role_has_permissions VALUES("89","2");
INSERT INTO role_has_permissions VALUES("89","4");
INSERT INTO role_has_permissions VALUES("90","1");
INSERT INTO role_has_permissions VALUES("90","2");
INSERT INTO role_has_permissions VALUES("91","1");
INSERT INTO role_has_permissions VALUES("91","2");
INSERT INTO role_has_permissions VALUES("92","1");
INSERT INTO role_has_permissions VALUES("92","2");
INSERT INTO role_has_permissions VALUES("93","1");
INSERT INTO role_has_permissions VALUES("93","2");
INSERT INTO role_has_permissions VALUES("94","1");
INSERT INTO role_has_permissions VALUES("94","2");
INSERT INTO role_has_permissions VALUES("95","1");
INSERT INTO role_has_permissions VALUES("95","2");
INSERT INTO role_has_permissions VALUES("96","1");
INSERT INTO role_has_permissions VALUES("96","2");
INSERT INTO role_has_permissions VALUES("97","1");
INSERT INTO role_has_permissions VALUES("97","2");
INSERT INTO role_has_permissions VALUES("98","1");
INSERT INTO role_has_permissions VALUES("98","2");
INSERT INTO role_has_permissions VALUES("99","1");
INSERT INTO role_has_permissions VALUES("99","2");
INSERT INTO role_has_permissions VALUES("100","1");
INSERT INTO role_has_permissions VALUES("100","2");
INSERT INTO role_has_permissions VALUES("101","1");
INSERT INTO role_has_permissions VALUES("101","2");
INSERT INTO role_has_permissions VALUES("102","1");
INSERT INTO role_has_permissions VALUES("102","2");
INSERT INTO role_has_permissions VALUES("103","1");
INSERT INTO role_has_permissions VALUES("103","2");
INSERT INTO role_has_permissions VALUES("104","1");
INSERT INTO role_has_permissions VALUES("104","2");
INSERT INTO role_has_permissions VALUES("105","1");
INSERT INTO role_has_permissions VALUES("105","2");
INSERT INTO role_has_permissions VALUES("106","1");
INSERT INTO role_has_permissions VALUES("106","4");
INSERT INTO role_has_permissions VALUES("107","1");
INSERT INTO role_has_permissions VALUES("108","1");
INSERT INTO role_has_permissions VALUES("109","1");
INSERT INTO role_has_permissions VALUES("110","1");
INSERT INTO role_has_permissions VALUES("111","1");
INSERT INTO role_has_permissions VALUES("112","1");
INSERT INTO role_has_permissions VALUES("113","1");
INSERT INTO role_has_permissions VALUES("114","1");
INSERT INTO role_has_permissions VALUES("115","1");
INSERT INTO role_has_permissions VALUES("116","1");
INSERT INTO role_has_permissions VALUES("117","1");
INSERT INTO role_has_permissions VALUES("118","1");
INSERT INTO role_has_permissions VALUES("119","1");
INSERT INTO role_has_permissions VALUES("120","1");
INSERT INTO role_has_permissions VALUES("121","1");
INSERT INTO role_has_permissions VALUES("122","1");
INSERT INTO role_has_permissions VALUES("123","1");
INSERT INTO role_has_permissions VALUES("124","1");
INSERT INTO role_has_permissions VALUES("125","1");
INSERT INTO role_has_permissions VALUES("126","1");
INSERT INTO role_has_permissions VALUES("127","1");



CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `guard_name` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO roles VALUES("1","Admin","admin can access all data...","web","1","2018-06-01 19:46:44","2018-06-02 19:13:05");
INSERT INTO roles VALUES("2","Owner","Staff of shop","web","1","2018-10-21 22:38:13","2022-02-01 08:13:30");
INSERT INTO roles VALUES("4","staff","staff has specific acess...","web","1","2018-06-01 20:05:27","2022-02-01 08:13:04");
INSERT INTO roles VALUES("5","Customer","","web","1","2020-11-05 01:43:16","2020-11-14 19:24:15");



CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `queue` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `exchange_rate` double DEFAULT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(191) DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 1,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text DEFAULT NULL,
  `staff_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=648 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO sales VALUES("1","sr-20180808-043622","1","","","","1","1","1","2","3","10","15.65","350","380","","","10","30","","","50","","","50","1","4","","1","380","ukgjkgjkgkj","gjkgjkgkujg","2018-08-08 06:36:22","2022-06-11 08:42:06");
INSERT INTO sales VALUES("2","sr-20180809-055453","1","","","","3","1","1","3","63","0","469.3","5103","5503","","","0","0","","","100","","","500","1","2","","1","2200","","","2018-08-08 19:54:53","2018-08-08 19:56:35");
INSERT INTO sales VALUES("3","posr-20180809-063214","1","","","","2","2","2","3","26","0","0","897","897","","","0","0","","","","","","","1","4","","1","897","","","2018-08-08 20:32:14","2018-08-08 20:32:14");
INSERT INTO sales VALUES("4","sr-20180825-034836","1","","","","1","1","1","1","2","0","80","880","880","","","0","0","","","","","","","1","4","","1","880","","","2018-08-24 17:48:36","2022-06-11 08:42:06");
INSERT INTO sales VALUES("7","sr-20180827-073545","1","","","","1","1","1","1","2","0","80","880","880","","","0","0","","","","","","","1","4","","1","880","","","2018-08-26 21:35:45","2018-08-26 21:35:45");
INSERT INTO sales VALUES("8","posr-20180902-053954","1","","","","1","1","2","1","2","0","288","3168","3529.8","","","10","311.8","","","50","","","100","1","4","","1","3529.8","good customer","good customer","2018-09-01 19:39:54","2018-09-01 19:39:54");
INSERT INTO sales VALUES("9","posr-20180903-033314","1","","","","1","2","1","1","10","0","0","20","20","","","0","0","","","","","","","1","4","","1","20","","","2018-09-02 17:33:14","2018-09-02 17:33:14");
INSERT INTO sales VALUES("10","posr-20180903-050138","1","","","","11","2","1","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2018-09-02 19:01:38","2022-06-14 01:02:45");
INSERT INTO sales VALUES("11","posr-20180903-100821","1","","","","11","2","1","1","5","0","500","5500","5500","","","0","0","","","","","","","1","4","","1","5500","","","2018-09-03 00:08:21","2018-09-03 00:08:21");
INSERT INTO sales VALUES("12","sr-20180903-101026","1","","","","3","1","5","1","10","0","1050","11550","11550","","","0","0","","","","","","","1","2","","1","0","","","2018-09-03 00:10:26","2018-09-21 22:55:14");
INSERT INTO sales VALUES("29","sr-20180909-093841","1","","","","1","1","1","1","1","0","0","120","132","","","10","12","","","","","","","1","4","","1","132","","","2018-09-08 23:38:41","2022-06-11 08:46:55");
INSERT INTO sales VALUES("30","posr-20180910-045706","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","0","","","0","1","4","","1","440","","","2018-09-09 18:57:06","2022-06-14 01:02:45");
INSERT INTO sales VALUES("31","posr-20180926-092059","1","","","","11","2","1","2","2","0","55.65","560","560","","","0","0","","","0","","","0","1","4","","1","560","","","2018-09-25 23:20:59","2018-09-25 23:21:25");
INSERT INTO sales VALUES("32","posr-20181004-095547","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","2","","1","130","","","2018-10-03 23:55:47","2022-06-14 01:02:45");
INSERT INTO sales VALUES("33","posr-20181004-100022","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","2","","1","","","","2018-10-04 00:00:22","2018-10-04 00:00:22");
INSERT INTO sales VALUES("37","sr-20181007-064605","1","","","","1","1","1","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2018-10-06 20:46:05","2022-06-11 08:50:42");
INSERT INTO sales VALUES("38","posr-20181007-064719","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","2","","1","0","","","2018-10-06 20:47:19","2018-10-06 23:17:02");
INSERT INTO sales VALUES("40","posr-20181007-071312","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","2","","1","0","","","2018-10-06 21:13:12","2018-10-06 23:17:39");
INSERT INTO sales VALUES("41","posr-20181010-041621","1","","","","1","2","1","2","2","0","40","461","461","","","0","0","","","","","","","1","4","","1","461","","","2018-10-09 18:16:21","2018-10-09 18:16:21");
INSERT INTO sales VALUES("42","posr-20181010-053450","1","","","","1","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2018-10-09 19:34:50","2018-10-09 19:34:50");
INSERT INTO sales VALUES("43","sr-20181016-033434","1","","","","1","1","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","sss
sss
s","","2018-10-15 17:34:34","2022-06-11 08:50:42");
INSERT INTO sales VALUES("55","posr-20181021-065334","1","","","","11","2","1","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2018-10-20 20:53:34","2018-10-20 20:53:34");
INSERT INTO sales VALUES("57","posr-20181021-082612","1","","","","11","2","1","2","3","0","40","482","575.2","","","10","43.2","","","50","","","100","1","4","","1","575.2","","","2018-10-20 22:26:12","2018-10-20 22:26:12");
INSERT INTO sales VALUES("58","posr-20181022-032723","1","","","","11","2","1","2","2","0","100","1220","1220","","","0","0","","","","","","","1","4","","1","1220","","","2018-10-22 05:27:23","2018-10-22 05:27:23");
INSERT INTO sales VALUES("73","posr-20181023-071543","11","","","","11","1","5","2","5","0","500","5500","5500","","","0","0","","","","","","","1","4","","1","5500","","","2018-10-22 21:15:43","2018-10-22 21:15:43");
INSERT INTO sales VALUES("74","posr-20181023-071644","1","","","","11","2","1","3","3","0","200","2320","2320","","","0","0","","","","","","","1","4","","1","2320","","","2018-10-22 21:16:44","2018-10-22 21:16:44");
INSERT INTO sales VALUES("75","posr-20181101-050027","1","","","","11","2","1","5","12","0","626.96","6980","7678","","","10","698","","","","","","","1","4","","1","7678","","","2018-10-31 19:00:27","2018-10-31 19:00:27");
INSERT INTO sales VALUES("76","posr-20181101-050126","1","","","","11","2","1","3","6","0","100","1434","1424","","","0","0","","","10","","","0","1","4","","1","1424","","","2018-10-31 19:01:26","2018-11-07 22:44:51");
INSERT INTO sales VALUES("79","posr-20181105-091516","1","","","","11","2","1","7","52","0","1069.57","14454","14454","","","0","0","","","","","","","1","4","","1","14454","","","2018-11-04 22:15:16","2018-11-04 22:15:16");
INSERT INTO sales VALUES("80","posr-20181105-091958","1","","","","11","2","1","3","8","0","191.3","2500","2500","","","0","0","","","","","","","1","4","","1","2500","","","2018-11-04 22:19:58","2018-11-04 22:19:58");
INSERT INTO sales VALUES("86","posr-20181105-095948","1","","","","11","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2018-11-04 22:59:48","2018-11-04 22:59:48");
INSERT INTO sales VALUES("88","posr-20181105-100258","1","","","","11","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2018-11-04 23:02:58","2018-11-04 23:02:58");
INSERT INTO sales VALUES("94","posr-20181126-020534","1","","","","11","2","1","1","1","0","15.65","120","120","","","0","0","","","","","","","1","4","","1","120","","","2018-11-26 03:05:34","2018-11-26 03:05:34");
INSERT INTO sales VALUES("95","posr-20181127-093608","1","","","","11","2","1","1","3","0","0","360","360","","","0","0","","","","","","","1","2","","1","","","","2018-11-26 22:36:08","2018-11-26 22:36:08");
INSERT INTO sales VALUES("96","posr-20181128-071509","1","","","","11","2","1","1","1","0","15.65","120","132","","","10","12","","","","","","","1","4","","1","132","","","2018-11-27 20:15:09","2018-11-27 20:15:09");
INSERT INTO sales VALUES("97","posr-20181201-060518","1","","","","11","2","1","2","3","0","31.3","262","262","","","0","0","","","","","","","1","2","","1","200","","","2018-11-30 19:05:18","2018-12-03 19:21:05");
INSERT INTO sales VALUES("98","posr-20181205-053558","1","","","","11","2","1","2","4","0","0","800","800","","","0","0","","","","","","","1","4","","1","800","","","2018-12-04 18:35:58","2018-12-04 18:35:58");
INSERT INTO sales VALUES("99","posr-20181205-053719","1","","","","11","1","1","2","4","0","0","800","800","","","0","0","","","","","","","1","4","","1","800","","","2018-12-04 18:37:19","2018-12-04 18:37:19");
INSERT INTO sales VALUES("101","posr-20181208-062026","1","","","","11","2","1","1","1","0","0","100","100","","","0","0","","","","","","","1","4","","1","100","","","2018-12-07 19:20:26","2018-12-07 19:20:26");
INSERT INTO sales VALUES("103","posr-20181224-045832","1","","","","11","2","1","1","1","0","15.65","120","120","","","0","0","","","","","","","1","4","","1","120","","","2018-12-23 17:58:32","2018-12-23 17:58:32");
INSERT INTO sales VALUES("104","sr-20181224-091527","1","","","","1","1","2","2","6","0","0","2508","2518","","","0","0","","","0","","","10","1","2","","1","118","","","2018-12-23 22:15:27","2022-06-11 08:52:05");
INSERT INTO sales VALUES("105","posr-20190101-054538","1","","","","1","2","1","1","1","0","0","21","21","","","0","0","","","","","","","1","4","","1","21","","","2018-12-31 18:45:38","2018-12-31 18:45:38");
INSERT INTO sales VALUES("106","posr-20190101-091040","1","","","","11","2","1","3","5","0","15.65","860","860","","","0","0","","","","","","","1","4","","1","860","","","2018-12-31 22:10:40","2018-12-31 22:10:40");
INSERT INTO sales VALUES("107","posr-20190103-065626","1","","","","11","2","1","6","10","0","395.65","5040","5040","","","0","0","","","","","","","1","4","","1","5040","","","2019-01-02 19:56:26","2019-01-02 19:56:26");
INSERT INTO sales VALUES("108","posr-20190120-035824","1","","","","11","2","1","1","1","0","15.65","120","120","","","0","0","","","","","","","1","4","","1","120","","","2019-01-20 04:58:24","2019-01-20 04:58:24");
INSERT INTO sales VALUES("109","posr-20190129-101443","9","","","","11","1","5","2","2","0","40","540","540","","","0","0","","","","","","","1","4","","1","540","","","2019-01-28 23:14:43","2019-01-28 23:14:43");
INSERT INTO sales VALUES("110","posr-20190129-115041","9","","","","11","1","5","2","3","0","100","1700","1700","","","0","0","","","","","","","1","4","","1","1700","","","2019-01-29 00:50:41","2019-01-29 00:50:41");
INSERT INTO sales VALUES("111","posr-20190131-110839","9","","","","11","1","5","2","2","0","0","271","271","","","0","0","","","","","","","1","4","","1","271","","","2019-01-31 00:08:39","2019-01-31 00:08:39");
INSERT INTO sales VALUES("112","posr-20190202-104045","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2019-02-01 23:40:45","2019-02-01 23:40:45");
INSERT INTO sales VALUES("113","posr-20190202-114117","1","","","","11","2","1","2","2","0","0","350","350","","","0","0","","","","","","","1","4","","1","350","","","2019-02-02 00:41:17","2019-02-02 00:41:17");
INSERT INTO sales VALUES("114","posr-20190205-030445","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2019-02-05 04:04:45","2019-02-05 04:04:45");
INSERT INTO sales VALUES("118","posr-20190207-111542","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","3","2","","1","","","","2019-02-07 00:15:42","2019-02-07 00:15:42");
INSERT INTO sales VALUES("120","sr-20190207-114036","1","","","","1","1","2","1","1","0","40","440","440","","","0","0","","","","","","","1","2","","1","50","","","2019-02-07 00:40:36","2019-02-07 02:09:15");
INSERT INTO sales VALUES("121","posr-20190209-104814","1","","","","11","2","1","7","17","0","55.65","1272","1272","","","0","0","","","","","","","1","4","","1","1272","","","2019-02-08 23:48:14","2019-02-08 23:48:14");
INSERT INTO sales VALUES("123","posr-20190219-023214","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2019-02-19 03:32:14","2019-02-19 03:32:14");
INSERT INTO sales VALUES("127","posr-20190303-104010","1","","","","11","2","1","3","3","0","200","2500","2500","","","0","0","","","","","","","1","4","","1","2500","","","2019-03-02 23:40:10","2019-03-02 23:40:10");
INSERT INTO sales VALUES("128","posr-20190404-095555","1","","","","11","2","1","2","2","0","55.65","560","560","","","0","0","","","","","","","1","4","","1","560","","","2019-04-03 23:55:55","2019-04-03 23:55:55");
INSERT INTO sales VALUES("129","posr-20190404-095937","1","","","","11","2","1","1","2","0","0","240","240","","","0","0","","","0","","","0","1","2","","1","120","","","2019-04-03 23:59:37","2019-04-11 00:50:16");
INSERT INTO sales VALUES("130","posr-20190421-122124","1","","","","11","2","1","3","3","0","58.78","586","586","","","0","0","","","","","","","1","4","","1","586","","","2019-04-21 02:21:24","2019-04-21 02:21:24");
INSERT INTO sales VALUES("131","posr-20190528-103229","1","","","","11","2","1","4","4","0","240","2890","2890","","","0","0","","","","","","","1","4","","1","2890","","","2019-05-28 00:32:29","2019-05-28 00:32:29");
INSERT INTO sales VALUES("132","posr-20190613-101637","1","","","","11","2","1","3","3","0","40","840","840","","","0","0","","","","","","","1","4","","1","840","","","2019-06-13 00:16:37","2019-06-13 00:16:37");
INSERT INTO sales VALUES("133","posr-20190613-101751","1","","","","11","2","1","3","4","0","200","2700","2700","","","0","0","","","","","","","1","4","","1","2700","","","2019-06-13 00:17:51","2019-06-13 00:17:51");
INSERT INTO sales VALUES("134","posr-20191019-033028","1","","","","11","2","1","4","4","0","240","2940","2940","","","0","0","","","","","","","1","4","","1","2940","","","2019-10-19 05:30:28","2019-10-19 05:30:28");
INSERT INTO sales VALUES("138","sr-20191031-122937","1","","","","1","1","1","1","1","0","0","120","120","","","0","0","","","","","","","1","1","","1","","","","2019-10-31 02:29:37","2019-10-31 02:29:37");
INSERT INTO sales VALUES("139","posr-20191103-114044","1","","","","11","2","1","2","102","0","37.57","488","488","","","0","0","","","","","","","1","4","","1","488","","","2019-11-03 01:40:44","2019-11-03 01:40:44");
INSERT INTO sales VALUES("144","posr-20191109-074131","1","","","","11","2","1","2","2","0","100","1220","1220","","","0","0","","","0","","","0","1","4","","1","1220","","","2019-11-09 08:41:31","2019-11-09 08:41:31");
INSERT INTO sales VALUES("147","posr-20191111-104008","1","","","","11","2","1","3","12","0","200","2220","2220","","","0","0","","","","","","","1","4","","1","2220","","","2019-11-10 23:40:08","2019-11-10 23:40:08");
INSERT INTO sales VALUES("172","posr-20191203-034631","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","2","","1","","","","2019-12-03 04:46:31","2019-12-03 04:46:31");
INSERT INTO sales VALUES("173","sr-20191204-111940","1","","","","2","1","1","2","2","0","36","621","621","","","0","0","","","","","","","1","4","","1","621","","","2019-12-04 12:19:40","2019-12-04 22:27:12");
INSERT INTO sales VALUES("187","posr-20191222-104058","1","","","","11","2","1","1","2","0","37.57","288","288","","","0","0","","","","","","","1","4","","1","288","","","2019-12-21 23:40:58","2019-12-21 23:40:58");
INSERT INTO sales VALUES("190","posr-20191223-125946","1","","","","11","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2019-12-23 01:59:46","2019-12-23 01:59:46");
INSERT INTO sales VALUES("193","posr-20200101-022028","1","","","","11","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2020-01-01 03:20:28","2020-01-01 03:20:28");
INSERT INTO sales VALUES("194","posr-20200102-043947","1","","","","11","2","1","2","3","0","81.57","892","892","","","0","0","","","","","","","1","4","","1","892","","","2020-01-02 05:39:47","2020-01-02 05:39:47");
INSERT INTO sales VALUES("201","posr-20200203-035256","1","","","","11","2","1","1","1","0","0","120","120","","","0","0","","","","","","","1","4","","1","120","","","2020-02-03 04:52:56","2020-02-03 04:52:56");
INSERT INTO sales VALUES("202","posr-20200204-105853","1","","","","11","2","1","2","2","0","100","1400","1400","","","0","0","","","","","","","1","4","","1","1400","","","2020-02-04 11:58:53","2020-02-04 11:58:53");
INSERT INTO sales VALUES("203","posr-20200302-115414","1","","","","11","2","1","2","2","0","0","350","350","","","0","0","","","","","","","1","4","","1","350","","","2020-03-02 00:54:14","2020-03-02 00:54:14");
INSERT INTO sales VALUES("204","posr-20200302-115741","1","","","","11","2","1","1","20","0","0","40","40","","","0","0","","","","","","","1","4","","1","40","","","2020-03-02 00:57:41","2020-03-02 00:57:41");
INSERT INTO sales VALUES("205","posr-20200311-044641","1","","","","11","2","1","1","1","0","40","440","352","","","0","0","","","","1","88","","1","4","","1","352","","","2020-03-11 06:46:42","2020-03-11 06:46:42");
INSERT INTO sales VALUES("206","sr-20200311-045230","1","","","","1","1","1","1","1","0","0","120","120","","","0","0","","","0","","","0","1","2","","1","","","","2020-03-11 06:52:30","2020-03-11 06:54:04");
INSERT INTO sales VALUES("207","posr-20200406-074024","1","","","","11","2","1","3","4","0","18.78","644","644","","","0","0","","","0","","","0","1","4","","1","644","","","2020-04-06 09:40:24","2020-04-06 09:42:01");
INSERT INTO sales VALUES("208","posr-20200506-105950","1","","","","11","2","1","2","2","0","140","1540","1540","","","0","0","","","","","","","1","4","","1","1540","","","2020-05-06 12:59:50","2020-05-06 12:59:50");
INSERT INTO sales VALUES("209","posr-20200609-124248","1","","","","11","2","1","2","2","0","100","1220","1220","","","0","0","","","","","","","1","4","","1","1220","","","2020-06-09 02:42:48","2020-06-09 02:42:48");
INSERT INTO sales VALUES("212","posr-20200703-063914","1","","","","11","2","1","3","3","0","235","2585","2585","","","0","0","","","","","","","1","4","","1","2585","","","2020-07-03 08:39:14","2020-07-03 08:39:14");
INSERT INTO sales VALUES("213","posr-20200712-095153","1","","","","11","2","1","1","1","0","0","13","13","","","0","0","","","","","","","1","4","","1","13","","","2020-07-12 11:51:53","2020-07-12 11:51:53");
INSERT INTO sales VALUES("217","posr-20200727-083808","1","","","","11","2","1","1","1","0","35","385","385","","","0","0","","","","","","","1","4","","1","385","","","2020-07-27 10:38:08","2020-07-27 10:38:08");
INSERT INTO sales VALUES("218","posr-20200727-084024","1","","","","11","2","1","1","1","0","35","385","385","","","0","0","","","","","","","1","4","","1","385","","","2020-07-27 10:40:24","2020-07-27 10:40:24");
INSERT INTO sales VALUES("219","posr-20200727-084644","1","","","","11","2","1","1","1","0","35","385","385","","","0","0","","","","","","","1","4","","1","385","","","2020-07-27 10:46:45","2020-07-27 10:46:45");
INSERT INTO sales VALUES("220","posr-20200812-062804","1","","","","11","2","1","3","6","0","0","760","760","","","0","0","","","","","","","1","4","","1","760","","","2020-08-12 08:28:04","2020-08-12 08:28:04");
INSERT INTO sales VALUES("221","posr-20200812-063035","1","","","","11","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2020-08-12 08:30:35","2020-08-12 08:30:35");
INSERT INTO sales VALUES("222","posr-20200816-100424","1","","","","11","2","1","1","2","0","3000","23000","23000","","","0","0","","","","","","","1","4","","1","23000","","","2020-08-16 12:04:24","2020-08-16 12:04:24");
INSERT INTO sales VALUES("223","posr-20200816-100523","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2020-08-16 12:05:23","2020-08-16 12:07:35");
INSERT INTO sales VALUES("224","sr-20200826-080139","1","","","","1","1","1","1","3","30","117","1287","1287","","","0","0","","","","","","","1","1","","1","","","","2020-08-26 10:01:39","2020-08-26 10:01:39");
INSERT INTO sales VALUES("230","posr-20201017-092852","9","2","","","11","1","5","1","1","0","0","250","250","","","0","0","","","","","","","1","2","","1","350","","","2020-10-17 11:28:52","2020-10-18 00:51:38");
INSERT INTO sales VALUES("231","sr-20201018-111333","9","2","","","1","1","5","1","1","0","40","440","440","","","0","0","","","","","","","1","2","","1","250","","","2020-10-18 01:13:33","2020-10-18 01:17:24");
INSERT INTO sales VALUES("232","posr-20201022-013014","9","2","","","11","1","5","1","1","0","0","100","100","","","0","0","","","","","","","1","4","","1","100","","","2020-10-22 03:30:14","2020-10-22 03:30:14");
INSERT INTO sales VALUES("233","posr-20201022-015604","1","3","","","11","1","1","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2020-10-22 03:56:04","2020-10-22 03:56:04");
INSERT INTO sales VALUES("234","posr-20201024-070506","1","4","","","11","2","1","1","1","0","1500","11500","11500","","","0","0","","","","","","","1","4","","1","11500","","","2020-10-23 21:05:06","2020-10-23 21:05:06");
INSERT INTO sales VALUES("235","posr-20201024-070751","1","4","","","11","2","1","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2020-10-23 21:07:51","2020-10-23 21:07:51");
INSERT INTO sales VALUES("237","posr-20201024-034601","1","4","","","11","2","1","3","9","0","7900","61900","61900","","","0","0","","","","","","","1","4","","1","61900","","","2020-10-24 05:46:01","2020-10-24 05:46:01");
INSERT INTO sales VALUES("239","posr-20201027-054002","1","3","","","11","1","1","1","1","0","0","2","2","","","0","0","","","","","","","1","4","","1","2","","","2020-10-26 19:40:02","2020-10-26 19:40:02");
INSERT INTO sales VALUES("240","posr-20201027-054206","1","3","","","11","1","1","1","2","0","0","6","6","","","0","0","","","","","","","1","4","","1","6","","","2020-10-26 19:42:06","2020-10-26 19:42:06");
INSERT INTO sales VALUES("241","posr-20201027-063200","1","4","","","11","2","1","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2020-10-26 20:32:00","2020-10-26 20:32:00");
INSERT INTO sales VALUES("242","posr-20201029-073030","1","4","","","11","2","1","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2020-10-28 21:30:30","2020-10-28 21:30:30");
INSERT INTO sales VALUES("243","posr-20201101-072112","1","4","","","11","2","1","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2020-10-31 21:21:12","2020-10-31 21:21:12");
INSERT INTO sales VALUES("245","posr-20201101-074223","1","3","","","11","1","5","2","3","0","80","1130","1130","","","","0","","","0","","","0","1","4","","1","1130","","","2020-10-31 21:42:23","2020-10-31 21:42:23");
INSERT INTO sales VALUES("246","posr-20201101-075017","1","4","","","11","2","1","1","1","0","40","440","440","","","0","0","","","0","","","0","1","4","","1","440","ssss
ssas","hhhh
kkkk","2020-10-31 21:50:17","2020-11-02 05:39:17");
INSERT INTO sales VALUES("250","posr-20201106-013041","1","4","","","11","2","1","1","1","0","34.4","378.4","378.4","","","0","0","","","","","","","1","4","","1","378.4","","","2020-11-06 02:30:41","2020-11-06 02:30:41");
INSERT INTO sales VALUES("251","posr-20201109-011524","1","4","","","19","2","1","2","2","0","34.4","610.6","610.6","","","0","0","","","","","","","1","2","","1","500","","","2020-11-09 02:15:24","2020-11-09 02:15:24");
INSERT INTO sales VALUES("252","posr-20201111-055858","1","3","","","11","1","1","1","1","0","0","229.5","229.5","","","0","0","","","","","","","1","4","","1","229.5","","","2020-11-10 18:58:58","2020-11-10 18:58:58");
INSERT INTO sales VALUES("253","posr-20201114-064736","1","4","","","11","2","1","3","3","0","1275","10242.5","10242.5","","","0","0","","","","","","","1","4","","1","10242.5","","","2020-11-13 19:47:36","2020-11-13 19:47:36");
INSERT INTO sales VALUES("256","posr-20201117-064748","1","4","","","11","2","1","2","2","0","65","715","715","","","0","0","","","","","","","1","4","","1","715","","","2020-11-16 19:47:48","2020-11-16 19:47:48");
INSERT INTO sales VALUES("257","posr-20201117-070919","1","4","","","11","2","1","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2020-11-16 20:09:19","2020-11-16 20:09:19");
INSERT INTO sales VALUES("258","posr-20201118-065239","1","4","","","11","2","1","1","3","0","4500","34500","27200","","","0","0","","","600","1","6800","100","1","4","","1","27200","","","2020-11-17 19:52:39","2020-11-17 19:52:39");
INSERT INTO sales VALUES("262","1111","1","3","","","1","1","1","1","2","0","3000","23000","23000","","","0","0","","","0","","","0","1","1","","1","","","","2020-11-28 18:21:30","2020-11-28 18:21:30");
INSERT INTO sales VALUES("263","posr-20201208-093957","1","4","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","2","","1","350","","","2020-12-07 22:39:57","2021-01-06 03:23:50");
INSERT INTO sales VALUES("270","sr-20210111-014535","1","3","","","1","1","1","2","2","0","137.57","1388","1388","","","0","0","","","0","","","0","1","2","","1","","","","2021-01-11 02:45:35","2021-01-11 02:58:44");
INSERT INTO sales VALUES("271","posr-20210111-021625","1","3","","","19","1","2","3","4","0","98.78","1274","1274","","","0","0","","","","","","","1","4","","1","1274","","","2021-01-11 03:16:25","2021-01-11 03:16:25");
INSERT INTO sales VALUES("274","posr-20210113-070243","1","4","","","11","2","1","4","15","40","91.65","1556","1556","","","0","0","","","","","","","1","4","","1","1556","","","2021-01-12 20:02:43","2021-01-12 20:02:43");
INSERT INTO sales VALUES("275","posr-20210201-023748","1","4","","","11","2","1","1","1","0","40","440","484","","","10","44","","","","","","","1","4","","1","484","","","2021-02-01 03:37:48","2021-02-01 03:37:48");
INSERT INTO sales VALUES("277","posr-20210216-070948","1","4","","","11","2","1","15","15","0","1758.78","15156","15156","","","0","0","","","","","","","1","4","","1","15156","","","2021-02-15 20:09:48","2021-02-15 20:09:48");
INSERT INTO sales VALUES("278","posr-20210217-073238","1","4","","","11","2","1","5","6","0","3140","24910","26949.9","","","10","2440.9","","","501","","","100","1","4","","1","26949.9","","","2021-02-16 20:32:38","2021-02-16 20:32:38");
INSERT INTO sales VALUES("279","sr-20210311-014034","1","3","","","1","1","1","1","2","0","0","4","4","","","0","0","","","","","","","1","1","","1","","","","2021-03-11 02:40:34","2021-03-11 02:40:34");
INSERT INTO sales VALUES("280","sr-20210317-041411","1","3","","","1","1","1","1","1","0","0","2","2","","","0","0","","","","","","","1","1","","1","","","","2021-03-16 18:14:11","2021-03-16 18:14:11");
INSERT INTO sales VALUES("282","sr-20210318-054729","1","3","","","1","2","1","1","1","0","0","2","2","","","0","0","","","0","","","0","1","2","","1","","","","2021-03-17 19:47:29","2021-03-20 00:59:57");
INSERT INTO sales VALUES("288","sr-20210412-014046","1","3","","","11","1","1","1","1","0","0","120","120","","","0","0","","","","","","","1","1","","1","","","","2021-04-12 03:40:46","2021-04-12 03:40:46");
INSERT INTO sales VALUES("289","posr-20210524-071424","1","4","","","11","2","1","2","2","0","40","690","640","","","0","0","","","50","","","","1","4","","1","640","","","2021-05-24 09:14:24","2021-05-24 09:14:24");
INSERT INTO sales VALUES("290","sr-20210524-071512","1","3","","","1","1","1","1","1","0","0","120","120","","","0","0","","","0","","","0","1","4","","1","120","","","2021-05-24 09:15:12","2021-05-24 09:46:47");
INSERT INTO sales VALUES("294","posr-20210601-123530","1","4","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2021-06-01 02:35:30","2021-06-01 02:35:30");
INSERT INTO sales VALUES("295","posr-20210601-032209","1","3","","","11","1","1","1","1","0","0","2","2","","","0","0","","","","","","","1","4","","1","2","","","2021-06-01 05:22:09","2021-06-01 05:22:09");
INSERT INTO sales VALUES("296","posr-20210601-034624","1","3","","","11","1","1","1","1","0","0","2","2","","","0","0","","","","","","","1","4","","1","2","","","2021-06-01 05:46:24","2021-06-01 05:46:24");
INSERT INTO sales VALUES("297","posr-20210601-074150","9","2","","","11","1","5","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2021-06-01 09:41:50","2021-06-01 09:41:50");
INSERT INTO sales VALUES("298","posr-20210601-075547","9","2","","","11","1","5","1","1","0","0","2","2","","","0","0","","","","","","","1","4","","1","2","","","2021-06-01 09:55:47","2021-06-01 09:55:47");
INSERT INTO sales VALUES("299","posr-20210616-105325","1","4","","","11","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2021-06-16 00:53:25","2021-06-16 00:53:25");
INSERT INTO sales VALUES("300","posr-20210616-111033","1","4","","","19","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2021-06-16 01:10:33","2021-06-16 01:10:33");
INSERT INTO sales VALUES("301","posr-20210616-111111","1","4","","","19","2","1","2","2","0","200","2200","2200","","","0","0","","","","","","","1","4","","1","2200","","","2021-06-16 01:11:11","2021-06-16 01:11:11");
INSERT INTO sales VALUES("302","posr-20210616-080452","1","4","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2021-06-16 10:04:52","2021-06-16 10:04:52");
INSERT INTO sales VALUES("303","posr-20210616-080543","1","4","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2021-06-16 10:05:43","2021-06-16 10:05:43");
INSERT INTO sales VALUES("304","posr-20210616-080634","1","4","","","19","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2021-06-16 10:06:34","2021-06-17 02:13:59");
INSERT INTO sales VALUES("305","posr-20210616-082842","1","4","","","19","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2021-06-16 10:28:42","2021-06-16 10:28:42");
INSERT INTO sales VALUES("306","sr-20210617-115553","1","3","","","19","1","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2021-06-17 01:55:53","2021-06-17 01:55:53");
INSERT INTO sales VALUES("307","sr-20210617-122349","1","3","","","19","1","1","1","2","0","200","2200","2200","","","0","0","","","0","","","0","1","2","","1","100","","","2021-06-17 02:23:49","2021-06-17 05:00:13");
INSERT INTO sales VALUES("308","posr-20210618-083127","1","4","","","11","2","1","2","5","0","157.57","1608","1608","","","0","0","","","","","","","1","4","","1","1608","","","2021-06-18 10:31:27","2021-06-18 10:31:27");
INSERT INTO sales VALUES("309","posr-20210618-083254","1","3","","","11","1","1","1","1","0","0","2","2","","","0","0","","","","","","","1","4","","1","2","","","2021-06-18 10:32:54","2021-06-18 10:32:54");
INSERT INTO sales VALUES("310","posr-20210619-105121","1","4","","","11","2","1","6","6","0","58.78","958","958","","","0","0","","","","","","","1","4","","1","958","","","2021-06-19 00:51:21","2021-06-19 00:51:21");
INSERT INTO sales VALUES("311","sr-20210619-105344","1","5","","","11","1","1","1","1","0","40","440","440","","","0","0","","","","","","","1","1","","1","","","","2021-06-19 00:53:44","2021-06-19 00:53:44");
INSERT INTO sales VALUES("312","posr-20210619-110231","1","4","","","11","2","1","1","1","0","40","440","440","","","0","0","","","","","","","1","4","","1","440","","","2021-06-19 01:02:31","2021-06-19 01:02:31");
INSERT INTO sales VALUES("313","posr-20210619-110628","1","4","","","19","2","1","1","1","0","0","250","250","","","0","0","","","","","","","1","4","","1","250","","","2021-06-19 01:06:28","2021-06-19 01:06:28");
INSERT INTO sales VALUES("314","posr-20210627-124247","1","4","","","11","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2021-06-27 02:42:47","2021-06-27 02:42:47");
INSERT INTO sales VALUES("317","posr-20210707-103455","1","4","","","11","2","1","1","1","0","0","18","18","","","0","0","","","","","","","1","4","","1","18","","","2021-07-07 00:34:55","2021-07-07 00:34:55");
INSERT INTO sales VALUES("325","posr-20210814-092805","1","4","","","11","2","1","1","2","0","0","2400","2400","","","0","0","","","0","","","0","1","2","","1","1250","","","2021-08-14 11:28:05","2021-08-14 11:34:27");
INSERT INTO sales VALUES("333","posr-20210921-010722","1","4","","","11","2","1","1","1","0","0","2","2","","","","0","","","0","","","0","1","4","","1","2","","","2021-09-21 03:07:22","2021-09-21 03:07:22");
INSERT INTO sales VALUES("334","posr-20210921-035020","1","4","","","11","2","1","1","1","0","0","120","120","","","0","0","","","","","","","1","4","","1","120","","","2021-09-21 05:50:20","2021-09-21 05:50:20");
INSERT INTO sales VALUES("335","posr-20210923-024704","1","4","","","11","2","1","1","0.5","0","0","11","11","","","0","0","","","","","","","1","4","","1","11","","","2021-09-23 04:47:04","2021-09-23 04:47:04");
INSERT INTO sales VALUES("336","posr-20211003-051829","1","4","","","11","2","1","2","2","0","100","1220","1220","","","0","0","","","","","","","1","4","","1","1220","","","2021-10-03 07:18:29","2021-10-03 07:18:29");
INSERT INTO sales VALUES("338","posr-20211003-054404","1","4","","","11","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2021-10-03 07:44:04","2021-10-03 07:44:04");
INSERT INTO sales VALUES("340","posr-20211007-025229","1","4","","","11","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2021-10-07 04:52:29","2021-10-07 04:52:29");
INSERT INTO sales VALUES("341","posr-20211007-033840","1","4","","","11","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2021-10-07 05:38:40","2021-10-07 05:38:40");
INSERT INTO sales VALUES("342","sr-20211009-121242","1","4","","","11","2","1","2","3","0","200","2320","2320","","","0","0","","","0","","","0","1","2","","1","","","","2021-10-09 02:12:42","2021-10-09 06:22:39");
INSERT INTO sales VALUES("343","sr-20211009-043232","1","4","","","11","2","1","1","2","0","200","2200","2200","","","0","0","","","","","","","1","1","","1","","","","2021-10-09 06:32:32","2021-10-09 06:32:32");
INSERT INTO sales VALUES("348","posr-20211014-035820","1","4","","","19","2","1","1","1","0","100","1100","1100","","","0","0","","","","","","","1","4","","1","1100","","","2021-10-14 05:58:20","2021-10-14 05:58:20");
INSERT INTO sales VALUES("349","posr-20211020-011209","1","4","","","11","2","1","1","1","0","0","102","102","","","0","0","","","","","","","1","4","","1","102","","","2021-10-20 03:12:09","2021-10-20 03:12:09");
INSERT INTO sales VALUES("353","posr-20211114-013929","1","4","","","11","2","1","1","1","0","34","374","374","","","","0","","","0","","","0","1","4","","1","374","","","2021-11-14 02:39:29","2021-11-14 02:39:29");
INSERT INTO sales VALUES("354","sr-20211115-120309","1","4","","","11","2","1","3","3","0","140","1542","1542","","","0","0","","","0","","","0","1","1","","1","","","","2021-11-15 01:03:09","2021-11-15 01:03:09");
INSERT INTO sales VALUES("355","posr-20211124-062857","1","4","","","11","2","1","5","6","0","240","3161","3161","","","0","0","","","","","","","1","4","","1","3161","","","2021-11-24 07:28:57","2021-11-24 07:28:57");
INSERT INTO sales VALUES("356","posr-20211207-070932","1","4","","","11","2","1","3","3","0","40","573","573","","","0","0","","","","","","","1","4","","1","573","","","2021-12-07 08:09:32","2021-12-07 08:09:32");
INSERT INTO sales VALUES("360","posr-20211222-070313","1","4","","","11","2","1","1","2","0","3.13","24","24","","","0","0","","","0","","","0","1","4","","1","24","","","2021-12-22 08:03:13","2022-01-30 02:37:54");
INSERT INTO sales VALUES("362","posr-20220203-035931","1","4","","","19","2","1","1","2","0","0","8.5","8.5","","","0","0","","","","","","","1","4","","1","8.5","","","2022-02-03 04:59:31","2022-02-03 04:59:31");
INSERT INTO sales VALUES("363","posr-20220203-070547","1","4","","","19","2","1","4","5","0","0","521","521","","","0","0","Flat","0","0","","","0","1","2","","1","466","","","2022-01-31 13:00:00","2022-05-22 06:39:48");
INSERT INTO sales VALUES("364","posr-20220205-054526","1","4","","","11","2","1","1","1","0","40","440","396","","","0","0","Percentage","10","44","","","0","1","4","","1","396","","","2022-02-05 06:45:26","2022-02-05 08:31:58");
INSERT INTO sales VALUES("365","posr-20220205-054616","1","4","","","11","2","1","1","1","0","0","250","240","","","0","0","Flat","10","10","","","0","1","4","","1","240","","","2022-02-05 06:46:16","2022-02-05 08:31:09");
INSERT INTO sales VALUES("372","sr-20220219-120815","1","5","","","11","1","1","1","1","0","0","120","108","","","0","0","Percentage","10","12","","","0","1","2","","1","","","","2022-02-16 13:00:00","2022-02-20 10:15:54");
INSERT INTO sales VALUES("376","sr-20220220-083638","1","5","","","11","1","1","1","1","0","40","440","440","","","0","0","Flat","0","0","","","0","1","2","","1","","","","2022-02-19 13:00:00","2022-02-20 10:15:23");
INSERT INTO sales VALUES("377","posr-20220227-115905","1","4","","","11","2","1","2","3","0","0","620","620","","","0","0","Flat","0","0","","","0","1","2","","1","521","","","2022-02-26 13:00:00","2022-03-12 08:12:38");
INSERT INTO sales VALUES("379","posr-20220309-115901","1","4","","","11","2","1","3","3","0","140","1790","1790","","","0","0","Flat","","0","","","","1","4","","1","1790","","","2022-03-09 00:59:01","2022-03-09 00:59:01");
INSERT INTO sales VALUES("380","posr-20220312-082027","1","","","","11","2","1","1","1","0","40","440","440","","","0","0","Flat","0","0","","","0","1","4","","1","440","jhjkhjk
kjkljkljkl
kkljkljklj","","2022-03-11 13:00:00","2022-03-13 00:37:35");
INSERT INTO sales VALUES("381","sr-20220312-082452","1","","","","11","1","1","2","2","0","0","360","360","","","0","0","Flat","0","0","","","0","1","2","","1","350","","","2022-03-11 13:00:00","2022-03-12 09:26:22");
INSERT INTO sales VALUES("382","posr-20220424-110144","1","6","","","11","2","1","3","3","0","100","1225","1225","","","0","0","Flat","","0","","","","1","4","","1","1225","","","2022-04-24 01:01:44","2022-04-24 01:01:44");
INSERT INTO sales VALUES("383","posr-20220516-112427","1","6","","","11","2","1","2","3","0","300","3300","3300","","","0","0","Flat","","0","","","","1","4","","1","3300","","","2022-05-16 01:24:27","2022-05-16 01:24:27");
INSERT INTO sales VALUES("385","posr-20220526-090112","1","6","","","11","2","1","2","2","0","0","370","370","","","0","0","Flat","","0","","","","1","4","","1","370","","","2022-05-26 11:01:12","2022-05-26 11:01:12");
INSERT INTO sales VALUES("386","posr-20220531-122026","1","6","","","11","2","1","1","2","0","80","880","880","","","0","0","Flat","0","0","","","0","2","2","","1","440","","","2022-05-30 14:00:00","2022-06-06 07:11:27");
INSERT INTO sales VALUES("397","posr-20220606-051413","1","6","","","11","2","1","3","3","0","200","2320","2320","","","0","0","Flat","","0","","","","1","4","","1","2320","","","2022-06-06 07:14:13","2022-06-06 07:14:13");
INSERT INTO sales VALUES("400","posr-20220614-115719","1","6","","","11","2","1","2","3","0","300","3300","3300","","","0","0","Flat","","0","","","","1","2","","1","2200","","","2022-06-14 01:57:19","2022-09-04 05:55:25");
INSERT INTO sales VALUES("403","posr-20220614-050144","1","6","","","11","2","1","1","1","0","0","120","120","","","0","0","Flat","","0","","","","1","2","","1","111","","","2022-06-14 07:01:44","2022-06-14 07:01:44");
INSERT INTO sales VALUES("404","posr-20220615-102330","1","6","","","11","2","1","1","1","0","0","300","300","","","0","0","Flat","","0","","","","1","4","","1","300","","","2022-06-15 00:23:30","2022-06-15 00:23:30");
INSERT INTO sales VALUES("409","posr-20220809-115444","1","","","","11","1","1","3","3","0","40","591","591","","","0","0","Flat","","0","","","","1","4","","1","591","","","2022-08-09 01:54:44","2022-08-09 01:54:44");
INSERT INTO sales VALUES("410","posr-20220825-013137","1","6","","","11","2","1","1","1","0","0","120","120","","","0","0","Flat","","0","","","","1","4","","1","120","","","2022-08-25 03:31:37","2022-08-25 03:31:37");
INSERT INTO sales VALUES("411","posr-20220901-123619","1","6","","","11","2","1","2","2","0","40","690","690","","","0","0","Flat","","0","","","","1","4","","1","690","","","2022-09-01 02:36:19","2022-09-01 02:36:19");
INSERT INTO sales VALUES("412","sr-20220904-011755","1","","","","11","1","5","2","2","0","40","690","690","","","0","0","Flat","","0","","","","1","1","","1","","","","2022-09-04 03:17:55","2022-09-04 03:17:55");
INSERT INTO sales VALUES("413","posr-20220911-011826","1","","","","11","1","1","1","1","0","110","1210","1210","","","0","0","Flat","","0","","","","1","4","","1","1210","","","2022-09-11 03:18:26","2022-09-11 03:18:26");
INSERT INTO sales VALUES("414","posr-20220915-085859","1","6","","","11","2","1","1","1","0","40","440","440","","","0","0","Flat","","0","","","","1","4","","1","440","","","2022-09-15 10:58:59","2022-09-15 10:58:59");
INSERT INTO sales VALUES("415","posr-20221002-081636","1","6","","","11","2","1","2","2","0","40","560","560","","","0","0","Flat","","0","","","","1","4","","1","560","","","2022-10-02 10:16:36","2022-10-02 10:16:36");
INSERT INTO sales VALUES("494","001","1","7","","","49","1","1","1","100","12708","0","114367","114367","","","0","0","Flat","","0","","","0","1","1","","1","","","","2023-10-12 00:00:00","2023-10-12 20:38:15");
INSERT INTO sales VALUES("495","sr-20231028-011909","1","7","","","56","1","1","1","10","0","0","6418","6418","","","0","0","Flat","0","0","","","0","1","2","","1","","","","2023-10-02 00:00:00","2023-10-28 13:30:33");
INSERT INTO sales VALUES("496","sr-20231028-013314","1","7","","","57","1","1","1","2","0","0","1525.7","1525.7","","","0","0","Flat","","0","","","0","1","1","","1","","","","2023-10-02 00:00:00","2023-10-28 13:33:14");
INSERT INTO sales VALUES("497","sr-20231028-013441","1","7","","","57","1","1","1","2","0","0","1106","1106","","","0","0","Flat","","0","","","0","1","1","","1","","","","2023-10-02 00:00:00","2023-10-28 13:34:41");
INSERT INTO sales VALUES("498","sr-20231028-013842","1","7","","","58","1","1","1","10","0","0","6430","6430","","","0","0","Flat","","0","","","0","1","4","","1","6430","","","2023-10-09 00:00:00","2023-10-28 13:38:42");
INSERT INTO sales VALUES("499","sr-20231028-014020","1","7","","","59","1","1","1","10","0","0","6090","6090","","","0","0","Flat","","0","","","0","1","4","","1","6090","","","2023-10-09 00:00:00","2023-10-28 13:40:20");
INSERT INTO sales VALUES("500","sr-20231028-014917","1","7","","","60","1","1","1","2","0","0","0","0","","","0","0","Flat","0","0","","","0","1","4","","1","","DR KAMRAN SOMALNI 2 BOXES INFADOM  AREA(I-S-M)","","2023-10-09 00:00:00","2023-10-28 14:14:23");
INSERT INTO sales VALUES("501","sr-20231028-021902","1","7","","","61","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR WASEEM ONE PAGECAL (CIVIL)","","2023-10-09 00:00:00","2023-10-28 14:19:02");
INSERT INTO sales VALUES("502","sr-20231028-022304","1","7","","","60","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR NAZNEEN ONE PAGECAL AREA (ANKEL SERYA)","","2023-10-09 00:00:00","2023-10-28 14:23:04");
INSERT INTO sales VALUES("504","sr-20231028-022922","1","7","","","60","1","1","1","3","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR M.A.QURASHI THREE PAGECAL","","2023-10-20 00:00:00","2023-10-28 14:29:23");
INSERT INTO sales VALUES("505","sr-20231028-023201","1","7","","","60","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR WALI WARD JPMC 17 ONE PAGECAL","","2023-10-20 00:00:00","2023-10-28 14:32:01");
INSERT INTO sales VALUES("506","sr-20231028-023318","1","7","","","60","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR AMMAR WARD 17 JPMC (ONE PAGECAL)","","2023-10-20 00:00:00","2023-10-28 14:33:18");
INSERT INTO sales VALUES("507","sr-20231028-023730","1","7","","","60","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR ZAREEN ABBASI SHAHEED (ONE PAGECAL)","","2023-10-23 00:00:00","2023-10-28 14:37:30");
INSERT INTO sales VALUES("508","sr-20231028-023844","1","7","","","60","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR HUMA MALIK (ONE IROHEME)","","2023-10-23 00:00:00","2023-10-28 14:38:44");
INSERT INTO sales VALUES("509","sr-20231028-024139","1","7","","","60","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR SUNILA ..HOSPITAL (ONE FALNEU)","","2023-10-23 00:00:00","2023-10-28 14:41:39");
INSERT INTO sales VALUES("510","sr-20231028-024248","1","7","","","60","1","1","1","2","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR KAMRAN SOMLANI (TWO PAGECAL)","","2023-10-23 00:00:00","2023-10-28 14:42:48");
INSERT INTO sales VALUES("511","sr-20231028-024413","1","7","","","60","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR SANA SERVICES HOSPITAL(ONE IROHEME)","","2023-10-23 00:00:00","2023-10-28 14:44:13");
INSERT INTO sales VALUES("512","sr-20231030-052215","1","7","","","62","1","1","1","2","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY BY MISS KANWAL FOR (DR KHALID) PAGECAL (2)BOX","","2023-10-30 00:00:00","2023-10-30 17:22:15");
INSERT INTO sales VALUES("513","sr-20231030-053832","1","7","","","62","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY BY MISS KANWAL FOR DR KHALID (ONE PAGCAL)AND (ONE HAIRPLEA)","","2023-10-30 00:00:00","2023-10-30 17:38:32");
INSERT INTO sales VALUES("514","sr-20231030-054413","1","7","","","62","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY BY MISS KANWAL FOR (DR KHALID JPMC ORTHOPADIC) (ONE PAGECAL) AND (ONE HAIRPLEA)","","2023-10-30 00:00:00","2023-10-30 17:44:13");
INSERT INTO sales VALUES("515","sr-20231030-054808","1","7","","","64","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY BY MISS KANWAL FOR (DR MEER) JPMC ORTHO (ONE PAGECAL) AND (ONE HAIRPLEA)","","2023-10-30 00:00:00","2023-10-30 17:48:08");
INSERT INTO sales VALUES("516","sr-20231030-055210","1","7","","","65","1","1","2","2","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLENTRY BY MIS KANWAL FOR DR OWAIS MALIK  JPMC 17(ONE IROHEME AND ONE PAGECAL)","","2023-10-30 00:00:00","2023-10-30 17:52:10");
INSERT INTO sales VALUES("517","sr-20231030-055526","1","7","","","67","1","1","1","2","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY BY MIS FATIMA FOR (DR NIGHAT TIBRI MEMON HOSPITAL) (TWO INFADOM)","","2023-10-30 00:00:00","2023-10-30 17:55:26");
INSERT INTO sales VALUES("518","sr-20231030-055736","1","7","","","68","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY BY MISS HINA FOR (DR SEHER MODREN HOSPITAL) (ONE IROHEME)","","2023-10-30 00:00:00","2023-10-30 17:57:36");
INSERT INTO sales VALUES("519","sr-20231030-061116","1","7","","","64","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLENTRY BY MISS KANWAL FOR (DR MEER JPMC ORTHO) (ONE HAIRPLEA)","","2023-10-30 00:00:00","2023-10-30 18:11:16");
INSERT INTO sales VALUES("520","sr-20231030-061348","1","7","","","63","1","1","1","1","0","0","406640","406640","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY BY MIS KANWAL FOR (DR KHALID JPMC ORTHO)  (ONE HAIRPLEA)","","2023-10-30 00:00:00","2023-10-30 18:13:48");
INSERT INTO sales VALUES("521","sr-20231030-061530","1","7","","","63","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLENTRY BY MISS KANWAL FOR (DR KHALID JPMC ORTHO) (ONE HAIRPLEA)","","2023-10-30 18:15:30","2023-10-30 18:15:30");
INSERT INTO sales VALUES("522","sr-20231030-062237","1","7","","","69","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY (ONE PAGECAL) FOR  PERSONAL USE TO MISS HINA","","2023-10-30 00:00:00","2023-10-30 18:22:37");
INSERT INTO sales VALUES("523","sr-20231030-062643","1","7","","","70","1","1","1","3","0","0","6506.31","6506.31","","","0","0","Flat","","0","","","0","1","1","","1","","AVAILBLITY (3 PAGECALL)","","2023-10-30 00:00:00","2023-10-30 18:26:43");
INSERT INTO sales VALUES("524","AVAILABILITY","1","7","","","70","1","1","1","3","240.75","0","2166","2166","","","0","0","Flat","","0","","","0","1","1","","1","","Hussain Rep. 
Availability.","","2023-10-30 00:00:00","2023-10-30 18:38:56");
INSERT INTO sales VALUES("525","availbilty","1","7","","","71","1","1","1","5","400","0","3615","3615","","","0","0","Flat","","0","","","0","1","1","","1","","ON AVAILBILTY 
5 (PAGECAL)","","2023-10-30 00:00:00","2023-10-30 18:53:45");
INSERT INTO sales VALUES("526","sr-20231030-070108","1","7","","","71","1","1","1","2","116","0","1048.5","1048.5","","","0","0","Flat","","0","","","0","1","1","","1","","ON AVAILBILTY
2 INFADOM DROPS","","2023-10-30 00:00:00","2023-10-30 19:01:08");
INSERT INTO sales VALUES("527","sr-20231030-070707","1","7","","","71","1","1","1","2","116","0","1048.5","1048.5","","","0","0","Flat","","0","","","0","1","1","","1","","ON AVAILBILTY
(2 INFADOM)","","2023-10-30 00:00:00","2023-10-30 19:07:07");
INSERT INTO sales VALUES("528","sr-20231030-075942","1","7","","","72","1","1","1","1","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY (ONE PAGCAL) FOR DR M A QURESHI BY IMRAN UDDIN","","2023-10-30 00:00:00","2023-10-30 19:59:42");
INSERT INTO sales VALUES("529","sr-20231101-051440","1","7","","","73","1","1","5","2481","198636.5","0","1787843.25","1787843.25","","","0","0","Flat","0","0","","","0","1","2","","1","","","","2023-11-01 00:00:00","2023-11-01 17:26:30");
INSERT INTO sales VALUES("530","sr-20231106-074008","1","7","","","76","1","1","2","3","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY 
1Pagecal for (YASIR PHARMAX CIVIL)
1PAGECAL FOR ZULFIQAR PHARMAX JPMC)
1 HAIRPLEA FOR DR AFSHEEN","","2023-11-06 00:00:00","2023-11-06 19:40:08");
INSERT INTO sales VALUES("532","8888","1","7","","","56","1","1","2","3","0","0","165","0","","","0","0","Percentage","100","165","","","0","1","1","","1","","","","2023-11-20 00:00:00","2023-11-15 14:16:51");
INSERT INTO sales VALUES("533","sr-20231115-023737","1","7","","","58","1","1","2","20","3197","0","12788","12788","","","0","0","Flat","","0","","","0","1","1","","1","","","","2023-11-15 00:00:00","2023-11-15 14:37:37");
INSERT INTO sales VALUES("534","sr-20231121-013540","1","7","","","77","1","1","3","5","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY ON 28/12/2022","","2022-12-28 00:00:00","2023-11-21 13:35:40");
INSERT INTO sales VALUES("535","sr-20231121-015437","1","7","","","78","1","1","4","10","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","1 HAIRPLEA (DR OMAIMA)  
1 HAIRPLEA (DR SALMA)
1 HAIRPLEA (DR ASHRAF)
1 IROHEME (DR FATIMA)
2 PAGECALL (DR NAZNEEN)
1 PAGECALL (DR SAJJAD)
1 INFADOM (DR CHANDNA)
1 INFADOM (DR NEELM)
1 PAGECALL  (DR NEELM)","","2022-12-26 00:00:00","2023-11-21 13:54:37");
INSERT INTO sales VALUES("536","sr-20231121-020048","1","7","","","79","1","1","2","3","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","2 HAIRPLEA
1 IROHEME  
        
MR ZULFIQAR","","2022-12-13 00:00:00","2023-11-21 14:00:48");
INSERT INTO sales VALUES("537","sr-20231121-020843","1","7","","","78","1","1","1","2","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR IMRAN UDDIN  ZIAUDIN HOSPITAL","","2022-12-20 00:00:00","2023-11-21 14:08:43");
INSERT INTO sales VALUES("538","sr-20231127-061826","1","7","","","61","1","1","4","9","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","1 CRANDOM FOR DR ANEELA
1 CRANDOM FOR DR SHUMAILA
1 CRANDOM FOR DR NEELAM
2 INFADOM FOR DR NIGHAT
1 IROHEME FOR DR NAZNEEN
1 PAGECAL DOR DR GHUFRAN
2 PAGECAL FOR DR AMMAR","","2023-11-27 00:00:00","2023-11-27 18:18:26");
INSERT INTO sales VALUES("539","sr-20231202-022946","1","7","","","49","1","1","5","2243","179606.22","0","1616490.54","1616490.54","","","0","0","Flat","0","0","","","0","1","2","","1","","","","2023-12-02 00:00:00","2023-12-02 15:51:52");
INSERT INTO sales VALUES("540","sr-20231207-121451","1","7","","","78","1","1","2","5","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","CAMP ACTIVITY (COMPLEMENTRY)","","2023-12-06 00:00:00","2023-12-07 12:14:51");
INSERT INTO sales VALUES("541","sr-20231213-035910","1","7","","","80","1","1","1","5","794.75","0","3179","3179","","","0","0","Flat","0","0","","","0","1","2","","1","","DR NAHEED TAHIR  (MBBS, ULTRASONOLOGIST)
             (NAHEED MEDICAL CENTER)
R-34 SECTOR 16-A BUFFER ZONE KARACHI","","2023-12-13 00:00:00","2023-12-13 16:41:21");
INSERT INTO sales VALUES("543","sr-20231218-053656","1","7","","","82","1","1","3","15","1902.85","0","10783.4","10783.4","","","0","0","Flat","","0","","","0","1","1","","1","","","","2023-12-18 00:00:00","2023-12-18 17:36:56");
INSERT INTO sales VALUES("544","sr-20231218-055404","1","7","","","78","1","1","2","5","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","DR WAJAHAT  (1 PAGECAL) 
DR NOREEN  (1 IROHEME)
DR SADIQ RAZAK  (1 PAGECAL) (1 IROHEME)
DR QASIM  (1 PAGECAL)","","2023-12-18 00:00:00","2023-12-18 17:54:04");
INSERT INTO sales VALUES("545","sr-20240101-065839","1","7","","","78","1","1","3","8","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","MISS KANWAL(1 PAGECAL FOR DR QASIM JPMC)   (2 PAGECAL FOR DR UMAIR CIVIL)  (1 PAGECAL FOR DR M.A QURESHI)  (1 PAGECAL FOR DR ZEEHAN)  (2 INFADOM  FOR DR KAMRAN) (1  HAIRPLEA FOR FIN)","","2024-01-01 00:00:00","2024-01-01 18:58:39");
INSERT INTO sales VALUES("546","sr-20240102-030811","1","7","","","49","1","1","4","1225","103815.89","0","934352.89","934352.89","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-01-02 00:00:00","2024-01-02 15:08:11");
INSERT INTO sales VALUES("547","sr-20240108-062243","1","7","","","80","1","1","1","5","794.75","0","3179","3179","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-01-08 00:00:00","2024-01-08 18:22:43");
INSERT INTO sales VALUES("548","sr-20240116-040328","1","7","","","49","1","1","1","60","4564.5","0","41080.5","41080.5","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-01-16 00:00:00","2024-01-16 16:03:28");
INSERT INTO sales VALUES("549","sr-20240117-042720","1","7","","","49","1","1","1","100","5822","0","52403","52403","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-01-17 00:00:00","2024-01-17 16:27:20");
INSERT INTO sales VALUES("550","sr-20240118-115238","1","7","","","78","1","1","4","12","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-01-15 00:00:00","2024-01-18 11:52:38");
INSERT INTO sales VALUES("551","sr-20240123-124253","1","7","","","78","1","1","2","3","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","(1 HAIRPLEA FOR DR PYARE ALI) (1 HAIRPLEA FOR FIN)   (1 CRANDOM FOR DR SUNITA)","","2024-01-22 00:00:00","2024-01-23 12:42:53");
INSERT INTO sales VALUES("553","sr-20240126-021739","1","7","","","78","1","1","2","12","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY FOR ZULFIQAR BALOCH  (OWNER)","","2024-01-26 00:00:00","2024-01-26 14:17:39");
INSERT INTO sales VALUES("554","sr-20240126-023519","1","7","","","49","1","1","4","1300","0","0","1021700","919530","","","0","0","Percentage","10","102170","","","0","1","4","","1","919530","","","2022-09-28 00:00:00","2024-05-12 19:47:04");
INSERT INTO sales VALUES("555","sr-20240126-024016","1","7","","","49","1","1","2","255","0","0","202491.25","202491.25","","","0","0","Flat","0","0","","","0","1","4","","1","202491.25","","","2022-10-14 00:00:00","2024-01-26 14:44:14");
INSERT INTO sales VALUES("557","sr-20240126-025146","1","7","","","49","1","1","2","310","0","0","234515","234515","","","0","0","Flat","","0","","","0","1","4","","1","234515","","","2022-10-18 00:00:00","2024-01-26 14:51:46");
INSERT INTO sales VALUES("558","sr-20240126-025456","1","7","","","49","1","1","4","1300","0","0","891225","891225","","","0","0","Flat","","0","","","0","1","4","","1","891225","","","2022-10-25 00:00:00","2024-01-26 14:54:56");
INSERT INTO sales VALUES("559","sr-20240126-025814","1","7","","","49","1","1","3","1240","0","0","993395","993395","","","0","0","Flat","","0","","","0","1","4","","1","993395","","","2022-11-18 00:00:00","2024-01-26 14:58:14");
INSERT INTO sales VALUES("560","sr-20240126-030323","1","7","","","49","1","1","1","82","6237.74","0","56143.76","56143.76","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-01-26 00:00:00","2024-01-26 15:03:23");
INSERT INTO sales VALUES("561","sr-20240131-010941","1","7","","","49","1","1","2","310","26084.95","0","234780.05","234780.05","","","0","0","Flat","","0","","","0","1","4","","1","234780.05","","","2022-12-24 00:00:00","2024-01-31 13:09:41");
INSERT INTO sales VALUES("562","sr-20240131-011238","1","7","","","49","1","1","1","1000","0","0","760750","760750","","","0","0","Flat","","0","","","0","1","4","","1","760750","","","2022-12-08 00:00:00","2024-01-31 13:12:38");
INSERT INTO sales VALUES("563","sr-20240131-011515","1","7","","","49","1","1","1","153","0","0","116394.75","116394.75","","","0","0","Flat","","0","","","0","1","4","","1","116394.75","","","2022-12-07 00:00:00","2024-01-31 13:15:15");
INSERT INTO sales VALUES("564","sr-20240131-012042","1","7","","","59","1","1","4","75","11394.25","0","45577","45577","","","0","0","Flat","","0","","","0","1","4","","1","45577","","","2022-12-26 00:00:00","2024-01-31 13:20:42");
INSERT INTO sales VALUES("565","sr-20240131-012650","1","7","","","83","1","1","2","2","359.11","0","1077.39","1077.39","","","0","0","Flat","","0","","","0","1","4","","1","1077.39","","","2022-12-08 00:00:00","2024-01-31 13:26:50");
INSERT INTO sales VALUES("566","sr-20240131-014231","1","7","","","49","1","1","1","155","11659.1","0","104939.65","104939.65","","","0","0","Flat","","0","","","0","1","4","","1","104939.65","","","2023-01-19 00:00:00","2024-01-31 13:42:31");
INSERT INTO sales VALUES("567","sr-20240131-015155","1","7","","","49","1","1","4","1318","102832.06","0","925523.44","925523.44","","","0","0","Flat","","0","","","0","1","4","","1","925523.44","","","2023-01-09 00:00:00","2024-01-31 13:51:55");
INSERT INTO sales VALUES("568","sr-20240131-021801","1","7","","","58","1","1","4","50","7420.5","0","29682","29682","","","0","0","Flat","","0","","","0","1","4","","1","29682","","","2023-01-20 00:00:00","2024-01-31 14:18:01");
INSERT INTO sales VALUES("569","sr-20240131-022220","1","7","","","58","1","1","4","50","7590.5","0","30362","30362","","","0","0","Flat","","0","","","0","1","4","","1","30362","","","2023-01-03 00:00:00","2024-01-31 14:22:20");
INSERT INTO sales VALUES("570","sr-20240131-023336","1","7","","","85","1","1","1","2","150.45","0","1354.05","1354.05","","","0","0","Flat","","0","","","0","1","4","","1","1354.05","","","2023-02-20 00:00:00","2024-01-31 14:33:36");
INSERT INTO sales VALUES("571","sr-20240131-024936","1","7","","","49","1","1","1","155","15085.38","0","135768.38","135768.38","","","0","0","Flat","","0","","","0","1","4","","1","135768.38","","","2023-02-15 00:00:00","2024-01-31 14:49:36");
INSERT INTO sales VALUES("572","sr-20240131-030003","1","7","","","49","1","1","1","775","62251.88","0","560266.88","560266.88","","","0","0","Flat","","0","","","0","1","4","","1","560266.88","","","2023-02-09 00:00:00","2024-01-31 15:00:03");
INSERT INTO sales VALUES("573","sr-20240131-034608","1","7","","","49","1","1","5","750","57991.25","0","521921.25","521921.25","","","0","0","Flat","","0","","","0","1","4","","1","521921.25","","","2023-02-04 00:00:00","2024-01-31 15:46:08");
INSERT INTO sales VALUES("574","sr-20240131-035140","1","7","","","56","1","1","1","10","1521.5","0","6086","6086","","","0","0","Flat","","0","","","0","1","2","","1","","","","2023-02-22 00:00:00","2024-01-31 15:51:40");
INSERT INTO sales VALUES("575","sr-20240131-035432","1","7","","","86","1","1","1","10","912.9","0","6694.6","6694.6","","","0","0","Flat","","0","","","0","1","4","","1","6694.6","","","2023-02-13 00:00:00","2024-01-31 15:54:32");
INSERT INTO sales VALUES("576","sr-20240131-035842","1","7","","","58","1","1","3","35","5367.75","0","21471","21471","","","0","0","Flat","","0","","","0","1","4","","1","21471","","","2023-02-13 00:00:00","2024-01-31 15:58:42");
INSERT INTO sales VALUES("577","sr-20240201-014414","1","7","","","49","1","1","6","2463","201786.18","0","1816075.58","1816075.58","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-02-01 00:00:00","2024-02-01 13:44:14");
INSERT INTO sales VALUES("578","sr-20240201-020222","1","7","","","58","1","1","1","15","2027.25","0","8109","8109","","","0","0","Flat","","0","","","0","1","4","","1","8109","","","2023-02-04 00:00:00","2024-02-01 14:02:22");
INSERT INTO sales VALUES("579","sr-20240201-020603","1","7","","","56","1","1","1","10","1606.5","0","6426","6426","","","0","0","Flat","","0","","","0","1","4","","1","6426","","","2023-02-22 00:00:00","2024-02-01 14:06:03");
INSERT INTO sales VALUES("580","sr-20240206-011617","1","7","","","49","1","1","6","1945","155628.63","0","1400657.63","1400657.63","","","0","0","Flat","","0","","","0","1","1","","1","","","","2023-03-01 00:00:00","2024-02-06 13:16:17");
INSERT INTO sales VALUES("581","sr-20240206-012023","1","7","","","58","1","1","2","30","4819.5","0","19278","19278","","","0","0","Flat","","0","","","0","1","4","","1","19278","","","2023-03-06 00:00:00","2024-02-06 13:20:23");
INSERT INTO sales VALUES("582","sr-20240206-014156","1","7","","","49","1","1","4","930","75229.27","0","677063.27","677063.27","","","0","0","Flat","","0","","","0","1","1","","1","","","","2023-04-28 00:00:00","2024-02-06 13:41:56");
INSERT INTO sales VALUES("583","sr-20240206-014429","1","7","","","85","1","1","1","10","803.25","0","7229.25","7229.25","","","0","0","Flat","","0","","","0","1","4","","1","7229.25","","","2023-04-17 00:00:00","2024-02-06 13:44:29");
INSERT INTO sales VALUES("584","sr-20240206-022946","1","7","","","58","1","1","4","60","9707","0","38828","38828","","","0","0","Flat","0","0","","","0","1","2","","1","","","","2023-04-04 00:00:00","2024-02-10 13:56:30");
INSERT INTO sales VALUES("585","sr-20240206-023412","1","7","","","87","1","1","1","15","2620.13","0","6113.63","6113.63","","","0","0","Flat","","0","","","0","1","1","","1","","","","2023-05-23 00:00:00","2024-02-06 14:34:12");
INSERT INTO sales VALUES("586","sr-20240206-024346","1","7","","","87","1","1","1","50","12048.75","0","28113.75","28113.75","","","0","0","Flat","","0","","","0","1","4","","1","28113.75","","","2023-05-12 00:00:00","2024-02-06 14:43:46");
INSERT INTO sales VALUES("587","sr-20240206-025501","1","7","","","49","1","1","4","565","53989.89","0","485908.89","485908.89","","","0","0","Flat","","0","","","0","1","4","","1","485908.89","","","2023-06-20 00:00:00","2024-02-06 14:55:01");
INSERT INTO sales VALUES("588","sr-20240206-030233","1","7","","","49","1","1","5","1907","151346.93","0","1362124.82","1362124.82","","","0","0","Flat","","0","","","0","1","4","","1","1362124.82","","","2023-06-01 00:00:00","2024-02-06 15:02:33");
INSERT INTO sales VALUES("589","sr-20240206-030844","1","7","","","88","1","1","1","5","401.63","0","3614.63","3614.63","","","0","0","Flat","","0","","","0","1","4","","1","3614.63","","","2023-06-19 00:00:00","2024-02-06 15:08:44");
INSERT INTO sales VALUES("590","sr-20240206-031445","1","7","","","56","1","1","1","10","1606.5","0","6426","6426","","","0","0","Flat","","0","","","0","1","4","","1","6426","","","2023-06-05 00:00:00","2024-02-06 15:14:45");
INSERT INTO sales VALUES("591","sr-20240206-032034","1","7","","","58","1","1","3","26","4370.7","0","17482.8","17482.8","","","0","0","Flat","","0","","","0","1","4","","1","17482.8","","","2023-07-31 00:00:00","2024-02-06 15:20:34");
INSERT INTO sales VALUES("592","sr-20240206-032842","1","7","","","49","1","1","5","975","79545.13","0","715906.13","715906.13","","","0","0","Flat","","0","","","0","1","4","","1","715906.13","","","2023-07-05 00:00:00","2024-02-06 15:28:42");
INSERT INTO sales VALUES("593","sr-20240206-033623","1","7","","","49","1","1","1","987","79280.78","0","713526.97","713526.97","","","0","0","Flat","","0","","","0","1","4","","1","713526.97","","","2023-07-11 00:00:00","2024-02-06 15:36:23");
INSERT INTO sales VALUES("594","sr-20240206-033802","1","7","","","49","1","1","1","155","12318.63","0","110867.63","110867.63","","","0","0","Flat","","0","","","0","1","4","","1","110867.63","","","2023-07-24 00:00:00","2024-02-06 15:38:02");
INSERT INTO sales VALUES("595","sr-20240206-081802","1","7","","","56","1","1","1","10","1606.5","0","6426","6426","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-02-06 00:00:00","2024-02-06 20:18:02");
INSERT INTO sales VALUES("596","sr-20240206-082038","1","7","","","80","1","1","1","5","794.75","0","3179","3179","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-02-06 00:00:00","2024-02-06 20:20:38");
INSERT INTO sales VALUES("597","sr-20240210-021112","1","7","","","89","1","1","1","10","1207.21","0","11500.29","11500.29","","","0","0","Flat","","0","","","0","1","4","","1","11500.29","","","2023-05-31 00:00:00","2024-02-10 14:11:12");
INSERT INTO sales VALUES("598","sr-20240210-021520","1","7","","","84","1","1","2","9","735.37","0","7003.88","7003.88","","","0","0","Flat","","0","","","0","1","4","","1","7003.88","","","2023-05-31 00:00:00","2024-02-10 14:15:20");
INSERT INTO sales VALUES("599","sr-20240210-021823","1","7","","","89","1","1","1","10","1207.2","0","11495.3","11495.3","","","0","0","Flat","","0","","","0","1","4","","1","11495.3","","","2023-05-15 00:00:00","2024-02-10 14:18:23");
INSERT INTO sales VALUES("600","sr-20240210-022136","1","7","","","87","1","1","1","50","10040.6","0","30121.9","30121.9","","","0","0","Flat","","0","","","0","1","4","","1","30121.9","","","2023-05-12 00:00:00","2024-02-10 14:21:36");
INSERT INTO sales VALUES("601","sr-20240210-022629","1","7","","","58","1","1","3","25","3931.25","0","15725","15725","","","0","0","Flat","","0","","","0","1","4","","1","15725","","","2023-05-03 00:00:00","2024-02-10 14:26:29");
INSERT INTO sales VALUES("602","sr-20240210-023056","1","7","","","84","1","1","2","6","443.71","0","3993.29","3993.29","","","0","0","Flat","","0","","","0","1","4","","1","3993.29","","","2023-05-03 00:00:00","2024-02-10 14:30:56");
INSERT INTO sales VALUES("603","sr-20240210-024953","1","7","","","58","1","1","2","30","4819.5","0","19278","19278","","","0","0","Flat","","0","","","0","1","4","","1","19278","","","2023-03-06 00:00:00","2024-02-10 14:49:53");
INSERT INTO sales VALUES("604","sr-20240210-025729","1","7","","","90","1","1","2","15","1641.59","0","9302.17","9302.17","","","0","0","Flat","","0","","","0","1","4","","1","9302.17","","","2023-06-05 00:00:00","2024-02-10 14:57:29");
INSERT INTO sales VALUES("605","sr-20240210-030132","1","7","","","58","1","1","2","20","3111","0","12444","12444","","","0","0","Flat","","0","","","0","1","4","","1","12444","","","2023-06-01 00:00:00","2024-02-10 15:01:32");
INSERT INTO sales VALUES("606","sr-20240210-030803","1","7","","","49","1","1","1","150","8733.75","0","78603.75","78603.75","","","0","0","Flat","","0","","","0","1","4","","1","78603.75","","","2023-07-25 00:00:00","2024-02-10 15:08:03");
INSERT INTO sales VALUES("607","sr-20240210-031343","1","7","","","92","1","1","1","6","240.97","0","4578.53","4578.53","","","0","0","Flat","","0","","","0","1","4","","1","4578.53","","","2023-07-17 00:00:00","2024-02-10 15:13:43");
INSERT INTO sales VALUES("608","sr-20240210-031736","1","7","","","58","1","1","3","31","5243.65","0","20974.6","20974.6","","","0","0","Flat","","0","","","0","1","4","","1","20974.6","","","2023-08-18 00:00:00","2024-02-10 15:17:36");
INSERT INTO sales VALUES("609","sr-20240210-032450","1","7","","","58","1","1","1","10","1606.5","0","6426","6426","","","0","0","Flat","","0","","","0","1","4","","1","6426","","","2023-08-28 00:00:00","2024-02-10 15:24:50");
INSERT INTO sales VALUES("610","sr-20240210-032911","1","7","","","93","1","1","3","20","1670.28","0","15032.23","15032.23","","","0","0","Flat","","0","","","0","1","4","","1","15032.23","","","2023-08-21 00:00:00","2024-02-10 15:29:11");
INSERT INTO sales VALUES("611","sr-20240210-033506","1","7","","","49","1","1","1","1085","87152.63","0","784373.63","784373.63","","","0","0","Flat","","0","","","0","1","4","","1","784373.63","","","2023-08-29 00:00:00","2024-02-10 15:35:06");
INSERT INTO sales VALUES("612","sr-20240210-033700","1","7","","","49","1","1","2","305","20525.38","0","184728.38","184728.38","","","0","0","Flat","","0","","","0","1","4","","1","184728.38","","","2023-08-21 00:00:00","2024-02-10 15:37:00");
INSERT INTO sales VALUES("613","sr-20240210-034104","1","7","","","49","1","1","5","1996","161760.95","0","1455848.56","1455848.56","","","0","0","Flat","","0","","","0","1","4","","1","1455848.56","","","2023-08-02 00:00:00","2024-02-10 15:41:04");
INSERT INTO sales VALUES("614","sr-20240210-034215","1","7","","","89","1","1","1","10","1207.21","0","11500.29","11500.29","","","0","0","Flat","","0","","","0","1","4","","1","11500.29","","","2023-08-07 00:00:00","2024-02-10 15:42:15");
INSERT INTO sales VALUES("615","sr-20240210-034728","1","7","","","58","1","1","2","30","4692","0","18768","18768","","","0","0","Flat","","0","","","0","1","4","","1","18768","","","2023-09-02 00:00:00","2024-02-10 15:47:28");
INSERT INTO sales VALUES("616","sr-20240212-052148","1","7","","","94","1","1","2","2","69.27","0","1316.23","1316.23","","","0","0","Flat","","0","","","0","1","1","","1","","FOR AVAILABLITY","","2024-02-12 00:00:00","2024-02-12 17:21:48");
INSERT INTO sales VALUES("617","sr-20240212-052618","1","7","","","94","1","1","2","10","346.37","0","6581.13","6581.13","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-02-12 00:00:00","2024-02-12 17:26:18");
INSERT INTO sales VALUES("618","sr-20240212-052912","1","7","","","95","1","1","1","2","80.32","0","1526.18","1526.18","","","0","0","Flat","","0","","","0","1","1","","1","","FOR AVAILABLITY","","2024-02-12 00:00:00","2024-02-12 17:29:12");
INSERT INTO sales VALUES("619","sr-20240212-074948","1","7","","","96","1","1","2","2","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","COMPLEMENTRY 
1 PAGECAL AND 1 INFADOM FOR (DR KIRAN)","","2024-02-12 00:00:00","2024-02-12 19:49:48");
INSERT INTO sales VALUES("620","sr-20240302-013147","1","7","","","49","1","1","2","443","0","0","331716.75","298545.08","","","0","0","Percentage","10","33171.675","","","0","1","2","","1","","","","2024-03-02 00:00:00","2024-05-12 14:56:16");
INSERT INTO sales VALUES("623","sr-20240304-122816","1","7","","","49","1","1","2","1860","171143.26","0","1540289.26","1540289.26","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-03-04 00:00:00","2024-03-04 12:28:16");
INSERT INTO sales VALUES("624","sr-20240304-071458","1","7","","","79","1","1","2","3","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","1 PAGECAL 1 INFADOM FOR (DR AMMAR)
1 PAGECAL ZULFIQAR PHARMACY 
BY MISS KANWAL","","2024-03-04 00:00:00","2024-03-04 19:14:58");
INSERT INTO sales VALUES("625","sr-20240304-073918","1","7","","","78","1","1","5","10","0","0","0","0","","","0","0","Flat","","0","","","0","1","1","","1","","1 PAGECAL 1 INFADOM FOR (DR AMMAR)
1 PAGECAL ZULFIQAR PHARMACY 
1 HAIRPLEA FOR DR UZMA BY MISS KANWAL 

1 CRANDOM FOR (DR QURAT)  1 PAGECAL FOR DR RANA
BY MISS HINA


2 PAGECAL FOR (DR UMAIR)  1 PAGECAL FOR DR SAJJAD)
1 IROHEME FOR (DR MUZAMIL)   BY MISS FATIMA","","2024-03-04 00:00:00","2024-03-04 19:39:18");
INSERT INTO sales VALUES("626","sr-20240304-075311","1","7","","","97","1","1","2","10","692.76","0","6234.76","6234.76","","","0","0","Flat","","0","","","0","1","1","","1","","BY MISS HINA","","2024-03-04 00:00:00","2024-03-04 19:53:11");
INSERT INTO sales VALUES("627","sr-20240304-075629","1","7","","","95","1","1","1","2","58.23","0","1106.28","1106.28","","","0","0","Flat","","0","","","0","1","1","","1","","ON AVAILABLITY BY MISS FATIMA","","2024-03-04 00:00:00","2024-03-04 19:56:29");
INSERT INTO sales VALUES("628","sr-20240304-094544","1","7","","","90","1","1","2","10","692.76","0","6234.76","6234.76","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-03-04 00:00:00","2024-03-04 21:45:44");
INSERT INTO sales VALUES("629","sr-20240304-100436","1","7","","","98","1","1","2","10","692.76","0","6234.76","6234.76","","","0","0","Flat","","0","","","0","1","1","","1","","AVAILABILTY","MISS HINA FOR DR WAQAS ORTHO : ER","2024-03-04 00:00:00","2024-03-04 22:04:36");
INSERT INTO sales VALUES("630","sr-20240304-100835","1","7","","","99","1","1","2","10","692.76","0","6234.76","6234.76","","","0","0","Flat","","0","","","0","1","1","","1","","AVAILABALITY","MISS HINA  FOR DR WAQAS ORTHO : ER","2024-03-04 00:00:00","2024-03-04 22:08:35");
INSERT INTO sales VALUES("631","sr-20240307-022407","1","7","","","49","1","1","1","155","12318.63","0","110867.63","110867.63","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-03-07 00:00:00","2024-03-07 14:24:07");
INSERT INTO sales VALUES("632","sr-20240307-022653","1","7","","","49","1","1","1","155","11791.63","0","106124.63","106124.63","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-03-07 00:00:00","2024-03-07 14:26:53");
INSERT INTO sales VALUES("635","sr-20240309-104937","1","7","","","49","1","1","1","310","26218.25","0","235964.25","235964.25","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-03-09 00:00:00","2024-03-09 10:49:37");
INSERT INTO sales VALUES("637","sr-20240314-040542","1","7","","","89","1","1","1","10","1270.8","0","11436.7","11436.7","","","0","0","Flat","","0","","","0","1","1","","1","","10 HAIRPLEA TO SALE 1 HAIRPLEA FOR ADJSMENT","","2024-03-14 00:00:00","2024-03-14 16:05:42");
INSERT INTO sales VALUES("639","sr-20240406-030236","1","7","","","49","1","1","2","310","28985.01","0","260865.01","260865.01","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-04-06 00:00:00","2024-04-06 15:02:36");
INSERT INTO sales VALUES("640","sr-20240415-065046","1","7","","","100","1","1","1","5","3176.88","0","3176.88","3176.88","","","0","0","Flat","","0","","","0","1","1","","1","","FOR (DR UZMA) PERSONAL USE  BY MISS KANWAL","","2024-04-15 00:00:00","2024-04-15 18:50:46");
INSERT INTO sales VALUES("641","sr-20240416-053604","1","7","","","49","1","1","4","2015","180563.38","0","1625070.38","1625070.38","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-04-16 00:00:00","2024-04-16 17:36:04");
INSERT INTO sales VALUES("642","sr-20240502-014512","1","7","","","49","1","1","1","50","2911.25","0","26201.25","26201.25","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-05-02 00:00:00","2024-05-02 13:45:12");
INSERT INTO sales VALUES("644","sr-20240507-071728","1","7","","","49","1","1","3","1560","129599.5","0","1166395.5","1166395.5","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-05-07 00:00:00","2024-05-07 07:17:28");
INSERT INTO sales VALUES("645","sr-20240514-070611","1","7","","","56","1","1","1","10","1776.5","0","7106","7106","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-05-14 00:00:00","2024-05-14 19:06:11");
INSERT INTO sales VALUES("646","sr-20240528-010411","1","7","","","49","1","1","1","155","16402.88","0","147625.88","147625.88","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-05-28 00:00:00","2024-05-28 13:04:11");
INSERT INTO sales VALUES("647","sr-20240604-050645","1","7","","","49","1","1","4","2467","221701.68","0","1995315.08","1995315.08","","","0","0","Flat","","0","","","0","1","1","","1","","","","2024-06-04 00:00:00","2024-06-04 17:06:45");



CREATE TABLE `stock_counts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) DEFAULT NULL,
  `brand_id` varchar(191) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `initial_file` varchar(191) DEFAULT NULL,
  `final_file` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO stock_counts VALUES("1","scr-20190228-124939","2","","","1","full","20190228-124939.csv","","","0","2019-02-28 01:49:39","2019-02-28 01:49:39");
INSERT INTO stock_counts VALUES("4","scr-20220202-083105","1","2","","1","partial","20220202-083105.csv","","","0","2022-02-02 09:31:05","2022-02-02 09:31:05");
INSERT INTO stock_counts VALUES("5","scr-20221012-122735","1","4","3","1","partial","20221012-122735.csv","20221012-123133.csv","","1","2022-10-12 02:27:35","2022-10-12 02:55:38");
INSERT INTO stock_counts VALUES("6","scr-20230401-092719","1","4","","1","partial","20230401-092719.csv","20230401-092947.csv","test stock count","1","2023-04-01 11:27:19","2023-04-01 11:30:50");



CREATE TABLE `suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) NOT NULL,
  `vat_number` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone_number` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO suppliers VALUES("1","Default Supplier","globaltouch.jpg","global touch","","abdullah@gmail.com","231231","fsdfs","fsdfs","","","bd","0","2018-05-12 18:06:34","2023-10-18 12:27:32");
INSERT INTO suppliers VALUES("2","test","lion.jpg","lion","","lion@gmail.com","242","gfdg","fgd","","","","0","2018-05-29 19:59:41","2018-05-29 20:00:06");
INSERT INTO suppliers VALUES("3","ismail","","techbd","","ismail@test.com","23123123","mohammadpur","dhaka","","","bangladesh","0","2018-07-20 00:34:17","2023-10-12 13:00:50");
INSERT INTO suppliers VALUES("4","modon","mogaFruit.jpg","mogaFruit","","modon@gmail.com","32321","nasirabad","chittagong","","","bd","0","2018-09-01 00:30:07","2018-09-01 00:37:20");
INSERT INTO suppliers VALUES("5","sadman","","anda boda","dsa","asd@dsa.com","3212313","dadas","sdad","Other","1312","Australia","0","2020-06-22 05:48:33","2020-06-22 05:48:52");
INSERT INTO suppliers VALUES("6","Gennec","","ABC","","email@email.com","000000000","address","Karachi","","","","1","2023-10-18 12:28:36","2023-10-18 12:28:36");



CREATE TABLE `tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `number_of_person` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO tables VALUES("1","Table 1","3","Right corner table","1","2023-06-04 04:13:33","2023-06-04 04:13:33");
INSERT INTO tables VALUES("2","Table 2","2","Middle table","1","2023-06-04 04:13:58","2023-06-04 04:13:58");



CREATE TABLE `taxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO taxes VALUES("1","vat@10","10","1","2018-05-12 05:58:30","2019-03-02 06:46:10");
INSERT INTO taxes VALUES("2","vat@15","15","1","2018-05-12 05:58:43","2018-05-27 19:35:05");
INSERT INTO taxes VALUES("3","test","6","0","2018-05-27 19:32:54","2018-05-27 19:34:44");
INSERT INTO taxes VALUES("4","vat 20","20","1","2018-08-31 20:58:57","2018-08-31 20:58:57");



CREATE TABLE `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO transfers VALUES("1","tr-20180808-051710","1","1","2","1","1","100","0","100","0","100","","","2018-08-08 07:17:10","2018-12-24 17:16:55");
INSERT INTO transfers VALUES("6","tr-20191205-075504","1","1","1","2","1","1","0","2","0","2","","","2019-12-05 08:55:04","2019-12-05 09:09:42");
INSERT INTO transfers VALUES("8","tr-20200122-123058","1","1","1","2","1","10","0","1000","","1000","","","2020-01-22 01:30:58","2020-01-22 01:30:58");
INSERT INTO transfers VALUES("10","tr-20201008-012735","9","1","1","2","1","1","32","352","0","352","","","2020-10-08 03:27:35","2020-10-08 03:29:35");
INSERT INTO transfers VALUES("11","tr-20201018-061708","9","1","1","2","1","1","0","1","","1","","","2020-10-18 08:17:08","2020-10-18 08:17:08");
INSERT INTO transfers VALUES("12","tr-20201024-090146","1","1","2","1","1","10","4500","34500","","34500","","","2020-10-23 23:01:46","2020-10-23 23:01:46");
INSERT INTO transfers VALUES("21","tr-20220309-114411","1","1","1","2","1","6","0","600","0","600","","jhjkjk
jhkjhkhk
jjkjkhkhkh","2022-03-05 13:00:00","2022-06-05 02:37:31");



CREATE TABLE `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(191) NOT NULL,
  `unit_name` varchar(191) NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO units VALUES("1","Box","Box","","*","1","1","2018-05-11 22:27:46","2023-10-09 07:56:47");
INSERT INTO units VALUES("2","dozen","dozen box","1","*","12","0","2018-05-12 05:57:05","2023-10-05 04:31:15");
INSERT INTO units VALUES("3","cartoon","cartoon box","1","*","24","0","2018-05-12 05:57:45","2023-10-05 04:31:39");
INSERT INTO units VALUES("4","m","meter","","*","1","0","2018-05-12 05:58:07","2023-10-05 04:31:31");
INSERT INTO units VALUES("6","test","test","","*","1","0","2018-05-27 19:20:20","2018-05-27 19:20:25");
INSERT INTO units VALUES("7","kg","kilogram","","*","1","0","2018-06-24 20:49:26","2023-10-05 04:31:21");
INSERT INTO units VALUES("8","20","ni33","8","*","1","0","2018-07-31 18:35:51","2018-07-31 18:40:54");
INSERT INTO units VALUES("9","gm","gram","7","/","1000","0","2018-08-31 20:06:28","2023-10-05 04:31:53");
INSERT INTO units VALUES("10","gz","goz","","*","1","0","2018-11-28 22:40:29","2019-03-02 06:53:29");
INSERT INTO units VALUES("11","inch","Inch","","*","1","0","2022-06-07 06:42:40","2023-10-05 04:31:46");
INSERT INTO units VALUES("12","pza","pza","","*","1","0","2022-10-15 11:42:19","2023-10-05 04:32:03");



CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("1","admin","OVATION.HEALTHCARE123@GMAIL.COM","$2y$10$D3NNYjFpxZ/7ve5fTVs.k.6cH5AfPyPC1JL7/G8NQoVcTPvt9nZoa","I69HYu3WW3DVSOnlf1RZuXj2BTcEax8xuVYIFcMzJ79CczTwGa1tcaEdQbhO","03495114791","OVATION HEALTH CARE","1","","","1","0","2018-06-01 23:24:15","2024-05-05 19:02:41");
INSERT INTO users VALUES("3","dhiman da","dhiman@gmail.com","$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.","5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt","212","lioncoders","1","","","0","1","2018-06-13 18:00:31","2020-11-05 02:06:51");
INSERT INTO users VALUES("6","test","test@gmail.com","$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS","KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm","1234","212312","4","","","0","1","2018-06-22 23:05:33","2018-06-22 23:13:45");
INSERT INTO users VALUES("8","test","test@yahoo.com","$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC","","31231","","4","","","0","1","2018-06-24 18:35:49","2018-07-01 21:07:39");
INSERT INTO users VALUES("9","staff","anda@gmail.com","$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm","W5rD2icyJSNtBpSa7fm24OpkGiXh6HIjOlB2SsjM2dwyDNae02VEcjqUX1UM","3123","","4","5","1","1","0","2018-07-01 21:08:08","2018-10-23 17:41:13");
INSERT INTO users VALUES("10","abul","abul@alpha.com","$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq","x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0","1234","anda","1","","","0","0","2018-09-07 19:44:48","2018-09-07 19:44:48");
INSERT INTO users VALUES("11","teststaff","a@a.com","$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li","DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp","111","aa","4","5","1","0","1","2018-10-21 22:47:56","2018-10-22 22:10:56");
INSERT INTO users VALUES("12","john","john@gmail.com","$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe","O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg","10001","","4","2","2","0","1","2018-12-29 19:48:37","2019-03-05 23:59:49");
INSERT INTO users VALUES("13","jjj","test@test.com","$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG","","1213","","1","","","0","1","2019-01-02 19:08:31","2019-03-02 23:02:29");
INSERT INTO users VALUES("19","shakalaka","shakalaka@gmail.com","$2y$10$ketLWT0Ib/JXpo00eJlxoeSw.7leS8V1CUGInfbyOWT4F5.Xuo7S2","","1212","Digital image","5","","","1","0","2020-11-08 19:07:16","2020-11-08 19:07:16");
INSERT INTO users VALUES("21","modon","modon@gmail.com","$2y$10$7VpoeGMkP8QCvL5zLwFW..6MYJ5MRumDLDoX.TTQtClS561rpFHY.","","2222","modon company","5","","","1","0","2020-11-13 02:12:08","2020-11-13 02:12:08");
INSERT INTO users VALUES("22","dhiman","dhiman@gmail.com","$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq","","+8801111111101","lioncoders","5","","","0","1","2020-11-15 01:14:58","2023-11-06 16:14:34");
INSERT INTO users VALUES("31","mbs","mbs@gmail.com","$2y$10$6Ldm1rWEVSrlTmpjIXkeQO9KwWJz/j0FB4U.fY1oCFeax47rvttEK","","2121","","4","1","2","0","1","2021-12-29 01:40:22","2023-11-06 16:14:11");
INSERT INTO users VALUES("39","maja","maja@maja.com","$2y$10$lrMVhNDE9AuKhFrJIgG2y.zdtrCltR8/JB1okO0W8GsUcMjSFW7rW","","444555","","4","5","2","0","1","2022-09-14 00:37:21","2023-11-06 16:13:56");



CREATE TABLE `variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO variants VALUES("2","Medium","2019-11-21 02:03:04","2019-11-24 03:43:52");
INSERT INTO variants VALUES("3","Small","2019-11-21 02:03:04","2019-11-24 03:43:52");
INSERT INTO variants VALUES("5","Large","2019-11-24 01:07:20","2019-11-24 03:44:56");
INSERT INTO variants VALUES("9","a","2020-05-18 12:44:14","2020-05-18 12:44:14");
INSERT INTO variants VALUES("11","b","2020-05-18 12:53:49","2020-05-18 12:53:49");
INSERT INTO variants VALUES("12","variant 1","2020-09-27 02:08:27","2020-09-27 02:08:27");
INSERT INTO variants VALUES("13","variant 2","2020-09-27 02:08:27","2020-09-27 02:08:27");
INSERT INTO variants VALUES("15","s","2020-11-16 01:09:33","2022-08-09 02:02:12");
INSERT INTO variants VALUES("16","m","2020-11-16 01:09:33","2022-08-09 02:02:12");
INSERT INTO variants VALUES("17","L","2020-11-16 01:09:33","2020-11-16 01:09:33");
INSERT INTO variants VALUES("18","s/red","2022-07-25 09:54:50","2022-07-25 09:54:50");
INSERT INTO variants VALUES("19","s/black","2022-07-25 09:54:50","2022-07-25 09:54:50");
INSERT INTO variants VALUES("20","m/red","2022-07-25 09:54:50","2022-07-25 09:54:50");
INSERT INTO variants VALUES("21","m/black","2022-07-25 09:54:50","2022-07-25 09:54:50");
INSERT INTO variants VALUES("22","l/red","2022-07-25 09:54:50","2022-07-25 09:54:50");
INSERT INTO variants VALUES("23","l/black","2022-07-25 09:54:50","2022-07-25 09:54:50");
INSERT INTO variants VALUES("24","s/blue","2022-08-03 01:25:19","2022-08-03 01:25:19");
INSERT INTO variants VALUES("25","m/blue","2022-08-03 01:25:20","2022-08-03 01:25:20");
INSERT INTO variants VALUES("26","l/blue","2022-08-03 01:25:20","2022-08-03 01:25:20");
INSERT INTO variants VALUES("27","s/green","2022-08-06 01:54:37","2022-08-06 01:54:37");
INSERT INTO variants VALUES("28","m/green","2022-08-06 01:54:37","2022-08-06 01:54:37");
INSERT INTO variants VALUES("29","l/green","2022-08-06 01:54:37","2022-08-06 01:54:37");
INSERT INTO variants VALUES("30","xl/red","2022-08-08 10:02:07","2022-08-08 10:02:07");
INSERT INTO variants VALUES("31","xl/blue","2022-08-08 10:02:07","2022-08-08 10:02:07");
INSERT INTO variants VALUES("32","xl/green","2022-08-08 10:02:07","2022-08-08 10:02:07");
INSERT INTO variants VALUES("33","red","2022-09-11 02:56:55","2022-09-11 02:56:55");
INSERT INTO variants VALUES("34","black","2022-09-11 02:56:55","2022-09-11 02:56:55");
INSERT INTO variants VALUES("35","blue","2022-09-11 02:56:55","2022-09-11 02:56:55");
INSERT INTO variants VALUES("36","s/white","2023-08-09 05:50:04","2023-08-09 05:50:04");
INSERT INTO variants VALUES("37","m/white","2023-08-09 05:50:04","2023-08-09 05:50:04");
INSERT INTO variants VALUES("38","l/white","2023-08-09 05:50:04","2023-08-09 05:50:04");



CREATE TABLE `warehouses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` text NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO warehouses VALUES("1","warehouse","2312121","war1@lion.com","khatungonj, Chittagong","1","2018-05-12 03:51:44","2023-10-12 13:10:13");
INSERT INTO warehouses VALUES("2","office","1234","","boropul, chittagong","1","2018-05-12 04:09:03","2023-10-12 13:10:25");
INSERT INTO warehouses VALUES("3","test","","","dqwdeqw","0","2018-05-29 20:14:23","2018-05-29 20:14:47");
INSERT INTO warehouses VALUES("6","gudam","2121","","gazipur","0","2018-08-31 18:53:26","2018-08-31 18:54:48");

