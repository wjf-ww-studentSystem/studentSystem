DROP TABLE IF EXISTS `a_avgsc`;
CREATE TABLE `a_avgsc`  (
  `cname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程名',
  `avgscore` float(15, 0) NULL DEFAULT NULL COMMENT '平均成绩',
  `tno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师编号'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_cc
-- ----------------------------
DROP TABLE IF EXISTS `a_cc`;
CREATE TABLE `a_cc`  (
  `classno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '班级编号',
  `classname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `cno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程编号',
  `cname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程名称'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_class
-- ----------------------------
DROP TABLE IF EXISTS `a_class`;
CREATE TABLE `a_class`  (
  `classno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '班级编号',
  `classname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `cmajor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  PRIMARY KEY (`classno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_course
-- ----------------------------
DROP TABLE IF EXISTS `a_course`;
CREATE TABLE `a_course`  (
  `cno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '课程编号',
  `cname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `tname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师名称',
  `tno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师编号',
  `term` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学期',
  `ctime` int(0) NULL DEFAULT NULL COMMENT '学时',
  `exam` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '考查方式',
  `credit` int(0) NULL DEFAULT NULL COMMENT '学分',
  `classno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '班级编号',
  PRIMARY KEY (`cno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_credit
-- ----------------------------
DROP TABLE IF EXISTS `a_credit`;
CREATE TABLE `a_credit`  (
  `sno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学生编号',
  `sname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `term` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学期',
  `cname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `ctime` int(0) NULL DEFAULT NULL COMMENT '学时',
  `credit` int(0) NULL DEFAULT NULL COMMENT '学分',
  PRIMARY KEY (`sno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_manager
-- ----------------------------
DROP TABLE IF EXISTS `a_manager`;
CREATE TABLE `a_manager`  (
  `mname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员名字',
  `mpassword` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员密码'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_score
-- ----------------------------
DROP TABLE IF EXISTS `a_score`;
CREATE TABLE `a_score`  (
  `sno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学号',
  `sname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `term` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学期',
  `cno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程编号',
  `cname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `score` int(0) NULL DEFAULT NULL COMMENT '成绩',
  `tno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师编号',
  `tname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `checked` int(0) NULL DEFAULT NULL COMMENT '是否添加成绩'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_stu_course
-- ----------------------------
DROP TABLE IF EXISTS `a_stu_course`;
CREATE TABLE `a_stu_course`  (
  `sno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '学生编号',
  `classno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '班级编号',
  `cno` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '课程编号',
  `checked` int(0) NULL DEFAULT NULL COMMENT '是否选课'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '学生报名表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_student
-- ----------------------------
DROP TABLE IF EXISTS `a_student`;
CREATE TABLE `a_student`  (
  `sno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '学号',
  `sname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `ssex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `sage` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `sorigin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生源所在地',
  `scredit` int(0) NULL DEFAULT NULL COMMENT '以修学分',
  `scno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '班级编号',
  `spassword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`sno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for a_teacher
-- ----------------------------
DROP TABLE IF EXISTS `a_teacher`;
CREATE TABLE `a_teacher`  (
  `tno` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '老师编号',
  `tpassword` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '教师密码',
  `tname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `tsex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '性别',
  `tage` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `ttitle` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职称',
  `tphone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`tno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;



DROP VIEW IF EXISTS `a_v_avg`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `a_v_avg` AS select avg(`b`.`avgScore`) AS `avgScore`,`b`.`tno` AS `tno`,`b`.`cname` AS `cname` from (select `t`.`avgScore` AS `avgScore`,`s`.`tno` AS `tno`,`s`.`cname` AS `cname` from (`a_score` `s` join (select avg(`a_score`.`score`) AS `avgScore`,`a_score`.`cno` AS `cno` from `a_score` group by `a_score`.`cno`) `t`) where (`t`.`cno` = `s`.`cno`)) `b` group by `b`.`tno`,`b`.`cname`;

-- ----------------------------
-- View structure for a_v_classstudent
-- ----------------------------
DROP VIEW IF EXISTS `a_v_classstudent`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `a_v_classstudent` AS select `s`.`sno` AS `sno`,`s`.`sname` AS `sname`,`c`.`cno` AS `cno`,`c`.`cname` AS `cname`,`c`.`term` AS `term`,`c`.`tno` AS `tno` from ((`a_student` `s` join `a_course` `c`) join `a_cc` `cc`) where ((`s`.`scno` = `cc`.`classno`) and (`cc`.`cno` = `c`.`cno`));

-- ----------------------------
-- View structure for a_v_grade
-- ----------------------------
DROP VIEW IF EXISTS `a_v_grade`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `a_v_grade` AS select `s`.`sno` AS `sno`,`s`.`sname` AS `sname`,`s`.`scno` AS `scno`,`ss`.`score` AS `score`,`ss`.`term` AS `term`,`ss`.`cno` AS `cno`,`ss`.`cname` AS `cname`,`ss`.`tno` AS `tno`,`ss`.`tname` AS `tname` from (`a_student` `s` left join `a_score` `ss` on((`s`.`sno` = `ss`.`sno`)));

-- ----------------------------
-- View structure for a_v_student
-- ----------------------------
DROP VIEW IF EXISTS `a_v_student`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `a_v_student` AS select `s`.`sno` AS `sno`,`s`.`sname` AS `sname`,`s`.`ssex` AS `ssex`,`s`.`sage` AS `sage`,`s`.`sorigin` AS `sorigin`,`s`.`scredit` AS `scredit`,`s`.`scno` AS `scno`,`s`.`spassword` AS `spassword`,`sc`.`cname` AS `cname`,`sc`.`term` AS `term` from (`a_student` `s` join `a_score` `sc`) where (`s`.`sno` = `sc`.`sno`);

-- ----------------------------
-- View structure for a_v_student_course
-- ----------------------------
DROP VIEW IF EXISTS `a_v_student_course`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `a_v_student_course` AS select `c`.`cno` AS `cno`,`c`.`cname` AS `cname`,`c`.`tname` AS `tname`,`c`.`tno` AS `tno`,`c`.`term` AS `term`,`c`.`ctime` AS `ctime`,`c`.`exam` AS `exam`,`c`.`credit` AS `credit`,`c`.`classno` AS `classno`,`sc`.`sno` AS `sno`,`sc`.`checked` AS `checked` from (`a_course` `c` left join `a_stu_course` `sc` on(((`c`.`classno` = `sc`.`classno`) and (`c`.`cno` = `sc`.`cno`))));
