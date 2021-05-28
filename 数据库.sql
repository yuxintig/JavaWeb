-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-05-28 19:39:56
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`username`, `password`, `id`) VALUES
('admin', 'e7ef63bc4c950228aa049fc02d2ec291', 1),
('root', 'e7ef63bc4c950228aa049fc02d2ec291', 2);

-- --------------------------------------------------------

--
-- 表的结构 `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '告示标题',
  `detail` varchar(2000) DEFAULT NULL COMMENT '告示内容',
  `publish_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `detail`, `publish_date`) VALUES
(1, '图书系统开始建设', '图书系统开始建设', '2020-06-02 22:28:31'),
(2, '图书系统正在建设', '图书系统正在建设，冲鸭', '2020-06-02 08:29:40'),
(3, '图书管理系统基本建成', '庆祝图书管理系统基本建成', '2020-06-09 16:43:18');

-- --------------------------------------------------------

--
-- 表的结构 `books`
--

CREATE TABLE `books` (
  `id` int(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `library_id` int(20) DEFAULT NULL,
  `sort_id` int(30) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `library_id`, `sort_id`, `position`, `status`, `description`) VALUES
(1, '夏洛特烦恼', '夏洛', 1, 1, '4asdfa23', 1, '<p>我也特烦恼!!!!<br></p>'),
(2, '植发的价格', '江湖老中医', 2, 2, '5sdfs1', 0, '详细介绍每植一根发多少钱？'),
(3, '代码的力量', '明月复苏', 2, 3, '234as', 1, '<p>神不知鬼不觉的拔掉你的头发<br></p>'),
(4, 'java从入门到入土', '明月复苏', 2, 3, 'sdfs33', 1, '无简介'),
(5, '图书馆章程', '明月复苏', 1, 5, '234sdfs', 1, '图书馆章程'),
(6, '图书馆建设', '吸尘羊', 1, 5, '23dgdff', 0, '图书馆建设！'),
(7, '学习如何跑路', '明月复苏', 1, 7, '2sdsa', 1, '<p>学习如何跑路</p>'),
(8, '美好课设', '匿名', 1, 8, '23432s', 1, '做梦'),
(9, '中国童话', '刘丽朵', 1, 9, '6sdf11', 1, '这是一本给孩子的中国童话故事集。以“非教训的无意思、空灵的幻想、快活的嬉笑、纯净的诗意、悠远的生命体味”为选篇标准，从《搜神记》《太平广记》《聊斋志异》《酉阳杂俎》等近30本经典作品中，精心挑选45篇符合现代审美、适合孩子阅读的故事；故事蕴涵着丰富的想象力与趣味性；用简美的现代语言，全新讲述中国童话故事；搭配符合故事主题的原创古风插画，带孩子进入奇幻浪漫的童话世界。'),
(10, '人生删除事务所', '本多孝好', 1, 7, '22sdf1', 1, '你想好死后如何处理自己的手机、电脑、社交账号了吗？「死后，你不想示人的数据由我们来删除。」——人生删除事务所'),
(11, '飞鸟集', '拉宾德拉纳特·泰戈尔', 1, 10, '23sdf12', 1, '《飞鸟集》是泰戈尔的代表作之一，也是世界上最杰出的诗集之一。白昼和黑夜、溪流和海洋、自由和背叛，都在泰戈尔的笔下合而为一，短小的语句道出了深刻的人生哲理，引领世人探寻真理和智慧的源泉。初读这些诗篇，如同在暴风雨过后的初夏清晨，推开卧室的窗户，看到一个淡泊清透的世界，一切都是那样清新、亮丽，可是其中的韵味却很厚实，耐人寻味。'),
(12, '声音中的另一种语言', '伊夫·博纳富瓦', 1, 10, '23sdf2', 1, '在本书中，我们会读到这位诗人翻译家从自己的写作和翻译经验出发，对诗及诗的翻译的特殊性与重要性的阐述，对某些诗歌译作的批评，对译者处境与任务的思考，以及对不同语言的诗歌的独特见解……总而言之，在博纳富瓦看来，诗，我们在声音中触及的另一种语言，是存在僭越概念性日常言语，书写生命真实“在场”的语言，诗的语言不同于世上其他一切语言，它斟酌词语，倾听节奏，“一首诗歌（poème）的诗（poésie）以一种声音（voix）的方式走向读者”。诗的翻译是可能的，但不同于其他任何翻译，只能以独特的方式进行：“诗歌唯一需要忠实的是‘在场’”，译者要保留诗意，便要倾听词语的音乐，重新经历诗人用声音勾起的关于“在场”的记忆，用自己的语言和存在经验去重构、去分享原诗的“在场”。诗的翻译应当受到重视，通过诗的翻译，处于两种语言间隙的译者和另一种语言的读者能够对虚幻的概念性言语提出质疑，在进一步自我批评的同时重新思考与异的关系，从而探寻真实的生活与场所，与自己真实的信念相遇。'),
(13, '诗经', '孔丘', 1, 10, '23sdf3', 1, '这本《诗经》收录全部305篇，每篇诗歌都配有相应的解释及译文，使读者更容易理解'),
(14, '海子的诗', '海子', 1, 10, '23sdf4', 1, '本书收录了已故诗人海子的诗作精华，其诗以独特的风格深受读者的喜爱，从这些诗中反映出诗人那对于一切美好事物的眷恋之情，对于生命的世俗和崇高的激动和关怀。'),
(15, '剧变', '[美] 贾雷德·戴蒙德 ', 2, 11, '2342sdf', 1, '<p>&nbsp; 《剧变》探讨了一个当前人类社会面临的重大问题：当危机来临时，我们该如何应对？从个人视角而言，危机可以改变一个人的成长轨迹，如处理不当，终其一生会生活在负面情绪中。对于整个人类社会而言，危机可使一种文明没落、一个国家解体、一个时代终结。因此，如何分辨危机、应对危机，避免危机，化危机为机遇，实现个人和整个人类社会的剧变，是人类当下面临的主课题。普利策奖得主、《枪炮、病菌与钢铁》作者戴蒙德再一次发挥其历史叙事的顶级水准，带我们巡礼了各国在历史中的危机应对，并从社会学、心理学、经济学、生物进化等跨学科视角展现了人类自古以来何以应对危机的历史沿革，并谏言国家、企业及整个人类社会如何从个人应对危机的进化逻辑和生理变化中得到启示，以更加多维度的、宽视角地看待危机应对这一关乎人类未来的命题。</p>'),
(16, '七个疯子', '罗伯特·阿尔特 ', 2, 12, '234sae', 1, '<p><span class=\"all hidden\"></span></p><div class=\"intro\">\n    <p>◎ “是我想太多，还是这世界太疯狂？”</p>    <p>◎ 毒丽场域疯子们的“蛮荒故事”，纳粹等现代性之殇的神奇预言</p>    <p>◎ “阿根廷的陀思妥耶夫斯基”，拉美现代小说之父，罗伯特·阿尔特代表作</p>    <p>◎ 马尔克斯、博尔赫斯之先驱，胡里奥·科塔萨尔、罗伯特·波拉尼奥、胡安·卡洛斯·奥内蒂盛赞的伟大作家</p>    <p>——————————</p>    <p>本书是阿根廷著名作家罗伯特·阿尔特的长篇小说代表作，描述男主人公在社会底层挣扎并逐渐走向崩溃的过程。故事集中在三天时间，各色人物纷纷登场，从一件绑架案折射出20世纪20年代阿根廷乃至拉美的社会现实生活。作家以精湛的文笔对主人公进行了大量的心理描摹，并通过主人公的眼睛变形地透视了身边的现实和种种人物，其混乱怪诞之感，正应了魔幻现实主义的画风。有续集《喷火器》。</p>    <p>——————————</p>    <p>阿尔特无疑是一位伟大的作家……他是拉美第一位真正的都市小说家……这就是激发文学创作的力量。——《卫报》</p>    <p>他的视野与布宜诺斯艾利斯那一帮家伙昏暗而偏缘的视野从不可同日而语。——胡里奥·科塔萨尔</p>    <p>阿尔特是阿根廷现代小说之父，他是最重要、最伟大的阿根廷小说家。——里卡多·皮格利亚</p>    <p>如果这些海岸上有人能被称为文学天才的话，那一定是罗伯特·阿尔特……我在谈论一个将在时间长河中留下名字的小说家……难以置信，他还不为当今大众所熟知。——胡安·卡洛斯·奥内蒂</p>    <p>——————————</p>    <p>美洲西班牙语文学的另一重要特征即是它永恒的见证：暴力与不公平的见证，集体与个体的见证，现实与虚构的见证，往昔与现今的见证。在美洲，写作总是兼有诗意与政治的功能，写作从来不是一种无谓的游戏，即便在表面看来最形式化的表达中，它也从不逃遁于幻觉中。</p>    <p>——《理想藏书》</p></div><p></p>'),
(17, '走出唯一真理观', '陈嘉映', 1, 13, '234sdfd', 1, '<div class=\"intro\">\n    <p>★陈嘉映2007—2018自选文集。</p>    <p>★《何为良好生活》后新作，认真思考，认真表述这些思考，召唤爱思考的人来一道思考。</p>    <p>★在危机与纷争爆发的时代，哲学如何协助我们反思生活。“我们与其说需要共识，不如说需要学会，没有共识的人应该如何一起生存。”</p>    <p>本书是陈嘉映先生选编自己于2007—2018年间所作演讲、访谈与评论结集。</p>    <p>有不同的道，从前有不同的道，现在有不同的道，将来还有不同的道。重要的问题不是找到唯一的道，而是这些不同的道之间怎样呼应，怎样交流，怎样斗争。你要是坚持说，哲学要的就是唯一的真理体系，那我不得不说，哲学已经死了。</p>    <p>哲学，尤其今天的哲学，不是宣教式的，不是上智向下愚宣教。我们之所求，首先不是让别人明白，而是求自己明白。</p>    <p>“我个人想要的是，认真思考，认真表述这些思考，召唤爱思考的人来一道思考。”</p></div>'),
(18, '人类灭绝之后', '杜格尔·狄克逊', 1, 14, '234s', 1, '<p><span class=\"all hidden\"></span></p><p>《人类灭绝之后——未来世界动物图鉴》描绘了人类灭绝5000万年之后的动物世界。</p>    <p>本书分为十一个章节，前两章回顾了从生命进化之初到人类出现之后的物种进化历程；中间八章则根据狄克逊天马行空又有理有据的想象，推演出在人类灭绝之后的5000万年地球上，从热带到寒带、从雨林到苔原的动物进化可能，带领读者穿越时空，共同欣赏这颗星球上生命进化的壮观景象；最终章则畅想了在更遥远的未来生命终将归往何处。</p><p></p>'),
(19, '孩子们的诗', '果麦', 1, 10, 'sd2342', 1, '<p><span class=\"all hidden\"><div class=\"intro\">\n    <p>书中有灵气的诗句包括但不限于以下：</p>    <p>*我的眼睛／很小很小／有时遇到心事／就连两行泪／也装不下——陈科全， 八岁</p>    <p>*灯把黑夜／烫了一个洞——姜二嫚，七岁</p>    <p>*春天来了／我去小溪边砸冰／把春天砸得头破血流／直淌眼泪——铁头，八岁</p>    <p>*要是笑过了头／你就会飞到天上去／要想回到地面／你必须做一件伤心事——朵朵，五岁</p>    <p>*纸币在飘的时候，我们知道风在算钱。——王子乔，六岁</p>    <p>*你问我出生前在做什么／我答 我在天上挑妈妈——朱尔，八岁</p>    <p>*母亲提水桶／父亲提电脑／我想起／往日他们提着我在街上乱跑——王芗远，十二岁</p>    <p>*树枝想去撕裂天空，但却只戳了几个微小的窟窿，它透出天外的光亮，人们把它叫做月亮和星星。——顾城，十二岁</p>    <p>《孩子们的诗》，精选了七十多首等3－13岁小朋友写的诗。小诗人们来自北京、上海、广东、江苏、山东、广西、福建、内蒙古、新疆等全国各个地方。</p>    <p>从上万首诗作中脱颖而出，它们首先是好诗，其次才是孩子的诗。</p>    <p>本书还邀请了Starry阿星、飞行猴CF、九个妖、木可子、黄雷蕾Linali、苏寒、Lett Yice等二十多位国内知名插画家，为书中每一首诗歌创作了兼具美感与奇趣的插画。</p></div></span></p>'),
(20, '万物静默如谜', '维斯拉瓦•辛波斯卡', 1, 10, '5楼1室234', 1, '<div class=\"intro\">\n    <p>《辛波斯卡诗选：万物静默如谜》收录辛波斯卡各阶段名作75首，包括激发知名绘本作家幾米创作出《向左走，向右走》的《一见钟情》，收录高中语文教材的《底片》，网上广为流传的《在一颗小星星下》《种种可能》等，曾获得《洛杉矶时报》年度最佳图书。</p>    <p>辛波斯卡的诗取材于日常生活的事物和经验，甲虫、海参、石头、沙粒、天空；安眠药、履历表、衣服；电影、画作、剧场、梦境等等，在她的笔下无不焕发出新的诗意，让人们重新认识生活中常见的事物。</p></div>'),
(21, 'Python编程', '埃里克·马瑟斯', 1, 3, '4楼1室234', 1, '<p>本书是一本针对所有层次的Python 读者而作的Python 入门书。全书分两部分：第一部分介绍用Python \n编程所必须了解的基本概念，包括matplotlib、NumPy 和Pygal 等强大的Python 库和工具介绍，以及列表、字典、if \n语句、类、文件与异常、代码测试等内容；第二部分将理论付诸实践，讲解如何开发三个项目，包括简单的Python 2D \n游戏开发如何利用数据生成交互式的信息图，以及创建和定制简单的Web 应用，并帮读者解决常见编程问题和困惑。</p>'),
(24, '战斗', '战斗', 2, 1, '五楼234', 1, '<p>战斗</p>'),
(26, '124', '1243', 1, 2, '撒旦法', 1, '撒旦法');

-- --------------------------------------------------------

--
-- 表的结构 `book_sort`
--

CREATE TABLE `book_sort` (
  `id` int(20) NOT NULL,
  `name` varchar(20) DEFAULT '' COMMENT '书籍类型名',
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `book_sort`
--

INSERT INTO `book_sort` (`id`, `name`, `description`) VALUES
(1, '未分类', '不可删除'),
(2, '护理', '护理护理'),
(3, '编程', '编程编程'),
(4, '艺术', ''),
(5, '管理', NULL),
(6, '法律', NULL),
(7, '生活', NULL),
(8, '励志', ''),
(9, '故事', NULL),
(10, '诗歌', NULL),
(11, '社会学', NULL),
(12, '文学', NULL),
(13, '哲学', NULL),
(14, '科学', NULL),
(16, '幽默', '');

-- --------------------------------------------------------

--
-- 表的结构 `borrow_books`
--

CREATE TABLE `borrow_books` (
  `id` int(20) NOT NULL,
  `card_id` int(20) DEFAULT NULL,
  `book_id` int(20) DEFAULT NULL,
  `borrow_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `illegal` varchar(200) DEFAULT NULL,
  `manager_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `borrow_books`
--

INSERT INTO `borrow_books` (`id`, `card_id`, `book_id`, `borrow_date`, `end_date`, `return_date`, `illegal`, `manager_id`) VALUES
(20, 1805010202, 1, '2020-06-11 09:37:10', '2020-06-12 09:37:18', '2020-06-11 09:48:07', '', 'chen'),
(21, 1805010206, 5, '2020-04-08 09:37:40', '2020-06-08 09:38:14', '2020-06-11 10:50:07', '已逾期3天', 'chen'),
(22, 1805010207, 1, '2020-06-11 09:47:44', '2020-08-10 09:47:52', '2020-06-11 09:50:07', '', 'chen'),
(24, 1805010202, 1, '2020-06-02 09:55:04', '2020-06-03 09:55:16', '2020-06-11 09:56:02', '已逾期8天', 'chen'),
(25, 1805010204, 2, '2020-06-11 09:59:42', '2020-08-10 09:59:47', '2020-06-11 10:00:17', '', 'chen'),
(26, 1805010202, 1, '2020-06-09 10:01:13', '2020-06-10 10:01:48', '2020-06-11 10:07:29', '超期一天', 'chen'),
(27, 1805010202, 5, '2020-06-08 10:12:18', '2020-06-09 10:12:27', '2020-06-11 10:13:36', '已逾期2天', 'chen'),
(28, 1805010204, 2, '2020-04-07 10:12:28', '2020-06-06 10:12:41', NULL, NULL, NULL),
(29, 1805010202, 6, '2020-06-11 08:19:56', '2020-06-12 08:20:07', NULL, NULL, NULL),
(30, 1, 1, '2021-04-21 00:00:00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `borrow_card`
--

CREATE TABLE `borrow_card` (
  `id` bigint(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `reader` varchar(20) DEFAULT NULL,
  `rule_id` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL COMMENT '0注销，1正常',
  `username` varchar(255) DEFAULT NULL,
  `header` varchar(200) DEFAULT NULL,
  `cellphone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `describe` varchar(20) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `borrow_card`
--

INSERT INTO `borrow_card` (`id`, `password`, `reader`, `rule_id`, `status`, `username`, `header`, `cellphone`, `email`, `describe`, `sex`) VALUES
(1, 'root', 'Shinonon', 7, 1, '123', '/header/5567f4e9-5491-40a3-8f48-09874bc40a9e.jpg', '18805176233', '32321441@qq.com', '！！！', 0),
(2, 'root', '黄白白', 2, 0, '1805010203', '', NULL, NULL, NULL, NULL),
(3, 'root', '黄土', 1, 1, '1805010204', '', NULL, NULL, NULL, NULL),
(4, '1234', '白云', 1, 1, '1805010205', '', NULL, NULL, NULL, NULL),
(5, '111', '月', 6, 1, '1805010206', '', NULL, NULL, NULL, NULL),
(6, 'admin', '明月', 1, 1, '1805010207', '', NULL, NULL, NULL, NULL),
(7, 'admin', '明月复苏', 1, 1, '1805010208', '', NULL, NULL, NULL, NULL),
(8, 'yue', '张沙', 1, 1, '1805010210', '', NULL, NULL, NULL, NULL),
(9, 'mingming', '星星', 1, 1, '1805010211', '', NULL, NULL, NULL, NULL),
(10, 'admin', '明月', 1, 1, '1805010212', '', NULL, NULL, NULL, NULL),
(11, 'chen', '辰', 1, 1, '1805010213', '', NULL, NULL, NULL, NULL),
(12, '1234', '小红', 1, 1, '1805010214', '', NULL, NULL, NULL, NULL),
(13, '赵雪', '赵雪', 2, 1, '1805010217', '', NULL, NULL, NULL, NULL),
(14, '1234', '测试', 1, 0, '1805010219', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `library`
--

CREATE TABLE `library` (
  `id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `library`
--

INSERT INTO `library` (`id`, `name`, `description`) VALUES
(1, '南图', NULL),
(2, '北图', NULL),
(3, '教师之家', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

CREATE TABLE `manager` (
  `id` int(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `manager`
--

INSERT INTO `manager` (`id`, `name`, `account`, `password`, `email`) VALUES
(1, '辰', 'chen', 'chen', '232222@qq.com'),
(2, '明', 'ming', 'ming', '234234@qq.com'),
(3, '明月', 'root', '1234', '284908631@qq.com'),
(11, 'root', '1234', 'root', '123456@qq.com'),
(12, '测试员', 'test', 'test', 'test@qq.com'),
(13, '明月', '1', 'root', '1');

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `id` int(20) NOT NULL,
  `card_id` int(20) DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  `public_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `card_id`, `detail`, `public_date`) VALUES
(1, 1805010201, '冲鸭，一起来看书', '2020-06-01 23:11:59'),
(2, 1805010202, '我爱学习', '2020-05-29 23:12:03'),
(3, 1805010202, '图书馆的书质量很好，图书管理员态度非常好，系统管理员也非常热心，太棒了', '2020-06-04 23:12:24'),
(6, 1805010202, '咋回事', '2020-06-12 08:34:18');

-- --------------------------------------------------------

--
-- 表的结构 `rules`
--

CREATE TABLE `rules` (
  `id` int(20) NOT NULL,
  `borrow_num` int(10) DEFAULT NULL COMMENT '限制本数',
  `limit_day` int(10) DEFAULT NULL COMMENT '限制天数',
  `borrow_library` varchar(20) DEFAULT NULL,
  `overtime_fee` float(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `rules`
--

INSERT INTO `rules` (`id`, `borrow_num`, `limit_day`, `borrow_library`, `overtime_fee`) VALUES
(1, 10, 60, '1、2、3', 0.100),
(2, 1, 10, '2、3', 1.000),
(3, 20, 120, '1、2、3', 1.000),
(4, 20, 180, '1、2、3', 0.100),
(5, 1, 100, '1', 0.100),
(6, 15, 60, '1、2、3', 0.100),
(7, 1, 1, '1、3', 1.000);

--
-- 转储表的索引
--

--
-- 表的索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `book_sort`
--
ALTER TABLE `book_sort`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `borrow_books`
--
ALTER TABLE `borrow_books`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `borrow_card`
--
ALTER TABLE `borrow_card`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `books`
--
ALTER TABLE `books`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用表AUTO_INCREMENT `book_sort`
--
ALTER TABLE `book_sort`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `borrow_books`
--
ALTER TABLE `borrow_books`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- 使用表AUTO_INCREMENT `borrow_card`
--
ALTER TABLE `borrow_card`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `library`
--
ALTER TABLE `library`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
