-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: semi.cghngf9gqw71.eu-north-1.rds.amazonaws.com    Database: semi
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `idx` smallint NOT NULL AUTO_INCREMENT,
  `num` int DEFAULT NULL,
  `chu` int NOT NULL DEFAULT '0',
  `bchu` int NOT NULL DEFAULT '0',
  `myid` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `star` smallint DEFAULT NULL,
  `writeday` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `myid` (`myid`),
  KEY `num` (`num`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`myid`) REFERENCES `member_table` (`mem_id`) ON DELETE CASCADE,
  CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`num`) REFERENCES `movie_table` (`mv_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (2,14,3,5,'sleepysudal','놀란 영화중 가장 별로 였습니다. 3시간이 지루하지는 않은데, 너무 평범하네요. 일반적인 헐리웃 실존인물 서사영화들이랑 비슷하게 흘러갑니다. 그리고 과학보다는 정치영화에 가깝네요. 테넷보다 이해하기가 더 어려웠습니다',1,'2023-09-21 18:45:23'),(9,14,2,0,'joony','진짜 고퀄 고급짐. 배우들 다 인생연기 폭발하고 아맥이라 그런지 화면/사운드에 압도되는 느낌. 진짜 \'영화\'에 몰입할 수 있었음',5,'2023-09-21 18:50:53'),(10,14,0,0,'joony','세상을 뒤바꾼, 그리고 그 책임을 묵묵히 지고 간 역사 소용돌이 속 천재 이야기. 연출, 연기, 음악 모든게 완벽하다. 무조건 극장에서 봐야 하는 영화',5,'2023-09-21 18:51:33'),(11,14,0,0,'hwan','개 노잼 그냥 다큐가 더 재미 있겠다. 감독 믿고 예몌했는데 폭망 참고 볼라고 했는데 자리도 좁고 불편하고 너무 힘들어서 중간에 나옴',5,'2023-09-21 18:52:58'),(12,14,0,0,'hwan','좀 지루했다 주제가 갈피를 못 잡는 느낌 연출 면에서 실패한 부분이 있는 것 같다',5,'2023-09-21 18:53:04'),(13,14,2,0,'hwan','3번의 꾸벅임과 2번의 탈출충동을 이겨냈다 그것이 알고 싶다 3시간 버전',1,'2023-09-21 18:54:24'),(15,14,8,0,'jinbbang','개인적으로 놀란 최고 작품입니다. 세시간이 전혀 지루하지 않은 전개와 연출 그리고 특히 음악이 너무 좋네요',5,'2023-09-21 18:54:56'),(16,14,15,0,'hwan','1. 영어회화 공부하실분 개강추 2. 스펙터클한 장면만 간추려보시려면 예고편보세요.3. 이거 깨진 계란말고 똥은 없냐? 4. 로버트 다우니 주니어는 역시 아이언맨일때가 좋았어 5.영화는 웰커 길어 추가주차 요금 납부함 6. 이런걸 예매씩이나했다. 병헌배우 미안해',2,'2023-09-21 18:55:09'),(35,14,1,1,NULL,'샐러디 가실분 구합니다',1,'2023-09-21 22:34:07'),(36,14,2,1,'test','오펜하이머 재밌어요',4,'2023-09-22 14:28:05'),(40,14,0,0,NULL,'영화내용이 기억안나요,,,그녀가 옆에있어서,,,,전 그녀만 바라봤거든요,,,',5,'2023-09-23 22:47:55'),(41,14,0,0,NULL,'dfadsfas',5,'2023-09-25 09:41:16');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_idx` int NOT NULL AUTO_INCREMENT,
  `shop_num` int DEFAULT NULL,
  `mem_no` int DEFAULT NULL,
  `cnt` int DEFAULT NULL,
  `cartday` date DEFAULT NULL,
  PRIMARY KEY (`cart_idx`),
  KEY `shop_num` (`shop_num`),
  KEY `mem_no` (`mem_no`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`shop_num`) REFERENCES `shop` (`shop_num`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`mem_no`) REFERENCES `member_table` (`mem_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (44,3,NULL,1,'2023-09-21'),(45,1,NULL,1,'2023-09-21'),(46,1,NULL,1,'2023-09-21'),(47,2,NULL,1,'2023-09-21'),(48,2,NULL,1,'2023-09-21'),(49,2,NULL,1,'2023-09-21'),(50,3,NULL,1,'2023-09-21'),(55,2,95,2,'2023-09-22'),(56,8,95,1,'2023-09-22'),(57,3,96,2,'2023-09-22');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_table`
--

DROP TABLE IF EXISTS `member_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_table` (
  `mem_no` int NOT NULL AUTO_INCREMENT,
  `mem_id` varchar(50) DEFAULT NULL,
  `mem_pass` varchar(100) DEFAULT NULL,
  `mem_name` varchar(50) DEFAULT NULL,
  `mem_gender` varchar(30) DEFAULT NULL,
  `mem_birth` varchar(50) DEFAULT NULL,
  `mem_ph` varchar(100) DEFAULT NULL,
  `mem_email` varchar(100) DEFAULT NULL,
  `mem_regdate` date DEFAULT NULL,
  `mem_addr` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`mem_no`),
  UNIQUE KEY `mem_id_fk` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_table`
--

LOCK TABLES `member_table` WRITE;
/*!40000 ALTER TABLE `member_table` DISABLE KEYS */;
INSERT INTO `member_table` VALUES (32,'admin','1','관리자','남자','2023-09-01','02-3482-4632','sist@gmail.com','2023-09-01','(06235)	서울 강남구 테헤란로 132	 (역삼동)	8층 쌍용교육센터 7강의실'),(34,'hwan','1','김영환','남자','1999-04-08','010-9463-8567','nice_view99@naver.com','2023-09-01','(02581)	서울 동대문구 안암로 6	 (신설동)	8층 화장실'),(35,'joony','1','강연주','여자','1997-12-03','010-8649-6857','cute_joony@naver.com','2023-09-01','(12700)	경기 광주시 남한산성면 남한산성로792번길 24-7		207호'),(36,'tiger','1','김선범','남자','1997-09-28','010-2443-2170','strong_boy@naver.com','2023-09-01','(14743)	경기 부천시 경인로 36	 (송내동)	세차장'),(38,'jinbbang','1','최진평','남자','1997-12-26','010-4621-1989','QpyungEpyung@naver.com','2023-09-01','(14709)	경기 부천시 경인로 205-3	 (심곡본동)	3층 휴게실'),(39,'sleepysudal','1','김영준','남자','1996-02-26','010-9434-3997','mincho_jonmat@naver.com','2023-09-01','(02844)	서울 성북구 보문로34다길 2	 (돈암동)	성신여대'),(94,'3025893380',NULL,'장순영','여자',NULL,NULL,'jas719@kakao.com','2023-09-22',NULL),(95,'wlwlgoyo@naver.com',NULL,'장순영','여자',NULL,NULL,'wlwlgoyo@naver.com','2023-09-22',NULL),(96,'test','1','test','남자','2023-09-07','010-1111-2222','dfdwd@gmail.com','2023-09-22','(16515)	경기 수원시 영통구 광교호수로 15	 (원천동, 광교더샵)	');
/*!40000 ALTER TABLE `member_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_table`
--

DROP TABLE IF EXISTS `movie_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_table` (
  `mv_no` int NOT NULL AUTO_INCREMENT,
  `mv_title` varchar(100) DEFAULT NULL,
  `mv_poster` varchar(100) DEFAULT NULL,
  `mv_director` varchar(60) DEFAULT NULL,
  `mv_st` longtext,
  `mv_trailer` varchar(100) DEFAULT NULL,
  `mv_opendate` varchar(30) DEFAULT NULL,
  `mv_info` varchar(100) DEFAULT NULL,
  `mv_regdate` date DEFAULT NULL,
  `mv_genre` varchar(60) DEFAULT NULL,
  `mv_name` varchar(200) DEFAULT NULL,
  `mv_adult` int DEFAULT NULL,
  `mv_teen` int DEFAULT NULL,
  `mv_child` int DEFAULT NULL,
  PRIMARY KEY (`mv_no`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_table`
--

LOCK TABLES `movie_table` WRITE;
/*!40000 ALTER TABLE `movie_table` DISABLE KEYS */;
INSERT INTO `movie_table` VALUES (14,'오펜하이머','upload/Oppenheimer23.jpg','크리스토퍼 놀란','슬로 모션으로 보이는 핵폭발 장면과 함께 위 문구가 뜨며 영화가 시작된다.\r\n\r\n덩케르크에서 그랬듯 이 영화도 하나의 시간대가 아닌 세 개의 시간대에서 진행된다. \r\n오펜하이머의 젊은 시절에서 맨해튼 계획으로 이어지는 기본 시간대, 1954년에 원자력 협회에서 벌어졌던 오펜하이머 청문회, 그리고 1959년에 있었던 루이스 스트로스 제독의 인사청문회가 그것이다. 이걸 시간 순서대로 재구성하면 아래와 같다.\r\n\r\n또한 오펜하이머의 이야기인 컬러 파트는 \'Fission(핵분열)\', 스트로스의 관점에서 본 이야기인 흑백 파트는 \'Fusion(핵융합)\'이라는 제목 하에 서로 번갈아가며 마치 메멘토처럼 영화가 진행된다. \r\n핵분열은 원자폭탄의 원리로 오펜하이머가 맨해튼 계획을 통해 원자폭탄의 아버지가 된 이야기를 반영하고, 핵융합은 수소폭탄의 원리로 오펜하이머가 수소폭탄의 개발을 적극반대했다가 매카시즘과 스트로스의 희생양이 되어 몰락하는 과정을 반영하는 제목이다.','https://www.youtube.com/watch?v=oSqK_v6zPoM','2023-08-15','15세이상관람가, 180분, 미국, 영국','2023-08-29','스릴러, 드라마','킬리언 머피 ,  에밀리 블런트 ,  맷 데이먼 ,  로버트 다우니 주니어 ,  플로렌스 퓨 ,  조쉬 하트넷 ,  케이시 애플렉 ,  라미 말렉 ,  케네스 브래너',14000,11000,8000),(15,'콘크리트 유토피아','upload/concrete.jpg','엄태화','“아파트는 주민의 것”\r\n\r\n온 세상을 집어삼킨 대지진, 그리고 하루아침에 폐허가 된 서울.\r\n모든 것이 무너졌지만 오직 황궁 아파트만은 그대로다.\r\n\r\n소문을 들은 외부 생존자들이 황궁 아파트로 몰려들자\r\n위협을 느끼기 시작하는 입주민들.\r\n생존을 위해 하나가 된 그들은 새로운 주민 대표 ‘영탁’을 중심으로\r\n외부인의 출입을 철저히 막아선 채 아파트 주민만을 위한 새로운 규칙을 만든다.\r\n\r\n덕분에 지옥 같은 바깥 세상과 달리\r\n주민들에겐 더 없이 안전하고 평화로운 유토피아 황궁 아파트.\r\n\r\n하지만 끝이 없는 생존의 위기 속\r\n그들 사이에서도 예상치 못한 갈등이 시작되는데...!\r\n\r\n살아남은 자들의 생존 규칙\r\n따르거나\r\n떠나거나','https://www.youtube.com/watch?v=hAO9a1xSo3M','2023-08-09','15세이상관람가, 130분, 한국','2023-08-29','드라마','이병헌 ,  박서준 ,  박보영 ,  김선영 ,  박지후 ,  김도윤',14000,11000,8000),(16,'달짝지근해-7510','upload/HoneySweet.jpg','이한','타고난 미각 100%, 현실 감각은 0% 제과 연구원 ‘치호’(유해진).\r\n과자밖에 모르는 ‘치호’ 앞에 직진밖에 모르는 세상 긍정 마인드 ‘일영’(김희선)이 나타나고,\r\n‘치호’는 인생의 새로운 맛을 알아가기 시작한다.\r\n여기에 염치없고 철까지 없는 형 ‘석호’(차인표),\r\n자아도취 제과회사 사장 ‘병훈’(진선규),\r\n예측불가한 과몰입러 ‘은숙’(한선화)까지 제대로 엮이게 된 ‘치호’.\r\n매일 쳇바퀴 같은 삶을 살던 그의 인생이 버라이어티한 변화로 뒤덮이기 시작하는데...\r\n\r\nOMG 세상에 이런 맛이!\r\n올여름, 달짝지근해진 그가 온다!','https://www.youtube.com/watch?v=-fGrhOQ2Jjw','2023-08-15','12세이상관람가, 119분, 한국','2023-08-29','코미디','유해진 ,  김희선 ,  차인표 ,  진선규 ,  한선화',14000,11000,8000),(18,'밀수','upload/Milsu.png','류승완','열길 물속은 알아도 한길 사람 속은 모른다!\r\n\r\n평화롭던 바닷가 마을 군천에 화학 공장이 들어서면서 하루아침에 일자리를 잃은 해녀들.\r\n먹고 살기 위한 방법을 찾던 승부사 \'춘자\'(김혜수)는\r\n바다 속에 던진 물건을 건져 올리기만 하면 큰돈을 벌 수 있다는 밀수의 세계를 알게 되고\r\n해녀들의 리더 \'진숙\'(염정아)에게 솔깃한 제안을 한다.\r\n위험한 일임을 알면서도 생계를 위해 과감히 결단을 내린 해녀 \'진숙\'은\r\n전국구 밀수왕 \'권 상사\'를 만나게 되면서 확 커진 밀수판에 본격적으로 빠지게 된다.\r\n그러던 어느 날, 일확천금을 얻을 수 있는 일생일대의 기회가 찾아오고\r\n사람들은 서로를 속고 속이며 거대한 밀수판 속으로 휩쓸려 들어가기 시작하는데...\r\n\r\n물길을 아는 자가 돈길의 주인이 된다!','https://www.youtube.com/watch?v=rWIIXz-F43w','2023-07-26','15세이상관람가, 129분, 한국','2023-08-29','범죄','김혜수 ,  염정아 ,  조인성 ,  박정민 ,  김종수 ,  고민시',14000,11000,8000),(19,'엘리멘탈','upload/elemental.jpg','피터 손','디즈니·픽사의 놀라운 상상력!\r\n올여름, 세상이 살아 숨 쉰다\r\n\r\n불, 물, 공기, 흙 4개의 원소들이 살고 있는 ‘엘리멘트 시티’\r\n재치 있고 불처럼 열정 넘치는 ‘앰버\'는 어느 날 우연히\r\n유쾌하고 감성적이며 물 흐르듯 사는 \'웨이드\'를 만나 특별한 우정을 쌓으며,\r\n지금껏 믿어온 모든 것들이 흔들리는 새로운 경험을 하게 되는데...\r\n\r\n제 76회 칸 영화제 폐막작 선정!\r\n<굿 다이노> 피터 손 감독 연출\r\n<인사이드 아웃>, <소울> 피트 닥터 제작 참여\r\n\r\n6월 극장 대개봉,\r\n웰컴 투 ‘엘리멘트 시티’!','https://www.youtube.com/watch?v=BOqFRHCrN-k','2023-06-14','전체관람가, 109분, 미국','2023-08-29','애니메이션','레아 루이스 ,  마무두 아티',14000,11000,8000),(20,'마야 3-숲속 왕국의 위기','upload/Maya.jpg','노엘 클리어리','환상의 그린리프를 찾아 떠나는\r\n‘꿀’잼 ‘꿀’귀 숲속 어드벤처!\r\n\r\n기나긴 겨울이 지나고 봄과 함께 깨어난 ‘마야’와 단짝 ‘윌리’ 앞에\r\n근육 만땅 딱정벌레들로부터 쫓기는 한 개미가 나타난다.\r\n\r\n개미가 가방 속에서 꺼내든 것은 바로 비밀의 황금알!\r\n둘은 다친 개미를 대신해 황금알을 배달하기로 한다.\r\n\r\n뾰족 나무를 지나, 위험천만 시냇물 그리고 무시무시한 붐버그들의 요새까지…\r\n과연 환상의 꿀베프 ‘마야’와 ‘윌리’는\r\n최종 목적지인 ‘그린리프’까지 무사히 도착할 수 있을까?\r\n\r\n숲속 왕국의 운명이 걸린 초특급 모험이 시작된다!','https://www.youtube.com/watch?v=H5A0Mc4HVg8','2023-08-24','전체관람가, 88분, 독일','2023-08-29','애니메이션','유선민 ,  석승훈',14000,11000,8000),(21,'메가로돈 2','upload/mega.jpg','벤 휘틀리','더 거대해진 메가로돈 VS 더 강력해진 제이슨 스타뎀\r\n\r\n지구 역사상 가장 거대한 최상위 포식자 ‘메가로돈’과\r\n목숨 건 사투 끝에 살아남은 다이버 ‘조나스’는\r\n해양 연구소의 팀원들과 함께 심해 탐사에 나서던 중\r\n예기치 못한 사고로 해저 7,620m에 고립되고 만다.\r\n상상 초월의 위험이 도사린 그곳에서 그들이 마주하게 된 것은 더욱 거대해진 ‘메가로돈’ 무리.\r\n그들 앞에 또다시 모습을 드러낸 메가로돈을 비롯해\r\n거대한 촉수로 모든 것을 휘감는 대왕 문어 ‘메가 옥토퍼스’와\r\n육지와 바다를 넘나드는 육식 공룡 ‘스내퍼’까지.\r\n더 다양하고 강력해진 고대 생물들의 무자비한 공격이 쏟아지는 가운데\r\n강철 다이버 ‘조나스’는 사람들을 구하기 위해 다시 한번 맨몸으로 ‘메가로돈’과의 맞대결에 나서는데…\r\n\r\n올여름 무더위를 집어삼킬 짜릿한 대결이 시작된다!','https://www.youtube.com/watch?v=RPqnot8mMyQ','2023-08-15','12세이상관람가, 116분, 미국','2023-08-30','액션','제이슨 스타뎀 ,  오경',14000,11000,8000),(22,'미션 임파서블-데드 레코닝 PART ONE','upload/Mission.jpg','크리스토퍼 맥쿼리','가장 위험한 작전, 그의 마지막 선택\r\n모든 인류를 위협할 새로운 무기를 추적하게 된 에단 헌트(톰 크루즈)와 IMF팀은\r\n이 무기가 인류의 미래를 통제할 수 있다는 사실을 알게 된다.\r\n\r\n전 세계가 위태로운 상황에 처한 가운데, 이를 추적하던 에단 헌트에게 어둠의 세력까지 접근하고\r\n마침내 미스터리하고 강력한 빌런과 마주하게 된 그는\r\n가장 위험한 작전을 앞두고 자신이 아끼는 사람들의 생명과 중요한 임무 사이에서\r\n선택을 해야 하는 상황에 놓이게 되는데…','https://www.youtube.com/watch?v=F40MAXyXaac','2023-07-12','15세이상관람가, 163분, 미국','2023-08-30','액션, 어드벤처, 스릴러','톰 크루즈 ,  헤일리 앳웰 ,  빙 레임스 ,  사이먼 페그 ,  레베카 퍼거슨 ,  바네사 커비 ,  이사이 모랄레스 ,  폼 클레멘티에프',14000,11000,8000),(23,'명탐정코난-흑철의 어영','upload/Conan1.jpg','타치카와 유즈루','인터폴의 최첨단 정보 해양 시설인 ‘퍼시픽 부이’.\r\n일본과 유럽의 CCTV 정보를 확인할 수 있을 뿐 아니라,\r\n장기 수배범이나 유괴당한 피해자를 전 세계에서 찾아낼 수 있는 ‘전연령 인식’이라는 획기적인 AI 기술을 개발 중이다.\r\n\r\n그러던 중 독일에서 검은 조직에 의해 유로폴 직원이 살해되는 사건이 발생하고\r\n뒤를 이어 ‘전연령 인식’의 핵심 기술자가 납치된다.\r\n나이와 상관없이 안면 인식이 가능한 기술이 검은 조직의 손에 들어가면\r\n독약 APTX4869(아포톡신 4869) 개발 후 사망한 것으로 알려진 코드명 ‘셰리’이자 하이바라 아이도 위험하게 되는데!\r\n\r\n코난, FBI, CIA, 공안 경찰이 합세,\r\n하이바라 아이와 함께 전 세계를 위험에 빠지게 할 절체절명의 오션 배틀 로열이 시작된다!','https://www.youtube.com/watch?v=AjkqN8tA_Sw','2023-07-20','12세이상관람가, 110분, 일본','2023-08-30','애니메이션','-',14000,11000,8000),(38,'치치치 치킨의 비밀','upload/chicken2.jpg','나이젤 W.티어니, 동룡','“나는 도대체 누구새요?!” \r\n\r\n어릴 적 부모님을 일찍 여의고  \r\n닭들의 틈에서 살아왔던 ‘맥스’는 \r\n친구들과 다른 자신의 모습에 대혼란을 느끼고 \r\n자신에 관한 비밀을 풀기 위해  \r\n‘에디’와 함께 ‘버드 시티’로 향하는데…\r\n\r\n올여름방학, 짜릿한 모험으로 극장가를 시원하게 만들어줄 \'치치치 치킨의 비밀\'이 호기심을 자극하는 메인 포스터를 공개해 시선을 모은다. \r\n영화 \'치치치 치킨의 비밀\'은 친구들과 달리 생김새가 달랐던 \'맥스\'가 자신의 비밀을 풀기 위해 \'래칫\'과 함께 버드 시티로 향하는 유쾌 발랄 애니메이션이다.\r\n\r\n이번에 공개된 메인 포스터에는 귀여운 비주얼을 자랑하는 주인공 \'맥스\'의 당찬 모습이 가장 먼저 눈길을 끈다. \r\n금방이라도 날아갈 듯 날개를 활짝 펼친 \'맥스\'의 의욕 넘치는 표정이 영화 속에서 보여 줄 활약을 예고하고 있다. \r\n또한 각종 매력만점의 캐릭터들과 모험을 함께 나서는 \'래칫\'의 위풍당당한 모습은 \'맥스\'의 스펙터클한 모험에 기대감을 더하게 한다. \r\n여기에 \"올여름, 그 비밀을 알고 싶닭!\" 카피는 푸른 하늘과 어우러져 \'맥스\'와 \'래칫\'의 짜릿하고 스펙터클한 버드 벤처가 펼쳐질 것을 예고하며 작품에 대한 관심을 한껏 높이고 있다.','https://www.youtube.com/watch?v=91bP1ebIxv4','2023-08-24','전체관람가, 94분, 중국','2023-09-21','애니메이션','-',14000,11000,8000);
/*!40000 ALTER TABLE `movie_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `rev_no` int NOT NULL AUTO_INCREMENT,
  `mv_no` int NOT NULL DEFAULT '0',
  `mem_id` varchar(50) DEFAULT NULL,
  `rev_title` varchar(100) DEFAULT NULL,
  `rev_poster` varchar(100) DEFAULT NULL,
  `rev_age` varchar(50) DEFAULT NULL,
  `rev_name` varchar(50) DEFAULT NULL,
  `rev_date` varchar(50) DEFAULT NULL,
  `rev_place` varchar(50) DEFAULT NULL,
  `rev_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`rev_no`),
  KEY `mem_id` (`mem_id`),
  KEY `mv_no` (`mv_no`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`mem_id`) REFERENCES `member_table` (`mem_id`) ON DELETE CASCADE,
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`mv_no`) REFERENCES `movie_table` (`mv_no`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (38,19,'joony','\n   &nbsp;&nbsp;엘리멘탈','<img src=\"upload/elemental.jpg\" style=\"width:200px;height:250px;\">','image/all.png','강남','2023.9.1(금)14:40','2관','2023-09-15 02:17:10'),(39,14,'joony','\n   &nbsp;&nbsp;오펜하이머','<img src=\"upload/Oppenheimer2.jpg\" style=\"width:200px;height:250px;\">','image/15.png','강남','2023.9.6(수)15:20','4관','2023-09-15 02:18:18'),(40,14,'joony','\n   &nbsp;&nbsp;오펜하이머','<img src=\"upload/Oppenheimer2.jpg\" style=\"width:200px;height:250px;\">','image/15.png','강남','2023.9.4(월)19:50','3관','2023-09-18 01:08:53'),(41,15,'joony','\n   &nbsp;&nbsp;콘크리트 유토피아','<img src=\"upload/concrete.jpg\" style=\"width:200px;height:250px;\">','image/15.png','강변','2023.9.8(금)07:00','2관','2023-09-19 05:08:38'),(42,15,'joony','\n   &nbsp;&nbsp;콘크리트 유토피아','<img src=\"upload/concrete.jpg\" style=\"width:200px;height:250px;\">','image/15.png','강변','2023.9.8(금)07:00','2관','2023-09-19 05:08:39'),(43,15,'joony','\n   &nbsp;&nbsp;콘크리트 유토피아','<img src=\"upload/concrete.jpg\" style=\"width:200px;height:250px;\">','image/15.png','강변','2023.9.8(금)07:00','2관','2023-09-19 05:08:41'),(44,20,'joony','\n   &nbsp;&nbsp;마야 3-숲속 왕국의 위기','<img src=\"upload/Maya.jpg\" style=\"width:200px;height:250px;\">','image/all.png','인천','2023.9.3(일)22:10','5관','2023-09-19 05:11:10'),(45,15,'joony','\n   &nbsp;&nbsp;콘크리트 유토피아','<img src=\"upload/concrete.jpg\" style=\"width:200px;height:250px;\">','image/15.png','강남','2023.9.3(일)17:10','4관','2023-09-19 05:20:40'),(46,14,'joony','\n   &nbsp;&nbsp;오펜하이머','<img src=\"upload/Oppenheimer2.jpg\" style=\"width:200px;height:250px;\">','image/15.png','등촌','2023.9.3(일)23:40','5관','2023-09-19 05:40:11'),(47,14,'joony','\n   &nbsp;&nbsp;오펜하이머','<img src=\"upload/Oppenheimer2.jpg\" style=\"width:200px;height:250px;\">','image/15.png','고양행신','2023.9.9(토)22:10','1관','2023-09-19 06:15:10'),(48,16,'joony','\n   &nbsp;&nbsp;달짝지근해-7510','<img src=\"upload/HoneySweet.jpg\" style=\"width:200px;height:250px;\">','image/12.png','연수역','2023.9.2(토)12:40','1관','2023-09-19 06:32:09'),(49,15,'joony','\n   &nbsp;&nbsp;콘크리트 유토피아','<img src=\"upload/concrete.jpg\" style=\"width:200px;height:250px;\">','image/15.png','광교','2023.9.2(토)12:40','5관','2023-09-19 06:55:14'),(50,16,'joony','\n   &nbsp;&nbsp;달짝지근해-7510','<img src=\"upload/HoneySweet.jpg\" style=\"width:200px;height:250px;\">','image/12.png','광교','2023.9.3(일)12:40','1관','2023-09-19 06:59:01'),(51,19,'joony','\n   &nbsp;&nbsp;엘리멘탈','<img src=\"upload/elemental.jpg\" style=\"width:200px;height:250px;\">','image/all.png','강남','2023.9.14(목)22:10','5관','2023-09-19 07:19:41'),(52,21,'joony','\n   &nbsp;&nbsp;메가로돈 2','<img src=\"upload/mega.jpg\" style=\"width:200px;height:250px;\">','image/12.png','대전탄방','2023.9.2(토)10:30','4관','2023-09-19 07:26:59'),(53,20,'joony','\n   &nbsp;&nbsp;마야 3-숲속 왕국의 위기','<img src=\"upload/Maya.jpg\" style=\"width:200px;height:250px;\">','image/all.png','인천','2023.9.3(일)12:40','5관','2023-09-19 07:36:04'),(56,19,'joony','\n   &nbsp;&nbsp;엘리멘탈','<img src=\"upload/elemental.jpg\" style=\"width:200px;height:250px;\">','image/all.png','강남','2023.9.20(수)21:00','1관','2023-09-20 06:44:13'),(57,19,'joony','\n   &nbsp;&nbsp;엘리멘탈','<img src=\"upload/elemental.jpg\" style=\"width:200px;height:250px;\">','image/all.png','강남','2023.9.20(수)19:00','2관','2023-09-20 08:28:37'),(58,18,NULL,'\n   &nbsp;&nbsp;밀수','<img src=\"upload/Milsu.png\" style=\"width:200px;height:250px;\">','image/15.png','강변','2023.9.25(월)15:20','5관','2023-09-22 00:15:41'),(59,18,NULL,'\n   &nbsp;&nbsp;밀수','<img src=\"upload/Milsu.png\" style=\"width:200px;height:250px;\">','image/15.png','강남','2023.9.22(금)16:00','1관','2023-09-22 00:23:13'),(60,14,'wlwlgoyo@naver.com','\n   &nbsp;&nbsp;오펜하이머','<img src=\"upload/Oppenheimer23.jpg\" style=\"width:200px;height:250px;\">','image/15.png','광교','2023.9.23(토)14:40','3관','2023-09-22 05:19:46'),(61,14,'test','\n   &nbsp;&nbsp;오펜하이머','<img src=\"upload/Oppenheimer23.jpg\" style=\"width:200px;height:250px;\">','image/15.png','광교','2023.9.24(일)15:20','3관','2023-09-22 05:31:04'),(63,14,NULL,'\n   &nbsp;&nbsp;오펜하이머','<img src=\"upload/Oppenheimer23.jpg\" style=\"width:200px;height:250px;\">','image/15.png','광교','2023.9.27(수)14:00','5관','2023-09-25 00:26:47');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_table`
--

DROP TABLE IF EXISTS `seat_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat_table` (
  `seat_no` int NOT NULL AUTO_INCREMENT,
  `rev_no` int DEFAULT NULL,
  `adultCnt` int DEFAULT NULL,
  `teenCnt` int DEFAULT NULL,
  `childCnt` int DEFAULT NULL,
  `seat_name` varchar(100) DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  PRIMARY KEY (`seat_no`),
  KEY `rev_no` (`rev_no`),
  CONSTRAINT `seat_table_ibfk_1` FOREIGN KEY (`rev_no`) REFERENCES `reservation` (`rev_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_table`
--

LOCK TABLES `seat_table` WRITE;
/*!40000 ALTER TABLE `seat_table` DISABLE KEYS */;
INSERT INTO `seat_table` VALUES (14,38,1,0,0,'F5',14000),(15,40,1,0,0,'G5',14000),(16,47,2,1,0,'F3,F4,F5',39000),(18,51,2,0,0,'F1,F2',28000),(19,51,1,0,0,'G1',14000),(22,56,1,1,0,'H4,H5',25000),(23,57,1,1,0,'G5,G6',25000),(25,59,1,1,0,'F4,F5',25000),(26,60,2,1,0,'E3,E4,E5',39000),(27,61,2,2,1,'H3,H4,H5,H6,H7',58000),(29,63,2,0,0,'D5,D6',28000);
/*!40000 ALTER TABLE `seat_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `shop_num` int NOT NULL AUTO_INCREMENT,
  `shop_category` varchar(10) NOT NULL,
  `shop_sangpum` varchar(20) NOT NULL,
  `shop_detail` varchar(100) DEFAULT NULL,
  `shop_photo` varchar(30) NOT NULL,
  `shop_price` int NOT NULL,
  `shop_ipgoday` date NOT NULL,
  PRIMARY KEY (`shop_num`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'콤보','\'3\'CINE 콤보','팝콘(L)1+탄산(M)2','1.png',10000,'2023-09-12'),(2,'패키지','\'3\'조와 데이트','영화 관람권 2매+\'3\'CINE 콤보1','2.png',34000,'2023-09-12'),(3,'팝콘','아이고~소해~팝콘','고소팝콘(L)1','3.png',5500,'2023-09-12'),(4,'팝콘','아이고~소해~팝콘','고소팝콘(M)1','4.png',5000,'2023-09-12'),(5,'팝콘','달콤달콤 팝콘','달달팝콘(L)1','5.png',6500,'2023-09-12'),(6,'팝콘','달콤달콤 팝콘','달콤팝콘(M)1','6.png',6000,'2023-09-12'),(7,'팝콘','묻고더블~치즈팝콘','더블치즈팝콘(L)1','7.png',6500,'2023-09-12'),(8,'팝콘','묻고더블~치즈팝콘','더블치즈팝콘(M)1','8.png',6000,'2023-09-12'),(9,'팝콘','바질과 어니언의 만남','바질어니언팝콘(L)1','10.png',6500,'2023-09-12'),(10,'팝콘','바질과 어니언의 만남','바질어니언팝콘(M)1','9.png',6000,'2023-09-12'),(11,'콤보','소식좌 더블콤보','팝콘(M)2+탄산(M)2','11.png',13000,'2023-09-12'),(12,'콤보','대식좌 더블콤보','팝콘(L)2+탄산(M)2','12.png',15000,'2023-09-12'),(13,'패키지','\'3\'CINE 헤쳐모여 패키지','영화관람권4매+더블콤보1개','13.png',61000,'2023-09-12'),(14,'음료','디카페인_콜드브루','디카페인_콜드브루','14.png',4500,'2023-09-12'),(15,'음료','핫아메리카노','핫아메리카노(아이스는 콜드브루 드세요)','15.png',3500,'2023-09-12'),(16,'음료','탄산음료M','탄산음료M','16.png',2500,'2023-09-12'),(17,'음료','핑크레몬에이드','핑크레몬에이드','17.png',5000,'2023-09-12');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test01`
--

DROP TABLE IF EXISTS `test01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test01` (
  `num` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` smallint DEFAULT NULL,
  `height` decimal(5,1) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `ipsaday` date DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test01`
--

LOCK TABLES `test01` WRITE;
/*!40000 ALTER TABLE `test01` DISABLE KEYS */;
/*!40000 ALTER TABLE `test01` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-25 10:54:38
