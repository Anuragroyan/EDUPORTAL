-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2018 at 09:57 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `dob` date NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `contact_no` bigint(10) NOT NULL,
  `collegename` text NOT NULL,
  `schoolname` text NOT NULL,
  `mark` int(20) NOT NULL,
  `marks` int(20) NOT NULL,
  `graduate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`firstname`, `lastname`, `dob`, `email_id`, `contact_no`, `collegename`, `schoolname`, `mark`, `marks`, `graduate`) VALUES
('Anurag', 'Roy', '2018-05-01', 'anuragroy8425@gmail.com', 7619354965, 'PESIT', 'K.V. IFFCO AONLA BAREILLY', 78, 67, 'BCA');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `cid` int(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `course` text NOT NULL,
  `review` longtext NOT NULL,
  `rank` int(10) NOT NULL,
  `exam` text NOT NULL,
  `fees` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`cid`, `name`, `image`, `course`, `review`, `rank`, `exam`, `fees`) VALUES
(1, 'Christ University', 'christ.bmp', 'BCA', 'Placements: The placements for BCA at Christ University are very good. In fact, our senior batch (2012-2015) got 100% placements. In the matter of salary offered in placements, the highest salary offered was 10 LPA, the average salary offered was 6 LPA, and lowest offered was around 3-4 LPA. Almost all major companies like Infosys, Accenture, IBM, HP, and so on visited our college for placements. The roles offered to students were of program managers, software engineers, and account managers. \r\nInfrastructure: They have a good infrastructure with 5 buildings and one main building. They have an amazing auditorium, Wi-Fi, 2 main libraries, medical facilities, sports and games, etc. but the medical facilities are poor.', 1, ' Entrance exam', 'Rs- 78,333'),
(2, 'Kristu Jayanti College', 'kristu.jpg', 'BCA', 'Remarks -College gave me a bunch of good friends along with whom I trip, treck and party a lot. The overall experience in the college is I have never shredded so much sweat until I got admitted in this institution and sometimes I feel that it''s because of this college I learnt about the hardships of life and responsibilities as an individual. \r\nEntrance Preview -I did not write any entrance exams I just submitted my application form after that I had an interview process. Once I cleared the interview process I got admissions to this college.', 2, 'Entrance exam', 'Rs 50,000'),
(3, 'Delhi University', 'du.jpg', 'BCA', 'This university is one of India''s best university. The campus is so vibrant. And teachers are so good. I am the student of faculty of arts. The department is very helpful and sincere. A big thumbs up for this university. One must join Delhi university as it is a very good university.', 3, 'Entrance exam', 'Rs-50,000'),
(4, 'University College Kurukshetra', 'Kurukshetra.jpg', 'BCA', 'placements: Placements are according to your skills. The good company do visit our college. Computer department of our college rank number one in Haryana and number 4 in India. This year placements went well, a lot of students get jobs in well known IT companies. But if you are looking for high package job you should lock somewhere else. \r\nInfrastructure: Well infrastructure of the college is not so good. It is very old college. They need to work on it. The computer lab is pretty good. They are NET and clean and well maintained. There is Wi-Fi at certain spots. A classroom is not good. Canteen is small. Food in the hostel is not good', 4, 'Entrance exam', 'Rs- 66000'),
(5, 'Institute of Management of Studies,noida', 'ims.jpg', 'BCA', 'Placements: The college gave good placement opportunities. Last year, 60% students got the placements. The college holds 10th rank in all over India for BCA course. The average salary given by the companies is good, and our placements of last year were very good. They got many good companies with huge salary packages. \r\nInfrastructure: The infrastructure of our college is not good because there is no ground for any sports tournament, and not much space is available. The library is very good and spread in a very large space. The labs are average, and there is no sports and games in our college, and the college is very good. \r\nFaculty: Teachers are well qualified, and they have much more knowledge.', 5, 'JET IMS', 'Rs-2.85lac'),
(6, 'Women''s Christian College', 'women.jpg', 'BCA', 'There is no cut-off specified by the college. You need to have passed 10+2 from a recognized board. ', 6, 'Entrance Exam', 'Rs-95,475'),
(7, 'DAV College, Chandigarh', 'dav.jpg', 'BCA', 'Placements: The placements are quite good. An upgraded cell for placement is installed for the benefits of the students. If the students are capable, then they can be placed easily. You can be hired easily if you have proper knowledge about the material they are searching for.\r\nInfrastructure: There are a very good Infrastructure and staff for the students. All the necessary compartments are there like a garden, playgrounds etc. There is very space in the palm garden. There are four gardens in the college. You must take admission and see yourself what you are getting to have some memories.\r\nFaculty: I didn''t see faculty like this. They are very helpful and caring. Especially for the students of IT. The principal is very friendly and helping and careful in the college. There are very intelligent staff and good guidance. You must take admission in the college.', 7, 'Entrance exam', 'Rs-1.05lac'),
(8, 'Stella Maris College', 'maris.jpg', 'BCA', 'Course Curriculum Review -\r\n"Very good. Apart from our major subject, They expose us to all the other field. I study basic physics, chemistry, botany, maths, commerce, English, Tamil, German, fine arts, games and many more. I always enjoy the vocational food science course. My friends went to aerobics class. Though some course" \r\nFees Review -\r\n"Fee is reasonable and they give ample time. There are so many scholarships for students in a different category. Sometimes teachers pay for poor students. Filling the fee challan was always a problem for me in my college days. Have nothing more to tell about fees. "', 8, 'Entrance exams', 'Rs- 1.04lac'),
(9, 'Madras Christian College', 'madras.jpg', 'BCA', 'This college has good placement facility', 9, 'Entrance exam', 'Rs- 33000'),
(10, 'Xavier Institute of Computer Application', 'xavier.jpg', 'BCA', 'Remarks -XICA is a relatively new institution and is growing by leaps and bounds. Last year, it was ranked 9th in India''s Top 10 BCA colleges, the only college in Gujarat to be on the list as well. The management is slick and is managed by a world-famous, world-re\r\nEntrance Preview -There were no entrance tests, admissions were purely merits-based. I took the course after my 12th science because I had a plan to get into IT and BCA at Xavier''s was better than a BE other colleges in the area, also the fact that you graduate in 3 years.', 10, 'XAT', 'Rs-31800'),
(11, 'RV College of Engineering(RVCE)', 'rvce.jpg', 'MCA', 'Course Curriculum Review- \r\n"RV is known for EC and cs so of course, the focus is there but still they have to improve and increase the standards in my point of view and yes research initiative happens but the student has to initiate it but teachers will always be there to help " \r\nFees Review- \r\n"If anyone joining through cet would cost 85000 per year for general category and decrease for caste or reservation and if you join through snq quota under kcet for the first year you will have to pay 38000 and comedk would come around 3.5lakh per year including everything "', 11, 'KMAT', 'Rs-1.03lac'),
(12, 'MS Ramaiah Institute of Technology', 'MSR.jpg', 'MCA', 'Placements from the college are great. Many students are selected for placements. In fact, it holds the 3rd place in Karnataka for placements. There is competition with other colleges for placements.\r\nThe college is good for studies, especially engineering is awesome here as it is one of the best in the Karnataka. Admission is done on the basis of common entrance exam of Karnataka. there is no interview further. ', 12, 'KMAT', 'Rs-60,000'),
(13, 'Bangalore Institute of Technology', 'bangalore.jpg', 'MCA', 'A techno-cultural festival called Manthan is celebrated at an inter-collegiate level every year in April at Bangalore Institute of Technology (BIT). Rock show was arranged every year. Fashion shows, outing, ethnic wears occasionally, outing, trips.\r\nThose from the Mechanical, Civil and Computer Science departments hold nothing but praise and respect for their teachers. Students from other departments claim that the faculty is average with some really good professors and some really dumb ones. The faculty in the Instrumentation Technology department is said to be in urgent need for betterment. Communication is in English, but they have an inclination towards the regional language and are better off explaining in Kannada.', 13, 'KMAT', 'Rs-1,93,700lac'),
(14, 'AIMS University', 'aiims.jpg', 'MCA', 'Placements: The placements for MCA at AIMS University are very good. In fact, our senior batch (2012-2015) got 100% placements. In the matter of salary offered in placements, the highest salary offered was 10 LPA, the average salary offered was 6 LPA, and lowest offered was around 3-4 LPA. Almost all major companies like Infosys, Accenture, IBM, HP, and so on visited our college for placements. The roles offered to students were of program managers, software engineers, and account managers. \r\nInfrastructure: They have a good infrastructure with 5 buildings and one main building. They have an amazing auditorium, Wi-Fi, 2 main libraries, medical facilities, sports and games, etc. but the medical facilities are poor.', 14, 'AIMS entrance exam', 'Rs-121,667lac'),
(15, 'Presidency College', 'PRESIDENCY.jpg', 'MCA', 'Good remarks college is Faculty are teaching in an innovative way. Classroom ambience is good. College placement is good. College management and all staff are helping nature.\r\nCollege as of now is good and seniors are friendly and little dominating overall the management is good and they focus on good discipline and time management they teach on language improvements and need the update.\r\nA place worth spending time in. I wouldn''t give any kind of negative remarks because as far as I was a student there I had really good time and presidency helped me in my growth.', 15, 'KMAT', 'Rs-98,667'),
(16, '\r\nAcharya Institute of Management and Science ', 'Acharya.jpg', 'MCA', 'Acharya Institute of Technology above average college in term of placement, Faculty, Student crowd & Industry Exposure etc. The companies visit the campus like Amazon ANZ Book My Show Cognizant Essilor HCL HP IBM IGATE Infosys ITC Infotech L&T Infotech Lumax MicroLand Mind Tree Mphasis MU Sigma NTT Data sonata software TATA AIG Insurance TCS Tech Mahindra Torry Harris Wipro etc. The average package you can expect around more than 4 Lakhs', 16, 'Acharya entrance exam', 'Rs-54890'),
(17, 'Nitte Meenakshi Institute of Technology', 'nitte.jpg', 'MCA', 'CAMPUS LIFE-\r\nThere are fewer fests, cultural competitions organised by our college. Last year computer department had conducted a technical fest called impulse. We had science exhibition maths exhibition. Mechatronics department had started an organisation called Mera( mechatronics engineering and robotics association). This time mechatronics department had conducted a fest which included project expo, painting on swachh Bharath, quiz. \r\nEXAM STRUCTURE-\r\nExams were conducted very frequently. It was like testing of knowledge and of a memory enhancement program... But frequent exams has made us a bit tired.Not too stress.. its OK for me. It helped me for final exams so much. Labs are good.\r\nCOURSE CURRICULUM OVERVIEW\r\nIt''s my interest to choose this course. Both theoretical and practical learning is there in college. The research initiative is there in college who have completed their masters.My course was really good and interesting to learn. A lot of research activities were conducted.It developed the communication skills and enhanced the academic level of experience. Crisis management ', 17, 'Nitte entrance exam', 'Rs-84,890'),
(18, 'Oxford College of Engineering', 'kristu.jpg', 'MCA', 'Entrance Preview -Am a commerce seeking student for which I took BCom with the intention of becoming a business entrepreneur. I don''t think revealing my marks isn''t a good idea. From my college experience, I hope to gain many things. Obviously, college is a time that students can truly become individuals. When I attend the college I will have the opportunity to become more independent and to take on new responsibilities.\r\nPlacement -Kristu Jayanti college was heading with all kind of placements and job domains in all category.Mainly focused in mnc''s because over college was one among the top colleges in Bangalore. While I completed my graduation the college has become autonomous. So, the opportunities have never gone but on the other hand, it''s growing as ever grown. Placement is the act of organizing people or things into a certain order, the act of putting items in a certain location, or the act of finding a job for someone.', 18, ' entrance exam', 'Rs-3,00,000lac'),
(19, 'New Horizon College of Engineering', 'horizon.jpg', 'MCA', 'Very Good For An Autonomous institution excellent infrastructure has a good placement rate better facilities and facilities but has a poor mess. The college should have been a little bit bigger It lacks parking facility for hostilities. It''s very good to study in an autonomous college.\r\nNew horizon college of engineering is one of the very best colleges in south Bangalore! Teachers are very friendly and very interactive and can be approached easily. vast campus and Good greenery. Well experienced teachers and completes lesson well before exams and also conducts remedial teaching !! Good placement and has extracurricular activities !! And has won many vtu championships! Two vast canteens! And good food facility! Transport is available and is in a prime location.', 19, 'KMAT', 'Rs-84,418'),
(20, 'Dayananda Sagar College of Management and Information...\r\n', 'daya.bmp', 'MCA', 'Dayananda Sagar college of engineering is one of the best colleges in Bangalore, for studies as well as extracurricular activities. Good campus with green environment. In case of teachings aspect I m very glad to say I have never seen such good faculties before. Each faculty are more than average ..', 20, 'KMAT', 'Rs-1.23lac');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `comment_sender_name` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(1, 0, 'hello', 'anurag roy', '2018-05-03 18:49:44'),
(2, 1, 'hello bro', 'rahul singh', '2018-05-03 18:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` text,
  `answer` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`) VALUES
(1, 'How long is an IELTS score valid?', 'An IELTS Test Report Form (TRF) is valid for two (2) years.'),
(2, 'AGE limit for IELTS Test?', 'IELTS Test is not recommended for candidates under 16 years. However, if they wish to take the test, they may.'),
(3, 'What are the 4 sections of IELTS?', 'There are 4 sections or modules in IELTS: Reading, Writing, Listening and Speaking.'),
(4, 'Which countries accept the IELTS Score?', 'IELTS is accepted as the standard international test system for English language proficiency by a whole range of institutions. These include the majority of all education establishments operating in English in Australia, Canada, the UK and New Zealand. US educational institutions are also now starting to use it. Many international immigration services also use the IELTS as well as various professional organisations including the British and Australian Medical Councils and the UK Ministry of Defence. '),
(5, 'How long does the IELTS exam take?', 'The IELTS examination takes approximately 2 hours and 45 minutes to complete. The time schedules for the reading, writing and listening sections are fixed but for the speaking section that may vary. \r\nReading and Writing sections each one takes 1 hour. The listening test takes 30 minutes. The speaking part usually lasts for 15 minutes but there is no fixed time limit for the interview or speaking section. you can expect to finish the speaking module in 15-20 minutes. '),
(6, ' What are the different courses in Engineering?', 'Apart from the traditional branches which include Civil, Mechanical and Electrical, engineering offers a vista of branches and specialization options. One can opt for B.E/ B.Tech in the disciplines of Computer Science, Information Technology, Electronics and Communication, Chemical, Automobile, Ceramics, Environmental, Textile, Marine, Production engineering etc. Engineering courses are usually offered at undergraduate, postgraduate and doctorate level. The eligibility criterion for undergraduate courses is a pass in 10+2 with 50% marks in physics, chemistry and mathematics. For postgraduate course i.e. M.E/M.Tech, a Bachelors degree in engineering is required and for a doctoral course, post graduation in the relevant subject is essential. '),
(7, 'What are the different Institutes which offer degrees in Engineering?', 'In India, there are a plethora of institutes offering courses in various disciplines of engineering, at different degree/diploma levels. Some of the topmost engineering institutes include the Indian Institutes of Technology (IITs), National Institutes of Technology(NITs), Birla National Institute of Technology and Science, Dhirubhai Ambani Institute Of Information and Communication Technology, Indian Institutes of Information Technology (IIITs), Vellore Institute of Technology, Indian Institute of Space Science and Technology (IIST) etc.'),
(8, 'How can one get admissions to these colleges?', 'Admission to the engineering courses is usually done on the basis of merit in the entrance exams ( like IIT-JEE, AIEEE, BITSAT, WBJEE, VITEEE, CUSAT, ISAT, etc ) conducted at the state or national level. Also, many colleges and universities give direct admission based on the merit list ( based on XII board exams). '),
(9, 'What are the different career prospects after completion of engineering?', 'The overall career prospect of this profession is good and is considered to be excellent in certain specialities. Engineers find jobs opportunity in almost all related industries, academics and research institutes. They could also find employment in the government sector and armed forces. '),
(10, 'What are the different courses in Medicine?', 'Courses in medical science are offered at undergraduate, postgraduate and doctorate levels. At the undergraduate level, an MBBS degree is awarded in allopathic system of medical science, whereas in Ayurvedic, Homeopathic and Unani System of Medical science, BAMS, BHMS and BUMS degree are awarded, respectively. A BDS degree is awarded at the undergraduate level in dental science. For Veterinary Science, B. Sc degree is awarded. For pursuing any of the above-mentioned courses, one has to pass the intermediate exam with Physics, Chemistry and Biology as compulsory subjects, from a recognized Board. For pursuing Masters degree, Bachelors degree is required and for a doctoral programme, one has to be a postgraduate in the field of medical science.'),
(11, 'What are the different Institutes which offer degrees in Medicine?', 'In India, there are a number of institutes offering courses in various disciplines of medicine, at different degree/diploma levels. Some of the topmost medical institutes are All India Institute of Medical Sciences (AIIMS), Armed Forces Medical College (AFMC), Banaras Hindu University (BHU), Lady Hardinge Medical College, Maulana Azad Medical College, Jawaharlal Nehru Institute of Postgraduate Medical Education and Research (JIPMER), Christian Medical College (CMC), Aligarh Unani and Ayurvedic Medical College, A.B. Shetty Memorial Institute of Dental Sciences, etc. '),
(12, 'How can one get admissions to these colleges?', 'Admission to the engineering courses is usually done on the basis of merit in the entrance exams ( AIIMS-PMT, AIPMT, BHU-PMT, UPCMET, AIPGDET, JIPMER etc ) conducted at the state or national level. Also, many colleges and universities give direct admission based on the merit list ( based on XII board exams). '),
(13, 'What are the different career prospects after completion of a degree in Medicine?', 'The profession of a doctor is very demanding and also, very rewarding. One could not just find employment in the government or private hospitals, but also find employment in research institutes and medical colleges, as researchers. They could also do private practice or work in nursing homes, clinics or health care centres. '),
(14, 'How are the Verbal Reasoning and Quantitative Reasoning sections scored?', 'The Verbal Reasoning and Quantitative Reasoning measures are section-level adaptive. This means the computer selects the second section of a measure based on the performance on the first section. Within each section, all questions contribute equally to the final score. For each of the two measures, a raw score is computed. The raw score is the number of questions answered correctly.'),
(15, 'How long are GRE scores valid?', 'For tests taken on or after July 1, 2016, scores are reportable for five years following your test date. For example, scores for a test taken on July 3, 2017, are reportable through July 2, 2022.\r\nFor tests taken prior to July 1, 2016, scores are reportable for five years following the testing year in which you tested (July 1 June 30). For example, scores for a test taken on May 15, 2015, are reportable through June 30, 2020. GRE scores earned prior to July 2012 are no longer reportable.\r\nGRE scores earned in July 2012 are reportable until June 30, 2018.'),
(16, 'How is the Analytical Writing section scored?', 'For the computer-delivered test, each essay receives a score from at least one trained rater, using a six-point holistic scale. In holistic scoring, raters are trained to assign scores on the basis of the overall quality of an essay in response to the assigned task. The essay score is then scored by e-rater, a computerized program developed by ETS that is capable of identifying essay features related to writing proficiency. If the human and e-rater scores closely agree, the average of the two scores is used as the final score. If they disagree, a second human score is obtained, and the final score is the average of the two human scores.'),
(17, 'What skills does the GRE General Test measure?', 'The GRE General Test focuses on the types of skills that have been identified as critical for success at the graduate level verbal reasoning, quantitative reasoning, critical thinking and analytical writing regardless of a student''s field of study.'),
(18, 'How does the Analytical Writing measure differ from the Verbal Reasoning measure of the GRE General Test?', 'Because the Analytical Writing measure is a performance test, test takers must articulate and support their own ideas as they discuss a complex issue as well as construct and evaluate arguments and sustain a focused and coherent discussion.\r\nThe Verbal Reasoning measure of the GRE General Test assesses the ability to analyze and evaluate written material and synthesize information obtained from it, analyze relationships among component parts of sentences and recognize relationships among words and concepts.\r\nWhereas the Verbal section measures a test taker''s ability to understand complex ideas expressed in written passages and to recognize relationships among words and concepts, the Analytical Writing section measures the ability to articulate and support ideas and to analyze arguments.'),
(19, 'How should departments use GRE scores?', 'The GRE Board has developed Guidelines for the Use of GRE Scores, which summarizes the considerations for appropriate use of GRE test scores.'),
(20, 'Why is it important to look at percentile ranks?', 'Percentile ranks are important to look at because they provide information about an applicant''s performance in comparison to other applicants. A percentile rank for a score indicates the percentage of examinees that took the test and received a lower score. Regardless of when the reported scores were earned, the percentile ranks for General Test scores are based on the scores of all examinees who tested within a recent time period.'),
(21, 'How should we interpret Analytical Writing scores, particularly for test takers whose native language is not English?', 'As a performance assessment, the GRE Analytical Writing section provides a snapshot of a test taker''s analytical writing ability before entry into graduate school. If test takers for whom English is a second language do not understand the task being posed to them, their performance on the Analytical Writing section and the Verbal section will be affected. Test users should consider a variety of pieces of information about applicants whose native language is not English, including TOEFL scores, to determine whether to admit these students.'),
(22, 'What research is available on the GRE General Test?', 'The GRE General Test is backed by decades of research. Many reports are available online. '),
(23, 'Can I view scores online?', 'Yes, score recipients can view scores online '),
(24, 'What scores are reported for the GRE General Test?', 'A Verbal Reasoning score reported  on a 130 to 170 score scale, in 1 point increments\r\nA Quantitative Reasoning score reported on a 130 to 170 score scale, in 1 point increments\r\nAn Analytical Writing score reported on a 0 to 6 score scale, in half-point increments.'),
(25, 'How was the GRE Comparison Tool for Business Schools developed?', 'The research used to create the GRE Comparison Tool included a study with data from individuals who took both the GRE General Test and the GMAT test under standard testing conditions and tried their best on both tests. An enhanced version of the tool, introduced in July 2013, includes empirical data collected from test takers who took both the GRE General Test, which launched in August 2011 and the GMAT exam.');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rating` float NOT NULL,
  `hit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `name`, `rating`, `hit`) VALUES
(1, 'christ University', 0.813888, 6),
(2, 'Kristu Jayanti College', 0.805555, 6),
(3, 'Department of Computer Science', 2.625, 4),
(4, 'University College Kurukshetra', 4, 1),
(5, 'Institute of Management of Studies,noida', 5, 1),
(6, 'Women''s Christian College', 0, 0),
(7, 'DAV College, Chandigarh', 4, 1),
(8, 'Stella Maris College', 4, 1),
(9, 'Madras Christian College', 5, 1),
(10, 'Xavier Institute of Computer Application', 5, 1),
(11, 'RV College Of Engineering(RVCE)', 3, 1),
(12, 'MS Ramaiah Institute Of Technology', 3.5, 2),
(13, 'Bangalore Institute of Technology', 4, 1),
(14, 'REVA University', 3, 1),
(15, 'Presidency College ', 6, 1),
(16, 'Acharya Institute of Management and Science ', 4, 1),
(17, 'Nitte Meenakshi Institute of Technology', 7, 1),
(18, ' Jain University', 0.777778, 9),
(19, 'New Horizon College of Engineering', 8, 1),
(20, 'Dayananda Sagar College of Management and Information Technology', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` text NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email_id`, `username`, `password`) VALUES
('Anurag Roy', 'anuragroy8425@gmail.com', 'anurag10', 'intelcore');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `name` text NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `topic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`name`, `email_id`, `comments`, `topic`) VALUES
('Aamir Pasha', 'aamirpasha@gmail.com', 'Teacher methodology-\r\n\r\nAakash - The faculty of Aakash is experienced and dedicated undoubtedly ( at least mine were ) but they are sort of business minded. once a class is over, they leave the class with speed higher than that of the photon.\r\nAllen - The faculty is dedicated and experienced. Apart from teaching, they do motivate students at times. They don''t leave the class until the topic is done ( most of the time )', 'Which coaching is best for the medical entrance exam: ALLEN or AAKASH?'),
('Anurag Roy', 'anuragroy12@gmail.com', 'International Engllish Language Testing System ', 'what is the full form IELTS?'),
('Anurag Roy', 'anuragroy8425@gmail.com', 'Christ University, Bangalore University, Presidency college, Acharya\r\nInstitute of Technology.\r\n', 'which are the best colleges for BCA in Bangalore?'),
('Arvind ', 'arvind12@gmail.com', 'I am a Chartered Accountant and scored 99 percentile + in CAT 2016. I have appeared for both the exams with fair success and hence can answer quite confidently.Let''s look at this mathematically -Con...', ' A 99.99percentile in CAT or clearing both groups of CA Final (in the first attempt)?'),
('Jayant Singh', 'jayantsingh@gmail.com', 'One really good platform to practice coding and get yourself introduced to competitive programming is CodeChef (Programming Competition, Programming Contest, Online Computer Programming', 'What are some of the best ways to learn the programming language?'),
('Prashant Soni', 'prashantsoni@gmail.com', 'The starting salary of software engineers in India is Rs 3 Lacs per year. After about 2 to 3 years, it rises to Rs 10 lacs per year and stagnates in that range.\r\n\r\nThe starting salary of a software engineer in the US starts at USD 65K and tops around USD 100K which is somewhere between INR 42 to 65 lakhs, which is about 10 to 15 times more than what you earn in India.\r\n\r\nEven when you reject the absolute value and go by PPP, your earning potential in the US is about 3 to 4 times more.', 'Why don''t students come back to India after they complete their MS in the US?'),
('Prateik Dubey', 'prateikdubey12@gmail.com', 'Hadoop training is one of the premier technologies that big data hadoop training in pune invented in the wake of big data explosion.', 'What is best training institute for a big data course(bangalore) with placement?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `apply_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `review` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `college` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `faq` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`id`) REFERENCES `faq` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `apply` (`email_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
