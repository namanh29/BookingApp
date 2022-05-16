-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: booking_travel_2022
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price_id` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `discount` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guide`
--

DROP TABLE IF EXISTS `guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guide` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guide`
--

LOCK TABLES `guide` WRITE;
/*!40000 ALTER TABLE `guide` DISABLE KEYS */;
INSERT INTO `guide` VALUES (1,'Phan Duy','123456789','Hà Nội');
/*!40000 ALTER TABLE `guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `land_tour_price`
--

DROP TABLE IF EXISTS `land_tour_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `land_tour_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adult` int DEFAULT NULL,
  `children` int DEFAULT NULL,
  `kid` int DEFAULT NULL,
  `baby` int DEFAULT NULL,
  `surcharge` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `land_tour_price`
--

LOCK TABLES `land_tour_price` WRITE;
/*!40000 ALTER TABLE `land_tour_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `land_tour_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `adult_count` int DEFAULT NULL,
  `children_count` int DEFAULT NULL,
  `kid_count` int DEFAULT NULL,
  `baby_count` int DEFAULT NULL,
  `price_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (1,'2','Đà Nẵng '),(2,'2','Quảng Ngãi');
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int DEFAULT NULL,
  `tour_price_id` int DEFAULT NULL,
  `land_tour_price_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (1,1,1,NULL);
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Miền Bắc'),(2,'Miền Trung'),(3,'Miền Tây Nam Bộ'),(4,'Miền Đông Nam Bộ');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `start_time` date DEFAULT NULL,
  `period` int DEFAULT NULL,
  `start_place_id` int DEFAULT NULL,
  `end_place_id` int DEFAULT NULL,
  `main_image_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guide_id` int DEFAULT NULL,
  `place_order_max` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,'Đà Nẵng - Lý Sơn 2N1Đ (Trải Nghiệm Tàu Cao Tốc 5 Sao Đà Nẵng - Lý Sơn)','Lý Sơn là huyện đảo duy nhất của tỉnh Quảng Ngãi, nằm về phía Đông Bắc tỉnh, cách đất liền 15 hải lý. Hòn đảo là vết tích còn lại của 1 núi lửa với 5 miệng, được hình thành cách đây 25 – 30 triệu năm. Những năm gần đây, Lý Sơn thu hút cả hàng triệu khách du lịch trong và ngoài nước hằng năm VÌ: Vẻ đẹp hoang sơ và mượt mà của những bãi cát dài trắng mướt trải dài đến vô tận, với sự trong xanh và tinh khôi của nước biển – nơi được mệnh danh là Maldives của Việt Nam;Sự hấp dẫn của vẻ đẹp hút hồn từ những chứng tích núi lửa đã phun trào hằng chục triệu năm về trước;Nơi mà được du khách truyền miệng với nhau là điểm đón hoàng hôn tuyệt vời và lãng mạng bậc nhất Việt Nam;Nơi có những cánh đồng tỏi xanh rì phủ kín cả hòn đảo (Vương quốc Tỏi)','2022-04-26',2,1,2,'abc123',1,10);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_price`
--

