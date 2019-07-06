SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `student_id` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `subject_id` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `score` float(18,1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `score`
-- ----------------------------
BEGIN;
INSERT INTO `score` VALUES ('1', '001', '1001', '80.0'), ('2', '002', '1002', '60.0'), ('3', '001', '1001', '70.0'), ('4', '002', '1002', '60.5');
COMMIT;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(10) COLLATE utf8_bin NOT NULL,
  `name` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `student`
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('001', '张三', '18', '男'), ('002', '李四', '20', '女');
COMMIT;

-- ----------------------------
--  Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` varchar(10) COLLATE utf8_bin NOT NULL,
  `subject` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `teacher` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `subject`
-- ----------------------------
BEGIN;
INSERT INTO `subject` VALUES ('1001', '语文', '王老师', '本次考试比较简单'), ('1002', '数学', '刘老师', '本次考试比较难');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
