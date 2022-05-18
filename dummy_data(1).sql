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
INSERT INTO `address` VALUES (1,'Beograd','Vračar','Ulcinjska',33),(2,'Beograd','Zemun','Ohridska',7);
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
INSERT INTO `estate_photos` VALUES (1,_binary '�\��\�\0JFIF\0\0`\0`\0\0��\0<CREATOR: gd-jpeg v1.0 (using IJG JPEG v62), quality = 100\n�\�\0C\0�\�\0C��\0\0i\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�>\�\���d\��2C�þy��mSqAP:�u\�z\�\'��*[kRUI\�ʩ\�w \��~����\0?_R>�#�\�k\�U*�\�\��MY-�ooO��UOMw\�EH-�Q�����pI:c��\��o�����è\�i��Z+Oo;��\�\�����*\�`�9㧛El\\�\\`s�\����1��k\�<���N��q��#�Ն9\���\�g�q�1tf�M��pwM=9�������\03�Q,E=^�\�ϭ\�\����{��\�Y]�t��\�\�m<r4\�1��U�\�\�%r�2\�\�\�^\�7�c�j� ��Aq��j�̖��B�2\�Rcei!��I\n\�`l�l���\�\�)UYH\�!\�8*\�H ��U��Q\�\n5X�.���ۏ/V,\�^\�\�[�\��\r\�q�\�d4j��\��\�ڋqm\�\�乚qz]-WĴ\�\��zu�y/�\�\�^\�륬�W\���o\�> �W\��k�\\K$n�/�(\�0c�n>\\n�\�FF4x]\�#y��\�\�y\�{��:�$�\��#\�_�6h��Wƿ|{�\��\\�Ǉ|(�5\�\�[,\�wokcc�k:�\�o�\��\���Ag\���.�\��I\�?\�\n\�~\�\� ���~\��\�zW\�_����)�׼i�\�:f��{\�?�\�;\�F\�v���h$�IDP\�Sӡ��Ys{6�j[\�d�z\���\�\�\�sNϞ1RM\�9\�\'�ZW\�%�i[vzM����(�vG# 0\�Ns�8?J\�/\�\�\��8\�\�s�0G~���\���<W�~ٟ�\�í\����|3\�GĚ��a�\\�C]\�5�;Ɇ\�\��-N=#U\�M�\���BOy\'\� �w�� �\�=R1\�\�\�Rr9\�3\�\�N3��U(ԡ7NqQ\�\�[ﵟT\�{\��\"�D\�$���\�M^\�\�O7��wd\\�<�\��	?��P\�.>\�\�\��\��\'�3�}x�\�\�\�\�}A�\�[\0�\�>y\�\�\��0x�d�\\�5�\�\�\�\��\�ޛo~\��t�\�F� ��\��r	\�\�}+\�<+�>��\�Ƕ�(iv\�\�R=R\�{B�m$\�\�d�Y@\��\�J�/9$�\�����?Z�W�t\�th&���\��\\�U�f��gHմ=Z]\�|\�\�k`�v#\�\�\�S���5+9\�F\�z+.�鷗c\�\�Ԕh͸+�FI\'yk(�f�v�\�k���߳���q�\�\�k�g\�\��kU�\�>���\�n�	\�-[\�1\�q\�K}��\�su}�\�\�\�+�^�����\�rbG�_\�O��\0\��\0�7\�<#��6\�uV{�kƾ�sD�7k\r7Q�ՁQ�Cjμ�\0�a?\�տ\�\��\��F����\\��\��y\�ڹ�\�\Z\�/wu%�̓�2W�F^GOlt�\�*�V\"�\�O��O\�\�=�nT�e���\'k�_O.I�g�Q�\�\�k�\�kz�\��p�\0�(�h�ؗ\�\�<Y�\�\�>פ���k\ZN��\�~+\��I�ZO�[i\�W�\�-}ame%5;h\�kK��gc�H?c�7�\�����~�r\��7\�\�\n�v\Z��i\��-ֹ=�����i6�s��wLIg�M<\��\�$Q\�\Zy�0f��\�\�\�E}�&xM\�_=▽%�@>M\�ׁl ����U\�ʶ2A���	\�G�~ğ���\nR3�s��\�A�����9\�~�ײO8#5\�<L\�\�\�N��*Փ\�c\�\�)\�֌���Tm�w��)I\�1���k�\�-�5\�5��/\����T�\���t\�\�۷�89ⵡ��=z���#�_�zU��ډ�Fq\�\�\�	�A\�Z�[��	䁞:s\�\0\�>��EA+7�������\0�F��I|\�\�\�Kv�HȞCgr����MM\�)c��%`\�\�F\�\�3aw�/F?�nCp$ӧ m��[8#\�j��\��oi�\0)\�\�rGLz�\�Ў{WM��\�S�A\�\�o�v�h�Ze�Ow+\�ȰAm�\��[��x-�Rf��#yS�ʅW)(\�Swm�����D�\�\�e\�i��lE\rܽ�b�NNNRI$�����Kjc\�\�I�\�U�v]�\�\�>P~��y\�:\�x��@�\�7v\�vRKͤ�][\\@Ye�\�VX&��v\����\�0\�x�\0�/�&\�\��\�Iխ,p\���\�O���(`f�1T�d�\�20Mτ���펙�Z^\\i�_\�\�T�\�\�\�9R�wln=q�k\�i֡[�U�M���R3%�\�\��`\�ք�����s�8�md\�V[\�w�����}\�?\Z�\0�X�\0\��\�4�+m/S�W\�ώ񝅼~JZ�\�B��\�5�	o�\'�4�_O�2�u+kGs<3���\0���\�\��\0�vx�d�/�\n�v8\�ci!\�$l\�c`NC\0�I��?��^#�\�\���\0\���֡o\��~�W�%�\�:u���W�w�|5o{��]\�巸ӭ�\�Ɯv�Z\�i`�&�dO\�O�-�\�?\�?\�\��j>�F��?�\0�Q&��A%\�R\�\�\�|m�ȲHċ��\�\�R2\�}�h\r��i���}��I\�\�.��\Z��\�S\�[z(\�\�\�\�\�\�b#K\r��Q��a^�#F\�͹FU��\�nk(MAJK�-\�\�O���m\��O\�{-uU?\��V��H��ٴ�[��]׈bxPo-m/4�\�\�\�R�\�⿉\�V\�\���A eנ$z��p8\�\�_\�\�\�\�+���?h\�5�\��^�\��\0㶳��\"�CP�o�\�彭ޟl\�Y3Ou=ť��0\�\��Wv��\�y\��\����÷ r3�\��{\�~�\�4ft�}����]�\�ǛT�\�ܚ\�\�mݽ�\�S�eu\�\�M�{o�j���\�\�>\�1�s�\�eI\�?\'�=8��+\�ȁ�I\ny@x\�\�bx玝k�\�\�\n%f�\0���\�y\�_̊\�΢��6�b���N�\�\�F{�z��х���i�|��\����vM�6k��t\�\�Tv���v�su�j:�v�(��Zܽ�\�0��\�\�O�m\�\�!\�r�Dx7Y�[O\�~R\�\�i��\�m8�t\�6�\��\��D�\0��	U\��v\�\���5oj��ZM�\Z�~&�KG,3G�e\�~`\r\�\�g�\�g/�y��4��k\���<Q�\0\n/ǣ\�:����[�,�\�\�\�]*�\�\�\�զ�%�\�S*\�j~]SL��G�+�\�fG�\�YS\�P�\n\�WK\�$\�R\���\r\�:|ܪV��3M�\�\\S��\'/�Z��Yօ\Zr��\"�*�I+�)���\�%ʤ��(�vI/\��\rp�\�ؓ⯈�n\�_|u�GW�.\ZG��\Z訦A}ڶ2W\�\��1�\�B�\�\�\�L\�}z\�\��W�h\���m��^�)�ds\\��<VĲS �R0���-�\0���?\��^\n\�<{�O�\�7Ɵ�\�4�������\�Z�m\�]]KĲ��\�l4�6?�[Y֮\�\��\�t��\�q\�\�G�\�8�\�\�\�\�\�t\�s\�z�ށ�����q\r���o�\�\�\�\�\�#�06�2j63]XImt��Kt�\�T\\\��״�F\�\���\�\�ے�n\\�R�Q^�9k\�)ֽ��8C�i�qZ�R���M\�\�-?�rw\�m#\��O�/h\Z���a\�߀ze�\�g4wE�k\��{д�3#J,�Km�\�c�Rk�������\0d\�٫J�;�\�\�>|\'��K�k�y�\���\n]��\�΂\�\�	4a��p\�;�����8\�>)�\0��k~M>	�)�\�ெ$Ҙ\�!ӭ\��\�>+�\�\r�\�\n=ſ�\�1�\"\�]�2�lY����\�\�\��[oh��ş\0x�\��Zv�\�\�F\����x�\�K\�t-N�]\Z��\�z��ci�[Y\�csq�\�s\�׶sKn�\\\�\�a�T�\�U\�Q\�Jm՚�G*�u$��\�\��Zʜb�k}\�NΌt�\�\���N�\�ݷ{�3�0��\'��\�pzdd\�#8��\�h���\�<\�u<�;\�m\�\0`c<pGQ϶8�=:[�ʡ��8\�;�ПО�ȭ\�\��f}�\0�\�/����^\0,\�y�\�ダr;w�\�\��\r;V\�\�LM)�\�l\�<�\�?2A�\�bC;$\�.\��b\��㢒Î��f.\0\0��`�#��\��\��<V���c�\�A�bsy!±F#(\�\�\��`q\�A9\�\�2\�`�xv����+6\�n�)B\�\�\��t���GG��v�,U\n�\��\�&\�\�tߵ��\�x(�I};f�!i.\�\�\�eƗ��m�\�I\�9dF2��Tev�\�~Z�\�ڒ\��\\񝢱\�6�g2���>�v��@8H0:g�\��	��K\�\'\�[�Ax��_|#��M����\�zv�t�֗�[k\'\�\�\� \�\�\r7]�\�I\�O����\\K$(�3�(�R\��K�\0�D�\0�7t;�5m�P��jsBb��\0O\�<ciw$.\�kD�x�%ḧ$*\�Ae~l�\'�ya�\�ifT\�`��\�bhƛ�&R�\'NNJT*_\�����Z����~k�eΎY���\�_G|._�\�Ѕ9W�N��sl%IO��R�cQ$\�k�\�\�O\�=f�\�٫\�U��������O�~(\����:U���j�w�\�\�Kox�0_=���\�Imp\�\�;8�FUC\��w�U��|1�xSK�+��/_���\0�|_ԥ�ƺ���+k\�\����\�\r\�\�}ì��w*\�T�?jK˽2%���\�\"�?���$�\���5��N�\�\�?XZ�������\�U���TY^(o<O4hΨ�\�PX*\�!FxQ�\0H�\0�N�Y�\��y�\�Ŀc\�̊Ė\�$�\�-�w;���x\'�հ�~a��$��+�BV�7	F2r\\\�XW6\�3J\�-5�\��\��\�D\�7�\�ԩUuiUyFT�9%EC����W̛��_�?\�\�돋��e�;\�\��w\�\�\Z��º\�Ý7]�}�i����_\�\�z�����K�\�ң:�\�\�ɵ�\�����K�٠/7�kz���i=\�\�2\�\��$o#e\�U\0X\�7\�#\0\0d�\n	ם��s�	ce2\\Z~\��\0\�\�X\�<K�,eZ7WO������\�O�ñ?`\�w\�=xop�\r�\0	/�s����^x��X\\\�*no\n\���Y\�\�mI\�,[����ꓹ�\\/���G�\�\�EK���MS�aeS�g\�\�g\�nm9�~��i?i\�k> \�4\�>,h?\�t}kX����/�\��qog�j\Ze��8�Ԗ\�4[�b��k�2\�\�<�\�\�k��C��!�۩x\�C�ok~�ԗP�+�ج\�_C\��=\�]Mp�j�]\�Zj�V�{��Π�\��9�$\'�Zf�\���>�\�4�y\�\�\�O5五\���I3$�\�\�{$��I.��fc#��v?�F�\0�&>�\�M;�=�aa#�\��sx�݉�#����\�hIHc�%=B��@\0O�\�T0��_���\�¾�5KD��G��7�\�\�Q}Q��\�[=�\�V\�蟑�z>�\�\��\0�o\�[�7�>\Z�\�\�X�\�\'\�\�\��;���k��\�ic�i��\�\\�sZ]����Α��6oj�\�\�~��\�eSm�Ķ�۵�t\�mc��Xt\���Z�\�~>�,?\����f�\�\�ً��ռ1��⧊t��Ŗ�ٞ Ӽ�j�z�/��ٮ\�ԭ\�2M�Y��@[?��\�♴�\0��5)6N��h�t�\�8�9u�&�R��\�<�����\�#8կ�\�S\�\�Pr\�\�*s��i\��]J�;I8��V\�\�`\�ap04�\n؊\�\�\�18z�\�ai\�jBXjx*�\�\�cqќ*G�w*n-r\�4\�޿�%\��O�r���!�5��]�w��$i���Vմ�wú\�\�\�k\�0\��?y{\�I���J\�\�=*=\"H\"��\�_g֘��I��_\�_ۛ\�\�\�q\�\�\rM�-~\��i_I{���|!i\�_�\'��\�\Zx��Y�Q?��;\�\ni��G��mJ\�mº%�\��5��2iZēj�M��h�rG�Ş��ĲL<�)n�Mn\Z{�e��BdX��� ����\�J���m_\�~����k�h�D����z\��T\�Ώ\07\�\�.��q\�H�$�[��<�O�s;��\�q��)a\�\�\nx��E\n�b�ԅU\�e):���Uajs�eȖ��,\�s�|Da9U�:�\�\�<4�V>ғZ��ޝJsV�%�\�_d_�m���L�׾)�P�5ƽ�s\�o���k^0��w�i6~n�-�#�\�\�]Qm,�\�^�il�\�\��\Zj-��Il?\�\���\�߲�\0\��</ß|z�����j�=�^�\�\�|~}[\�\Z�m\�\�?n�|���E���i\�\�s���\�w�{sy�\�r\�t�?��\0�\�\�Q��\��\�\�9��̞M\�fi�2� yŤrL�g�KF\�\��O�z>�f־$𞹯j\�<�{\�o_ip�\�*[����/$)ț7��p@U\�B�s\�<-\\\�V0�����E%̓\�\�Fi�\�9��(�S�\\4]HK��u&��\�*�i+EY+\'��ܟd��\�Yk�\\�\�\0N}s\�~MtZ��\�Bn@\�Fz\�|\�q\�2O�\�\�\�<o�$a��d��n\�f\00\����\�\�9\��f�\�ß\n\�2k~+�A\�[=:\�\�� \�\0]\�\�$G��-\�\�h5\�\�\���\0�>�Si�d\�\�\��\�O?\�\�\��,&��8��Y��QT�\�,\�B�\�q�p=3To<b�}��l\�\�\�8#��㓁�1]�\��\�\�O���J���r�γ�ֵ;)��3�ޓ{�\�\�\�H\���^M�WG�\'m\r�\�>\'\�\��Kah��nK\�\�\��͋[\�(\0�%�\�n૆\�UjTP��T�+�T��wKK\�[�\�c�\r\n.���Mm.Y8�Z�\�z=u\�\����\0�q�g����\��\0^x\�Ş6�ǟU�\�(\���y�m��\"x>\�\�+I��\�ՉLZ�I#��m\�B���<�w�����ӧ�\�����\0h��\n~!\��c\�Oß�\�3|�\�`׾\"x�N���\����\�\�\�\�\�ڏ�\��\�\�\rŵ�\���P+<��M:E\�\�1O\�\���� �\0\�f�ʼ/$�\�	�Iϋq�G�\�+\�x���8g8�K\�2�㊔(T�t�2��\�ٵMэ7M�\�Q�M�w�eu1��U�\�r\�N+.�C�t\�\��Z��;��\�^>֌*AՍg%U99ƥ\�;IX�O����O��J֗S\�\�Z���i\Z=ճ�R\�k:���\�mȝ\n��\�\�:\\�\�1�$��K$\�8�\�js\�\�41\�sB��\�.崹ӥ�\�n\�\\�J�\�{,$e�[MBh\�L�\�آ\�jQE�\��R���`MJ٠\�?l?\�*�\�I�w��Mn%<�\�/�\Z=��1�\�Ӛ�o�a�\0�=��w���?dU�U�9\�\�o\��\n~xcw�Ģ ��h\�Wr/�\�b�\�;\r���`�B�%	\��\�,��H\�\�R�9|*^\�qWM:M\�\�\�\�\�^i�\�upxo9�\�f����ٵ\�F���\�X�x�B�|Db�N�W��QR�q\�o\�k��>,�s��\�{Y7[_}�	5_[�^w��fݬ\"}:f\�R\�v5S{�\����Kd\�\�O\��.�4f��n\�]\���pD�\�\�˻�V�\�5[{�\Z���6�7�c]?�?\�-���~џ�\�\ZJA\�-����=8@U?|�\�+l *\�\�*+�ۯ�	�hE��\��\0���UU[s�B|��4�QD?�&�UTP�L�\0����v�\�\�Jʹ�\�\�ӏ�I���\��\�5�Zk��yw75\�sS�ƛ�=\�\�S\�\�N0��4\�\�\�\r�a�j=	uOk���f�d��\�Z\�\�h_h\�\�nd]GV�H?�\�]#\�C\�\�n\"K\�H~�����\�o�����\�\��\0\�x/-lo\�\�\\ZI\"[\���@�im\��\�T�h�XZ%\�Y2H\�X\�\��\0�D`H�_�\���#��\�\�7\���O�03�<a]41\�XC��?\0枊�&�\�\�wR�wrm\�g�.a�g\�C��\�\��	�{EW/\�ԓ�[�Zt����\ZJ�PO\�rm�\�\��\�G�1_��\���~\�\�ǉ��zt\��\��o\�!�+|)[ �\�\�\�T\� ��뻅i6ZCon7�\�\�mo,���\�cYX���/\�C�u~\�\�*���h\�_�\�ï\� ��_Eд�\�\�\�\�SQ\��}[� �\�t\�&\�\�\�S\�\�\�\�w0[YZZ\�-\�\�ıCo#�����p�͡�e\�#�\�\�i�N�}{t4ˁ�U\�1\�\�ΰ<k.\"d\�t\��_1�g\�6Ju�,,%:T�+\��J��\'(:�ܕ7(�\�k��ݓ��p\�\�\�Jy.d�,\�0�����\�W�F�\�\�I\�<\�jS�ӌo\�+�|K�\�]\�a�\�\�0��-�\�{0ӑ\�XP�\"	��dF�Cp\��\�\'��K�\�h\�\��H\�\��A�u)YQId�\�be*�AL*p+\�|Q\�{�\0\n�\��%9ḝC��\�	�gI@[G�}�b���Y�e�dYK$\�HS\�\Z\�%\�\�H�\�3�(VI\"�H\��\�7\�T�C+&-\��v�k/\�S\�P�Z��R2JP��\�䚌���۶�v���\�ͳ5|>%\�\�F�jP�a(Ӛ����\�NN^��>�ڶӿA\��\0XmJ\�\'�[{8\��\�\�,F(\���$c\�\�P.\�R+�\��5�Gtv\\\�\�$�\�*E�o��\��<	\n�8�Č��J�\��\�\�WcNw���6v�}���\�\\jr\�b��\�c�Inf�3D��4�K$h��*k\�=\�G�\�4����\�\�\'�<E�Ee燼w�Q���-\�52\�]\�\�Kk:F�e�xVҵ{\rsFյ\rB\��7\\}�\�\�\�Q\�\�Us�,5x.^zu\�\����\�d\�\�\�ӣ9Nq��Y�ەIB�^mZ��%)\��\�J�S���k8*WnE7$�r�M6~�K\�\�\�hSF�\�\�iw���/ٴ˅(�E-�\�0{�rF�\�imp���-�\��>>\�i�j\��\�uxR)>էh\�I{�\�ñ�wQ۝MGݎ=n�\�ˏ�C)�\�o]�^\�>�\��u}\'_�h�Mb\�V��R\�u�Uym\�᰸����\�\�1\���,\�\�\�\�K�65/j~ֵޭ�:���ϧު��\�hI6�c0 *�/�q��B\�\�H\�ž�ʢ\�+=WTӿ�Ϫ�J�V�Z�k\�]ҽ�?\"�W��\�V�uuk�x�_�T�Hn��=́�X�\�{y�S\�\�6$�h\�!J�\�r:v�y�O\�Oq$����4���\�]��\�	$\��~�|H�G�\�\�֞�\�2\�z\�F\�Yx�F�\'Ė����˹\Z��#{Eg���i\��\�c����Q�\��*�\�\�x/�\�\�w�\0<yV\r\�K/Z@b��W&��\�\���]Lʩ-\�͞�\�S�7��\���\0/\�\�񛶑�I\�\�f��\�n�wkV�1��y�l�5ⓨ]\�I\r\�\�.��X$�Fml\�\��\�\�\��Ŵ\�k	]T�W�7\�%\�_\�i��Z��I���z���T\�\�i��\�ѩ��	\"9`ڔ@2p+��R\�5\�\�\�zn�\�v\�\�W�Ӥ\�tM=�둦\�{�%\�e�\�$\��/�N��o�Sq\�|Z|M\��-�\�C����J�\�5՗\��[\�\�2Ar�0[H6�\�\�mm�P�\n\�\0|�\��)g��5\��\�NRuc);Ц�J)�A*\�\�;E�ϩ������\�NO2��jT�N�#<KM\�o�~\�\�2��\�iY�:�|	\�/\r[����kzEԐN�\0\��3E+\�ȒO�C\�)�I�\�9�;������O\�\��=�m\�sk�}\��\��\0؍_\�zį	6�\�\��\�Y\�qq42Em\�{��W�@�B��D��~��\\YMn\��\�\Z�����\�\�\�[�5\�\�짰���\�S��\�.ն�\�-��\�\�J��\��{\�Ɩ�$�u\�Ee���\�ֈ�\�8���dF9\�\�\\�\�\�\���)\�q�\�\�.W�+�\�Vz�\�\�ϝ\�ai\�i�w\�.{���Zw���?e]y7u��\��ze�\0��\0<;�s\�?|a\�߉z\�\�#\�\�\r\�|�\�\�\�\�ѡЭu�WY\�\��]3��\�\�\Z_\���\�^(�������\'\�~ў.p���jxu�}-߃�k��K.\�\��W�\���W6��\ZL7K�B\�K[�{�d�-A�_i�o��\0��\��&�[���t�Z|9����O�k	\�ܵ햕c,���\�\"��f�\�E!����\�G�r<C�i�\'���=+M�\�I��r�inP\�ib��-m\�\�;�C,j\�d��\��\�\n2X|<�\�be\n�cN0I\�J\�ug^nR�rz\�	5h+�\���\n\�猫헰��W�Y��\�\�p�t�B�b\�g(\�o�|�\���XyZ�\���\��\�Y��\�H\�i�\�%���s#�J\�\�\�\�����<\r\�ۨ�\��\�[�\��Ci\�~��^^M8\�m���Ƚ�ق>\�d;� �*[�\��Ckaq%\�\�\�B�\�R]�\�ZH�E��!�;�\�̼�\��ش\'��	|O\�\�46k\"[��n�\�e�9����ky5�h��\0uagu2��Hų|\�=\�q�j�����)B�j\\�\�8EJrpiYS����,��װ�,÷VT(Хj��̩\�Y9\�\�F1kV\�d��v��7���;N\��;\�}\��\�\�F��\� {�n\�\�\�\��\0Z\����\�\�ˍ<ۈ\��9$B>˹�VW\�|�����y��\�\Z\n\�]�<�:��5}.\���٢M.EӮodei�\�\�#\0���\����\0񟋒O��tEw�\�Z��6�.\�[{�\��݀\�KFmNu\n\�_��\�\��q���_Os�x�\��\��+��\��}6G�X�\rB7�\�c�7\�cs������eY6���3[1�ǋ1��b\Z�\\]O)T�.K��|ʺ�\�Ƨ,���3���R��\�K�\�<�f��^O\��iT�V��x�\�teN1\�Ο����q����a��҃֌\'xT_�ng����д\�s�h�F��\�X\�\\4\ZU��>���q�\�\�M\'�zI�^�X%3[?ۧ��uK�\"?*kz��Ηh�8Y[w�.�ʐ8�]�Z@��\�H킇{��\�\�/\��W��\�\�y�/O�/\��\�ψ�G��U\�e�\�\�\�\�o�\�\�\�\'\�\��\�\�$�/\�4ojz�6^�Y\���$�(\�R���\�\�nb+zl�ל�\�\�QǷ�~ ��P�\�q6�&�]Z���V��\'%8\�WN\�\�\\ڮwF���\�qp���*qN�I�4\�FiAS��PVjNJѓM%w{����/�Ri>\Zx�K\�-o��|G\��\0]i3]Ik��\�[\�M�a�\�ڔzd���S\�f&WLH�O\��w�\0�Q|L�\0�\�G��\��^�\'��\���᎟�\�\�ˍ?F��?>O>�=���\�\�\�o5ٯf�,\�Jk�w�Y��I?\���\0�\�o\�_\�ک�v�ᯇ\��1�į\Z\�4k}B堆-DӴ\�%�\��A%�\�u-�\\i�V�z\�ږ�f׶1\��\0�o�\�\�g�_\�G�S�o�:�\"\�\�_�Ð_k6�\�z���#\��8��G���8.5�Q�m��/5MV\�M����h�Q��\�-޺�o��Z��ڵ��9F�|\�W�\�\�T���N�\�OXӔ\�\�f�\�*�\�v#��*q��tj(\�2������\�Ԍ[sn\\�6�g\�\�\�\��7\�߉~�\�O���\�D�q\�$bX�	Z6\\H\���7��M�J�q�\'8\�\�\�\��� xk�?l\�(�|Gao\��\0-�w*�\�Zm��K\�\Z{�;)\�$k�i�*%\�e2���\��Tշ\�_j�0۬>[4q���\"���)|�N\�T`\�dW�\���\�5�^ӼM�XxR��F\�n\�\�i\�I!�K�f�K{2E,�\���d�&�(\�A\�^j.;�k=4\�mS�\����I\�M|���\�\�\�\�^��\�~�˭x�N�6\�Ɲm)��F��\���ɔ���\�0\�ɸm�0\r|\�\��\0\�\�J��X�Zc\�b�\�\�\�<v6\�[��\�w\"�\�\�q��\�U�\�d\�Nr�a\��Ul\�D�\�.\�$q�\�\�<5i�[�}Nc�f�mѩ\���g\�\�Gq\�>rN3����I�\��ۧn�]9B1��\�wfޖz4\��_�C\�u\�\�~ \�\�K�i��$��?/O�i!O&)dx+?�\ZG`��\0\�\��!\�\"��\�O\�\�\�\�\�&O\�\�\'�ϵmE-4W�\�\�}a\�}^{�\�6қU��\� 0��W�B�#<(\�\�x\�q��@`\���3-��<gu\�y�x�\�j�#��\0H��p\�\n\�`s\�b0&�e���v\��{\��\0_!�ɽ9�\�\�\�U̴\�>�=�^\�\�>?�\�6Pk(,�\r�S4b	Z?�B\�j5\�\�@Q\ZW�o�wui��ʄ@#8\�m\02�N\�\�*KKY�\"�}۬x�ٴ�[�w�rJ\�P2\"���\�B\�\�Ƌ��х �6\Z�\�Ǚ�k\�\�D�t�\�6��y\���X\�!\�,�	�l:�6\�B�8TQ��⵻�n\�\�O��q��79\�R�Y&���N[]}�n\�\�\�c\�&�eyҝ1\��a*\�=�\�Q���Y]�Kp�#\�H�o1�X\ZIfO��||\�#�\�\�ƞ����\�\Z[�\rm�мq3��\Z\�R+d�d�\��O\�.#vo2�:4\�\�^xd�\�I\�đEu���9\�!�ˌ�\�Y��\�[\�	�(��\�{�_o𶅭x�_�h6\�ub#�\�\Z�\�[� \\�³,ΐ��io\�\�\�O1U�\�\�G\�\�9S�ѝ,nmk^��\n�\�xք�%k\�.h��\�\��8\��N\��3�Q��\Z�Tô�y����ݮ\�_H���\0T4/��6\�G�n,\�\�#Y�\�H�\�\�$q\�jM��\�z\�\�!2\�T�\�l�?\'~9i?�=��w��Q�n�s�[Mvt\�_A�uO	\�c\�Φ\�-��Ѣ�\Zg�{k��O65\�9�\0�I�;\����ږ�u,�\�	㹻�kVb\�ŵ,\�n�2ZȅL\�v\�3\�TIe�������G�z���xj�\0R\�!�·\Z$\�0Ne��~\�\�@�\�os\�\�4\Z�~�\�Kw�L�\�1z��%��p�\�\�d3��<½\"�2��U�\�U\�M,>aJJ*uV�:xz�~\���M��Ωcx�\"�_3u��\�\�U\�S���c�.w\�0U#\�%F\�:�i\�J�\�J<��\�&��\�\�H�a}	��|��g\�n\�H\�)<�\�\�믃�/\�<=yo#\�\�ٺH3wm�\�\�\�\�,�T�\��HI\r׎�\0�o�\0�x\�\�\n��\�Ϗ<Yk��\�J���|\�\r�\�W�\�\�޹u�h\�\�\�\��N���H�-\�8%T�\�\�\�nY>{��>x\��4�\��\0.�\�;�\�\�z7�t�<O�\"\�>��@\�\���K�[�_3N�\��а,\�om\�4#�\\��r\�V>�Zr\�ajN�߲�iʭZ��9%\�#Ji�\�K��\�9%s�Ǉ�>�/J\�\�\���\�UB��\�Jqr�nQ��[n:)(��?o�\�\���t����\�>�\�\�ȴ�xE��\�<\�M/i$�\�\�\�;�\�T�lc�Xp\0c�\0�q�s����\�\��,M�K\�\��/\�h���\�;Mcspt�Ŕm\�\r�\�4�ʻY�\�\��\�7�3�m��1ŷ�1FW$ud�\�\�rE}?�\�O�R��ӊ~��ȥ��m����\�#�\�P��f���7��\'}\��Y�#�k�\0�#x�G�K\�\��\�\�:\�\�կ-<�hDv �Y\�5���I$y<�:\�\�唯\�\��\0��I�\���ܘ\�x\�h���1\n��\�2\n�����7oBєf�.�\0c�%�g�\�\�y�\�е��a#Fe��#Ty�}�+q�-\�!\�I9����\0\�m�>�jM��e�ǒ�\�\\1sw�d�#g��\0	�W\�e>\n\\\�#+IN\�|��3o\�k-�a��Ug\�\�+��\�\�\�n�\�R\��:Ʃ\�ɬ^&�n���d�\�oR�Q�xOq�p8\�3�\�XxwGѣc��f_�y�3\\�\�v%|�g?2\�\�\�\����;�\0\�/��Vu\�F�\0t�\0\�m_�s˹�\�\"\�W\�\�\���KRgbr@n03\���r94�&GPG��g�\�x�q\�D�\0\�\���\0�)����\0\�)ow}��\0�R๦����$��ذ��힤pO^Ǯ{dc\�\�]<�\�z����։�[2�\�+6�sH`\�k��0[�\�a\��o\�k�\�?\�M�\0^w_�I=c_�5?�/\�\�TyRKIB�oi-_{�A�|2\�\"��T���h�\�E�vK�\rRB�p��!0NJ\�\�גH\�<oP}J\���~\�\�\���\�\"\�i�s��$\�m�\��r�b@]\'���\�ԗ�\�_���\��\0�ڸ\��?t_�\r\��[|FO\�\��XZ�\�4jT������\��i>]_�\�Z�5\�\�3<�<?�\�䨠۔���]�^m\�\�U�*�\�-įx�[\�:9aK�==\�\ng\�D��\�6�� �U\�\�>Yӕ�\�\�h�?K�h�7�\\Zq��Z\�Z�\�i���#KA�*9/�\�a{ב\�Y�-\�\���?\���[W_a�\0 \�\���\0F�qq>s�\�խ�Rtpћ�8ғS�d�\�\�k����Ӌ�\�\�\�ޏ\�xWF�:�J�#\Z�\�%��2q�RT\�|�mkը\�4׹\�բ�Lj���U\�\\-Œ.b���\��7\�Wh��xr\n&�{��ס���>&ą\�Ca�n9�\�U�\0��@ 7��\�`�\�\�3\�G�|?�\0Q{��\��W�~\��o_�\0맇�\"\�\�\��J\�u�I\�s\�\�2���r�.��J\�뗵�d}o9<�0W\�-\�\�\�\�|<�Z�v�\�}y�)\�\�C�c\�\�\�i/�+�4S��l�q���{wex�# �0C@F\�\�\��ාgO�<Q�E}�;῅t�_\n��L֮�n-Z�\0\�Zu���{b���Z\�%}j��W6��ݍ̅ື�I������\�|\'�\0�e\�\��Et��_\�k�H���\0a�\0\�h�\��Z\�̳\n\�s8\�\�򧥯)\��j\�W]l\�\�\��\��n�	����\ry+�\�)ҕ�t�w�M7����=�jv��#:|o6a\�\"��\�^d.(d�yc\�]�ZA\�\�2\�b+yeV�U\�e\\�u*q|	˵~bF+?]�\0�\���\��ަ\��\0\�\�\���n��\�UY{%�j.\�\��[E���O\�\\��y(m��*ۮ�\��\�\�\�\�φ, �V�M�\�itMMӼC�\�`�I�Z\�\\ii*dK&�y�\\m�ક�%n�J�Mcឌ/\�8\�ڦ��\�\�@\nMB\�]���	}ڜ\�X�,F�F�\r\'\�_�W�\n譾\��\0��O\rw�~+\r\Zuf���r�V�dӷ�\�\�x\\=F\�\�A�&��Q�\�=\\l\�͟�\�',1);
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