DROP TABLE IF EXISTS `tour_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adult` int DEFAULT NULL,
  `children` int DEFAULT NULL,
  `kid` int DEFAULT NULL,
  `baby` int DEFAULT NULL,
  `surcharge` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_price`
--

LOCK TABLES `tour_price` WRITE;
/*!40000 ALTER TABLE `tour_price` DISABLE KEYS */;
INSERT INTO `tour_price` VALUES (1,2590000,1942000,900000,380000,0);
/*!40000 ALTER TABLE `tour_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_schedule`
--

DROP TABLE IF EXISTS `tour_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tour_id` int DEFAULT NULL,
  `alias` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` date DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_schedule`
--

LOCK TABLES `tour_schedule` WRITE;
/*!40000 ALTER TABLE `tour_schedule` DISABLE KEYS */;
INSERT INTO `tour_schedule` VALUES (2,1,'Ngày 1','2022-04-26','ĐÀ NẴNG - LÝ SƠN','07h30: Quý khách tập trung tại bến tàu sông Hàn, làm thủ tục lên tàu Phú Quốc Express đi lý Sơn lúc 08h00: 12h00 đến Lý Sơn. Đến nơi đoàn dùng cơm trưa nhận phòng, nghỉ ngơi.\\n      14h00: Đoàn tham quan nhà trưng bày Hải Đội Hoàng Sa Kiêm Quản Bắc Hải với những chứng tích lịch sử về chủ quyền Biển Đảo Hoàng Sa – Trường Sa, tìm hiểu cuộc sống và hành trình của Đội Hùng Binh năm xưa, ý nghĩa của Lễ Khao Lề Thế Lính Hoàng Sa.\\n     14h30: Đoàn tiếp tục khám phá Khu di tích cấp quốc gia – thắng cảnh Chùa Hang, Tìm hiểu về lịch sử, ý nghĩa về văn hóa tâm linh của ngôi chùa đối với người dân trên Đảo. \\n      15h30: Đoàn tham quan thắng cảnh Hang Câu với vách núi dựng đứng, hình vòm, sừng sững với nhiều đường vân huyền ảo do kiến tạo của địa chất và hoạt động của núi lửa, nơi đây có bãi cát trắng dài và rộng cộng với nước biển trong xanh quả thật là một nơi giải trí lý tưởng. Du Khách biết thêm về tác dụng của địa điểm này đối với ngư dân khi vào mùa nước cạn.\\n      16h00: Đoàn chinh phục Đỉnh Thới Lới một trong 5 ngọn núi lửa lớn nhất trên Đảo Lý Sơn đã ngừng hoạt động cách đây hàng triệu năm. Đoàn viếng thăm Cột Cờ, một biểu tượng chủ quyền Biển Đảo Lý Sơn.\\n      17h00: Quan Âm Đài – Chùa Đục (Đỉnh Liêm Tự) nằm lừng chừng giữa vách núi Giếng Tiền dựng đứng, tìm hiểu về sự tích và sự hình thành ngôi chùa. Đồng Thời Du Khách chinh phục ngọn núi lửa Giếng Tiền và lắng nghe câu chuyện về Bàn Cờ Tiên. Khám phá Hòn Đụn và biết được cách người ngư dân Lý Sơn định hướng khi đi biển. Trên đỉnh núi Quý Khách ngắm nhìn những cánh đồng Tỏi, Hành, Biển và tiếng sóng rì rào dưới chân núi và tìm hiểu thêm kinh nghiệm canh tác Tỏi, Hành của người nông dân trên Đảo Lý Sơn. \\n      17h30: Đoàn khám phá địa danh Đường Bích Họa Bờ Kè và đón Hoàng Hôn tại Cổng Tò Vò (Cổng Mặt Trời) có hình dạng vòm cung và được tạo thành từ nham thạch của núi lửa cách đây hàng triệu năm. Đây là một địa điểm lý tưởng để có những tấm ảnh ấn tượng lúc hoàng hôn với hình dáng độc đáo và là một tạo tác của thiên nhiên, chưa từng chịu tác động của con người.\\n      18h30: Đoàn dùng cơm tối tại nhà hàng.\\n      19h00: Đoàn tự do khám phá về đêm và mua đặc sản Lý Sơn về làm quà, biếu tặng người thân.\\n       22h00: Đoàn trở lại Khách Sạn nghỉ ngơi.'),(3,1,'Ngày 2','2022-04-27','ĐẢO BÉ LÝ SƠN - MALDIVES VIỆT NAM - ĐÀ NẴNG (Ăn trưa)','06h00: Đoàn dùng điểm tâm sáng + Cà Phê\\n      07h00: Đoàn xuống tàu đi tham quan Đảo Bé – An Bình.\\n      08h00: Đoàn tham quan và chụp ảnh tại Bãi Trước, Mum Tàu, Hòn Đụn, cầu Tình Yêu\\n      08h30: Đoàn tiếp tục di chuyển đến Hang Bãi Sau tham quan, chụp ảnh và hòa mình vào làn nước trong xanh, du khách có thể tự túc tham gia dịch vụ tắm biển nơi đây.\\n      09h30: Đoàn khám phá Bãi Tây – Cây Phong Ba, Làng Bích Họa\\n      11h00: Đoàn trở về Đảo Lớn.\\n      11h30: Đoàn dùng cơm trưa tại nhà hàng.\\n      13h -14h00: Đoàn lên tàu trở lại Cảng Sông Hàn, lúc 14h00:16h30 đến Đà Nẵng. chia tay đoàn. Kết thúc chương trình.\\nLưu ý: Chương trình có thể thay đổi cho phù hợp thực tế nhưng vẫn đảm bảo đầy đủ các điểm tham quan.');
/*!40000 ALTER TABLE `tour_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-16 22:55:40
