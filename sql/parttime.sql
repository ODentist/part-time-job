/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : parttime

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 23/03/2022 15:31:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'job_resume', '简历', 'JobResume', 'crud', 'com.ruoyi.project.job', 'resume', 'resume', '简历', '.', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-02-05 11:30:55', '', '2020-02-05 11:40:03', '');
INSERT INTO `gen_table` VALUES (2, 'job_position', '企业职位', 'JobPosition', 'crud', 'com.ruoyi.project.job', 'position', 'position', '职位', '.', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-02-05 11:31:06', '', '2020-02-05 11:35:50', '');
INSERT INTO `gen_table` VALUES (4, 'job_receive_detail', '职位接受记录', 'JobReceiveDetail', 'crud', 'com.ruoyi.project.job', 'receive', 'receive', '职位接受记录', '。', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-02-05 18:12:49', '', '2020-02-05 18:21:02', '');
INSERT INTO `gen_table` VALUES (5, 'job_apply_detail', '职位申请记录', 'JobApplyDetail', 'crud', 'com.ruoyi.project.job', 'apply', 'apply', '职位申请记录', '.', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-02-05 18:21:27', '', '2020-02-05 18:28:02', '');
INSERT INTO `gen_table` VALUES (6, 'job_vip_detail', '用户开通vip记录', 'JobVipDetail', 'crud', 'com.ruoyi.project.job', 'vip', 'vip', '用户开通vip记录', '.', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-02-07 11:58:02', '', '2020-02-07 11:59:06', '');
INSERT INTO `gen_table` VALUES (7, 'weixin_order', '微信支付订单', 'WeixinOrder', 'crud', 'com.ruoyi.project.pay', 'weixinpay', 'weixinpay', '微信支付订单', '。', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-02-07 22:02:36', '', '2020-02-07 22:03:28', '');
INSERT INTO `gen_table` VALUES (8, 'job_enterprise', '企业', 'JobEnterprise', 'crud', 'com.ruoyi.project.job', 'enterprise', 'enterprise', '企业', '.', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-02-10 13:07:39', '', '2020-02-10 13:13:47', '');
INSERT INTO `gen_table` VALUES (9, 'job_concern', '企业关注表', 'JobConcern', 'crud', 'com.ruoyi.project.system', 'system', 'concern', '企业关注', 'ruoyi', NULL, 'admin', '2020-02-10 17:23:59', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (10, 'job_invite', '面试邀请', 'JobInvite', 'crud', 'com.ruoyi.project.job', 'invite', 'invite', '面试邀请', '.', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-02-10 19:52:15', '', '2020-02-10 19:53:41', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'resume_id', '简历id', 'int(11)', 'Long', 'resumeId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (2, '1', 'user_id', '求职者id', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (3, '1', 'position_type', '职位类别', 'tinyint(3)', 'Integer', 'positionType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'job_position_type', 3, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (4, '1', 'content', '简历内容', 'varchar(500)', 'String', 'content', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (5, '1', 'area', '地区', 'varchar(20)', 'String', 'area', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (6, '1', 'salary', '薪资范围', 'tinyint(3)', 'Integer', 'salary', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'job_salary', 6, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (7, '1', 'birthday', '生日', 'date', 'Date', 'birthday', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (8, '1', 'phone', '电话', 'varchar(11)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (9, '1', 'work_experience', '工作经历', 'varchar(500)', 'String', 'workExperience', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 9, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (10, '1', 'status', '简历状态', 'tinyint(3)', 'Integer', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'job_resume_status', 10, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (11, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (12, '1', 'update_time', 'null', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-02-05 11:30:55', NULL, '2020-02-05 11:40:03');
INSERT INTO `gen_table_column` VALUES (13, '2', 'position_id', 'null', 'int(11)', 'Long', 'positionId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-02-05 11:31:06', NULL, '2020-02-05 11:35:50');
INSERT INTO `gen_table_column` VALUES (14, '2', 'user_id', '企业id', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-02-05 11:31:06', NULL, '2020-02-05 11:35:50');
INSERT INTO `gen_table_column` VALUES (15, '2', 'position_name', '职位名称', 'varchar(20)', 'String', 'positionName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-02-05 11:31:06', NULL, '2020-02-05 11:35:50');
INSERT INTO `gen_table_column` VALUES (16, '2', 'position_type', '职位类型', 'tinyint(3)', 'Integer', 'positionType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'job_position_type', 4, 'admin', '2020-02-05 11:31:06', NULL, '2020-02-05 11:35:50');
INSERT INTO `gen_table_column` VALUES (17, '2', 'area', '工作地点', 'varchar(20)', 'String', 'area', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-02-05 11:31:06', NULL, '2020-02-05 11:35:50');
INSERT INTO `gen_table_column` VALUES (18, '2', 'position_salary', 'null', 'tinyint(3)', 'Integer', 'positionSalary', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'job_salary', 6, 'admin', '2020-02-05 11:31:06', NULL, '2020-02-05 11:35:50');
INSERT INTO `gen_table_column` VALUES (19, '2', 'status', '状态', 'tinyint(3)', 'Integer', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-02-05 11:31:06', NULL, '2020-02-05 11:35:50');
INSERT INTO `gen_table_column` VALUES (20, '2', 'create_time', 'null', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2020-02-05 11:31:06', NULL, '2020-02-05 11:35:50');
INSERT INTO `gen_table_column` VALUES (21, '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2020-02-05 11:31:06', NULL, '2020-02-05 11:35:50');
INSERT INTO `gen_table_column` VALUES (31, '4', 'receive_id', '职位接收id', 'int(11)', 'Long', 'receiveId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-02-05 18:12:49', NULL, '2020-02-05 18:21:02');
INSERT INTO `gen_table_column` VALUES (32, '4', 'apply_id', '申请id', 'int(11)', 'Long', 'applyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-02-05 18:12:49', NULL, '2020-02-05 18:21:02');
INSERT INTO `gen_table_column` VALUES (33, '4', 'user_id', '企业id', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-02-05 18:12:49', NULL, '2020-02-05 18:21:02');
INSERT INTO `gen_table_column` VALUES (34, '4', 'position_id', '职位id', 'int(11)', 'Long', 'positionId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-02-05 18:12:49', NULL, '2020-02-05 18:21:02');
INSERT INTO `gen_table_column` VALUES (35, '4', 'resume_id', '简历id', 'int(11)', 'Long', 'resumeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-02-05 18:12:49', NULL, '2020-02-05 18:21:02');
INSERT INTO `gen_table_column` VALUES (36, '4', 'receive_time', '接收时间', 'datetime', 'Date', 'receiveTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-02-05 18:12:49', NULL, '2020-02-05 18:21:02');
INSERT INTO `gen_table_column` VALUES (37, '4', 'operate_status', '处理状态(0未处理，1已处理)', 'tinyint(3)', 'Integer', 'operateStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'job_operate_status', 7, 'admin', '2020-02-05 18:12:49', NULL, '2020-02-05 18:21:02');
INSERT INTO `gen_table_column` VALUES (38, '4', 'operate_result', '处理结果(0同意1拒绝)', 'tinyint(3)', 'Integer', 'operateResult', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'job_operate_result', 8, 'admin', '2020-02-05 18:12:49', NULL, '2020-02-05 18:21:02');
INSERT INTO `gen_table_column` VALUES (39, '4', 'reason', '拒绝原因', 'varchar(255)', 'String', 'reason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-02-05 18:12:49', NULL, '2020-02-05 18:21:02');
INSERT INTO `gen_table_column` VALUES (40, '5', 'apply_id', '申请Id', 'int(11)', 'Long', 'applyId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-02-05 18:21:27', NULL, '2020-02-05 18:28:02');
INSERT INTO `gen_table_column` VALUES (41, '5', 'user_id', '求职者id（发送简历的userid）', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-02-05 18:21:27', NULL, '2020-02-05 18:28:02');
INSERT INTO `gen_table_column` VALUES (42, '5', 'enterprise_id', '企业id(职位的userid)', 'int(11)', 'Long', 'enterpriseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-02-05 18:21:27', NULL, '2020-02-05 18:28:02');
INSERT INTO `gen_table_column` VALUES (43, '5', 'position_id', '职位id', 'int(11)', 'Long', 'positionId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-02-05 18:21:27', NULL, '2020-02-05 18:28:02');
INSERT INTO `gen_table_column` VALUES (44, '5', 'resume_id', '简历id', 'int(11)', 'Long', 'resumeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-02-05 18:21:27', NULL, '2020-02-05 18:28:02');
INSERT INTO `gen_table_column` VALUES (45, '5', 'apply_time', '申请时间', 'datetime', 'Date', 'applyTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-02-05 18:21:27', NULL, '2020-02-05 18:28:02');
INSERT INTO `gen_table_column` VALUES (46, '6', 'user_id', '用户id', 'int(11)', 'Long', 'userId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-02-07 11:58:02', NULL, '2020-02-07 11:59:06');
INSERT INTO `gen_table_column` VALUES (47, '6', 'open_time', '开通时间', 'datetime', 'Date', 'openTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 2, 'admin', '2020-02-07 11:58:02', NULL, '2020-02-07 11:59:06');
INSERT INTO `gen_table_column` VALUES (48, '6', 'start_time', '开始时间', 'datetime', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-02-07 11:58:02', NULL, '2020-02-07 11:59:06');
INSERT INTO `gen_table_column` VALUES (49, '6', 'end_time', '结束时间', 'datetime', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2020-02-07 11:58:02', NULL, '2020-02-07 11:59:06');
INSERT INTO `gen_table_column` VALUES (50, '6', 'status', '状态(1正常2停用)', 'tinyint(3)', 'Integer', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_normal_disable', 5, 'admin', '2020-02-07 11:58:02', NULL, '2020-02-07 11:59:06');
INSERT INTO `gen_table_column` VALUES (51, '7', 'order_no', '订单号', 'varchar(32)', 'String', 'orderNo', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-02-07 22:02:36', NULL, '2020-02-07 22:03:28');
INSERT INTO `gen_table_column` VALUES (52, '7', 'user_id', '用户id', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-02-07 22:02:36', NULL, '2020-02-07 22:03:28');
INSERT INTO `gen_table_column` VALUES (53, '7', 'amount', '金额(单位分)', 'int(11)', 'Long', 'amount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-02-07 22:02:36', NULL, '2020-02-07 22:03:28');
INSERT INTO `gen_table_column` VALUES (54, '7', 'status', '支付状态', 'tinyint(3)', 'Integer', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2020-02-07 22:02:36', NULL, '2020-02-07 22:03:28');
INSERT INTO `gen_table_column` VALUES (55, '7', 'pay_time', '支付时间', 'datetime', 'Date', 'payTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2020-02-07 22:02:36', NULL, '2020-02-07 22:03:28');
INSERT INTO `gen_table_column` VALUES (56, '8', 'id', '企业Id', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (57, '8', 'user_id', '企业人员', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (58, '8', 'name', '企业名称', 'varchar(64)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (59, '8', 'scale', '企业规模', 'tinyint(3)', 'Integer', 'scale', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'job_enterprise_scale', 4, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (60, '8', 'category', '企业性质', 'tinyint(3)', 'Integer', 'category', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'job_enterprise_category', 5, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (61, '8', 'address', '企业地址', 'varchar(64)', 'String', 'address', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (62, '8', 'phone', '联系方式', 'varchar(11)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (63, '8', 'information', '企业信息', 'text', 'String', 'information', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (64, '8', 'create_by', '创建人', 'varchar(32)', 'String', 'createBy', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (65, '8', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (66, '8', 'update_by', '更新人', 'varchar(32)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (67, '8', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2020-02-10 13:07:39', NULL, '2020-02-10 13:13:47');
INSERT INTO `gen_table_column` VALUES (68, '9', 'id', '关注id', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-02-10 17:23:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (69, '9', 'user_id', '企业人员id', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-02-10 17:23:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (70, '9', 'resume_id', '简历id', 'int(11)', 'Long', 'resumeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-02-10 17:23:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (71, '9', 'concern_time', '关注时间', 'datetime', 'Date', 'concernTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2020-02-10 17:23:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (72, '10', 'invite_id', '邀请id', 'int(11)', 'Long', 'inviteId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-02-10 19:52:15', NULL, '2020-02-10 19:53:41');
INSERT INTO `gen_table_column` VALUES (73, '10', 'user_id', '企业人员Id', 'int(11)', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-02-10 19:52:15', NULL, '2020-02-10 19:53:41');
INSERT INTO `gen_table_column` VALUES (74, '10', 'resume_id', '简历id', 'int(11)', 'Long', 'resumeId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-02-10 19:52:15', NULL, '2020-02-10 19:53:41');
INSERT INTO `gen_table_column` VALUES (75, '10', 'invite_time', '邀请时间', 'datetime', 'Date', 'inviteTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2020-02-10 19:52:15', NULL, '2020-02-10 19:53:41');
INSERT INTO `gen_table_column` VALUES (76, '10', 'Interview_time', '面试时间', 'datetime', 'Date', 'interviewTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2020-02-10 19:52:15', NULL, '2020-02-10 19:53:41');
INSERT INTO `gen_table_column` VALUES (77, '10', 'Interview_place', '面试地点', 'varchar(100)', 'String', 'interviewPlace', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-02-10 19:52:15', NULL, '2020-02-10 19:53:41');
INSERT INTO `gen_table_column` VALUES (78, '10', 'operate_status', '处理状态(0未处理，1已处理)', 'tinyint(3)', 'Integer', 'operateStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'job_operate_status', 7, 'admin', '2020-02-10 19:52:15', NULL, '2020-02-10 19:53:41');
INSERT INTO `gen_table_column` VALUES (79, '10', 'operate_result', '处理结果(0同意1拒绝)', 'tinyint(3)', 'Integer', 'operateResult', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', 'job_operate_result', 8, 'admin', '2020-02-10 19:52:15', NULL, '2020-02-10 19:53:41');
INSERT INTO `gen_table_column` VALUES (80, '10', 'reason', '拒绝原因', 'varchar(255)', 'String', 'reason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 9, 'admin', '2020-02-10 19:52:15', NULL, '2020-02-10 19:53:41');
INSERT INTO `gen_table_column` VALUES (81, '10', 'operate_time', '处理时间', 'datetime', 'Date', 'operateTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 10, 'admin', '2020-02-10 19:52:15', NULL, '2020-02-10 19:53:41');

-- ----------------------------
-- Table structure for job_apply_detail
-- ----------------------------
DROP TABLE IF EXISTS `job_apply_detail`;
CREATE TABLE `job_apply_detail`  (
  `apply_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '申请Id',
  `user_id` int(0) NOT NULL COMMENT '求职者id（发送简历的userid）',
  `enterprise_id` int(0) NOT NULL COMMENT '企业id(职位的userid)',
  `position_id` int(0) NOT NULL COMMENT '职位id',
  `resume_id` int(0) NOT NULL COMMENT '简历id',
  `apply_time` datetime(0) NOT NULL COMMENT '申请时间',
  PRIMARY KEY (`apply_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '职位申请记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_apply_detail
-- ----------------------------
INSERT INTO `job_apply_detail` VALUES (5, 4, 3, 3, 2, '2020-02-10 22:25:48');

-- ----------------------------
-- Table structure for job_concern
-- ----------------------------
DROP TABLE IF EXISTS `job_concern`;
CREATE TABLE `job_concern`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '关注id',
  `user_id` int(0) NOT NULL COMMENT '企业人员id',
  `resume_id` int(0) NOT NULL COMMENT '简历id',
  `concern_time` datetime(0) NOT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_resume_id`(`resume_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业关注表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_concern
-- ----------------------------

-- ----------------------------
-- Table structure for job_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `job_enterprise`;
CREATE TABLE `job_enterprise`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '企业Id',
  `user_id` int(0) NOT NULL COMMENT '企业人员',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业名称',
  `scale` tinyint(0) NOT NULL COMMENT '企业规模',
  `category` tinyint(0) NOT NULL COMMENT '企业性质',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业地址',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `information` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '企业信息',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_enterprise
-- ----------------------------
INSERT INTO `job_enterprise` VALUES (2, 1, '名创优品（广州）有限责任公司', 5, 5, '总部-荔湾区康王中路486号和业广场18、19、25楼（全层） (邮编：510405)', '12345678900', NULL, 'admin', '2020-02-10 14:15:44', NULL, NULL);
INSERT INTO `job_enterprise` VALUES (3, 3, '阿里巴巴集团', 5, 2, '中国杭州', '12345678900', NULL, 'qiye', '2020-02-10 16:05:44', 'qiuzhi', '2020-02-10 16:32:09');
INSERT INTO `job_enterprise` VALUES (4, 3, '阿里巴巴集团总部', 5, 2, '中国杭州', '12345678900', NULL, 'qiye', '2022-03-11 12:05:44', '小可', '2022-03-23 13:23:27');
INSERT INTO `job_enterprise` VALUES (5, 3, '阿里巴巴集团', 5, 2, '中国杭州', '12345678900', NULL, 'qiye', '2022-03-12 16:05:44', 'qiuzhi', '2020-02-10 16:32:09');
INSERT INTO `job_enterprise` VALUES (6, 3, '阿里巴巴集团分部', 5, 2, '中国杭州', '12345678900', NULL, 'qiye', '2022-02-19 16:05:44', '小可', '2022-03-23 13:23:19');

-- ----------------------------
-- Table structure for job_invite
-- ----------------------------
DROP TABLE IF EXISTS `job_invite`;
CREATE TABLE `job_invite`  (
  `invite_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '邀请id',
  `user_id` int(0) NOT NULL COMMENT '企业人员Id',
  `resume_id` int(0) NOT NULL COMMENT '简历id',
  `invite_time` datetime(0) NOT NULL COMMENT '邀请时间',
  `interview_time` datetime(0) NOT NULL COMMENT '面试时间',
  `interview_place` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面试地点',
  `operate_status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '处理状态(0未处理，1已处理)',
  `operate_result` tinyint(0) NULL DEFAULT NULL COMMENT '处理结果(0同意1拒绝)',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拒绝原因',
  `operate_time` datetime(0) NULL DEFAULT NULL COMMENT '处理时间',
  PRIMARY KEY (`invite_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '面试邀请' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_invite
-- ----------------------------
INSERT INTO `job_invite` VALUES (2, 3, 3, '2020-02-11 09:31:24', '2020-02-11 09:30:08', '北京', 1, 1, '拒绝邀请', '2020-02-11 09:50:13');
INSERT INTO `job_invite` VALUES (3, 1, 3, '2021-12-27 21:12:57', '2021-12-25 22:55:29', 'sfaw', 1, 0, NULL, '2021-12-27 21:13:32');

-- ----------------------------
-- Table structure for job_position
-- ----------------------------
DROP TABLE IF EXISTS `job_position`;
CREATE TABLE `job_position`  (
  `position_id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL COMMENT '企业id',
  `position_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位名称',
  `position_type` tinyint(0) NOT NULL COMMENT '职位类型',
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作地点',
  `position_salary` tinyint(0) NOT NULL,
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态',
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`position_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_position
-- ----------------------------
INSERT INTO `job_position` VALUES (3, 3, 'Java开发工程师', 0, '1', 3, 1, '2020-02-10 16:06:02', NULL);
INSERT INTO `job_position` VALUES (4, 1, '打杂', 2, '0', 2, 1, '2021-11-08 11:05:28', NULL);
INSERT INTO `job_position` VALUES (5, 1, 'web前端', 0, '1', 3, 0, '2022-03-12 19:33:38', NULL);
INSERT INTO `job_position` VALUES (6, 3, 'web', 0, '0', 1, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (7, 1, 'web前端1', 0, '0', 3, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (8, 3, 'img', 0, '0', 2, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (9, 3, 'java', 0, '0', 1, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (10, 1, 'web前端', 0, '0', 3, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (11, 1, 'python', 0, '0', 2, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (12, 3, 'web前端', 0, '0', 3, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (13, 1, 'web前端', 0, '0', 1, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (14, 1, 'php', 0, '0', 3, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (15, 3, 'web前端', 0, '0', 3, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (16, 1, 'js', 0, '0', 2, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (17, 1, 'web前端', 0, '0', 2, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (18, 1, '微电子', 0, '0', 3, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (19, 1, 'web前端', 0, '0', 3, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (20, 3, 'css', 0, '0', 1, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (21, 3, 'web前端', 0, '0', 1, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (22, 3, 'linux', 0, '0', 3, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (23, 1, '算法', 0, '0', 2, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (24, 1, 'web前端', 0, '0', 3, 0, '2022-03-12 19:34:37', NULL);
INSERT INTO `job_position` VALUES (25, 1, '测试', 0, '0', 0, 0, '2022-03-23 13:24:26', NULL);

-- ----------------------------
-- Table structure for job_receive_detail
-- ----------------------------
DROP TABLE IF EXISTS `job_receive_detail`;
CREATE TABLE `job_receive_detail`  (
  `receive_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '职位接收id',
  `apply_id` int(0) NOT NULL COMMENT '申请id',
  `user_id` int(0) NOT NULL COMMENT '企业id',
  `position_id` int(0) NOT NULL COMMENT '职位id',
  `resume_id` int(0) NOT NULL COMMENT '简历id',
  `receive_time` datetime(0) NOT NULL COMMENT '接收时间',
  `operate_status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '处理状态(0未处理，1已处理)',
  `operate_result` tinyint(0) NULL DEFAULT NULL COMMENT '处理结果(0同意1拒绝)',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拒绝原因',
  `operate_time` datetime(0) NULL DEFAULT NULL COMMENT '处理时间',
  PRIMARY KEY (`receive_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '职位接受记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_receive_detail
-- ----------------------------
INSERT INTO `job_receive_detail` VALUES (5, 5, 3, 3, 2, '2020-02-10 22:25:48', 0, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for job_resume
-- ----------------------------
DROP TABLE IF EXISTS `job_resume`;
CREATE TABLE `job_resume`  (
  `resume_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '简历id',
  `resume_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简历名称',
  `user_id` int(0) NOT NULL COMMENT '求职者id',
  `position_type` tinyint(0) NOT NULL COMMENT '职位类别',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简历内容',
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区',
  `salary` tinyint(0) NOT NULL COMMENT '薪资范围',
  `birthday` date NOT NULL COMMENT '生日',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `work_experience` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作经历',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '简历状态',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL,
  `file_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件名称',
  `file_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件编码',
  PRIMARY KEY (`resume_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_resume
-- ----------------------------
INSERT INTO `job_resume` VALUES (1, 'java简历', 1, 0, '1111', '0', 0, '2020-02-05', '12345678900', NULL, 1, '2020-02-05 12:16:20', '2020-02-05 19:59:45', NULL, NULL);
INSERT INTO `job_resume` VALUES (2, '文员', 4, 1, '文员简历', '1', 1, '2020-02-05', '12345678900', NULL, 1, '2020-02-06 10:28:07', NULL, NULL, NULL);
INSERT INTO `job_resume` VALUES (3, '文员', 4, 2, 'dsafadsf', '0', 0, '2020-02-05', '12345678900', NULL, 1, '2020-02-08 14:22:54', '2020-02-12 13:56:06', NULL, NULL);

-- ----------------------------
-- Table structure for job_vip_detail
-- ----------------------------
DROP TABLE IF EXISTS `job_vip_detail`;
CREATE TABLE `job_vip_detail`  (
  `user_id` int(0) NOT NULL COMMENT '用户id',
  `open_time` datetime(0) NOT NULL COMMENT '开通时间',
  `start_time` datetime(0) NOT NULL COMMENT '开始时间',
  `end_time` datetime(0) NOT NULL COMMENT '结束时间',
  `status` tinyint(0) NOT NULL DEFAULT 1 COMMENT '状态(1正常2停用)',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户开通vip记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_vip_detail
-- ----------------------------
INSERT INTO `job_vip_detail` VALUES (4, '2020-02-10 12:19:32', '2020-02-12 09:57:50', '2020-03-13 09:57:50', 1);

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '豆芽科技', 0, '豆芽1号', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '豆芽2号', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '豆芽3号', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '豆芽4号', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '豆芽5号', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '豆芽6号', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '豆芽7号', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '豆芽8号', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '豆芽9号', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '豆芽10号', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '计算机类', '0', 'job_position_type', '', '', 'Y', '0', 'admin', '2020-02-05 10:14:42', 'admin', '2020-02-05 10:37:05', '');
INSERT INTO `sys_dict_data` VALUES (30, 1, '文职类', '1', 'job_position_type', '', '', 'Y', '0', 'admin', '2020-02-05 10:15:05', 'admin', '2020-02-05 10:37:16', '');
INSERT INTO `sys_dict_data` VALUES (31, 2, '销售类', '2', 'job_position_type', '', '', 'Y', '0', 'admin', '2020-02-05 10:15:18', 'admin', '2020-02-05 10:37:27', '');
INSERT INTO `sys_dict_data` VALUES (32, 0, '1000以下', '0', 'job_salary', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 10:16:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (33, 1, '1000~3000', '1', 'job_salary', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 10:16:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (34, 2, '3001~8000', '2', 'job_salary', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 10:16:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (35, 3, '8001~12000', '3', 'job_salary', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 10:17:07', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (36, 0, '未发布', '0', 'job_resume_status', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 10:26:54', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (37, 1, '发布', '1', 'job_resume_status', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 10:27:06', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (38, 0, '北京市', '0', 'job_area', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 12:13:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (39, 1, '上海市', '1', 'job_area', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 12:13:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (40, 2, '广州市', '2', 'job_area', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 12:13:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (41, 3, '深圳市', '3', 'job_area', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 12:14:03', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (42, 0, '未处理', '0', 'job_operate_status', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 18:18:19', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (43, 1, '已处理', '1', 'job_operate_status', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 18:18:32', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (44, 0, '同意', '0', 'job_operate_result', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 18:19:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (45, 1, '拒绝', '1', 'job_operate_result', NULL, NULL, 'Y', '0', 'admin', '2020-02-05 18:19:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (46, 1, '30天(10元)', '10', 'job_vip_level', '', '', 'Y', '0', 'admin', '2020-02-07 13:27:38', 'admin', '2020-02-07 13:29:08', '');
INSERT INTO `sys_dict_data` VALUES (47, 2, '90天(25元)', '25', 'job_vip_level', '', '', 'Y', '0', 'admin', '2020-02-07 13:27:58', 'admin', '2020-02-07 13:29:01', '');
INSERT INTO `sys_dict_data` VALUES (48, 3, '180天(45元)', '45', 'job_vip_level', NULL, NULL, 'Y', '0', 'admin', '2020-02-07 13:28:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (49, 4, '360天(80元)', '80', 'job_vip_level', NULL, NULL, 'Y', '0', 'admin', '2020-02-07 13:29:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (50, 1, '20人以下', '1', 'job_enterprise_scale', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 13:09:12', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (51, 2, '20~50人', '2', 'job_enterprise_scale', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 13:09:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (52, 3, '50~100人', '3', 'job_enterprise_scale', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 13:09:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (53, 4, '100~500人', '4', 'job_enterprise_scale', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 13:10:00', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (54, 5, '500人以上', '5', 'job_enterprise_scale', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 13:10:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (55, 1, '金融/投资/证券', '1', 'job_enterprise_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 13:11:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (56, 2, '计算机软件', '2', 'job_enterprise_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 13:11:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (57, 3, '汽车及零配件', '3', 'job_enterprise_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 13:12:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (58, 4, '房地产/汽车', '4', 'job_enterprise_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 13:12:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (59, 5, '快速消费品(食品、饮料、化妆品) 批发/零售', '5', 'job_enterprise_category', NULL, NULL, 'Y', '0', 'admin', '2020-02-10 14:15:16', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (11, '职位类别', 'job_position_type', '0', 'admin', '2020-02-05 10:13:26', 'admin', '2020-02-05 10:25:47', '职位类别');
INSERT INTO `sys_dict_type` VALUES (12, '薪资范围', 'job_salary', '0', 'admin', '2020-02-05 10:15:51', 'admin', '2020-02-05 10:25:40', '');
INSERT INTO `sys_dict_type` VALUES (13, '简历状态', 'job_resume_status', '0', 'admin', '2020-02-05 10:26:28', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (14, '地区', 'job_area', '0', 'admin', '2020-02-05 12:13:16', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (15, '处理状态', 'job_operate_status', '0', 'admin', '2020-02-05 18:18:02', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (16, '处理结果', 'job_operate_result', '0', 'admin', '2020-02-05 18:18:52', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (17, 'VIP等级', 'job_vip_level', '0', 'admin', '2020-02-07 13:27:08', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (18, '企业规模', 'job_enterprise_scale', '0', 'admin', '2020-02-10 13:08:24', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (19, '企业性质', 'job_enterprise_category', '0', 'admin', '2020-02-10 13:10:54', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 829 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-04 20:49:05');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 09:33:54');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 09:34:23');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 09:34:31');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 09:36:38');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 09:37:33');
INSERT INTO `sys_logininfor` VALUES (106, 'common', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-02-05 09:37:45');
INSERT INTO `sys_logininfor` VALUES (107, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-02-05 09:38:24');
INSERT INTO `sys_logininfor` VALUES (108, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2020-02-05 09:38:42');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2020-02-05 09:40:01');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 09:40:23');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 09:48:01');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 09:48:49');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 09:48:54');
INSERT INTO `sys_logininfor` VALUES (114, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 09:49:08');
INSERT INTO `sys_logininfor` VALUES (115, 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 09:50:36');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 09:50:48');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 10:13:49');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 10:25:21');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 10:50:14');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2020-02-05 11:13:20');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 11:21:16');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 11:24:18');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 11:28:47');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 11:38:33');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 11:50:43');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 11:54:07');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 11:54:09');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 12:01:26');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 12:12:37');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 12:31:38');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 12:47:10');
INSERT INTO `sys_logininfor` VALUES (132, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 12:47:16');
INSERT INTO `sys_logininfor` VALUES (133, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 12:47:26');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 12:47:28');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 12:47:50');
INSERT INTO `sys_logininfor` VALUES (136, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 12:47:54');
INSERT INTO `sys_logininfor` VALUES (137, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 12:48:22');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 12:48:26');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 12:49:23');
INSERT INTO `sys_logininfor` VALUES (140, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 12:49:25');
INSERT INTO `sys_logininfor` VALUES (141, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 12:55:44');
INSERT INTO `sys_logininfor` VALUES (142, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 12:57:52');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:18:02');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:20:12');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 13:20:36');
INSERT INTO `sys_logininfor` VALUES (146, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:20:39');
INSERT INTO `sys_logininfor` VALUES (147, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:22:18');
INSERT INTO `sys_logininfor` VALUES (148, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:32:14');
INSERT INTO `sys_logininfor` VALUES (149, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:34:37');
INSERT INTO `sys_logininfor` VALUES (150, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:35:51');
INSERT INTO `sys_logininfor` VALUES (151, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:37:24');
INSERT INTO `sys_logininfor` VALUES (152, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:41:01');
INSERT INTO `sys_logininfor` VALUES (153, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:43:45');
INSERT INTO `sys_logininfor` VALUES (154, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:46:29');
INSERT INTO `sys_logininfor` VALUES (155, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 13:46:56');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 13:46:58');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:24:09');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 14:37:54');
INSERT INTO `sys_logininfor` VALUES (159, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:37:57');
INSERT INTO `sys_logininfor` VALUES (160, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 14:38:01');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:38:02');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 14:38:16');
INSERT INTO `sys_logininfor` VALUES (163, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:38:18');
INSERT INTO `sys_logininfor` VALUES (164, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 14:39:07');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:39:10');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-05 14:40:16');
INSERT INTO `sys_logininfor` VALUES (167, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:40:19');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 14:44:27');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 15:47:33');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 16:09:33');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 16:41:28');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 17:08:26');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 17:11:26');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 17:46:13');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 18:07:30');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 18:16:18');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 18:27:33');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 18:44:21');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 18:50:41');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 19:16:04');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 19:19:16');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 19:21:23');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 19:40:51');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 19:54:15');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 19:57:26');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 20:42:38');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 20:46:23');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-05 21:06:31');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 09:36:52');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 09:51:48');
INSERT INTO `sys_logininfor` VALUES (191, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 09:51:52');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 10:11:18');
INSERT INTO `sys_logininfor` VALUES (193, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 10:14:09');
INSERT INTO `sys_logininfor` VALUES (194, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 10:24:13');
INSERT INTO `sys_logininfor` VALUES (195, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 10:32:29');
INSERT INTO `sys_logininfor` VALUES (196, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 10:32:32');
INSERT INTO `sys_logininfor` VALUES (197, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 11:35:53');
INSERT INTO `sys_logininfor` VALUES (198, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 11:38:26');
INSERT INTO `sys_logininfor` VALUES (199, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 11:41:26');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 11:41:28');
INSERT INTO `sys_logininfor` VALUES (201, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 11:45:58');
INSERT INTO `sys_logininfor` VALUES (202, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 11:48:06');
INSERT INTO `sys_logininfor` VALUES (203, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 11:59:08');
INSERT INTO `sys_logininfor` VALUES (204, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 12:03:51');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 12:03:55');
INSERT INTO `sys_logininfor` VALUES (206, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 12:42:51');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 12:48:09');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 12:48:15');
INSERT INTO `sys_logininfor` VALUES (209, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 12:48:18');
INSERT INTO `sys_logininfor` VALUES (210, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 12:51:47');
INSERT INTO `sys_logininfor` VALUES (211, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 12:58:27');
INSERT INTO `sys_logininfor` VALUES (212, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 13:04:16');
INSERT INTO `sys_logininfor` VALUES (213, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 13:27:57');
INSERT INTO `sys_logininfor` VALUES (214, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 13:31:20');
INSERT INTO `sys_logininfor` VALUES (215, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 13:44:21');
INSERT INTO `sys_logininfor` VALUES (216, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 13:50:53');
INSERT INTO `sys_logininfor` VALUES (217, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 13:51:12');
INSERT INTO `sys_logininfor` VALUES (218, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 13:51:15');
INSERT INTO `sys_logininfor` VALUES (219, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 13:51:42');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 13:51:43');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 14:38:02');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 15:23:30');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 15:25:04');
INSERT INTO `sys_logininfor` VALUES (224, '游客13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2020-02-06 15:36:48');
INSERT INTO `sys_logininfor` VALUES (225, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 15:37:07');
INSERT INTO `sys_logininfor` VALUES (226, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 15:37:51');
INSERT INTO `sys_logininfor` VALUES (227, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 15:40:33');
INSERT INTO `sys_logininfor` VALUES (228, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 15:50:25');
INSERT INTO `sys_logininfor` VALUES (229, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 15:50:28');
INSERT INTO `sys_logininfor` VALUES (230, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 15:57:17');
INSERT INTO `sys_logininfor` VALUES (231, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 15:58:45');
INSERT INTO `sys_logininfor` VALUES (232, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:02:22');
INSERT INTO `sys_logininfor` VALUES (233, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:02:26');
INSERT INTO `sys_logininfor` VALUES (234, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:05:06');
INSERT INTO `sys_logininfor` VALUES (235, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:05:10');
INSERT INTO `sys_logininfor` VALUES (236, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:05:28');
INSERT INTO `sys_logininfor` VALUES (237, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:05:33');
INSERT INTO `sys_logininfor` VALUES (238, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:17:18');
INSERT INTO `sys_logininfor` VALUES (239, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:18:06');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:18:09');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:18:18');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:19:31');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:19:38');
INSERT INTO `sys_logininfor` VALUES (244, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:19:44');
INSERT INTO `sys_logininfor` VALUES (245, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:40:50');
INSERT INTO `sys_logininfor` VALUES (246, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:41:11');
INSERT INTO `sys_logininfor` VALUES (247, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:42:00');
INSERT INTO `sys_logininfor` VALUES (248, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:45:51');
INSERT INTO `sys_logininfor` VALUES (249, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:46:18');
INSERT INTO `sys_logininfor` VALUES (250, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:46:22');
INSERT INTO `sys_logininfor` VALUES (251, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:48:36');
INSERT INTO `sys_logininfor` VALUES (252, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:48:42');
INSERT INTO `sys_logininfor` VALUES (253, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:49:36');
INSERT INTO `sys_logininfor` VALUES (254, 'zhuce', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:51:26');
INSERT INTO `sys_logininfor` VALUES (255, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:53:13');
INSERT INTO `sys_logininfor` VALUES (256, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:54:34');
INSERT INTO `sys_logininfor` VALUES (257, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:56:49');
INSERT INTO `sys_logininfor` VALUES (258, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:57:38');
INSERT INTO `sys_logininfor` VALUES (259, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:57:48');
INSERT INTO `sys_logininfor` VALUES (260, 'youke', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:58:35');
INSERT INTO `sys_logininfor` VALUES (261, 'youke', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 16:59:00');
INSERT INTO `sys_logininfor` VALUES (262, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:59:06');
INSERT INTO `sys_logininfor` VALUES (263, 'zhuce', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 16:59:50');
INSERT INTO `sys_logininfor` VALUES (264, 'youke11', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:01:51');
INSERT INTO `sys_logininfor` VALUES (265, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:04:56');
INSERT INTO `sys_logininfor` VALUES (266, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 17:05:47');
INSERT INTO `sys_logininfor` VALUES (267, 'youke14', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:05:54');
INSERT INTO `sys_logininfor` VALUES (268, 'youke14', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:09:46');
INSERT INTO `sys_logininfor` VALUES (269, 'youke14', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 17:10:02');
INSERT INTO `sys_logininfor` VALUES (270, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:10:10');
INSERT INTO `sys_logininfor` VALUES (271, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 17:10:50');
INSERT INTO `sys_logininfor` VALUES (272, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:10:56');
INSERT INTO `sys_logininfor` VALUES (273, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 17:11:06');
INSERT INTO `sys_logininfor` VALUES (274, 'youke14', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:12:42');
INSERT INTO `sys_logininfor` VALUES (275, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:13:49');
INSERT INTO `sys_logininfor` VALUES (276, 'youke', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:15:04');
INSERT INTO `sys_logininfor` VALUES (277, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:22:31');
INSERT INTO `sys_logininfor` VALUES (278, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 17:23:22');
INSERT INTO `sys_logininfor` VALUES (279, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:23:26');
INSERT INTO `sys_logininfor` VALUES (280, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:24:18');
INSERT INTO `sys_logininfor` VALUES (281, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 17:58:28');
INSERT INTO `sys_logininfor` VALUES (282, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:00:50');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:00:55');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:01:24');
INSERT INTO `sys_logininfor` VALUES (285, 'zhuce', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:01:27');
INSERT INTO `sys_logininfor` VALUES (286, 'zhuce', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:20:13');
INSERT INTO `sys_logininfor` VALUES (287, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:20:17');
INSERT INTO `sys_logininfor` VALUES (288, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:22:24');
INSERT INTO `sys_logininfor` VALUES (289, 'youke11', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:23:58');
INSERT INTO `sys_logininfor` VALUES (290, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:26:44');
INSERT INTO `sys_logininfor` VALUES (291, 'youke14', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:28:15');
INSERT INTO `sys_logininfor` VALUES (292, 'youke14', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:29:54');
INSERT INTO `sys_logininfor` VALUES (293, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:29:57');
INSERT INTO `sys_logininfor` VALUES (294, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:30:47');
INSERT INTO `sys_logininfor` VALUES (295, 'zhuce', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:30:51');
INSERT INTO `sys_logininfor` VALUES (296, 'zhuce', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:32:02');
INSERT INTO `sys_logininfor` VALUES (297, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:32:06');
INSERT INTO `sys_logininfor` VALUES (298, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:32:42');
INSERT INTO `sys_logininfor` VALUES (299, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:32:45');
INSERT INTO `sys_logininfor` VALUES (300, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:33:25');
INSERT INTO `sys_logininfor` VALUES (301, 'zhuce', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:34:20');
INSERT INTO `sys_logininfor` VALUES (302, 'zhuce', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:34:57');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:40:56');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:42:15');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:42:48');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:43:19');
INSERT INTO `sys_logininfor` VALUES (307, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:43:23');
INSERT INTO `sys_logininfor` VALUES (308, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:47:55');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:47:57');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:56:35');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-06 18:56:57');
INSERT INTO `sys_logininfor` VALUES (312, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:56:59');
INSERT INTO `sys_logininfor` VALUES (313, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-06 18:59:03');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 11:28:33');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 11:55:03');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 12:12:13');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 12:52:11');
INSERT INTO `sys_logininfor` VALUES (318, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 12:52:13');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 13:13:12');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 13:19:45');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 16:04:35');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 16:16:34');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 16:16:44');
INSERT INTO `sys_logininfor` VALUES (324, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 16:16:48');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 18:36:03');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 18:36:10');
INSERT INTO `sys_logininfor` VALUES (327, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 18:36:14');
INSERT INTO `sys_logininfor` VALUES (328, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 18:38:03');
INSERT INTO `sys_logininfor` VALUES (329, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 18:38:16');
INSERT INTO `sys_logininfor` VALUES (330, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 18:38:19');
INSERT INTO `sys_logininfor` VALUES (331, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 19:37:54');
INSERT INTO `sys_logininfor` VALUES (332, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 19:40:35');
INSERT INTO `sys_logininfor` VALUES (333, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 19:47:03');
INSERT INTO `sys_logininfor` VALUES (334, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 19:48:07');
INSERT INTO `sys_logininfor` VALUES (335, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 19:48:16');
INSERT INTO `sys_logininfor` VALUES (336, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 19:48:19');
INSERT INTO `sys_logininfor` VALUES (337, 'youke13', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 19:48:25');
INSERT INTO `sys_logininfor` VALUES (338, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 19:48:29');
INSERT INTO `sys_logininfor` VALUES (339, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 19:48:35');
INSERT INTO `sys_logininfor` VALUES (340, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 19:48:39');
INSERT INTO `sys_logininfor` VALUES (341, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 19:48:49');
INSERT INTO `sys_logininfor` VALUES (342, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 19:48:52');
INSERT INTO `sys_logininfor` VALUES (343, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 19:56:36');
INSERT INTO `sys_logininfor` VALUES (344, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 19:58:33');
INSERT INTO `sys_logininfor` VALUES (345, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 20:13:12');
INSERT INTO `sys_logininfor` VALUES (346, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 20:17:20');
INSERT INTO `sys_logininfor` VALUES (347, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 20:19:00');
INSERT INTO `sys_logininfor` VALUES (348, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 20:26:36');
INSERT INTO `sys_logininfor` VALUES (349, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 20:37:35');
INSERT INTO `sys_logininfor` VALUES (350, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 20:40:05');
INSERT INTO `sys_logininfor` VALUES (351, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 20:47:25');
INSERT INTO `sys_logininfor` VALUES (352, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 20:47:30');
INSERT INTO `sys_logininfor` VALUES (353, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 20:53:44');
INSERT INTO `sys_logininfor` VALUES (354, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 21:00:21');
INSERT INTO `sys_logininfor` VALUES (355, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 21:00:23');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 21:01:41');
INSERT INTO `sys_logininfor` VALUES (357, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 21:01:45');
INSERT INTO `sys_logininfor` VALUES (358, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 21:05:49');
INSERT INTO `sys_logininfor` VALUES (359, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 21:25:58');
INSERT INTO `sys_logininfor` VALUES (360, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 21:30:36');
INSERT INTO `sys_logininfor` VALUES (361, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 22:02:11');
INSERT INTO `sys_logininfor` VALUES (362, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-07 22:02:25');
INSERT INTO `sys_logininfor` VALUES (363, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-07 22:02:27');
INSERT INTO `sys_logininfor` VALUES (364, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 10:27:53');
INSERT INTO `sys_logininfor` VALUES (365, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 10:28:41');
INSERT INTO `sys_logininfor` VALUES (366, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 10:32:18');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 10:32:45');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 10:36:46');
INSERT INTO `sys_logininfor` VALUES (369, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 12:43:59');
INSERT INTO `sys_logininfor` VALUES (370, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 12:52:46');
INSERT INTO `sys_logininfor` VALUES (371, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 12:54:49');
INSERT INTO `sys_logininfor` VALUES (372, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:00:14');
INSERT INTO `sys_logininfor` VALUES (373, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 13:02:03');
INSERT INTO `sys_logininfor` VALUES (374, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:02:06');
INSERT INTO `sys_logininfor` VALUES (375, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:03:46');
INSERT INTO `sys_logininfor` VALUES (376, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:10:50');
INSERT INTO `sys_logininfor` VALUES (377, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:14:10');
INSERT INTO `sys_logininfor` VALUES (378, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:34:42');
INSERT INTO `sys_logininfor` VALUES (379, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:36:45');
INSERT INTO `sys_logininfor` VALUES (380, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:45:59');
INSERT INTO `sys_logininfor` VALUES (381, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 13:46:39');
INSERT INTO `sys_logininfor` VALUES (382, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:46:43');
INSERT INTO `sys_logininfor` VALUES (383, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 13:46:46');
INSERT INTO `sys_logininfor` VALUES (384, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:46:49');
INSERT INTO `sys_logininfor` VALUES (385, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 13:47:14');
INSERT INTO `sys_logininfor` VALUES (386, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:47:17');
INSERT INTO `sys_logininfor` VALUES (387, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 13:48:50');
INSERT INTO `sys_logininfor` VALUES (388, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:48:51');
INSERT INTO `sys_logininfor` VALUES (389, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 13:49:21');
INSERT INTO `sys_logininfor` VALUES (390, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:49:24');
INSERT INTO `sys_logininfor` VALUES (391, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 13:49:27');
INSERT INTO `sys_logininfor` VALUES (392, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:49:34');
INSERT INTO `sys_logininfor` VALUES (393, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:57:19');
INSERT INTO `sys_logininfor` VALUES (394, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 13:57:25');
INSERT INTO `sys_logininfor` VALUES (395, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:57:32');
INSERT INTO `sys_logininfor` VALUES (396, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 13:59:28');
INSERT INTO `sys_logininfor` VALUES (397, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 14:00:23');
INSERT INTO `sys_logininfor` VALUES (398, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:00:29');
INSERT INTO `sys_logininfor` VALUES (399, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:01:43');
INSERT INTO `sys_logininfor` VALUES (400, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 14:02:15');
INSERT INTO `sys_logininfor` VALUES (401, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:02:16');
INSERT INTO `sys_logininfor` VALUES (402, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:03:50');
INSERT INTO `sys_logininfor` VALUES (403, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:11:36');
INSERT INTO `sys_logininfor` VALUES (404, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 14:12:14');
INSERT INTO `sys_logininfor` VALUES (405, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:12:56');
INSERT INTO `sys_logininfor` VALUES (406, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:22:11');
INSERT INTO `sys_logininfor` VALUES (407, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:23:47');
INSERT INTO `sys_logininfor` VALUES (408, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:26:39');
INSERT INTO `sys_logininfor` VALUES (409, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:27:58');
INSERT INTO `sys_logininfor` VALUES (410, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-08 14:37:55');
INSERT INTO `sys_logininfor` VALUES (411, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 14:37:58');
INSERT INTO `sys_logininfor` VALUES (412, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-08 17:33:23');
INSERT INTO `sys_logininfor` VALUES (413, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 09:53:19');
INSERT INTO `sys_logininfor` VALUES (414, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 09:54:43');
INSERT INTO `sys_logininfor` VALUES (415, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 09:56:08');
INSERT INTO `sys_logininfor` VALUES (416, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 09:56:13');
INSERT INTO `sys_logininfor` VALUES (417, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 10:10:58');
INSERT INTO `sys_logininfor` VALUES (418, 'youke15', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 10:11:04');
INSERT INTO `sys_logininfor` VALUES (419, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 10:11:28');
INSERT INTO `sys_logininfor` VALUES (420, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 10:11:41');
INSERT INTO `sys_logininfor` VALUES (421, 'youke14', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 10:11:52');
INSERT INTO `sys_logininfor` VALUES (422, 'youke14', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 10:12:04');
INSERT INTO `sys_logininfor` VALUES (423, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 10:12:39');
INSERT INTO `sys_logininfor` VALUES (424, 'youke1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 10:12:42');
INSERT INTO `sys_logininfor` VALUES (425, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 10:15:30');
INSERT INTO `sys_logininfor` VALUES (426, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 10:15:37');
INSERT INTO `sys_logininfor` VALUES (427, 'zhuce', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 11:06:33');
INSERT INTO `sys_logininfor` VALUES (428, 'zhuce', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 11:06:38');
INSERT INTO `sys_logininfor` VALUES (429, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 11:10:44');
INSERT INTO `sys_logininfor` VALUES (430, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 11:17:47');
INSERT INTO `sys_logininfor` VALUES (431, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 11:17:49');
INSERT INTO `sys_logininfor` VALUES (432, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 11:17:51');
INSERT INTO `sys_logininfor` VALUES (433, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 11:33:25');
INSERT INTO `sys_logininfor` VALUES (434, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 11:33:51');
INSERT INTO `sys_logininfor` VALUES (435, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 11:33:54');
INSERT INTO `sys_logininfor` VALUES (436, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 12:18:00');
INSERT INTO `sys_logininfor` VALUES (437, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 12:18:05');
INSERT INTO `sys_logininfor` VALUES (438, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 12:18:20');
INSERT INTO `sys_logininfor` VALUES (439, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 12:18:50');
INSERT INTO `sys_logininfor` VALUES (440, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 12:18:52');
INSERT INTO `sys_logininfor` VALUES (441, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 12:18:55');
INSERT INTO `sys_logininfor` VALUES (442, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 12:21:36');
INSERT INTO `sys_logininfor` VALUES (443, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 12:21:48');
INSERT INTO `sys_logininfor` VALUES (444, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 12:45:46');
INSERT INTO `sys_logininfor` VALUES (445, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 12:45:50');
INSERT INTO `sys_logininfor` VALUES (446, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 12:53:23');
INSERT INTO `sys_logininfor` VALUES (447, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 12:54:03');
INSERT INTO `sys_logininfor` VALUES (448, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 12:54:05');
INSERT INTO `sys_logininfor` VALUES (449, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 13:52:10');
INSERT INTO `sys_logininfor` VALUES (450, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 13:58:03');
INSERT INTO `sys_logininfor` VALUES (451, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 13:58:06');
INSERT INTO `sys_logininfor` VALUES (452, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 13:58:09');
INSERT INTO `sys_logininfor` VALUES (453, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 13:58:13');
INSERT INTO `sys_logininfor` VALUES (454, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 13:58:36');
INSERT INTO `sys_logininfor` VALUES (455, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 13:58:39');
INSERT INTO `sys_logininfor` VALUES (456, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 14:01:24');
INSERT INTO `sys_logininfor` VALUES (457, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 14:01:27');
INSERT INTO `sys_logininfor` VALUES (458, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 14:14:07');
INSERT INTO `sys_logininfor` VALUES (459, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 14:14:29');
INSERT INTO `sys_logininfor` VALUES (460, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 14:14:33');
INSERT INTO `sys_logininfor` VALUES (461, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 14:14:55');
INSERT INTO `sys_logininfor` VALUES (462, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 14:14:56');
INSERT INTO `sys_logininfor` VALUES (463, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 14:29:32');
INSERT INTO `sys_logininfor` VALUES (464, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 14:29:36');
INSERT INTO `sys_logininfor` VALUES (465, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 14:30:33');
INSERT INTO `sys_logininfor` VALUES (466, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 14:30:37');
INSERT INTO `sys_logininfor` VALUES (467, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 14:30:50');
INSERT INTO `sys_logininfor` VALUES (468, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 14:30:53');
INSERT INTO `sys_logininfor` VALUES (469, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 14:31:03');
INSERT INTO `sys_logininfor` VALUES (470, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 14:31:05');
INSERT INTO `sys_logininfor` VALUES (471, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 14:33:05');
INSERT INTO `sys_logininfor` VALUES (472, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 14:33:08');
INSERT INTO `sys_logininfor` VALUES (473, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 15:13:30');
INSERT INTO `sys_logininfor` VALUES (474, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 15:57:07');
INSERT INTO `sys_logininfor` VALUES (475, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:03:33');
INSERT INTO `sys_logininfor` VALUES (476, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:06:12');
INSERT INTO `sys_logininfor` VALUES (477, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:06:15');
INSERT INTO `sys_logininfor` VALUES (478, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:09:42');
INSERT INTO `sys_logininfor` VALUES (479, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:09:45');
INSERT INTO `sys_logininfor` VALUES (480, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:09:52');
INSERT INTO `sys_logininfor` VALUES (481, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:09:56');
INSERT INTO `sys_logininfor` VALUES (482, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:10:27');
INSERT INTO `sys_logininfor` VALUES (483, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:10:28');
INSERT INTO `sys_logininfor` VALUES (484, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:27:47');
INSERT INTO `sys_logininfor` VALUES (485, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:29:52');
INSERT INTO `sys_logininfor` VALUES (486, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:30:00');
INSERT INTO `sys_logininfor` VALUES (487, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:30:04');
INSERT INTO `sys_logininfor` VALUES (488, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:33:20');
INSERT INTO `sys_logininfor` VALUES (489, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:33:23');
INSERT INTO `sys_logininfor` VALUES (490, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:33:26');
INSERT INTO `sys_logininfor` VALUES (491, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:33:29');
INSERT INTO `sys_logininfor` VALUES (492, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:44:15');
INSERT INTO `sys_logininfor` VALUES (493, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:44:27');
INSERT INTO `sys_logininfor` VALUES (494, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:44:32');
INSERT INTO `sys_logininfor` VALUES (495, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:44:35');
INSERT INTO `sys_logininfor` VALUES (496, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:44:37');
INSERT INTO `sys_logininfor` VALUES (497, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:44:54');
INSERT INTO `sys_logininfor` VALUES (498, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:44:59');
INSERT INTO `sys_logininfor` VALUES (499, 'aa', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:52:57');
INSERT INTO `sys_logininfor` VALUES (500, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:53:00');
INSERT INTO `sys_logininfor` VALUES (501, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 16:53:54');
INSERT INTO `sys_logininfor` VALUES (502, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 16:53:58');
INSERT INTO `sys_logininfor` VALUES (503, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 17:12:40');
INSERT INTO `sys_logininfor` VALUES (504, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 17:14:06');
INSERT INTO `sys_logininfor` VALUES (505, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 17:14:08');
INSERT INTO `sys_logininfor` VALUES (506, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 17:17:01');
INSERT INTO `sys_logininfor` VALUES (507, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 17:17:04');
INSERT INTO `sys_logininfor` VALUES (508, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 18:47:13');
INSERT INTO `sys_logininfor` VALUES (509, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 18:47:23');
INSERT INTO `sys_logininfor` VALUES (510, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 18:47:27');
INSERT INTO `sys_logininfor` VALUES (511, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 18:48:57');
INSERT INTO `sys_logininfor` VALUES (512, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 18:51:07');
INSERT INTO `sys_logininfor` VALUES (513, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 18:54:18');
INSERT INTO `sys_logininfor` VALUES (514, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 18:56:42');
INSERT INTO `sys_logininfor` VALUES (515, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 18:56:49');
INSERT INTO `sys_logininfor` VALUES (516, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 18:56:52');
INSERT INTO `sys_logininfor` VALUES (517, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 18:57:19');
INSERT INTO `sys_logininfor` VALUES (518, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 18:57:22');
INSERT INTO `sys_logininfor` VALUES (519, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 18:57:36');
INSERT INTO `sys_logininfor` VALUES (520, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 18:59:15');
INSERT INTO `sys_logininfor` VALUES (521, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 19:14:20');
INSERT INTO `sys_logininfor` VALUES (522, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 19:14:23');
INSERT INTO `sys_logininfor` VALUES (523, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 19:14:33');
INSERT INTO `sys_logininfor` VALUES (524, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 19:17:03');
INSERT INTO `sys_logininfor` VALUES (525, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 19:17:11');
INSERT INTO `sys_logininfor` VALUES (526, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 19:17:15');
INSERT INTO `sys_logininfor` VALUES (527, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 19:52:05');
INSERT INTO `sys_logininfor` VALUES (528, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 19:52:07');
INSERT INTO `sys_logininfor` VALUES (529, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 20:08:42');
INSERT INTO `sys_logininfor` VALUES (530, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 20:39:20');
INSERT INTO `sys_logininfor` VALUES (531, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 20:39:30');
INSERT INTO `sys_logininfor` VALUES (532, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 20:39:33');
INSERT INTO `sys_logininfor` VALUES (533, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 20:39:58');
INSERT INTO `sys_logininfor` VALUES (534, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 20:40:02');
INSERT INTO `sys_logininfor` VALUES (535, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 20:42:08');
INSERT INTO `sys_logininfor` VALUES (536, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 20:42:11');
INSERT INTO `sys_logininfor` VALUES (537, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 21:17:09');
INSERT INTO `sys_logininfor` VALUES (538, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 21:22:00');
INSERT INTO `sys_logininfor` VALUES (539, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 21:32:06');
INSERT INTO `sys_logininfor` VALUES (540, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 21:35:39');
INSERT INTO `sys_logininfor` VALUES (541, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 21:35:41');
INSERT INTO `sys_logininfor` VALUES (542, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 22:02:13');
INSERT INTO `sys_logininfor` VALUES (543, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 22:25:21');
INSERT INTO `sys_logininfor` VALUES (544, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 22:25:33');
INSERT INTO `sys_logininfor` VALUES (545, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 22:25:36');
INSERT INTO `sys_logininfor` VALUES (546, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 22:26:23');
INSERT INTO `sys_logininfor` VALUES (547, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 22:26:26');
INSERT INTO `sys_logininfor` VALUES (548, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 22:27:10');
INSERT INTO `sys_logininfor` VALUES (549, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 22:27:14');
INSERT INTO `sys_logininfor` VALUES (550, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 22:27:59');
INSERT INTO `sys_logininfor` VALUES (551, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 22:28:07');
INSERT INTO `sys_logininfor` VALUES (552, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 22:29:35');
INSERT INTO `sys_logininfor` VALUES (553, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 22:29:36');
INSERT INTO `sys_logininfor` VALUES (554, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 22:46:21');
INSERT INTO `sys_logininfor` VALUES (555, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 23:16:42');
INSERT INTO `sys_logininfor` VALUES (556, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 23:16:50');
INSERT INTO `sys_logininfor` VALUES (557, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 23:16:53');
INSERT INTO `sys_logininfor` VALUES (558, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 23:22:09');
INSERT INTO `sys_logininfor` VALUES (559, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 23:22:18');
INSERT INTO `sys_logininfor` VALUES (560, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 23:22:21');
INSERT INTO `sys_logininfor` VALUES (561, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 23:22:35');
INSERT INTO `sys_logininfor` VALUES (562, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 23:22:38');
INSERT INTO `sys_logininfor` VALUES (563, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 23:28:14');
INSERT INTO `sys_logininfor` VALUES (564, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 23:28:19');
INSERT INTO `sys_logininfor` VALUES (565, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 23:28:22');
INSERT INTO `sys_logininfor` VALUES (566, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 23:32:08');
INSERT INTO `sys_logininfor` VALUES (567, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 23:32:10');
INSERT INTO `sys_logininfor` VALUES (568, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-10 23:33:51');
INSERT INTO `sys_logininfor` VALUES (569, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-10 23:33:54');
INSERT INTO `sys_logininfor` VALUES (570, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:26:46');
INSERT INTO `sys_logininfor` VALUES (571, 'youke12', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 09:27:05');
INSERT INTO `sys_logininfor` VALUES (572, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:27:10');
INSERT INTO `sys_logininfor` VALUES (573, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:31:03');
INSERT INTO `sys_logininfor` VALUES (574, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 09:31:52');
INSERT INTO `sys_logininfor` VALUES (575, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:31:54');
INSERT INTO `sys_logininfor` VALUES (576, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 09:32:44');
INSERT INTO `sys_logininfor` VALUES (577, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:32:47');
INSERT INTO `sys_logininfor` VALUES (578, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 09:32:57');
INSERT INTO `sys_logininfor` VALUES (579, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:33:00');
INSERT INTO `sys_logininfor` VALUES (580, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:37:22');
INSERT INTO `sys_logininfor` VALUES (581, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:44:51');
INSERT INTO `sys_logininfor` VALUES (582, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 09:45:38');
INSERT INTO `sys_logininfor` VALUES (583, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:45:40');
INSERT INTO `sys_logininfor` VALUES (584, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 09:46:58');
INSERT INTO `sys_logininfor` VALUES (585, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:47:01');
INSERT INTO `sys_logininfor` VALUES (586, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 09:47:41');
INSERT INTO `sys_logininfor` VALUES (587, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:47:44');
INSERT INTO `sys_logininfor` VALUES (588, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 09:47:56');
INSERT INTO `sys_logininfor` VALUES (589, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:47:58');
INSERT INTO `sys_logininfor` VALUES (590, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 09:50:23');
INSERT INTO `sys_logininfor` VALUES (591, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:50:25');
INSERT INTO `sys_logininfor` VALUES (592, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 09:56:48');
INSERT INTO `sys_logininfor` VALUES (593, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 10:02:40');
INSERT INTO `sys_logininfor` VALUES (594, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 10:02:50');
INSERT INTO `sys_logininfor` VALUES (595, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 10:02:53');
INSERT INTO `sys_logininfor` VALUES (596, 'qiye', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-11 10:03:12');
INSERT INTO `sys_logininfor` VALUES (597, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-11 10:03:14');
INSERT INTO `sys_logininfor` VALUES (598, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 09:50:13');
INSERT INTO `sys_logininfor` VALUES (599, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-12 09:53:20');
INSERT INTO `sys_logininfor` VALUES (600, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 09:53:24');
INSERT INTO `sys_logininfor` VALUES (601, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-12 09:55:56');
INSERT INTO `sys_logininfor` VALUES (602, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 09:55:58');
INSERT INTO `sys_logininfor` VALUES (603, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2020-02-12 09:56:00');
INSERT INTO `sys_logininfor` VALUES (604, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 09:56:03');
INSERT INTO `sys_logininfor` VALUES (605, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 10:26:33');
INSERT INTO `sys_logininfor` VALUES (606, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 10:33:42');
INSERT INTO `sys_logininfor` VALUES (607, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 10:36:49');
INSERT INTO `sys_logininfor` VALUES (608, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 10:49:56');
INSERT INTO `sys_logininfor` VALUES (609, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 11:05:12');
INSERT INTO `sys_logininfor` VALUES (610, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 11:35:02');
INSERT INTO `sys_logininfor` VALUES (611, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 11:40:39');
INSERT INTO `sys_logininfor` VALUES (612, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 11:57:45');
INSERT INTO `sys_logininfor` VALUES (613, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 12:03:00');
INSERT INTO `sys_logininfor` VALUES (614, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 12:09:38');
INSERT INTO `sys_logininfor` VALUES (615, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 12:12:28');
INSERT INTO `sys_logininfor` VALUES (616, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 12:16:40');
INSERT INTO `sys_logininfor` VALUES (617, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 12:23:49');
INSERT INTO `sys_logininfor` VALUES (618, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 12:43:50');
INSERT INTO `sys_logininfor` VALUES (619, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 12:50:38');
INSERT INTO `sys_logininfor` VALUES (620, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:06:31');
INSERT INTO `sys_logininfor` VALUES (621, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:09:50');
INSERT INTO `sys_logininfor` VALUES (622, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:11:21');
INSERT INTO `sys_logininfor` VALUES (623, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:13:54');
INSERT INTO `sys_logininfor` VALUES (624, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:16:24');
INSERT INTO `sys_logininfor` VALUES (625, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:17:36');
INSERT INTO `sys_logininfor` VALUES (626, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:19:28');
INSERT INTO `sys_logininfor` VALUES (627, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:26:27');
INSERT INTO `sys_logininfor` VALUES (628, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:28:29');
INSERT INTO `sys_logininfor` VALUES (629, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:30:25');
INSERT INTO `sys_logininfor` VALUES (630, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 13:32:42');
INSERT INTO `sys_logininfor` VALUES (631, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-02-12 13:53:23');
INSERT INTO `sys_logininfor` VALUES (632, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 14:04:52');
INSERT INTO `sys_logininfor` VALUES (633, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 14:16:56');
INSERT INTO `sys_logininfor` VALUES (634, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-02-12 14:19:28');
INSERT INTO `sys_logininfor` VALUES (635, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 14:25:33');
INSERT INTO `sys_logininfor` VALUES (636, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2020-02-12 14:28:34');
INSERT INTO `sys_logininfor` VALUES (637, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 14:35:50');
INSERT INTO `sys_logininfor` VALUES (638, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2020-02-12 14:44:19');
INSERT INTO `sys_logininfor` VALUES (639, 'youke', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 13:42:51');
INSERT INTO `sys_logininfor` VALUES (640, 'youke', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-06 13:43:32');
INSERT INTO `sys_logininfor` VALUES (641, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 13:47:31');
INSERT INTO `sys_logininfor` VALUES (642, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-06 13:48:16');
INSERT INTO `sys_logininfor` VALUES (643, 'qiye', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2021-11-06 13:48:55');
INSERT INTO `sys_logininfor` VALUES (644, 'qiye', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 13:49:08');
INSERT INTO `sys_logininfor` VALUES (645, 'youke15', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 13:50:30');
INSERT INTO `sys_logininfor` VALUES (646, 'youke13', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 13:51:14');
INSERT INTO `sys_logininfor` VALUES (647, 'youke1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 13:56:05');
INSERT INTO `sys_logininfor` VALUES (648, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 13:58:02');
INSERT INTO `sys_logininfor` VALUES (649, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 14:00:55');
INSERT INTO `sys_logininfor` VALUES (650, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 14:08:48');
INSERT INTO `sys_logininfor` VALUES (651, 'qiye', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-06 14:15:06');
INSERT INTO `sys_logininfor` VALUES (652, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 10:57:05');
INSERT INTO `sys_logininfor` VALUES (653, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-08 10:57:30');
INSERT INTO `sys_logininfor` VALUES (654, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 11:00:22');
INSERT INTO `sys_logininfor` VALUES (655, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-08 11:07:37');
INSERT INTO `sys_logininfor` VALUES (656, 'youke13', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 11:07:45');
INSERT INTO `sys_logininfor` VALUES (657, 'youke13', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-08 11:08:49');
INSERT INTO `sys_logininfor` VALUES (658, 'qiye', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 11:08:58');
INSERT INTO `sys_logininfor` VALUES (659, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 11:09:58');
INSERT INTO `sys_logininfor` VALUES (660, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-08 11:11:48');
INSERT INTO `sys_logininfor` VALUES (661, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 11:11:56');
INSERT INTO `sys_logininfor` VALUES (662, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 11:49:14');
INSERT INTO `sys_logininfor` VALUES (663, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 16:29:17');
INSERT INTO `sys_logininfor` VALUES (664, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 16:57:32');
INSERT INTO `sys_logininfor` VALUES (665, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 17:14:37');
INSERT INTO `sys_logininfor` VALUES (666, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 17:39:08');
INSERT INTO `sys_logininfor` VALUES (667, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 17:41:54');
INSERT INTO `sys_logininfor` VALUES (668, 'qiu', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2021-11-08 17:48:06');
INSERT INTO `sys_logininfor` VALUES (669, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 17:48:08');
INSERT INTO `sys_logininfor` VALUES (670, 'youke13', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 19:23:05');
INSERT INTO `sys_logininfor` VALUES (671, 'youke13', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-08 19:26:52');
INSERT INTO `sys_logininfor` VALUES (672, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 19:26:55');
INSERT INTO `sys_logininfor` VALUES (673, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2021-11-08 20:20:43');
INSERT INTO `sys_logininfor` VALUES (674, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 20:21:34');
INSERT INTO `sys_logininfor` VALUES (675, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-08 20:22:42');
INSERT INTO `sys_logininfor` VALUES (676, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2021-11-08 20:26:57');
INSERT INTO `sys_logininfor` VALUES (677, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2021-11-08 20:27:00');
INSERT INTO `sys_logininfor` VALUES (678, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-11-08 20:27:01');
INSERT INTO `sys_logininfor` VALUES (679, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-11-08 20:39:37');
INSERT INTO `sys_logininfor` VALUES (680, 'qiye', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-11-08 20:44:40');
INSERT INTO `sys_logininfor` VALUES (681, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-11-08 20:44:59');
INSERT INTO `sys_logininfor` VALUES (682, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-11-08 20:45:12');
INSERT INTO `sys_logininfor` VALUES (683, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-11-08 20:45:51');
INSERT INTO `sys_logininfor` VALUES (684, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-11-08 20:46:27');
INSERT INTO `sys_logininfor` VALUES (685, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-11-08 20:50:14');
INSERT INTO `sys_logininfor` VALUES (686, 'qiye', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-11-08 20:50:22');
INSERT INTO `sys_logininfor` VALUES (687, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-11-08 20:54:46');
INSERT INTO `sys_logininfor` VALUES (688, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 19:18:48');
INSERT INTO `sys_logininfor` VALUES (689, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-27 19:19:41');
INSERT INTO `sys_logininfor` VALUES (690, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 19:19:42');
INSERT INTO `sys_logininfor` VALUES (691, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 19:23:43');
INSERT INTO `sys_logininfor` VALUES (692, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:26:22');
INSERT INTO `sys_logininfor` VALUES (693, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:26:38');
INSERT INTO `sys_logininfor` VALUES (694, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2021-12-27 20:28:06');
INSERT INTO `sys_logininfor` VALUES (695, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:33:37');
INSERT INTO `sys_logininfor` VALUES (696, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:35:33');
INSERT INTO `sys_logininfor` VALUES (697, 'admin', '127.0.0.1', '内网IP', 'Microsoft Edge', 'Windows 10', '0', '登录成功', '2021-12-27 20:43:40');
INSERT INTO `sys_logininfor` VALUES (698, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:44:53');
INSERT INTO `sys_logininfor` VALUES (699, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:48:00');
INSERT INTO `sys_logininfor` VALUES (700, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:53:39');
INSERT INTO `sys_logininfor` VALUES (701, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-12-27 20:53:57');
INSERT INTO `sys_logininfor` VALUES (702, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:53:59');
INSERT INTO `sys_logininfor` VALUES (703, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:56:02');
INSERT INTO `sys_logininfor` VALUES (704, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:58:18');
INSERT INTO `sys_logininfor` VALUES (705, 'youke12', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 20:59:44');
INSERT INTO `sys_logininfor` VALUES (706, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:02:07');
INSERT INTO `sys_logininfor` VALUES (707, 'youke11', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:02:49');
INSERT INTO `sys_logininfor` VALUES (708, 'zhuce2', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:03:38');
INSERT INTO `sys_logininfor` VALUES (709, 'zhuce1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:03:53');
INSERT INTO `sys_logininfor` VALUES (710, 'youke14', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:04:04');
INSERT INTO `sys_logininfor` VALUES (711, 'zhuce', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:04:31');
INSERT INTO `sys_logininfor` VALUES (712, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:05:03');
INSERT INTO `sys_logininfor` VALUES (713, 'qiye', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:05:22');
INSERT INTO `sys_logininfor` VALUES (714, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:05:36');
INSERT INTO `sys_logininfor` VALUES (715, 'zhuce', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:06:24');
INSERT INTO `sys_logininfor` VALUES (716, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:07:05');
INSERT INTO `sys_logininfor` VALUES (717, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-12-27 21:13:18');
INSERT INTO `sys_logininfor` VALUES (718, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-12-27 22:26:13');
INSERT INTO `sys_logininfor` VALUES (719, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2021-12-27 22:27:49');
INSERT INTO `sys_logininfor` VALUES (720, 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2021-12-27 22:28:21');
INSERT INTO `sys_logininfor` VALUES (721, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-20 17:06:13');
INSERT INTO `sys_logininfor` VALUES (722, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-20 17:07:49');
INSERT INTO `sys_logininfor` VALUES (723, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-20 17:07:56');
INSERT INTO `sys_logininfor` VALUES (724, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-20 17:09:40');
INSERT INTO `sys_logininfor` VALUES (725, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-20 17:09:43');
INSERT INTO `sys_logininfor` VALUES (726, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-20 17:18:41');
INSERT INTO `sys_logininfor` VALUES (727, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-20 17:20:59');
INSERT INTO `sys_logininfor` VALUES (728, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-02-20 17:25:50');
INSERT INTO `sys_logininfor` VALUES (729, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-02-20 17:25:51');
INSERT INTO `sys_logininfor` VALUES (730, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 08:50:23');
INSERT INTO `sys_logininfor` VALUES (731, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-03-12 08:50:27');
INSERT INTO `sys_logininfor` VALUES (732, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 08:50:28');
INSERT INTO `sys_logininfor` VALUES (733, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 08:53:24');
INSERT INTO `sys_logininfor` VALUES (734, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-03-12 08:58:48');
INSERT INTO `sys_logininfor` VALUES (735, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 08:59:00');
INSERT INTO `sys_logininfor` VALUES (736, 'qiye', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 08:59:53');
INSERT INTO `sys_logininfor` VALUES (737, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 09:01:37');
INSERT INTO `sys_logininfor` VALUES (738, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 09:18:58');
INSERT INTO `sys_logininfor` VALUES (739, 'qiuzhi', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-03-12 09:25:37');
INSERT INTO `sys_logininfor` VALUES (740, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 09:25:39');
INSERT INTO `sys_logininfor` VALUES (741, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 09:33:22');
INSERT INTO `sys_logininfor` VALUES (742, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 10:33:12');
INSERT INTO `sys_logininfor` VALUES (743, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 10:36:51');
INSERT INTO `sys_logininfor` VALUES (744, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 10:41:12');
INSERT INTO `sys_logininfor` VALUES (745, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 10:55:43');
INSERT INTO `sys_logininfor` VALUES (746, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 11:01:13');
INSERT INTO `sys_logininfor` VALUES (747, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 11:06:06');
INSERT INTO `sys_logininfor` VALUES (748, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 11:08:25');
INSERT INTO `sys_logininfor` VALUES (749, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 11:09:00');
INSERT INTO `sys_logininfor` VALUES (750, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 11:12:29');
INSERT INTO `sys_logininfor` VALUES (751, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 11:13:58');
INSERT INTO `sys_logininfor` VALUES (752, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 11:22:11');
INSERT INTO `sys_logininfor` VALUES (753, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 13:18:54');
INSERT INTO `sys_logininfor` VALUES (754, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 13:45:02');
INSERT INTO `sys_logininfor` VALUES (755, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 15:20:00');
INSERT INTO `sys_logininfor` VALUES (756, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 15:21:48');
INSERT INTO `sys_logininfor` VALUES (757, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 15:26:26');
INSERT INTO `sys_logininfor` VALUES (758, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 15:38:55');
INSERT INTO `sys_logininfor` VALUES (759, '755', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2022-03-12 15:40:34');
INSERT INTO `sys_logininfor` VALUES (760, '755', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误2次', '2022-03-12 15:42:38');
INSERT INTO `sys_logininfor` VALUES (761, '755', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 15:43:24');
INSERT INTO `sys_logininfor` VALUES (762, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 16:45:06');
INSERT INTO `sys_logininfor` VALUES (763, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 19:24:39');
INSERT INTO `sys_logininfor` VALUES (764, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 20:17:09');
INSERT INTO `sys_logininfor` VALUES (765, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 21:07:39');
INSERT INTO `sys_logininfor` VALUES (766, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 21:10:11');
INSERT INTO `sys_logininfor` VALUES (767, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 21:24:04');
INSERT INTO `sys_logininfor` VALUES (768, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 21:29:08');
INSERT INTO `sys_logininfor` VALUES (769, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 21:30:27');
INSERT INTO `sys_logininfor` VALUES (770, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 21:32:18');
INSERT INTO `sys_logininfor` VALUES (771, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 21:40:22');
INSERT INTO `sys_logininfor` VALUES (772, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 21:54:52');
INSERT INTO `sys_logininfor` VALUES (773, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:00:56');
INSERT INTO `sys_logininfor` VALUES (774, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:02:50');
INSERT INTO `sys_logininfor` VALUES (775, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:13:22');
INSERT INTO `sys_logininfor` VALUES (776, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:17:39');
INSERT INTO `sys_logininfor` VALUES (777, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:22:41');
INSERT INTO `sys_logininfor` VALUES (778, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:24:36');
INSERT INTO `sys_logininfor` VALUES (779, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:29:09');
INSERT INTO `sys_logininfor` VALUES (780, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:32:31');
INSERT INTO `sys_logininfor` VALUES (781, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:39:23');
INSERT INTO `sys_logininfor` VALUES (782, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:54:02');
INSERT INTO `sys_logininfor` VALUES (783, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 22:56:14');
INSERT INTO `sys_logininfor` VALUES (784, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 23:05:43');
INSERT INTO `sys_logininfor` VALUES (785, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 23:10:12');
INSERT INTO `sys_logininfor` VALUES (786, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 23:15:49');
INSERT INTO `sys_logininfor` VALUES (787, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 23:26:53');
INSERT INTO `sys_logininfor` VALUES (788, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 23:29:39');
INSERT INTO `sys_logininfor` VALUES (789, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 23:36:09');
INSERT INTO `sys_logininfor` VALUES (790, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-12 23:38:01');
INSERT INTO `sys_logininfor` VALUES (791, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 09:32:48');
INSERT INTO `sys_logininfor` VALUES (792, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 09:37:23');
INSERT INTO `sys_logininfor` VALUES (793, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 09:43:47');
INSERT INTO `sys_logininfor` VALUES (794, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 09:48:21');
INSERT INTO `sys_logininfor` VALUES (795, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 09:49:47');
INSERT INTO `sys_logininfor` VALUES (796, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 10:18:13');
INSERT INTO `sys_logininfor` VALUES (797, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 10:27:38');
INSERT INTO `sys_logininfor` VALUES (798, 'youke1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 10:27:56');
INSERT INTO `sys_logininfor` VALUES (799, 'youke13', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 10:35:08');
INSERT INTO `sys_logininfor` VALUES (800, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 11:01:06');
INSERT INTO `sys_logininfor` VALUES (801, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-13 11:44:34');
INSERT INTO `sys_logininfor` VALUES (802, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-14 15:06:37');
INSERT INTO `sys_logininfor` VALUES (803, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-15 19:33:15');
INSERT INTO `sys_logininfor` VALUES (804, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-15 20:19:27');
INSERT INTO `sys_logininfor` VALUES (805, 'youke11', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-15 20:19:46');
INSERT INTO `sys_logininfor` VALUES (806, 'youke11', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2022-03-15 20:19:51');
INSERT INTO `sys_logininfor` VALUES (807, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-15 20:44:51');
INSERT INTO `sys_logininfor` VALUES (808, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-15 20:51:19');
INSERT INTO `sys_logininfor` VALUES (809, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 12:46:22');
INSERT INTO `sys_logininfor` VALUES (810, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2022-03-23 12:48:33');
INSERT INTO `sys_logininfor` VALUES (811, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 12:48:41');
INSERT INTO `sys_logininfor` VALUES (812, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 13:06:24');
INSERT INTO `sys_logininfor` VALUES (813, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 13:16:25');
INSERT INTO `sys_logininfor` VALUES (814, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 13:18:39');
INSERT INTO `sys_logininfor` VALUES (815, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2022-03-23 14:22:22');
INSERT INTO `sys_logininfor` VALUES (816, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 14:22:27');
INSERT INTO `sys_logininfor` VALUES (817, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 14:24:41');
INSERT INTO `sys_logininfor` VALUES (818, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 14:42:33');
INSERT INTO `sys_logininfor` VALUES (819, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '密码输入错误1次', '2022-03-23 14:45:32');
INSERT INTO `sys_logininfor` VALUES (820, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 14:45:37');
INSERT INTO `sys_logininfor` VALUES (821, 'youke11', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 15:02:48');
INSERT INTO `sys_logininfor` VALUES (822, 'youke11', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 15:04:48');
INSERT INTO `sys_logininfor` VALUES (823, 'youke', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 15:06:54');
INSERT INTO `sys_logininfor` VALUES (824, 'youke', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 15:09:10');
INSERT INTO `sys_logininfor` VALUES (825, 'youke11', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 15:29:16');
INSERT INTO `sys_logininfor` VALUES (826, 'youke13', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 15:29:25');
INSERT INTO `sys_logininfor` VALUES (827, 'youke1', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 15:29:46');
INSERT INTO `sys_logininfor` VALUES (828, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-03-23 15:30:22');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1087 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', 'menuItem', 'M', '1', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-08 10:39:16', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', 'menuItem', 'M', '1', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-11 09:57:11', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', 'menuItem', 'C', '1', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-11 09:57:27', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', 'menuItem', 'C', '1', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-11 09:57:33', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', 'menuItem', 'C', '1', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-11 09:57:43', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', 'menuItem', 'C', '1', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-11 09:57:51', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', 'menuItem', 'M', '1', '', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-11 09:57:59', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1062, '兼职系统', 0, 4, '#', 'menuItem', 'M', '0', NULL, 'fa fa-handshake-o', 'admin', '2020-02-05 11:52:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1063, '简历管理', 1062, 1, '/job/resume', 'menuItem', 'C', '0', 'job:resume:view', '#', 'admin', '2020-02-05 11:53:07', 'admin', '2020-02-06 13:51:55', '');
INSERT INTO `sys_menu` VALUES (1064, '职位管理', 1062, 2, '/job/position', 'menuItem', 'C', '0', 'job:position:view', '#', 'admin', '2020-02-05 12:03:54', 'admin', '2020-02-05 15:47:51', '');
INSERT INTO `sys_menu` VALUES (1065, '新增', 1063, 1, '#', 'menuItem', 'F', '0', 'job:position:add', '#', 'admin', '2020-02-05 12:04:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1066, '编辑', 1063, 2, '#', 'menuItem', 'F', '0', 'job:position:edit', '#', 'admin', '2020-02-05 12:05:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1067, '删除', 1063, 3, '#', 'menuItem', 'F', '0', 'job:position:remove', '#', 'admin', '2020-02-05 12:05:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1068, '查看列表', 1063, 4, '#', 'menuItem', 'F', '0', 'job:resume:list', '#', 'admin', '2020-02-05 12:45:44', 'admin', '2020-02-05 12:48:58', '');
INSERT INTO `sys_menu` VALUES (1069, '人才资源库', 1062, 1, '/job/resumeLib', 'menuItem', 'C', '0', 'job:resumeLib:view', '#', 'admin', '2020-02-05 13:19:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1070, '职位资源库', 1062, 4, '/job/positionCenter', 'menuItem', 'C', '0', '', '#', 'admin', '2020-02-05 15:48:12', 'admin', '2020-02-10 12:54:26', '');
INSERT INTO `sys_menu` VALUES (1083, 'vip用户管理', 1062, 5, '/job/vip', 'menuItem', 'C', '0', NULL, '#', 'admin', '2020-02-07 12:12:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1085, '企业管理', 1062, 6, '/job/enterprise', 'menuItem', 'C', '0', NULL, '#', 'admin', '2020-02-10 13:54:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1086, '数据大屏', 0, 8, '/dashboard', 'menuItem', 'C', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 298 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 09:49:32');
INSERT INTO `sys_oper_log` VALUES (2, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'ry', '测试部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 09:50:05');
INSERT INTO `sys_oper_log` VALUES (3, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"普通角色\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,1046,2,109,1047,1048,1049,110,1050,1051,1052,1053,1054,1055,1056,111,112,3,113,114,1057,1058,1059,1060,1061,115\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 09:50:56');
INSERT INTO `sys_oper_log` VALUES (4, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"职位类别\"],\"dictType\":[\"sys_position_type\"],\"status\":[\"0\"],\"remark\":[\"职位类别\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:13:26');
INSERT INTO `sys_oper_log` VALUES (5, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"java\"],\"dictValue\":[\"java\"],\"dictType\":[\"sys_position_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:14:42');
INSERT INTO `sys_oper_log` VALUES (6, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"php\"],\"dictValue\":[\"php\"],\"dictType\":[\"sys_position_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:15:05');
INSERT INTO `sys_oper_log` VALUES (7, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"c#\"],\"dictValue\":[\"c#\"],\"dictType\":[\"sys_position_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:15:18');
INSERT INTO `sys_oper_log` VALUES (8, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"薪资范围\"],\"dictType\":[\"sys_salary\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:15:51');
INSERT INTO `sys_oper_log` VALUES (9, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"1000以下\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_salary\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:16:18');
INSERT INTO `sys_oper_log` VALUES (10, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"1000~3000\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_salary\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:16:34');
INSERT INTO `sys_oper_log` VALUES (11, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"3001~8000\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_salary\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:16:51');
INSERT INTO `sys_oper_log` VALUES (12, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"8001~12000\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_salary\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:17:07');
INSERT INTO `sys_oper_log` VALUES (13, '字典类型', 2, 'com.ruoyi.project.system.dict.controller.DictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"12\"],\"dictName\":[\"薪资范围\"],\"dictType\":[\"job_salary\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:25:40');
INSERT INTO `sys_oper_log` VALUES (14, '字典类型', 2, 'com.ruoyi.project.system.dict.controller.DictTypeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/edit', '127.0.0.1', '内网IP', '{\"dictId\":[\"11\"],\"dictName\":[\"职位类别\"],\"dictType\":[\"job_position_type\"],\"status\":[\"0\"],\"remark\":[\"职位类别\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:25:47');
INSERT INTO `sys_oper_log` VALUES (15, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"简历状态\"],\"dictType\":[\"job_resume_status\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:26:28');
INSERT INTO `sys_oper_log` VALUES (16, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"未发布\"],\"dictValue\":[\"0\"],\"dictType\":[\"job_resume_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:26:54');
INSERT INTO `sys_oper_log` VALUES (17, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"发布\"],\"dictValue\":[\"1\"],\"dictType\":[\"job_resume_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:27:06');
INSERT INTO `sys_oper_log` VALUES (18, '字典数据', 2, 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"29\"],\"dictLabel\":[\"计算机类\"],\"dictValue\":[\"0\"],\"dictType\":[\"job_position_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:37:05');
INSERT INTO `sys_oper_log` VALUES (19, '字典数据', 2, 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"30\"],\"dictLabel\":[\"文职类\"],\"dictValue\":[\"1\"],\"dictType\":[\"job_position_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:37:16');
INSERT INTO `sys_oper_log` VALUES (20, '字典数据', 2, 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"31\"],\"dictLabel\":[\"销售类\"],\"dictValue\":[\"2\"],\"dictType\":[\"job_position_type\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 10:37:27');
INSERT INTO `sys_oper_log` VALUES (21, '角色管理', 1, 'com.ruoyi.project.system.role.controller.RoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"求职者\"],\"roleKey\":[\"job_wanted\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 11:25:28');
INSERT INTO `sys_oper_log` VALUES (22, '角色管理', 1, 'com.ruoyi.project.system.role.controller.RoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"企业\"],\"roleKey\":[\"enterprise\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 11:25:48');
INSERT INTO `sys_oper_log` VALUES (23, '角色管理', 1, 'com.ruoyi.project.system.role.controller.RoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"游客\"],\"roleKey\":[\"tourist\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 11:26:13');
INSERT INTO `sys_oper_log` VALUES (24, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"job_resume\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 11:30:55');
INSERT INTO `sys_oper_log` VALUES (25, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"job_position\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 11:31:06');
INSERT INTO `sys_oper_log` VALUES (26, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"job_position\"],\"tableComment\":[\"企业职位\"],\"className\":[\"JobPosition\"],\"functionAuthor\":[\".\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"13\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"null\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"positionId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"14\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"企业id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"15\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"职位名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"positionName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"16\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"职位类型\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"positionType\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"job_position_type\"],\"columns[4].columnId\":[\"17\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"工作地点\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"area\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"18\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 11:35:50');
INSERT INTO `sys_oper_log` VALUES (27, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/job_position', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-02-05 11:38:44');
INSERT INTO `sys_oper_log` VALUES (28, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"job_resume\"],\"tableComment\":[\"简历\"],\"className\":[\"JobResume\"],\"functionAuthor\":[\".\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"简历id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"resumeId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"求职者id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"职位类别\"],\"columns[2].javaType\":[\"Integer\"],\"columns[2].javaField\":[\"positionType\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"job_position_type\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"简历内容\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"content\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"textarea\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"地区\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"area\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"]', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 11:40:03');
INSERT INTO `sys_oper_log` VALUES (29, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/job_resume', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-02-05 11:40:06');
INSERT INTO `sys_oper_log` VALUES (30, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"兼职系统\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-handshake-o\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 11:52:26');
INSERT INTO `sys_oper_log` VALUES (31, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"简历中心\"],\"url\":[\"job/resume\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 11:53:07');
INSERT INTO `sys_oper_log` VALUES (32, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1063\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"简历中心\"],\"url\":[\"/job/resume\"],\"target\":[\"menuItem\"],\"perms\":[\"job:resume:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 11:53:48');
INSERT INTO `sys_oper_log` VALUES (33, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"\"]}', 'null', 1, '不允许操作超级管理员角色', '2020-02-05 11:54:03');
INSERT INTO `sys_oper_log` VALUES (34, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"职位中心\"],\"url\":[\"/job/position\"],\"target\":[\"menuItem\"],\"perms\":[\"job:position:view\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:03:54');
INSERT INTO `sys_oper_log` VALUES (35, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"新增\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"job:position:add\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:04:48');
INSERT INTO `sys_oper_log` VALUES (36, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"编辑\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"job:position:edit\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:05:12');
INSERT INTO `sys_oper_log` VALUES (37, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"删除\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"job:position:remove\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:05:31');
INSERT INTO `sys_oper_log` VALUES (38, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"地区\"],\"dictType\":[\"job_area\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:13:16');
INSERT INTO `sys_oper_log` VALUES (39, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"北京市\"],\"dictValue\":[\"0\"],\"dictType\":[\"job_area\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:13:31');
INSERT INTO `sys_oper_log` VALUES (40, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"上海市\"],\"dictValue\":[\"1\"],\"dictType\":[\"job_area\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:13:40');
INSERT INTO `sys_oper_log` VALUES (41, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"广州市\"],\"dictValue\":[\"2\"],\"dictType\":[\"job_area\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:13:51');
INSERT INTO `sys_oper_log` VALUES (42, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"深圳市\"],\"dictValue\":[\"3\"],\"dictType\":[\"job_area\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:14:03');
INSERT INTO `sys_oper_log` VALUES (43, '简历', 1, 'com.ruoyi.project.job.resume.controller.JobResumeController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/resume/add', '127.0.0.1', '内网IP', '{\"positionType\":[\"0\"],\"content\":[\"内容\"],\"area\":[\"0\"],\"salary\":[\"1\"],\"birthday\":[\"2020-02-05\"],\"phone\":[\"12345678901\"],\"workExperience\":[\"\"],\"status\":[\"0\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.job.resume.mapper.JobResumeMapper.insertJobResume-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into job_resume          ( position_type,             content,             area,             salary,             birthday,             phone,                          status,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2020-02-05 12:14:39');
INSERT INTO `sys_oper_log` VALUES (44, '简历', 1, 'com.ruoyi.project.job.resume.controller.JobResumeController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/resume/add', '127.0.0.1', '内网IP', '{\"positionType\":[\"0\"],\"content\":[\"111\"],\"area\":[\"0\"],\"salary\":[\"0\"],\"birthday\":[\"2020-02-05\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:16:19');
INSERT INTO `sys_oper_log` VALUES (45, '发布简历', 0, 'com.ruoyi.project.job.resume.controller.JobResumeController.enable()', 'POST', 1, 'admin', '研发部门', '/job/resume/enable', '127.0.0.1', '内网IP', '{\"resumeId\":[\"1\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:31:49');
INSERT INTO `sys_oper_log` VALUES (46, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1063\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"简历中心\"],\"url\":[\"/job/resume\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:45:23');
INSERT INTO `sys_oper_log` VALUES (47, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"查看\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"job:resume:view\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:45:44');
INSERT INTO `sys_oper_log` VALUES (48, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"qiye\"],\"deptName\":[\"研发部门\"],\"phonenumber\":[\"15838772858\"],\"email\":[\"111@qq.com\"],\"loginName\":[\"qiye\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"4\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"4\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:47:04');
INSERT INTO `sys_oper_log` VALUES (49, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"企业\"],\"roleKey\":[\"enterprise\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1062,1063,1068\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:47:47');
INSERT INTO `sys_oper_log` VALUES (50, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1068\"],\"parentId\":[\"1063\"],\"menuType\":[\"F\"],\"menuName\":[\"查看列表\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"job:resume:list\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:48:58');
INSERT INTO `sys_oper_log` VALUES (51, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1063\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"简历中心\"],\"url\":[\"/job/resume\"],\"target\":[\"menuItem\"],\"perms\":[\"job:resume:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:49:08');
INSERT INTO `sys_oper_log` VALUES (52, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"企业\"],\"roleKey\":[\"enterprise\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1062,1063,1068\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 12:49:21');
INSERT INTO `sys_oper_log` VALUES (53, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"人才资源库\"],\"url\":[\"/job/resumeLib\"],\"target\":[\"menuItem\"],\"perms\":[\"job:resumeLib:view\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 13:19:14');
INSERT INTO `sys_oper_log` VALUES (54, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"企业\"],\"roleKey\":[\"enterprise\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1062,1069\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 13:20:27');
INSERT INTO `sys_oper_log` VALUES (55, '简历', 2, 'com.ruoyi.project.job.resume.controller.JobResumeController.editSave()', 'POST', 1, 'admin', '研发部门', '/job/resume/edit', '127.0.0.1', '内网IP', '{\"resumeId\":[\"1\"],\"userId\":[\"1\"],\"positionType\":[\"0\"],\"content\":[\"1111\"],\"area\":[\"0\"],\"salary\":[\"0\"],\"birthday\":[\"2020-02-05\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 14:26:35');
INSERT INTO `sys_oper_log` VALUES (56, '职位', 1, 'com.ruoyi.project.job.position.controller.JobPositionController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/position/add', '127.0.0.1', '内网IP', '{\"positionName\":[\"Java开发工程师\"],\"positionType\":[\"0\"],\"area\":[\"0\"],\"positionSalary\":[\"0\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'position_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.job.position.mapper.JobPositionMapper.insertJobPosition-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into job_position          ( user_id,             position_name,             position_type,             area,             position_salary,                          create_time )           values ( ?,             ?,             ?,             ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'position_id\' doesn\'t have a default value\n; Field \'position_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'position_id\' doesn\'t have a default value', '2020-02-05 14:30:56');
INSERT INTO `sys_oper_log` VALUES (57, '职位', 1, 'com.ruoyi.project.job.position.controller.JobPositionController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/position/add', '127.0.0.1', '内网IP', '{\"positionName\":[\"Java开发工程师\"],\"positionType\":[\"0\"],\"area\":[\"0\"],\"positionSalary\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 14:32:15');
INSERT INTO `sys_oper_log` VALUES (58, '发布职位', 0, 'com.ruoyi.project.job.position.controller.JobPositionController.enable()', 'POST', 1, 'admin', '研发部门', '/job/position/enable', '127.0.0.1', '内网IP', '{\"positionId\":[\"1\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 14:33:11');
INSERT INTO `sys_oper_log` VALUES (59, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"企业\"],\"roleKey\":[\"enterprise\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1062,1069,1064\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 14:38:13');
INSERT INTO `sys_oper_log` VALUES (60, '职位', 1, 'com.ruoyi.project.job.position.controller.JobPositionController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/position/add', '127.0.0.1', '内网IP', '{\"positionName\":[\"Java开发工程师\"],\"positionType\":[\"0\"],\"area\":[\"3\"],\"positionSalary\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 14:41:17');
INSERT INTO `sys_oper_log` VALUES (61, '发布职位', 0, 'com.ruoyi.project.job.position.controller.JobPositionController.enable()', 'POST', 1, 'qiye', '研发部门', '/job/position/enable', '127.0.0.1', '内网IP', '{\"positionId\":[\"2\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 14:42:03');
INSERT INTO `sys_oper_log` VALUES (62, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1064\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"职位管理\"],\"url\":[\"/job/position\"],\"target\":[\"menuItem\"],\"perms\":[\"job:position:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 15:47:51');
INSERT INTO `sys_oper_log` VALUES (63, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"职位中心\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 15:48:12');
INSERT INTO `sys_oper_log` VALUES (64, '角色管理', 4, 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"userIds\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 16:11:27');
INSERT INTO `sys_oper_log` VALUES (65, '角色管理', 4, 'com.ruoyi.project.system.role.controller.RoleController.cancelAuthUser()', 'POST', 1, 'admin', '研发部门', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"userId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 16:11:30');
INSERT INTO `sys_oper_log` VALUES (66, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1070\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"职位中心\"],\"url\":[\"/job/positionCenter\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 16:45:33');
INSERT INTO `sys_oper_log` VALUES (67, '角色管理', 4, 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"userIds\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 17:36:42');
INSERT INTO `sys_oper_log` VALUES (68, '角色管理', 4, 'com.ruoyi.project.system.role.controller.RoleController.cancelAuthUser()', 'POST', 1, 'admin', '研发部门', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"userId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 17:36:53');
INSERT INTO `sys_oper_log` VALUES (69, '投递简历', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.selectAuthUserAll()', 'POST', 1, 'admin', '研发部门', '/job/resumeLib/delivery', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"positionId\":[\"1\"],\"resumeId\":[\"1\"]}', 'null', 0, NULL, '2020-02-05 17:46:33');
INSERT INTO `sys_oper_log` VALUES (70, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"job_apply_detail\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:12:43');
INSERT INTO `sys_oper_log` VALUES (71, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"job_receive_detail\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:12:49');
INSERT INTO `sys_oper_log` VALUES (72, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/job_apply_detail', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-02-05 18:12:54');
INSERT INTO `sys_oper_log` VALUES (73, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/job_receive_detail', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-02-05 18:12:57');
INSERT INTO `sys_oper_log` VALUES (74, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"处理状态\"],\"dictType\":[\"job_operate_status\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:18:02');
INSERT INTO `sys_oper_log` VALUES (75, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"未处理\"],\"dictValue\":[\"0\"],\"dictType\":[\"job_operate_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:18:19');
INSERT INTO `sys_oper_log` VALUES (76, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"已处理\"],\"dictValue\":[\"1\"],\"dictType\":[\"job_operate_status\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:18:32');
INSERT INTO `sys_oper_log` VALUES (77, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"处理结果\"],\"dictType\":[\"job_operate_result\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:18:52');
INSERT INTO `sys_oper_log` VALUES (78, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"同意\"],\"dictValue\":[\"0\"],\"dictType\":[\"job_operate_result\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:19:13');
INSERT INTO `sys_oper_log` VALUES (79, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"拒绝\"],\"dictValue\":[\"1\"],\"dictType\":[\"job_operate_result\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:19:21');
INSERT INTO `sys_oper_log` VALUES (80, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"job_receive_detail\"],\"tableComment\":[\"职位接受记录\"],\"className\":[\"JobReceiveDetail\"],\"functionAuthor\":[\"。\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"职位接收id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"receiveId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"申请id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"applyId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"企业id\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"userId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"职位id\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"positionId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"简历id\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"resumeId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:21:02');
INSERT INTO `sys_oper_log` VALUES (81, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/job_receive_detail', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-02-05 18:21:07');
INSERT INTO `sys_oper_log` VALUES (82, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:21:23');
INSERT INTO `sys_oper_log` VALUES (83, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"job_apply_detail\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:21:27');
INSERT INTO `sys_oper_log` VALUES (84, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"job_apply_detail\"],\"tableComment\":[\"职位申请记录\"],\"className\":[\"JobApplyDetail\"],\"functionAuthor\":[\".\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"40\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"申请Id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"applyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"41\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"求职者id（发送简历的userid）\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"42\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"企业id(职位的userid)\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"enterpriseId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"43\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"职位id\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"positionId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"44\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"简历id\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"resumeId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"45\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:22:01');
INSERT INTO `sys_oper_log` VALUES (85, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/job_apply_detail', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-02-05 18:22:04');
INSERT INTO `sys_oper_log` VALUES (86, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"job_apply_detail\"],\"tableComment\":[\"职位申请记录\"],\"className\":[\"JobApplyDetail\"],\"functionAuthor\":[\".\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"40\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"申请Id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"applyId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"41\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"求职者id（发送简历的userid）\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"42\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"企业id(职位的userid)\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"enterpriseId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"43\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"职位id\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"positionId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"44\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"简历id\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"resumeId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"45\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:28:02');
INSERT INTO `sys_oper_log` VALUES (87, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/job_apply_detail', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-02-05 18:28:05');
INSERT INTO `sys_oper_log` VALUES (88, '投递简历', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.selectAuthUserAll()', 'POST', 1, 'admin', '研发部门', '/job/resumeLib/delivery', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"positionId\":[\"1\"],\"resumeId\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 18:44:46');
INSERT INTO `sys_oper_log` VALUES (89, '简历', 2, 'com.ruoyi.project.job.resume.controller.JobResumeController.editSave()', 'POST', 1, 'admin', '研发部门', '/job/resume/edit', '127.0.0.1', '内网IP', '{\"resumeId\":[\"1\"],\"userId\":[\"1\"],\"resumeName\":[\"java\"],\"positionType\":[\"0\"],\"content\":[\"1111\"],\"area\":[\"0\"],\"salary\":[\"0\"],\"birthday\":[\"2020-02-05\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"],\"status\":[\"1\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'java\',\n            user_id = 1,\n            position_type = 0,\n            cont\' at line 2\r\n### The error may involve com.ruoyi.project.job.resume.mapper.JobResumeMapper.updateJobResume-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update job_resume          SET ?,             user_id = ?,             position_type = ?,             content = ?,             area = ?,             salary = ?,             birthday = ?,             phone = ?,                          status = ?,                          update_time = ?          where resume_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'java\',\n            user_id = 1,\n            position_type = 0,\n            cont\' at line 2\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'java\',\n            user_id = 1,\n            position_type = 0,\n            cont\' at line 2', '2020-02-05 19:54:58');
INSERT INTO `sys_oper_log` VALUES (90, '简历', 2, 'com.ruoyi.project.job.resume.controller.JobResumeController.editSave()', 'POST', 1, 'admin', '研发部门', '/job/resume/edit', '127.0.0.1', '内网IP', '{\"resumeId\":[\"1\"],\"userId\":[\"1\"],\"resumeName\":[\"java\"],\"positionType\":[\"0\"],\"content\":[\"1111\"],\"area\":[\"0\"],\"salary\":[\"0\"],\"birthday\":[\"2020-02-05\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"],\"status\":[\"1\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'java\',\n            user_id = 1,\n            position_type = 0,\n            cont\' at line 2\r\n### The error may involve com.ruoyi.project.job.resume.mapper.JobResumeMapper.updateJobResume-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update job_resume          SET ?,             user_id = ?,             position_type = ?,             content = ?,             area = ?,             salary = ?,             birthday = ?,             phone = ?,                          status = ?,                          update_time = ?          where resume_id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'java\',\n            user_id = 1,\n            position_type = 0,\n            cont\' at line 2\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\'java\',\n            user_id = 1,\n            position_type = 0,\n            cont\' at line 2', '2020-02-05 19:56:10');
INSERT INTO `sys_oper_log` VALUES (91, '简历', 2, 'com.ruoyi.project.job.resume.controller.JobResumeController.editSave()', 'POST', 1, 'admin', '研发部门', '/job/resume/edit', '127.0.0.1', '内网IP', '{\"resumeId\":[\"1\"],\"userId\":[\"1\"],\"resumeName\":[\"java简历\"],\"positionType\":[\"0\"],\"content\":[\"1111\"],\"area\":[\"0\"],\"salary\":[\"0\"],\"birthday\":[\"2020-02-05\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-05 19:59:45');
INSERT INTO `sys_oper_log` VALUES (92, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"userName\":[\"qiuzhi\"],\"deptName\":[\"研发部门\"],\"phonenumber\":[\"13012345678\"],\"email\":[\"1111@qq.com\"],\"loginName\":[\"qiuzhi\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 09:51:08');
INSERT INTO `sys_oper_log` VALUES (93, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"求职者\"],\"roleKey\":[\"job_wanted\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1062,1063,1065,1066,1067,1068,1070\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 09:51:39');
INSERT INTO `sys_oper_log` VALUES (94, '简历', 1, 'com.ruoyi.project.job.resume.controller.JobResumeController.addSave()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resume/add', '127.0.0.1', '内网IP', '{\"resumeName\":[\"文员\"],\"positionType\":[\"1\"],\"content\":[\"文员简历\"],\"area\":[\"1\"],\"salary\":[\"1\"],\"birthday\":[\"2020-02-05\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 10:28:07');
INSERT INTO `sys_oper_log` VALUES (95, '发布简历', 0, 'com.ruoyi.project.job.resume.controller.JobResumeController.enable()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resume/enable', '127.0.0.1', '内网IP', '{\"resumeId\":[\"2\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 10:28:20');
INSERT INTO `sys_oper_log` VALUES (96, '投递简历', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.selectAuthUserAll()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resumeLib/delivery', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"positionId\":[\"2\"],\"resumeId\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 10:28:39');
INSERT INTO `sys_oper_log` VALUES (97, '修改投递状态', 0, 'com.ruoyi.project.job.receive.controller.JobReceiveDetailController.changeStatus()', 'POST', 1, 'qiye', '研发部门', '/job/receive/changeStatus', '127.0.0.1', '内网IP', '{\"receiveId\":[\"2\"],\"operateResult\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 13:31:39');
INSERT INTO `sys_oper_log` VALUES (98, '修改投递状态', 0, 'com.ruoyi.project.job.receive.controller.JobReceiveDetailController.changeStatus()', 'POST', 1, 'qiye', '研发部门', '/job/receive/changeStatus', '127.0.0.1', '内网IP', '{\"receiveId\":[\"2\",\"拒绝了\"],\"operateResult\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 13:45:00');
INSERT INTO `sys_oper_log` VALUES (99, '修改投递状态', 0, 'com.ruoyi.project.job.receive.controller.JobReceiveDetailController.changeStatus()', 'POST', 1, 'qiye', '研发部门', '/job/receive/changeStatus', '127.0.0.1', '内网IP', '{\"receiveId\":[\"2\"],\"operateResult\":[\"1\"],\"reason\":[\"拒绝了\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 13:46:34');
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1063\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"简历管理\"],\"url\":[\"/job/resume\"],\"target\":[\"menuItem\"],\"perms\":[\"job:resume:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 13:51:55');
INSERT INTO `sys_oper_log` VALUES (101, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"测试\"],\"phonenumber\":[\"13212345678\"],\"loginName\":[\"aa\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:20:16');
INSERT INTO `sys_oper_log` VALUES (102, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:23:30');
INSERT INTO `sys_oper_log` VALUES (103, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:23:57');
INSERT INTO `sys_oper_log` VALUES (104, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:24:09');
INSERT INTO `sys_oper_log` VALUES (105, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:25:04');
INSERT INTO `sys_oper_log` VALUES (106, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:25:31');
INSERT INTO `sys_oper_log` VALUES (107, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"4\",\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"4,3\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:26:03');
INSERT INTO `sys_oper_log` VALUES (108, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:26:20');
INSERT INTO `sys_oper_log` VALUES (109, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:26:58');
INSERT INTO `sys_oper_log` VALUES (110, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:33:24');
INSERT INTO `sys_oper_log` VALUES (111, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:34:40');
INSERT INTO `sys_oper_log` VALUES (112, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"104\"],\"userName\":[\"测试\"],\"dept.deptName\":[\"市场部门\"],\"phonenumber\":[\"13212345678\"],\"email\":[\"11011@qq.com\"],\"loginName\":[\"aa\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 14:35:37');
INSERT INTO `sys_oper_log` VALUES (113, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"注册用户\"],\"phonenumber\":[\"13212345671\"],\"loginName\":[\"zhuce\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', 'null', 1, '', '2020-02-06 15:06:03');
INSERT INTO `sys_oper_log` VALUES (114, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"注册用户\"],\"phonenumber\":[\"13212345671\"],\"loginName\":[\"zhuce\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', 'null', 1, '', '2020-02-06 15:08:18');
INSERT INTO `sys_oper_log` VALUES (115, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"注册用户\"],\"phonenumber\":[\"13212345671\"],\"loginName\":[\"zhuce\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 15:09:59');
INSERT INTO `sys_oper_log` VALUES (116, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"注册用户1\"],\"phonenumber\":[\"13212345672\"],\"loginName\":[\"zhuce1\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 15:13:22');
INSERT INTO `sys_oper_log` VALUES (117, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"注册用户2\"],\"phonenumber\":[\"13212345673\"],\"loginName\":[\"zhuce2\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 15:14:41');
INSERT INTO `sys_oper_log` VALUES (118, '重置密码', 2, 'com.ruoyi.project.system.user.controller.UserController.resetPwd()', 'GET', 1, 'admin', '研发部门', '/system/user/resetPwd/8', '127.0.0.1', '内网IP', '{}', '\"system/user/resetPwd\"', 0, NULL, '2020-02-06 15:23:38');
INSERT INTO `sys_oper_log` VALUES (119, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"游客\"],\"phonenumber\":[\"13212345674\"],\"loginName\":[\"youke\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 15:28:35');
INSERT INTO `sys_oper_log` VALUES (120, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"游客1\"],\"phonenumber\":[\"13212345675\"],\"loginName\":[\"youke1\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 15:30:02');
INSERT INTO `sys_oper_log` VALUES (121, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"游客11\"],\"phonenumber\":[\"13212345676\"],\"loginName\":[\"youke11\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 15:33:18');
INSERT INTO `sys_oper_log` VALUES (122, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"游客11\"],\"phonenumber\":[\"13212345676\"],\"loginName\":[\"youke11\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"新增用户\'youke11\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2020-02-06 15:33:30');
INSERT INTO `sys_oper_log` VALUES (123, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"游客11\"],\"phonenumber\":[\"13212345676\"],\"loginName\":[\"youke11\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"新增用户\'youke11\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2020-02-06 15:34:06');
INSERT INTO `sys_oper_log` VALUES (124, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"游客12\"],\"phonenumber\":[\"13212345677\"],\"loginName\":[\"youke12\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 15:34:36');
INSERT INTO `sys_oper_log` VALUES (125, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"游客13\"],\"phonenumber\":[\"13212345679\"],\"loginName\":[\"youke13\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 15:36:38');
INSERT INTO `sys_oper_log` VALUES (126, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"youke14\"],\"phonenumber\":[\"13212345611\"],\"loginName\":[\"youke14\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 15:38:54');
INSERT INTO `sys_oper_log` VALUES (127, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, NULL, NULL, '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"youke15\"],\"phonenumber\":[\"13212345612\"],\"loginName\":[\"youke15\"],\"password\":[\"123456\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 15:40:25');
INSERT INTO `sys_oper_log` VALUES (128, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"游客\"],\"roleKey\":[\"tourist\"],\"roleSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1062,1069,1070\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-06 18:01:20');
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1071', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2020-02-07 11:30:02');
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1072', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:30:17');
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1073', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:30:34');
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1074', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:30:48');
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1075', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:31:07');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1076', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:31:18');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1071', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:31:40');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1082', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:31:55');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1078', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:32:14');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1079', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:57:34');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1080', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:57:40');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1081', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:57:45');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1077', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:57:50');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"job_vip_detail\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:58:03');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"job_vip_detail\"],\"tableComment\":[\"用户开通vip记录\"],\"className\":[\"JobVipDetail\"],\"functionAuthor\":[\".\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"46\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"用户id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"userId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"47\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"开通时间\"],\"columns[1].javaType\":[\"Date\"],\"columns[1].javaField\":[\"openTime\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"datetime\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"48\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"开始时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"startTime\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"49\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"结束时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"endTime\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"50\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"状态(1正常2停用)\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"status\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"sys_normal_disable\"],\"tplCategory\":[\"crud\"],', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 11:59:06');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/job_vip_detail', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-02-07 11:59:22');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"vip用户管理\"],\"url\":[\"/job/vip\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 12:12:47');
INSERT INTO `sys_oper_log` VALUES (146, '用户开通vip记录', 3, 'com.ruoyi.project.job.vip.controller.JobVipDetailController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/job/vip/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 12:12:59');
INSERT INTO `sys_oper_log` VALUES (147, '用户开通vip记录', 3, 'com.ruoyi.project.job.vip.controller.JobVipDetailController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/job/vip/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 12:13:37');
INSERT INTO `sys_oper_log` VALUES (148, '用户开通vip记录', 3, 'com.ruoyi.project.job.vip.controller.JobVipDetailController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/job/vip/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"status\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 12:15:39');
INSERT INTO `sys_oper_log` VALUES (149, '用户开通vip记录', 3, 'com.ruoyi.project.job.vip.controller.JobVipDetailController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/job/vip/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 12:15:47');
INSERT INTO `sys_oper_log` VALUES (150, '用户开通vip记录', 3, 'com.ruoyi.project.job.vip.controller.JobVipDetailController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/job/vip/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"status\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 12:15:50');
INSERT INTO `sys_oper_log` VALUES (151, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"VIP等级\"],\"dictType\":[\"job_vip_level\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 13:27:08');
INSERT INTO `sys_oper_log` VALUES (152, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"1个月(10元)\"],\"dictValue\":[\"10\"],\"dictType\":[\"job_vip_level\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 13:27:38');
INSERT INTO `sys_oper_log` VALUES (153, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"3个月(25元)\"],\"dictValue\":[\"25\"],\"dictType\":[\"job_vip_level\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 13:27:58');
INSERT INTO `sys_oper_log` VALUES (154, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"180天(45元)\"],\"dictValue\":[\"45\"],\"dictType\":[\"job_vip_level\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 13:28:51');
INSERT INTO `sys_oper_log` VALUES (155, '字典数据', 2, 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"47\"],\"dictLabel\":[\"90天(25元)\"],\"dictValue\":[\"25\"],\"dictType\":[\"job_vip_level\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 13:29:01');
INSERT INTO `sys_oper_log` VALUES (156, '字典数据', 2, 'com.ruoyi.project.system.dict.controller.DictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"46\"],\"dictLabel\":[\"30天(10元)\"],\"dictValue\":[\"10\"],\"dictType\":[\"job_vip_level\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 13:29:08');
INSERT INTO `sys_oper_log` VALUES (157, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"360天(80元)\"],\"dictValue\":[\"80\"],\"dictType\":[\"job_vip_level\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 13:29:34');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"weixin_order\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 22:02:36');
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"weixin_order\"],\"tableComment\":[\"微信支付订单\"],\"className\":[\"WeixinOrder\"],\"functionAuthor\":[\"。\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"51\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"订单号\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"orderNo\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"52\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"用户id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"53\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"金额(单位分)\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"amount\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"54\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"支付状态\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"status\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"radio\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"55\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"支付时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"payTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.project.pay', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-07 22:03:28');
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2020-02-08 10:38:04');
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1049', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2020-02-08 10:38:26');
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1049', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2020-02-08 10:38:33');
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统监控\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-video-camera\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-08 10:39:16');
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-08 10:39:21');
INSERT INTO `sys_oper_log` VALUES (165, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"roleName\":[\"求职者\"],\"roleKey\":[\"job_wanted\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1062,1063,1065,1066,1067,1068,1070\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-08 13:47:12');
INSERT INTO `sys_oper_log` VALUES (166, '角色管理', 4, 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"userIds\":[\"4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-08 13:49:19');
INSERT INTO `sys_oper_log` VALUES (167, '简历', 1, 'com.ruoyi.project.job.resume.controller.JobResumeController.addSave()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resume/add', '127.0.0.1', '内网IP', '{\"resumeName\":[\"文员\"],\"positionType\":[\"2\"],\"content\":[\"dsafadsf\"],\"area\":[\"0\"],\"salary\":[\"0\"],\"birthday\":[\"2020-02-05\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-08 14:22:54');
INSERT INTO `sys_oper_log` VALUES (168, '简历', 1, 'com.ruoyi.project.job.resume.controller.JobResumeController.addSave()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resume/add', '127.0.0.1', '内网IP', '{\"resumeName\":[\"文员\"],\"positionType\":[\"0\"],\"content\":[\"sdaf\"],\"area\":[\"0\"],\"salary\":[\"0\"],\"birthday\":[\"2020-02-07\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"]}', '{\"msg\":\"非VIP用户只能创建一份简历！\",\"code\":500}', 0, NULL, '2020-02-08 14:24:12');
INSERT INTO `sys_oper_log` VALUES (169, '简历', 1, 'com.ruoyi.project.job.resume.controller.JobResumeController.addSave()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resume/add', '127.0.0.1', '内网IP', '{\"resumeName\":[\"文员\"],\"positionType\":[\"0\"],\"content\":[\"sd\"],\"area\":[\"0\"],\"salary\":[\"0\"],\"birthday\":[\"2020-02-06\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"]}', '{\"msg\":\"非VIP用户只能创建一份简历！\",\"code\":500}', 0, NULL, '2020-02-08 14:25:04');
INSERT INTO `sys_oper_log` VALUES (170, '简历', 2, 'com.ruoyi.project.job.resume.controller.JobResumeController.editSave()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resume/edit', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"],\"userId\":[\"4\"],\"resumeName\":[\"文员\"],\"positionType\":[\"2\"],\"content\":[\"dsafadsf\"],\"area\":[\"0\"],\"salary\":[\"0\"],\"birthday\":[\"2020-02-05\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-08 14:28:47');
INSERT INTO `sys_oper_log` VALUES (171, '投递简历', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.selectAuthUserAll()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resumeLib/delivery', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"positionId\":[\"1\"],\"resumeId\":[\"2\"]}', 'null', 1, 'nested exception is org.apache.ibatis.executor.ExecutorException: A query was run and no Result Maps were found for the Mapped Statement \'com.ruoyi.project.job.apply.mapper.JobApplyDetailMapper.selectCountByDay\'.  It\'s likely that neither a Result Type nor a Result Map was specified.', '2020-02-10 12:51:14');
INSERT INTO `sys_oper_log` VALUES (172, '投递简历', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.selectAuthUserAll()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resumeLib/delivery', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"positionId\":[\"1\"],\"resumeId\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 12:53:43');
INSERT INTO `sys_oper_log` VALUES (173, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1070\"],\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"职位资源库\"],\"url\":[\"/job/positionCenter\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 12:54:26');
INSERT INTO `sys_oper_log` VALUES (174, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:07:30');
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"job_enterprise\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:07:39');
INSERT INTO `sys_oper_log` VALUES (176, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"企业规模\"],\"dictType\":[\"job_enterprise_scale\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:08:24');
INSERT INTO `sys_oper_log` VALUES (177, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"20人以下\"],\"dictValue\":[\"1\"],\"dictType\":[\"job_enterprise_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:09:12');
INSERT INTO `sys_oper_log` VALUES (178, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"20~50人\"],\"dictValue\":[\"2\"],\"dictType\":[\"job_enterprise_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:09:30');
INSERT INTO `sys_oper_log` VALUES (179, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"50~100人\"],\"dictValue\":[\"3\"],\"dictType\":[\"job_enterprise_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:09:46');
INSERT INTO `sys_oper_log` VALUES (180, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"100~500人\"],\"dictValue\":[\"4\"],\"dictType\":[\"job_enterprise_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:10:00');
INSERT INTO `sys_oper_log` VALUES (181, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"500人以上\"],\"dictValue\":[\"5\"],\"dictType\":[\"job_enterprise_scale\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:10:14');
INSERT INTO `sys_oper_log` VALUES (182, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"企业性质\"],\"dictType\":[\"job_enterprise_category\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:10:54');
INSERT INTO `sys_oper_log` VALUES (183, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"金融/投资/证券\"],\"dictValue\":[\"1\"],\"dictType\":[\"job_enterprise_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:11:35');
INSERT INTO `sys_oper_log` VALUES (184, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"计算机软件\"],\"dictValue\":[\"2\"],\"dictType\":[\"job_enterprise_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:11:51');
INSERT INTO `sys_oper_log` VALUES (185, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"汽车及零配件\"],\"dictValue\":[\"3\"],\"dictType\":[\"job_enterprise_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:12:26');
INSERT INTO `sys_oper_log` VALUES (186, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"房地产/汽车\"],\"dictValue\":[\"4\"],\"dictType\":[\"job_enterprise_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:12:40');
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"job_enterprise\"],\"tableComment\":[\"企业\"],\"className\":[\"JobEnterprise\"],\"functionAuthor\":[\".\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"56\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"企业Id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"57\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"企业人员\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"58\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"企业名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"name\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"59\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"企业规模\"],\"columns[3].javaType\":[\"Integer\"],\"columns[3].javaField\":[\"scale\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"job_enterprise_scale\"],\"columns[4].columnId\":[\"60\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"企业性质\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"category\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"select\"],\"columns[4].dictType\":[\"job_enterprise_category\"],\"columns[5].columnId\":', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:13:47');
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/job_enterprise', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-02-10 13:14:11');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"C\"],\"menuName\":[\"企业管理\"],\"url\":[\"/job/enterprise\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:53:49');
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/1084', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:54:07');
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1062\"],\"menuType\":[\"C\"],\"menuName\":[\"企业管理\"],\"url\":[\"/job/enterprise\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"6\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:54:33');
INSERT INTO `sys_oper_log` VALUES (192, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"4\"],\"roleName\":[\"企业\"],\"roleKey\":[\"enterprise\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"1062,1069,1064,1085\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 13:58:33');
INSERT INTO `sys_oper_log` VALUES (193, '企业', 1, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/add', '127.0.0.1', '内网IP', '{\"name\":[\"名创优品（广州）有限责任公司\"],\"scale\":[\"5\"],\"category\":[\"1\"],\"address\":[\"总部-荔湾区康王中路486号和业广场18、19、25楼（全层） (邮编：510405)\"],\"phone\":[\"12345678900\"],\"information\":[\"\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.job.enterprise.mapper.JobEnterpriseMapper.insertJobEnterprise-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into job_enterprise          ( user_id,             name,             scale,             category,             address,             phone,                          create_by,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2020-02-10 14:04:19');
INSERT INTO `sys_oper_log` VALUES (194, '企业', 1, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/add', '127.0.0.1', '内网IP', '{\"name\":[\"名创优品（广州）有限责任公司\"],\"scale\":[\"5\"],\"category\":[\"1\"],\"address\":[\"总部-荔湾区康王中路486号和业广场18、19、25楼（全层） (邮编：510405)\"],\"phone\":[\"12345678900\"],\"information\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 14:04:32');
INSERT INTO `sys_oper_log` VALUES (195, '企业', 3, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.remove()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 'null', 1, 'null', '2020-02-10 14:04:45');
INSERT INTO `sys_oper_log` VALUES (196, '企业', 3, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.remove()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', 'null', 1, 'null', '2020-02-10 14:05:14');
INSERT INTO `sys_oper_log` VALUES (197, '企业', 3, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.remove()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/remove', '127.0.0.1', '内网IP', '{\"id\":[\"1\"]}', 'null', 1, '', '2020-02-10 14:05:59');
INSERT INTO `sys_oper_log` VALUES (198, '企业', 3, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.remove()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/remove', '127.0.0.1', '内网IP', '{\"id\":[\"1\"]}', 'null', 1, '', '2020-02-10 14:06:12');
INSERT INTO `sys_oper_log` VALUES (199, '企业', 3, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.remove()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/remove', '127.0.0.1', '内网IP', '{\"id\":[\"1\"]}', 'null', 1, '', '2020-02-10 14:06:48');
INSERT INTO `sys_oper_log` VALUES (200, '企业', 3, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.remove()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/remove', '127.0.0.1', '内网IP', '{\"id\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 14:14:22');
INSERT INTO `sys_oper_log` VALUES (201, '字典数据', 1, 'com.ruoyi.project.system.dict.controller.DictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"快速消费品(食品、饮料、化妆品) 批发/零售\"],\"dictValue\":[\"5\"],\"dictType\":[\"job_enterprise_category\"],\"cssClass\":[\"\"],\"dictSort\":[\"5\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 14:15:16');
INSERT INTO `sys_oper_log` VALUES (202, '企业', 1, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/add', '127.0.0.1', '内网IP', '{\"name\":[\"名创优品（广州）有限责任公司\"],\"scale\":[\"5\"],\"category\":[\"5\"],\"address\":[\"总部-荔湾区康王中路486号和业广场18、19、25楼（全层） (邮编：510405)\"],\"phone\":[\"12345678900\"],\"information\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 14:15:43');
INSERT INTO `sys_oper_log` VALUES (203, '职位', 1, 'com.ruoyi.project.job.position.controller.JobPositionController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/position/add', '127.0.0.1', '内网IP', '{\"positionName\":[\"Java开发工程师\"],\"positionType\":[\"0\"],\"area\":[\"0\"],\"positionSalary\":[\"0\"]}', '{\"msg\":\"请先创建企业后再添加职位！\",\"code\":500}', 0, NULL, '2020-02-10 15:13:54');
INSERT INTO `sys_oper_log` VALUES (204, '职位', 1, 'com.ruoyi.project.job.position.controller.JobPositionController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/position/add', '127.0.0.1', '内网IP', '{\"positionName\":[\"Java开发工程师\"],\"positionType\":[\"0\"],\"area\":[\"0\"],\"positionSalary\":[\"0\"]}', '{\"msg\":\"请先创建企业后再添加职位！\",\"code\":500}', 0, NULL, '2020-02-10 15:57:33');
INSERT INTO `sys_oper_log` VALUES (205, '企业', 1, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/enterprise/add', '127.0.0.1', '内网IP', '{\"name\":[\"阿里巴巴集团\"],\"scale\":[\"5\"],\"category\":[\"2\"],\"address\":[\"中国杭州\"],\"phone\":[\"12345678900\"],\"information\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 16:05:44');
INSERT INTO `sys_oper_log` VALUES (206, '职位', 1, 'com.ruoyi.project.job.position.controller.JobPositionController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/position/add', '127.0.0.1', '内网IP', '{\"positionName\":[\"Java开发工程师\"],\"positionType\":[\"0\"],\"area\":[\"1\"],\"positionSalary\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 16:06:01');
INSERT INTO `sys_oper_log` VALUES (207, '发布职位', 0, 'com.ruoyi.project.job.position.controller.JobPositionController.enable()', 'POST', 1, 'qiye', '研发部门', '/job/position/enable', '127.0.0.1', '内网IP', '{\"positionId\":[\"3\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 16:09:51');
INSERT INTO `sys_oper_log` VALUES (208, '企业', 2, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.editSave()', 'POST', 1, 'qiuzhi', '研发部门', '/job/enterprise/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"阿里巴巴集团\"],\"scaleName\":[\"500人以上\"],\"categoryName\":[\"计算机软件\"],\"address\":[\"中国杭州\"],\"phone\":[\"12345678900\"],\"information\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 16:32:09');
INSERT INTO `sys_oper_log` VALUES (209, '投递简历', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.selectAuthUserAll()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resumeLib/delivery', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"positionId\":[\"3\"],\"resumeId\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 16:32:34');
INSERT INTO `sys_oper_log` VALUES (210, '角色管理', 4, 'com.ruoyi.project.system.role.controller.RoleController.selectAuthUserAll()', 'POST', 1, 'admin', '研发部门', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"3\"],\"userIds\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 16:44:50');
INSERT INTO `sys_oper_log` VALUES (211, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"job_concern\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 17:23:59');
INSERT INTO `sys_oper_log` VALUES (212, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"2\"]}', 'null', 1, 'Invalid bound statement (not found): com.ruoyi.project.job.resume.mapper.JobConcernMapper.insertJobConcern', '2020-02-10 18:49:05');
INSERT INTO `sys_oper_log` VALUES (213, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"2\"]}', 'null', 1, 'Invalid bound statement (not found): com.ruoyi.project.job.resume.mapper.JobConcernMapper.insertJobConcern', '2020-02-10 18:49:43');
INSERT INTO `sys_oper_log` VALUES (214, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 18:51:13');
INSERT INTO `sys_oper_log` VALUES (215, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 18:59:57');
INSERT INTO `sys_oper_log` VALUES (216, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 18:59:59');
INSERT INTO `sys_oper_log` VALUES (217, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:00:01');
INSERT INTO `sys_oper_log` VALUES (218, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:00:03');
INSERT INTO `sys_oper_log` VALUES (219, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:00:03');
INSERT INTO `sys_oper_log` VALUES (220, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:00:04');
INSERT INTO `sys_oper_log` VALUES (221, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:00:08');
INSERT INTO `sys_oper_log` VALUES (222, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:00:16');
INSERT INTO `sys_oper_log` VALUES (223, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:17:20');
INSERT INTO `sys_oper_log` VALUES (224, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:17:26');
INSERT INTO `sys_oper_log` VALUES (225, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:17:27');
INSERT INTO `sys_oper_log` VALUES (226, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:17:32');
INSERT INTO `sys_oper_log` VALUES (227, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:17:33');
INSERT INTO `sys_oper_log` VALUES (228, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:17:34');
INSERT INTO `sys_oper_log` VALUES (229, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:17:35');
INSERT INTO `sys_oper_log` VALUES (230, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:17:36');
INSERT INTO `sys_oper_log` VALUES (231, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:17:37');
INSERT INTO `sys_oper_log` VALUES (232, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:17:41');
INSERT INTO `sys_oper_log` VALUES (233, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"job_invite\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:52:15');
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 2, 'com.ruoyi.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"10\"],\"tableName\":[\"job_invite\"],\"tableComment\":[\"面试邀请\"],\"className\":[\"JobInvite\"],\"functionAuthor\":[\".\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"72\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"邀请id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"inviteId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"73\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"企业人员Id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"userId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"74\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"简历id\"],\"columns[2].javaType\":[\"Long\"],\"columns[2].javaField\":[\"resumeId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].isRequired\":[\"1\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"75\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"邀请时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"inviteTime\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].isRequired\":[\"1\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"76\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"面试时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"interviewTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].isRequired\":[\"1\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"77\"],\"columns[5].sort\":[\"6\"],\"', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 19:53:41');
INSERT INTO `sys_oper_log` VALUES (235, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.genCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/genCode/job_invite', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2020-02-10 19:53:44');
INSERT INTO `sys_oper_log` VALUES (236, '面试邀请', 1, 'com.ruoyi.project.job.invite.controller.JobInviteController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/invite/add', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"],\"interviewTime\":[\"2020-02-10\"],\"interviewPlace\":[\"杭州市\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 20:16:12');
INSERT INTO `sys_oper_log` VALUES (237, '修改投递状态', 0, 'com.ruoyi.project.job.receive.controller.JobReceiveDetailController.changeStatus()', 'POST', 1, 'qiye', '研发部门', '/job/receive/changeStatus', '127.0.0.1', '内网IP', '{\"receiveId\":[\"4\"],\"operateResult\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 20:40:11');
INSERT INTO `sys_oper_log` VALUES (238, '投递简历', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.selectAuthUserAll()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resumeLib/delivery', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"positionId\":[\"3\"],\"resumeId\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 22:25:48');
INSERT INTO `sys_oper_log` VALUES (239, '发布简历', 0, 'com.ruoyi.project.job.resume.controller.JobResumeController.enable()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resume/enable', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 23:17:00');
INSERT INTO `sys_oper_log` VALUES (240, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 23:29:34');
INSERT INTO `sys_oper_log` VALUES (241, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 23:29:35');
INSERT INTO `sys_oper_log` VALUES (242, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-10 23:29:36');
INSERT INTO `sys_oper_log` VALUES (243, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:27:26');
INSERT INTO `sys_oper_log` VALUES (244, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'qiye', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:27:27');
INSERT INTO `sys_oper_log` VALUES (245, '面试邀请', 1, 'com.ruoyi.project.job.invite.controller.JobInviteController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/invite/add', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"],\"interviewTime\":[\"2020-02-11 05:00:30\"],\"interviewPlace\":[\"北京\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'position_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.job.invite.mapper.JobInviteMapper.insertJobInvite-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into job_invite          ( user_id,             resume_id,             invite_time,             interview_time,             interview_place )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'position_id\' doesn\'t have a default value\n; Field \'position_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'position_id\' doesn\'t have a default value', '2020-02-11 09:27:44');
INSERT INTO `sys_oper_log` VALUES (246, '面试邀请', 1, 'com.ruoyi.project.job.invite.controller.JobInviteController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/invite/add', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"],\"interviewTime\":[\"2020-02-11 05:00:30\"],\"interviewPlace\":[\"北京\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'position_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.job.invite.mapper.JobInviteMapper.insertJobInvite-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into job_invite          ( user_id,             resume_id,             invite_time,             interview_time,             interview_place )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'position_id\' doesn\'t have a default value\n; Field \'position_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'position_id\' doesn\'t have a default value', '2020-02-11 09:28:16');
INSERT INTO `sys_oper_log` VALUES (247, '面试邀请', 1, 'com.ruoyi.project.job.invite.controller.JobInviteController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/invite/add', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"],\"interviewTime\":[\"2020-02-11 05:00:30\"],\"interviewPlace\":[\"北京\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'position_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.job.invite.mapper.JobInviteMapper.insertJobInvite-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into job_invite          ( user_id,             resume_id,             invite_time,             interview_time,             interview_place )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'position_id\' doesn\'t have a default value\n; Field \'position_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'position_id\' doesn\'t have a default value', '2020-02-11 09:28:22');
INSERT INTO `sys_oper_log` VALUES (248, '面试邀请', 1, 'com.ruoyi.project.job.invite.controller.JobInviteController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/invite/add', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"],\"interviewTime\":[\"2020-02-11 05:00:30\"],\"interviewPlace\":[\"北京\"]}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'position_id\' doesn\'t have a default value\r\n### The error may involve com.ruoyi.project.job.invite.mapper.JobInviteMapper.insertJobInvite-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into job_invite          ( user_id,             resume_id,             invite_time,             interview_time,             interview_place )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'position_id\' doesn\'t have a default value\n; Field \'position_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'position_id\' doesn\'t have a default value', '2020-02-11 09:29:08');
INSERT INTO `sys_oper_log` VALUES (249, '面试邀请', 1, 'com.ruoyi.project.job.invite.controller.JobInviteController.addSave()', 'POST', 1, 'qiye', '研发部门', '/job/invite/add', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"],\"interviewTime\":[\"2020-02-11 09:30:08\"],\"interviewPlace\":[\"北京\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:31:24');
INSERT INTO `sys_oper_log` VALUES (250, '简历', 2, 'com.ruoyi.project.job.resume.controller.JobResumeController.editSave()', 'POST', 1, 'qiuzhi', '研发部门', '/job/resume/edit', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"],\"userId\":[\"4\"],\"resumeName\":[\"文员\"],\"positionType\":[\"2\"],\"content\":[\"dsafadsf\"],\"area\":[\"0\"],\"salary\":[\"0\"],\"birthday\":[\"2020-02-05\"],\"phone\":[\"12345678900\"],\"workExperience\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:47:29');
INSERT INTO `sys_oper_log` VALUES (251, '修改面试邀请状态', 0, 'com.ruoyi.project.job.invite.controller.JobInviteController.changeStatus()', 'POST', 1, 'qiuzhi', '研发部门', '/job/invite/changeStatus', '127.0.0.1', '内网IP', '{\"inviteId\":[\"2\"],\"operateResult\":[\"1\"],\"reason\":[\"拒绝邀请\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:50:13');
INSERT INTO `sys_oper_log` VALUES (252, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:57:11');
INSERT INTO `sys_oper_log` VALUES (253, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"103\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"部门管理\"],\"url\":[\"/system/dept\"],\"target\":[\"menuItem\"],\"perms\":[\"system:dept:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:57:27');
INSERT INTO `sys_oper_log` VALUES (254, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"104\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"岗位管理\"],\"url\":[\"/system/post\"],\"target\":[\"menuItem\"],\"perms\":[\"system:post:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:57:33');
INSERT INTO `sys_oper_log` VALUES (255, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"106\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"参数设置\"],\"url\":[\"/system/config\"],\"target\":[\"menuItem\"],\"perms\":[\"system:config:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:57:43');
INSERT INTO `sys_oper_log` VALUES (256, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"107\"],\"parentId\":[\"1\"],\"menuType\":[\"C\"],\"menuName\":[\"通知公告\"],\"url\":[\"/system/notice\"],\"target\":[\"menuItem\"],\"perms\":[\"system:notice:view\"],\"orderNum\":[\"8\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:57:51');
INSERT INTO `sys_oper_log` VALUES (257, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"108\"],\"parentId\":[\"1\"],\"menuType\":[\"M\"],\"menuName\":[\"日志管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"9\"],\"icon\":[\"#\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-02-11 09:57:59');
INSERT INTO `sys_oper_log` VALUES (258, '用户管理', 5, 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '{\"msg\":\"d0553aff-d171-4765-9895-83824bf8d686_用户数据.xlsx\",\"code\":0}', 0, NULL, '2020-02-12 13:23:06');
INSERT INTO `sys_oper_log` VALUES (259, '用户管理', 5, 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '{\"msg\":\"1b52886e-d4b6-4699-acb1-44ef589a380e_用户数据.xlsx\",\"code\":0}', 0, NULL, '2020-02-12 13:34:08');
INSERT INTO `sys_oper_log` VALUES (260, '用户管理', 5, 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '{\"msg\":\"3ff706ae-bf03-4b74-9a89-1e4fb22b0049_用户数据.xlsx\",\"code\":0}', 0, NULL, '2020-02-12 13:35:22');
INSERT INTO `sys_oper_log` VALUES (261, '用户管理', 5, 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '{\"msg\":\"6059944e-8202-45f9-a15b-e0303405927c_用户数据.xlsx\",\"code\":0}', 0, NULL, '2020-02-12 14:07:04');
INSERT INTO `sys_oper_log` VALUES (262, '用户管理', 5, 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '{\"msg\":\"93abfbb8-2aa3-4c48-93a8-a99fbdb36e70_用户数据.xlsx\",\"code\":0}', 0, NULL, '2020-02-12 14:07:38');
INSERT INTO `sys_oper_log` VALUES (263, '用户管理', 5, 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '{\"msg\":\"ea781ba3-2050-49a4-b40a-8fa852e60974_用户数据.xlsx\",\"code\":0}', 0, NULL, '2020-02-12 14:09:56');
INSERT INTO `sys_oper_log` VALUES (264, '关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.concern()', 'POST', 1, 'admin', '研发部门', '/job/resumeLib/concern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 11:04:29');
INSERT INTO `sys_oper_log` VALUES (265, '取消关注', 4, 'com.ruoyi.project.job.resume.controller.JobResumeLibController.cancelConcern()', 'POST', 1, 'admin', '研发部门', '/job/resumeLib/cancelConcern', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 11:04:31');
INSERT INTO `sys_oper_log` VALUES (266, '职位', 1, 'com.ruoyi.project.job.position.controller.JobPositionController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/position/add', '127.0.0.1', '内网IP', '{\"positionName\":[\"打杂\"],\"positionType\":[\"2\"],\"area\":[\"0\"],\"positionSalary\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 11:05:27');
INSERT INTO `sys_oper_log` VALUES (267, '发布职位', 0, 'com.ruoyi.project.job.position.controller.JobPositionController.enable()', 'POST', 1, 'admin', '研发部门', '/job/position/enable', '127.0.0.1', '内网IP', '{\"positionId\":[\"4\"],\"status\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 11:05:45');
INSERT INTO `sys_oper_log` VALUES (268, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'qiuzhi', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 11:11:22');
INSERT INTO `sys_oper_log` VALUES (269, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.update()', 'POST', 1, 'qiuzhi', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"小可\"],\"phonenumber\":[\"13012345678\"],\"sex\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 11:44:51');
INSERT INTO `sys_oper_log` VALUES (270, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'qiuzhi', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 16:58:10');
INSERT INTO `sys_oper_log` VALUES (271, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'qiuzhi', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 17:00:55');
INSERT INTO `sys_oper_log` VALUES (272, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'qiuzhi', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 17:15:04');
INSERT INTO `sys_oper_log` VALUES (273, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'qiuzhi', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 17:32:55');
INSERT INTO `sys_oper_log` VALUES (274, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'qiuzhi', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 17:39:27');
INSERT INTO `sys_oper_log` VALUES (275, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'qiuzhi', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 17:42:05');
INSERT INTO `sys_oper_log` VALUES (276, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'qiuzhi', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-11-08 17:48:19');
INSERT INTO `sys_oper_log` VALUES (277, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.update()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\"id\":[\"\"],\"userName\":[\"小可\"],\"phonenumber\":[\"15888888888\"],\"sex\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-27 19:19:29');
INSERT INTO `sys_oper_log` VALUES (278, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-27 20:48:20');
INSERT INTO `sys_oper_log` VALUES (279, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-27 20:53:50');
INSERT INTO `sys_oper_log` VALUES (280, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'qiuzhi', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-27 21:05:53');
INSERT INTO `sys_oper_log` VALUES (281, '面试邀请', 1, 'com.ruoyi.project.job.invite.controller.JobInviteController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/invite/add', '127.0.0.1', '内网IP', '{\"resumeId\":[\"3\"],\"interviewTime\":[\"2021-12-25 22:55:29\"],\"interviewPlace\":[\"sfaw\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-27 21:12:56');
INSERT INTO `sys_oper_log` VALUES (282, '修改面试邀请状态', 0, 'com.ruoyi.project.job.invite.controller.JobInviteController.changeStatus()', 'POST', 1, 'qiuzhi', '研发部门', '/job/invite/changeStatus', '127.0.0.1', '内网IP', '{\"inviteId\":[\"3\"],\"operateResult\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-12-27 21:13:31');
INSERT INTO `sys_oper_log` VALUES (283, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-02-20 17:07:35');
INSERT INTO `sys_oper_log` VALUES (284, '用户管理', 5, 'com.ruoyi.project.system.user.controller.UserController.export()', 'POST', 1, 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '{\"msg\":\"2e579947-c948-41d8-b788-1a0d9923a3bb_用户数据.xlsx\",\"code\":0}', 0, NULL, '2022-03-12 08:53:55');
INSERT INTO `sys_oper_log` VALUES (285, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, 'admin', '研发部门', '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"CTE1902021136\"],\"phonenumber\":[\"17770725818\"],\"loginName\":[\"755\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"打工仔\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-03-12 15:39:39');
INSERT INTO `sys_oper_log` VALUES (286, '用户注册', 1, 'com.ruoyi.project.system.user.controller.RegisterController.register()', 'POST', 1, 'admin', '研发部门', '/user/register', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"CTE1902021136\"],\"phonenumber\":[\"17770725818\"],\"loginName\":[\"755\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"打工仔\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"\"]}', '{\"msg\":\"新增用户\'755\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2022-03-12 15:39:45');
INSERT INTO `sys_oper_log` VALUES (287, '职位', 1, 'com.ruoyi.project.job.position.controller.JobPositionController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/position/add', '127.0.0.1', '内网IP', '{\"positionName\":[\"web前端\"],\"positionType\":[\"0\"],\"area\":[\"1\"],\"positionSalary\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-03-12 19:33:37');
INSERT INTO `sys_oper_log` VALUES (288, '职位', 1, 'com.ruoyi.project.job.position.controller.JobPositionController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/position/add', '127.0.0.1', '内网IP', '{\"positionName\":[\"web前端\"],\"positionType\":[\"0\"],\"area\":[\"0\"],\"positionSalary\":[\"3\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-03-12 19:34:36');
INSERT INTO `sys_oper_log` VALUES (289, '企业', 1, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/add', '127.0.0.1', '内网IP', '{\"name\":[\"网易\"],\"scale\":[\"5\"],\"category\":[\"2\"],\"address\":[\"四川省成都市\"],\"phone\":[\"15923645813\"],\"information\":[\"很棒\"]}', '{\"msg\":\"当前账号已创建企业！\",\"code\":500}', 0, NULL, '2022-03-23 13:22:22');
INSERT INTO `sys_oper_log` VALUES (290, '企业', 1, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/add', '127.0.0.1', '内网IP', '{\"name\":[\"网易\"],\"scale\":[\"5\"],\"category\":[\"3\"],\"address\":[\"四川省成都市\"],\"phone\":[\"15923645813\"],\"information\":[\"很棒\"]}', '{\"msg\":\"当前账号已创建企业！\",\"code\":500}', 0, NULL, '2022-03-23 13:22:36');
INSERT INTO `sys_oper_log` VALUES (291, '企业', 1, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/add', '127.0.0.1', '内网IP', '{\"name\":[\"网易\"],\"scale\":[\"1\"],\"category\":[\"3\"],\"address\":[\"四川省成都市\"],\"phone\":[\"15923645813\"],\"information\":[\"很棒\"]}', '{\"msg\":\"当前账号已创建企业！\",\"code\":500}', 0, NULL, '2022-03-23 13:22:40');
INSERT INTO `sys_oper_log` VALUES (292, '企业', 1, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/add', '127.0.0.1', '内网IP', '{\"name\":[\"腾讯\"],\"scale\":[\"1\"],\"category\":[\"3\"],\"address\":[\"四川省成都市\"],\"phone\":[\"15923645813\"],\"information\":[\"很棒\"]}', '{\"msg\":\"当前账号已创建企业！\",\"code\":500}', 0, NULL, '2022-03-23 13:22:51');
INSERT INTO `sys_oper_log` VALUES (293, '企业', 2, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.editSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/edit', '127.0.0.1', '内网IP', '{\"id\":[\"6\"],\"name\":[\"阿里巴巴集团分部\"],\"scale\":[\"5\"],\"category\":[\"2\"],\"address\":[\"中国杭州\"],\"phone\":[\"12345678900\"],\"information\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-03-23 13:23:19');
INSERT INTO `sys_oper_log` VALUES (294, '企业', 2, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.editSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"name\":[\"阿里巴巴集团总部\"],\"scale\":[\"5\"],\"category\":[\"2\"],\"address\":[\"中国杭州\"],\"phone\":[\"12345678900\"],\"information\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-03-23 13:23:26');
INSERT INTO `sys_oper_log` VALUES (295, '企业', 1, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/add', '127.0.0.1', '内网IP', '{\"name\":[\"张\"],\"scale\":[\"1\"],\"category\":[\"1\"],\"address\":[\"四川省成都市\"],\"phone\":[\"1234567895\"],\"information\":[\"很棒\"]}', '{\"msg\":\"当前账号已创建企业！\",\"code\":500}', 0, NULL, '2022-03-23 13:23:51');
INSERT INTO `sys_oper_log` VALUES (296, '职位', 1, 'com.ruoyi.project.job.position.controller.JobPositionController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/position/add', '127.0.0.1', '内网IP', '{\"positionName\":[\"测试\"],\"positionType\":[\"0\"],\"area\":[\"0\"],\"positionSalary\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2022-03-23 13:24:25');
INSERT INTO `sys_oper_log` VALUES (297, '企业', 1, 'com.ruoyi.project.job.enterprise.controller.JobEnterpriseController.addSave()', 'POST', 1, 'admin', '研发部门', '/job/enterprise/add', '127.0.0.1', '内网IP', '{\"name\":[\"张\"],\"scale\":[\"1\"],\"category\":[\"1\"],\"address\":[\"四川省成都市\"],\"phone\":[\"1234567892\"],\"information\":[\"很棒\"]}', '{\"msg\":\"当前账号已创建企业！\",\"code\":500}', 0, NULL, '2022-03-23 13:25:29');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-05 09:50:56', '普通角色');
INSERT INTO `sys_role` VALUES (3, '求职者', 'job_wanted', 3, '1', '0', '0', 'admin', '2020-02-05 11:25:28', 'admin', '2020-02-08 13:47:12', '');
INSERT INTO `sys_role` VALUES (4, '企业', 'enterprise', 4, '1', '0', '0', 'admin', '2020-02-05 11:25:48', 'admin', '2020-02-10 13:58:33', '');
INSERT INTO `sys_role` VALUES (5, '游客', 'tourist', 5, '1', '0', '0', 'admin', '2020-02-05 11:26:13', 'admin', '2020-02-06 18:01:19', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (3, 1062);
INSERT INTO `sys_role_menu` VALUES (3, 1063);
INSERT INTO `sys_role_menu` VALUES (3, 1065);
INSERT INTO `sys_role_menu` VALUES (3, 1066);
INSERT INTO `sys_role_menu` VALUES (3, 1067);
INSERT INTO `sys_role_menu` VALUES (3, 1068);
INSERT INTO `sys_role_menu` VALUES (3, 1070);
INSERT INTO `sys_role_menu` VALUES (4, 1062);
INSERT INTO `sys_role_menu` VALUES (4, 1064);
INSERT INTO `sys_role_menu` VALUES (4, 1069);
INSERT INTO `sys_role_menu` VALUES (4, 1085);
INSERT INTO `sys_role_menu` VALUES (5, 1062);
INSERT INTO `sys_role_menu` VALUES (5, 1069);
INSERT INTO `sys_role_menu` VALUES (5, 1070);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `vip` tinyint(0) NULL DEFAULT 0 COMMENT '是否是vip（0否1是）',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 0, 'admin', '小可', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/c0d1037e1a153b0c2117336f12f6e220.png', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2022-03-23 15:30:23', 'admin', '2018-03-16 11:33:00', 'ry', '2022-03-23 15:30:22', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 0, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2020-02-05 09:49:08', 'admin', '2018-03-16 11:33:00', 'ry', '2020-02-05 09:49:08', '测试员');
INSERT INTO `sys_user` VALUES (3, 103, 0, 'qiye', 'qiye', '00', '111@qq.com', '15838772858', '0', '', '151a40eb7f763342c7a8823f4f5f58c1', 'bdff5e', '0', '0', '127.0.0.1', '2022-03-12 08:59:53', 'admin', '2020-02-05 12:47:04', '', '2022-03-12 08:59:53', NULL);
INSERT INTO `sys_user` VALUES (4, 103, 1, 'qiuzhi', '小可', '00', '1111@qq.com', '13012345678', '0', '/profile/avatar/6fccce9c0b9644ca429f856d4434312b.png', '788a097bfcd367bd86b872f43ad63a5b', '5bab55', '0', '0', '127.0.0.1', '2022-03-12 09:18:59', 'admin', '2020-02-06 09:51:08', 'qiuzhi', '2022-03-12 09:18:58', NULL);
INSERT INTO `sys_user` VALUES (5, 104, 0, 'aa', '测试', '00', '11011@qq.com', '13212345678', '0', '', 'b28c9ef52e225383e2b36e9f37dc89ca', '228558', '0', '0', '127.0.0.1', '2020-02-10 16:45:00', 'admin', '2020-02-06 14:20:16', 'aa', '2020-02-10 16:44:59', '');
INSERT INTO `sys_user` VALUES (6, NULL, 0, 'zhuce', '注册用户', '00', '', '13212345671', '0', '', 'cc8108872b5e171603b93126d815012b', '411083', '0', '0', '127.0.0.1', '2021-12-27 21:06:24', 'zhuce', '2020-02-06 15:09:58', '', '2021-12-27 21:06:24', NULL);
INSERT INTO `sys_user` VALUES (7, NULL, 0, 'zhuce1', '注册用户1', '00', '', '13212345672', '0', '', 'b138def70ec6a8323579b676c92cb3a6', 'a5ae87', '0', '0', '127.0.0.1', '2021-12-27 21:03:53', 'zhuce1', '2020-02-06 15:13:21', '', '2021-12-27 21:03:53', NULL);
INSERT INTO `sys_user` VALUES (8, NULL, 0, 'zhuce2', '注册用户2', '00', '', '13212345673', '0', '', '58e8622c26a294d3bc9498afe5cd2c07', '140aa5', '0', '0', '127.0.0.1', '2021-12-27 21:03:38', 'zhuce2', '2020-02-06 15:14:41', '', '2021-12-27 21:03:37', NULL);
INSERT INTO `sys_user` VALUES (9, NULL, 0, 'youke', '游客', '00', '', '13212345674', '0', '', '27e05d167a2d0dd8cc1dbce18cc7bd2e', '1fcc7d', '0', '0', '127.0.0.1', '2022-03-23 15:09:11', 'youke', '2020-02-06 15:28:34', '', '2022-03-23 15:09:10', NULL);
INSERT INTO `sys_user` VALUES (10, NULL, 0, 'youke1', '游客1', '00', '', '13212345675', '0', '', '9b2273f4de287b72b943f7c2dedb46f3', 'acb69b', '0', '0', '127.0.0.1', '2022-03-23 15:29:46', 'youke1', '2020-02-06 15:30:02', '', '2022-03-23 15:29:46', NULL);
INSERT INTO `sys_user` VALUES (11, NULL, 0, 'youke11', '游客11', '00', '', '13212345676', '0', '', 'd85ac05221bd7e1c5d45026d93029c15', '167f79', '0', '0', '127.0.0.1', '2022-03-23 15:29:17', 'youke11', '2020-02-06 15:33:17', '', '2022-03-23 15:29:16', NULL);
INSERT INTO `sys_user` VALUES (12, NULL, 0, 'youke12', '游客12', '00', '', '13212345677', '0', '', '76ed5a15262a126fb264ee053d4f7ac4', '682d23', '0', '0', '127.0.0.1', '2021-12-27 20:59:44', 'youke12', '2020-02-06 15:34:36', '', '2021-12-27 20:59:44', NULL);
INSERT INTO `sys_user` VALUES (13, NULL, 0, 'youke13', '游客13', '00', '', '13212345679', '0', '', '0893681ef9c9cc9424cf3b88ecd057ca', 'be7564', '0', '0', '127.0.0.1', '2022-03-23 15:29:26', 'youke13', '2020-02-06 15:36:38', '', '2022-03-23 15:29:25', NULL);
INSERT INTO `sys_user` VALUES (14, NULL, 0, 'youke14', 'youke14', '00', '', '13212345611', '0', '', 'df94dceed3f51b07fb0f9d1e84b5e701', 'ed07c3', '0', '0', '127.0.0.1', '2021-12-27 21:04:05', 'youke14', '2020-02-06 15:38:54', '', '2021-12-27 21:04:04', NULL);
INSERT INTO `sys_user` VALUES (15, NULL, 0, 'youke15', 'youke15', '00', '', '13212345612', '0', '', '3c720b8ad6ddc6de2fbf81c6db9de584', 'c3b332', '0', '0', '127.0.0.1', '2021-11-06 13:50:30', 'youke15', '2022-02-26 15:40:25', '', '2021-11-06 13:50:30', NULL);
INSERT INTO `sys_user` VALUES (16, NULL, 0, '755', 'CTE1902021136', '00', '', '17770725818', '0', '', 'b67a847556fcf06a7417a73b9bbfe02a', '278d05', '0', '0', '127.0.0.1', '2022-03-12 15:43:25', 'admin', '2022-03-12 15:39:39', '', '2022-03-12 15:43:24', '打工仔');
INSERT INTO `sys_user` VALUES (17, NULL, 0, '755', 'CTE1902021136', '00', '', '17770725818', '0', '', 'b67a847556fcf06a7417a73b9bbfe02a', '278d05', '0', '0', '127.0.0.1', '2022-03-12 15:43:25', 'admin', '2022-03-11 15:39:39', '', '2022-03-12 15:43:24', '打工仔');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(0) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('31cba769-bd53-48ea-9497-ec6726182abf', 'youke11', NULL, '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 'on_line', '2022-03-23 15:04:46', '2022-03-23 15:04:48', 1800000);
INSERT INTO `sys_user_online` VALUES ('7bf25d29-41eb-4040-beca-c526f57b8d84', 'youke11', NULL, '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 'on_line', '2022-03-23 15:02:44', '2022-03-23 15:02:49', 1800000);
INSERT INTO `sys_user_online` VALUES ('95e4e3c0-d598-4433-ba00-d5f544471801', 'youke', NULL, '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 'on_line', '2022-03-23 15:06:41', '2022-03-23 15:06:55', 1800000);
INSERT INTO `sys_user_online` VALUES ('da07504c-406c-4778-be3d-94883474b041', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 'on_line', '2022-03-23 15:30:16', '2022-03-23 15:30:23', 1800000);
INSERT INTO `sys_user_online` VALUES ('f7d0c313-9738-4865-b598-20b6cc9d77fd', 'youke', NULL, '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 'on_line', '2022-03-23 15:09:03', '2022-03-23 15:09:11', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 4);
INSERT INTO `sys_user_role` VALUES (4, 3);
INSERT INTO `sys_user_role` VALUES (5, 3);
INSERT INTO `sys_user_role` VALUES (6, 5);
INSERT INTO `sys_user_role` VALUES (7, 5);
INSERT INTO `sys_user_role` VALUES (8, 5);
INSERT INTO `sys_user_role` VALUES (9, 5);
INSERT INTO `sys_user_role` VALUES (10, 5);
INSERT INTO `sys_user_role` VALUES (11, 5);
INSERT INTO `sys_user_role` VALUES (12, 5);
INSERT INTO `sys_user_role` VALUES (13, 5);
INSERT INTO `sys_user_role` VALUES (14, 5);
INSERT INTO `sys_user_role` VALUES (15, 5);
INSERT INTO `sys_user_role` VALUES (16, 3);

SET FOREIGN_KEY_CHECKS = 1;
