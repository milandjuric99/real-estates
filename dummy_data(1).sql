-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: real_estates
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `municipality` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `street_number` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Beograd','VraÄar','Ulcinjska',33),(2,'Beograd','Zemun','Ohridska',7);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characteristics`
--

DROP TABLE IF EXISTS `characteristics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characteristics` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characteristics`
--

LOCK TABLES `characteristics` WRITE;
/*!40000 ALTER TABLE `characteristics` DISABLE KEYS */;
INSERT INTO `characteristics` VALUES (1,'test1'),(2,'test2'),(3,'test3');
/*!40000 ALTER TABLE `characteristics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estate_photos`
--

DROP TABLE IF EXISTS `estate_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estate_photos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photo` longblob,
  `estate_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4vplftp9q4p81kagrt60ts2c2` (`estate_id`),
  CONSTRAINT `FK4vplftp9q4p81kagrt60ts2c2` FOREIGN KEY (`estate_id`) REFERENCES `estates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estate_photos`
--

LOCK TABLES `estate_photos` WRITE;
/*!40000 ALTER TABLE `estate_photos` DISABLE KEYS */;
INSERT INTO `estate_photos` VALUES (1,_binary 'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿş\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 100\nÿ\Û\0C\0ÿ\Û\0CÿÀ\0\0i\0Œ\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ø>\Ş\Ô­´d\à€2CŸÃ¾y­ˆmSqAP:Œu\Îz\ç\'¿½*[kRUI\ÈÊ©\Ëw \ÃŒ~µ­ª\0?_R>ñ#§\İk\äU*\ì\ìöMY-·ooOUOMw\ì¾EH-£Q’‘ƒŸ¼pI:cù÷\çŠöo†ú–¥¦Ã¨\Ûi÷’Z+Oo;¶‚\Î\èñ–û¹Á*\ä`‚9ã§›El\\¯\\`sø\çÀƒ’1k\Ğ<¤·şN •q¹²#‘Õ†9\àù€\ĞgqŒ1tf¨Mµ¢pwM=9¢¶½ô½öÿ\03§Q,E=^¼\ÊÏ­\â\íò½ºú¦{\â¿Y]Átú­\ä\ím<r4\Ï1·Uò\Ñ\Ë%r¤2\ä\È\ä^\Ù7c¢j¾ ğœñAq¯³j’Ì––¦Bø2\ŞRcei!•¦I\n\Ş`l–l¹ù®\Ú\â)UYH\Ï!\×8*\ÊH ƒU²¯Q\îŸ\n5X¯.¤ğÛ/V,\Ú^\æ\È[ğ»š\Ø€\r\äqş\ìd4jˆ“\àğ\áÚ‹qm\Ş\Şä¹šqz]-WÄ´\ë\èúzu£y/†\í\ë£^\îë¥¬şW\Ğóûo\Å> ‚W\Õõk¹\\K$n‰/‘(\î0cn>\\nÁ\ÆFF4x]\Ì#y÷\á\ìy\È{Œò:$ø\ßñ#\Æ_ş6hüğWÆ¿|{ñ\Òó\\ğÇ‡|(ò5\İ\â[,\Íwokcc¦k:¤\ïo\İü\íœñAg\×º¤.õ\ÈüI\Ğ?\à¤\n\Ô~\é\Ş ı¯~\Íñ«\ÇzW\Ã_†©ñµ)¤×¼i®\É:f‹™{\á?±\Ï;\ÜF\Şv§•¤h$–IDP\ÌSÓ¡ƒ­Ys{6öj[\ïd›z\êôû\ï\Ô\çsNÏ1RM\Å9\Å\'­ZW\Õ%«i[vzMı’†“(ƒvG# 0\ìNs8?J\ä/\ì\ã\äÀ8\ä\às€0G~ùÁô\î¯ª<Wû~ÙŸ³\ÏÃ­\ÅµŸ|3\áGÄšö¡a£\\øC]\Ò5½;É†\Ê\Öò-N=#U\ÖM¿\Ú÷BOy\'\Û µwŒ™ ¸\ç=R1\İ\É\ïRr9\Æ3\É\êN3õU(Ô¡7NqQ\Ò\ï[ïµŸT\í{\íó\"…D\Ü$¤“µ\ÓM^\É\î½O7¹wd\\õ<\Èü	?‘ÀP\Û.>\â\È\ÈÀ\à÷\'¶3Œ}x­\Ë\è\Î\â}AÀ\Î[\0ñ\İ>y\â³\Ê\î¦0xüdŸ\\ş5­\î\ã\Ò\Íü\îŞ›o~\ßğtõ\ÙFÁ ¦ˆ\Ï÷r	\ë\Ü}+\Ö<+¥>·ğ\ïÇ¶ğ(iv\Æ\ç•R=R\Ê{BÀm$\ì–\Ğd€Y@\å¹ò\éJ«/9$€\İıõø?ZúWöt\Õth&ø©£\ëƒ\\øU®f¬…gHÕ´=Z]\Ä|\ë¤\Ûk`¸v#\ç\Ò\ÃSö³…5+9\ÉF\ï£z+.­é·—c\Î\ÇÔ”hÍ¸+ÁFI\'yk(§f·v½\ì¯kúŸ—ß³®ƒûqş\Õ\Òkšg\ì\ïğkUñ\Ä>¸·¶\Önü	\à-[\Ä1\èq\ßK}”ú\î£su}¥\é\Ò\ê+§^½¨¼‰ş\ËrbG¹_\ÑOÁÿ\0\à®ÿ\0š7\Õ<#¨ø6\ÒuV{kÆ¾ğsD7k\r7Q·ÕQÁCjÎ¼†\0a?\àÕ¿\Û\Øş\Î´F¼‘…›\\ø‹\à›y\äÚ¹\é¾\Z\Õ/wu%¶Íƒü2WõF^GOltô\é*÷V\"\ãO‡›O\ã©\Í=­nTœe¬ıù\'k«_O.I§gºQ»\Ş\ï•k¯\åkzŸ\æ½ûpÿ\0Á(¿h¯Ø—\Â\ß<Yñ\ã\Æ>×¤ø‘¬k\ZN‘¥\è~+\ÖüIªZO¢[i\×W²\ê-}ame%5;h\ãkK»¶gc¿H?cø7®\ãö–ıœ~ür\Ôş7\è\Ş\nˆv\Z­i\á¶ğ-Ö¹=……¶³¨i6­s¨wLIg»M<\Ş\Ô$Q\Ï\Zy’0f¯´\à\å\ÚE}û&xM\ç_=â–½%¾@>M\å×l ”û±¸U\éÊ¶2A÷—ş	\ï¢G¢~ÄŸ²ı„\nR3ğsÁ·\åA÷º¶›­9\ê~ô×²O8#5\İ<L\é\à\èNš„*Õ“\æŒc\î\Æ)\ÎÖŒœœTm·w¦ö)I\Æ1²Š»k™\Æ-»5\İ5¦š/\Ôş µTŒ\á¶ü t\é\ÛÛ·¦89âµ¡µ–=zœ¸#¯_ÀzU˜ Ú‰òFq\Ç\ã\Î	üA\ïZ[—‚	ä:s\ì\0\ã®>¾EA+7®¾–µ¯ùÿ\0ÀFü÷I|\ï\İ\ÛKv»HÈCgr­¼“«MM\å)c%`\ß\ËF\Æ\í •3awô/F?´nCp$Ó§ mÁ“[8#\ßj¸©\Ï›oi•\0)\í\ØrGLzô\éĞ{WM¤²\éSA\ì\ïoŒv÷h¶ZeºOw+\ÛÈ°Am’\Ã’[ƒšx-¡Rf¹#ySŸÊ…W)(\ÅSwm¥£«”ŸD’\İ\ée\êi‡©lE\rÜ½¤b’NNNRI$–­»­¯Kjc\ß\ßI¦\êU¿v]¼\Å\Æ>P~òóy\Ü:\ãx®»@ñ\Ä7v\×vRKÍ¤ğ][\\@Ye‚\âVX&†v\Éˆ®­\Ô0\Íxÿ\0/õ&\â\âò\çIÕ­,p\Òı¦\ïO¹¶„(`f–1T’d²\Î20MÏ„Ÿ´½í™ªZ^\\i_\Ú\â‚T‘\á\Ş\Î9RÁwln=qk\åiÖ¡[øU©M§«§R3%ö\î¿\àŸ`\èÖ„©‡«´›s§8­md\ÛV[\íwùŸ¬Ÿü}\á?\Zÿ\0ÁXÿ\0\à—\ß4‹+m/SñW\ÃÏñ…¼~JZø\ßBğˆ\ì5	o«\'‰4­_O2¬u+kGs<3ú½ÿ\0º¶\Ó\æÿ\0‚vx†d/ş\nğv8\Úci!\×$l\äc`NC\0ûI¿?ƒ·^#ğ\Ï\íûÿ\0\ØñğÖ¡o\Øü~ñW„%ğ\Ü:u¸¾Wñw‡|5o{¬]\äå·¸Ó­¬\ìÆœvˆZ\Êi`ó&¼dO\ĞOø-Ÿ\í?\â?\ê\ß¾j>‹F³ø?ÿ\0øQ&—¬A%\äR\Ò\â\Ó|m¦È²HÄ‹«¹\å‚\çR2\Ú}h\r¤i»»}¥I\É\Î.«\Z¤\ÒS\äŒ[z(\Æî“•\î¢\Û\Ò\Ç\Éb#K\rˆÀQ’”a^¦#F\éÍ¹FUª¤\ånk(MAJK§-\Ï\èOö÷øm\áï‰Ÿ²O\Æ{-uU?\áğV¹ñH½ò¼Ù´ı[Àº]×ˆbxPo-m/4™\Ø\Â\ÓR¹\Úâ¿‰\íV\Â\í¦„ùA e× $z“Œp8\ï\ë_\Ù\ß\í—\ã+„ı™?h\í5µ\èò^ş\Ïÿ\0ã¶³¿ñ\"CP´o‡\Úå½­ŞŸl\ÒY3Ou=Å¥¨µ0\Ê\Ö÷Wv³\İy\ëŸ\ÆõüÁÃ· r3ı\ìı{\ä~¸\ç4ftù}“•”œ]´\ÕÇ›Tú\èÜš\Ö\×mİ½•\ÔSeu\Æ\ëMŠ{oªjşˆò\Ë\İ>\ë1ˆs÷\ËeI\Ï?\'¸=8Œò+\ÚÈ÷I\ny@x\ë\Ïbxçk§\Ô\ç\n%fÿ\0€ù\ç¦y\Ï_ÌŠ\âÎ¢Œ²6õbªü€NÀ\È\êF{ğzûñÑ…’·i«|ô·\İø£vMŸ6k´†t\ß\êšTv÷÷šv‹su¦j:¬v·(©«ZÜ½´\Ö0Àö\ë\ç¬Oşm\Ò\Ê!\ÆrøDx7Y[O\ë~R\Û\Ùişñ\î±m8Ÿt\Ò6—\à\ê²D±\0ˆ¾	U\Éùv\Å\Ïø5oj÷—ZM´\Z¤~&ñKG,3G·e\î·~`\r\æ\Êg\İg/yü’4ùk\éöº<Qÿ\0\n/Ç£\Â:¾—¬[ü,ñ\İ\Û\Ş]*´\Ø\Ö\ŞÕ¦ñ% \ÌS*\Üj~]SL´G¾+»\ÈfG‰\ãYS\ÜP£\n\ØWK\Ú$\êR\æö\r\İ:|ÜªVŠ—3M¶\Ü\\S÷£\'/­Zõ¡YÖ…\ZrŠœ\"¨*I+¥)º“\ç%Ê¤ £(·vI/\êş\rp\ÎØ“â¯ˆ®n\Ü_|uŸGWš.\ZG€ü\Zè¨¦A}Ú¶2W\Ì\É’1\èBó\Æ\Ï\âL\Æ}z\Ê\ÛÂ–WŸh\Ôôømˆ^ö)—ds\\¤­<VÄ²S óR0¤ó-ÿ\0üø›ÂŸ?\àœ^\n\×<{«O¥\Ù7ÆŸ‹\Ş4½½¸¿¹²ğ\ÒZÁm\á]]KÄ²­¡\Ól4ı6?™[YÖ®\â\Óô\Ût¼¸\Ìq\í‡\ÄGÁ\Ş8‡\á\í\Å\í\æœt\Ís\Çz¥Ş‹­üq\rõ–‘oº\Â\ê\Ş\æ\Ò#§06·2j63]XImtø¹Kt\êT\\\å¤×´F\å\ìù½\È\ÅÛ’‹n\\·RºQ^óµ›9k\Í)Ö½œ¡8C•i«qZ½Rµö²M\é\ä-?ğrw\Æm#\Ä¶OÁ/h\Zµ®¥a\áß€zeü\Ïg4wE¨k\ß¼{Ğ´‘3#J,ôKm\Ãc Rkûı­¿²ÿ\0d\ÏÙ«J’;˜\ç\Ó>|\'°»K›k‹yö\ÛÀš\n]€—\ÆÎ‚\ã\Ì	4a¡•p\Ñ;¡¿Ÿø8\Ä>)ÿ\0‚©k~M>	¼)ğ\Ûà¯†$Ò˜\Ä!Ó­\çğ\Ì>+\İ\r“\Ë\n=Å¿‰\á’1¸\"\Ü]¬2´lY‡÷§ğ\Û\ã\ÏÁ[oh¾ğ¯ÅŸ\0x®\×ÁZv•\à\İF\çÁ—±x²\ÃK\Õt-N†]\Zşû\Ãz¯ci«[Y\Écsq¦\Ïs\ì×¶sKn‘\\\Â\ÒaºT¨\ĞU\åQ\ÅJmÕš•G*’u$µ\å¦\ä©ÁZÊœb“k}\ëNÎŒt‹\Õ\Ùû·N³\Õİ·{¿3ø0‚¢\'““\Æpzdd\Ù#8Á­\ëh†ÀÀ\ç<\äu<ş;\æ°m\ç\0`c<pGQÏ¶8ü=:[€Ê¡ŠŒ8\Æ;ĞŸĞÁÈ­\ç\ßúf}ÿ\0¯\é/¹ö–ù^\0,\Æyö\Îãƒ€r;w®\Ã\Ãó\r;V\Ò\îLM)·\Ôl\î<¸\Ú?2Añ\ÈbC;$\Ü.\Õób\Éıã¢’Ã´¸f.\0\0ƒœ`ô#ª\Ğó\Øõ<V°º‘c”\ÆA™bsy!Â±F#(\Ä\î\ÛÀ`q\ÆA9\Ø\Ü2\Ä`±xv¹½¾½+6\Òn¥)B\Î\Ú\Ùót»üŒGG„­v,U\n·\İş\î¬&\ß\àtßµ¦¥\çx(ŸI};f²!i.\ä\Ó\å—eÆ—¨»m\ÂI\Ô9dF2¬»Tev’\Ü~Zş\ÊÚ’\Ùü\\ñ¢±\Ù6g2Àû>«v@8H0:gğ¯\é£ş	©ğK\á\'\í[ûAx÷Á_|# üMğ¦“ğó\ÅzvtúÖ—§[k\'\Å\Ş\Ó \Ô\Ú\r7]†\æI\ÓO¿¿¶€\\K$(—3º(’R\Ã÷Kÿ\0‚Dÿ\0Á7t;ù5möPø¥jsBb–ÿ\0O\Ô<ciw$.\ŞkD÷x™%hÌˆ$*\ÎAe~lù\'‡ya‹\ÊifT\ê`½„\êbhÆ›&R§\'NNJT*_\Ş÷—¾»ZúŸ¸ñ~k’eÎY«š\Ã_G|._„\ÄĞ…9W«Nöµsl%IOıRşcQ$\åkŸ\Å\ÇO\Ú=f‹\ïÙ«\ãU…Šµƒ¿´O†~(\éşº¿:U¦»‡jw¤\Ü\êKoxö0_=½¬\×Imp\Ğ\Ç;8ŠFUC\á¶wüUı·|1£xSKø+¤ø/_µøÿ\0§|_Ô¥ÆºŸ‰õ+k\ß\èú¦“\á\r\Â\Ú}Ã¬–·w*\ÔT½?jKË½2%¶‚Á\î\"?½¿Á$¿\àœ¾5²‡Nñ‡\ì­\à?XZ³½½–½©ø\ÏU¶…¤TY^(o<O4hÎ¨\ÈPX*\ç!FxQÿ\0Hÿ\0‚N—Y¿\á‡şyŠ\ÅÄ¿c\×ÌŠÄ–\Ş$ş\Ş-»w;³œ’x\'Õ°™~a‡$¾«+ÁBV«7	F2r\\\ÊXW6\×3J\Í-5º\Ğü\Ë‰\áœD\á7ˆ\ÍÔ©UuiUyFT§9%ECˆ¡·‹WÌ›ºş_¬?\à\ãë‹Ÿüeğ;\ã\ìów\á\Ï\Zø£Âº\ßÃ7]ø}®iš¯‡_\é\è—z³¥ø›Kş\ŞÒ£:½\Õ\ÍÉµ¶\Öõ¢²òK«Ù /7kzı–i=\Í\Ó2\Û\Â»$o#e\ÙU\0X\Ã7\Í#\0\0d±\n	×·üsş	ce2\\Z~\Åÿ\0\í§\ÒX\æ<K©,eZ7WO†Œ¡‘ƒ¤\ÆO¦Ã±?`\Ğw\Ã=xopÁ\rÿ\0	/sÁşññ^x‡ò­±X\\\Ó*no\n\Ô¬Y\Å\ÚmI\ë,[»»´¯ê“¹†\\/…Œ£Gœ\Å\ÍEKş°²MS÷aeSˆg\Ë\Ëg\Ënm9›~ñşi?i\ßk> \Õ4\è>,h?\ìt}kX·°±ğ/„\åñ®©qog®j\Ze¤¾8ºÔ–\í4[˜b±Šk2\Î\Ö<«\Ø\å’k½ñC¦ü!øÛ©x\ËC¸ok~¾Ô—PŠ+¯Ø¬\ï¬_C\Ğõ=\Ú]Mpjğ]\ê“ZjöV“{¸¾Î ®\×ô9ø$\'üZf•\äı“>»\Ï4·y\â\ã\çO5äº”\×ŸøI3$ò\ê\Í{$­ºI.¥’fc#³šv?ğFÿ\0ø&>–\æM;ö=øaa#”\Şösx®İ‰‰#·Œ–‹\ÄhIHc%=B¢¯@\0O\äŒT0±’_·ªô\êµÂ¾½5KD…G©7õ\ì\âQ}Qƒò\Õ[=¾\×V\æèŸ‘şz>ğ\×\Âÿ\0ˆo\â[7Á>\Z’\Ş\ÃX¼\Ò\'\Õ\Ò\Îö;‰µ«k›¯\íicŠiü£\ä\\¼sZ]¯™À”Î‘ˆš6ojñ\í\ä~øñ±\ÒeSmğ—Ä¶€Ûµ¹t\ßmc–Xt\à§Zş\Û~>Á,?\àŸŸ¿fïº÷\Ã\ßÙ‹ÀÕ¼1ğƒâ§Št½÷Å–¿Ù Ó¼¯jöz´/ˆšÙ®\áÔ­\â½2M¢Y–@[?À§\íâ™´ÿ\0€¾5)6N§¦hútû\Ô8’9u½&ñƒ¡R’–\Î<«‚§ŒŒ\í#8Õ¯†\ÅS\Ã\×Pr\å„\ã*s”£i\ÉÁ]J;I8­“V\Ö\ë`\Åap04ñ˜\nØŠ\Ô\ê\â18z‘\Æai\ájBXjx*­\Ã\ÙcqÑœ*G£w*n-r\É4\ÏŞ¿ø%\çüOörøûü!ø5ªü]ğw†¾$i²øóVÕ´wÃº\Í\í¶\âk\ïˆ0\Ôü?y{\âIü©øJ\Î\ê=*=\"H\"»ñ\Ä_gÖ˜›¸Iñò_\Å_Û›\ã\ç\ìq\à\ï\rMû-~\×¿i_I{©ø…|!i\á_†\'ñÀ\ß\Zx†öY¼Q?¼;\á\ni¾ğG…õmJ\ímÂº%„\Ú5õô2iZÄ“j—MüÀh÷rGöÅ«¥Ä²L<‹)n£Mn\Z{ˆe·BdX•‘¤ ½š¡ò\ÕJº°õm_\ã~¤šşk¥húDº‡’·z\×öT\íªÎ\07\Ö\Ã.–÷q\ÌH™$¾[›¨<¹Os;¶ò\Ìq¶ö)a\ä\â£\nxˆ¬E\n”b§Ô…U\íe):´½ªUajs©eÈ–±ø,\Ês|Da9U©:œ\é¦\é<4¥V>Ò“Z¹¥ŞJsV—%ö\æ_d_ümø‡ûLü×¾)üPñ5Æ½ñs\âoˆô¿k^0øw§i6~n¤-ü# \Ã\â]Qm,ô\éš^il—\Ù\èö\Zj-¥¼Il?\Ø\ÇüŸ\Ãß²ÿ\0\ìŸû</ÃŸ|z´ñŒõ¿j=ñ^µ\á\á|~}[\Ä\Z†m\×\Ã?nñ|º¤ºE–™¤i\Ö\ës«Á¥\ê—w©{sy¡\èr\Êt›?ó¢ÿ\0„\Æ\çQº‰\Öö\ê\â9¯ŸÌM\æfi¥2¥ yÅ¤rL©g‘KF\Ç\ØôOŒz>fÖ¾$ğ¹¯j\É<†{\ëo_ip¨\Â*[¥•/$)È›7˜‰p@U\ÇB¦s\Å<-\\\ÃV0…ş°œ©E%Ì“\Ä\ÉFi½\å9º‰(­S“\\4]HK²u&¢£\Í*²i+EY+\'ºµÜŸd»ş\êYkğ˜\\\ã\0N}s\î~MtZˆ­\ÙBn@\İFz\ä|\Äq\Æ2O¯\à\Ş\Ğ<o«$a´ñd°n\äf\00\à”³\é\Ç9\íÂ’…f½\ãÃŸ\n\Ñ2k~+…A\æ[=:\Ö\â„ \í\0]\İ\Ã$G¹-\å\çh5\×\Ï\åøÿ\0À>Si¾d\Ó\Ó\É÷\×O?\ê\æ\áñ,&ö’8¦Y¤‘QT¨\É,\îB¨\Æqœp=3To<b}ù‚l\Ê\í\È8#øã“1]œ\ßş\Ş\ÙO§ø¿J¸ñr£Î³»Öµ;)¥Œ3µŞ“{¤\Ê\î\å£H\Ê®^MñWGø\'m\rÁ\Ó>\'\É\àKah´­nK\é\Ì\ä”­Í‹[\ë(\0™%·\×nà«†\İUjTP›ŒT—+´T’“wKK\Ù[®\ë¯c«\r\n.¢Œ“Mm.Y8ôZò»\Ùz=u\İ\Øıÿ\0ƒq¿g‹Ÿƒµ\Æÿ\0^x\ëÅ6›ÇŸU„\Ş(\×õıy¬m¬¾\"x>\ê\Ö+Iõ»\ËÕ‰LZI#¶m\ÄBˆ•²<œwû£§®·Ó§·\ãüŠÁÿ\0h‚Ÿ\n~!\Íñc\ãOÃŸ‡\Ú3|¹\Ğ`×¾\"x³Nğ‹©\ëñø›\á\Ì\Ò\Ú\èÚ\äğ\à\Ô\rÅµ\åõ¤P+<¶M:E\å\Å1O\è\Ïş÷ö ÿ\0\ÆfşÊ¼/$ş\Ğ	ÀIÏ‹qGó\ì+\æxˆ§8g8…K\Ë2„ãŠ”(Tötñ2…©\ËÙµMÑ7M¨\ÚQ³M§wúeu1¹Uˆ\Èr\ÜN+.C‚t\ê\åøZøœ;ªñ\Ç^>ÖŒ*AÕg%U99Æ¥\ã;IX÷OŠú´ºO€¼JÖ—S\Ù\êZ†•¨i\Z=Õ³´R\Ûk:•Œö\ÚmÈ\n½²\Ú\Ü:\\½\Â1’$ˆ´K$\Â8›\ãŸjs\é\Ñ41\ãsB´³\Ó.å´¹Ó¥½\Õn\ï\\“J´\Ù{,$e³[MBh\ßLŠ\äØ¢\İjQE¤\æıRı»¿`MJÙ \Õ?l?\Ù*ò\ÌI´wŸşMn%<¢\É/‹\Z=û‰1’\İÓš£oûaÿ\0Á=£·w´ı©?dUµUŠ9\Û\ão\Â·\n~xcw‹Ä¢ ¢´h\ÇWr/½\Übú\Î;\rˆ¡™`¡B„%	\Ñú\Ï,ªûH\Ô\æR•9|*^\ÂqWM:M\Ş\Î\Ï\Î\Ê^i–\åupxo9¬\ëf±²¨²Ùµ\ÍF„ğô\ÒXŒx¹B|Db§N¤W·›QR’q\Õo\Åk¶÷>,ñ„s¾¡\á{Y7[_}¢	5_[µ^wŠŒfİ¬\"}:f\ÒR\Ûv5S{¨\í¸‚¬÷·Kd\Í\ãO\é–ó.—4fı¯n\á”]\éööpDó\Ã\âË»‹V¹\Ô5[{†\Z€Š»6–7c]?µ?\ì-œº‹~ÑŸ²\ì\ZJA\ç-ñø»ğº=8@U?|·\Ä+l *\Î\Ë*+“Û¯ş	·hE³ş\Øÿ\0±©UU[sûB|„ª4QD?ğ—&¥UTP»L£\0»œ¯€vø\Ú\ÚJÍ´´\Õ\î®Ó’I¨ª‹\ÇÁ\Ş5Zk–ªyw75\ásS¾Æ›÷=\Ä\ãS\Ù\ÆN0“—4\ç\ì\ß\r¼a¤j=	uOkš¶¥fdšŸ\ÛZ\Ú\Äh_h\Ó\înd]GV»H?´\çˆ]#\ØC\å\În\"K\ïH~ôú¿\ïoóõğı·\í\İÿ\0\åx/-lo\Ø\à\\ZI\"[\ÜÁû@üim\åù\ÖThüXZ%\åY2H\á†X\Ö\Ûÿ\0ÁD`Hò_ö\İı’#¸¶\ï\Ú7\á€’OŒ03»<a]41\ØXC’®?\0æŠ&—\Â\ÔwRšwrm\è­g».a“g\ÌC¯†\á\ìú	Á{EW/\ÄÔ“”[ŒZt°´ £\ZJœPO\İrm¶\Ù\Şş\×Gş1_ö’\ÇıŒ~\ç\áÇ‰¶zt\ãğ\Í•o\í!®+|)[ †\æ\Î\çT\Ò ¸‰ë»…i6ZCon7«\È\×mo,¨·ş\âcYX²µ¥/\íCûu~\Ä\Ş*ı™¿h\Ã_¶\ìÃ¯\ë øñ_EĞ´½\ã\×\Â\İSQ\Õõ}[À ±\Ót\İ&\Ê\Ç\ÅS\Ü\ß\ê\×w0[YZZ\Ç-\Å\ÍÄ±Co#ªŸóŸöpøÍ¡Àe\ë¾#·\Â\ŞiºN«}{t4ËU\ì1\İ\ŞÎ°<k.\"d\Øt\à“_1Ÿg\Ù6Juó,,%:T”+\ÅûJ­\'(:´Ü•7(·\Ïk§¥İ“õ©p\Ç\Õ\á®Jy.dª,\Ë0—³¶´\áW“F§\í\ãI\Ê<\ĞjS¦ÓŒo\ï+¶|K¬\Ú]\âa¨\Ù\Û0±-–\Û{0Ó‘\åXPœ\"Â’	šdF’Cp\Ìó\É\'–K»\Ûh\í\ŞöH\ì\àšA¹u)YQId¬\ëµbe*ÁAL*p+\Õ|Q\á{ÿ\0\n½\Ïü%9á¸CÁ§\Ï	’gI@[G”}£b´±°Y•e•dYK$\àHS\É\Z\ä%\Ü\×H‡\í3›(VI\"…H\âŠ\æ7\ÌT†C+&-\í¬vŸk/\ÇS\ÅP§Z”£R2JP¨®\àäšŒ½š•Û¶¶v»\ÏÍ³5|>%\Ğ\ÄF”jP„a(Óš¨¯¤\äªNN^ıŸ>®Ú¶Ó¿A\áÿ\0XmJ\Ñ\'¶[{8\Åõ\Å\Ë,F(\Ö¼$c\í\å„P.\ÉR+¥\Ôü5®Gtv\\\ê\Ñ$‘\Å*E‰o¼°\ÈÁ<	\n€8ŒÄŒ…J±\ãô\Í\ïWcNw·úŒ6vú}¼’\İ\\jr\Èb¶‚\Ñc†Inf¸3D‘Á4²K$h°–*k\ï=\àG\ì4ø´¯ø\ß\à\'‚<E¦Eeç‡¼wñQğ÷ˆ-\í52\Ç]\Ğ\ï¤Kk:F­e¬xVÒµ{\rsFÕµ\rB\Úõ7\\}º\Ø\ã\ŞQ\Ì\êUsÁ,5x.^zu\ê\áğŠ•\â”d\ë\â\êÓ£9Nq•¡YòÛ•IB£^mZ´¨%)\Æ”\ÚJ“Sö«•k8*WnE7$’r‚M6~¼K\â\Û\ÛhSFğ\ä\Ïiw½–©/Ù´Ë…(²E-³\Í0{˜rFò\Éimp‰«-¼\âŒ>>\Ùi²j\Ş´\ĞuxR)>Õ§h\ÒI{­\ÛÃ±–wQÛMGİ=n¯\İË°C)ô\Øo]‰^\×>ø\îÁu}\'_¶hôMb\ÇV‚óR\ĞuûUym\ïá°¸¸µ¸Œ\Ø\Å1\É´¯,\ä–\Ö\áš\ÚK‚65/j~ÖµŞ­¤:†‹©Ï§Şª¢´\ßhI6‰c0 *“/—q´÷B\î\ŞH\äÅ¾òÊ¢\ï+=WTÓ¿Ïª“J³VøZ²k\Ç]Ò½õ?\"¼Wñû\âV¹uuk­x§_ŠT–Hn´ó=ÍŠX›\Ë{y­S\ì\å6$h\Ë!Jƒ\År:vµy©O\æOq$››÷4­·©\Ü]˜€\Æ	$\ã~¹|HøGğ\Ó\âÖ–\Ş2\Ğz\ÛF\ĞYx»F‚\'Ä–Œ±‚÷Ë¹\Z¼#{Eg®Áªi\è†\İc¼ÁùQñ\Óö*ø\Û\àx/õ\Ï\êwÿ\0<yV\r\ÎK/Z@b·¾W&ı \Ê\Çö]LÊ©-\ÕÍ\åS•7²»\ïòÿ\0/\ê\æñ›¶‘³I\è•\íf–\×n‹wkVü1ø“y‚l¼5â“¨]\éI\r\å“\Ş.¥§X$°Fml\ä\í¤·´\ä\Î\ë…Å´\ãk	]T¢W«7\í%\à_\İiñüZµI·¼¤zı€—T\Ğ\Öi¦–\ÖÑ©À	\"9`Ú”@2p+ó›öR\Ö5\İ\Ë\Åzn¡\á­v\æ\ïWºÓ¤\ÓtM=õë‘¦\Ç{¡%\èeû\Ë$\ÑÀ/¶N²£o…Sq\ß|Z|M\á¯Á-Š\éC·±ºJ\Ü5Õ—\Ùü[\á\Í2Ar÷0[H6¨\È\Êmm°P“\n\ï\0|“\Ëó)g˜™5\ìò\ÙNRuc);Ğ¦¯J)¹A*\Ò\Õ;EûÏ©õ¯–¼Š„\ãNO2¤”jT§N¬#<KM\×o–~\Ê\Ê2³\ÜiY¹:Š|	\ã/\r[¿‚õŸkzEÔNÿ\0\Ø÷3E+\àÈ’O½C\Ú) I‰\Î9û;ÁŸü¡üñO\Ã\Ïü=ğm\æ¥skö}\Ç¦\Úÿ\0Ø_\ÃzÄ¯	6‘\Û\âô\ÏY\Ãqq42Em\â{õ’W@şB¾üD½ğ~½¬\\YMn\Â÷\Ã\Z‚¬÷ö\â\Ò\æ[­5\â\Ôì§°¹·\×S´·\Ù.Õ¶ª\É-¼ª\Ğ\ÜJ‡´\Öü{\ã¯Æ–¾$ñŠu\ÛEe¶¯®\ê—Öˆù\Ã8·¸¹dF9\Æ\ä\\ò½ˆ\Ü\Ã\Ç€­)\Âq©\Å\Æ.W¿+µ\ÒVz¶\í¾¶\êÏ\Äai\ãi®w\Ë.{«¶œZw¾©ü?e]y7uıù\ÜÁzeÿ\0ƒÿ\0<;ğs\Ã?|a\ãß‰z\Â\í#\Â\Ş\r\Ñ|¢\Ú\ê\Ô\å·Ñ¡Ğ­uWY\Õ\íô]3ûö\â\î\Z_\Üø¡\å•^(‰‡øºı³¾\'\Ü~Ñ.püøğjxuó}-ßƒôkŸøK.\í\à’W·\Ğõ­W6¶—\ZL7KôB\ãK[›{ûd’-A·_i÷oƒÿ\0µ½\á‹ı&ö[»‰®t¯Z|9´¸ºO»k	\ØÜµí–•c,°ı¦\İ\"¹–f‰\äE!‘­Œ‚\ŞG‰r<C¯i\'½šö=+M–\âI¶–rÁinP\ïibµò-m\Æ\æ;’C,j\åœdŸ\Ïø\ï\n2X|<¨\Ébe\n”cN0I\ÓJ\îug^nR’rz\Â	5h+³\íò¡\n\ÔçŒ«í—°„©WYûş\Ò\Òpöt£BŒb\ág(\Îo–î¥¬|\à†“XyZ…\Ìú•\à\æY‰\ÚH\â–i—\æ%™¤s#ªJ\Î\Ø\Â\ïÁöŸ‚<\r\àÛ¨•\Íõ\é[ˆ\äûCi\Ú~‡¦^^M8\Úm…¶©È½‰Ù‚>\Îd;ğ ›*[—\ĞüCkaq%\æ·\á¹\áºBñ\ÔR]³\åZHòE­ !”;£\ßÌ¼ˆ\íÂƒØ´ïº\'€ô	|O\â¯\èš46k\"[ø•n¼\Òe˜9µ³·–ky5ºh•ÿ\0uagu2«˜HÅ³|\Ë=\Íq¸jšøŠ’Œ)Bj\\óª\ä”8EJrpiYSƒ›“¿,×°«,Ã·VT(Ğ¥j“«Ì©\ÂY9\Í\ÉF1kV\åd®µv¹ô7¾ø;N\Ğü;\á}\Úö\Ú\ÓF±±\Ó {ùn\ï\î\í\í­¢\0Z\Úøı¦\î\ïË<Ûˆ\à‚9$B>Ë¹ƒVW\í|£üø™…yø¯\Ã\Z\n\Ü]²<÷:ª‰5}.\ÂúÙ¢M.EÓ®odei’\ê\Ü#\0¡£ü\Îø—ÿ\0ñŸ‹’Oø„tEwŠ\ãZ€ñ6©.\Ç[{\çûİ€\æKFmNu\n\Ó_Á³\Ù\ãöqø¤_Os£x†\Öó\Ä+¶¹\Òõ}6G–Xõ\rB7¶\Ôc¹7\Ìcs’¬’œ¾ó¹eY6“úø3[1©Ç‹1•¨b\Z\\]O)T–.Kš|Êº½\éÆ§,¥ƒ3©ª«Rœ¹\éKò\Ş<ñf²ü^O\ÂôiT¥V„ğxœ\ÆteN1\ÃÎŸ±«¾’q›“¦ùaŠ¨ÒƒÖŒ\'xT_ng¸°½¸Ğ´\Ãs§hºF•¨\ë“X\Û\\4\ZU®©>¤Áq¨\İ\ÛM\'özI«^‹X%3[?Û§µ¶uK¢\"?*kzµ¥Î—hğ8Y[wŒ.ñÊ8¹]¬Z@˜ğ\ÒHí‚‡{ù\Ï\î/\í·ğWÀ²\Ç\ìyñ/Oğ/\Åóª·\ÇÏˆ¬G†¼U\áe¸\×\Ï\Ã\ï‡o©\ë\é\á\'\Ä\Öñ\Ş\Ú$–/\Õ4ojz¼6^ŸY\Óô»$š(\×R²ñó\á\çnb+zló×œô\È\ÏQÇ·û~ ©“PÁ\áq6&Œ]Z‘„¡V—¿\'%8\ÊWN\é\Ô\\Ú®wFúŸ…\àqp¯‡­*qNIû4\åFiAS–ªPVjNJÑ“M%w{¥öŸÀ/ˆRi>\Zx«K\Ñ-o‚|G\áÿ\0]i3]Ik¡¡\Ş[\ßM™a\ÂÚ”zd²ª¬S\Çf&WLH†O\éöwÿ\0‚Q|Lÿ\0‚\ÄGñ‹ö\Ãø^š\'À¿\ÍñŠûáŸğ\Ú\ëË?FŸÁ?>O>™=¿ƒ­\í\åµ\Ôo5Ù¯fò,\ì–Jkûw¶Y¡–I?\à”ÿ\0°\Åo\Û_\ÅÚ©ğv«á¯‡\Şğª1ñÄ¯\Z\Ù4k}Bå †-DÓ´\Ø%½\×üA%„\Ïu-‚\\i¶Vºz\ÊÚ–©f×¶1\İÿ\0¦oü\Û\ágÁ_\ØGöSøoû:ø\"\ê\ß_“Ã_k6ñ\Üz¾‹ñ#\â¿8»ñGõ‹8.5óQ™môû/5MV\ëMğö•¢h§Qº·\Ó-Şº°oŠ•Z”òÚµ²µ9F‚|\ÉW¬\ç\ïT—²­N´\ãOXÓ”\ä\áf©\ë*¼\Şv#*q¯ˆtj(\Æ2””’Œ›Œ\éÔŒ[sn\\©6£g\î\Æ\ß\æ¹ğ7\âß‰~ø\ÇO¿ğı\ì°D—q\Í$bXš	Z6\\H\àñ7€¨M²Jûq²\'8\Ï\í\Å\Ëø¾ xkÁ?l\Ò(®|Gao\áÿ\0-Œw*Ÿ\ÛZm¨“K\Ô\Z{»;)\êš$k«i²*%\Èe2§›ü\ËøTÕ·\Û_j—0Û¬>[4q¤±‚\"‰§„)|òN\ÉT`\ŞdW¸\ëµ—\Ä5ğ¤^Ó¼M¬XxR‰“F\Ón\Î\Öi\àI!†K‘f‘K{2E,\Çö†d‚&ò Š(\ÈA\à^j.;·k=4\ÛmS¾\êö¹÷I\ÍM|ûµ¥\×\æ–\Ç\ê^½ñ\Â~Ë­x‹Nµ6\éÆm)šşF´\ìøüÉ”²Ÿ\ç0\ÛÉ¸m0\r|\ç\âÿ\0\Ú\ïJ²’X´Zc\Üb»\Õ\Ø\à«<v6\î[‘´\Éw\"‘\Ã\ÆqŠü\ãUñ†¼\Üd\ÛNr÷a\ÚòUl\ÂD½\Ë.\ï$q¼\Õ\è<5i‚[—}Nc‚f½mÑ©\à“ò”g\î\îGq\Ô>rN3Œ“›Iî£¾–\İôÛ§n§]9B1º\åwfŞ–z4\Õû_¿C\Úu\Ú\Å~ \Ô\îµK»i¯$ú?/OŠi!O&)dx+?“\ZG`‘®\0\ç\Íş!\ê\"ø‹\áO\Ç\â\Û\ä\Ö&O\Ş\Ê\'şÏµmE-4W·\×\á²}a\à}^{µ\é6Ò›U¸\Ñ 0º—WŒB˜#<(\Â\ãx\èq˜@`\àõ­3-Ÿ†<gu\åy¦x©\Ìj‹#šÿ\0H¶¸p\İ\n\ì`s\Èb0&Œe–©§v\îô{\İÿ\0_!«É½9’\Õ\Â\ïUÌ´\Ñ>­=º^\Î\Ö>?ğ\Ü6Pk(, \r’S4b	Z?•B\Ãj5\ê\Â@Q\ZW—o›wui¬Ê„@#8\Ãm\02¦N\Ñ\Ï*KKYˆ\"¾}Û¬xÙ´ô[¹w¼rJ\ÈP2\"¨¯\ä„B\á\ÊÆ‹œ‚Ñ… ô6\Zˆ\ìÇ™¯k\Ò\ÛD¾t‚\Ş6µ³y\â·À–X\åš!\æ…,¥	©l:²6\ÏB¥8TQ³âµ»³n\Ê\ÏO¿qœ£79\ÚRşY&¢–ñN[]}•n\ê\ç\Óc\â&£eyÒ1\âò£a*\Å=½\ÄQÀ¬„Y]–Kp«#\ïH¢o1£X\ZIfO©ş||\Ó#†\Ò\×Æµ¼²‚\Ù\Z[½\rm¶Ğ¼q3›ı\Z\éR+dòd\å“ıO\Ş.#vo2¿:4\×\Ô^xd\êI\ìÄ‘Euö³¾9\Ñ!‡ËŒˆ\æYò\Ø[\á	’(ü‘\Ä{¤_oğ¶…­x_³h6\Âub#»\Õ\Zñ­\Ì[¡ \\ªÂ³,Îù«io\Í\å\ÂO1U¿\ß\åG\à\ç9S›Ñ,nmk^œ\nñ\ÓxÖ„£%k\í.h¶•\â\Ñô8\ã—N\Ëñ3öQ³\Z­TÃ´œyª·¦İ®\Ü_Hµ¥ÿ\0T4/Œñ6\ÚG…n,\í´\Ğ#Y­\æH¬\ì\Ä$q\ÛjM±‘\×z\î\î!2\åT­\ÄlŒ?\'~9i?´=¦±w¬üQğn¿s¢[Mvt\İ_A‰uO	\éšc\ÊÎ¦\Ö-§³Ñ¢‘\Zg»{k›¦O65\Ô9ı\0øIğ;\Ãöö–Ú–­u,’\æ	ã¹»µkVb\ĞÅµ,\ín¤2ZÈ…L\×v\×3\ÈTIeœ¬ñ›ö™øGözø¯«xjÿ\0R\Ò!Â·\Z$\Ö0Ne²~\â\Ï@˜\Ços\â\Ğ4\Z»~ö\ÒKwL°\Ë1zü·%«”pŸ\Ó\Âd3£š<Â½\"¦2ŒªUÁ\ÊU\ãM,>aJJ*uV«:xz~\Î›‹M¯²Î©cx“\"©_3uòø\à\èU\ÅSªc.w\í0U#\í%F\Ù:µi\ÉJ¤\åJ<³—\ã&•¬\Ù\ßH‰a}	”|–ùg\Én\ĞH\Ü)<\ä\ãë¯ƒ¾/\Ô<=yo#\Ü\ÜÙºH3wmû\Å\Û\Ğ\î,T¸\ÇòHI\r×ÿ\0öoÿ\0‚x\â¯\Ã\nøû\âÏ<Yk®ø\ãJ³¼ğ§…|\Ú\r”\ÚW‡\âƒ\ìšŞ¹u«h\Ú\ß\Ú\ÚóN´·½H­-\ìš8%Tš\î\æ\ínY>{ı¥>x\×ö4ø\Ãÿ\0.…\ã;¿\è’\èz7‰t‰<O¥\"\É>«@\ã\ì·ùòºK»[»_3N»\ÓşĞ°,\íom\ç4#÷\\£‰r\ÌV>¶Zr\ÄajN”ß²œiÊ­Z³¥9%\í#JiÁ\ÔK•µ\î9%sñœÇ‡³>–/J\Ã\â¡\Ã÷”\åUB§ğ\İJqrönQ÷¹[n:)(½§?oï²ø\Ç\à„¼töš„‰\â>ú\Ş\ïÈ´–xE¥­\Â<\ĞM/i$±\É\ä\Ë;¢\İT‹lcñXp\0c’\0òqsş¾¾\Õ\ï¾,MñK\Ó\ìõ/\Ûhš•›\É;McsptûÅ”m\ß\r\Ò4öÊ»Y\İ\îğ\é7£3øm´÷1Å·1FW$ud\Ø\ärE}?õ\ÌOµR½©ÓŠ~õ½È¥ö’m«õ’\Ñ#À\ÂPúµfô÷§7­ş\'}\ÖúY¯#úkÿ\0‚#x‹GøK\á¯\êú\Í\Ü:\ç‹\ÚÕ¯-<÷hDv ·Y\É5¬…’I$y<’:\Â\ïå”¯\éŸ\Âÿ\0´£I¤\Æ«ªÜ˜\äx\Úh­…º1\n„\İ2\n²·˜­‰7oBÑ”fş.ÿ\0cŠ%øg‹\ç\èy¤\ï•Ğµº¡a#Fe®#Ty¢}£+qº-\Í!\ØI9ı¯ğÿ\0\ím¢>•jM¶Ÿe„Ç’²\É\\1swğ¬d–#g–…\0	€W\èe>\n\\\Ô#+IN\×|­´î®Ÿ3o\çk-˜aœñUg\È\æ¥+§¾\Ñ\Ö\İn\çR\×Á:Æ©\åÉ¬^&nŠµ´dš\ãoR¦Q›xOqp8\è3‘\×XxwGÑ£c³f_ùyŸ3\\°\çv%|²g?2\Ç\å¡\ã\äÀ®­;ÿ\0\×/ıVu\×Fÿ\0tÿ\0\èm_†sË¹ú\Ï\"\ßW\ê\ï\Ûü¿KRgbr@n03\Óø÷r94&GPG g§\àxüq\ÍDÿ\0\ê\Çûÿ\0û)¦·©ÿ\0\Ğ)ow}•ÿ\0¿Rà¹¦¡¶úú$öùØ°’üí¤pO^Ç®{dc\Ô\æº]<ù\Öz­®ü­Ö‰¬[2°\È+6›sH`\Ãk‚0[±\æ¹a\×ğo\äk£\Ò?\ÖMÿ\0^w_úI=c_ø5?Á/\È\îŒTyRKIBúoi-_{A¬|2\Ó\"·ƒTğŒ³hú\ç”EøvK»\rRBƒp½°!0NJ\Ï\Ù×’H\Ø<oP}J\Èôı~\Ú\î\Òõ¦\Ù\"\İi÷s²¢$\Úmô\Ñr£b@]\'…–\áÔ—ú\Ê_øø“\ëÿ\0´Ú¸\İş?t_û\r\éú[|FO\Ä\ÚŠXZ¯\ë4jTŒµ“ö”ù\Şğ©i>]_¸\ÓZ»5\Ó\é3<¯<?¶\åä¨ Û”Š’¼]š^m\İ\ßU£*ø\á-Ä¯x¢[\Í:9aK›==\á\ng\ÂD°´\î6—À …U\æ\×>YÓ•­\Ä\ßhø?Kğ®ƒh–7š\\ZqŒ£Z\ŞZª\ŞiˆÁ·#KA*9/ö\éa{×‘\äY±-\Æ\êñò?\ëñô[W_aÿ\0 \Ë\ß÷ÿ\0F­qq>s‹\ÄÕ­RtpÑ›§8Ò“S«d¤\Ü\çk¸¶µ¦Ó‹»\æ\æ\ÒŞ\åxWF:¤Jµ#\Z´\á%ûš2qŠRT\Û|õmkÕ¨\å4×¹\ìÕ¢½Lj—¶şU\Ê\\-Å’.b¹¶™\æµò·’7\íWhÁ†xr\n&¼{öª×¡¾ı›>&Ä…\ÒCa¡n9’\ŞUÿ\0„¯@ 7¨§\å`ª\Ñ\ê3\ÎG¢|?ÿ\0Q{şü\ßúW€~\Òòo_ÿ\0ë§‡õ\"\Ğ\ë\äòJ\Şu–I\Ås\Ñ\Í2ô¤´r¾.²J\Êë—µŸd}o9<¯0W\ß-\Å\Ê\î\ï|<´Zöv¿\à}yû)\Ú\ÚCğc\á\ä³\Ëi/ü+¯4S¬Ÿl‡qğõ€{wexğª# ¢0C@F\Ï\í\Íğ·à·gOˆ<Q¦E}ñ;á¿…t‹_\nø«LÖ®­n-Zÿ\0\ÅZuµ¶›{bú€‡Z\Ó%}jıŒW6š…İÌ…àº·I¤“ı›¿\ä|\'ÿ\0²e\à\ßıEtúñ_\ÛkşHö¥ÿ\0aÿ\0\éh¯\ÓøZ\ÑÌ³\n\Ís8\Ö\Åò§¥¯)\Ùój\ÛW]l\ì\îµ\Óó\Ìòn¦	‡²Š–\ry+¶\Ô)Ò•­t·w¿M7±ø«=ªjv³™#:|o6a\Ú\"™š\å^d.(d”yc\Ê] ZA\ß\Ú2\Òb+yeV…U\Èe\\©u*q|	Ëµ~bF+?]ÿ\0\Çı»\ÃüŞ¦\Ñÿ\0\ã\ê\çş¼nô¯\ĞUY{%£j.\é\ëñ[Eø¾—O\à\\ª—y(m¥Ÿ*Û®û\Ñğ\ï\ã\ß\ÅÏ†, ğ¿ˆVóM‘\ãitMMÓ¼C§\É`ƒI¬Z\İ\\ii*dK&y§\\m„àª•ú%nŸJ¢McáŒ/\Ø8\èÚ¦¥¦\é\ì@\nMB\Û]¹Œ¶	}Úœ\èXŸ,F€F¿\r\'\Ü_÷Wù\nè­¾\áÿ\0¶úO\rw¼~+\r\Zuf¢–‘r¼V«dÓ·õ\Ğ\áx\\=F\Ü\éAµ&¹’Q“\Õ=\\l\ßÍŸÿ\Ù',1);
/*!40000 ALTER TABLE `estate_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estates`
--

DROP TABLE IF EXISTS `estates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `creation_date` datetime DEFAULT NULL,
  `description` varchar(600) DEFAULT NULL,
  `floor` int DEFAULT NULL,
  `num_of_bathrooms` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rooms` int DEFAULT NULL,
  `square_footage` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address_id` bigint DEFAULT NULL,
  `furniture_id` bigint DEFAULT NULL,
  `purpose_id` bigint DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr1esxl9o8u551xm2y0grm31dg` (`address_id`),
  KEY `FKhnl0w91k23mrk68tj9hll0uyo` (`furniture_id`),
  KEY `FKt2aj807p3anwgwnjlxqov4rot` (`purpose_id`),
  KEY `FK4sytexuv3757hpk60lfsdq39n` (`type_id`),
  CONSTRAINT `FK4sytexuv3757hpk60lfsdq39n` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  CONSTRAINT `FKhnl0w91k23mrk68tj9hll0uyo` FOREIGN KEY (`furniture_id`) REFERENCES `furniture` (`id`),
  CONSTRAINT `FKr1esxl9o8u551xm2y0grm31dg` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FKt2aj807p3anwgwnjlxqov4rot` FOREIGN KEY (`purpose_id`) REFERENCES `purpose` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estates`
--

LOCK TABLES `estates` WRITE;
/*!40000 ALTER TABLE `estates` DISABLE KEYS */;
INSERT INTO `estates` VALUES (1,'2022-04-23 00:00:00','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',8,1,550,3,65,'VRACAR SF 343',1,1,1,1);
/*!40000 ALTER TABLE `estates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estates_characteristics`
--

DROP TABLE IF EXISTS `estates_characteristics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estates_characteristics` (
  `estate_id` bigint NOT NULL,
  `characteristics_id` bigint NOT NULL,
  KEY `FKrwtrlpo38giewujmwt36g4wmm` (`characteristics_id`),
  KEY `FKqjd52ga4kvntwclkmkl1m8efa` (`estate_id`),
  CONSTRAINT `FKqjd52ga4kvntwclkmkl1m8efa` FOREIGN KEY (`estate_id`) REFERENCES `estates` (`id`),
  CONSTRAINT `FKrwtrlpo38giewujmwt36g4wmm` FOREIGN KEY (`characteristics_id`) REFERENCES `characteristics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estates_characteristics`
--

LOCK TABLES `estates_characteristics` WRITE;
/*!40000 ALTER TABLE `estates_characteristics` DISABLE KEYS */;
INSERT INTO `estates_characteristics` VALUES (1,1);
/*!40000 ALTER TABLE `estates_characteristics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `furniture`
--

DROP TABLE IF EXISTS `furniture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `furniture` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `furniture`
--

LOCK TABLES `furniture` WRITE;
/*!40000 ALTER TABLE `furniture` DISABLE KEYS */;
INSERT INTO `furniture` VALUES (1,'test1'),(2,'test2');
/*!40000 ALTER TABLE `furniture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purpose`
--

DROP TABLE IF EXISTS `purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purpose` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purpose`
--

LOCK TABLES `purpose` WRITE;
/*!40000 ALTER TABLE `purpose` DISABLE KEYS */;
INSERT INTO `purpose` VALUES (1,'test1'),(2,'test2');
/*!40000 ALTER TABLE `purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(150) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'test1'),(2,'test2');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `password` varchar(64) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test@gamil.com',_binary '','Milan','Djuric','$2a$12$Yxfd/SEsuDe.mk/s3H2cO.UqYHs1oyTDAn71V5ovMIQmUkX9PZGhy','milan99');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-18 19:57:23
