-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 05:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goodwill`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicants`
--

CREATE TABLE `tbl_applicants` (
  `id` int(11) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `current_address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `myfile` varchar(50) NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_applicants`
--

INSERT INTO `tbl_applicants` (`id`, `parent`, `fullname`, `current_address`, `mobile`, `phone`, `email`, `sortorder`, `position`, `myfile`, `qualification`) VALUES
(1, '', 'Swarna Shakya', 'KTM', '9849482842', '', 'swarna@longtail.info', 1, '1', 'family-fun-1.jpg', 'test'),
(2, '', 'asdasd', 'Chettrapati, Dhobichaur a', '9861369900', '', 'asdasd@gmail.com', 2, '11', '', 'asdasd'),
(3, '', 'sahas', 'Chettrapati, Dhobichaur a', '9861369900', '', 'statshakya@gmail.com', 3, '13', 'IMG-20231018-WA0009.jpg', 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `multiimage` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`, `multiimage`) VALUES
(11, 0, 'experience', 'Experience', 'Experience', '<div class=\"row space\">\r\n	<div class=\"column full textcenter\">\r\n		<div class=\"section-wrapper-boxed\">\r\n			<div class=\"big-title\">\r\n				<p class=\"subtitle style-border-top color-accent\">\r\n					Welcome to our Luxury Boutique Hotel</p>\r\n				<h1 class=\"style-low-margin\">\r\n					Experience one of the<br />\r\n					most beautiful hotel in a different,<br />\r\n					and intensely personal way.</h1>\r\n			</div>\r\n			<p>\r\n				Feel the comfort of home in the heart of the artistic city. Located conveniently close to Patan Durbar Square, Mahaboudha Temple, and Rudravarna Mahavihar (popular world heritage sites). Hotel Goodwill is a heritage boutique hotel in Nepal loved by travelers across the world who seek peaceful abode away from the crowd. Cultural treasure of Patan can be seen in the hotel through an array of handmade traditional statues, stone Chaitya, wood carvings on the foundation of traditional style and terracotta building.</p>\r\n			<a class=\"button medium standard accent no-margin-right\" href=\"about-us\">Discover More</a></div>\r\n	</div>\r\n</div>\r\n<div class=\"row space\">\r\n	<div class=\"column full layered-images\">\r\n		<div class=\"column one-third animate__animated\" data-animation-delay=\"0\" data-animation-type=\"animate__fadeInUp\">\r\n			<img alt=\"\" src=\"/hotelgoodwill/userfiles/images/one.jpg\" /></div>\r\n		<div class=\"column one-third animate__animated\" data-animation-delay=\"200\" data-animation-type=\"animate__fadeInUp\">\r\n			<img alt=\"\" src=\"/hotelgoodwill/userfiles/images/two.jpg\" /></div>\r\n		<div class=\"column one-third last animate__animated\" data-animation-delay=\"500\" data-animation-type=\"animate__fadeInUp\">\r\n			<img alt=\"\" src=\"/hotelgoodwill/userfiles/images/three.jpg\" /></div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, '', '', '', 0, '2023-09-03 15:53:53', '2024-06-25 16:34:50', 1, 1, 0x613a313a7b693a303b733a31373a2261736648622d736c69646572352e6a7067223b7d, '', '', 'a:0:{}'),
(16, 0, 'about-us', 'About Us', '', '<div class=\"big-title animate__animated\" data-animation-delay=\"0\" data-animation-type=\"animate__fadeInDown\">\r\n	<p class=\"subtitle style-no-border color-accent\">\r\n		.... a world of seclusion and indulgence</p>\r\n	<h1 class=\"style-low-margin\">\r\n		Hotel Goodwill</h1>\r\n</div>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<div class=\"divider60\">\r\n	&nbsp;</div>\r\n<div class=\"animate__animated\" data-animation-delay=\"100\" data-animation-type=\"animate__fadeInUp\">\r\n	<h2 style=\"color: #8a3c1e;\">\r\n		Welcome to Hotel Goodwill - &quot;The Hidden Treasure&quot;</h2>\r\n	<p style=\"text-align: justify;\">\r\n		Nestled in the heart of Nepal&#39;s artistic city, Hotel Goodwill invites you to experience the comfort of home amidst cultural riches. Discover our heritage boutique hotel, a beloved sanctuary for travelers seeking tranquility near Patan Durbar Square, Mahaboudha Temple, and Rudravarna Mahavihar&mdash;world-renowned heritage sites that breathe life into our surroundings.</p>\r\n	<p style=\"text-align: justify;\">\r\n		Step into a realm where traditional craftsmanship meets modern hospitality. Our spaces are adorned with a mesmerizing array of handmade statues, intricate wood carvings, and timeless stone Chaitya, echoing the rich cultural tapestry of Patan.</p>\r\n	<p style=\"text-align: justify;\">\r\n		Unwind in our serene terracotta building, designed to offer a peaceful abode away from the bustling crowds. Whether you&#39;re here for leisure or business, our hospitality reflects the warmth and charm of Nepalese culture.</p>\r\n	<p style=\"text-align: justify;\">\r\n		We are conveniently located at Kanibahal, Lalitpur, just a stone&#39;s throw away from these iconic landmarks. For reservations or inquiries, contact us at 01-5444520. Let Hotel Goodwill be your gateway to an unforgettable Nepalese experience.</p>\r\n</div>\r\n', 0, '', 1, '', '', '', 0, '2024-06-10 12:02:53', '2024-06-25 17:10:58', 2, 0, 0x613a313a7b693a303b733a31373a22475a5752742d736c69646572352e6a7067223b7d, '', '', 'a:4:{i:0;s:18:\"7CmjS-about_04.jpg\";i:1;s:18:\"cG4SF-about_02.jpg\";i:2;s:18:\"Mh0V4-about_03.jpg\";i:3;s:18:\"XTCr2-about_05.jpg\";}'),
(19, 0, 'wellness-relaxation', 'Wellness & Relaxation', '', '<div class=\"facilities style-sliced\">\r\n	<div class=\"facility-box\">\r\n		<div class=\"content-left image-wrapper animate__animated\" data-animation-delay=\"0\" data-animation-type=\"animate__fadeInLeft\">\r\n			<div class=\"media\">\r\n				<div class=\"inner-media\">\r\n					<img alt=\"\" src=\"/hotelgoodwill/userfiles/files/swimmingpool2.jpg\" /></div>\r\n			</div>\r\n		</div>\r\n		<div class=\"content-right text-wrapper animate__animated\" data-animation-delay=\"0\" data-animation-type=\"animate__fadeInRight\">\r\n			<div class=\"text-box\">\r\n				<span class=\"subtitle\">Facility</span> <span class=\"label\">Aqua Swimming Pool</span>\r\n				<div class=\"text\">\r\n					<p>\r\n						Dive into bliss with our stunning swimming pools, turning your backyard into a luxurious oasis. Perfect for family fun, fitness, or tranquil escapes, our crystal-clear waters promise pure relaxation. Crafted with precision and elegance, they offer years of enjoyment. Experience ultimate outdoor living with our beautiful pools.Architectural Heritage &amp; Culture</p>\r\n				</div>\r\n				<div class=\"divider10\">\r\n					&nbsp;</div>\r\n				<a class=\"button medium standard accent no-margin\" href=\"facilities-list\">Discover more</a></div>\r\n		</div>\r\n	</div>\r\n	<div class=\"facility-box\">\r\n		<div class=\"content-right text-wrapper animate__animated\" data-animation-delay=\"0\" data-animation-type=\"animate__fadeInLeft\">\r\n			<div class=\"text-box\">\r\n				<span class=\"subtitle\">Facility</span> <span class=\"label\">Architectural Heritage &amp; Culture</span>\r\n				<div class=\"text\">\r\n					<p>\r\n						Discover the timeless beauty of our hotel, where every corner echoes the grandeur of architectural heritage. Immerse yourself in the rich tapestry of local culture, exquisitely woven into the design of our elegant rooms and suites. Stroll through our stunning gardens, inspired by historical landmarks, and feel the essence of tradition. Indulge in authentic culinary delights that celebrate our vibrant past. Experience a stay that transcends time, blending history with modern luxury.</p>\r\n				</div>\r\n				<div class=\"divider10\">\r\n					&nbsp;</div>\r\n				<a class=\"button medium standard accent no-margin\" href=\"facilities-list\">Discover more</a></div>\r\n		</div>\r\n		<div class=\"content-left image-wrapper animate__animated\" data-animation-delay=\"0\" data-animation-type=\"animate__fadeInRight\">\r\n			<div class=\"media\">\r\n				<div class=\"inner-media\">\r\n					<img alt=\"\" src=\"/hotelgoodwill/userfiles/files/history.jpg\" style=\"width: 100%;\" /></div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-11 16:57:44', '2024-06-25 13:30:31', 5, 1, 0x613a303a7b7d, '', '', 'a:0:{}'),
(17, 0, 'hall', 'Meeting & Events', '', '<p>\r\n	<style type=\"text/css\">\r\n.table-responsive table.table-bordered th{\r\ntext-align: center;\r\n}	</style>\r\n</p>\r\n<div class=\"section-wrapper-boxed \">\r\n	<div class=\"column full textcenter dine\">\r\n		<div class=\"big-title animate__animated\" data-animation-delay=\"0\" data-animation-type=\"animate__fadeInUp\">\r\n			<p class=\"subtitle style-border-top color-accent\">\r\n				Event Destination</p>\r\n			<h1 class=\"style-low-margin\">\r\n				A World of Eventful<br />\r\n				Experiences</h1>\r\n		</div>\r\n		<div class=\"divider40 hide-on-mobile\">\r\n			&nbsp;</div>\r\n		<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n		<div class=\"divider60\">\r\n			&nbsp;</div>\r\n		<div class=\"animate__animated\" data-animation-delay=\"100\" data-animation-type=\"animate__fadeInUp\">\r\n			<p>\r\n				We provide outstanding and sensible services to create a memorable experience for your special event. Our venues feature a/ v, catering, and planning services.<br />\r\n				<br />\r\n				Step into our Tara Hall, a grand space where dreams unfold and memories are made. Designed for versatility, it&rsquo;s the perfect canvas for your spectacular events. With breathtaking architecture and cutting-edge amenities, every occasion is transformed into an unforgettable celebration. Here, in the heart of our hotel, we host your moments with elegance and flair.<br />\r\n				Designing an open hall space is adaptable for versatile events creating a welcoming space that can serve weddings, conferences, parties, and social gatherings. We ensure robust Wi-Fi coverage for guests&#39; convenience and equip the hall with modern audio-visual equipment for presentations and entertainment.</p>\r\n			<a class=\"button large standard accent no-margin-right\" href=\"contact-us#contact-hall\">Reserve Now</a></div>\r\n	</div>\r\n	<div class=\"divider60\">\r\n		&nbsp;</div>\r\n	<h1 class=\"style-low-margin\" style=\"text-align:center;\">\r\n		Setup Style and Occpancy</h1>\r\n	<div class=\"table-responsive animate__animated\" data-animation-delay=\"0\" data-animation-type=\"animate__fadeInUp\">\r\n		<table class=\"table table-bordered\">\r\n			<thead>\r\n				<tr>\r\n					<th scope=\"col\">\r\n						Hall</th>\r\n					<th scope=\"col\">\r\n						Hall Size</th>\r\n					<th scope=\"col\">\r\n						Theatre Style</th>\r\n					<th scope=\"col\">\r\n						Round Table</th>\r\n				</tr>\r\n			</thead>\r\n			<tbody>\r\n				<tr>\r\n					<td>\r\n						Tara Hall</td>\r\n					<td>\r\n						2200 sq. ft.</td>\r\n					<td>\r\n						200 Covers</td>\r\n					<td>\r\n						80 Covers</td>\r\n				</tr>\r\n				<tr>\r\n					<td>\r\n						Open Hall</td>\r\n					<td>\r\n						800 sq. ft.</td>\r\n					<td>\r\n						70 Covers</td>\r\n					<td>\r\n						55 Covers</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-10 12:17:01', '2024-06-18 16:38:53', 3, 0, 0x613a313a7b693a303b733a32303a2261697a704c2d68616c6c62616e6e65722e6a7067223b7d, '', '', 'a:6:{i:0;s:15:\"t69Tm-hall5.jpg\";i:1;s:15:\"kuGOY-hall6.jpg\";i:2;s:15:\"guP7q-hall4.jpg\";i:3;s:15:\"LB7cv-hall3.jpg\";i:4;s:15:\"dtiAH-hall1.jpg\";i:5;s:15:\"KJyUH-hall2.jpg\";}'),
(18, 0, 'dine', 'Our Restaurant', '', '<p>\r\n	<style type=\"text/css\">\r\n.table-responsive table.table-bordered{\r\ntext-align: center;\r\n}	</style>\r\n</p>\r\n<div class=\"big-title animate__animated\" data-animation-delay=\"0\" data-animation-type=\"animate__fadeInUp\">\r\n	<p class=\"subtitle style-border-top color-accent\">\r\n		Unforgettable Multi Cuisine</p>\r\n	<h1 class=\"style-low-margin\">\r\n		A World Of Culinary<br />\r\n		Delights</h1>\r\n</div>\r\n<div class=\"divider40 hide-on-mobile\">\r\n	&nbsp;</div>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<div class=\"divider60\">\r\n	&nbsp;</div>\r\n<div class=\"animate__animated\" data-animation-delay=\"100\" data-animation-type=\"animate__fadeInUp\">\r\n	<p>\r\n		One of the best parts of traveling is the food. We serve International and Nepali cuisine. Our in-house chefs also offer a variety of mouth-watering dishes.<br />\r\n		<br />\r\n		Savor the flavors of elegance at our hotel&rsquo;s signature restaurant. Indulge in a culinary journey with dishes crafted from the freshest local ingredients. Experience dining reimagined, where every bite tells a story of tradition and innovation. Relax in a sophisticated ambiance that blends comfort with design. Join us for an unforgettable meal, where service is always personal and attentive.</p>\r\n	<a class=\"button large standard accent no-margin-right\" href=\"contact-us#contact-hall\">Book Your Table Now</a></div>\r\n<div class=\"divider60\">\r\n	&nbsp;</div>\r\n<h1 class=\"style-low-margin\" style=\"text-align:center;\">\r\n	Opening Time and Occupancy</h1>\r\n<div class=\"table-responsive animate__animated\" data-animation-delay=\"0\" data-animation-type=\"animate__fadeInUp\">\r\n	<table class=\"table table-bordered\">\r\n		<thead>\r\n			<tr>\r\n				<th scope=\"col\">\r\n					Area</th>\r\n				<th scope=\"col\">\r\n					Covers</th>\r\n				<th scope=\"col\">\r\n					Timing</th>\r\n				<th scope=\"col\">\r\n					Type</th>\r\n			</tr>\r\n		</thead>\r\n		<tbody>\r\n			<tr align=\"left\">\r\n				<td>\r\n					Restaurant</td>\r\n				<td>\r\n					48 Pax</td>\r\n				<td>\r\n					7:00 am to 10:00 pm</td>\r\n				<td>\r\n					All Day</td>\r\n			</tr>\r\n			<tr align=\"left\">\r\n				<td>\r\n					Courtyard</td>\r\n				<td>\r\n					51 Pax</td>\r\n				<td>\r\n					7:00 am to 10:00 pm</td>\r\n				<td>\r\n					All Day</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-10 12:34:43', '2024-06-18 16:38:19', 4, 0, 0x613a313a7b693a303b733a32343a226432394c662d64696e655f62616e6e65725f30312e6a7067223b7d, '', '', 'a:4:{i:0;s:19:\"NXixk-breakfast.jpg\";i:1;s:17:\"FfdTP-dine_04.jpg\";i:2;s:16:\"v7ujF-drinks.jpg\";i:3;s:20:\"huDyV-dine_slide.jpg\";}'),
(20, 0, 'daycation-package', 'Daycation Package', 'Offers & Packages', '<p>\r\n	<strong>For Daycation Package, it is Rs.3500 only for Couple</strong></p>\r\n<ul>\r\n	<li>\r\n		<strong>Valid from 9am - 5pm only. </strong></li>\r\n	<li>\r\n		<strong>⁠You will need to make online payment for booking confirmation.</strong></li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Daycation Package includes: &bull;</p>\r\n<ul>\r\n	<li>\r\n		Welcome Drinks</li>\r\n	<li>\r\n		10% Discount on Restaurant and Bar&nbsp;</li>\r\n	<li>\r\n		Accommodation in Deluxe Rooms</li>\r\n	<li>\r\n		Complimentary Access to Swimming Pool</li>\r\n	<li>\r\n		⁠Free Wi-Fi &amp; Parking</li>\r\n</ul>\r\n', 0, '', 1, '', '', '', 0, '2024-06-17 20:15:29', '2024-06-17 20:20:28', 6, 0, 0x613a303a7b7d, '', '', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `blog_date` date NOT NULL,
  `archive_date` date NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `image` varchar(50) NOT NULL,
  `source` mediumtext NOT NULL,
  `type` int(10) NOT NULL,
  `viewcount` int(11) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `linksrc` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linktype` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conbined_news`
--

CREATE TABLE `tbl_conbined_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `home_image` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `display` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `source` mediumtext NOT NULL,
  `meta_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configs`
--

CREATE TABLE `tbl_configs` (
  `id` int(11) NOT NULL,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `fb_upload` varchar(255) NOT NULL,
  `twitter_upload` varchar(255) NOT NULL,
  `gallery_upload` varchar(255) NOT NULL,
  `contact_upload` varchar(255) NOT NULL,
  `other_upload` varchar(255) NOT NULL,
  `facility_upload` varchar(240) NOT NULL,
  `offer_upload` varchar(255) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT 1,
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `address` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `fb_messenger` text NOT NULL,
  `google_anlytics` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `robot_txt` text NOT NULL,
  `schema_code` tinytext NOT NULL,
  `book_type` tinyint(4) NOT NULL DEFAULT 1,
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `booking_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `search_box` text DEFAULT NULL,
  `search_result` text DEFAULT NULL,
  `action` tinyint(1) NOT NULL DEFAULT 0,
  `contact_info2` varchar(100) NOT NULL,
  `pobox` varchar(50) NOT NULL,
  `pixel_code` mediumtext NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `whatsapp_a` varchar(100) NOT NULL,
  `footer_logo` varchar(255) NOT NULL,
  `google_map` mediumtext NOT NULL,
  `event_reservation` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configs`
--

INSERT INTO `tbl_configs` (`id`, `sitetitle`, `icon_upload`, `logo_upload`, `fb_upload`, `twitter_upload`, `gallery_upload`, `contact_upload`, `other_upload`, `facility_upload`, `offer_upload`, `sitename`, `location_type`, `location_map`, `location_image`, `fiscal_address`, `mail_address`, `contact_info`, `address`, `email_address`, `breif`, `copyright`, `meta_title`, `site_keywords`, `site_description`, `fb_messenger`, `google_anlytics`, `linksrc`, `robot_txt`, `schema_code`, `book_type`, `hotel_page`, `hotel_code`, `booking_code`, `template`, `admin_template`, `headers`, `footer`, `search_box`, `search_result`, `action`, `contact_info2`, `pobox`, `pixel_code`, `whatsapp`, `whatsapp_a`, `footer_logo`, `google_map`, `event_reservation`) VALUES
(1, 'Hotel Goodwill, a perfect venue destination', 'tSr7h-goodwilllogo.png', 'e77ec-goodwilllogo.png', '', '', 'dK4QX-gallery.jpg', 'mVkUI-contact.jpg', 'fPUT6-testimonials-2.jpg', 'vKe2z-facility.jpg', '', 'Hotel Goodwill', 1, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3533.624211954424!2d85.326724!3d27.667096!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb19dbab29db21%3A0x92737c4a56f245ef!2sHotel%20Goodwill!5e0!3m2!1sen!2snp!4v1717740175664!5m2!1sen!2snp', 'aHQyy-map.jpg', 'Kanibahal, Lalitpur, Nepal', '', '01-5444520', '01-5444520', 'info@hotelgoodwill.com / sales@hotelgoodwill.com', '<ul>\r\n	<li>\r\n		Patan Durbar Square - 1km (5 min)</li>\r\n	<li>\r\n		Patan Museum - 1km (5 min)</li>\r\n	<li>\r\n		Airport - 6km (16 min)</li>\r\n</ul>\r\n', '© Copyright {year}. All Rights Reserved.', 'Hotel Goodwill', 'Hotel Goodwill, Hotel, Food, Restaurant', 'Hotel Goodwill', '', '', '#', 'User-agent: *\r\nDisallow: /cgi-bin/', '', 2, 'result.php', 'iy9jEQ', '49bJBb2', 'web', 'blue', '', '', 'Develop By Amit prajapati', 'Develop By Amit prajapati', 0, 'info@hotelgoodwill.com / sales@hotelgoodwill.com', '', '', '+977 9765341026', '01-5444520', 'qCl7G-logo.png', 'https://maps.app.goo.gl/GwmuWSyL6nMa1rF78', '01-5444520');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(3) NOT NULL,
  `country_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_name`, `status`) VALUES
(1, 'United States', 1),
(2, 'Canada', 1),
(3, 'Mexico', 1),
(4, 'Afghanistan', 1),
(5, 'Albania', 1),
(6, 'Algeria', 1),
(7, 'Andorra', 1),
(8, 'Angola', 1),
(9, 'Anguilla', 1),
(10, 'Antarctica', 1),
(11, 'Antigua and Barbuda', 1),
(12, 'Argentina', 1),
(13, 'Armenia', 1),
(14, 'Aruba', 1),
(15, 'Ascension Island', 1),
(16, 'Australia', 1),
(17, 'Austria', 1),
(18, 'Azerbaijan', 1),
(19, 'Bahamas', 1),
(20, 'Bahrain', 1),
(21, 'Bangladesh', 1),
(22, 'Barbados', 1),
(23, 'Belarus', 1),
(24, 'Belgium', 1),
(25, 'Belize', 1),
(26, 'Benin', 1),
(27, 'Bermuda', 1),
(28, 'Bhutan', 1),
(29, 'Bolivia', 1),
(30, 'Bophuthatswana', 1),
(31, 'Bosnia-Herzegovina', 1),
(32, 'Botswana', 1),
(33, 'Bouvet Island', 1),
(34, 'Brazil', 1),
(35, 'British Indian Ocean', 1),
(36, 'British Virgin Islands', 1),
(37, 'Brunei Darussalam', 1),
(38, 'Bulgaria', 1),
(39, 'Burkina Faso', 1),
(40, 'Burundi', 1),
(41, 'Cambodia', 1),
(42, 'Cameroon', 1),
(44, 'Cape Verde Island', 1),
(45, 'Cayman Islands', 1),
(46, 'Central Africa', 1),
(47, 'Chad', 1),
(48, 'Channel Islands', 1),
(49, 'Chile', 1),
(50, 'China, Peoples Republic', 1),
(51, 'Christmas Island', 1),
(52, 'Cocos (Keeling) Islands', 1),
(53, 'Colombia', 1),
(54, 'Comoros Islands', 1),
(55, 'Congo', 1),
(56, 'Cook Islands', 1),
(57, 'Costa Rica', 1),
(58, 'Croatia', 1),
(59, 'Cuba', 1),
(60, 'Cyprus', 1),
(61, 'Czech Republic', 1),
(62, 'Denmark', 1),
(63, 'Djibouti', 1),
(64, 'Dominica', 1),
(65, 'Dominican Republic', 1),
(66, 'Easter Island', 1),
(67, 'Ecuador', 1),
(68, 'Egypt', 1),
(69, 'El Salvador', 1),
(70, 'England', 1),
(71, 'Equatorial Guinea', 1),
(72, 'Estonia', 1),
(73, 'Ethiopia', 1),
(74, 'Falkland Islands', 1),
(75, 'Faeroe Islands', 1),
(76, 'Fiji', 1),
(77, 'Finland', 1),
(78, 'France', 1),
(79, 'French Guyana', 1),
(80, 'French Polynesia', 1),
(81, 'Gabon', 1),
(82, 'Gambia', 1),
(83, 'Georgia Republic', 1),
(84, 'Germany', 1),
(85, 'Gibraltar', 1),
(86, 'Greece', 1),
(87, 'Greenland', 1),
(88, 'Grenada', 1),
(89, 'Guadeloupe (French)', 1),
(90, 'Guatemala', 1),
(91, 'Guernsey Island', 1),
(92, 'Guinea Bissau', 1),
(93, 'Guinea', 1),
(94, 'Guyana', 1),
(95, 'Haiti', 1),
(96, 'Heard and McDonald Isls', 1),
(97, 'Honduras', 1),
(98, 'Hong Kong', 1),
(99, 'Hungary', 1),
(100, 'Iceland', 1),
(101, 'India', 1),
(102, 'Iran', 1),
(103, 'Iraq', 1),
(104, 'Ireland', 1),
(105, 'Isle of Man', 1),
(106, 'Israel', 1),
(107, 'Italy', 1),
(108, 'Ivory Coast', 1),
(109, 'Jamaica', 1),
(110, 'Japan', 1),
(111, 'Jersey Island', 1),
(112, 'Jordan', 1),
(113, 'Kazakhstan', 1),
(114, 'Kenya', 1),
(115, 'Kiribati', 1),
(116, 'Kuwait', 1),
(117, 'Laos', 1),
(118, 'Latvia', 1),
(119, 'Lebanon', 1),
(120, 'Lesotho', 1),
(121, 'Liberia', 1),
(122, 'Libya', 1),
(123, 'Liechtenstein', 1),
(124, 'Lithuania', 1),
(125, 'Luxembourg', 1),
(126, 'Macao', 1),
(127, 'Macedonia', 1),
(128, 'Madagascar', 1),
(129, 'Malawi', 1),
(130, 'Malaysia', 1),
(131, 'Maldives', 1),
(132, 'Mali', 1),
(133, 'Malta', 1),
(134, 'Martinique (French)', 1),
(135, 'Mauritania', 1),
(136, 'Mauritius', 1),
(137, 'Mayotte', 1),
(139, 'Micronesia', 1),
(140, 'Moldavia', 1),
(141, 'Monaco', 1),
(142, 'Mongolia', 1),
(143, 'Montenegro', 1),
(144, 'Montserrat', 1),
(145, 'Morocco', 1),
(146, 'Mozambique', 1),
(147, 'Myanmar', 1),
(148, 'Namibia', 1),
(149, 'Nauru', 1),
(150, 'Nepal', 1),
(151, 'Netherlands Antilles', 1),
(152, 'Netherlands', 1),
(153, 'New Caledonia (French)', 1),
(154, 'New Zealand', 1),
(155, 'Nicaragua', 1),
(156, 'Niger', 1),
(157, 'Niue', 1),
(158, 'Norfolk Island', 1),
(159, 'North Korea', 1),
(160, 'Northern Ireland', 1),
(161, 'Norway', 1),
(162, 'Oman', 1),
(163, 'Pakistan', 1),
(164, 'Panama', 1),
(165, 'Papua New Guinea', 1),
(166, 'Paraguay', 1),
(167, 'Peru', 1),
(168, 'Philippines', 1),
(169, 'Pitcairn Island', 1),
(170, 'Poland', 1),
(171, 'Polynesia (French)', 1),
(172, 'Portugal', 1),
(173, 'Qatar', 1),
(174, 'Reunion Island', 1),
(175, 'Romania', 1),
(176, 'Russia', 1),
(177, 'Rwanda', 1),
(178, 'S.Georgia Sandwich Isls', 1),
(179, 'Sao Tome, Principe', 1),
(180, 'San Marino', 1),
(181, 'Saudi Arabia', 1),
(182, 'Scotland', 1),
(183, 'Senegal', 1),
(184, 'Serbia', 1),
(185, 'Seychelles', 1),
(186, 'Shetland', 1),
(187, 'Sierra Leone', 1),
(188, 'Singapore', 1),
(189, 'Slovak Republic', 1),
(190, 'Slovenia', 1),
(191, 'Solomon Islands', 1),
(192, 'Somalia', 1),
(193, 'South Africa', 1),
(194, 'South Korea', 1),
(195, 'Spain', 1),
(196, 'Sri Lanka', 1),
(197, 'St. Helena', 1),
(198, 'St. Lucia', 1),
(199, 'St. Pierre Miquelon', 1),
(200, 'St. Martins', 1),
(201, 'St. Kitts Nevis Anguilla', 1),
(202, 'St. Vincent Grenadines', 1),
(203, 'Sudan', 1),
(204, 'Suriname', 1),
(205, 'Svalbard Jan Mayen', 1),
(206, 'Swaziland', 1),
(207, 'Sweden', 1),
(208, 'Switzerland', 1),
(209, 'Syria', 1),
(210, 'Tajikistan', 1),
(211, 'Taiwan', 1),
(212, 'Tahiti', 1),
(213, 'Tanzania', 1),
(214, 'Thailand', 1),
(215, 'Togo', 1),
(216, 'Tokelau', 1),
(217, 'Tonga', 1),
(218, 'Trinidad and Tobago', 1),
(219, 'Tunisia', 1),
(220, 'Turkmenistan', 1),
(221, 'Turks and Caicos Isls', 1),
(222, 'Tuvalu', 1),
(223, 'Uganda', 1),
(224, 'Ukraine', 1),
(225, 'United Arab Emirates', 1),
(226, 'Uruguay', 1),
(227, 'Uzbekistan', 1),
(228, 'Vanuatu', 1),
(229, 'Vatican City State', 1),
(230, 'Venezuela', 1),
(231, 'Vietnam', 1),
(232, 'Virgin Islands (Brit,1)', 1),
(233, 'Wales', 1),
(234, 'Wallis Futuna Islands', 1),
(235, 'Western Sahara', 1),
(236, 'Western Samoa', 1),
(237, 'Yemen', 1),
(238, 'Yugoslavia', 1),
(239, 'Zaire', 1),
(240, 'Zambia', 1),
(241, 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_download`
--

CREATE TABLE `tbl_download` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `image` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_download`
--

INSERT INTO `tbl_download` (`id`, `slug`, `title`, `status`, `sortorder`, `image`) VALUES
(1, 'asdasd', 'asdasd', 1, 1, 'T8z6W-abs.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_gr` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_gr` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `title`, `title_gr`, `content`, `content_gr`, `status`, `sortorder`, `added_date`) VALUES
(2, 'What are the services available?', '', '<p>\r\n	Fax/Photocopying, Laundry, Meeting/Banquet Facilities, Currency Exchange, Tour Desk, Business Centre, Ironing Service, Car Hire, Ticket Service, Souvenirs/Gift Shop, Concierge Service,Airport Shuttle (surcharge), Bicycle Rental, Shuttle Service (surcharge)</p>\r\n', '', 1, 12, '2023-08-28 11:17:00'),
(3, 'What are the activities guests can enjoy?', '', '<p>\r\n	Nagarkot is a tranquil place where guests can escape the chaos and the hectic demands of the city life. While many guests prefer to enjoy the natural beauty of the surroundings by taking long walks, watching the sunrise and sunsets and enjoying a quite drink at our cozy bar, the hotel also offer activities such as :Massage, Spa &amp; Wellness Center, Cycling (booking shall be made in advance), Hiking, Library, Indoor Swimming Pool etc.</p>\r\n', '', 1, 3, '2023-08-29 11:44:10'),
(4, 'What are the amenities and facilities in the hotel?', '', '<p>\r\n	Area shuttle (surcharge) &ndash; Bar/lounge- Total number of rooms 68 &ndash; Number of floors 5 &ndash; Number of buildings 2- Free Wi-fi ( Lobby area only)- Restaurant(s) in hotel- 1 Swimming pool &ndash; indoor &ndash; Spa &ndash; Rooftop sun deck- Souvenir shops- Helipad- Hot tub- Library- Multiple small meeting rooms &ndash; Multiple conference/ meeting rooms &ndash; Event catering &ndash; Banquet facilities &ndash; Concierge- Town Car Service available &ndash; Security guard &ndash; Multilingual staff &ndash; 24-hour front desk &ndash; Currency exchange &ndash; Parking</p>\r\n', '', 1, 2, '2023-08-29 11:44:28'),
(6, 'Internet', '', '<p>\r\n	Free! Wi-fi is available in public areas and is free of charge.</p>\r\n', '', 1, 0, '2023-09-15 11:22:44'),
(7, 'Parking', '', '<p>\r\n	Free! Free private parking is possible on site (reservation is needed).</p>\r\n', '', 1, 1, '2023-09-15 11:23:01'),
(8, 'How do I get to the hotel?', '', '<p>\r\n	Nagarkot is 32 kilometers East of Kathmandu. From the Tribhuvan International Airport, guests can easily hire a taxi. It costs around 3500 Nepali rupees ( this is an approximate figure and subject to change) one-way. If you are already in Kathmandu or elsewhere, your hotel can easily arrange a private car or taxi. If you&#39;d like assistance, it is best to email us at ambassador@ambassador.com.np or call us at 977-1-6680080/46. To read more about transportation you may also visit the Lonely Planet site.</p>\r\n', '', 1, 4, '2023-09-15 11:23:55'),
(9, 'What are the things to do in Nagarkot?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Locals visit Nagarkot through out the year as it is the perfect escape from the hustle and bustle of Kathmandu city; but October- March is probably the time when guests enjoy clear views of the mountain ranges.</span><br style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">According to TripAdvisor.com following are the 5 good reasons to visit Nagarkot:</span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. For those longing for some really refreshing environment to be free from hectic busy schedules in the crowded Kathmandu.Nagarkot provides a scenic beauty and divine peace far from heat, dust, smoke and city&rsquo;s hustle bustle.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Nagarkot is the nearest point from the Kathmandu valley from where on a clear day, the view of Mount Everest can be seen.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		3. Nagarkot is ideal hilltop venue to acclimatize for high altitude adventures as it is located at 7200 ft above sea level.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		4. It is the transit point for Helambu and Lang-tang trekking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		5. Nagarkot is also a good point for mini-trekking. There are several treks possible to and from Nagarkot such as sankhu, changu Narayan, Dhulikhel, Sundarijal, Nala, etc.</li>\r\n</ol>\r\n', '', 1, 10, '2023-09-15 11:24:12'),
(10, 'We guarantee', '', '<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. Booking is safe. When you book with us your details are protected by a secure connection.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Best Price Guarantee. Found your room online at a lower price (exact date and same terms &amp; conditions)? We&rsquo;ll match it. Email <a href=\"mailto:pam@acehotelsnepal.com\">pam@acehotelsnepal.com</a>.</li>\r\n</ol>\r\n', '', 1, 5, '2023-09-15 11:24:26'),
(11, 'What are the accepted credit cards?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Visa, Euro/Mastercard/ AMEX</span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. A credit card number is required to confirm the booking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Prepayment for full duration of stay will be charged at the time of booking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		3. 100% deposit will be refunded in the event of cancellation / modification 7 days prior to arrival date.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		4. Any cancellation less than 7 days notification, 50% of amount paid will be refunded.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		5. Prepayment will not be refunded for No-shows.</li>\r\n</ol>\r\n', '', 1, 6, '2023-09-15 11:24:38'),
(12, 'Pets', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Pets are not allowed.</span></p>\r\n', '', 1, 7, '2023-09-15 11:24:49'),
(13, 'What are the Hotel Policies?', '', '<p style=\"text-align: left;\">\r\n	Check-in: 2:00 pm</p>\r\n<p style=\"text-align: left;\">\r\n	Check-out: 12:00 noon</p>\r\n<ul style=\"list-style-type:circle; text-align: left;\">\r\n	<li>\r\n		Rates are subjected to 13% VAT and 10% services charge.</li>\r\n	<li>\r\n		Note that children age 11 and older are charged the adult rate.</li>\r\n	<li>\r\n		Please include them in the number entered in the No. of Adults box.</li>\r\n	<li>\r\n		All rates quoted are subject to change without prior notice.</li>\r\n	<li>\r\n		Should you wish to change an existing reservation, you are required to cancel the existing booking and proceed to create a new reservation.This may be done by visiting our website.</li>\r\n	<li>\r\n		Should you wish to cancel an existing reservation, simply click on the reservation link at our</li>\r\n</ul>\r\n', '', 1, 8, '2023-09-15 11:25:00'),
(14, 'When is the best time to visit?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Locals visit Nagarkot through out the year as it is the perfect escape from the hustle and bustle of Kathmandu city; but October- March is probably the time when guests enjoy clear views of the mountain ranges.</span></p>\r\n', '', 1, 11, '2023-09-15 11:25:11'),
(15, 'What is the weather in Nagarkot like ?', '', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Nagarkot is very windy throughout the year, so always bring a wind cheater, a cap, glove, cold cream or lip guard, sunglasses and light walking shoes. Don&#39;t forget your binocular &amp; camera to catch the view. Avoid loose flying skirts and sarees unless you want a Marilyne Monroe experience!</span></p>\r\n<div class=\"table-responsive\">\r\n	<table class=\"table table-bordered\">\r\n		<tbody style=\"box-sizing: border-box;\">\r\n			<tr style=\"box-sizing: border-box;\">\r\n				<td>\r\n					&nbsp;</td>\r\n				<td>\r\n					&nbsp;Max<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px; text-align: center;\">\r\n					&nbsp; Min</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"40%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;Jan- March (Winter)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;4 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;warm woolens with head cover</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"20%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;April-June (Spring / summer)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;25 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;wind cheater, umbrella raincoat, light cap</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"20%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;July &ndash; Sept (Monsoon / Autumn)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;28 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					15 o C<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;light wind cheater umbrella, raincoat,Light cap</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"30%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;Oct- Dec (Winter)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;2 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;very heavy woolens</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 1, 9, '2023-09-15 11:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parentId` int(1) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `title`, `parentId`, `image`, `brief`, `icon`, `status`, `sortorder`, `added_date`) VALUES
(127, 'Hair Dryer', 120, '', '', 'icon icon-fi-hair-dryer', 1, 7, '2024-06-13 12:13:12'),
(126, 'Cable TV', 120, '', '', 'icon icon-fi-television', 1, 6, '2024-06-13 12:12:55'),
(125, 'Air Conditioning', 120, '', '', 'icon icon-fi-air-conditioner', 1, 5, '2024-06-13 12:12:35'),
(124, ' Fast WiFi', 120, '', '', 'icon icon-fi-wifi', 1, 4, '2024-06-13 12:12:23'),
(123, 'Minibar', 120, '', '', 'icon icon-fi-refrigerator', 1, 3, '2024-06-13 12:11:55'),
(122, 'Coffee Machine', 120, '', '', 'icon icon-fi-espresso', 1, 2, '2024-06-13 12:10:42'),
(121, 'Towels', 120, '', '', 'icon icon-fi-towel-3', 1, 1, '2024-06-13 12:10:27'),
(120, 'Services', 0, '2v69w-logo-white.png', '', '', 1, 1, '2024-06-13 12:08:21'),
(128, 'Slippers', 120, '', '', 'icon icon-fi-slippers', 1, 8, '2024-06-13 12:13:32'),
(129, 'Shampoo', 120, '', '', 'icon icon-fi-shampoo', 1, 9, '2024-06-13 12:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galleries`
--

CREATE TABLE `tbl_galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_galleries`
--

INSERT INTO `tbl_galleries` (`id`, `slug`, `title`, `image`, `detail`, `status`, `sortorder`, `registered`, `type`) VALUES
(11, 'gallery', 'gallery', 'qtocA-logo-white.png', '', 1, 1, '2024-06-09 15:11:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `id` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `detail` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallery_images`
--

INSERT INTO `tbl_gallery_images` (`id`, `galleryid`, `title`, `image`, `status`, `detail`, `sortorder`, `registered`) VALUES
(180, 11, 'Hotel Goodwill', 'MtOpm-gallery3.jpg', 1, '', 2, '2024-06-17 17:33:13'),
(179, 11, 'Hotel Goodwill', 'RoWxY-gallery18.jpg', 1, '', 1, '2024-06-17 17:33:13'),
(181, 11, 'Hotel Goodwill', 'kwY6x-gallery25.jpg', 1, '', 3, '2024-06-17 17:33:13'),
(182, 11, 'Hotel Goodwill', 'TUwaD-gallery36.jpg', 1, '', 4, '2024-06-17 17:33:13'),
(183, 11, 'Hotel Goodwill', 'S7wza-gallery4.jpg', 1, '', 5, '2024-06-17 17:33:13'),
(184, 11, 'Hotel Goodwill', 'Wrcbq-gallery8.jpg', 1, '', 6, '2024-06-17 17:33:13'),
(185, 11, 'Hotel Goodwill', 'm2uCd-gallery6.jpg', 1, '', 7, '2024-06-17 17:33:13'),
(186, 11, 'Hotel Goodwill', 'SGD5g-gallery24.jpg', 1, '', 8, '2024-06-17 17:33:13'),
(187, 11, 'Hotel Goodwill', 'i8jKZ-gallery26.jpg', 1, '', 9, '2024-06-17 17:33:13'),
(188, 11, 'Hotel Goodwill', 'gHCxJ-gallery34.jpg', 1, '', 10, '2024-06-17 17:33:13'),
(189, 11, 'Hotel Goodwill', 'IzPfg-gallery10.jpg', 1, '', 11, '2024-06-17 17:33:13'),
(190, 11, 'Hotel Goodwill', 'h4DAC-gallery31.jpg', 1, '', 12, '2024-06-17 17:33:13'),
(191, 11, 'Hotel Goodwill', 'kzsxN-gallery33.jpg', 1, '', 13, '2024-06-17 17:33:13'),
(192, 11, 'Hotel Goodwill', 'M4wQo-gallery9.jpg', 1, '', 14, '2024-06-17 17:33:13'),
(193, 11, 'Hotel Goodwill', 'kJPyu-gallery7.jpg', 1, '', 15, '2024-06-17 17:33:13'),
(194, 11, 'Hotel Goodwill', '8FxVq-gallery11.jpg', 1, '', 16, '2024-06-17 17:33:13'),
(195, 11, 'Hotel Goodwill', 'UJwyf-gallery12.jpg', 1, '', 17, '2024-06-17 17:33:13'),
(196, 11, 'Hotel Goodwill', 'GtNko-gallery32.jpg', 1, '', 18, '2024-06-17 17:33:13'),
(197, 11, 'Hotel Goodwill', 'TlBmi-gallery30.jpg', 1, '', 19, '2024-06-17 17:33:13'),
(198, 11, 'Hotel Goodwill', '0Homk-gallery21.jpg', 1, '', 20, '2024-06-17 17:33:13'),
(199, 11, 'Hotel Goodwill', 'OEzmN-gallery5.jpg', 1, '', 21, '2024-06-17 17:33:13'),
(200, 11, 'Hotel Goodwill', '86c1b-gallery14.jpg', 1, '', 22, '2024-06-17 17:33:13'),
(201, 11, 'Hotel Goodwill', 'F0Kkq-gallery35.jpg', 1, '', 23, '2024-06-17 17:33:13'),
(202, 11, 'Hotel Goodwill', '81qjw-gallery1.jpg', 1, '', 24, '2024-06-17 17:33:13'),
(203, 11, 'Hotel Goodwill', 'Xkq67-gallery28.jpg', 1, '', 25, '2024-06-17 17:33:13'),
(204, 11, 'Hotel Goodwill', 'RChao-gallery13.jpg', 1, '', 26, '2024-06-17 17:33:13'),
(205, 11, 'Hotel Goodwill', '9IgY7-gallery19.jpg', 1, '', 27, '2024-06-17 17:33:13'),
(206, 11, 'Hotel Goodwill', 'ByYT4-gallery22.jpg', 1, '', 28, '2024-06-17 17:33:13'),
(207, 11, 'Hotel Goodwill', 'ike04-gallery23.jpg', 1, '', 29, '2024-06-17 17:33:13'),
(208, 11, 'Hotel Goodwill', 'n9ZQv-gallery16.jpg', 1, '', 30, '2024-06-17 17:33:13'),
(209, 11, 'Hotel Goodwill', 'Q1HfZ-gallery17.jpg', 1, '', 31, '2024-06-17 17:33:13'),
(210, 11, 'Hotel Goodwill', 'CFEhC-gallery27.jpg', 1, '', 32, '2024-06-17 17:33:13'),
(211, 11, 'Hotel Goodwill', '8FPYi-gallery29.jpg', 1, '', 33, '2024-06-17 17:33:13'),
(212, 11, 'Hotel Goodwill', 'Bon4P-gallery20.jpg', 1, '', 34, '2024-06-17 17:33:13'),
(213, 11, 'Hotel Goodwill', 'BI21M-gallery2.jpg', 1, '', 35, '2024-06-17 17:33:13'),
(214, 11, 'Hotel Goodwill', 'OqAoJ-gallery15.jpg', 1, '', 36, '2024-06-17 17:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_type`
--

CREATE TABLE `tbl_group_type` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_type` varchar(20) NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` tinytext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `permission` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_group_type`
--

INSERT INTO `tbl_group_type` (`id`, `group_name`, `group_type`, `authority`, `description`, `status`, `permission`) VALUES
(1, 'Administrator', '1', 1, '', 1, 'a:26:{i:0;s:2:\"74\";i:1;s:3:\"306\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"4\";i:6;s:2:\"25\";i:7;s:2:\"23\";i:8;s:2:\"24\";i:9;s:2:\"20\";i:10;s:1:\"5\";i:11;s:2:\"11\";i:12;s:2:\"17\";i:13;s:3:\"303\";i:14;s:3:\"302\";i:15;s:3:\"309\";i:16;s:2:\"27\";i:17;s:3:\"300\";i:18;s:3:\"301\";i:19;s:2:\"19\";i:20;s:2:\"28\";i:21;s:2:\"12\";i:22;s:2:\"16\";i:23;s:2:\"15\";i:24;s:2:\"14\";i:25;s:2:\"13\";}'),
(2, 'General Admin', '1', 1, '', 1, 'a:22:{i:0;s:2:\"74\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:2:\"25\";i:6;s:2:\"23\";i:7;s:2:\"24\";i:8;s:2:\"20\";i:9;s:1:\"5\";i:10;s:2:\"11\";i:11;s:2:\"17\";i:12;s:3:\"302\";i:13;s:2:\"27\";i:14;s:3:\"300\";i:15;s:3:\"301\";i:16;s:1:\"9\";i:17;s:2:\"19\";i:18;s:2:\"28\";i:19;s:2:\"12\";i:20;s:2:\"14\";i:21;s:2:\"13\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `user_action` int(11) NOT NULL,
  `ip_track` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1, 'Log has been cleared.', '2023-06-22 16:11:02', 1, 6, '::1'),
(2, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-06-22 16:25:42', 1, 4, '::1'),
(3, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-06-22 16:26:17', 1, 4, '::1'),
(4, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-06-22 16:30:56', 1, 4, '::1'),
(5, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-06-22 16:32:30', 1, 4, '::1'),
(6, 'Login: Hotel Shangrila Blu   logged in.', '2023-08-28 12:01:38', 1, 1, '::1'),
(7, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-08-28 12:05:23', 1, 4, '::1'),
(8, 'Menu [ROOMS & SUITES] Edit Successfully', '2023-08-29 11:03:06', 1, 4, '::1'),
(9, 'Menu [mice] Edit Successfully', '2023-08-29 11:03:42', 1, 4, '::1'),
(10, 'Menu [MICE] Edit Successfully', '2023-08-29 11:03:51', 1, 4, '::1'),
(11, 'Menu [HOME] Edit Successfully', '2023-08-29 11:04:00', 1, 4, '::1'),
(12, 'Menu [ABOUT US] Edit Successfully', '2023-08-29 11:04:08', 1, 4, '::1'),
(13, 'Menu [RESTAURANTS & SHOPS] Edit Successfully', '2023-08-29 11:04:43', 1, 4, '::1'),
(14, 'Menu [FACILITIES] Edit Successfully', '2023-08-29 11:04:56', 1, 4, '::1'),
(15, 'Menu [GALLERY] Edit Successfully', '2023-08-29 11:05:11', 1, 4, '::1'),
(16, 'Menu [CAREER] CreatedData has added successfully.', '2023-08-29 11:05:42', 1, 3, '::1'),
(17, 'Menu [CONTACT US] Edit Successfully', '2023-08-29 11:06:03', 1, 4, '::1'),
(18, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-08-29 11:18:34', 1, 4, '::1'),
(19, 'Changes on Article \'About Us\' has been saved successfully.', '2023-08-29 12:02:58', 1, 4, '::1'),
(20, 'Menu [MICE] Edit Successfully', '2023-08-29 12:05:39', 1, 4, '::1'),
(21, 'Menu [RESTAURANTS & SHOPS] Edit Successfully', '2023-08-29 12:05:45', 1, 4, '::1'),
(22, 'Package [Mice]Data has added successfully.', '2023-08-29 12:22:54', 1, 3, '::1'),
(23, 'Menu [MICE] Edit Successfully', '2023-08-29 12:24:54', 1, 4, '::1'),
(24, 'Sub Package \'Bhaktapur Hall\' has added successfully.', '2023-08-29 13:03:28', 1, 3, '::1'),
(25, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-08-29 13:05:03', 1, 4, '::1'),
(26, 'Login: Hotel Shangrila Blu   logged in.', '2023-08-29 13:16:34', 1, 1, '::1'),
(27, 'Sub Package Image [b]Data has added successfully.', '2023-08-29 13:16:58', 1, 3, '::1'),
(28, 'Sub Package Image [bb]Data has added successfully.', '2023-08-29 13:16:58', 1, 3, '::1'),
(29, 'Sub Package Image [b]Data has added successfully.', '2023-08-29 13:16:58', 1, 3, '::1'),
(30, 'Package [Other Services]Data has deleted successfully.', '2023-08-29 14:31:10', 1, 6, '::1'),
(31, 'Package [Dining]Data has added successfully.', '2023-08-29 14:33:04', 1, 3, '::1'),
(32, 'Sub Package \'Kantipur Restaurant\' has added successfully.', '2023-08-29 14:35:35', 1, 3, '::1'),
(33, 'Sub Package Image [k]Data has added successfully.', '2023-08-29 14:36:06', 1, 3, '::1'),
(34, 'Sub Package Image [k]Data has added successfully.', '2023-08-29 14:36:06', 1, 3, '::1'),
(35, 'Sub Package Image [k]Data has added successfully.', '2023-08-29 14:36:06', 1, 3, '::1'),
(36, 'Sub Package \'Nagarkot Hall\' has added successfully.', '2023-08-29 14:53:38', 1, 3, '::1'),
(37, 'Sub Package Image [n]Data has added successfully.', '2023-08-29 14:54:22', 1, 3, '::1'),
(38, 'Sub Package Image [nn]Data has added successfully.', '2023-08-29 14:54:22', 1, 3, '::1'),
(39, 'Sub Package Image [n]Data has added successfully.', '2023-08-29 14:54:22', 1, 3, '::1'),
(40, 'Menu [yfty] CreatedData has added successfully.', '2023-08-29 15:05:34', 1, 3, '::1'),
(41, 'Menu  [yfty]Data has deleted successfully.', '2023-08-29 15:05:49', 1, 6, '::1'),
(42, 'Changes on Sub Package \'Deluxe Premium\' has been saved successfully.', '2023-08-30 12:48:44', 1, 4, '::1'),
(43, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:04:50', 1, 6, '::1'),
(44, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:04:56', 1, 6, '::1'),
(45, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:05:15', 1, 6, '::1'),
(46, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:17', 1, 6, '::1'),
(47, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:05:17', 1, 6, '::1'),
(48, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:21', 1, 6, '::1'),
(49, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:21', 1, 6, '::1'),
(50, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:05:21', 1, 6, '::1'),
(51, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:25', 1, 6, '::1'),
(52, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:25', 1, 6, '::1'),
(53, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:25', 1, 6, '::1'),
(54, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:05:25', 1, 6, '::1'),
(55, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:27', 1, 6, '::1'),
(56, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:27', 1, 6, '::1'),
(57, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:27', 1, 6, '::1'),
(58, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-08-30 13:05:27', 1, 6, '::1'),
(59, 'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.', '2023-08-30 13:05:27', 1, 6, '::1'),
(60, 'Sub Package Image [del]Data has added successfully.', '2023-08-30 13:05:51', 1, 3, '::1'),
(61, 'Sub Package Image [del]Data has added successfully.', '2023-08-30 13:05:51', 1, 3, '::1'),
(62, 'Sub Package Image [del]Data has added successfully.', '2023-08-30 13:05:51', 1, 3, '::1'),
(63, 'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.', '2023-08-30 13:06:31', 1, 4, '::1'),
(64, 'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.', '2023-08-30 13:07:26', 1, 4, '::1'),
(65, 'Login: Hotel Shangrila Blu   logged in.', '2023-08-31 17:26:22', 1, 1, '::1'),
(66, 'Blog  [asdasd]Data has deleted successfully.', '2023-08-31 17:53:51', 1, 6, '::1'),
(67, 'Blog [test 1]Data has added successfully.', '2023-08-31 17:54:29', 1, 3, '::1'),
(68, 'Blog  [Options and basic details about Atithi Suites or Things to know about Atithi Suites]Data has ', '2023-08-31 18:14:39', 1, 6, '::1'),
(69, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-08-31 18:56:24', 1, 4, '::1'),
(70, 'Changes on FAQ \'Do you have any discount code\' has been saved successfully.', '2023-08-31 18:56:39', 1, 4, '::1'),
(71, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-09-01 07:52:37', 1, 4, '::1'),
(72, 'Changes on Article \'Pashupatinath Temple\' has been saved successfully.', '2023-09-01 07:52:56', 1, 4, '::1'),
(73, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-01 07:56:06', 1, 4, '::1'),
(74, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-09-01 08:35:19', 1, 4, '::1'),
(75, 'Menu [CAREER] Edit Successfully', '2023-09-01 08:37:21', 1, 4, '::1'),
(76, 'Login: Hotel Shangrila Blu   logged in.', '2023-09-01 18:31:39', 1, 1, '::1'),
(77, 'Slideshow  [Bedroom]Data has deleted successfully.', '2023-09-01 18:31:54', 1, 6, '::1'),
(78, 'Slideshow  [Dining]Data has deleted successfully.', '2023-09-01 18:31:54', 1, 6, '::1'),
(79, 'Slideshow  [Food]Data has deleted successfully.', '2023-09-01 18:31:54', 1, 6, '::1'),
(80, 'Package [What\'s New]Data has deleted successfully.', '2023-09-01 18:39:41', 1, 6, '::1'),
(81, 'Login: Hotel Shangrila Blu   logged in.', '2023-09-01 19:28:56', 1, 1, '::1'),
(82, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-09-01 19:29:05', 1, 4, '::1'),
(83, 'Article \'test 1\' has added successfully.', '2023-09-01 19:31:43', 1, 3, '::1'),
(84, 'Article \'Spa\' has added successfully.', '2023-09-03 12:16:37', 1, 3, '::1'),
(85, 'Articles  [Spa]Data has deleted successfully.', '2023-09-03 12:16:48', 1, 6, '::1'),
(86, 'Article \'spa \' has added successfully.', '2023-09-03 12:17:00', 1, 3, '::1'),
(87, 'Articles  [spa ]Data has deleted successfully.', '2023-09-03 12:17:08', 1, 6, '::1'),
(88, 'Article \'asd\' has added successfully.', '2023-09-03 12:18:50', 1, 3, '::1'),
(89, 'Articles  [asd]Data has deleted successfully.', '2023-09-03 12:18:58', 1, 6, '::1'),
(90, 'Article \'AS\' has added successfully.', '2023-09-03 12:26:04', 1, 3, '::1'),
(91, 'Articles  [AS]Data has deleted successfully.', '2023-09-03 12:26:15', 1, 6, '::1'),
(92, 'Article \'sda\' has added successfully.', '2023-09-03 12:28:59', 1, 3, '::1'),
(93, 'Articles  [sda]Data has deleted successfully.', '2023-09-03 12:29:11', 1, 6, '::1'),
(94, 'Article \'asdasd\' has added successfully.', '2023-09-03 12:33:54', 1, 3, '::1'),
(95, 'Articles  [asdasd]Data has deleted successfully.', '2023-09-03 12:34:03', 1, 6, '::1'),
(96, 'Article \'asd\' has added successfully.', '2023-09-03 12:36:50', 1, 3, '::1'),
(97, 'Article \'asdasd\' has added successfully.', '2023-09-03 12:37:51', 1, 3, '::1'),
(98, 'Articles  []Data has deleted successfully.', '2023-09-03 12:39:32', 1, 6, '::1'),
(99, 'Article \'asd\' has added successfully.', '2023-09-03 12:39:41', 1, 3, '::1'),
(100, 'Article \'asdas\' has added successfully.', '2023-09-03 12:42:56', 1, 3, '::1'),
(101, 'Articles  []Data has deleted successfully.', '2023-09-03 12:46:54', 1, 6, '::1'),
(102, 'Article \'awwesxwe\' has added successfully.', '2023-09-03 12:47:20', 1, 3, '::1'),
(103, 'Article \'wszxe\' has added successfully.', '2023-09-03 12:47:40', 1, 3, '::1'),
(104, 'Articles  []Data has deleted successfully.', '2023-09-03 12:49:36', 1, 6, '::1'),
(105, 'Article \'asdasd\' has added successfully.', '2023-09-03 12:49:59', 1, 3, '::1'),
(106, 'Changes on Article \'asdasdasdasd\' has been saved successfully.', '2023-09-03 12:50:07', 1, 4, '::1'),
(107, 'Article \'asdasd\' has added successfully.', '2023-09-03 12:50:28', 1, 3, '::1'),
(108, 'Articles  [Experience Hospitality The Nepalese Way]Data has deleted successfully.', '2023-09-03 12:51:20', 1, 6, '::1'),
(109, 'Changes on Article \'asdasdasdasd\' has been saved successfully.', '2023-09-03 13:08:55', 1, 4, '::1'),
(110, 'Changes on Article \'SPA\' has been saved successfully.', '2023-09-03 13:22:04', 1, 4, '::1'),
(111, 'Article \'Pool & Jacuzzi\' has added successfully.', '2023-09-03 14:08:35', 1, 3, '::1'),
(112, 'Articles  [test 1]Data has deleted successfully.', '2023-09-03 14:23:22', 1, 6, '::1'),
(113, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 14:24:04', 1, 4, '::1'),
(114, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 14:24:27', 1, 4, '::1'),
(115, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 14:25:06', 1, 4, '::1'),
(116, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:26:56', 1, 4, '::1'),
(117, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:29:42', 1, 4, '::1'),
(118, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:30:17', 1, 4, '::1'),
(119, 'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.', '2023-09-03 14:31:29', 1, 4, '::1'),
(120, 'Login: Hotel Shangrila Blu   logged in.', '2023-09-03 15:02:51', 1, 1, '::1'),
(121, 'Vacency [backend]Data has added successfully.', '2023-09-03 15:03:21', 1, 3, '::1'),
(122, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 15:33:53', 1, 4, '::1'),
(123, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 15:34:30', 1, 4, '::1'),
(124, 'Menu [ABOUT US] Edit Successfully', '2023-09-03 15:40:48', 1, 4, '::1'),
(125, 'Menu [ABOUT US] Edit Successfully', '2023-09-03 15:42:22', 1, 4, '::1'),
(126, 'Changes on Article \'About Us\' has been saved successfully.', '2023-09-03 15:44:15', 1, 4, '::1'),
(127, 'Articles  [About Us]Data has deleted successfully.', '2023-09-03 15:53:17', 1, 6, '::1'),
(128, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 15:53:38', 1, 4, '::1'),
(129, 'Article \'about us\' has added successfully.', '2023-09-03 15:53:53', 1, 3, '::1'),
(130, 'Changes on Article \'about us\' has been saved successfully.', '2023-09-03 15:58:02', 1, 4, '::1'),
(131, 'Changes on Article \'about us\' has been saved successfully.', '2023-09-03 16:47:36', 1, 4, '::1'),
(132, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 16:48:20', 1, 4, '::1'),
(133, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-03 16:51:46', 1, 4, '::1'),
(134, 'User [Hotel Shangrila Blu  ] Edit Successfully', '2023-09-03 17:44:39', 1, 4, '::1'),
(135, 'Popup \'sdad\' has added successfully.', '2023-09-03 17:44:58', 1, 3, '::1'),
(136, 'Slideshow [Exterior] Edit Successfully', '2023-09-03 17:53:20', 1, 4, '::1'),
(137, 'Slideshow [Exterior] Edit Successfully', '2023-09-03 17:54:35', 1, 4, '::1'),
(138, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-09-03 17:55:07', 1, 4, '::1'),
(139, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-09-03 17:56:34', 1, 4, '::1'),
(140, 'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.', '2023-09-03 20:17:48', 1, 4, '::1'),
(141, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-09-03 20:22:12', 1, 4, '::1'),
(142, 'Gallery Image  [Home page]Data has deleted successfully.', '2023-09-03 20:26:24', 1, 6, '::1'),
(143, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:26', 1, 6, '::1'),
(144, 'Gallery Image  [Hotel]Data has deleted successfully.', '2023-09-03 20:26:26', 1, 6, '::1'),
(145, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:28', 1, 6, '::1'),
(146, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:28', 1, 6, '::1'),
(147, 'Gallery Image  [Rooms]Data has deleted successfully.', '2023-09-03 20:26:28', 1, 6, '::1'),
(148, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(149, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(150, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(151, 'Gallery Image  [Dining]Data has deleted successfully.', '2023-09-03 20:26:30', 1, 6, '::1'),
(152, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(153, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(154, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(155, 'Gallery Image  []Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(156, 'Gallery Image  [Event Hall]Data has deleted successfully.', '2023-09-03 20:26:32', 1, 6, '::1'),
(157, 'Blog  [test 1]Data has deleted successfully.', '2023-09-03 20:26:38', 1, 6, '::1'),
(158, 'Blog  []Data has deleted successfully.', '2023-09-03 20:26:40', 1, 6, '::1'),
(159, 'Blog  [Festivals in Lalitpur]Data has deleted successfully.', '2023-09-03 20:26:40', 1, 6, '::1'),
(160, 'Blog  []Data has deleted successfully.', '2023-09-03 20:26:42', 1, 6, '::1'),
(161, 'Blog  []Data has deleted successfully.', '2023-09-03 20:26:42', 1, 6, '::1'),
(162, 'Blog  [History of Shangrila Blu]Data has deleted successfully.', '2023-09-03 20:26:42', 1, 6, '::1'),
(163, 'User [ClubHimalaya  ] Edit Successfully', '2023-09-03 20:27:05', 1, 4, '::1'),
(164, 'Login: ClubHimalaya   logged in.', '2023-09-03 20:27:10', 1, 1, '::1'),
(165, 'Services [Panoramic Views]Data has added successfully.', '2023-09-03 20:41:45', 1, 3, '::1'),
(166, 'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.', '2023-09-03 20:44:24', 1, 4, '::1'),
(167, 'Sub Package \'asd\' has added successfully.', '2023-09-03 20:51:34', 1, 3, '::1'),
(168, 'Sub Package [asd]Data has deleted successfully.', '2023-09-03 20:51:50', 1, 6, '::1'),
(169, 'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.', '2023-09-03 20:51:54', 1, 4, '::1'),
(170, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-09-03 21:04:29', 1, 4, '::1'),
(171, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-09-03 21:06:24', 1, 4, '::1'),
(172, 'Login: ClubHimalaya   logged in.', '2023-09-04 10:28:34', 1, 1, '27.34.84.147'),
(173, 'Login: ClubHimalaya   logged in.', '2023-09-04 11:53:03', 1, 1, '27.34.84.147'),
(174, 'Blog [Brief On Club Himalaya]Data has added successfully.', '2023-09-04 11:54:01', 1, 3, '27.34.84.147'),
(175, 'Blog [Excursions to nearby places]Data has added successfully.', '2023-09-04 11:54:38', 1, 3, '27.34.84.147'),
(176, 'Blog [Places-of-interest]Data has added successfully.', '2023-09-04 11:55:59', 1, 3, '27.34.84.147'),
(177, 'Blog [test 1]Data has added successfully.', '2023-09-04 11:56:28', 1, 3, '27.34.84.147'),
(178, 'Blog [qwseasdas]Data has added successfully.', '2023-09-04 12:25:01', 1, 3, '27.34.84.147'),
(179, 'Services  [All Cards Accepted]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(180, 'Services  [Doctor on Call]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(181, 'Services  [Currency Exchange]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(182, 'Services  [Event Halls]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(183, 'Services  [Electricity Backup]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(184, 'Services  [Hot & Cold Water]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(185, 'Services  [Safe Locker]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(186, 'Services  [Laundry Service]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(187, 'Services  [International Standard A/C Rooms]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(188, 'Services  [Daily House Keeping]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(189, 'Services  [Mini-Bar<br>on request]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(190, 'Services  [Underground Parking]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(191, 'Services  [Multi Cuisine Restaurant]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(192, 'Services  [Healthy Breakfast]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(193, 'Services  [Luggage Storage]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(194, 'Services  [24hrs Reception]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(195, 'Services  [Fire extinguisher]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(196, 'Services  [Free WiFi]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(197, 'Services  [Garden View]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(198, 'Services  [Elevator]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(199, 'Services  [Room Service]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(200, 'Services  [24hrs Checkin]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(201, 'Services  [Airport pickup]Data has deleted successfully.', '2023-09-04 12:29:40', 1, 6, '27.34.84.147'),
(202, 'Services [Breakfast]Data has added successfully.', '2023-09-04 12:30:30', 1, 3, '27.34.84.147'),
(203, 'Services [Room Services]Data has added successfully.', '2023-09-04 12:30:46', 1, 3, '27.34.84.147'),
(204, 'Services [Free WiFi]Data has added successfully.', '2023-09-04 12:31:01', 1, 3, '27.34.84.147'),
(205, 'Services [Air-Conditioner]Data has added successfully.', '2023-09-04 12:31:18', 1, 3, '27.34.84.147'),
(206, 'Services [Bathtub]Data has added successfully.', '2023-09-04 12:31:39', 1, 3, '27.34.84.147'),
(207, 'Services [Coffee Maker]Data has added successfully.', '2023-09-04 12:31:56', 1, 3, '27.34.84.147'),
(208, 'Services [24hrs Front-desk]Data has added successfully.', '2023-09-04 12:32:09', 1, 3, '27.34.84.147'),
(209, 'Services [Safety Deposite Box]Data has added successfully.', '2023-09-04 12:32:28', 1, 3, '27.34.84.147'),
(210, 'Services [Free Parking]Data has added successfully.', '2023-09-04 12:32:53', 1, 3, '27.34.84.147'),
(211, 'Services [Spa]Data has added successfully.', '2023-09-04 12:33:08', 1, 3, '27.34.84.147'),
(212, 'Services [Pool/Hot Tub]Data has added successfully.', '2023-09-04 12:33:33', 1, 3, '27.34.84.147'),
(213, 'Services [EV Charging station]Data has added successfully.', '2023-09-04 12:33:47', 1, 3, '27.34.84.147'),
(214, 'Services [Iron/Iron Boar]Data has added successfully.', '2023-09-04 12:34:10', 1, 3, '27.34.84.147'),
(215, 'Services [Pick/Drop]Data has added successfully.', '2023-09-04 12:34:43', 1, 3, '27.34.84.147'),
(216, 'Services [Meeting Hall]Data has added successfully.', '2023-09-04 12:35:00', 1, 3, '27.34.84.147'),
(217, 'Services [Mini-bar In Suites]Data has added successfully.', '2023-09-04 12:35:15', 1, 3, '27.34.84.147'),
(218, 'Services [Room Slippers]Data has added successfully.', '2023-09-04 12:35:29', 1, 3, '27.34.84.147'),
(219, 'Services [Hair Dryer]Data has added successfully.', '2023-09-04 12:35:46', 1, 3, '27.34.84.147'),
(220, 'Services [LED Tv]Data has added successfully.', '2023-09-04 12:35:57', 1, 3, '27.34.84.147'),
(221, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2023-09-04 12:38:43', 1, 4, '27.34.84.147'),
(222, 'SubPackage Gallery Image [del]Data has deleted successfully.', '2023-09-04 12:39:18', 1, 6, '27.34.84.147'),
(223, 'SubPackage Gallery Image [del]Data has deleted successfully.', '2023-09-04 12:39:21', 1, 6, '27.34.84.147'),
(224, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:39:21', 1, 6, '27.34.84.147'),
(225, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:39:24', 1, 6, '27.34.84.147'),
(226, 'SubPackage Gallery Image [del]Data has deleted successfully.', '2023-09-04 12:39:24', 1, 6, '27.34.84.147'),
(227, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:39:24', 1, 6, '27.34.84.147'),
(228, 'Sub Package Image [j]Data has added successfully.', '2023-09-04 12:39:46', 1, 3, '27.34.84.147'),
(229, 'Sub Package Image [j]Data has added successfully.', '2023-09-04 12:39:46', 1, 3, '27.34.84.147'),
(230, 'Sub Package Image [j]Data has added successfully.', '2023-09-04 12:39:46', 1, 3, '27.34.84.147'),
(231, 'Menu [Junior Suite] Edit Successfully', '2023-09-04 12:41:15', 1, 4, '27.34.84.147'),
(232, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:41:59', 1, 6, '27.34.84.147'),
(233, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:09', 1, 6, '27.34.84.147'),
(234, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:09', 1, 6, '27.34.84.147'),
(235, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:12', 1, 6, '27.34.84.147'),
(236, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:12', 1, 6, '27.34.84.147'),
(237, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:12', 1, 6, '27.34.84.147'),
(238, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(239, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(240, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(241, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:15', 1, 6, '27.34.84.147'),
(242, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(243, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(244, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(245, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(246, 'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.', '2023-09-04 12:42:18', 1, 6, '27.34.84.147'),
(247, 'Sub Package Image [dep]Data has added successfully.', '2023-09-04 12:42:45', 1, 3, '27.34.84.147'),
(248, 'Sub Package Image [dep]Data has added successfully.', '2023-09-04 12:42:45', 1, 3, '27.34.84.147'),
(249, 'Sub Package Image [dep]Data has added successfully.', '2023-09-04 12:42:45', 1, 3, '27.34.84.147'),
(250, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-04 12:44:20', 1, 4, '27.34.84.147'),
(251, 'Menu [Deluxe premium Room] Edit Successfully', '2023-09-04 12:45:01', 1, 4, '27.34.84.147'),
(252, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-04 12:45:32', 1, 4, '27.34.84.147'),
(253, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-04 12:49:30', 1, 4, '27.34.84.147'),
(254, 'Sub Package \'Standard Room\' has added successfully.', '2023-09-04 12:51:09', 1, 3, '27.34.84.147'),
(255, 'Features [Coffee/ Tea Maker] Edit Successfully', '2023-09-04 12:52:15', 1, 4, '27.34.84.147'),
(256, 'Features [Bathrobe & slippers] Edit Successfully', '2023-09-04 12:52:49', 1, 4, '27.34.84.147'),
(257, 'Features [House Keeping] Edit Successfully', '2023-09-04 12:53:04', 1, 4, '27.34.84.147'),
(258, 'Features [Flat screen TV] Edit Successfully', '2023-09-04 12:53:24', 1, 4, '27.34.84.147'),
(259, 'Features [Shower-bathtub combination] Edit Successfully', '2023-09-04 12:53:41', 1, 4, '27.34.84.147'),
(260, 'Features [In Room Safe (Locker)] Edit Successfully', '2023-09-04 12:54:01', 1, 4, '27.34.84.147'),
(261, 'Features [Free Wi-Fi] Edit Successfully', '2023-09-04 12:54:19', 1, 4, '27.34.84.147'),
(262, 'Features [No Smoking] Edit Successfully', '2023-09-04 12:54:36', 1, 4, '27.34.84.147'),
(263, 'Features [Toiletriesi] Edit Successfully', '2023-09-04 12:55:06', 1, 4, '27.34.84.147'),
(264, 'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.', '2023-09-04 12:56:46', 1, 4, '27.34.84.147'),
(265, 'Sub Package \'Lalitpur Hall\' has added successfully.', '2023-09-04 12:57:42', 1, 3, '27.34.84.147'),
(266, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 12:58:24', 1, 3, '27.34.84.147'),
(267, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 12:58:24', 1, 3, '27.34.84.147'),
(268, 'Sub Package \'Indrawati Bar\' has added successfully.', '2023-09-04 12:59:53', 1, 3, '27.34.84.147'),
(269, 'Sub Package Image [s]Data has added successfully.', '2023-09-04 13:00:16', 1, 3, '27.34.84.147'),
(270, 'Sub Package Image [s]Data has added successfully.', '2023-09-04 13:00:16', 1, 3, '27.34.84.147'),
(271, 'SubPackage Gallery Image [k]Data has deleted successfully.', '2023-09-04 13:00:23', 1, 6, '27.34.84.147'),
(272, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 13:00:26', 1, 6, '27.34.84.147'),
(273, 'SubPackage Gallery Image [k]Data has deleted successfully.', '2023-09-04 13:00:26', 1, 6, '27.34.84.147'),
(274, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 13:00:29', 1, 6, '27.34.84.147'),
(275, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-04 13:00:29', 1, 6, '27.34.84.147'),
(276, 'SubPackage Gallery Image [k]Data has deleted successfully.', '2023-09-04 13:00:29', 1, 6, '27.34.84.147'),
(277, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 13:00:44', 1, 3, '27.34.84.147'),
(278, 'Sub Package Image [a]Data has added successfully.', '2023-09-04 13:00:44', 1, 3, '27.34.84.147'),
(279, 'Gallery [rooms]Data has added successfully.', '2023-09-04 13:01:57', 1, 3, '27.34.84.147'),
(280, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(281, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(282, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(283, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(284, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(285, 'Sub Gallery Image [a]Data has added successfully.', '2023-09-04 13:02:18', 1, 3, '27.34.84.147'),
(286, 'Gallery [restaurant]Data has added successfully.', '2023-09-04 13:02:43', 1, 3, '27.34.84.147'),
(287, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:03:18', 1, 3, '27.34.84.147'),
(288, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:03:18', 1, 3, '27.34.84.147'),
(289, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:03:18', 1, 3, '27.34.84.147'),
(290, 'Gallery [hall]Data has added successfully.', '2023-09-04 13:03:45', 1, 3, '27.34.84.147'),
(291, 'Sub Gallery Image [d]Data has added successfully.', '2023-09-04 13:03:57', 1, 3, '27.34.84.147'),
(292, 'Sub Gallery Image [d]Data has added successfully.', '2023-09-04 13:03:57', 1, 3, '27.34.84.147'),
(293, 'Sub Gallery Image [d]Data has added successfully.', '2023-09-04 13:03:57', 1, 3, '27.34.84.147'),
(294, 'Gallery [Recreation]Data has added successfully.', '2023-09-04 13:04:17', 1, 3, '27.34.84.147'),
(295, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:04:35', 1, 3, '27.34.84.147'),
(296, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:04:35', 1, 3, '27.34.84.147'),
(297, 'Sub Gallery Image [e]Data has added successfully.', '2023-09-04 13:04:35', 1, 3, '27.34.84.147'),
(298, 'Vacency [Painter / Plumber] Edit Successfully', '2023-09-04 13:06:56', 1, 4, '27.34.84.147'),
(299, 'Vacency [Asst. Laundry Manager] Edit Successfully', '2023-09-04 13:07:16', 1, 4, '27.34.84.147'),
(300, 'Vacency  [Intern]Data has deleted successfully.', '2023-09-04 13:07:21', 1, 6, '27.34.84.147'),
(301, 'Vacency [Sales Executive] Edit Successfully', '2023-09-04 13:07:33', 1, 4, '27.34.84.147'),
(302, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-09-04 13:09:33', 1, 4, '27.34.84.147'),
(303, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-04 13:10:08', 1, 4, '27.34.84.147'),
(304, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-04 13:10:45', 1, 4, '27.34.84.147'),
(305, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2023-09-04 13:11:12', 1, 4, '27.34.84.147'),
(306, 'Article \'Children Play Area Indoor & Outdoor\' has added successfully.', '2023-09-04 13:12:47', 1, 3, '27.34.84.147'),
(307, 'Changes on Article \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-09-04 13:18:43', 1, 4, '27.34.84.147'),
(308, 'Testimonial [Rebecca] Edit Successfully', '2023-09-04 13:21:07', 1, 4, '27.34.84.147'),
(309, 'Testimonial [WIRAEN - MALAYSIA] Edit Successfully', '2023-09-04 13:21:41', 1, 4, '27.34.84.147'),
(310, 'Testimonial [WIRAEN - MALAYSIA] Edit Successfully', '2023-09-04 13:22:19', 1, 4, '27.34.84.147'),
(311, 'Article \'Nagarkot View Tower\' has added successfully.', '2023-09-04 13:25:10', 1, 3, '27.34.84.147'),
(312, 'Article \'Mahankal Temple\' has added successfully.', '2023-09-04 13:26:09', 1, 3, '27.34.84.147'),
(313, 'Article \'Santi stupa\' has added successfully.', '2023-09-04 13:26:55', 1, 3, '27.34.84.147'),
(314, 'Article \'Changu Narayan Temple\' has added successfully.', '2023-09-04 13:27:35', 1, 3, '27.34.84.147'),
(315, 'Article \'Dhulikhel\' has added successfully.', '2023-09-04 13:28:02', 1, 3, '27.34.84.147'),
(316, 'Article \'Bhaktapur\' has added successfully.', '2023-09-04 13:28:33', 1, 3, '27.34.84.147'),
(317, 'Changes on Article \'Bhaktapur\' has been saved successfully.', '2023-09-04 13:29:17', 1, 4, '27.34.84.147'),
(318, 'Login: ClubHimalaya   logged in.', '2023-09-04 14:52:09', 1, 1, '27.34.2.119'),
(319, 'Login: ClubHimalaya   logged in.', '2023-09-04 17:33:42', 1, 1, '27.34.2.119'),
(320, 'Menu [ABOUT US] Edit Successfully', '2023-09-04 17:33:54', 1, 4, '27.34.2.119'),
(321, 'Menu [ABOUT US] Edit Successfully', '2023-09-04 17:34:22', 1, 4, '27.34.2.119'),
(322, 'Login: ClubHimalaya   logged in.', '2023-09-06 15:41:32', 1, 1, '27.34.64.16'),
(323, 'Login: ClubHimalaya   logged in.', '2023-09-15 11:20:48', 1, 1, '103.10.29.84'),
(324, 'FAQ [test]Data has deleted successfully.', '2023-09-15 11:21:12', 1, 6, '103.10.29.84'),
(325, 'Changes on FAQ \'What are the amenities and facilities in the hotel?\' has been saved successfully.', '2023-09-15 11:21:34', 1, 4, '103.10.29.84'),
(326, 'Changes on FAQ \'What are the activities guests can enjoy?\' has been saved successfully.', '2023-09-15 11:22:01', 1, 4, '103.10.29.84'),
(327, 'Changes on FAQ \'What are the services available?\' has been saved successfully.', '2023-09-15 11:22:25', 1, 4, '103.10.29.84'),
(328, 'FAQ \'Internet\' has added successfully.', '2023-09-15 11:22:44', 1, 3, '103.10.29.84'),
(329, 'FAQ \'Parking\' has added successfully.', '2023-09-15 11:23:01', 1, 3, '103.10.29.84'),
(330, 'FAQ \'How do I get to the hotel?\' has added successfully.', '2023-09-15 11:23:55', 1, 3, '103.10.29.84'),
(331, 'FAQ \'What are the things to do in Nagarkot?\' has added successfully.', '2023-09-15 11:24:12', 1, 3, '103.10.29.84'),
(332, 'FAQ \'We guarantee\' has added successfully.', '2023-09-15 11:24:26', 1, 3, '103.10.29.84'),
(333, 'FAQ \'What are the accepted credit cards?\' has added successfully.', '2023-09-15 11:24:38', 1, 3, '103.10.29.84'),
(334, 'FAQ \'Pets\' has added successfully.', '2023-09-15 11:24:49', 1, 3, '103.10.29.84'),
(335, 'FAQ \'What are the Hotel Policies?\' has added successfully.', '2023-09-15 11:25:00', 1, 3, '103.10.29.84'),
(336, 'FAQ \'When is the best time to visit?\' has added successfully.', '2023-09-15 11:25:11', 1, 3, '103.10.29.84'),
(337, 'FAQ \'What is the weather in Nagarkot like ?\' has added successfully.', '2023-09-15 11:25:23', 1, 3, '103.10.29.84'),
(338, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:27:35', 1, 4, '103.10.29.84'),
(339, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:28:20', 1, 4, '103.10.29.84'),
(340, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:29:40', 1, 4, '103.10.29.84'),
(341, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:30:43', 1, 4, '103.10.29.84'),
(342, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:31:45', 1, 4, '103.10.29.84'),
(343, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:33:30', 1, 4, '103.10.29.84'),
(344, 'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.', '2023-09-15 11:34:04', 1, 4, '103.10.29.84'),
(345, 'Menu [Deluxe Room] Edit Successfully', '2023-09-15 11:38:50', 1, 4, '103.10.29.84'),
(346, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:18', 1, 6, '103.10.29.84'),
(347, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:21', 1, 6, '103.10.29.84'),
(348, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:21', 1, 6, '103.10.29.84'),
(349, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:24', 1, 6, '103.10.29.84'),
(350, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:24', 1, 6, '103.10.29.84'),
(351, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:24', 1, 6, '103.10.29.84'),
(352, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:27', 1, 6, '103.10.29.84'),
(353, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:28', 1, 6, '103.10.29.84'),
(354, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:28', 1, 6, '103.10.29.84'),
(355, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:28', 1, 6, '103.10.29.84'),
(356, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(357, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(358, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(359, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(360, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:30', 1, 6, '103.10.29.84'),
(361, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(362, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(363, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(364, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(365, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(366, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-09-15 11:39:33', 1, 6, '103.10.29.84'),
(367, 'Sub Package Image [deluxe]Data has added successfully.', '2023-09-15 11:40:40', 1, 3, '103.10.29.84'),
(368, 'Sub Package Image [delxue]Data has added successfully.', '2023-09-15 11:40:40', 1, 3, '103.10.29.84'),
(369, 'Sub Package Image [deluxe]Data has added successfully.', '2023-09-15 11:40:40', 1, 3, '103.10.29.84'),
(370, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-15 11:42:06', 1, 4, '103.10.29.84'),
(371, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-15 11:44:10', 1, 4, '103.10.29.84'),
(372, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2023-09-15 11:45:21', 1, 4, '103.10.29.84'),
(373, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2023-09-15 11:45:47', 1, 4, '103.10.29.84'),
(374, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2023-09-15 11:46:31', 1, 4, '103.10.29.84'),
(375, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2023-09-15 11:47:11', 1, 4, '103.10.29.84'),
(376, 'Package Rooms Edit Successfully', '2023-09-15 11:59:06', 1, 4, '103.10.29.84'),
(377, 'Blog [Brief On Club Himalaya] Edit Successfully', '2023-09-15 12:04:11', 1, 4, '103.10.29.84'),
(378, 'Testimonial [Andrew Parker - Writer] Edit Successfully', '2023-09-15 12:08:45', 1, 4, '103.10.29.84'),
(379, 'Testimonial [Greg. S - Wagga] Edit Successfully', '2023-09-15 12:09:02', 1, 4, '103.10.29.84'),
(380, 'Testimonial [Andrew Parker - writer] Edit Successfully', '2023-09-15 12:10:59', 1, 4, '103.10.29.84'),
(381, 'Menu [ABOUT US] Edit Successfully', '2023-09-15 12:27:48', 1, 4, '103.10.29.84'),
(382, 'Login: ClubHimalaya   logged in.', '2023-09-15 12:44:06', 1, 1, '27.34.64.76'),
(383, 'Login: ClubHimalaya   logged in.', '2023-09-17 12:46:18', 1, 1, '27.34.76.145'),
(384, 'Sub Package Image [standard]Data has added successfully.', '2023-09-17 12:48:42', 1, 3, '27.34.76.145'),
(385, 'Sub Package Image [standard]Data has added successfully.', '2023-09-17 12:48:42', 1, 3, '27.34.76.145'),
(386, 'Sub Package Image [standard]Data has added successfully.', '2023-09-17 12:48:42', 1, 3, '27.34.76.145'),
(387, 'Login: ClubHimalaya   logged in.', '2023-09-17 13:55:22', 1, 1, '27.34.76.150'),
(388, 'Testimonial [Andrew Parker - writer] Edit Successfully', '2023-09-17 13:55:38', 1, 4, '27.34.76.150'),
(389, 'Testimonial [Andrew Parker] Edit Successfully', '2023-09-17 13:55:47', 1, 4, '27.34.76.150'),
(390, 'Testimonial [Greg. S ] Edit Successfully', '2023-09-17 13:57:54', 1, 4, '27.34.76.150'),
(391, 'Testimonial [WIRAEN] Edit Successfully', '2023-09-17 13:58:08', 1, 4, '27.34.76.150'),
(392, 'Login: ClubHimalaya   logged in.', '2023-09-17 17:11:07', 1, 1, '27.34.76.150'),
(393, 'Sub Package \'Library\' has added successfully.', '2023-09-17 17:15:37', 1, 3, '27.34.76.150'),
(394, 'Sub Package Image [kli]Data has added successfully.', '2023-09-17 17:16:29', 1, 3, '27.34.76.150'),
(395, 'SubPackage Gallery Image [kli]Data has deleted successfully.', '2023-09-17 17:16:36', 1, 6, '27.34.76.150'),
(396, 'Sub Package Image [lib]Data has added successfully.', '2023-09-17 17:18:17', 1, 3, '27.34.76.150'),
(397, 'Sub Package Image [lib]Data has added successfully.', '2023-09-17 17:18:17', 1, 3, '27.34.76.150'),
(398, 'Blog [Nagarkot Nepal ]Data has added successfully.', '2023-09-17 17:22:38', 1, 3, '27.34.76.150'),
(399, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:24:15', 1, 4, '27.34.76.150'),
(400, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:24:40', 1, 4, '27.34.76.150'),
(401, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:25:39', 1, 4, '27.34.76.150'),
(402, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:26:22', 1, 4, '27.34.76.150'),
(403, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-09-17 17:27:26', 1, 4, '27.34.76.150'),
(404, 'Login: ClubHimalaya   logged in.', '2023-09-18 08:28:10', 1, 1, '27.34.76.150'),
(405, 'Menu [Standard Room] CreatedData has added successfully.', '2023-09-18 08:35:32', 1, 3, '27.34.76.150'),
(406, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-09-18 08:57:44', 1, 4, '27.34.76.150'),
(407, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-09-18 08:58:00', 1, 4, '27.34.76.150'),
(408, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-09-18 08:58:08', 1, 4, '27.34.76.150'),
(409, 'Login: ClubHimalaya   logged in.', '2023-09-18 09:30:13', 1, 1, '27.34.76.150'),
(410, 'Login: ClubHimalaya   logged in.', '2023-09-18 10:34:46', 1, 1, '27.34.76.150'),
(411, 'Login: ClubHimalaya   logged in.', '2023-09-19 09:59:36', 1, 1, '27.34.76.167'),
(412, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 10:04:06', 1, 4, '27.34.76.167'),
(413, 'Login: ClubHimalaya   logged in.', '2023-09-19 17:49:22', 1, 1, '27.34.76.164'),
(414, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:53:16', 1, 4, '27.34.76.164'),
(415, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:54:33', 1, 4, '27.34.76.164'),
(416, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:56:15', 1, 4, '27.34.76.164'),
(417, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 17:57:25', 1, 4, '27.34.76.164'),
(418, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 18:05:13', 1, 4, '27.34.76.164'),
(419, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 18:06:00', 1, 4, '27.34.76.164'),
(420, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-19 18:06:34', 1, 4, '27.34.76.164'),
(421, 'Login: ClubHimalaya   logged in.', '2023-09-21 08:19:17', 1, 1, '27.34.76.158'),
(422, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-21 08:21:01', 1, 4, '27.34.76.158'),
(423, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-09-21 08:21:37', 1, 4, '27.34.76.158'),
(424, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-21 08:22:34', 1, 4, '27.34.76.158'),
(425, 'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.', '2023-09-21 08:23:21', 1, 4, '27.34.76.158'),
(426, 'Changes on Sub Package \'Library\' has been saved successfully.', '2023-09-21 08:23:59', 1, 4, '27.34.76.158'),
(427, 'Changes on Sub Package \'Library\' has been saved successfully.', '2023-09-21 08:24:48', 1, 4, '27.34.76.158'),
(428, 'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.', '2023-09-21 08:25:25', 1, 4, '27.34.76.158'),
(429, 'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.', '2023-09-21 08:27:48', 1, 4, '27.34.76.158'),
(430, 'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.', '2023-09-21 08:28:11', 1, 4, '27.34.76.158'),
(431, 'Login: ClubHimalaya   logged in.', '2023-10-16 14:28:42', 1, 1, '27.34.64.117'),
(432, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-10-16 14:34:55', 1, 4, '27.34.64.117'),
(433, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-10-16 14:35:27', 1, 4, '27.34.64.117'),
(434, 'Changes on Article \'about us home page\' has been saved successfully.', '2023-10-16 14:37:06', 1, 4, '27.34.64.117'),
(435, 'Menu [ABOUT US] Edit Successfully', '2023-10-16 14:37:47', 1, 4, '27.34.64.117'),
(436, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-16 14:38:47', 1, 4, '27.34.64.117'),
(437, 'Menu [ABOUT US] Edit Successfully', '2023-10-16 14:39:05', 1, 4, '27.34.64.117'),
(438, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-16 14:39:34', 1, 4, '27.34.64.117'),
(439, 'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.', '2023-10-16 14:39:52', 1, 4, '27.34.64.117'),
(440, 'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-10-16 14:42:11', 1, 4, '27.34.64.117'),
(441, 'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-10-16 14:42:35', 1, 4, '27.34.64.117'),
(442, 'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.', '2023-10-16 14:42:54', 1, 4, '27.34.64.117'),
(443, 'Login: ClubHimalaya   logged in.', '2023-10-17 13:12:04', 1, 1, '27.34.64.117'),
(444, 'Article \'Exceptional Experiences\' has added successfully.', '2023-10-17 13:56:59', 1, 3, '27.34.64.117'),
(445, 'Testimonial [Greg. S ] Edit Successfully', '2023-10-17 13:58:48', 1, 4, '27.34.64.117'),
(446, 'Changes on Article \'Exceptional Experiences\' has been saved successfully.', '2023-10-17 14:01:43', 1, 4, '27.34.64.117'),
(447, 'Changes on Article \'Exceptional Experiences\' has been saved successfully.', '2023-10-17 14:04:07', 1, 4, '27.34.64.117'),
(448, 'Login: ClubHimalaya   logged in.', '2023-10-17 14:06:04', 1, 1, '27.34.76.163'),
(449, 'Login: ClubHimalaya   logged in.', '2023-10-20 08:23:42', 1, 1, '27.34.76.176'),
(450, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-20 08:50:04', 1, 4, '27.34.76.176'),
(451, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-20 08:50:11', 1, 4, '27.34.76.176'),
(452, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-20 08:51:20', 1, 4, '27.34.76.176'),
(453, 'Login: ClubHimalaya   logged in.', '2023-10-29 13:52:56', 1, 1, '27.34.64.54'),
(454, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 13:53:26', 1, 4, '27.34.64.54'),
(455, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 13:53:48', 1, 4, '27.34.64.54'),
(456, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 13:59:19', 1, 4, '27.34.64.54'),
(457, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-29 14:15:31', 1, 4, '27.34.64.54'),
(458, 'Changes on FAQ \'What are the accepted credit cards?\' has been saved successfully.', '2023-10-29 14:37:43', 1, 4, '27.34.64.54'),
(459, 'Changes on FAQ \'What are the accepted credit cards?\' has been saved successfully.', '2023-10-29 14:38:12', 1, 4, '27.34.64.54'),
(460, 'Changes on FAQ \'We guarantee\' has been saved successfully.', '2023-10-29 14:39:02', 1, 4, '27.34.64.54'),
(461, 'Changes on FAQ \'What are the things to do in Nagarkot?\' has been saved successfully.', '2023-10-29 14:39:55', 1, 4, '27.34.64.54'),
(462, 'Article \'Partners\' has added successfully.', '2023-10-29 14:41:53', 1, 3, '27.34.64.54'),
(463, 'Menu [Our Partners] Edit Successfully', '2023-10-29 14:42:22', 1, 4, '27.34.64.54'),
(464, 'Menu [FAQ\'s] Edit Successfully', '2023-10-29 14:42:46', 1, 4, '27.34.64.54'),
(465, 'Changes on Article \'Partners\' has been saved successfully.', '2023-10-29 14:43:46', 1, 4, '27.34.64.54'),
(466, 'Article \'Enhanced Safety\' has added successfully.', '2023-10-29 14:46:24', 1, 3, '27.34.64.54'),
(467, 'Menu [Enhanced Safety] Edit Successfully', '2023-10-29 14:46:57', 1, 4, '27.34.64.54'),
(468, 'Changes on Article \'Enhanced Safety\' has been saved successfully.', '2023-10-29 14:48:23', 1, 4, '27.34.64.54'),
(469, 'Blog [Brief On Club Himalaya] Edit Successfully', '2023-10-29 14:50:39', 1, 4, '27.34.64.54'),
(470, 'Blog [Nagarkot Nepal ] Edit Successfully', '2023-10-29 14:52:40', 1, 4, '27.34.64.54'),
(471, 'Login: ClubHimalaya   logged in.', '2023-10-30 09:21:27', 1, 1, '27.34.76.183'),
(472, 'User [ClubHimalaya  ] Edit Successfully', '2023-10-30 09:21:49', 1, 4, '27.34.76.183'),
(473, 'Login: ClubHimalaya   logged in.', '2023-10-30 10:54:57', 1, 1, '27.34.0.5'),
(474, 'Login: ClubHimalaya   logged in.', '2023-10-30 13:48:32', 1, 1, '27.34.0.5'),
(475, 'Changes on Main service \'SPA\' has been saved successfully.', '2023-10-30 13:50:58', 1, 4, '27.34.0.5'),
(476, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 13:53:17', 1, 4, '27.34.0.5'),
(477, 'Login: ClubHimalaya   logged in.', '2023-10-30 14:07:44', 1, 1, '27.34.64.54');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(478, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 14:08:16', 1, 4, '27.34.0.5'),
(479, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 14:08:34', 1, 4, '27.34.64.54'),
(480, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-10-30 14:09:39', 1, 4, '27.34.64.54'),
(481, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-30 14:17:37', 1, 4, '27.34.0.5'),
(482, 'Slideshow [By Ace Hotel] Edit Successfully', '2023-10-30 14:17:51', 1, 4, '27.34.0.5'),
(483, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-30 14:24:08', 1, 4, '27.34.64.54'),
(484, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-30 14:24:31', 1, 4, '27.34.64.54'),
(485, 'Login: ClubHimalaya   logged in.', '2023-10-30 14:24:34', 1, 1, '27.34.64.193'),
(486, 'Changes on Article \'about us\' has been saved successfully.', '2023-10-30 14:24:50', 1, 4, '27.34.64.54'),
(487, 'SocialNetworking [Facebook] Edit Successfully', '2023-10-30 14:30:21', 1, 4, '27.34.0.5'),
(488, 'Changes on Main service \'SPA\' has been saved successfully.', '2023-10-30 14:38:13', 1, 4, '27.34.0.5'),
(489, 'Changes on Main service \'SPA\' has been saved successfully.', '2023-10-30 14:38:42', 1, 4, '27.34.0.5'),
(490, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:39:43', 1, 4, '27.34.64.193'),
(491, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:41:22', 1, 6, '27.34.64.193'),
(492, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:12', 1, 6, '27.34.0.5'),
(493, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:22', 1, 6, '27.34.0.5'),
(494, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:22', 1, 6, '27.34.0.5'),
(495, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:34', 1, 6, '27.34.0.5'),
(496, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:34', 1, 6, '27.34.0.5'),
(497, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:42:34', 1, 6, '27.34.0.5'),
(498, 'Vacency [HR post wanted]Data has added successfully.', '2023-10-30 14:42:48', 1, 3, '27.34.0.5'),
(499, 'SubPackage Gallery Image []Data has deleted successfully.', '2023-10-30 14:43:16', 1, 6, '27.34.64.193'),
(500, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:46:05', 1, 4, '27.34.64.193'),
(501, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:57:14', 1, 4, '27.34.64.193'),
(502, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 14:59:48', 1, 4, '27.34.64.193'),
(503, 'Login: ClubHimalaya   logged in.', '2023-10-30 16:19:42', 1, 1, '27.34.64.193'),
(504, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-10-30 16:20:02', 1, 4, '27.34.64.193'),
(505, 'Login: ClubHimalaya   logged in.', '2023-10-31 14:05:47', 1, 1, '27.34.64.54'),
(506, 'Login: ClubHimalaya   logged in.', '2023-11-02 15:02:34', 1, 1, '27.34.64.4'),
(507, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-02 15:03:17', 1, 4, '27.34.64.4'),
(508, 'Menu [RESTAURANTS / BAR] Edit Successfully', '2023-11-02 15:06:33', 1, 4, '27.34.64.4'),
(509, 'Menu [RESTAURANTS & BAR] Edit Successfully', '2023-11-02 15:06:48', 1, 4, '27.34.64.4'),
(510, 'Package Dining Edit Successfully', '2023-11-02 15:10:24', 1, 4, '27.34.64.4'),
(511, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-11-02 15:10:51', 1, 4, '27.34.64.4'),
(512, 'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.', '2023-11-02 15:11:28', 1, 4, '27.34.64.4'),
(513, 'Login: ClubHimalaya   logged in.', '2023-11-05 12:35:52', 1, 1, '163.53.26.226'),
(514, 'Package Dining Edit Successfully', '2023-11-05 12:36:16', 1, 4, '163.53.26.226'),
(515, 'Package Dining Edit Successfully', '2023-11-05 12:36:53', 1, 4, '163.53.26.226'),
(516, 'Package Dining Edit Successfully', '2023-11-05 12:39:13', 1, 4, '163.53.26.226'),
(517, 'Package Dining Edit Successfully', '2023-11-05 12:40:33', 1, 4, '163.53.26.226'),
(518, 'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.', '2023-11-05 12:43:48', 1, 4, '163.53.26.226'),
(519, 'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.', '2023-11-05 12:45:22', 1, 4, '163.53.26.226'),
(520, 'Login: ClubHimalaya   logged in.', '2023-11-05 16:08:23', 1, 1, '113.199.255.222'),
(521, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:09:59', 1, 4, '113.199.255.222'),
(522, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:14:12', 1, 4, '113.199.255.222'),
(523, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:15:19', 1, 4, '113.199.255.222'),
(524, 'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.', '2023-11-05 16:28:05', 1, 4, '113.199.255.222'),
(525, 'Login: ClubHimalaya   logged in.', '2023-11-09 07:49:33', 1, 1, '::1'),
(526, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 08:05:04', 1, 4, '::1'),
(527, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 08:09:56', 1, 4, '::1'),
(528, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 08:19:06', 1, 4, '::1'),
(529, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:38:20', 1, 4, '::1'),
(530, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:38:30', 1, 4, '::1'),
(531, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:38:38', 1, 4, '::1'),
(532, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:44:08', 1, 4, '::1'),
(533, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:52:23', 1, 4, '::1'),
(534, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:52:34', 1, 4, '::1'),
(535, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 10:52:53', 1, 4, '::1'),
(536, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 11:01:21', 1, 4, '::1'),
(537, 'Login: ClubHimalaya   logged in.', '2023-11-09 11:13:42', 1, 1, '::1'),
(538, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 12:59:53', 1, 4, '::1'),
(539, 'Login: ClubHimalaya   logged in.', '2023-11-09 13:14:02', 1, 1, '::1'),
(540, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-09 13:16:15', 1, 4, '::1'),
(541, 'SocialNetworking [Facebook] Edit Successfully', '2023-11-09 13:18:59', 1, 4, '::1'),
(542, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:28:18', 1, 4, '::1'),
(543, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:28:26', 1, 4, '::1'),
(544, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:28:56', 1, 4, '::1'),
(545, 'SocialNetworking [Twitter] Edit Successfully', '2023-11-09 13:29:31', 1, 4, '::1'),
(546, 'Login: ClubHimalaya   logged in.', '2023-11-09 15:07:07', 1, 1, '::1'),
(547, 'Login: ClubHimalaya   logged in.', '2023-11-09 15:10:05', 1, 1, '::1'),
(548, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 15:15:15', 1, 4, '::1'),
(549, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 15:20:22', 1, 4, '::1'),
(550, 'Package [asdasd]Data has added successfully.', '2023-11-09 15:24:44', 1, 3, '::1'),
(551, 'Package asdasd Edit Successfully', '2023-11-09 15:25:12', 1, 4, '::1'),
(552, 'Package asdasd Edit Successfully', '2023-11-09 15:25:44', 1, 4, '::1'),
(553, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 15:26:14', 1, 4, '::1'),
(554, 'Login: ClubHimalaya   logged in.', '2023-11-09 15:41:26', 1, 1, '::1'),
(555, 'Login: Super admin   logged in.', '2023-11-09 15:59:32', 1, 1, '::1'),
(556, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:05:26', 1, 1, '::1'),
(557, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:35:17', 1, 1, '::1'),
(558, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:39:40', 1, 1, '::1'),
(559, 'Login: Super admin   logged in.', '2023-11-09 16:40:07', 1, 1, '::1'),
(560, 'User [Super admin  ] Edit Successfully', '2023-11-09 16:48:42', 1, 4, '::1'),
(561, 'Login: Super admin   logged in.', '2023-11-09 16:48:59', 1, 1, '::1'),
(562, 'Login: ClubHimalaya   logged in.', '2023-11-09 16:55:28', 1, 1, '::1'),
(563, 'Changes on Article \'Enhanced Safety\' has been saved successfully.', '2023-11-09 17:06:08', 1, 4, '::1'),
(564, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:06:28', 1, 4, '::1'),
(565, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:10:38', 1, 4, '::1'),
(566, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:12:25', 1, 4, '::1'),
(567, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:19:03', 1, 4, '::1'),
(568, 'Changes on Article \'about us\' has been saved successfully.', '2023-11-09 17:20:06', 1, 4, '::1'),
(569, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 17:41:56', 1, 4, '::1'),
(570, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 17:42:04', 1, 4, '::1'),
(571, 'Login: ClubHimalaya   logged in.', '2023-11-09 17:55:33', 1, 1, '::1'),
(572, 'Login: Super admin   logged in.', '2023-11-09 17:56:29', 1, 1, '::1'),
(573, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 17:58:44', 1, 4, '::1'),
(574, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 18:05:05', 1, 4, '::1'),
(575, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-09 18:05:15', 1, 4, '::1'),
(576, 'Login: ClubHimalaya   logged in.', '2023-11-10 10:41:03', 1, 1, '::1'),
(577, 'Login: Super admin   logged in.', '2023-11-10 10:42:06', 1, 1, '::1'),
(578, 'Login: ClubHimalaya   logged in.', '2023-11-10 11:59:19', 1, 1, '::1'),
(579, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:10:51', 1, 4, '::1'),
(580, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:11:03', 1, 4, '::1'),
(581, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:18:24', 1, 4, '::1'),
(582, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 12:32:34', 1, 4, '::1'),
(583, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2023-11-10 13:39:16', 1, 4, '::1'),
(584, 'Login: ClubHimalaya   logged in.', '2023-11-11 12:24:05', 1, 1, '::1'),
(585, 'Login: Super admin   logged in.', '2023-11-11 12:24:59', 1, 1, '::1'),
(586, 'User [ClubHimalaya  ] Edit Successfully', '2023-11-11 12:25:10', 1, 4, '::1'),
(587, 'User [Super admin  ] Edit Successfully', '2023-11-11 12:25:51', 1, 4, '::1'),
(588, 'ota [asdasdasd]Data has added successfully.', '2023-11-11 12:27:21', 1, 3, '::1'),
(589, 'ota [booking.com]Data has added successfully.', '2023-11-11 12:29:41', 1, 3, '::1'),
(590, 'ota [asd]Data has added successfully.', '2023-11-11 12:31:50', 1, 3, '::1'),
(591, 'ota  [asdasdasd]Data has deleted successfully.', '2023-11-11 12:31:59', 1, 6, '::1'),
(592, 'ota  [asdasdasd]Data has deleted successfully.', '2023-11-11 12:31:59', 1, 6, '::1'),
(593, 'ota  []Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(594, 'ota  []Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(595, 'ota  [booking.com]Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(596, 'ota  [booking.com]Data has deleted successfully.', '2023-11-11 12:32:02', 1, 6, '::1'),
(597, 'ota [booking.com] Edit Successfully', '2023-11-11 12:32:27', 1, 4, '::1'),
(598, 'ota [agoda]Data has added successfully.', '2023-11-11 12:32:45', 1, 3, '::1'),
(599, 'ota [booking] Edit Successfully', '2023-11-11 12:32:54', 1, 4, '::1'),
(600, 'ota [expedia]Data has added successfully.', '2023-11-11 12:33:12', 1, 3, '::1'),
(601, 'ota [tripadvisor]Data has added successfully.', '2023-11-11 12:33:35', 1, 3, '::1'),
(602, 'ota [Make My Trip]Data has added successfully.', '2023-11-11 12:33:56', 1, 3, '::1'),
(603, 'Login: ClubHimalaya   logged in.', '2023-11-21 11:26:47', 1, 1, '::1'),
(604, 'Login: ClubHimalaya   logged in.', '2023-11-21 11:42:05', 1, 1, '::1'),
(605, 'Slideshow [asdasdasdasd]Data has added successfully.', '2023-11-21 11:55:43', 1, 3, '::1'),
(606, 'Login: ClubHimalaya   logged in.', '2023-11-22 12:39:54', 1, 1, '::1'),
(607, 'Login: ClubHimalaya   logged in.', '2023-11-29 19:11:14', 1, 1, '::1'),
(608, 'Login: ClubHimalaya   logged in.', '2023-12-12 10:50:45', 1, 1, '::1'),
(609, 'Login: ClubHimalaya   logged in.', '2024-01-08 14:49:51', 1, 1, '::1'),
(610, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:47:25', 1, 1, '::1'),
(611, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:47:40', 1, 1, '::1'),
(612, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:49:19', 1, 1, '::1'),
(613, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:51:17', 1, 1, '::1'),
(614, 'Login: ClubHimalaya   logged in.', '2024-01-10 12:52:51', 1, 1, '::1'),
(615, 'User [asdasd asdasd asdasd] login Created Data has added successfully.', '2024-01-10 12:55:05', 1, 3, '::1'),
(616, 'Login: Super admin   logged in.', '2024-01-10 12:55:36', 1, 1, '::1'),
(617, 'Menu [test] CreatedData has added successfully.', '2024-01-10 12:57:00', 1, 3, '::1'),
(618, 'Menu  [test]Data has deleted successfully.', '2024-01-10 12:57:47', 1, 6, '::1'),
(619, 'Article \'asdfasdf\' has added successfully.', '2024-01-10 13:11:12', 1, 3, '::1'),
(620, 'Changes on Article \'asdfasdf\' has been saved successfully.', '2024-01-10 13:11:39', 1, 4, '::1'),
(621, 'Features [inabsdioniasd]Data has added successfully.', '2024-01-10 13:13:19', 1, 3, '::1'),
(622, 'Features  [inabsdioniasd]Data has deleted successfully.', '2024-01-10 13:13:28', 1, 6, '::1'),
(623, 'Features [adfwererrd]Data has added successfully.', '2024-01-10 13:13:48', 1, 3, '::1'),
(624, 'Features  [adfwererrd]Data has deleted successfully.', '2024-01-10 13:14:09', 1, 6, '::1'),
(625, 'Package [testing 8.2]Data has added successfully.', '2024-01-10 13:14:35', 1, 3, '::1'),
(626, 'Sub Package \'asdasdasddasasd\' has added successfully.', '2024-01-10 13:15:21', 1, 3, '::1'),
(627, 'Slideshows  [asdasdasdasd]Data has deleted successfully.', '2024-01-10 13:15:39', 1, 6, '::1'),
(628, 'Slideshow  [asdasdasdasd]Data has deleted successfully.', '2024-01-10 13:15:39', 1, 6, '::1'),
(629, 'Slideshows  []Data has deleted successfully.', '2024-01-10 13:15:49', 1, 6, '::1'),
(630, 'Slideshow  []Data has deleted successfully.', '2024-01-10 13:15:49', 1, 6, '::1'),
(631, 'Vacency  [HR post wanted]Data has deleted successfully.', '2024-01-10 13:16:09', 1, 6, '::1'),
(632, 'Main service \'yuvvyuvyui\' has added successfully.', '2024-01-10 13:22:30', 1, 3, '::1'),
(633, 'Changes on Main service \'yuvvyuvyui\' has been saved successfully.', '2024-01-10 13:22:41', 1, 4, '::1'),
(634, 'Changes on Main service \'yuvvyuvyui\' has been saved successfully.', '2024-01-10 13:22:54', 1, 4, '::1'),
(635, 'Sub Gallery Image  [e]Data has deleted successfully.', '2024-01-10 13:25:45', 1, 6, '::1'),
(636, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 13:25:48', 1, 6, '::1'),
(637, 'Sub Gallery Image  [e]Data has deleted successfully.', '2024-01-10 13:25:48', 1, 6, '::1'),
(638, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 13:25:52', 1, 6, '::1'),
(639, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 13:25:52', 1, 6, '::1'),
(640, 'Sub Gallery Image  [e]Data has deleted successfully.', '2024-01-10 13:25:52', 1, 6, '::1'),
(641, 'Sub Gallery Image [ytvasd]Data has added successfully.', '2024-01-10 13:26:05', 1, 3, '::1'),
(642, 'Sub Gallery Image [yvasydiv]Data has added successfully.', '2024-01-10 13:26:05', 1, 3, '::1'),
(643, 'Sub Gallery Image [asdyvhjkv]Data has added successfully.', '2024-01-10 13:26:05', 1, 3, '::1'),
(644, 'User [Super admin  ] Edit Successfully', '2024-01-10 13:26:49', 1, 4, '::1'),
(645, 'Offers [ASAs]Data has added successfully.', '2024-01-10 13:29:39', 1, 3, '::1'),
(646, 'Offers [ASAs] Edit Successfully', '2024-01-10 13:30:02', 1, 4, '::1'),
(647, 'Offers [ASAs] Edit Successfully', '2024-01-10 13:30:23', 1, 4, '::1'),
(648, 'Login: Super admin   logged in.', '2024-01-10 14:50:52', 1, 1, '::1'),
(649, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:01', 1, 6, '::1'),
(650, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:04', 1, 6, '::1'),
(651, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:04', 1, 6, '::1'),
(652, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:30', 1, 6, '::1'),
(653, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:30', 1, 6, '::1'),
(654, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:30', 1, 6, '::1'),
(655, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(656, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(657, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(658, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:35', 1, 6, '::1'),
(659, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(660, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(661, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(662, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:38', 1, 6, '::1'),
(663, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:39', 1, 6, '::1'),
(664, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(665, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(666, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(667, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(668, 'Sub Gallery Image  []Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(669, 'Sub Gallery Image  [a]Data has deleted successfully.', '2024-01-10 14:52:44', 1, 6, '::1'),
(670, 'Sub Gallery Image [a]Data has added successfully.', '2024-01-10 14:53:12', 1, 3, '::1'),
(671, 'Sub Gallery Image [a]Data has added successfully.', '2024-01-10 14:53:12', 1, 3, '::1'),
(672, 'Sub Gallery Image [a]Data has added successfully.', '2024-01-10 14:53:12', 1, 3, '::1'),
(673, 'Popup \'asefasdasd\' has added successfully.', '2024-01-10 14:55:03', 1, 3, '::1'),
(674, 'Services [rtsetsdf]Data has added successfully.', '2024-01-10 14:57:52', 1, 3, '::1'),
(675, 'Servicess  [rtsetsdf]Data has deleted successfully.', '2024-01-10 14:58:09', 1, 6, '::1'),
(676, 'Services  [rtsetsdf]Data has deleted successfully.', '2024-01-10 14:58:09', 1, 6, '::1'),
(677, 'Login: Super admin   logged in.', '2024-01-11 17:07:29', 1, 1, '::1'),
(678, 'Login: ClubHimalaya   logged in.', '2024-01-12 10:59:26', 1, 1, '::1'),
(679, 'Login: ClubHimalaya   logged in.', '2024-01-16 10:32:37', 1, 1, '::1'),
(680, 'SocialNetworking [Facebook] Edit Successfully', '2024-01-16 10:35:23', 1, 4, '::1'),
(681, 'Login: ClubHimalaya   logged in.', '2024-01-17 11:13:45', 1, 1, '::1'),
(682, 'Menu  [HOME]Data has deleted successfully.', '2024-01-17 11:13:52', 1, 6, '::1'),
(683, 'Menu  [ABOUT US]Data has deleted successfully.', '2024-01-17 11:13:55', 1, 6, '::1'),
(684, 'Menu  [ROOMS & SUITES]Data has deleted successfully.', '2024-01-17 11:13:57', 1, 6, '::1'),
(685, 'Menu  [MICE]Data has deleted successfully.', '2024-01-17 11:13:59', 1, 6, '::1'),
(686, 'Menu  [RESTAURANTS & BAR]Data has deleted successfully.', '2024-01-17 11:14:01', 1, 6, '::1'),
(687, 'Menu  [FACILITIES]Data has deleted successfully.', '2024-01-17 11:14:03', 1, 6, '::1'),
(688, 'Menu  [GALLERY]Data has deleted successfully.', '2024-01-17 11:14:05', 1, 6, '::1'),
(689, 'Menu  [CAREER]Data has deleted successfully.', '2024-01-17 11:14:07', 1, 6, '::1'),
(690, 'Menu  [CONTACT US]Data has deleted successfully.', '2024-01-17 11:14:09', 1, 6, '::1'),
(691, 'Menu  [Our Partners]Data has deleted successfully.', '2024-01-17 11:14:11', 1, 6, '::1'),
(692, 'Login: ClubHimalaya   logged in.', '2024-01-18 13:37:35', 1, 1, '::1'),
(693, 'Login: ClubHimalaya   logged in.', '2024-01-23 15:41:13', 1, 1, '::1'),
(694, 'Login: Super admin   logged in.', '2024-01-23 15:50:09', 1, 1, '::1'),
(695, 'Login: ClubHimalaya   logged in.', '2024-01-23 15:50:16', 1, 1, '::1'),
(696, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-23 15:53:56', 1, 4, '::1'),
(697, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-23 15:57:02', 1, 4, '::1'),
(698, 'Login: ClubHimalaya   logged in.', '2024-01-23 15:57:08', 1, 1, '::1'),
(699, 'Login: Super admin   logged in.', '2024-01-23 16:00:52', 1, 1, '::1'),
(700, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:47:00', 1, 4, '::1'),
(701, 'User Group [Administrator] Edit Successfully', '2024-01-23 16:48:35', 1, 4, '::1'),
(702, 'User Group [Administrator] Edit Successfully', '2024-01-23 16:48:59', 1, 4, '::1'),
(703, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:49:15', 1, 4, '::1'),
(704, 'Login: Super admin   logged in.', '2024-01-23 16:49:20', 1, 1, '::1'),
(705, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:49:39', 1, 4, '::1'),
(706, 'Login: Super admin   logged in.', '2024-01-23 16:49:44', 1, 1, '::1'),
(707, 'User Group [Administrator] Edit Successfully', '2024-01-23 16:56:17', 1, 4, '::1'),
(708, 'User [Super admin  ] Edit Successfully', '2024-01-23 16:56:27', 1, 4, '::1'),
(709, 'Login: Super admin   logged in.', '2024-01-23 16:56:31', 1, 1, '::1'),
(710, 'Login: Super admin   logged in.', '2024-01-24 10:56:17', 1, 1, '::1'),
(711, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2024-01-24 11:15:08', 1, 4, '::1'),
(712, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2024-01-24 11:18:03', 1, 4, '::1'),
(713, 'Changes on Config \'Club Himalaya\' has been saved successfully.', '2024-01-24 11:18:13', 1, 4, '::1'),
(714, 'User [Super admin  ] Edit Successfully', '2024-01-24 11:28:50', 1, 4, '::1'),
(715, 'Login: Super admin   logged in.', '2024-01-24 12:12:57', 1, 1, '::1'),
(716, 'Login: Super admin   logged in.', '2024-01-24 12:13:06', 1, 1, '::1'),
(717, 'Login: Super admin   logged in.', '2024-01-24 12:14:50', 1, 1, '::1'),
(718, 'Login: Super admin   logged in.', '2024-01-24 12:17:27', 1, 1, '::1'),
(719, 'Login: Super admin   logged in.', '2024-01-24 12:18:09', 1, 1, '::1'),
(720, 'Login: Super admin   logged in.', '2024-01-24 12:18:42', 1, 1, '::1'),
(721, 'User Group [Administrator] Edit Successfully', '2024-01-24 12:21:38', 1, 4, '::1'),
(722, 'User Group [Administrator] Edit Successfully', '2024-01-24 12:39:43', 1, 4, '::1'),
(723, 'Slideshow [testing video]Data has added successfully.', '2024-01-24 12:50:22', 1, 3, '::1'),
(724, 'Changes on Config \'Synhawk3.0\' has been saved successfully.', '2024-01-24 15:21:29', 1, 4, '::1'),
(725, 'Changes on Config \'Synhawk3.0\' has been saved successfully.', '2024-01-24 15:22:25', 1, 4, '::1'),
(726, 'Changes on Config \'Synhawk3.0\' has been saved successfully.', '2024-01-24 15:22:58', 1, 4, '::1'),
(727, 'Successfully Preference Properties Settings', '2024-01-24 15:54:10', 1, 4, '::1'),
(728, 'Login: ClubHimalaya   logged in.', '2024-01-25 15:54:57', 1, 1, '::1'),
(729, 'Login: ClubHimalaya   logged in.', '2024-01-25 15:55:21', 1, 1, '::1'),
(730, 'Login: ClubHimalaya   logged in.', '2024-01-25 15:56:37', 1, 1, '::1'),
(731, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-25 15:56:52', 1, 4, '::1'),
(732, 'Login: ClubHimalaya   logged in.', '2024-01-25 16:18:24', 1, 1, '::1'),
(733, 'Login: Super admin   logged in.', '2024-01-25 16:21:15', 1, 1, '::1'),
(734, 'User Group [Administrator] Edit Successfully', '2024-01-25 16:21:39', 1, 4, '::1'),
(735, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-25 16:23:44', 1, 4, '::1'),
(736, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-25 16:23:58', 1, 4, '::1'),
(737, 'Successfully Preference Properties Settings', '2024-01-25 16:26:19', 1, 4, '::1'),
(738, 'User Group [Administrator] Edit Successfully', '2024-01-25 16:27:28', 1, 4, '::1'),
(739, 'Features [facilities]Data has added successfully.', '2024-01-25 16:51:25', 1, 3, '::1'),
(740, 'Gallery Image [] Edit Successfully', '2024-01-25 16:52:36', 1, 4, '::1'),
(741, 'Gallery Image [asdasd] Edit Successfully', '2024-01-25 16:52:39', 1, 4, '::1'),
(742, 'Login: ClubHimalaya   logged in.', '2024-01-26 15:22:51', 1, 1, '::1'),
(743, 'Testimonial [Andrew Parker] Edit Successfully', '2024-01-26 15:27:16', 1, 4, '::1'),
(744, 'Testimonial [Andrew Parker] Edit Successfully', '2024-01-26 15:27:20', 1, 4, '::1'),
(745, 'Testimonial [Andrew Parker] Edit Successfully', '2024-01-26 15:36:21', 1, 4, '::1'),
(746, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-26 16:26:36', 1, 4, '::1'),
(747, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-26 16:26:45', 1, 4, '::1'),
(748, 'Login: ClubHimalaya   logged in.', '2024-01-28 10:29:13', 1, 1, '::1'),
(749, 'User Group [Administrator] Edit Successfully', '2024-01-28 10:45:29', 1, 4, '::1'),
(750, 'Login: ClubHimalaya   logged in.', '2024-01-28 11:03:59', 1, 1, '::1'),
(751, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 11:20:35', 1, 4, '::1'),
(752, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 11:20:43', 1, 4, '::1'),
(753, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 11:23:35', 1, 4, '::1'),
(754, 'User Group [General Admin] Edit Successfully', '2024-01-28 11:32:02', 1, 4, '::1'),
(755, 'Login: Super admin   logged in.', '2024-01-28 11:49:53', 1, 1, '::1'),
(756, 'User Group [Hotel Users] Edit Successfully', '2024-01-28 11:50:16', 1, 4, '::1'),
(757, 'User Group [General Users] Edit Successfully', '2024-01-28 11:50:38', 1, 4, '::1'),
(758, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-28 11:50:52', 1, 4, '::1'),
(759, 'User [asdasd asdasd asdasd] Edit Successfully', '2024-01-28 11:51:10', 1, 4, '::1'),
(760, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:08:34', 1, 3, '::1'),
(761, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:12:59', 1, 3, '::1'),
(762, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:15:31', 1, 3, '::1'),
(763, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:17:00', 1, 3, '::1'),
(764, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:20:20', 1, 3, '::1'),
(765, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:21:19', 1, 3, '::1'),
(766, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:22:38', 1, 3, '::1'),
(767, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:22:52', 1, 3, '::1'),
(768, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:23:15', 1, 3, '::1'),
(769, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:23:24', 1, 3, '::1'),
(770, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:24:52', 1, 3, '::1'),
(771, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:26:06', 1, 3, '::1'),
(772, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:30:36', 1, 3, '::1'),
(773, 'Slideshow [dsaasd]Data has added successfully.', '2024-01-28 12:35:36', 1, 3, '::1'),
(774, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 12:36:35', 1, 3, '::1'),
(775, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 12:42:51', 1, 3, '::1'),
(776, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 12:43:05', 1, 3, '::1'),
(777, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 12:43:36', 1, 3, '::1'),
(778, 'Slideshows  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:32', 1, 6, '::1'),
(779, 'Slideshow  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:32', 1, 6, '::1'),
(780, 'Slideshows  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:35', 1, 6, '::1'),
(781, 'Slideshow  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:35', 1, 6, '::1'),
(782, 'Slideshows  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:37', 1, 6, '::1'),
(783, 'Slideshow  [asdasdasdasdasd]Data has deleted successfully.', '2024-01-28 12:55:37', 1, 6, '::1'),
(784, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:03:33', 1, 3, '::1'),
(785, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:05:53', 1, 3, '::1'),
(786, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:06:56', 1, 3, '::1'),
(787, 'Slideshow [asdasdas]Data has added successfully.', '2024-01-28 13:09:30', 1, 3, '::1'),
(788, 'Slideshow [asdasdas]Data has added successfully.', '2024-01-28 13:09:43', 1, 3, '::1'),
(789, 'Slideshow [asdasdas]Data has added successfully.', '2024-01-28 13:13:33', 1, 3, '::1'),
(790, 'Slideshows  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:48', 1, 6, '::1'),
(791, 'Slideshow  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:48', 1, 6, '::1'),
(792, 'Slideshows  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:51', 1, 6, '::1'),
(793, 'Slideshow  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:51', 1, 6, '::1'),
(794, 'Slideshows  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:54', 1, 6, '::1'),
(795, 'Slideshow  [asdasdas]Data has deleted successfully.', '2024-01-28 13:14:54', 1, 6, '::1'),
(796, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:16:38', 1, 3, '::1'),
(797, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:16:46', 1, 3, '::1'),
(798, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:20:47', 1, 3, '::1'),
(799, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:21:28', 1, 3, '::1'),
(800, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(801, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(802, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(803, 'Slideshow  [testing]Data has deleted successfully.', '2024-01-28 13:21:46', 1, 6, '::1'),
(804, 'Slideshow [asdasdasdasdasd]Data has added successfully.', '2024-01-28 13:22:05', 1, 3, '::1'),
(805, 'Slideshow [asdasdasdasdasdsASDasd] Edit Successfully', '2024-01-28 13:24:30', 1, 4, '::1'),
(806, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:25:05', 1, 3, '::1'),
(807, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:31:57', 1, 3, '::1'),
(808, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:40:15', 1, 3, '::1'),
(809, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:41:03', 1, 3, '::1'),
(810, 'Slideshow [asdasdasd]Data has added successfully.', '2024-01-28 13:41:40', 1, 3, '::1'),
(811, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:42:15', 1, 3, '::1'),
(812, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:42:44', 1, 3, '::1'),
(813, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:47:49', 1, 3, '::1'),
(814, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:48:10', 1, 3, '::1'),
(815, 'Slideshow [asdasd]Data has added successfully.', '2024-01-28 13:51:14', 1, 3, '::1'),
(816, 'Successfully Tour Package Properties Settings', '2024-01-28 14:10:12', 1, 4, '::1'),
(817, 'Successfully Tour Package Properties Settings', '2024-01-28 14:10:30', 1, 4, '::1'),
(818, 'Login: Super admin   logged in.', '2024-01-28 14:51:04', 1, 1, '::1'),
(819, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(820, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(821, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(822, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(823, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(824, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(825, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(826, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(827, 'Slideshow  [asdasdasd]Data has deleted successfully.', '2024-01-28 14:51:38', 1, 6, '::1'),
(828, 'Slideshow [qweqweqwe]Data has added successfully.', '2024-01-28 14:54:26', 1, 3, '::1'),
(829, 'Slideshow [qweqweqwe]Data has added successfully.', '2024-01-28 14:54:46', 1, 3, '::1'),
(830, 'Slideshow [sadfasdsdafasd]Data has added successfully.', '2024-01-28 15:02:25', 1, 3, '::1'),
(831, 'Slideshow [sadfasdsdafasd]Data has added successfully.', '2024-01-28 15:02:49', 1, 3, '::1'),
(832, 'Slideshow [asd]Data has added successfully.', '2024-01-28 15:09:35', 1, 3, '::1'),
(833, 'Slideshow  [sadfasdsdafasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(834, 'Slideshow  [sadfasdsdafasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(835, 'Slideshow  [qweqweqwe]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(836, 'Slideshow  [qweqweqwe]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(837, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(838, 'Slideshow  [dsaasd]Data has deleted successfully.', '2024-01-28 15:14:18', 1, 6, '::1'),
(839, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:14:30', 1, 3, '::1'),
(840, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:15:37', 1, 3, '::1'),
(841, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:17:55', 1, 3, '::1'),
(842, 'Slideshow [saddsaasd]Data has added successfully.', '2024-01-28 15:20:35', 1, 3, '::1'),
(843, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(844, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(845, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(846, 'Slideshow  [saddsaasd]Data has deleted successfully.', '2024-01-28 15:20:59', 1, 6, '::1'),
(847, 'Slideshow [dsadsadad]Data has added successfully.', '2024-01-28 15:21:34', 1, 3, '::1'),
(848, 'Slideshow [asdasdasdsad]Data has added successfully.', '2024-01-28 15:22:18', 1, 3, '::1'),
(849, 'Slideshow [asdasdasdsad]Data has added successfully.', '2024-01-28 15:23:07', 1, 3, '::1'),
(850, 'Slideshow [asdasdasdsada]Data has added successfully.', '2024-01-28 15:24:42', 1, 3, '::1'),
(851, 'Slideshow [asdasdasdsad] Edit Successfully', '2024-01-28 15:30:58', 1, 4, '::1'),
(852, 'Slideshow  [asdasdasdsada]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(853, 'Slideshow  [asdasdasdsad]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(854, 'Slideshow  [asdasdasdsad]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(855, 'Slideshow  [dsadsadad]Data has deleted successfully.', '2024-01-28 15:31:50', 1, 6, '::1'),
(856, 'Slideshow [asd]Data has added successfully.', '2024-01-28 15:32:02', 1, 3, '::1'),
(857, 'Slideshow [asdd] Edit Successfully', '2024-01-28 15:32:15', 1, 4, '::1'),
(858, 'Slideshow [asdd] Edit Successfully', '2024-01-28 15:35:12', 1, 4, '::1'),
(859, 'Slideshow [asddd] Edit Successfully', '2024-01-28 15:35:25', 1, 4, '::1'),
(860, 'Slideshow [asddd] Edit Successfully', '2024-01-28 15:35:32', 1, 4, '::1'),
(861, 'Slideshow [asddd] Edit Successfully', '2024-01-28 15:35:35', 1, 4, '::1'),
(862, 'Login: ClubHimalaya   logged in.', '2024-01-28 15:38:58', 1, 1, '::1'),
(863, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:39:06', 1, 4, '::1'),
(864, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:39:23', 1, 4, '::1'),
(865, 'Login: Super admin   logged in.', '2024-01-28 15:40:29', 1, 1, '::1'),
(866, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:44:54', 1, 1, '::1'),
(867, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:45:31', 1, 1, '::1'),
(868, 'Login: Super admin   logged in.', '2024-01-28 15:45:38', 1, 1, '::1'),
(869, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:45:49', 1, 4, '::1'),
(870, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:46:07', 1, 1, '::1'),
(871, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:46:55', 1, 4, '::1'),
(872, 'Login: Super admin   logged in.', '2024-01-28 15:48:13', 1, 1, '::1'),
(873, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:48:32', 1, 1, '::1'),
(874, 'Login: Super admin   logged in.', '2024-01-28 15:48:35', 1, 1, '::1'),
(875, 'User [ClubHimalayaa  ] Edit Successfully', '2024-01-28 15:50:22', 1, 4, '::1'),
(876, 'Login: ClubHimalayaa   logged in.', '2024-01-28 15:50:28', 1, 1, '::1'),
(877, 'User [ClubHimalaya  ] Edit Successfully', '2024-01-28 15:50:42', 1, 4, '::1'),
(878, 'Login: ClubHimalaya   logged in.', '2024-01-28 15:50:49', 1, 1, '::1'),
(879, 'Login: Super admin   logged in.', '2024-01-28 15:51:57', 1, 1, '::1'),
(880, 'User [Super admina  ] Edit Successfully', '2024-01-28 15:52:08', 1, 4, '::1'),
(881, 'User [Super admina  ] Edit Successfully', '2024-01-28 15:55:50', 1, 4, '::1'),
(882, 'Login: Super admina   logged in.', '2024-01-28 15:55:58', 1, 1, '::1'),
(883, 'User [Super admin  ] Edit Successfully', '2024-01-28 15:56:05', 1, 4, '::1'),
(884, 'Login: Super admin   logged in.', '2024-01-28 15:56:10', 1, 1, '::1'),
(885, 'User [Super admin  ] Edit Successfully', '2024-01-28 15:58:44', 1, 4, '::1'),
(886, 'Login: Super admin   logged in.', '2024-01-28 15:58:54', 1, 1, '::1'),
(887, 'User [Super admina  ] Edit Successfully', '2024-01-28 15:59:10', 1, 4, '::1'),
(888, 'Login: Super admina   logged in.', '2024-01-28 15:59:16', 1, 1, '::1'),
(889, 'User [Super admin  ] Edit Successfully', '2024-01-28 15:59:25', 1, 4, '::1'),
(890, 'Login: ClubHimalaya   logged in.', '2024-01-28 16:00:08', 1, 1, '::1'),
(891, 'Login: Super admin   logged in.', '2024-01-28 16:01:36', 1, 1, '::1'),
(892, 'Successfully Preference Properties Settings', '2024-01-28 16:26:42', 1, 4, '::1'),
(893, 'Successfully Preference Properties Settings', '2024-01-28 16:29:24', 1, 4, '::1'),
(894, 'Successfully Preference Properties Settings', '2024-01-28 16:32:13', 1, 4, '::1'),
(895, 'Successfully Preference Properties Settings', '2024-01-28 16:32:22', 1, 4, '::1'),
(896, 'Login: Super admin   logged in.', '2024-01-28 16:52:41', 1, 1, '::1'),
(897, 'Login: ClubHimalaya   logged in.', '2024-01-28 16:53:39', 1, 1, '::1'),
(898, 'Login: Super admin   logged in.', '2024-01-28 16:54:10', 1, 1, '::1'),
(899, 'User Group [Administrator] Edit Successfully', '2024-01-28 17:02:39', 1, 4, '::1'),
(900, 'User Group [Administrator] Edit Successfully', '2024-01-28 17:02:46', 1, 4, '::1'),
(901, 'User Group [Hotel Users] Edit Successfully', '2024-01-28 17:03:12', 1, 4, '::1'),
(902, 'User Group [General Users] Edit Successfully', '2024-01-28 17:03:22', 1, 4, '::1'),
(903, 'Successfully Preference Properties Settings', '2024-01-28 17:05:34', 1, 4, '::1'),
(904, 'Slideshow [qweqwe]Data has added successfully.', '2024-01-28 17:06:12', 1, 3, '::1'),
(905, 'Slideshow [qweqweqw]Data has added successfully.', '2024-01-28 17:06:28', 1, 3, '::1'),
(906, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 17:16:18', 1, 4, '::1'),
(907, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-28 17:17:16', 1, 4, '::1'),
(908, 'Login: Super admin   logged in.', '2024-01-28 23:06:25', 1, 1, '::1'),
(909, 'Login: Super admin   logged in.', '2024-01-29 10:32:12', 1, 1, '::1'),
(910, 'Login: ClubHimalaya   logged in.', '2024-01-29 10:43:48', 1, 1, '::1'),
(911, 'Changes on Sub Package \'Junior Suite\' has been saved successfully.', '2024-01-29 10:44:19', 1, 4, '::1'),
(912, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-01-29 10:44:34', 1, 4, '::1'),
(913, 'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.', '2024-01-29 10:44:46', 1, 4, '::1'),
(914, 'Changes on Sub Package \'Standard Room\' has been saved successfully.', '2024-01-29 10:45:03', 1, 4, '::1'),
(915, 'Login: Super admin   logged in.', '2024-01-29 10:54:13', 1, 1, '::1'),
(916, 'Successfully News Properties Settings', '2024-01-29 10:57:01', 1, 4, '::1'),
(917, 'Successfully News Properties Settings', '2024-01-29 10:59:28', 1, 4, '::1'),
(918, 'Successfully News Properties Settings', '2024-01-29 11:02:32', 1, 4, '::1'),
(919, 'Successfully News Properties Settings', '2024-01-29 11:03:39', 1, 4, '::1'),
(920, 'Successfully Offers Properties Settings', '2024-01-29 11:07:43', 1, 4, '::1'),
(921, 'Successfully  Package Properties Settings', '2024-01-29 11:22:42', 1, 4, '::1'),
(922, 'Successfully Social Link Properties Settings', '2024-01-29 11:25:20', 1, 4, '::1'),
(923, 'Successfully Articles Properties Settings', '2024-01-29 11:28:22', 1, 4, '::1'),
(924, 'Successfully Slideshow Properties Settings', '2024-01-29 11:29:23', 1, 4, '::1'),
(925, 'Successfully  Package Properties Settings', '2024-01-29 11:30:28', 1, 4, '::1'),
(926, 'Successfully Gallery Properties Settings', '2024-01-29 11:33:20', 1, 4, '::1'),
(927, 'Gallery [adasdas]Data has added successfully.', '2024-01-29 11:33:38', 1, 3, '::1'),
(928, 'Successfully Testimonial Properties Settings', '2024-01-29 11:37:44', 1, 4, '::1'),
(929, 'Successfully Social Link Properties Settings', '2024-01-29 11:47:58', 1, 4, '::1'),
(930, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 11:50:01', 1, 4, '::1'),
(931, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 11:51:11', 1, 4, '::1'),
(932, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 12:15:31', 1, 4, '::1'),
(933, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-01-29 12:15:47', 1, 4, '::1'),
(934, 'Login: ClubHimalaya   logged in.', '2024-05-10 16:32:10', 1, 1, '::1'),
(935, 'Login: Super admin   logged in.', '2024-05-10 16:40:01', 1, 1, '::1'),
(936, 'User Group [Administrator] Edit Successfully', '2024-05-10 16:40:11', 1, 4, '::1'),
(937, 'Download [asdasd]Data has added successfully.', '2024-05-10 16:44:57', 1, 3, '::1'),
(938, 'Login: admin logged in.', '2024-06-06 15:48:16', 1, 1, '::1'),
(939, 'Menu  [FAQ\'s]Data has deleted successfully.', '2024-06-06 15:48:26', 1, 6, '::1'),
(940, 'Menu  [Enhanced Safety]Data has deleted successfully.', '2024-06-06 15:48:30', 1, 6, '::1'),
(941, 'Menu  [Event Halls]Data has deleted successfully.', '2024-06-06 15:48:35', 1, 6, '::1'),
(942, 'Menu  [Contact]Data has deleted successfully.', '2024-06-06 15:48:54', 1, 6, '::1'),
(943, 'Menu [About] CreatedData has added successfully.', '2024-06-06 15:49:16', 1, 3, '::1'),
(944, 'Menu [Rooms & Suites] CreatedData has added successfully.', '2024-06-06 15:50:06', 1, 3, '::1'),
(945, 'Menu [Dining] CreatedData has added successfully.', '2024-06-06 15:50:57', 1, 3, '::1'),
(946, 'Menu [Hall] CreatedData has added successfully.', '2024-06-06 15:51:23', 1, 3, '::1'),
(947, 'Menu [Facilities] CreatedData has added successfully.', '2024-06-06 15:51:39', 1, 3, '::1'),
(948, 'Menu [Gallery] CreatedData has added successfully.', '2024-06-06 15:52:24', 1, 3, '::1'),
(949, 'Menu [Contact] CreatedData has added successfully.', '2024-06-06 15:52:43', 1, 3, '::1'),
(950, 'Menu [Double Bed Deluxe] CreatedData has added successfully.', '2024-06-06 15:53:55', 1, 3, '::1'),
(951, 'Menu [Twin Room Deluxe] CreatedData has added successfully.', '2024-06-06 15:54:54', 1, 3, '::1'),
(952, 'Menu [Triple Room Deluxe] CreatedData has added successfully.', '2024-06-06 15:55:32', 1, 3, '::1'),
(953, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-06-06 16:12:27', 1, 4, '::1'),
(954, 'Changes on Config \'Synhawk 3.0\' has been saved successfully.', '2024-06-06 16:21:18', 1, 4, '::1'),
(955, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-06 16:34:40', 1, 4, '::1'),
(956, 'Changes on Config \'dd\' has been saved successfully.', '2024-06-06 16:36:47', 1, 4, '::1'),
(957, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-06 16:37:05', 1, 4, '::1'),
(958, 'SocialNetworking [Facebook]Data has added successfully.', '2024-06-06 16:40:12', 1, 3, '::1'),
(959, 'SocialNetworking [Instagram]Data has added successfully.', '2024-06-06 16:40:25', 1, 3, '::1'),
(960, 'SocialNetworking [Facebook] Edit Successfully', '2024-06-06 17:13:47', 1, 4, '::1'),
(961, 'SocialNetworking [Instagram] Edit Successfully', '2024-06-06 17:14:25', 1, 4, '::1'),
(962, 'SocialNetworking [Tiktok]Data has added successfully.', '2024-06-06 17:16:47', 1, 3, '::1'),
(963, 'Menu [Home] CreatedData has added successfully.', '2024-06-06 17:42:56', 1, 3, '::1'),
(964, 'Menu [Rooms] CreatedData has added successfully.', '2024-06-06 17:43:17', 1, 3, '::1'),
(965, 'Menu [Restaurant] CreatedData has added successfully.', '2024-06-06 17:43:37', 1, 3, '::1'),
(966, 'Menu [Gallery] CreatedData has added successfully.', '2024-06-06 17:43:54', 1, 3, '::1'),
(967, 'Menu [Contact] CreatedData has added successfully.', '2024-06-06 17:44:18', 1, 3, '::1'),
(968, 'Menu [Dining] CreatedData has added successfully.', '2024-06-06 17:45:19', 1, 3, '::1'),
(969, 'Menu [Terms & Policy] CreatedData has added successfully.', '2024-06-06 17:46:03', 1, 3, '::1'),
(970, 'Menu [Career] CreatedData has added successfully.', '2024-06-06 17:46:26', 1, 3, '::1'),
(971, 'Menu [Contact] CreatedData has added successfully.', '2024-06-06 17:46:48', 1, 3, '::1'),
(972, 'Menu [Activies] CreatedData has added successfully.', '2024-06-06 17:47:16', 1, 3, '::1'),
(973, 'Menu [Booking.com] CreatedData has added successfully.', '2024-06-06 17:48:16', 1, 3, '::1'),
(974, 'Menu [Tripadvisor] CreatedData has added successfully.', '2024-06-06 17:48:30', 1, 3, '::1'),
(975, 'Menu [Agoda] CreatedData has added successfully.', '2024-06-06 17:50:22', 1, 3, '::1'),
(976, 'Menu [Makemytrip] CreatedData has added successfully.', '2024-06-06 17:50:54', 1, 3, '::1'),
(977, 'Menu [Terms of Use] CreatedData has added successfully.', '2024-06-06 17:52:13', 1, 3, '::1'),
(978, 'Menu [Cookies] CreatedData has added successfully.', '2024-06-06 17:52:23', 1, 3, '::1'),
(979, 'Menu [Privacy Policy] CreatedData has added successfully.', '2024-06-06 17:52:41', 1, 3, '::1'),
(980, 'Login: admin logged in.', '2024-06-07 10:27:23', 1, 1, '::1'),
(981, 'Menu [Home] CreatedData has added successfully.', '2024-06-07 10:38:53', 1, 3, '::1'),
(982, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-07 10:42:34', 1, 4, '::1'),
(983, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-07 10:42:43', 1, 4, '::1'),
(984, 'Login: admin logged in.', '2024-06-07 11:00:35', 1, 1, '::1'),
(985, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-07 11:29:48', 1, 4, '::1'),
(986, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-07 11:48:20', 1, 4, '::1'),
(987, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-07 12:14:10', 1, 4, '::1'),
(988, 'Menu [Booking.com] Edit Successfully', '2024-06-07 12:29:22', 1, 4, '::1'),
(989, 'Menu [Tripadvisor] Edit Successfully', '2024-06-07 12:35:33', 1, 4, '::1'),
(990, 'Menu [Agoda] Edit Successfully', '2024-06-07 12:36:04', 1, 4, '::1'),
(991, 'Menu [Makemytrip] Edit Successfully', '2024-06-07 12:36:27', 1, 4, '::1'),
(992, 'Login: admin logged in.', '2024-06-07 14:30:35', 1, 1, '::1'),
(993, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-07 14:46:19', 1, 4, '::1'),
(994, 'Slideshows  [asdasd]Data has deleted successfully.', '2024-06-07 15:10:52', 1, 6, '::1'),
(995, 'Slideshow  [asdasd]Data has deleted successfully.', '2024-06-07 15:10:52', 1, 6, '::1'),
(996, 'Slideshows  [asdasdasdasdasdsASDasd]Data has deleted successfully.', '2024-06-07 15:10:56', 1, 6, '::1'),
(997, 'Slideshow  [asdasdasdasdasdsASDasd]Data has deleted successfully.', '2024-06-07 15:10:56', 1, 6, '::1'),
(998, 'Slideshows  [asd]Data has deleted successfully.', '2024-06-07 15:11:02', 1, 6, '::1'),
(999, 'Slideshow  [asd]Data has deleted successfully.', '2024-06-07 15:11:02', 1, 6, '::1'),
(1000, 'Slideshows  [qweqwe]Data has deleted successfully.', '2024-06-07 15:11:32', 1, 6, '::1'),
(1001, 'Slideshow  [qweqwe]Data has deleted successfully.', '2024-06-07 15:11:32', 1, 6, '::1'),
(1002, 'Slideshow [test]Data has added successfully.', '2024-06-07 15:14:26', 1, 3, '::1'),
(1003, 'Slideshow [test] Edit Successfully', '2024-06-07 15:15:44', 1, 4, '::1'),
(1004, 'Slideshow  [qweqweqw]Data has deleted successfully.', '2024-06-07 15:20:10', 1, 6, '::1'),
(1005, 'Slideshow  [asddd]Data has deleted successfully.', '2024-06-07 15:20:10', 1, 6, '::1'),
(1006, 'Slideshow [test] Edit Successfully', '2024-06-07 15:24:42', 1, 4, '::1'),
(1007, 'Menu [Contact] Edit Successfully', '2024-06-07 15:25:02', 1, 4, '::1'),
(1008, 'Slideshows  [test]Data has deleted successfully.', '2024-06-07 15:30:56', 1, 6, '::1'),
(1009, 'Slideshow  [test]Data has deleted successfully.', '2024-06-07 15:30:56', 1, 6, '::1'),
(1010, 'Slideshows  []Data has deleted successfully.', '2024-06-07 15:30:56', 1, 6, '::1'),
(1011, 'Slideshow  []Data has deleted successfully.', '2024-06-07 15:30:56', 1, 6, '::1');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1012, 'Slideshow [Iconic Boutique Hotel]Data has added successfully.', '2024-06-07 15:40:56', 1, 3, '::1'),
(1013, 'Slideshow [Iconic Boutique Hotel]Data has added successfully.', '2024-06-07 15:43:27', 1, 3, '::1'),
(1014, 'Slideshow [Iconic Boutique Hotel]Data has added successfully.', '2024-06-07 15:44:31', 1, 3, '::1'),
(1015, 'Slideshow [1] Edit Successfully', '2024-06-07 15:46:24', 1, 4, '::1'),
(1016, 'Slideshow [2] Edit Successfully', '2024-06-07 15:46:30', 1, 4, '::1'),
(1017, 'Slideshow [3] Edit Successfully', '2024-06-07 15:46:35', 1, 4, '::1'),
(1018, 'Slideshow [4]Data has added successfully.', '2024-06-07 15:47:13', 1, 3, '::1'),
(1019, 'Slideshow [5]Data has added successfully.', '2024-06-07 15:49:58', 1, 3, '::1'),
(1020, 'Slideshow [7]Data has added successfully.', '2024-06-07 15:50:26', 1, 3, '::1'),
(1021, 'Slideshow [7] Edit Successfully', '2024-06-07 15:52:48', 1, 4, '::1'),
(1022, 'Slideshow [5] Edit Successfully', '2024-06-07 15:52:55', 1, 4, '::1'),
(1023, 'Slideshow [4] Edit Successfully', '2024-06-07 15:53:02', 1, 4, '::1'),
(1024, 'Slideshow [1] Edit Successfully', '2024-06-07 15:53:08', 1, 4, '::1'),
(1025, 'Slideshow [2] Edit Successfully', '2024-06-07 15:53:16', 1, 4, '::1'),
(1026, 'Slideshow [3] Edit Successfully', '2024-06-07 15:53:24', 1, 4, '::1'),
(1027, 'Articles  [welcome To Club Himalaya]Data has deleted successfully.', '2024-06-07 16:02:55', 1, 6, '::1'),
(1028, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-07 16:07:28', 1, 4, '::1'),
(1029, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-07 16:15:51', 1, 4, '::1'),
(1030, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-07 16:19:26', 1, 4, '::1'),
(1031, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-07 16:20:29', 1, 4, '::1'),
(1032, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-07 16:28:57', 1, 4, '::1'),
(1033, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-07 16:32:22', 1, 4, '::1'),
(1034, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-07 16:43:15', 1, 4, '::1'),
(1035, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-07 16:46:41', 1, 4, '::1'),
(1036, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-07 16:50:01', 1, 4, '::1'),
(1037, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:24', 1, 6, '::1'),
(1038, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:28', 1, 6, '::1'),
(1039, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:28', 1, 6, '::1'),
(1040, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:31', 1, 6, '::1'),
(1041, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:31', 1, 6, '::1'),
(1042, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:31', 1, 6, '::1'),
(1043, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:39', 1, 6, '::1'),
(1044, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:43', 1, 6, '::1'),
(1045, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:43', 1, 6, '::1'),
(1046, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:45', 1, 6, '::1'),
(1047, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:45', 1, 6, '::1'),
(1048, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:45', 1, 6, '::1'),
(1049, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:49', 1, 6, '::1'),
(1050, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:49', 1, 6, '::1'),
(1051, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:49', 1, 6, '::1'),
(1052, 'Testimonial  []Data has deleted successfully.', '2024-06-07 17:03:50', 1, 6, '::1'),
(1053, 'Testimonial [Galen Cartwright]Data has added successfully.', '2024-06-07 17:08:16', 1, 3, '::1'),
(1054, 'Testimonial [Demetria Granger]Data has added successfully.', '2024-06-07 17:09:06', 1, 3, '::1'),
(1055, 'Testimonial [Demetria Granger] Edit Successfully', '2024-06-07 17:16:48', 1, 4, '::1'),
(1056, 'Testimonial [Demetria Granger] Edit Successfully', '2024-06-07 17:27:52', 1, 4, '::1'),
(1057, 'Testimonial [Galen Cartwright] Edit Successfully', '2024-06-07 17:28:52', 1, 4, '::1'),
(1058, 'Testimonial [Galen Cartwright] Edit Successfully', '2024-06-07 17:30:35', 1, 4, '::1'),
(1059, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-07 17:44:14', 1, 4, '::1'),
(1060, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-07 17:59:31', 1, 4, '::1'),
(1061, 'Login: admin logged in.', '2024-06-09 11:22:03', 1, 1, '::1'),
(1062, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-09 11:58:23', 1, 4, '::1'),
(1063, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-09 12:09:01', 1, 4, '::1'),
(1064, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-09 12:11:45', 1, 4, '::1'),
(1065, 'Menu [Gallery] Edit Successfully', '2024-06-09 12:17:30', 1, 4, '::1'),
(1066, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-09 12:33:43', 1, 4, '::1'),
(1067, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-09 12:56:18', 1, 4, '::1'),
(1068, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-09 13:00:14', 1, 4, '::1'),
(1069, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-09 13:14:54', 1, 4, '::1'),
(1070, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-09 13:16:31', 1, 4, '::1'),
(1071, 'Article \'Patan Durbar Square\' has added successfully.', '2024-06-09 14:35:47', 1, 3, '::1'),
(1072, 'Changes on Article \'Patan Durbar Square\' has been saved successfully.', '2024-06-09 14:36:04', 1, 4, '::1'),
(1073, 'Article \'Patan Museum\' has added successfully.', '2024-06-09 14:36:26', 1, 3, '::1'),
(1074, 'Article \'Airport\' has added successfully.', '2024-06-09 14:36:46', 1, 3, '::1'),
(1075, 'Changes on Article \'Airports\' has been saved successfully.', '2024-06-09 14:44:23', 1, 4, '::1'),
(1076, 'Changes on Article \'Airports\' has been saved successfully.', '2024-06-09 14:53:02', 1, 4, '::1'),
(1077, 'Changes on Article \'Airports\' has been saved successfully.', '2024-06-09 14:54:31', 1, 4, '::1'),
(1078, 'Changes on Article \'Patan Museum\' has been saved successfully.', '2024-06-09 14:54:52', 1, 4, '::1'),
(1079, 'Changes on Article \'Patan Durbar Square\' has been saved successfully.', '2024-06-09 14:55:07', 1, 4, '::1'),
(1080, 'Gallery Image  [adasdas]Data has deleted successfully.', '2024-06-09 15:04:02', 1, 6, '::1'),
(1081, 'Gallery Image  []Data has deleted successfully.', '2024-06-09 15:04:04', 1, 6, '::1'),
(1082, 'Gallery Image  [Recreation]Data has deleted successfully.', '2024-06-09 15:04:04', 1, 6, '::1'),
(1083, 'Gallery Image  []Data has deleted successfully.', '2024-06-09 15:04:07', 1, 6, '::1'),
(1084, 'Gallery Image  []Data has deleted successfully.', '2024-06-09 15:04:07', 1, 6, '::1'),
(1085, 'Gallery Image  [hall]Data has deleted successfully.', '2024-06-09 15:04:07', 1, 6, '::1'),
(1086, 'Gallery Image  []Data has deleted successfully.', '2024-06-09 15:04:10', 1, 6, '::1'),
(1087, 'Gallery Image  []Data has deleted successfully.', '2024-06-09 15:04:10', 1, 6, '::1'),
(1088, 'Gallery Image  []Data has deleted successfully.', '2024-06-09 15:04:10', 1, 6, '::1'),
(1089, 'Gallery Image  [restaurant]Data has deleted successfully.', '2024-06-09 15:04:10', 1, 6, '::1'),
(1090, 'Gallery Image  []Data has deleted successfully.', '2024-06-09 15:04:13', 1, 6, '::1'),
(1091, 'Gallery Image  []Data has deleted successfully.', '2024-06-09 15:04:13', 1, 6, '::1'),
(1092, 'Gallery Image  []Data has deleted successfully.', '2024-06-09 15:04:13', 1, 6, '::1'),
(1093, 'Gallery Image  []Data has deleted successfully.', '2024-06-09 15:04:13', 1, 6, '::1'),
(1094, 'Gallery Image  [rooms]Data has deleted successfully.', '2024-06-09 15:04:13', 1, 6, '::1'),
(1095, 'Gallery [gallery]Data has added successfully.', '2024-06-09 15:11:45', 1, 3, '::1'),
(1096, 'Sub Gallery Image [1]Data has added successfully.', '2024-06-09 15:12:12', 1, 3, '::1'),
(1097, 'Sub Gallery Image [2]Data has added successfully.', '2024-06-09 15:12:12', 1, 3, '::1'),
(1098, 'Sub Gallery Image [3]Data has added successfully.', '2024-06-09 15:12:12', 1, 3, '::1'),
(1099, 'Sub Gallery Image [4]Data has added successfully.', '2024-06-09 15:12:12', 1, 3, '::1'),
(1100, 'Login: admin logged in.', '2024-06-09 15:30:45', 1, 1, '::1'),
(1101, 'Login: superadmin logged in.', '2024-06-09 15:31:18', 1, 1, '::1'),
(1102, 'User Group [General Admin] Edit Successfully', '2024-06-09 15:32:21', 1, 4, '::1'),
(1103, 'Login: admin logged in.', '2024-06-09 15:32:47', 1, 1, '::1'),
(1104, 'Video [YouTube]Data has added successfully.', '2024-06-09 15:33:20', 1, 3, '::1'),
(1105, 'Video [YouTube]Data has added successfully.', '2024-06-09 15:33:47', 1, 3, '::1'),
(1106, 'Video [YouTube]Data has added successfully.', '2024-06-09 15:34:14', 1, 3, '::1'),
(1107, 'Video []Data has added successfully.', '2024-06-09 15:35:42', 1, 3, '::1'),
(1108, 'Video []Data has added successfully.', '2024-06-09 15:37:19', 1, 3, '::1'),
(1109, 'Video []Data has added successfully.', '2024-06-09 15:37:32', 1, 3, '::1'),
(1110, 'Video [hw_destroyer26a_h_en_120 - YouTube]Data has added successfully.', '2024-06-09 15:42:14', 1, 3, '::1'),
(1111, 'Video  [hw_destroyer26a_h_en_120 - YouTube]Data has deleted successfully.', '2024-06-09 15:43:40', 1, 6, '::1'),
(1112, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:42', 1, 6, '::1'),
(1113, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:42', 1, 6, '::1'),
(1114, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:44', 1, 6, '::1'),
(1115, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:44', 1, 6, '::1'),
(1116, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:44', 1, 6, '::1'),
(1117, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:46', 1, 6, '::1'),
(1118, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:46', 1, 6, '::1'),
(1119, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:46', 1, 6, '::1'),
(1120, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:46', 1, 6, '::1'),
(1121, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:48', 1, 6, '::1'),
(1122, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:48', 1, 6, '::1'),
(1123, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:48', 1, 6, '::1'),
(1124, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:48', 1, 6, '::1'),
(1125, 'Video  [YouTube]Data has deleted successfully.', '2024-06-09 15:43:48', 1, 6, '::1'),
(1126, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:50', 1, 6, '::1'),
(1127, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:50', 1, 6, '::1'),
(1128, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:51', 1, 6, '::1'),
(1129, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:51', 1, 6, '::1'),
(1130, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:51', 1, 6, '::1'),
(1131, 'Video  [YouTube]Data has deleted successfully.', '2024-06-09 15:43:51', 1, 6, '::1'),
(1132, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:56', 1, 6, '::1'),
(1133, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:56', 1, 6, '::1'),
(1134, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:56', 1, 6, '::1'),
(1135, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:56', 1, 6, '::1'),
(1136, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:56', 1, 6, '::1'),
(1137, 'Video  []Data has deleted successfully.', '2024-06-09 15:43:56', 1, 6, '::1'),
(1138, 'Video  [YouTube]Data has deleted successfully.', '2024-06-09 15:43:56', 1, 6, '::1'),
(1139, 'Video [Hotel Goodwill | Patan | Lalitpur - YouTube]Data has added successfully.', '2024-06-09 15:48:10', 1, 3, '::1'),
(1140, 'Video [Hotel Goodwill history - YouTube]Data has added successfully.', '2024-06-09 15:48:44', 1, 3, '::1'),
(1141, 'Video [Hotel Goodwill Pvt.ltd - YouTube]Data has added successfully.', '2024-06-09 15:49:14', 1, 3, '::1'),
(1142, 'Video [YouTube]Data has added successfully.', '2024-06-09 16:25:55', 1, 3, '::1'),
(1143, 'Video [YouTube]Data has added successfully.', '2024-06-09 16:26:11', 1, 3, '::1'),
(1144, 'Video [YouTube]Data has added successfully.', '2024-06-09 16:27:33', 1, 3, '::1'),
(1145, 'Video [YouTube]Data has added successfully.', '2024-06-09 16:28:43', 1, 3, '::1'),
(1146, 'Video  [YouTube]Data has deleted successfully.', '2024-06-09 16:31:27', 1, 6, '::1'),
(1147, 'Video  []Data has deleted successfully.', '2024-06-09 16:31:29', 1, 6, '::1'),
(1148, 'Video  [YouTube]Data has deleted successfully.', '2024-06-09 16:31:29', 1, 6, '::1'),
(1149, 'Video  []Data has deleted successfully.', '2024-06-09 16:31:30', 1, 6, '::1'),
(1150, 'Video  []Data has deleted successfully.', '2024-06-09 16:31:30', 1, 6, '::1'),
(1151, 'Video  [YouTube]Data has deleted successfully.', '2024-06-09 16:31:31', 1, 6, '::1'),
(1152, 'Video  []Data has deleted successfully.', '2024-06-09 16:31:33', 1, 6, '::1'),
(1153, 'Video  []Data has deleted successfully.', '2024-06-09 16:31:33', 1, 6, '::1'),
(1154, 'Video  []Data has deleted successfully.', '2024-06-09 16:31:33', 1, 6, '::1'),
(1155, 'Video  [YouTube]Data has deleted successfully.', '2024-06-09 16:31:33', 1, 6, '::1'),
(1156, 'Menu [Facilities] Edit Successfully', '2024-06-09 16:39:27', 1, 4, '::1'),
(1157, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-09 16:54:03', 1, 4, '::1'),
(1158, 'Services [Room Service]Data has added successfully.', '2024-06-09 17:18:03', 1, 3, '::1'),
(1159, 'Services [Swimming Pool]Data has added successfully.', '2024-06-09 17:18:23', 1, 3, '::1'),
(1160, 'Services [Multi Cuisine]Data has added successfully.', '2024-06-09 17:18:45', 1, 3, '::1'),
(1161, 'Services [Safe Box]Data has added successfully.', '2024-06-09 17:19:13', 1, 3, '::1'),
(1162, 'Services [WiFi Internet]Data has added successfully.', '2024-06-09 17:19:30', 1, 3, '::1'),
(1163, 'Services [Pet Friendly]Data has added successfully.', '2024-06-09 17:19:50', 1, 3, '::1'),
(1164, 'Services [House Keeping]Data has added successfully.', '2024-06-09 17:20:15', 1, 3, '::1'),
(1165, 'Services [Air Conditioner]Data has added successfully.', '2024-06-09 17:20:36', 1, 3, '::1'),
(1166, 'Services [Front Desk]Data has added successfully.', '2024-06-09 17:20:51', 1, 3, '::1'),
(1167, 'Services [Card Accepted]Data has added successfully.', '2024-06-09 17:21:09', 1, 3, '::1'),
(1168, 'Services [Bar Counter]Data has added successfully.', '2024-06-09 17:21:29', 1, 3, '::1'),
(1169, 'Services [Free On-site Parking]Data has added successfully.', '2024-06-09 17:21:49', 1, 3, '::1'),
(1170, 'Services [Smart Key]Data has added successfully.', '2024-06-09 17:22:06', 1, 3, '::1'),
(1171, 'Services [Elevator]Data has added successfully.', '2024-06-09 17:22:21', 1, 3, '::1'),
(1172, 'Services [Newspaper]Data has added successfully.', '2024-06-09 17:22:39', 1, 3, '::1'),
(1173, 'Services [Fire Extinguisher]Data has added successfully.', '2024-06-09 17:22:57', 1, 3, '::1'),
(1174, 'Services [Meeting & Events]Data has added successfully.', '2024-06-09 17:23:19', 1, 3, '::1'),
(1175, 'Services [Hot & Cold Water]Data has added successfully.', '2024-06-09 17:23:36', 1, 3, '::1'),
(1176, 'Services [Doctor on Call]Data has added successfully.', '2024-06-09 17:23:51', 1, 3, '::1'),
(1177, 'Services [Online Delivery Service]Data has added successfully.', '2024-06-09 17:24:09', 1, 3, '::1'),
(1178, 'Services [Online Delivery Service] Edit Successfully', '2024-06-09 17:46:31', 1, 4, '::1'),
(1179, 'Services [Online Delivery Service] Edit Successfully', '2024-06-09 17:59:50', 1, 4, '::1'),
(1180, 'Login: admin logged in.', '2024-06-10 10:26:24', 1, 1, '::1'),
(1181, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 10:27:57', 1, 4, '::1'),
(1182, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 10:28:15', 1, 4, '::1'),
(1183, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 10:41:08', 1, 4, '::1'),
(1184, 'Menu [About] Edit Successfully', '2024-06-10 10:45:31', 1, 4, '::1'),
(1185, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 10:51:55', 1, 4, '::1'),
(1186, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 10:54:50', 1, 4, '::1'),
(1187, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 10:54:57', 1, 4, '::1'),
(1188, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 10:55:02', 1, 4, '::1'),
(1189, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 10:58:21', 1, 4, '::1'),
(1190, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 11:12:10', 1, 4, '::1'),
(1191, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 11:52:01', 1, 4, '::1'),
(1192, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 11:55:05', 1, 4, '::1'),
(1193, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 11:55:43', 1, 4, '::1'),
(1194, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 11:56:03', 1, 4, '::1'),
(1195, 'Changes on Article \'about us\' has been saved successfully.', '2024-06-10 11:58:17', 1, 4, '::1'),
(1196, 'Changes on Article \'Experience\' has been saved successfully.', '2024-06-10 12:01:54', 1, 4, '::1'),
(1197, 'Changes on Article \'Experience\' has been saved successfully.', '2024-06-10 12:02:22', 1, 4, '::1'),
(1198, 'Article \'About Us\' has added successfully.', '2024-06-10 12:02:53', 1, 3, '::1'),
(1199, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 12:03:30', 1, 4, '::1'),
(1200, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 12:08:06', 1, 4, '::1'),
(1201, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 12:10:29', 1, 4, '::1'),
(1202, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 12:14:56', 1, 4, '::1'),
(1203, 'Article \'Hall\' has added successfully.', '2024-06-10 12:17:01', 1, 3, '::1'),
(1204, 'Menu [Hall] Edit Successfully', '2024-06-10 12:17:09', 1, 4, '::1'),
(1205, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-10 12:22:24', 1, 4, '::1'),
(1206, 'Menu [Hall] Edit Successfully', '2024-06-10 12:23:05', 1, 4, '::1'),
(1207, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-10 12:24:57', 1, 4, '::1'),
(1208, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-10 12:25:20', 1, 4, '::1'),
(1209, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-10 12:28:24', 1, 4, '::1'),
(1210, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-10 12:30:47', 1, 4, '::1'),
(1211, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-10 12:32:20', 1, 4, '::1'),
(1212, 'Article \'Our Restaurant\' has added successfully.', '2024-06-10 12:34:43', 1, 3, '::1'),
(1213, 'Menu [Dining] Edit Successfully', '2024-06-10 12:35:38', 1, 4, '::1'),
(1214, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-10 12:56:35', 1, 4, '::1'),
(1215, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-10 13:32:02', 1, 4, '::1'),
(1216, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 13:37:26', 1, 4, '::1'),
(1217, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 13:44:18', 1, 4, '::1'),
(1218, 'Login: admin logged in.', '2024-06-10 14:29:48', 1, 1, '::1'),
(1219, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-10 14:31:16', 1, 4, '::1'),
(1220, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-10 15:21:47', 1, 4, '::1'),
(1221, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-10 15:22:34', 1, 4, '::1'),
(1222, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-10 16:14:16', 1, 4, '::1'),
(1223, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 16:14:25', 1, 4, '::1'),
(1224, 'Changes on Article \'Experience\' has been saved successfully.', '2024-06-10 16:14:31', 1, 4, '::1'),
(1225, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 16:48:51', 1, 4, '::1'),
(1226, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 16:49:04', 1, 4, '::1'),
(1227, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 16:54:33', 1, 4, '::1'),
(1228, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-10 16:56:59', 1, 4, '::1'),
(1229, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-10 16:58:45', 1, 4, '::1'),
(1230, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-10 17:05:01', 1, 4, '::1'),
(1231, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 17:10:55', 1, 4, '::1'),
(1232, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 17:13:23', 1, 4, '::1'),
(1233, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-10 17:13:54', 1, 4, '::1'),
(1234, 'Login: admin logged in.', '2024-06-11 10:26:37', 1, 1, '::1'),
(1235, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-11 10:28:16', 1, 4, '::1'),
(1236, 'Changes on Article \'Dine\' has been saved successfully.', '2024-06-11 10:31:43', 1, 4, '::1'),
(1237, 'Changes on Article \'Hall\' has been saved successfully.', '2024-06-11 10:32:29', 1, 4, '::1'),
(1238, 'Menu [Dining] Edit Successfully', '2024-06-11 10:33:42', 1, 4, '::1'),
(1239, 'Menu [Hall] Edit Successfully', '2024-06-11 10:33:52', 1, 4, '::1'),
(1240, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-11 10:37:43', 1, 4, '::1'),
(1241, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-11 10:38:02', 1, 4, '::1'),
(1242, 'Menu [Dining] Edit Successfully', '2024-06-11 10:39:51', 1, 4, '::1'),
(1243, 'Menu [Hall] Edit Successfully', '2024-06-11 10:40:46', 1, 4, '::1'),
(1244, 'Package [Dining]Data has deleted successfully.', '2024-06-11 10:46:46', 1, 6, '::1'),
(1245, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-11 10:47:48', 1, 4, '::1'),
(1246, 'Menu [Dining] Edit Successfully', '2024-06-11 10:47:58', 1, 4, '::1'),
(1247, 'Menu [Hall] Edit Successfully', '2024-06-11 10:48:36', 1, 4, '::1'),
(1248, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-11 10:48:48', 1, 4, '::1'),
(1249, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-11 10:59:31', 1, 4, '::1'),
(1250, 'Services [Online Delivery Service] Edit Successfully', '2024-06-11 11:39:06', 1, 4, '::1'),
(1251, 'Services [Room Service] Edit Successfully', '2024-06-11 11:43:24', 1, 4, '::1'),
(1252, 'Services [Smart Key] Edit Successfully', '2024-06-11 11:43:38', 1, 4, '::1'),
(1253, 'Services [Swimming Pool] Edit Successfully', '2024-06-11 11:43:56', 1, 4, '::1'),
(1254, 'Services [Multi Cuisine] Edit Successfully', '2024-06-11 11:44:13', 1, 4, '::1'),
(1255, 'Services [Highly Safe] Edit Successfully', '2024-06-11 11:44:52', 1, 4, '::1'),
(1256, 'Services [WiFi Internet] Edit Successfully', '2024-06-11 11:45:17', 1, 4, '::1'),
(1257, 'Services [Pet Friendly] Edit Successfully', '2024-06-11 11:45:33', 1, 4, '::1'),
(1258, 'Services [Free On-site Parking] Edit Successfully', '2024-06-11 11:45:47', 1, 4, '::1'),
(1259, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-11 12:36:10', 1, 4, '::1'),
(1260, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-11 12:37:43', 1, 4, '::1'),
(1261, 'Login: admin logged in.', '2024-06-11 13:30:41', 1, 1, '::1'),
(1262, 'Login: admin logged in.', '2024-06-11 15:15:33', 1, 1, '::1'),
(1263, 'Changes on Article \'Tribhuvan International Airport\' has been saved successfully.', '2024-06-11 15:27:14', 1, 4, '::1'),
(1264, 'Changes on Article \'Tribhuvan International Airport\' has been saved successfully.', '2024-06-11 15:28:56', 1, 4, '::1'),
(1265, 'Changes on Article \'Tribhuvan International Airport\' has been saved successfully.', '2024-06-11 15:29:50', 1, 4, '::1'),
(1266, 'Changes on Article \'Patan Durbar Square\' has been saved successfully.', '2024-06-11 15:31:02', 1, 4, '::1'),
(1267, 'Changes on Article \'Patan Museum\' has been saved successfully.', '2024-06-11 15:32:39', 1, 4, '::1'),
(1268, 'Changes on Article \'Tribhuvan International Airport\' has been saved successfully.', '2024-06-11 15:37:21', 1, 4, '::1'),
(1269, 'Changes on Article \'Patan Durbar Square\' has been saved successfully.', '2024-06-11 15:37:29', 1, 4, '::1'),
(1270, 'Changes on Article \'Patan Museum\' has been saved successfully.', '2024-06-11 15:52:24', 1, 4, '::1'),
(1271, 'Changes on Article \'Tribhuvan International Airport\' has been saved successfully.', '2024-06-11 15:54:46', 1, 4, '::1'),
(1272, 'Changes on Article \'Patan Durbar Square\' has been saved successfully.', '2024-06-11 15:54:55', 1, 4, '::1'),
(1273, 'Changes on Article \'Patan Museum\' has been saved successfully.', '2024-06-11 15:55:05', 1, 4, '::1'),
(1274, 'Changes on Article \'Tribhuvan International Airport\' has been saved successfully.', '2024-06-11 16:18:38', 1, 4, '::1'),
(1275, 'Changes on Article \'Patan Durbar Square\' has been saved successfully.', '2024-06-11 16:19:29', 1, 4, '::1'),
(1276, 'Changes on Article \'Patan Museum\' has been saved successfully.', '2024-06-11 16:20:03', 1, 4, '::1'),
(1277, 'Article \'Wellness & Relaxation\' has added successfully.', '2024-06-11 16:57:44', 1, 3, '::1'),
(1278, 'Changes on Article \'Wellness & Relaxation\' has been saved successfully.', '2024-06-11 17:11:14', 1, 4, '::1'),
(1279, 'Changes on Article \'Wellness & Relaxation\' has been saved successfully.', '2024-06-11 17:12:43', 1, 4, '::1'),
(1280, 'Package [Rooms]Data has deleted successfully.', '2024-06-11 17:19:09', 1, 6, '::1'),
(1281, 'Package [Mice]Data has deleted successfully.', '2024-06-11 17:19:12', 1, 6, '::1'),
(1282, 'Package []Data has deleted successfully.', '2024-06-11 17:19:12', 1, 6, '::1'),
(1283, 'Changes on Popup \'asefasdasd\' has been saved successfully.', '2024-06-11 17:35:19', 1, 4, '::1'),
(1284, 'Changes on Popup \'asefasdasd\' has been saved successfully.', '2024-06-11 17:38:57', 1, 4, '::1'),
(1285, 'Login: admin logged in.', '2024-06-12 10:50:57', 1, 1, '::1'),
(1286, 'Changes on Popup \'asefasdasd\' has been saved successfully.', '2024-06-12 10:51:12', 1, 4, '::1'),
(1287, 'Package [Studio Room]Data has added successfully.', '2024-06-12 11:35:54', 1, 3, '::1'),
(1288, 'Package Studio Room Edit Successfully', '2024-06-12 11:36:06', 1, 4, '::1'),
(1289, 'Menu [Studio Room] CreatedData has added successfully.', '2024-06-12 11:55:37', 1, 3, '::1'),
(1290, 'Package Studio Room Edit Successfully', '2024-06-12 12:01:08', 1, 4, '::1'),
(1291, 'Package Studio Room Edit Successfully', '2024-06-12 12:09:06', 1, 4, '::1'),
(1292, 'Package [Studio Room]Data has deleted successfully.', '2024-06-12 12:15:59', 1, 6, '::1'),
(1293, 'Package [Rooms]Data has added successfully.', '2024-06-12 12:16:37', 1, 3, '::1'),
(1294, 'Sub Package \'asdas\' has added successfully.', '2024-06-12 12:32:13', 1, 3, '::1'),
(1295, 'Sub Package [asdas]Data has deleted successfully.', '2024-06-12 12:32:33', 1, 6, '::1'),
(1296, 'Sub Package \' Studio Room\' has added successfully.', '2024-06-12 12:43:28', 1, 3, '::1'),
(1297, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-12 12:45:36', 1, 4, '::1'),
(1298, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-12 12:46:03', 1, 4, '::1'),
(1299, 'Menu [Rooms & Suites] Edit Successfully', '2024-06-12 13:13:44', 1, 4, '::1'),
(1300, 'Package Rooms & Suites Edit Successfully', '2024-06-12 13:23:45', 1, 4, '::1'),
(1301, 'Package Rooms & Suites Edit Successfully', '2024-06-12 13:26:18', 1, 4, '::1'),
(1302, 'Package Rooms & Suites Edit Successfully', '2024-06-12 13:38:17', 1, 4, '::1'),
(1303, 'Menu [Rooms & Suites] Edit Successfully', '2024-06-12 13:39:19', 1, 4, '::1'),
(1304, 'Sub Package \'Family Room\' has added successfully.', '2024-06-12 14:19:03', 1, 3, '::1'),
(1305, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-12 14:37:52', 1, 4, '::1'),
(1306, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-12 14:38:01', 1, 4, '::1'),
(1307, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-12 15:19:02', 1, 4, '::1'),
(1308, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-12 15:21:08', 1, 4, '::1'),
(1309, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-12 15:26:44', 1, 4, '::1'),
(1310, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-12 15:35:06', 1, 4, '::1'),
(1311, 'Sub Package \'Deluxe Room\' has added successfully.', '2024-06-12 15:38:06', 1, 3, '::1'),
(1312, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-12 15:39:39', 1, 4, '::1'),
(1313, 'Sub Package \'Premium Room\' has added successfully.', '2024-06-12 15:42:01', 1, 3, '::1'),
(1314, 'Menu [Premium Room] Edit Successfully', '2024-06-12 15:53:07', 1, 4, '::1'),
(1315, 'Menu [Family Room] Edit Successfully', '2024-06-12 15:57:40', 1, 4, '::1'),
(1316, 'Menu [Deluxe Room] Edit Successfully', '2024-06-12 15:59:06', 1, 4, '::1'),
(1317, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-12 17:29:12', 1, 4, '::1'),
(1318, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-12 17:30:26', 1, 4, '::1'),
(1319, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-12 17:31:45', 1, 4, '::1'),
(1320, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-12 17:33:48', 1, 4, '::1'),
(1321, 'Sub Package Image [1]Data has added successfully.', '2024-06-12 17:38:12', 1, 3, '::1'),
(1322, 'Sub Package Image [2]Data has added successfully.', '2024-06-12 17:38:12', 1, 3, '::1'),
(1323, 'Sub Package Image [3]Data has added successfully.', '2024-06-12 17:38:12', 1, 3, '::1'),
(1324, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-12 17:38:51', 1, 4, '::1'),
(1325, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-12 17:47:15', 1, 4, '::1'),
(1326, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-12 17:51:13', 1, 4, '::1'),
(1327, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-12 17:52:05', 1, 4, '::1'),
(1328, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-12 17:52:23', 1, 4, '::1'),
(1329, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-12 17:53:12', 1, 4, '::1'),
(1330, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-12 18:02:53', 1, 4, '::1'),
(1331, 'Login: admin logged in.', '2024-06-13 10:22:55', 1, 1, '::1'),
(1332, 'Sub Package Image [1]Data has added successfully.', '2024-06-13 10:24:07', 1, 3, '::1'),
(1333, 'Sub Package Image [2]Data has added successfully.', '2024-06-13 10:24:07', 1, 3, '::1'),
(1334, 'Sub Package Image [3]Data has added successfully.', '2024-06-13 10:24:07', 1, 3, '::1'),
(1335, 'Sub Package Image [1]Data has added successfully.', '2024-06-13 10:24:24', 1, 3, '::1'),
(1336, 'Sub Package Image [2]Data has added successfully.', '2024-06-13 10:24:24', 1, 3, '::1'),
(1337, 'Sub Package Image [3]Data has added successfully.', '2024-06-13 10:24:24', 1, 3, '::1'),
(1338, 'Sub Package Image [1]Data has added successfully.', '2024-06-13 10:24:45', 1, 3, '::1'),
(1339, 'Sub Package Image [2]Data has added successfully.', '2024-06-13 10:24:45', 1, 3, '::1'),
(1340, 'Sub Package Image [3]Data has added successfully.', '2024-06-13 10:24:45', 1, 3, '::1'),
(1341, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-13 10:34:56', 1, 4, '::1'),
(1342, 'Features [Coffee/ Tea Maker] Edit Successfully', '2024-06-13 11:49:22', 1, 4, '::1'),
(1343, 'Features [Bathrobe & slippers] Edit Successfully', '2024-06-13 11:49:30', 1, 4, '::1'),
(1344, 'Features [House Keeping] Edit Successfully', '2024-06-13 11:49:39', 1, 4, '::1'),
(1345, 'Features [Flat screen TV] Edit Successfully', '2024-06-13 11:49:56', 1, 4, '::1'),
(1346, 'Features [Toiletriesi] Edit Successfully', '2024-06-13 11:50:05', 1, 4, '::1'),
(1347, 'Features [No Smoking] Edit Successfully', '2024-06-13 11:50:13', 1, 4, '::1'),
(1348, 'Features [In Room Safe (Locker)] Edit Successfully', '2024-06-13 11:50:28', 1, 4, '::1'),
(1349, 'Features [Free Wi-Fi] Edit Successfully', '2024-06-13 11:50:48', 1, 4, '::1'),
(1350, 'Features [Shower-bathtub combination] Edit Successfully', '2024-06-13 11:51:04', 1, 4, '::1'),
(1351, 'Features [Amenities]Data has added successfully.', '2024-06-13 12:07:33', 1, 3, '::1'),
(1352, 'Features  [Amenities]Data has deleted successfully.', '2024-06-13 12:07:48', 1, 6, '::1'),
(1353, 'Features [Services]Data has added successfully.', '2024-06-13 12:08:21', 1, 3, '::1'),
(1354, 'Features [Towels]Data has added successfully.', '2024-06-13 12:10:27', 1, 3, '::1'),
(1355, 'Features [Coffee Machine]Data has added successfully.', '2024-06-13 12:10:42', 1, 3, '::1'),
(1356, 'Features [Fridge & drinks]Data has added successfully.', '2024-06-13 12:11:55', 1, 3, '::1'),
(1357, 'Features [ Fast WiFi]Data has added successfully.', '2024-06-13 12:12:23', 1, 3, '::1'),
(1358, 'Features [Air Conditioning]Data has added successfully.', '2024-06-13 12:12:35', 1, 3, '::1'),
(1359, 'Features [Cable TV]Data has added successfully.', '2024-06-13 12:12:55', 1, 3, '::1'),
(1360, 'Features [Hair Dryer]Data has added successfully.', '2024-06-13 12:13:12', 1, 3, '::1'),
(1361, 'Features [Slippers]Data has added successfully.', '2024-06-13 12:13:32', 1, 3, '::1'),
(1362, 'Features [Shampoo]Data has added successfully.', '2024-06-13 12:13:47', 1, 3, '::1'),
(1363, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-13 12:45:00', 1, 4, '::1'),
(1364, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-13 12:45:52', 1, 4, '::1'),
(1365, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-13 12:49:04', 1, 4, '::1'),
(1366, 'Features [Services] Edit Successfully', '2024-06-13 12:51:53', 1, 4, '::1'),
(1367, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-13 14:39:40', 1, 4, '::1'),
(1368, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-13 14:54:30', 1, 4, '::1'),
(1369, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-13 14:54:39', 1, 4, '::1'),
(1370, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-13 15:05:45', 1, 4, '::1'),
(1371, 'Changes on Article \'Experience\' has been saved successfully.', '2024-06-13 16:24:39', 1, 4, '::1'),
(1372, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-13 16:42:44', 1, 4, '::1'),
(1373, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-13 16:43:25', 1, 4, '::1'),
(1374, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-13 16:43:38', 1, 4, '::1'),
(1375, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-13 16:43:57', 1, 4, '::1'),
(1376, 'Login: admin logged in.', '2024-06-13 17:22:02', 1, 1, '188.253.97.173'),
(1377, 'Changes on Article \'Tribhuvan International<br/> Airport\' has been saved successfully.', '2024-06-13 17:22:26', 1, 4, '188.253.97.173'),
(1378, 'Login: admin logged in.', '2024-06-14 10:31:42', 1, 1, '188.253.97.173'),
(1379, 'Changes on Popup \'staycation\' has been saved successfully.', '2024-06-14 10:35:09', 1, 4, '188.253.97.173'),
(1380, 'Login: admin logged in.', '2024-06-14 11:44:20', 1, 1, '188.253.97.173'),
(1381, 'Changes on Article \'Experience\' has been saved successfully.', '2024-06-14 11:47:25', 1, 4, '188.253.97.173'),
(1382, 'Changes on Article \'Experience\' has been saved successfully.', '2024-06-14 11:48:15', 1, 4, '188.253.97.173'),
(1383, 'Changes on Article \'Experience\' has been saved successfully.', '2024-06-14 11:48:58', 1, 4, '188.253.97.173'),
(1384, 'Services [Highly Secure] Edit Successfully', '2024-06-14 11:51:29', 1, 4, '188.253.97.173'),
(1385, 'Changes on Article \'Wellness & Relaxation\' has been saved successfully.', '2024-06-14 12:04:02', 1, 4, '188.253.97.173'),
(1386, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-14 12:14:47', 1, 4, '188.253.97.173'),
(1387, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-14 12:15:57', 1, 4, '188.253.97.173'),
(1388, 'SubPackage Gallery Image [1]Data has deleted successfully.', '2024-06-14 12:16:56', 1, 6, '188.253.97.173'),
(1389, 'SubPackage Gallery Image [2]Data has deleted successfully.', '2024-06-14 12:16:58', 1, 6, '188.253.97.173'),
(1390, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:16:58', 1, 6, '188.253.97.173'),
(1391, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:17:01', 1, 6, '188.253.97.173'),
(1392, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:17:01', 1, 6, '188.253.97.173'),
(1393, 'SubPackage Gallery Image [3]Data has deleted successfully.', '2024-06-14 12:17:01', 1, 6, '188.253.97.173'),
(1394, 'Sub Package Image [Premium Room 1]Data has added successfully.', '2024-06-14 12:17:26', 1, 3, '188.253.97.173'),
(1395, 'Sub Package Image [Premium Room 2]Data has added successfully.', '2024-06-14 12:17:26', 1, 3, '188.253.97.173'),
(1396, 'Sub Package Image [Premium Room 3]Data has added successfully.', '2024-06-14 12:17:26', 1, 3, '188.253.97.173'),
(1397, 'Sub Package Image [Premium Room 4]Data has added successfully.', '2024-06-14 12:17:26', 1, 3, '188.253.97.173'),
(1398, 'Sub Package Image [Premium Room 5]Data has added successfully.', '2024-06-14 12:17:26', 1, 3, '188.253.97.173'),
(1399, 'Sub Package Image [Premium Room 6]Data has added successfully.', '2024-06-14 12:17:26', 1, 3, '188.253.97.173'),
(1400, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-14 12:21:37', 1, 4, '188.253.97.173'),
(1401, 'Features [Minibar] Edit Successfully', '2024-06-14 12:23:33', 1, 4, '188.253.97.173'),
(1402, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-14 12:25:02', 1, 4, '188.253.97.173'),
(1403, 'SubPackage Gallery Image [1]Data has deleted successfully.', '2024-06-14 12:26:10', 1, 6, '188.253.97.173'),
(1404, 'SubPackage Gallery Image [2]Data has deleted successfully.', '2024-06-14 12:26:13', 1, 6, '188.253.97.173'),
(1405, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:26:13', 1, 6, '188.253.97.173'),
(1406, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:26:16', 1, 6, '188.253.97.173'),
(1407, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:26:16', 1, 6, '188.253.97.173'),
(1408, 'SubPackage Gallery Image [3]Data has deleted successfully.', '2024-06-14 12:26:16', 1, 6, '188.253.97.173'),
(1409, 'Sub Package Image [Studio Room 1]Data has added successfully.', '2024-06-14 12:26:32', 1, 3, '188.253.97.173'),
(1410, 'Sub Package Image [Studio Room 2]Data has added successfully.', '2024-06-14 12:26:32', 1, 3, '188.253.97.173'),
(1411, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-14 12:27:20', 1, 4, '188.253.97.173'),
(1412, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-14 12:29:11', 1, 4, '188.253.97.173'),
(1413, 'SubPackage Gallery Image [1]Data has deleted successfully.', '2024-06-14 12:29:48', 1, 6, '188.253.97.173'),
(1414, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:29:51', 1, 6, '188.253.97.173'),
(1415, 'SubPackage Gallery Image [2]Data has deleted successfully.', '2024-06-14 12:29:51', 1, 6, '188.253.97.173'),
(1416, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:29:54', 1, 6, '188.253.97.173'),
(1417, 'SubPackage Gallery Image [3]Data has deleted successfully.', '2024-06-14 12:29:54', 1, 6, '188.253.97.173'),
(1418, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:29:54', 1, 6, '188.253.97.173'),
(1419, 'Sub Package Image [Deluxe Room 1]Data has added successfully.', '2024-06-14 12:30:28', 1, 3, '188.253.97.173'),
(1420, 'Sub Package Image [Deluxe Room 2]Data has added successfully.', '2024-06-14 12:30:28', 1, 3, '188.253.97.173'),
(1421, 'Sub Package Image [Deluxe Room 3 ]Data has added successfully.', '2024-06-14 12:30:28', 1, 3, '188.253.97.173'),
(1422, 'Sub Package Image [Deluxe Room 4]Data has added successfully.', '2024-06-14 12:30:28', 1, 3, '188.253.97.173'),
(1423, 'Sub Package Image [Deluxe Room 5]Data has added successfully.', '2024-06-14 12:30:28', 1, 3, '188.253.97.173'),
(1424, 'Sub Package Image [Deluxe Room 6]Data has added successfully.', '2024-06-14 12:30:28', 1, 3, '188.253.97.173'),
(1425, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-14 12:30:56', 1, 4, '188.253.97.173'),
(1426, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-14 12:32:37', 1, 4, '188.253.97.173'),
(1427, 'SubPackage Gallery Image [1]Data has deleted successfully.', '2024-06-14 12:33:09', 1, 6, '188.253.97.173'),
(1428, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:33:12', 1, 6, '188.253.97.173'),
(1429, 'SubPackage Gallery Image [2]Data has deleted successfully.', '2024-06-14 12:33:12', 1, 6, '188.253.97.173'),
(1430, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:33:14', 1, 6, '188.253.97.173'),
(1431, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-14 12:33:14', 1, 6, '188.253.97.173'),
(1432, 'SubPackage Gallery Image [3]Data has deleted successfully.', '2024-06-14 12:33:14', 1, 6, '188.253.97.173'),
(1433, 'Sub Package Image [Family Room 1]Data has added successfully.', '2024-06-14 12:33:32', 1, 3, '188.253.97.173'),
(1434, 'Sub Package Image [Family Room 2]Data has added successfully.', '2024-06-14 12:33:32', 1, 3, '188.253.97.173'),
(1435, 'Sub Package Image [Family Room 3]Data has added successfully.', '2024-06-14 12:33:32', 1, 3, '188.253.97.173'),
(1436, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-14 13:00:47', 1, 4, '188.253.97.173'),
(1437, 'Services [Safe Box] Edit Successfully', '2024-06-14 13:03:38', 1, 4, '188.253.97.173'),
(1438, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-14 13:13:14', 1, 4, '188.253.97.173'),
(1439, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-14 13:16:33', 1, 4, '188.253.97.173'),
(1440, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-14 13:21:35', 1, 4, '188.253.97.173'),
(1441, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-14 13:23:21', 1, 4, '188.253.97.173'),
(1442, 'Login: admin logged in.', '2024-06-14 14:32:04', 1, 1, '188.253.97.173'),
(1443, 'Changes on Article \'Experience\' has been saved successfully.', '2024-06-14 14:34:12', 1, 4, '188.253.97.173'),
(1444, 'Article \'Patan Royal  Palace\' has added successfully.', '2024-06-14 15:10:40', 1, 3, '188.253.97.173'),
(1445, 'Changes on Article \'Patan Royal  Palace\' has been saved successfully.', '2024-06-14 15:22:55', 1, 4, '188.253.97.173'),
(1446, 'Changes on Article \'Patan Royal  Palace\' has been saved successfully.', '2024-06-14 15:23:02', 1, 4, '188.253.97.173'),
(1447, 'Article \'Golden Temple\' has added successfully.', '2024-06-14 15:24:56', 1, 3, '188.253.97.173'),
(1448, 'Article \'Mahaboudha Temple\' has added successfully.', '2024-06-14 15:25:35', 1, 3, '188.253.97.173'),
(1449, 'Article \'Central Zoo\' has added successfully.', '2024-06-14 15:26:26', 1, 3, '188.253.97.173'),
(1450, 'Article \'Labim Mall\' has added successfully.', '2024-06-14 15:27:27', 1, 3, '188.253.97.173'),
(1451, 'Article \'Pimbahal\' has added successfully.', '2024-06-14 15:27:48', 1, 3, '188.253.97.173'),
(1452, 'Article \'Lagankhel Bus Station\' has added successfully.', '2024-06-14 15:28:21', 1, 3, '188.253.97.173'),
(1453, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-14 15:33:45', 1, 4, '188.253.97.173'),
(1454, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-14 15:34:21', 1, 4, '188.253.97.173'),
(1455, 'Menu [Message] Edit Successfully', '2024-06-14 15:35:49', 1, 4, '188.253.97.173'),
(1456, 'Menu [About Us] Edit Successfully', '2024-06-14 15:37:01', 1, 4, '188.253.97.173'),
(1457, 'Menu [About Us] Edit Successfully', '2024-06-14 15:37:13', 1, 4, '188.253.97.173'),
(1458, 'Menu [Message] Edit Successfully', '2024-06-14 15:37:33', 1, 4, '188.253.97.173'),
(1459, 'Menu [Gallery] Edit Successfully', '2024-06-14 15:37:57', 1, 4, '188.253.97.173'),
(1460, 'Menu [Contact] Edit Successfully', '2024-06-14 15:38:17', 1, 4, '188.253.97.173'),
(1461, 'Menu [Local Attraction] Edit Successfully', '2024-06-14 15:38:41', 1, 4, '188.253.97.173'),
(1462, 'Menu [Events & Meetings] Edit Successfully', '2024-06-14 15:39:09', 1, 4, '188.253.97.173'),
(1463, 'Menu [Exclusive Dining] Edit Successfully', '2024-06-14 15:39:35', 1, 4, '188.253.97.173'),
(1464, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-14 15:42:24', 1, 4, '188.253.97.173'),
(1465, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-14 15:47:54', 1, 4, '188.253.97.173'),
(1466, 'Menu  [Contact]Data has deleted successfully.', '2024-06-14 15:50:15', 1, 6, '188.253.97.173'),
(1467, 'Menu  [Activies]Data has deleted successfully.', '2024-06-14 15:50:46', 1, 6, '188.253.97.173'),
(1468, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-14 15:55:01', 1, 4, '188.253.97.173'),
(1469, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-14 15:57:00', 1, 4, '188.253.97.173'),
(1470, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-14 15:57:15', 1, 4, '188.253.97.173'),
(1471, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-14 15:57:37', 1, 4, '188.253.97.173'),
(1472, 'Login: admin logged in.', '2024-06-14 16:53:32', 1, 1, '188.253.97.173'),
(1473, 'Login: admin logged in.', '2024-06-14 17:10:43', 1, 1, '188.253.97.173'),
(1474, 'Login: admin logged in.', '2024-06-14 17:19:51', 1, 1, '188.253.97.173'),
(1475, 'Blog  [Nagarkot Nepal ]Data has deleted successfully.', '2024-06-14 17:20:41', 1, 6, '188.253.97.173'),
(1476, 'Blog  [qwseasdas]Data has deleted successfully.', '2024-06-14 17:20:47', 1, 6, '188.253.97.173'),
(1477, 'Blog  [test 1]Data has deleted successfully.', '2024-06-14 17:20:47', 1, 6, '188.253.97.173'),
(1478, 'Blog  [Places-of-interest]Data has deleted successfully.', '2024-06-14 17:20:47', 1, 6, '188.253.97.173'),
(1479, 'Blog  [Excursions to nearby places]Data has deleted successfully.', '2024-06-14 17:20:47', 1, 6, '188.253.97.173'),
(1480, 'Blog  [Brief On Club Himalaya]Data has deleted successfully.', '2024-06-14 17:20:47', 1, 6, '188.253.97.173'),
(1481, 'Blog  []Data has deleted successfully.', '2024-06-14 17:20:47', 1, 6, '188.253.97.173'),
(1482, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-14 17:44:53', 1, 4, '188.253.97.173'),
(1483, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-14 17:46:00', 1, 4, '188.253.97.173'),
(1484, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-14 17:47:28', 1, 4, '188.253.97.173'),
(1485, 'Login: admin logged in.', '2024-06-16 10:39:09', 1, 1, '188.253.98.162'),
(1486, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-16 10:52:40', 1, 4, '188.253.98.162'),
(1487, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-16 10:53:02', 1, 4, '188.253.98.162'),
(1488, 'Login: admin logged in.', '2024-06-16 11:32:39', 1, 1, '188.253.98.162'),
(1489, 'User [Hotel   Goodwill] Edit Successfully', '2024-06-16 11:34:23', 1, 4, '188.253.98.162'),
(1490, 'Login: admin logged in.', '2024-06-16 11:34:29', 1, 1, '188.253.98.162'),
(1491, 'User [Hotel   Goodwill] Edit Successfully', '2024-06-16 11:36:46', 1, 4, '188.253.98.162'),
(1492, 'Login: admin logged in.', '2024-06-16 11:36:52', 1, 1, '188.253.98.162'),
(1493, 'Login: admin logged in.', '2024-06-16 11:59:23', 1, 1, '188.253.98.162'),
(1494, 'User [Hotel   Goodwill] Edit Successfully', '2024-06-16 12:00:26', 1, 4, '188.253.98.162'),
(1495, 'Login: admin logged in.', '2024-06-16 12:00:31', 1, 1, '188.253.98.162'),
(1496, 'Login: admin logged in.', '2024-06-16 12:37:32', 1, 1, '188.253.98.162'),
(1497, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-16 12:56:26', 1, 4, '188.253.98.162'),
(1498, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-16 12:56:58', 1, 4, '188.253.98.162'),
(1499, 'Login: admin logged in.', '2024-06-16 13:14:36', 1, 1, '188.253.98.162'),
(1500, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-16 13:15:14', 1, 4, '188.253.98.162');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1501, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-16 13:15:29', 1, 4, '188.253.98.162'),
(1502, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-16 13:15:48', 1, 4, '188.253.98.162'),
(1503, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-16 13:16:07', 1, 4, '188.253.98.162'),
(1504, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-16 13:16:23', 1, 4, '188.253.98.162'),
(1505, 'Login: admin logged in.', '2024-06-16 13:16:47', 1, 1, '27.34.66.86'),
(1506, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-16 13:38:13', 1, 4, '27.34.66.86'),
(1507, 'Login: admin logged in.', '2024-06-16 14:27:33', 1, 1, '188.253.98.162'),
(1508, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-16 14:28:51', 1, 4, '188.253.98.162'),
(1509, 'Login: admin logged in.', '2024-06-16 15:58:05', 1, 1, '27.34.66.86'),
(1510, 'Login: admin logged in.', '2024-06-16 17:39:40', 1, 1, '188.253.98.162'),
(1511, 'Login: admin logged in.', '2024-06-17 11:53:34', 1, 1, '27.34.66.104'),
(1512, 'Slideshow [Building] Edit Successfully', '2024-06-17 11:54:57', 1, 4, '27.34.66.104'),
(1513, 'Slideshow [Reception] Edit Successfully', '2024-06-17 11:55:13', 1, 4, '27.34.66.104'),
(1514, 'Slideshow [Room] Edit Successfully', '2024-06-17 12:00:36', 1, 4, '27.34.66.104'),
(1515, 'Slideshow [Room] Edit Successfully', '2024-06-17 12:07:03', 1, 4, '27.34.66.104'),
(1516, 'Slideshow [Entrance] Edit Successfully', '2024-06-17 12:08:46', 1, 4, '27.34.66.104'),
(1517, 'Slideshow [Front] Edit Successfully', '2024-06-17 12:09:09', 1, 4, '27.34.66.104'),
(1518, 'Slideshow [Dining] Edit Successfully', '2024-06-17 12:09:29', 1, 4, '27.34.66.104'),
(1519, 'Login: admin logged in.', '2024-06-17 12:23:16', 1, 1, '188.253.98.162'),
(1520, 'Login: admin logged in.', '2024-06-17 13:26:15', 1, 1, '27.34.66.104'),
(1521, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-17 13:29:48', 1, 4, '27.34.66.104'),
(1522, 'Menu [Offers & Packages] CreatedData has added successfully.', '2024-06-17 13:32:39', 1, 3, '27.34.66.104'),
(1523, 'Menu [Daycation] CreatedData has added successfully.', '2024-06-17 13:33:32', 1, 3, '27.34.66.104'),
(1524, 'Menu [Staycation] CreatedData has added successfully.', '2024-06-17 13:34:44', 1, 3, '27.34.66.104'),
(1525, 'Menu [Swimming Platter] CreatedData has added successfully.', '2024-06-17 13:35:40', 1, 3, '27.34.66.104'),
(1526, 'Services [Safety Deposit] Edit Successfully', '2024-06-17 13:37:42', 1, 4, '27.34.66.104'),
(1527, 'Login: admin logged in.', '2024-06-17 13:38:11', 1, 1, '188.253.98.162'),
(1528, 'Services [24-Hour Front Desk] Edit Successfully', '2024-06-17 13:38:34', 1, 4, '27.34.66.104'),
(1529, 'Servicess  [Pet Friendly]Data has deleted successfully.', '2024-06-17 13:39:25', 1, 6, '27.34.66.104'),
(1530, 'Services  [Pet Friendly]Data has deleted successfully.', '2024-06-17 13:39:25', 1, 6, '27.34.66.104'),
(1531, 'Servicess  [Newspaper]Data has deleted successfully.', '2024-06-17 13:39:33', 1, 6, '27.34.66.104'),
(1532, 'Services  [Newspaper]Data has deleted successfully.', '2024-06-17 13:39:33', 1, 6, '27.34.66.104'),
(1533, 'Servicess  [Doctor on Call]Data has deleted successfully.', '2024-06-17 13:39:41', 1, 6, '27.34.66.104'),
(1534, 'Services  [Doctor on Call]Data has deleted successfully.', '2024-06-17 13:39:41', 1, 6, '27.34.66.104'),
(1535, 'Servicess  [Online Delivery Service]Data has deleted successfully.', '2024-06-17 13:39:50', 1, 6, '27.34.66.104'),
(1536, 'Services  [Online Delivery Service]Data has deleted successfully.', '2024-06-17 13:39:50', 1, 6, '27.34.66.104'),
(1537, 'Services [Laundry Service]Data has added successfully.', '2024-06-17 14:04:39', 1, 3, '27.34.66.104'),
(1538, 'Services [Dental Kit]Data has added successfully.', '2024-06-17 14:04:53', 1, 3, '27.34.66.104'),
(1539, 'Services [Television]Data has added successfully.', '2024-06-17 14:05:08', 1, 3, '27.34.66.104'),
(1540, 'Services [24 Hour Security]Data has added successfully.', '2024-06-17 14:06:42', 1, 3, '27.34.66.104'),
(1541, 'Services [CCTV Cameras]Data has added successfully.', '2024-06-17 14:06:58', 1, 3, '27.34.66.104'),
(1542, 'Services [Spacious Courtyard]Data has added successfully.', '2024-06-17 14:07:14', 1, 3, '27.34.66.104'),
(1543, 'Services [Events & Exhibitions]Data has added successfully.', '2024-06-17 14:07:32', 1, 3, '27.34.66.104'),
(1544, 'Services [Banquet and Reception]Data has added successfully.', '2024-06-17 14:07:56', 1, 3, '27.34.66.104'),
(1545, 'Services [Meetings & Conferences] Edit Successfully', '2024-06-17 14:09:24', 1, 4, '27.34.66.104'),
(1546, 'Services [Events & Exhibitions] Edit Successfully', '2024-06-17 14:09:48', 1, 4, '27.34.66.104'),
(1547, 'Services [Free WiFi Internet] Edit Successfully', '2024-06-17 14:10:12', 1, 4, '27.34.66.104'),
(1548, 'Services [Hot & Cold Shower] Edit Successfully', '2024-06-17 14:10:37', 1, 4, '27.34.66.104'),
(1549, 'Services [Aqua Swimming Pool] Edit Successfully', '2024-06-17 14:10:55', 1, 4, '27.34.66.104'),
(1550, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-17 14:14:08', 1, 4, '27.34.66.104'),
(1551, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-17 14:23:47', 1, 4, '27.34.66.104'),
(1552, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-17 14:25:04', 1, 4, '27.34.66.104'),
(1553, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-17 14:31:21', 1, 4, '27.34.66.104'),
(1554, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-17 14:33:07', 1, 4, '27.34.66.104'),
(1555, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-17 14:33:45', 1, 4, '27.34.66.104'),
(1556, 'Services [Spacious Courtyard] Edit Successfully', '2024-06-17 14:39:42', 1, 4, '27.34.66.104'),
(1557, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-17 14:55:02', 1, 4, '27.34.66.104'),
(1558, 'Changes on Article \'Patan Museum\' has been saved successfully.', '2024-06-17 15:04:31', 1, 4, '27.34.66.104'),
(1559, 'Changes on Article \'Patan Durbar Square\' has been saved successfully.', '2024-06-17 15:05:24', 1, 4, '27.34.66.104'),
(1560, 'Changes on Article \'Tribhuvan International<br/> Airport\' has been saved successfully.', '2024-06-17 15:05:44', 1, 4, '27.34.66.104'),
(1561, 'Changes on Article \'Patan Royal  Palace\' has been saved successfully.', '2024-06-17 15:06:03', 1, 4, '27.34.66.104'),
(1562, 'Changes on Article \'Labim Mall\' has been saved successfully.', '2024-06-17 15:06:26', 1, 4, '27.34.66.104'),
(1563, 'Changes on Article \'Golden Temple\' has been saved successfully.', '2024-06-17 15:19:27', 1, 4, '27.34.66.104'),
(1564, 'Changes on Article \'Lagankhel Bus Station\' has been saved successfully.', '2024-06-17 15:39:22', 1, 4, '188.253.98.162'),
(1565, 'Login: admin logged in.', '2024-06-17 16:13:40', 1, 1, '27.34.66.104'),
(1566, 'Changes on Article \'Lagankhel Bus Station\' has been saved successfully.', '2024-06-17 16:14:08', 1, 4, '27.34.66.104'),
(1567, 'Changes on Article \'Mahaboudha Temple\' has been saved successfully.', '2024-06-17 16:20:46', 1, 4, '27.34.66.104'),
(1568, 'Changes on Article \'Central Zoo\' has been saved successfully.', '2024-06-17 16:31:37', 1, 4, '27.34.66.104'),
(1569, 'Changes on Article \'Pimbahal\' has been saved successfully.', '2024-06-17 16:33:46', 1, 4, '27.34.66.104'),
(1570, 'Sub Gallery Image  [1]Data has deleted successfully.', '2024-06-17 17:31:21', 1, 6, '27.34.66.104'),
(1571, 'Sub Gallery Image  []Data has deleted successfully.', '2024-06-17 17:31:24', 1, 6, '27.34.66.104'),
(1572, 'Sub Gallery Image  [2]Data has deleted successfully.', '2024-06-17 17:31:24', 1, 6, '27.34.66.104'),
(1573, 'Sub Gallery Image  []Data has deleted successfully.', '2024-06-17 17:31:26', 1, 6, '27.34.66.104'),
(1574, 'Sub Gallery Image  []Data has deleted successfully.', '2024-06-17 17:31:26', 1, 6, '27.34.66.104'),
(1575, 'Sub Gallery Image  [3]Data has deleted successfully.', '2024-06-17 17:31:26', 1, 6, '27.34.66.104'),
(1576, 'Sub Gallery Image  []Data has deleted successfully.', '2024-06-17 17:31:29', 1, 6, '27.34.66.104'),
(1577, 'Sub Gallery Image  [4]Data has deleted successfully.', '2024-06-17 17:31:29', 1, 6, '27.34.66.104'),
(1578, 'Sub Gallery Image  []Data has deleted successfully.', '2024-06-17 17:31:29', 1, 6, '27.34.66.104'),
(1579, 'Sub Gallery Image  []Data has deleted successfully.', '2024-06-17 17:31:29', 1, 6, '27.34.66.104'),
(1580, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1581, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1582, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1583, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1584, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1585, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1586, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1587, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1588, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1589, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1590, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1591, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1592, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1593, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1594, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1595, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1596, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1597, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1598, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1599, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1600, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1601, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1602, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1603, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1604, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1605, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1606, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1607, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1608, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1609, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1610, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1611, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1612, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1613, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1614, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1615, 'Sub Gallery Image [Hotel Goodwill]Data has added successfully.', '2024-06-17 17:33:13', 1, 3, '27.34.66.104'),
(1616, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-17 17:38:44', 1, 4, '27.34.66.104'),
(1617, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-17 18:01:52', 1, 4, '27.34.66.104'),
(1618, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-17 18:04:07', 1, 4, '27.34.66.104'),
(1619, 'Slideshow [Hall]Data has added successfully.', '2024-06-17 18:08:25', 1, 3, '27.34.66.104'),
(1620, 'Slideshow [Hall] Edit Successfully', '2024-06-17 18:09:13', 1, 4, '27.34.66.104'),
(1621, 'Changes on Article \'Wellness & Relaxation\' has been saved successfully.', '2024-06-17 18:30:19', 1, 4, '27.34.66.104'),
(1622, 'Login: admin logged in.', '2024-06-17 19:58:44', 1, 1, '27.34.66.104'),
(1623, 'SubPackage Gallery Image [Deluxe Room 1]Data has deleted successfully.', '2024-06-17 19:59:24', 1, 6, '27.34.66.104'),
(1624, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:28', 1, 6, '27.34.66.104'),
(1625, 'SubPackage Gallery Image [Deluxe Room 2]Data has deleted successfully.', '2024-06-17 19:59:28', 1, 6, '27.34.66.104'),
(1626, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:32', 1, 6, '27.34.66.104'),
(1627, 'SubPackage Gallery Image [Deluxe Room 3 ]Data has deleted successfully.', '2024-06-17 19:59:32', 1, 6, '27.34.66.104'),
(1628, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:32', 1, 6, '27.34.66.104'),
(1629, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:35', 1, 6, '27.34.66.104'),
(1630, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:35', 1, 6, '27.34.66.104'),
(1631, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:35', 1, 6, '27.34.66.104'),
(1632, 'SubPackage Gallery Image [Deluxe Room 4]Data has deleted successfully.', '2024-06-17 19:59:35', 1, 6, '27.34.66.104'),
(1633, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:38', 1, 6, '27.34.66.104'),
(1634, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:38', 1, 6, '27.34.66.104'),
(1635, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:38', 1, 6, '27.34.66.104'),
(1636, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:38', 1, 6, '27.34.66.104'),
(1637, 'SubPackage Gallery Image [Deluxe Room 5]Data has deleted successfully.', '2024-06-17 19:59:38', 1, 6, '27.34.66.104'),
(1638, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:41', 1, 6, '27.34.66.104'),
(1639, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:41', 1, 6, '27.34.66.104'),
(1640, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:41', 1, 6, '27.34.66.104'),
(1641, 'SubPackage Gallery Image [Deluxe Room 6]Data has deleted successfully.', '2024-06-17 19:59:41', 1, 6, '27.34.66.104'),
(1642, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:41', 1, 6, '27.34.66.104'),
(1643, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 19:59:41', 1, 6, '27.34.66.104'),
(1644, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-17 20:00:20', 1, 3, '27.34.66.104'),
(1645, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-17 20:00:20', 1, 3, '27.34.66.104'),
(1646, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-17 20:00:20', 1, 3, '27.34.66.104'),
(1647, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-17 20:00:20', 1, 3, '27.34.66.104'),
(1648, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-17 20:00:20', 1, 3, '27.34.66.104'),
(1649, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-17 20:00:20', 1, 3, '27.34.66.104'),
(1650, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-17 20:00:20', 1, 3, '27.34.66.104'),
(1651, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-17 20:00:20', 1, 3, '27.34.66.104'),
(1652, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-17 20:01:09', 1, 4, '27.34.66.104'),
(1653, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-17 20:03:19', 1, 3, '27.34.66.104'),
(1654, 'SubPackage Gallery Image [Premium Room 1]Data has deleted successfully.', '2024-06-17 20:09:07', 1, 6, '27.34.66.104'),
(1655, 'SubPackage Gallery Image [Premium Room 2]Data has deleted successfully.', '2024-06-17 20:09:10', 1, 6, '27.34.66.104'),
(1656, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:10', 1, 6, '27.34.66.104'),
(1657, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:14', 1, 6, '27.34.66.104'),
(1658, 'SubPackage Gallery Image [Premium Room 3]Data has deleted successfully.', '2024-06-17 20:09:14', 1, 6, '27.34.66.104'),
(1659, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:14', 1, 6, '27.34.66.104'),
(1660, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:17', 1, 6, '27.34.66.104'),
(1661, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:17', 1, 6, '27.34.66.104'),
(1662, 'SubPackage Gallery Image [Premium Room 4]Data has deleted successfully.', '2024-06-17 20:09:17', 1, 6, '27.34.66.104'),
(1663, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:17', 1, 6, '27.34.66.104'),
(1664, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:20', 1, 6, '27.34.66.104'),
(1665, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:20', 1, 6, '27.34.66.104'),
(1666, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:20', 1, 6, '27.34.66.104'),
(1667, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:20', 1, 6, '27.34.66.104'),
(1668, 'SubPackage Gallery Image [Premium Room 5]Data has deleted successfully.', '2024-06-17 20:09:20', 1, 6, '27.34.66.104'),
(1669, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:23', 1, 6, '27.34.66.104'),
(1670, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:23', 1, 6, '27.34.66.104'),
(1671, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:23', 1, 6, '27.34.66.104'),
(1672, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:23', 1, 6, '27.34.66.104'),
(1673, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-17 20:09:23', 1, 6, '27.34.66.104'),
(1674, 'SubPackage Gallery Image [Premium Room 6]Data has deleted successfully.', '2024-06-17 20:09:23', 1, 6, '27.34.66.104'),
(1675, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-17 20:09:43', 1, 3, '27.34.66.104'),
(1676, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-17 20:09:43', 1, 3, '27.34.66.104'),
(1677, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-17 20:09:43', 1, 3, '27.34.66.104'),
(1678, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-17 20:09:43', 1, 3, '27.34.66.104'),
(1679, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-17 20:09:43', 1, 3, '27.34.66.104'),
(1680, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-17 20:09:43', 1, 3, '27.34.66.104'),
(1681, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-17 20:11:05', 1, 4, '27.34.66.104'),
(1682, 'Article \'Daycation Package\' has added successfully.', '2024-06-17 20:15:29', 1, 3, '27.34.66.104'),
(1683, 'Menu [Daycation] Edit Successfully', '2024-06-17 20:15:41', 1, 4, '27.34.66.104'),
(1684, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-17 20:16:29', 1, 4, '27.34.66.104'),
(1685, 'Changes on Article \'Daycation Package\' has been saved successfully.', '2024-06-17 20:18:26', 1, 4, '27.34.66.104'),
(1686, 'Changes on Article \'Daycation Package\' has been saved successfully.', '2024-06-17 20:20:28', 1, 4, '27.34.66.104'),
(1687, 'Login: admin logged in.', '2024-06-18 10:25:30', 1, 1, '188.253.97.121'),
(1688, 'Login: admin logged in.', '2024-06-18 11:51:39', 1, 1, '27.34.66.104'),
(1689, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-18 11:52:18', 1, 4, '27.34.66.104'),
(1690, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-18 11:58:36', 1, 4, '27.34.66.104'),
(1691, 'SubPackage Gallery Image [Studio Room 2]Data has deleted successfully.', '2024-06-18 12:01:13', 1, 6, '27.34.66.104'),
(1692, 'SubPackage Gallery Image [Studio Room 1]Data has deleted successfully.', '2024-06-18 12:01:15', 1, 6, '27.34.66.104'),
(1693, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-18 12:01:15', 1, 6, '27.34.66.104'),
(1694, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-18 12:01:54', 1, 3, '27.34.66.104'),
(1695, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-18 12:01:54', 1, 3, '27.34.66.104'),
(1696, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-18 12:01:54', 1, 3, '27.34.66.104'),
(1697, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-18 12:01:54', 1, 3, '27.34.66.104'),
(1698, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-18 12:01:54', 1, 3, '27.34.66.104'),
(1699, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-18 12:01:54', 1, 3, '27.34.66.104'),
(1700, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-18 12:01:54', 1, 3, '27.34.66.104'),
(1701, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-18 12:01:54', 1, 3, '27.34.66.104'),
(1702, 'Sub Package Image [Deluxe Room]Data has added successfully.', '2024-06-18 12:01:54', 1, 3, '27.34.66.104'),
(1703, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-18 12:03:04', 1, 4, '27.34.66.104'),
(1704, 'SubPackage Gallery Image [Family Room 1]Data has deleted successfully.', '2024-06-18 12:04:28', 1, 6, '27.34.66.104'),
(1705, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-18 12:04:33', 1, 6, '27.34.66.104'),
(1706, 'SubPackage Gallery Image [Family Room 2]Data has deleted successfully.', '2024-06-18 12:04:33', 1, 6, '27.34.66.104'),
(1707, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-18 12:04:36', 1, 6, '27.34.66.104'),
(1708, 'SubPackage Gallery Image [Family Room 3]Data has deleted successfully.', '2024-06-18 12:04:36', 1, 6, '27.34.66.104'),
(1709, 'SubPackage Gallery Image []Data has deleted successfully.', '2024-06-18 12:04:36', 1, 6, '27.34.66.104'),
(1710, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-18 12:05:05', 1, 3, '27.34.66.104'),
(1711, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-18 12:05:05', 1, 3, '27.34.66.104'),
(1712, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-18 12:05:05', 1, 3, '27.34.66.104'),
(1713, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-18 12:05:05', 1, 3, '27.34.66.104'),
(1714, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-18 12:05:05', 1, 3, '27.34.66.104'),
(1715, 'Sub Package Image [Premium Room]Data has added successfully.', '2024-06-18 12:05:05', 1, 3, '27.34.66.104'),
(1716, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-18 12:05:46', 1, 4, '27.34.66.104'),
(1717, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-18 12:17:24', 1, 4, '27.34.66.104'),
(1718, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-18 12:17:54', 1, 4, '27.34.66.104'),
(1719, 'Menu [Booking.com] Edit Successfully', '2024-06-18 12:28:17', 1, 4, '27.34.66.104'),
(1720, 'Menu [Tripadvisor] Edit Successfully', '2024-06-18 12:28:40', 1, 4, '27.34.66.104'),
(1721, 'Menu [Agoda] Edit Successfully', '2024-06-18 12:28:53', 1, 4, '27.34.66.104'),
(1722, 'Menu [Makemytrip] Edit Successfully', '2024-06-18 12:29:00', 1, 4, '27.34.66.104'),
(1723, 'Menu  [Message]Data has deleted successfully.', '2024-06-18 12:29:55', 1, 6, '27.34.66.104'),
(1724, 'Menu [Hotel Facilities] Edit Successfully', '2024-06-18 12:30:56', 1, 4, '27.34.66.104'),
(1725, 'Menu [About Hotel Goodwill] Edit Successfully', '2024-06-18 12:31:18', 1, 4, '27.34.66.104'),
(1726, 'Menu [Photo Gallery] Edit Successfully', '2024-06-18 12:31:29', 1, 4, '27.34.66.104'),
(1727, 'Menu [Message us] Edit Successfully', '2024-06-18 12:31:46', 1, 4, '27.34.66.104'),
(1728, 'Menu [Offers & Packages] CreatedData has added successfully.', '2024-06-18 12:32:32', 1, 3, '27.34.66.104'),
(1729, 'Changes on Article \'Lagankhel Bus Station\' has been saved successfully.', '2024-06-18 13:09:42', 1, 4, '188.253.97.121'),
(1730, 'Login: admin logged in.', '2024-06-18 13:12:58', 1, 1, '188.253.97.121'),
(1731, 'Changes on Article \'Lagankhel Bus Station\' has been saved successfully.', '2024-06-18 13:13:50', 1, 4, '188.253.97.121'),
(1732, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-18 13:22:14', 1, 4, '188.253.97.121'),
(1733, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-18 13:27:56', 1, 4, '188.253.97.121'),
(1734, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-18 13:33:27', 1, 4, '188.253.97.121'),
(1735, 'Login: admin logged in.', '2024-06-18 15:01:36', 1, 1, '188.253.97.121'),
(1736, 'Changes on Article \'Lagankhel Bus Station\' has been saved successfully.', '2024-06-18 15:05:40', 1, 4, '188.253.97.121'),
(1737, 'Changes on Article \'Pimbahal\' has been saved successfully.', '2024-06-18 15:06:52', 1, 4, '188.253.97.121'),
(1738, 'Changes on Article \'Central Zoo\' has been saved successfully.', '2024-06-18 15:07:32', 1, 4, '188.253.97.121'),
(1739, 'Changes on Article \'Mahaboudha Temple\' has been saved successfully.', '2024-06-18 15:08:45', 1, 4, '188.253.97.121'),
(1740, 'Changes on Article \'Golden Temple\' has been saved successfully.', '2024-06-18 15:09:27', 1, 4, '188.253.97.121'),
(1741, 'Changes on Article \'Labim Mall\' has been saved successfully.', '2024-06-18 15:10:42', 1, 4, '188.253.97.121'),
(1742, 'Login: admin logged in.', '2024-06-18 15:12:02', 1, 1, '27.34.66.104'),
(1743, 'Changes on Article \'Patan Royal  Palace\' has been saved successfully.', '2024-06-18 15:25:51', 1, 4, '188.253.97.121'),
(1744, 'Changes on Article \'Patan Royal  Palace\' has been saved successfully.', '2024-06-18 15:26:17', 1, 4, '188.253.97.121'),
(1745, 'Changes on Article \'Tribhuvan International<br/> Airport\' has been saved successfully.', '2024-06-18 15:27:03', 1, 4, '188.253.97.121'),
(1746, 'Changes on Article \'Tribhuvan International<br/> Airport\' has been saved successfully.', '2024-06-18 15:27:19', 1, 4, '188.253.97.121'),
(1747, 'Changes on Article \'Patan Durbar Square\' has been saved successfully.', '2024-06-18 15:28:10', 1, 4, '188.253.97.121'),
(1748, 'Changes on Article \'Patan Museum\' has been saved successfully.', '2024-06-18 15:29:05', 1, 4, '188.253.97.121'),
(1749, 'Changes on Article \'Patan Museum\' has been saved successfully.', '2024-06-18 15:29:35', 1, 4, '188.253.97.121'),
(1750, 'Login: admin logged in.', '2024-06-18 15:54:08', 1, 1, '113.199.249.35'),
(1751, 'Login: admin logged in.', '2024-06-18 16:27:19', 1, 1, '188.253.97.121'),
(1752, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-18 16:37:28', 1, 4, '113.199.249.35'),
(1753, 'Changes on Article \'Our Restaurant\' has been saved successfully.', '2024-06-18 16:38:19', 1, 4, '113.199.249.35'),
(1754, 'Changes on Article \'Meeting & Events\' has been saved successfully.', '2024-06-18 16:38:53', 1, 4, '113.199.249.35'),
(1755, 'Login: admin logged in.', '2024-06-18 17:20:06', 1, 1, '188.253.97.121'),
(1756, 'Changes on Config \'Hotel Goodwill, a perfect venue destination\' has been saved successfully.', '2024-06-18 17:21:00', 1, 4, '188.253.97.121'),
(1757, 'Login: admin logged in.', '2024-06-19 16:44:47', 1, 1, '188.253.99.60'),
(1758, 'Menu [Offers & Packages] Edit Successfully', '2024-06-19 16:50:36', 1, 4, '188.253.99.60'),
(1759, 'Offers [Swimmimg Platter] Edit Successfully', '2024-06-19 16:58:43', 1, 4, '188.253.99.60'),
(1760, 'Menu [Daycation] Edit Successfully', '2024-06-19 17:16:08', 1, 4, '188.253.99.60'),
(1761, 'Menu [Staycation] Edit Successfully', '2024-06-19 17:16:32', 1, 4, '188.253.99.60'),
(1762, 'Menu [Swimming Platter] Edit Successfully', '2024-06-19 17:16:54', 1, 4, '188.253.99.60'),
(1763, 'Menu [Daycation] Edit Successfully', '2024-06-19 17:25:56', 1, 4, '188.253.99.60'),
(1764, 'Menu [Staycation] Edit Successfully', '2024-06-19 17:26:50', 1, 4, '188.253.99.60'),
(1765, 'Menu [Swimming Platter] Edit Successfully', '2024-06-19 17:27:09', 1, 4, '188.253.99.60'),
(1766, 'Offers [Swimmimg Platter] Edit Successfully', '2024-06-19 17:33:25', 1, 4, '188.253.99.60'),
(1767, 'Offers [Daycation] Edit Successfully', '2024-06-19 17:34:14', 1, 4, '188.253.99.60'),
(1768, 'Offers [Daycation] Edit Successfully', '2024-06-19 17:34:37', 1, 4, '188.253.99.60'),
(1769, 'Offers [Daycation] Edit Successfully', '2024-06-19 17:34:57', 1, 4, '188.253.99.60'),
(1770, 'Offers [Staycation] Edit Successfully', '2024-06-19 17:36:51', 1, 4, '188.253.99.60'),
(1771, 'Offers [Staycation] Edit Successfully', '2024-06-19 17:37:11', 1, 4, '188.253.99.60'),
(1772, 'Login: admin logged in.', '2024-06-20 10:34:08', 1, 1, '188.253.99.60'),
(1773, 'User [Hotel   Goodwill] Edit Successfully', '2024-06-20 10:34:50', 1, 4, '188.253.99.60'),
(1774, 'Login: admin logged in.', '2024-06-20 10:37:24', 1, 1, '103.181.227.53'),
(1775, 'User [Hotel   Goodwill] Edit Successfully', '2024-06-20 10:37:44', 1, 4, '103.181.227.53'),
(1776, 'Login: superadmin logged in.', '2024-06-20 10:37:49', 1, 1, '103.181.227.53'),
(1777, 'Login: admin logged in.', '2024-06-20 11:36:16', 1, 1, '188.253.99.60'),
(1778, 'Login: admin logged in.', '2024-06-20 13:55:32', 1, 1, '27.34.66.22'),
(1779, 'Changes on Article \'Lagankhel Bus Station\' has been saved successfully.', '2024-06-20 13:58:23', 1, 4, '27.34.66.22'),
(1780, 'Changes on Article \'Lagankhel Bus Station\' has been saved successfully.', '2024-06-20 13:59:32', 1, 4, '27.34.66.22'),
(1781, 'Changes on Article \'Lagankhel Bus Station\' has been saved successfully.', '2024-06-20 14:00:27', 1, 4, '27.34.66.22'),
(1782, 'Changes on Article \'Lagankhel Bus Station\' has been saved successfully.', '2024-06-20 14:03:19', 1, 4, '27.34.66.22'),
(1783, 'Changes on Article \'Pimbahal\' has been saved successfully.', '2024-06-20 14:05:02', 1, 4, '27.34.66.22'),
(1784, 'Changes on Article \'Lagankhel Bus Station\' has been saved successfully.', '2024-06-20 14:05:34', 1, 4, '27.34.66.22'),
(1785, 'Changes on Article \'Pimbahal\' has been saved successfully.', '2024-06-20 14:06:36', 1, 4, '27.34.66.22'),
(1786, 'Login: admin logged in.', '2024-06-20 14:32:29', 1, 1, '188.253.99.60'),
(1787, 'Login: admin logged in.', '2024-06-20 15:43:37', 1, 1, '27.34.66.22'),
(1788, 'Login: admin logged in.', '2024-06-20 16:16:01', 1, 1, '27.34.66.22'),
(1789, 'Offers [Daycation] Edit Successfully', '2024-06-20 16:23:52', 1, 4, '27.34.66.22'),
(1790, 'Login: admin logged in.', '2024-06-20 16:56:21', 1, 1, '188.253.99.60'),
(1791, 'Offers [Swimmimg Platter] Edit Successfully', '2024-06-20 16:56:58', 1, 4, '188.253.99.60'),
(1792, 'Offers [Staycation] Edit Successfully', '2024-06-20 16:57:09', 1, 4, '188.253.99.60'),
(1793, 'Offers [Daycation] Edit Successfully', '2024-06-20 16:57:15', 1, 4, '188.253.99.60'),
(1794, 'Login: admin logged in.', '2024-06-20 17:36:39', 1, 1, '27.34.66.22'),
(1795, 'Login: admin logged in.', '2024-06-21 11:28:47', 1, 1, '27.34.66.1'),
(1796, 'Changes on Article \'Central Zoo\' has been saved successfully.', '2024-06-21 11:30:27', 1, 4, '27.34.66.1'),
(1797, 'Changes on Article \'Mahaboudha Temple\' has been saved successfully.', '2024-06-21 11:33:42', 1, 4, '27.34.66.1'),
(1798, 'Changes on Article \'Mahaboudha Temple\' has been saved successfully.', '2024-06-21 11:34:16', 1, 4, '27.34.66.1'),
(1799, 'Changes on Article \'Mahaboudha Temple\' has been saved successfully.', '2024-06-21 11:35:03', 1, 4, '27.34.66.1'),
(1800, 'Changes on Article \'Mahaboudha Temple\' has been saved successfully.', '2024-06-21 11:37:02', 1, 4, '27.34.66.1'),
(1801, 'Changes on Article \'Golden Temple\' has been saved successfully.', '2024-06-21 11:40:24', 1, 4, '27.34.66.1'),
(1802, 'Changes on Article \'Labim Mall\' has been saved successfully.', '2024-06-21 11:53:02', 1, 4, '27.34.66.1'),
(1803, 'Changes on Article \'Labim Mall\' has been saved successfully.', '2024-06-21 11:53:41', 1, 4, '27.34.66.1'),
(1804, 'Changes on Article \'Patan Royal  Palace\' has been saved successfully.', '2024-06-21 11:57:22', 1, 4, '27.34.66.1'),
(1805, 'Changes on Article \'Patan Royal  Palace\' has been saved successfully.', '2024-06-21 11:58:14', 1, 4, '27.34.66.1'),
(1806, 'Changes on Article \'Tribhuvan International Airport\' has been saved successfully.', '2024-06-21 12:02:15', 1, 4, '27.34.66.1'),
(1807, 'Changes on Article \'Tribhuvan International <br> Airport\' has been saved successfully.', '2024-06-21 12:02:46', 1, 4, '27.34.66.1'),
(1808, 'Changes on Article \'Patan Durbar Square\' has been saved successfully.', '2024-06-21 12:06:08', 1, 4, '27.34.66.1'),
(1809, 'Changes on Article \'Patan Museum\' has been saved successfully.', '2024-06-21 12:09:03', 1, 4, '27.34.66.1'),
(1810, 'Offers [Daycation] Edit Successfully', '2024-06-21 12:16:09', 1, 4, '27.34.66.1'),
(1811, 'Offers [Daycation] Edit Successfully', '2024-06-21 12:18:47', 1, 4, '27.34.66.1'),
(1812, 'Offers [Staycation] Edit Successfully', '2024-06-21 12:23:08', 1, 4, '27.34.66.1'),
(1813, 'Offers [Daycation] Edit Successfully', '2024-06-21 12:23:25', 1, 4, '27.34.66.1'),
(1814, 'Offers [Swimmimg Platter] Edit Successfully', '2024-06-21 12:24:04', 1, 4, '27.34.66.1'),
(1815, 'Offers [Swimmimg Platter] Edit Successfully', '2024-06-21 12:27:12', 1, 4, '27.34.66.1'),
(1816, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-21 12:59:52', 1, 4, '27.34.66.1'),
(1817, 'Login: superadmin logged in.', '2024-06-21 13:12:36', 1, 1, '103.181.227.53'),
(1818, 'Changes on Sub Package \' Studio Room\' has been saved successfully.', '2024-06-21 13:13:04', 1, 4, '103.181.227.53'),
(1819, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-21 13:13:22', 1, 4, '103.181.227.53'),
(1820, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-21 13:13:39', 1, 4, '103.181.227.53'),
(1821, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-21 13:13:52', 1, 4, '103.181.227.53'),
(1822, 'Login: admin logged in.', '2024-06-21 13:15:22', 1, 1, '27.34.66.1'),
(1823, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-21 13:16:17', 1, 4, '27.34.66.1'),
(1824, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-21 13:16:29', 1, 4, '27.34.66.1'),
(1825, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-21 13:16:39', 1, 4, '27.34.66.1'),
(1826, 'Changes on Sub Package \'Deluxe Room\' has been saved successfully.', '2024-06-21 13:18:26', 1, 4, '27.34.66.1'),
(1827, 'Changes on Sub Package \'Premium Room\' has been saved successfully.', '2024-06-21 13:18:55', 1, 4, '27.34.66.1'),
(1828, 'Changes on Sub Package \'Family Room\' has been saved successfully.', '2024-06-21 13:19:13', 1, 4, '27.34.66.1'),
(1829, 'Offers [Daycation] Edit Successfully', '2024-06-21 13:21:16', 1, 4, '27.34.66.1'),
(1830, 'Login: admin logged in.', '2024-06-23 11:16:09', 1, 1, '27.34.66.1'),
(1831, 'Changes on Article \'Mahaboudha Temple\' has been saved successfully.', '2024-06-23 11:17:28', 1, 4, '27.34.66.1'),
(1832, 'Login: admin logged in.', '2024-06-25 13:01:01', 1, 1, '188.253.100.161'),
(1833, 'Login: admin logged in.', '2024-06-25 13:29:36', 1, 1, '188.253.100.161'),
(1834, 'Changes on Article \'Wellness & Relaxation\' has been saved successfully.', '2024-06-25 13:30:31', 1, 4, '188.253.100.161'),
(1835, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-25 13:32:49', 1, 4, '188.253.100.161'),
(1836, 'Login: admin logged in.', '2024-06-25 16:32:44', 1, 1, '27.34.66.110'),
(1837, 'Changes on Article \'Experience\' has been saved successfully.', '2024-06-25 16:34:50', 1, 4, '27.34.66.110'),
(1838, 'Login: admin logged in.', '2024-06-25 17:09:28', 1, 1, '::1'),
(1839, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-25 17:10:03', 1, 4, '::1'),
(1840, 'Changes on Article \'About Us\' has been saved successfully.', '2024-06-25 17:10:58', 1, 4, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs_action`
--

CREATE TABLE `tbl_logs_action` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bgcolor` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_logs_action`
--

INSERT INTO `tbl_logs_action` (`id`, `title`, `icon`, `bgcolor`) VALUES
(1, 'Login', 'icon-sign-in', 'bg-blue'),
(2, 'Logout', 'icon-sign-out', 'primary-bg'),
(3, 'Add', 'icon-plus-circle', 'bg-green'),
(4, 'Edit', 'icon-edit', 'bg-blue-alt'),
(5, 'Copy', 'icon-copy', 'ui-state-default'),
(6, 'Delete', 'icon-clock-os-circle', 'bg-red');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mainservices`
--

CREATE TABLE `tbl_mainservices` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mainservices`
--

INSERT INTO `tbl_mainservices` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`) VALUES
(1, 0, 'spa', 'SPA', 'The Health club Kavre has spa, hot tub and a indoor swimming pool for your refreshment and relaxation.', '<p>\r\n	Get yourself pampered from the professional masseurs of &quot;The Himalayan Healers&quot;: a social entrepreneurship venture, and a a Healing Arts School and collection of Spa Boutiques, with branches in both Nepal and in the United States</p>\r\n', 0, 'about-us', 1, '', '', '', 0, '2023-09-03 12:49:59', '2023-10-30 14:38:42', 2, 1, 0x613a313a7b693a303b733a31343a224e464f374b2d706f6f6c2e6a7067223b7d, '', ''),
(3, 0, 'pool-jacuzzi', 'Pool & Jacuzzi', 'Pool & Jacuzzi', '<p>\r\n	Restaurant is spacious and comfortable and features spectacular views and treats you with large a selection of Chinese, Indian, Nepalese and Continental cuisines. The rustic mountain tavern decor, the cozy fireplace, the beckoning dance floor and of course the delightful choice of wines, cocktails and spirits along with fusion and jazz probably makes it the coziest bar at 7,200 ft.</p>\r\n', 0, '', 1, '', '', '', 0, '2023-09-03 14:08:35', '2023-09-03 14:08:35', 1, 1, 0x613a313a7b693a303b733a31353a226b416550352d706f2d6a752e6a7067223b7d, '', ''),
(4, 0, 'children-play-area-indoor-outdoor', 'Children Play Area Indoor & Outdoor', 'Children Play Area Indoor & Outdoor', '<p>\r\n	Nepal, is home to 10% of the world&#39;s birds which means 800 species of birds. Come see, if you can spot some of these birds in Nagarkot</p>\r\n', 0, '', 1, '', '', '', 0, '2023-09-04 13:12:47', '2023-10-16 14:42:54', 0, 1, 0x613a313a7b693a303b733a31383a2241664a41422d6368696c6472656e2e6a7067223b7d, '', ''),
(5, 0, 'yuvvyuvyui', 'yuvvyuvyui', 'buibu', '<p>\r\n	vyuvyvbyiu</p>\r\n', 1, 'tuyyuv', 1, '', '', '', 0, '2024-01-10 13:22:30', '2024-01-10 13:22:54', 3, 1, 0x613a313a7b693a303b733a32303a2267497674462d666163696c69746965732e6a7067223b7d, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `linksrc` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `parentOf` int(11) NOT NULL DEFAULT 0,
  `linktype` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `linksrc`, `parentOf`, `linktype`, `status`, `sortorder`, `added_date`, `type`, `icon`) VALUES
(20, 'About', 'about-us', 0, '0', 1, 2, '2024-06-06 15:49:16', 1, ''),
(21, 'Rooms & Suites', 'rooms-suites', 0, '0', 1, 3, '2024-06-06 15:50:06', 1, ''),
(22, 'Dining', 'dine', 0, '0', 1, 4, '2024-06-06 15:50:57', 1, ''),
(23, 'Hall', 'hall', 0, '0', 1, 5, '2024-06-06 15:51:23', 1, ''),
(24, 'Facilities', 'facilities-list', 0, '0', 1, 6, '2024-06-06 15:51:39', 1, ''),
(25, 'Gallery', 'gallery-list', 0, '0', 1, 7, '2024-06-06 15:52:24', 1, ''),
(26, 'Contact', 'contact-us', 0, '0', 1, 9, '2024-06-06 15:52:43', 1, ''),
(27, 'Family Room', 'family-room', 21, '0', 1, 14, '2024-06-06 15:53:55', 1, ''),
(28, 'Deluxe Room', 'deluxeroom', 21, '0', 1, 11, '2024-06-06 15:54:54', 1, ''),
(29, 'Premium Room', 'premium-room', 21, '0', 1, 12, '2024-06-06 15:55:32', 1, ''),
(31, 'About Hotel Goodwill', 'about-us', 0, '0', 1, 11, '2024-06-06 17:43:17', 2, ''),
(32, 'Photo Gallery', 'gallery-list', 0, '0', 1, 12, '2024-06-06 17:43:37', 2, ''),
(33, 'Hotel Facilities', 'facilities-list', 0, '0', 1, 13, '2024-06-06 17:43:54', 2, ''),
(34, 'Message us', 'contact-us', 0, '0', 1, 14, '2024-06-06 17:44:18', 2, ''),
(35, 'Local Attraction', '#', 0, '0', 1, 15, '2024-06-06 17:45:19', 3, ''),
(36, 'Events & Meetings', 'hall', 0, '0', 1, 16, '2024-06-06 17:46:03', 3, ''),
(37, 'Exclusive Dining', 'dine', 0, '0', 1, 17, '2024-06-06 17:46:26', 3, ''),
(40, 'Booking.com', 'https://www.booking.com/hotel/np/goodwill.en.html?aid=311984;label=goodwill-ecWqmy6KG*4UtWh6b5m7awS392888366083:pl:ta:p1:p2:ac:ap:neg:fi:tikwd-1913607', 0, '1', 1, 18, '2024-06-06 17:48:16', 4, ''),
(41, 'Tripadvisor', 'https://www.tripadvisor.com/Hotel_Review-g315764-d2323072-Reviews-Hotel_Goodwill-Patan_Lalitpur_Kathmandu_Valley_Bagmati_Zone_Central_Region.html', 0, '1', 1, 19, '2024-06-06 17:48:30', 4, ''),
(42, 'Agoda', 'https://www.agoda.com/oyo-235-hotel-goodwill-pvt-ltd_2/hotel/kathmandu-np.html?cid=1844104&ds=fpoWLjYh4BeQbhpl', 0, '1', 1, 20, '2024-06-06 17:50:22', 4, ''),
(43, 'Makemytrip', 'https://www.makemytrip.com/hotels-international/nepal/kathmandu-hotels/hotel_goodwill_pvt_ltd-details.html', 0, '1', 1, 21, '2024-06-06 17:50:54', 4, ''),
(44, 'Terms of Use', '#', 0, '0', 1, 22, '2024-06-06 17:52:13', 5, ''),
(45, 'Cookies', '#', 0, '0', 1, 23, '2024-06-06 17:52:23', 5, ''),
(46, 'Privacy Policy', '#', 0, '0', 1, 24, '2024-06-06 17:52:41', 5, ''),
(47, 'Home', 'home', 0, '0', 0, 1, '2024-06-07 10:38:53', 1, ''),
(48, 'Studio Room', 'studio-room', 21, '0', 1, 13, '2024-06-12 11:55:37', 1, ''),
(49, 'Offers & Packages', 'offer-list', 0, '0', 1, 8, '2024-06-17 13:32:39', 1, ''),
(50, 'Daycation', 'offer-details/daycation', 49, '0', 1, 1, '2024-06-17 13:33:32', 1, ''),
(51, 'Staycation', 'offer-details/staycation', 49, '0', 1, 2, '2024-06-17 13:34:44', 1, ''),
(52, 'Swimming Platter', 'offer-details/swimmimg-platter', 49, '0', 1, 3, '2024-06-17 13:35:40', 1, ''),
(53, 'Offers & Packages', 'daycation-package', 0, '0', 1, 25, '2024-06-18 12:32:32', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mlink`
--

CREATE TABLE `tbl_mlink` (
  `mod_class` varchar(50) NOT NULL,
  `m_url` tinytext NOT NULL,
  `act_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mlink`
--

INSERT INTO `tbl_mlink` (`mod_class`, `m_url`, `act_id`) VALUES
('Subpackage', 'deluxe-premium-room', 28),
('Subpackage', 'deluxe-room', 29),
('Subpackage', 'nagarkot-hall', 39),
('Subpackage', 'standard-room', 41),
('Subpackage', 'lalitpur-hall', 42),
('Subpackage', 'indrawati-bar', 43),
('Subpackage', 'library', 44),
('Article', 'experience', 11),
('Article', 'about-us', 16),
('Article', 'hall', 17),
('Article', 'dine', 18),
('Article', 'wellness-relaxation', 19),
('Package', 'rooms-suites', 16),
('Subpackage', 'studio-room', 47),
('Subpackage', 'family-room', 48),
('Subpackage', 'deluxeroom', 49),
('Subpackage', 'premium-room', 50),
('Article', 'daycation-package', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `icon_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `properties` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `parent_id`, `name`, `link`, `mode`, `icon_link`, `status`, `sortorder`, `added_date`, `properties`) VALUES
(1, 74, 'User Mgmt', 'user/list', 'user', 'icon-users', 1, 1, '0000-00-00', ''),
(2, 0, 'Menu Mgmt', 'menu/list', 'menu', 'icon-list', 1, 2, '0000-00-00', 'a:1:{s:5:\"level\";s:1:\"3\";}'),
(3, 0, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 1, 2, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"450\";s:9:\"imgheight\";s:3:\"350\";}'),
(4, 0, 'Slideshow Mgmt', 'slideshow/list', 'slideshow', 'icon-film', 1, 2, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1263\";s:9:\"imgheight\";s:3:\"600\";}'),
(5, 0, 'Gallery Mgmt', 'gallery/list', 'gallery', 'icon-picture-o', 1, 6, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"900\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(6, 0, 'News Mgmt', 'news/list', 'news', 'icon-list-alt', 0, 19, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(7, 0, 'Event Mgmt', 'events/list', 'events', 'icon-bullhorn', 0, 10, '0000-00-00', ''),
(8, 0, 'Advertisement Mgmt', 'advertisement/list', 'advertisement', 'icon-indent', 0, 4, '0000-00-00', 'a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),
(9, 0, 'Video Mgmt', 'video/list', 'video', 'icon-hdd-o', 1, 13, '0000-00-00', ''),
(10, 0, 'Poll Mgmt', 'poll/list', 'poll', 'icon-exchange', 0, 22, '0000-00-00', ''),
(11, 0, 'Social / OTA Mgmt', 'social/list', 'social', 'icon-google-plus', 1, 6, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:3:\"141\";s:9:\"imgheight\";s:2:\"13\";}'),
(12, 0, 'Setting Mgmt', 'setting/list', 'settings', 'icon-gear', 1, 21, '0000-00-00', ''),
(13, 12, 'Preference Mgmt', 'preference/list', 'preference', 'icon-gear', 1, 1, '0000-00-00', 'a:18:{s:8:\"imgwidth\";s:8:\"12312312\";s:9:\"imgheight\";s:2:\"12\";s:9:\"simgwidth\";s:2:\"12\";s:10:\"simgheight\";s:2:\"12\";s:10:\"fbimgwidth\";s:2:\"12\";s:11:\"fbimgheight\";s:2:\"12\";s:9:\"timgwidth\";s:2:\"12\";s:10:\"timgheight\";s:2:\"12\";s:9:\"gimgwidth\";s:2:\"12\";s:10:\"gimgheight\";s:2:\"12\";s:9:\"cimgwidth\";s:3:\"121\";s:10:\"cimgheight\";s:2:\"12\";s:9:\"oimgwidth\";s:2:\"12\";s:10:\"oimgheight\";s:2:\"12\";s:9:\"fimgwidth\";s:2:\"21\";s:10:\"fimgheight\";s:2:\"21\";s:10:\"ofimgwidth\";s:2:\"21\";s:11:\"ofimgheight\";s:2:\"12\";}'),
(14, 12, 'Office Info/Location', 'location/list', 'location', 'icon-gear', 1, 2, '0000-00-00', ''),
(15, 12, 'Modules Mgmt', 'module/list', 'module', 'icon-gear', 0, 3, '0000-00-00', ''),
(16, 12, 'Properties Mgmt', 'properties/list', 'properties', 'icon-gear', 1, 4, '0000-00-00', ''),
(17, 0, 'Testimonial', 'testimonial/list', 'testimonial', 'icon-list-alt', 1, 6, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:4:\"1001\";s:9:\"imgheight\";s:3:\"100\";}'),
(18, 0, 'Subscribers Mgmt', 'subscribers/list', 'subscribers', 'icon-comments', 0, 14, '2015-05-17', ''),
(19, 0, 'Offers Mgmt', 'offers/list', 'offers', 'icon-tags', 1, 18, '2015-05-20', 'a:4:{s:9:\"bimgwidth\";s:2:\"22\";s:10:\"bimgheight\";s:2:\"22\";s:8:\"imgwidth\";s:3:\"200\";s:9:\"imgheight\";s:3:\"200\";}'),
(20, 0, 'Services Mgmt', 'services/list', 'services', 'icon-exchange', 1, 5, '2015-08-09', 'a:2:{s:8:\"imgwidth\";s:2:\"48\";s:9:\"imgheight\";s:2:\"48\";}'),
(21, 0, 'Movies Mgmt', 'movies/list', 'movies', 'icon-list', 0, 15, '2015-10-30', ''),
(22, 0, 'Theaters', 'theaters/list', 'theaters', 'icon-film', 0, 17, '2015-11-01', ''),
(23, 25, 'Package Mgmt', 'package/list', 'package', 'icon-exchange', 1, 5, '2016-06-17', 'a:6:{s:8:\"imgwidth\";s:1:\"4\";s:9:\"imgheight\";s:3:\"350\";s:12:\"subbimgwidth\";s:2:\"11\";s:13:\"subbimgheight\";s:2:\"12\";s:11:\"subimgwidth\";s:2:\"13\";s:12:\"subimgheight\";s:2:\"14\";}'),
(24, 25, 'Features Mgmt', 'features/list', 'features', 'icon-gear', 1, 1, '2016-11-16', ''),
(25, 0, 'Package Mgmt', 'package/list', '', 'icon-bullhorn', 1, 4, '2016-11-16', ''),
(26, 0, 'Activity Mgmt', 'activity/list', 'activity', '\r\nicon-hand-o-left', 0, 7, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(27, 0, 'Blog Mgmt', 'blog/list', 'blog', '\r\n\r\n\r\n\r\nicon-list-alt', 0, 8, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"22\";s:9:\"imgheight\";s:2:\"22\";}'),
(28, 0, 'Popup', 'popup/list', 'popup', 'icon-list', 1, 20, '2020-02-13', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"300\";}'),
(29, 0, ' News/Events Mgmt', 'combinednews/list', 'combinednews', 'icon-tags', 0, 14, '2020-09-05', 'a:2:{s:8:\"imgwidth\";s:3:\"350\";s:9:\"imgheight\";s:3:\"240\";}'),
(30, 0, 'Product Mgmt', 'product/list', 'product', 'icon-list', 0, 1, '2021-11-25', ''),
(74, 0, 'Users', '', '', 'icon-users', 1, 1, '2021-10-03', ''),
(300, 0, 'FAQ', 'faq/list', 'faq', 'icon-list', 0, 8, '2023-08-31', ''),
(301, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 1, 8, '2023-08-29', 'a:2:{s:8:\"imgwidth\";s:2:\"23\";s:9:\"imgheight\";s:2:\"23\";}'),
(302, 0, 'Vacancy Mgmt', 'vacency/list', 'vacency', 'icon-list', 0, 7, '2023-08-28', ''),
(303, 0, 'Main service Mgt', 'mservices/list', 'mservice', 'icon-list', 0, 6, '2023-09-01', 'a:2:{s:8:\"imgwidth\";s:2:\"12\";s:9:\"imgheight\";s:2:\"12\";}'),
(304, 0, 'OTA Mgmt', 'ota/list', 'ota', 'icon-google-plus', 0, 12, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),
(305, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 0, 8, '2023-08-29', ''),
(306, 74, 'User Group', 'usergroup/list', 'usergroup', 'icon-gears', 1, 3, '2023-10-10', ''),
(309, 0, 'Download Mgmt', 'download/list', 'download', 'icon-gear', 1, 7, '2024-03-28', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nearby`
--

CREATE TABLE `tbl_nearby` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(1) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(1) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `distance` text NOT NULL,
  `maplink` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_nearby`
--

INSERT INTO `tbl_nearby` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`, `distance`, `maplink`) VALUES
(21, 0, 'patan-durbar-square', 'Patan Durbar Square', '', 'Patan Durbar Square is a historic and culturally rich area located in the heart of Patan (Lalitpur), one of the three ancient cities in the Kathmandu Valley, Nepal. It is renowned for its intricate architecture, artistic heritage, and significant historical landmarks. The square is dotted with numerous temples and shrines dedicated to Hindu and Buddhist deities. Notable temples include: Krishna Mandir, Bhimsen Temple, Vishwanath Temple, Hiranya Varna Mahavihar (Golden Temple).', 0, '', 1, '', '', '', 0, '2024-06-09 14:36:46', '2024-06-21 12:06:08', 1, 0, 0x613a313a7b693a303b733a32373a22657358644e2d706174616e6475726261727371756172652e6a7067223b7d, '', '', 'Distance: 1 km | By car: 6km (16 min) | By walking: 0.6km (10 min)', 'https://maps.app.goo.gl/k64Wk7Q4L9MkxpBg7'),
(20, 0, 'patan-museum', 'Patan Museum', 'Patan Museum', '<p>\r\n	The Patan Museum is a renowned cultural institution located in Patan Durbar Square, Lalitpur, Nepal is included in the Kathmandu Valley UNESCO World Heritage Sites, recognized for its cultural and historical importance. It is housed within the historic palace complex of the former Malla kings, making it a significant site for both its architectural beauty and its rich collection of artifacts.</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-09 14:36:26', '2024-06-21 12:09:03', 0, 0, 0x613a313a7b693a303b733a32313a2249306f56722d706174616e6d757365756d2e6a7067223b7d, '', '', 'Distance: 1 km | By car: 6km (16 min) | By walking: 0.6km (10 min)', 'https://maps.app.goo.gl/LzFddprnJMVeWdUr5'),
(19, 0, 'tribhuvan-international-airport', 'Tribhuvan International <br> Airport', '', '<p>\r\n	Tribhuvan International Airport (TIA) is the primary international airport serving Kathmandu, the capital city of Nepal. The airport is named in honor of King Tribhuvan, the monarch who played a pivotal role in the political changes that led to the establishment of democracy in Nepal in the early 1950s.</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-09 14:35:47', '2024-06-21 12:02:46', 2, 0, 0x613a313a7b693a303b733a31373a22314d7a72652d616972706f72742e6a7067223b7d, '', '', 'Distance: 5.9 km | By car: 6km (16 min) | By walking: - 5.6km (1hr 20min))', 'https://maps.app.goo.gl/qn9fDZS5Ka1GaVt86'),
(22, 0, 'patan-royal-palace', 'Patan Royal  Palace', '', '<p>\r\n	Patan Royal Palace, also known as Patan Durbar Square, is a significant historical and cultural landmark in Lalitpur, Nepal. With its majestic architecture and historical significance, stands as a testament to the rich cultural heritage of Nepal and remains a must-visit destination for anyone interested in the history and culture.</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-14 15:10:40', '2024-06-21 11:58:14', 3, 0, 0x613a313a7b693a303b733a32363a2268787178312d706174616e726f79616c70616c6163652e6a7067223b7d, '', '', 'Distance: 1 km | By car: 1km (5 min) | By walking: 0.6km (10 min)', 'https://maps.app.goo.gl/1j9wZqrhSUnRvkYh7'),
(23, 0, 'golden-temple', 'Golden Temple', '', '<p>\r\n	The Golden Temple&nbsp;also known as Hiranya Varna Mahavihar, is a significant Buddhist monastery is located in the historic city of Patan, which is known for its rich cultural heritage and numerous temples, palaces, and traditional Newari architecture. The temple is situated in the heart of Patan, making it easily accessible to visitors exploring the area. According to legend, it was founded by King Bhaskara Varma in the 12th century. However, there are indications that the site could date back to as early as the 5th century.</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-14 15:24:56', '2024-06-21 11:40:24', 5, 0, 0x613a313a7b693a303b733a32323a2255615354322d676f6c64656e74656d706c652e6a7067223b7d, '', '', 'Distance: 1.3 km | By car: 1.3km (6 min) | By walking: 1.2km (16 min)', 'https://maps.app.goo.gl/GXDfdRNEjCfxDR3Y7'),
(24, 0, 'mahaboudha-temple', 'Mahaboudha Temple', '', '<p>\r\n	The Mahabouddha Temple, also known as the Temple of a Thousand Buddhas, is a significant historical and religious site located in Patan, Lalitpur, Nepal. This temple is renowned for its intricate terracotta artwork and its architectural beauty. The architecture is a stunning example of craftsmanship,blending Newari artistic skills with traditional Buddhist architectural styles. It stands as a testament to the advanced level of artistic and architectural development in the Kathmandu Valley during that era.</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-14 15:25:35', '2024-06-23 11:17:28', 6, 0, 0x613a313a7b693a303b733a32303a226f58684f6e2d6d616861626f756468612e6a7067223b7d, '', '', 'Distance: 350 m | By car: 0.3km (2 min) | By walking: 0.3km (4 min)', 'https://maps.app.goo.gl/SzyaeaMW6kesUvEe8'),
(25, 0, 'central-zoo', 'Central Zoo', '', '<p>\r\n	Central Zoo, located in Jawalakhel, Lalitpur, Nepal, is the oldest and only zoo in the country. Established in 1932 by Rana Prime Minister Juddha Shumsher Jang Bahadur Rana, the zoo originally served as a private collection of animals. It was later opened to the public in 1956.</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-14 15:26:26', '2024-06-21 11:30:27', 7, 0, 0x613a313a7b693a303b733a31333a224f627742782d7a6f6f2e6a7067223b7d, '', '', 'Distance: 1.8 km | By car: 1.8km (6 min) | By walking: 1.9km (26 min)', 'https://maps.app.goo.gl/mETrbQykz5j6JiHm8'),
(26, 0, 'labim-mall', 'Labim Mall', '', '<p>\r\n	Labim Mall is one of the premier shopping destinations, stands out as a key landmark in Lalitpur, offering a blend of shopping, dining, and entertainment that caters to a wide range of preferences and needs. Labim Mall provides ample parking space for visitors, ensuring convenience for those driving to the mall. It is designed to be accessible, with facilities like elevators, escalators, and ramps to accommodate all visitors, including those with disabilities. It also frequently hosts events, promotional activities, and cultural programs, making it a lively and dynamic place to visit.</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-14 15:27:27', '2024-06-21 11:53:41', 4, 0, 0x613a313a7b693a303b733a32303a2250454737372d6c6162696d6d6168616c2e6a7067223b7d, '', '', 'Distance: 2.2 km | By car: 1.9km (7 min) | By walking: 1.8km (24 min)', 'https://maps.app.goo.gl/RdRY2LKy8sYS5UrVA'),
(27, 0, 'pimbahal', 'Pimbahal', '', '<p>\r\n	Pimbahal is a notable area located in Lalitpur and known for its cultural, historical, and architectural significance. One of the main attractions in Pimbahal is the Pimbahal Pond, a historic water reservoir. It is an important landmark and holds cultural and historical value for the local community. The pond is surrounded by traditional Newari architecture, adding to its charm.</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-14 15:27:48', '2024-06-20 14:06:36', 8, 0, 0x613a313a7b693a303b733a31383a223164774a6d2d70696d626168616c2e6a7067223b7d, '', '', 'Distance: 1.6 km | By car: 1.5km (6 min) | By walking: 1.5km (20 min)', 'https://maps.app.goo.gl/zCGTPvdsShEydZry7'),
(28, 0, 'lagankhel-bus-station', 'Lagankhel Bus Station', '', '<p>\r\n	Proximity to Patan Durbar Square, Lagankhel Bus Station is a major transportation hub. It serves as a key point for buses and other public transport vehicles traveling to various destinations within the Kathmandu Valley and beyond. The bus station is a bustling area with a high volume of daily commuters and is known for its convenient location near various markets, shops, and residential areas.</p>\r\n', 0, '', 1, '', '', '', 0, '2024-06-14 15:28:21', '2024-06-20 14:05:34', 9, 0, 0x613a313a7b693a303b733a31373a2248654c72362d6275737061726b2e6a7067223b7d, '', '', 'Distance: 650m | By car: 0.6km (3 min) | By walking: 0.4km (6 min)', 'https://maps.app.goo.gl/LYhf97jTWtrDfMuf8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `brief` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `offer_date` varchar(20) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `multiimage` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_offers`
--

INSERT INTO `tbl_offers` (`id`, `slug`, `title`, `image`, `list_image`, `adults`, `children`, `linksrc`, `linktype`, `rate`, `discount`, `brief`, `content`, `status`, `added_date`, `sortorder`, `type`, `offer_date`, `start_date`, `multiimage`) VALUES
(2, 'daycation', 'Daycation', '', 'K8kDX-day.jpg', 2, 0, 'https://mayurstay.com/mountkailash/index.html', 1, 33, 10, 'The price is Rs.3500 only for Couples.<br>\r\nValid from 9 am - 5 pm only.<br>\r\n⁠You will need to make an online payment to confirm your booking.\r\n\r\n', '<ul>\r\n	<li>\r\n		<span style=\"color:#daa520;\"><span style=\"font-size:16px;\"><strong>The price is Rs.3500 only for Couples.</strong></span></span></li>\r\n	<li>\r\n		<span style=\"color:#daa520;\"><span style=\"font-size:16px;\"><strong>Valid from 9 am - 5 pm only.</strong></span></span></li>\r\n	<li>\r\n		<span style=\"color:#daa520;\"><span style=\"font-size:16px;\"><strong>⁠You will need to make an online payment to confirm your booking.</strong></span></span></li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>Daycation Package includes:</strong></p>\r\n<ul>\r\n	<li>\r\n		⁠Welcome Drinks</li>\r\n	<li>\r\n		10% Discount on Restaurant and Bar</li>\r\n	<li>\r\n		⁠Accommodation in Deluxe Rooms</li>\r\n	<li>\r\n		⁠Complimentary Access to Swimming Pool</li>\r\n	<li>\r\n		⁠Free Wi-Fi &amp; Parking</li>\r\n</ul>\r\n', 1, '2024-06-19 11:15:11', 1, 3, '2025-06-19', '2024-06-19', 'a:0:{}'),
(3, 'staycation', 'Staycation', '', 'utRn0-stay.jpg', 3, 0, '#', 0, 5, 3, 'The Price is Rs 2700 only per person<br>\r\nThe package is for couples only that is Rs 5400 for couples.<br>\r\n⁠You will need to make an online payment to confirm your booking.\r\n\r\n', '<ul>\r\n	<li>\r\n		<span style=\"color:#daa520;\"><span style=\"font-size:16px;\"><strong>The Price is Rs 2700 only per person</strong></span></span></li>\r\n	<li>\r\n		<span style=\"color:#daa520;\"><span style=\"font-size:16px;\"><strong>The package is for couples only that is Rs 5400 for couples.</strong></span></span></li>\r\n	<li>\r\n		<span style=\"color:#daa520;\"><span style=\"font-size:16px;\"><strong>⁠You will need to make an online payment to confirm your booking.</strong></span></span></li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>Staycation Package includes:</strong></p>\r\n<ul>\r\n	<li>\r\n		Welcome Drinks</li>\r\n	<li>\r\n		10% Discount on Restaurant and Bar</li>\r\n	<li>\r\n		⁠Accommodation in Premium &amp; Deluxe Rooms</li>\r\n	<li>\r\n		Dinner OR Breakfast for Two (Choose any one)</li>\r\n	<li>\r\n		Complimentary Access to Swimming Pool</li>\r\n	<li>\r\n		Free Wi-Fi &amp; Parking</li>\r\n</ul>\r\n', 1, '2024-06-19 12:21:36', 2, 3, '2025-06-19', '2024-06-19', 'a:0:{}'),
(4, 'swimmimg-platter', 'Swimmimg Platter', '', 'E0xAb-swimming.jpg', 4, 0, '#', 0, 33, 2, 'Coming Soon', '<p>\r\n	Coming Soon</p>\r\n', 1, '2024-06-19 12:22:03', 3, 3, '2025-06-19', '2024-06-19', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_child`
--

CREATE TABLE `tbl_offer_child` (
  `offer_id` int(11) NOT NULL,
  `offer_pax` varchar(200) NOT NULL,
  `offer_usd` varchar(10) NOT NULL,
  `offer_inr` varchar(10) NOT NULL,
  `offer_npr` varchar(10) NOT NULL,
  `offer_no` int(11) NOT NULL,
  `multi_offer_title` varchar(255) NOT NULL,
  `multi_offer_npr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ota`
--

CREATE TABLE `tbl_ota` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ota`
--

INSERT INTO `tbl_ota` (`id`, `title`, `image`, `icon`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(7, 'booking', 'guqcq-bo.png', '', '#', 1, 1, ''),
(8, 'agoda', '8fj3b-ag.png', '', '#', 1, 2, ''),
(9, 'expedia', 'hhqsu-ex.png', '', '#', 1, 3, ''),
(10, 'tripadvisor', 'qw86F-ta.png', '', '#', 1, 4, ''),
(11, 'Make My Trip', 'sFzjy-ma.png', '', '#', 1, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`id`, `slug`, `title`, `sub_title`, `image`, `header_image`, `banner_image`, `detail`, `content`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`) VALUES
(1, 'rooms-suites', 'Rooms & Suites', 'Discover Our Best Offers', '', '', 'a:1:{i:0;s:16:\"BgKTD-family.jpg\";}', '', '', '', '', '', 1, 1, '2024-06-12 12:16:37', '2024-06-12 13:38:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_sub`
--

CREATE TABLE `tbl_package_sub` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sub_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image4` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `feature` blob NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `facility_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_room` int(11) NOT NULL,
  `currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `people_qnty` int(11) NOT NULL,
  `onep_price` int(11) NOT NULL,
  `twop_price` int(11) NOT NULL,
  `threep_price` int(11) NOT NULL,
  `oneb_price` int(11) NOT NULL,
  `twob_price` int(11) NOT NULL,
  `threeb_price` int(11) NOT NULL,
  `extra_bed` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serve` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theatre_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class_room_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shape` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `round_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `clusture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cocktail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seats` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` tinyint(2) NOT NULL DEFAULT 0,
  `below_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `seminar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `meeting` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `events` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `conference` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catering` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `celebration` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `organic_food` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `occupancy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `service` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `live_music` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bed` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `room_size` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `room_service` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `airport_pickup` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `private_balcony` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `checkinout` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rojai_room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_package_sub`
--

INSERT INTO `tbl_package_sub` (`id`, `slug`, `title`, `sub_title`, `detail`, `image`, `header_image`, `image2`, `image3`, `image4`, `feature`, `content`, `facility_title`, `number_room`, `currency`, `discount`, `people_qnty`, `onep_price`, `twop_price`, `threep_price`, `oneb_price`, `twob_price`, `threeb_price`, `extra_bed`, `short_title`, `time`, `location`, `serve`, `theatre_style`, `class_room_style`, `shape`, `round_table`, `clusture`, `cocktail`, `seats`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`, `below_content`, `seminar`, `meeting`, `events`, `conference`, `catering`, `celebration`, `organic_food`, `occupancy`, `view`, `size`, `service`, `live_music`, `bed`, `room_size`, `room_service`, `airport_pickup`, `private_balcony`, `checkinout`, `rojai_room_id`) VALUES
(47, 'studio-room', ' Studio Room', '', 'Step into a world of sophistication with our Studio Room—ideal for both solace and socializing. Embrace the seamless blend of style and functionality; a haven for the modern traveler. Solo or duo, your studio sanctuary is designed for unforgettable experiences.\r\n', 'a:1:{i:0;s:17:\"gy8Ju-deluxe7.jpg\";}', '', 'PszsW-studio.png', '', '', 0x613a313a7b693a3132303b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a393a7b693a303b733a333a22313239223b693a313b733a333a22313235223b693a323b733a333a22313232223b693a333b733a333a22313238223b693a343b733a333a22313237223b693a353b733a333a22313236223b693a363b733a333a22313234223b693a373b733a333a22313233223b693a383b733a333a22313231223b7d7d7d, '<div class=\"column two-third no-margin-bottom\">\r\n	<h2>\r\n		Embrace *chic comfort* in our Studio Room&mdash;*your stylish urban oasis*.</h2>\r\n	<p>\r\n		Step into a world of sophistication with our Studio Room&mdash;ideal for both solace and socializing. Embrace the seamless blend of style and functionality; a haven for the modern traveler. Solo or duo, your studio sanctuary is designed for unforgettable experiences.</p>\r\n	<div class=\"divider10\">\r\n		&nbsp;</div>\r\n	<h3>\r\n		Discover all the awesome details:</h3>\r\n	<ul>\r\n		<li>\r\n			Welcome drink (non-alcoholic) on arrival</li>\r\n		<li>\r\n			Tea/Coffee maker in room with a sachet</li>\r\n		<li>\r\n			Iron and Ironing board in the room</li>\r\n		<li>\r\n			Bathroom with a spacious bathtub and walk-in-shower</li>\r\n		<li>\r\n			Two mineral water bottles (1000ml) every day in the room</li>\r\n	</ul>\r\n	<div class=\"divider20\">\r\n		&nbsp;</div>\r\n	<div class=\"divider30\">\r\n		&nbsp;</div>\r\n</div>\r\n', '', 0, 'USD', 0, 0, 50, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 3, '2024-06-12 12:43:28', '2024-06-21 13:13:04', 1, '', '', '', '', '', '', '', '', '2 Pax', '', '', '', '', 'Single/Double', '100 sq.ft', '', '', '', '', 621),
(48, 'family-room', 'Family Room', '', 'Our Family Room (Quad) is a spacious sanctuary—where comfort meets connection for the whole family. Designed with families in mind, it’s a place to unwind and bond, with ample room for everyone. Cherish every moment together in a setting that’s as welcoming as it is luxurious.', 'a:1:{i:0;s:18:\"DRDNS-premium3.jpg\";}', '', '7x7KL-family.jpg', '', '', 0x613a313a7b693a3132303b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a393a7b693a303b733a333a22313239223b693a313b733a333a22313238223b693a323b733a333a22313235223b693a333b733a333a22313234223b693a343b733a333a22313232223b693a353b733a333a22313237223b693a363b733a333a22313236223b693a373b733a333a22313233223b693a383b733a333a22313231223b7d7d7d, '<div class=\"column two-third no-margin-bottom\">\r\n	<h2>\r\n		Family Room (Quad)&mdash;your clan&rsquo;s cozy corner. A place where laughter and comfort come together.</h2>\r\n	<p>\r\n		Our Family Room (Quad) is a spacious sanctuary&mdash;where comfort meets connection for the whole family. Designed with families in mind, it&rsquo;s a place to unwind and bond, with ample room for everyone. Cherish every moment together in a setting that&rsquo;s as welcoming as it is luxurious.</p>\r\n	<div class=\"divider10\">\r\n		&nbsp;</div>\r\n	<h3>\r\n		Discover all the awesome details:</h3>\r\n	<ul>\r\n		<li>\r\n			Welcome drink (non-alcoholic) on arrival</li>\r\n		<li>\r\n			Tea/Coffee maker in room with a sachet</li>\r\n		<li>\r\n			Iron and Ironing board in the room</li>\r\n		<li>\r\n			Bathroom with a spacious bathtub and walk-in-shower</li>\r\n		<li>\r\n			Two mineral water bottles (1000ml) every day in the room</li>\r\n	</ul>\r\n	<div class=\"divider20\">\r\n		&nbsp;</div>\r\n	<div class=\"divider30\">\r\n		&nbsp;</div>\r\n</div>\r\n', '', 0, 'USD', 0, 0, 90, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, '2024-06-12 14:19:03', '2024-06-21 13:19:13', 1, '', '', '', '', '', '', '', '', '3 Pax', '', '', '', '', 'Quad', '360 sq.ft', '', '', '', '', 623),
(49, 'deluxeroom', 'Deluxe Room', '', 'Savor the blend of luxury and versatility in our Deluxe Rooms—tailored for every traveler. Whether you’re solo, paired, or a trio, experience elegance that adapts to your needs.\r\n', 'a:1:{i:0;s:17:\"Ypu0H-deluxe2.jpg\";}', '', 'VW2Kn-deluxebanner.jpg', '', '', 0x613a313a7b693a3132303b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a393a7b693a303b733a333a22313239223b693a313b733a333a22313238223b693a323b733a333a22313235223b693a333b733a333a22313234223b693a343b733a333a22313237223b693a353b733a333a22313236223b693a363b733a333a22313233223b693a373b733a333a22313232223b693a383b733a333a22313231223b7d7d7d, '<div class=\"column two-third no-margin-bottom\">\r\n	<h2>\r\n		Deluxe Rooms&mdash;where comfort meets choice. Whether you&rsquo;re flying solo or with company, indulge in tailored luxury.</h2>\r\n	<p>\r\n		Savor the blend of luxury and versatility in our Deluxe Rooms&mdash;tailored for every traveler. Whether you&rsquo;re solo, paired, or a trio, experience elegance that adapts to your needs.</p>\r\n	<div class=\"divider10\">\r\n		&nbsp;</div>\r\n	<h3>\r\n		Discover all the awesome details:</h3>\r\n	<ul>\r\n		<li>\r\n			Welcome drink (non-alcoholic) on arrival</li>\r\n		<li>\r\n			Tea/Coffee maker in room with a sachet</li>\r\n		<li>\r\n			Iron and Ironing board in the room</li>\r\n		<li>\r\n			Bathroom with a spacious bathtub and walk-in-shower</li>\r\n		<li>\r\n			Two mineral water bottles (1000ml) every day in the room</li>\r\n	</ul>\r\n	<div class=\"divider20\">\r\n		&nbsp;</div>\r\n	<div class=\"divider30\">\r\n		&nbsp;</div>\r\n</div>\r\n', '', 0, 'USD', 0, 0, 60, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 2, '2024-06-12 15:38:06', '2024-06-21 13:18:26', 1, '', '', '', '', '', '', '', '', '2 Pax', '', '', '', '', 'Single/Twin/Double/Triple', '180 sq.ft.', '', '', '', '', 446),
(50, 'premium-room', 'Premium Room', '', 'Elevate your stay in our Premium Rooms—a symphony of style and serenity for singles, twins, or triples. Indulge in bespoke luxury; every detail curated for comfort beyond compare.\r\n', 'a:1:{i:0;s:18:\"d9CUj-premium1.jpg\";}', '', 'VhcYF-premiumbanner.jpg', '', '', 0x613a313a7b693a3132303b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a393a7b693a303b733a333a22313239223b693a313b733a333a22313238223b693a323b733a333a22313235223b693a333b733a333a22313234223b693a343b733a333a22313232223b693a353b733a333a22313237223b693a363b733a333a22313236223b693a373b733a333a22313231223b693a383b733a333a22313233223b7d7d7d, '<div class=\"column two-third no-margin-bottom\">\r\n	<h2>\r\n		Premium Rooms&mdash;a touch of exclusivity for every guest. Whether alone, with a friend, or family, immerse in unparalleled luxury.</h2>\r\n	<p>\r\n		Elevate your stay in our Premium Rooms&mdash;a symphony of style and serenity for singles, twins, or triples. Indulge in bespoke luxury; every detail curated for comfort beyond compare.</p>\r\n	<div class=\"divider10\">\r\n		&nbsp;</div>\r\n	<h3>\r\n		Discover all the awesome details:</h3>\r\n	<ul>\r\n		<li>\r\n			Welcome drink (non-alcoholic) on arrival</li>\r\n		<li>\r\n			Tea/Coffee maker in room with a sachet</li>\r\n		<li>\r\n			Iron and Ironing board in the room</li>\r\n		<li>\r\n			Bathroom with a spacious bathtub and walk-in-shower</li>\r\n		<li>\r\n			Two mineral water bottles (1000ml) every day in the room</li>\r\n	</ul>\r\n	<div class=\"divider20\">\r\n		&nbsp;</div>\r\n	<div class=\"divider30\">\r\n		&nbsp;</div>\r\n</div>\r\n', '', 0, 'USD', 0, 0, 75, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2024-06-12 15:42:01', '2024-06-21 13:18:55', 1, '', '', '', '', '', '', '', '', '2 Pax', '', '', '', '', 'Single/Twin/Double/Triple', '220 sq.ft', '', '', '', '', 622);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup`
--

CREATE TABLE `tbl_popup` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_popup`
--

INSERT INTO `tbl_popup` (`id`, `title`, `date1`, `date2`, `image`, `source`, `linktype`, `linksrc`, `position`, `status`, `sortorder`, `type`, `slug`) VALUES
(1, 'sdad', '2023-09-03', '2023-09-21', 'a:1:{i:0;s:18:\"V8G5t-82861346.jpg\";}', '', '0', 'about-us', 1, 0, 1, 1, 'sdad'),
(2, 'staycation', '2024-01-01', '2025-08-31', 'a:1:{i:0;s:15:\"HFvWz-popup.jpg\";}', '', '0', '#', 1, 0, 2, 1, 'staycation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `img_thumb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img_jpg` varchar(255) NOT NULL,
  `img_png` varchar(255) NOT NULL,
  `img_svg` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  `modified_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `title`, `content`, `img_thumb`, `img_jpg`, `img_png`, `img_svg`, `status`, `sortorder`, `added_date`, `modified_date`) VALUES
(2, 'test', 'test ', '<p>\r\n	dfcgvhhjbk</p>\r\n', '', '', '', '', 1, 1, '2021-11-24 12:47:12', '2021-11-24 12:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_price`
--

CREATE TABLE `tbl_room_price` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `one_person` int(11) NOT NULL,
  `two_person` int(11) NOT NULL,
  `three_person` int(11) NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `brief` varchar(250) NOT NULL,
  `meta_title` tinyint(4) NOT NULL,
  `meta_keywords` int(11) NOT NULL,
  `meta_description` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `slug`, `title`, `sub_title`, `image`, `icon`, `linksrc`, `linktype`, `content`, `status`, `added_date`, `sortorder`, `type`, `brief`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(78, 'fire-extinguisher', 'Fire Extinguisher', 'Fire Extinguisher', 'a:1:{i:0;s:27:\"QoOHF-fire-extinguisher.png\";}', '', '', 0, '', 1, '2024-06-09 17:22:57', 5, 0, '', 0, 0, 0),
(76, 'elevator', 'Elevator', 'Elevator', 'a:1:{i:0;s:18:\"uyulH-elevator.png\";}', '', '', 0, '', 1, '2024-06-09 17:22:21', 4, 0, '', 0, 0, 0),
(75, 'smart-key', 'Smart Key', 'Smart Key', 'a:1:{i:0;s:13:\"BU9xi-key.png\";}', '', '', 0, '<p>\r\n	<span style=\"color: rgb(77, 77, 77); font-family: OptimaLTPro-Roman; font-size: 16px;\">Smart Access, Seamless Security.</span></p>\r\n', 1, '2024-06-09 17:22:06', 22, 0, '', 0, 0, 0),
(74, 'free-on-site-parking', 'Free On-site Parking', 'Free On-site Parking', 'a:1:{i:0;s:17:\"K4Ahq-parking.png\";}', '', '', 0, '<p>\r\n	<span style=\"color: rgb(77, 77, 77); font-family: OptimaLTPro-Roman; font-size: 16px;\">Parking Made Easy, Just for You</span></p>\r\n', 1, '2024-06-09 17:21:49', 18, 0, '', 0, 0, 0),
(73, 'bar-counter', 'Bar Counter', 'Bar Counter', 'a:1:{i:0;s:21:\"jLvXc-bar-counter.png\";}', '', '', 0, '', 1, '2024-06-09 17:21:29', 3, 0, '', 0, 0, 0),
(72, 'card-accepted', 'Card Accepted', 'Card Accepted', 'a:1:{i:0;s:21:\"HQPQV-credit-card.png\";}', '', '', 0, '', 1, '2024-06-09 17:21:09', 15, 0, '', 0, 0, 0),
(71, '24-hour-front-desk', '24-Hour Front Desk', 'Front Desk', 'a:1:{i:0;s:26:\"Ib1VW-information-desk.png\";}', '', '', 0, '', 1, '2024-06-09 17:20:51', 2, 0, '', 0, 0, 0),
(70, 'air-conditioner', 'Air Conditioner', 'Air Conditioner', 'a:1:{i:0;s:25:\"LeWzi-air-conditioner.png\";}', '', '', 0, '', 1, '2024-06-09 17:20:36', 1, 0, '', 0, 0, 0),
(69, 'house-keeping', 'House Keeping', 'House Keeping', 'a:1:{i:0;s:23:\"WprXq-cleaning-cart.png\";}', '', '', 0, '', 1, '2024-06-09 17:20:15', 0, 0, '', 0, 0, 0),
(86, '24-hour-security', '24 Hour Security', '', 'a:1:{i:0;s:15:\"dzMXb-guard.png\";}', '', '', 0, '', 1, '2024-06-17 14:06:42', 11, 0, '', 0, 0, 0),
(87, 'cctv-cameras', 'CCTV Cameras', '', 'a:1:{i:0;s:25:\"fSmI0-security-camera.png\";}', '', '', 0, '', 1, '2024-06-17 14:06:58', 12, 0, '', 0, 0, 0),
(67, 'free-wifi-internet', 'Free WiFi Internet', 'WiFi Internet', 'a:1:{i:0;s:14:\"1WBd0-wifi.png\";}', '', '', 0, '<p>\r\n	<span style=\"color: rgb(77, 77, 77); font-family: OptimaLTPro-Roman; font-size: 16px;\">Stay connected, seamlessly.</span></p>\r\n', 1, '2024-06-09 17:19:30', 19, 0, '', 0, 0, 0),
(66, 'safety-deposit', 'Safety Deposit', 'Safe Box', 'a:1:{i:0;s:16:\"rgBDn-locker.png\";}', '', '', 0, '<p>\r\n	<span style=\"color: rgb(77, 77, 77); font-family: OptimaLTPro-Roman; font-size: 16px;\">Secure peace of mind, lock away worries.</span></p>\r\n', 1, '2024-06-09 17:19:13', 17, 0, '', 0, 0, 0),
(65, 'multi-cuisine', 'Multi Cuisine', 'Multi Cuisine', 'a:1:{i:0;s:17:\"JQess-service.png\";}', '', '', 0, '<p>\r\n	<span style=\"color: rgb(77, 77, 77); font-family: OptimaLTPro-Roman; font-size: 16px;\">Savor the extraordinary, taste perfection</span></p>\r\n', 1, '2024-06-09 17:18:45', 20, 0, '', 0, 0, 0),
(64, 'aqua-swimming-pool', 'Aqua Swimming Pool', 'Swimming Pool', 'a:1:{i:0;s:14:\"SO1S0-pool.png\";}', '', '', 0, '<p>\r\n	<span style=\"color: rgb(77, 77, 77); font-family: OptimaLTPro-Roman; font-size: 16px;\">Where every stroke feels like a getaway</span></p>\r\n', 1, '2024-06-09 17:18:23', 23, 0, '', 0, 0, 0),
(63, 'room-service', 'Room Service', 'Room Service', 'a:1:{i:0;s:15:\"gqGkO-stars.png\";}', '', '', 0, '<p>\r\n	<span style=\"color: rgb(77, 77, 77); font-family: OptimaLTPro-Roman; font-size: 16px;\">Exceptional service, right at your fingertips.</span></p>\r\n', 1, '2024-06-09 17:18:03', 21, 0, '', 0, 0, 0),
(79, 'events-exhibitions', 'Events & Exhibitions', 'Events & Exhibitions', 'a:1:{i:0;s:20:\"sozoZ-exhibition.png\";}', '', '', 0, '', 1, '2024-06-09 17:23:19', 6, 0, '', 0, 0, 0),
(80, 'hot-cold-shower', 'Hot & Cold Shower', 'Hot & Cold Water', 'a:1:{i:0;s:19:\"mM0Qe-water-tap.png\";}', '', '', 0, '', 1, '2024-06-09 17:23:36', 7, 0, '', 0, 0, 0),
(85, 'television', 'Television', '', 'a:1:{i:0;s:18:\"bhKrv-smart-tv.png\";}', '', '', 0, '', 1, '2024-06-17 14:05:08', 10, 0, '', 0, 0, 0),
(83, 'laundry-service', 'Laundry Service', '', 'a:1:{i:0;s:25:\"gJ4T7-laundry-service.png\";}', '', '', 0, '', 1, '2024-06-17 14:04:39', 8, 0, '', 0, 0, 0),
(84, 'dental-kit', 'Dental Kit', '', 'a:1:{i:0;s:19:\"p7oJr-briefcase.png\";}', '', '', 0, '', 1, '2024-06-17 14:04:53', 9, 0, '', 0, 0, 0),
(88, 'spacious-courtyard', 'Spacious Courtyard', '', 'a:1:{i:0;s:14:\"Gem1x-food.png\";}', '', '', 0, 'Versatile outdoor area for a variety of activities and aesthetic purposes', 1, '2024-06-17 14:07:14', 16, 0, '', 0, 0, 0),
(89, 'meetings-conferences', 'Meetings & Conferences', '', 'a:1:{i:0;s:20:\"H5m4d-conference.png\";}', '', '', 0, '', 1, '2024-06-17 14:07:32', 13, 0, '', 0, 0, 0),
(90, 'banquet-and-reception', 'Banquet and Reception', '', 'a:1:{i:0;s:18:\"oLwYT-ceremony.png\";}', '', '', 0, '', 1, '2024-06-17 14:07:56', 14, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshow`
--

CREATE TABLE `tbl_slideshow` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `m_status` tinyint(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `source` varchar(250) NOT NULL,
  `source_vid` varchar(255) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `thumb_image` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `mode` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slideshow`
--

INSERT INTO `tbl_slideshow` (`id`, `title`, `image`, `linksrc`, `linktype`, `content`, `status`, `m_status`, `added_date`, `sortorder`, `type`, `source`, `source_vid`, `url_type`, `thumb_image`, `url`, `host`, `class`, `mode`) VALUES
(85, 'Entrance', 'h2Ig8-slider04.jpg', '', 0, '<h2>\r\n	Stay in Your<br />\r\n	Iconic Boutique Hotel</h2>\r\n', 1, 0, '2024-06-07 15:47:13', 4, 0, '', '', '', '', '', '', '', 1),
(82, 'Building', 'Tp78Z-slider01.jpg', '', 0, '<h2>\r\n	Stay in Your<br />\r\n	Iconic Boutique Hotel</h2>\r\n', 1, 0, '2024-06-07 15:40:56', 1, 0, '', '', '', '', '', '', '', 1),
(83, 'Reception', 'zrrIg-slider_02.jpg', '', 0, '<h2>\r\n	Stay in Your<br />\r\n	Iconic Boutique Hotel</h2>\r\n', 1, 0, '2024-06-07 15:43:27', 7, 0, '', '', '', '', '', '', '', 1),
(84, 'Room', '4PAOh-room.jpg', '', 0, '<h2>\r\n	Stay in Your<br />\r\n	Iconic Boutique Hotel</h2>\r\n', 1, 0, '2024-06-07 15:44:31', 5, 0, '', '', '', '', '', '', '', 1),
(44, 'asdasdasd', '', '', 0, '', 0, 0, '2024-01-28 13:03:33', 1, 1, 'https://www.youtube.com/watch?v=LKLBRwEpF1c', '', '', '', '', '', '', 0),
(86, 'Front', '5EaR4-slider5.jpg', '', 0, '<h2>\r\n	Stay in Your<br />\r\n	Iconic Boutique Hotel</h2>\r\n', 1, 0, '2024-06-07 15:49:58', 6, 0, '', '', '', '', '', '', '', 1),
(87, 'Dining', 'G7MPu-slider07.jpg', '', 0, '<h2>\r\n	Stay in Your<br />\r\n	Iconic Boutique Hotel</h2>\r\n', 1, 0, '2024-06-07 15:50:26', 3, 0, '', '', '', '', '', '', '', 1),
(88, 'Hall', 'rf7LY-Hall.jpg', '', 0, '<h2>\r\n	Stay in Your<br />\r\n	Iconic Boutique Hotel</h2>', 1, 0, '2024-06-17 18:08:25', 2, 0, '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_networking`
--

CREATE TABLE `tbl_social_networking` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_social_networking`
--

INSERT INTO `tbl_social_networking` (`id`, `title`, `image`, `icon`, `type`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(7, 'Tiktok', 'zqrh3-tik-tok_white.png', '#', 1, 'https://www.tiktok.com/@hotelgoodwill', 1, 7, '2024-06-06 17:16:47'),
(5, 'Facebook', '', 'icon-fa-facebook', 1, 'https://www.facebook.com/hotelgoodwill/', 1, 5, '2024-06-06 16:40:12'),
(6, 'Instagram', '', 'icon-fa-instagram', 1, 'https://www.instagram.com/hotelgoodwill/', 1, 6, '2024-06-06 16:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subpackage_images`
--

CREATE TABLE `tbl_subpackage_images` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subpackageid` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subpackage_images`
--

INSERT INTO `tbl_subpackage_images` (`id`, `title`, `subpackageid`, `detail`, `status`, `sortorder`, `registered`, `image`) VALUES
(73, 'Hall', 31, '', 1, 39, '2023-06-21 13:59:14', 'lumn1-1.jpg'),
(74, 'Hall', 31, '', 1, 40, '2023-06-21 13:59:14', 'TXYew-2.jpg'),
(75, 'Hall', 31, '', 1, 41, '2023-06-21 13:59:14', '3WSgO-3.jpg'),
(76, 'Hall', 31, '', 1, 42, '2023-06-21 13:59:14', 'V7UWD-4.jpg'),
(77, 'Hall', 31, '', 1, 43, '2023-06-21 13:59:14', 'IZ0in-5.jpg'),
(78, 'Hall', 31, '', 1, 44, '2023-06-21 13:59:14', 's8rXz-6.jpg'),
(96, 'n', 39, '', 1, 26, '2023-08-29 14:54:22', '1ftnO-img2.jpg'),
(97, 'nn', 39, '', 1, 37, '2023-08-29 14:54:22', 'T13H4-img2.jpg'),
(98, 'n', 39, '', 1, 38, '2023-08-29 14:54:22', '6ZaBg-img2.jpg'),
(105, 'dep', 28, '', 1, 11, '2023-09-04 12:42:45', 'h26jS-delpre.jpg'),
(106, 'dep', 28, '', 1, 28, '2023-09-04 12:42:45', '4PvHa-delpre.jpg'),
(107, 'dep', 28, '', 1, 34, '2023-09-04 12:42:45', 'aTYbg-delpre.jpg'),
(108, 'a', 42, '', 1, 18, '2023-09-04 12:58:24', 'Jpoxc-img3.jpg'),
(109, 'a', 42, '', 1, 30, '2023-09-04 12:58:24', 'Xlari-img3.jpg'),
(110, 's', 43, '', 1, 20, '2023-09-04 13:00:16', 'eUhDU-880x864_img2.jpg'),
(111, 's', 43, '', 1, 31, '2023-09-04 13:00:16', 'DlMGX-880x864_img2.jpg'),
(114, 'deluxe', 29, '', 1, 22, '2023-09-15 11:40:40', 'FFzBD-del.jpg'),
(115, 'delxue', 29, '', 1, 32, '2023-09-15 11:40:40', 'D5uYC-del.jpg'),
(116, 'deluxe', 29, '', 1, 35, '2023-09-15 11:40:40', 'ecYs1-del.jpg'),
(117, 'standard', 41, '', 1, 33, '2023-09-17 12:48:42', 'wath6-standard.jpg'),
(118, 'standard', 41, '', 1, 24, '2023-09-17 12:48:42', 'zSkxL-stand.jpg'),
(119, 'standard', 41, '', 1, 36, '2023-09-17 12:48:42', '8Ws0F-stand.jpg'),
(121, 'lib', 44, '', 1, 1, '2023-09-17 17:18:17', 'mEXDT-library.jpg'),
(122, 'lib', 44, '', 1, 15, '2023-09-17 17:18:17', 'nFb8K-library.jpg'),
(152, 'Deluxe Room', 49, '', 1, 25, '2024-06-17 20:00:20', 'RJV3f-deluxe2.jpg'),
(153, 'Deluxe Room', 49, '', 1, 10, '2024-06-17 20:00:20', 'qdjRt-deluxe5.jpg'),
(154, 'Deluxe Room', 49, '', 1, 14, '2024-06-17 20:00:20', 'CXQqA-Deluxe1.jpg'),
(155, 'Deluxe Room', 49, '', 1, 17, '2024-06-17 20:00:20', 'XFqTv-deluxe7.jpg'),
(156, 'Deluxe Room', 49, '', 1, 19, '2024-06-17 20:00:20', 'dGTFS-deluxe8.jpg'),
(157, 'Deluxe Room', 49, '', 1, 21, '2024-06-17 20:00:20', 'AJVWs-deluxe6.jpg'),
(158, 'Deluxe Room', 49, '', 1, 23, '2024-06-17 20:00:20', '5ulOv-deluxe3.jpg'),
(159, 'Deluxe Room', 49, '', 1, 27, '2024-06-17 20:00:20', 'YEoDP-deluxe4.jpg'),
(160, 'Deluxe Room', 49, '', 1, 29, '2024-06-17 20:03:19', 'kHTx9-deluxe9.jpg'),
(161, 'Premium Room', 50, '', 1, 2, '2024-06-17 20:09:43', 'zajJz-premium4.jpg'),
(162, 'Premium Room', 50, '', 1, 3, '2024-06-17 20:09:43', 'AY3q7-premium5.jpg'),
(163, 'Premium Room', 50, '', 1, 4, '2024-06-17 20:09:43', 'cEXRF-premium3.jpg'),
(164, 'Premium Room', 50, '', 1, 5, '2024-06-17 20:09:43', 'EsHWV-premium6.jpg'),
(165, 'Premium Room', 50, '', 1, 7, '2024-06-17 20:09:43', 'OsoCC-premium2.jpg'),
(166, 'Premium Room', 50, '', 1, 8, '2024-06-17 20:09:43', 'boCT7-premium1.jpg'),
(167, 'Deluxe Room', 47, '', 1, 1, '2024-06-18 12:01:54', 'eqS5V-deluxe2.jpg'),
(168, 'Deluxe Room', 47, '', 1, 2, '2024-06-18 12:01:54', 'CN3BO-Deluxe1.jpg'),
(169, 'Deluxe Room', 47, '', 1, 3, '2024-06-18 12:01:54', 'GOMj3-deluxe7.jpg'),
(170, 'Deluxe Room', 47, '', 1, 4, '2024-06-18 12:01:54', 'IY5m5-deluxe4.jpg'),
(171, 'Deluxe Room', 47, '', 1, 5, '2024-06-18 12:01:54', 'i0LIm-deluxe3.jpg'),
(172, 'Deluxe Room', 47, '', 1, 6, '2024-06-18 12:01:54', 'V0onY-deluxe8.jpg'),
(173, 'Deluxe Room', 47, '', 1, 7, '2024-06-18 12:01:54', 'jPWlq-deluxe9.jpg'),
(174, 'Deluxe Room', 47, '', 1, 8, '2024-06-18 12:01:54', '0Erbl-deluxe5.jpg'),
(175, 'Deluxe Room', 47, '', 1, 9, '2024-06-18 12:01:54', 'OET7a-deluxe6.jpg'),
(176, 'Premium Room', 48, '', 1, 1, '2024-06-18 12:05:05', 'zDDFx-premium3.jpg'),
(177, 'Premium Room', 48, '', 1, 2, '2024-06-18 12:05:05', '83KmH-premium5.jpg'),
(178, 'Premium Room', 48, '', 1, 3, '2024-06-18 12:05:05', '9Ezeq-premium4.jpg'),
(179, 'Premium Room', 48, '', 1, 4, '2024-06-18 12:05:05', 'YbiLJ-premium2.jpg'),
(180, 'Premium Room', 48, '', 1, 5, '2024-06-18 12:05:05', 'm0CWH-premium1.jpg'),
(181, 'Premium Room', 48, '', 1, 6, '2024-06-18 12:05:05', '16Hji-premium6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `linksrc` text COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `via_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `parentOf`, `name`, `image`, `linksrc`, `content`, `rating`, `sortorder`, `status`, `country`, `via_type`, `type`) VALUES
(4, 0, 'Galen Cartwright', '', '', '<p>\r\n	The Hotel Goodwill is a great place to stay. The rooms are comfortable, the people are friendly and helpful and the location is perfect! It&rsquo;s in a great neighborhood that is close to everything. I highly recommend it to everyone who wants to stay in a really clean and safe hotel.</p>\r\n', 2, 1, 1, '', 'TripAdvisor', 0),
(5, 0, 'Demetria Granger', '', '', '<p>\r\n	We were all very impressed with the Hotel Goodwill. The staff were friendly and caring and we had a lovely stay. The children loved the pool and the food was delicious.The staff were friendly, the room was clean and comfortable, the wi-fi worked well and the location of the hotel made it convenient for reaching other places</p>\r\n', 4, 2, 1, '', 'TripAdvisor', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `optional_email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hall_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hr_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `accesskey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_accesstoken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `permission` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `contact`, `email`, `optional_email`, `hall_email`, `hr_email`, `username`, `password`, `accesskey`, `image`, `group_id`, `access_code`, `facebook_uid`, `facebook_accesstoken`, `facebook_tokenexpire`, `status`, `sortorder`, `added_date`, `permission`) VALUES
(1, 'Hotel ', '', 'Goodwill', '', 'sam@longtail.info', 'swarna@longtail.info', 'sam@longtail.info', 'sam@longtail.info', 'admin', '32b9da145699ea9058dd7d6669e6bcc5', 'aXclg51rfIKLyOG7GMGce90yZ', '', 2, 'IKLxivj8RW', '', '', '2021-04-29 05:40:38', 1, 1, '2014-03-26', 0x613a32313a7b693a303b733a313a2231223b693a313b733a313a2232223b693a323b733a313a2233223b693a333b733a323a223235223b693a343b733a323a223234223b693a353b733a323a223233223b693a363b733a313a2234223b693a373b733a333a22333032223b693a383b733a333a22333033223b693a393b733a313a2235223b693a31303b733a323a223237223b693a31313b733a333a22333030223b693a31323b733a333a22333031223b693a31333b733a323a223131223b693a31343b733a333a22333034223b693a31353b733a323a223137223b693a31363b733a323a223230223b693a31373b733a323a223238223b693a31383b733a323a223132223b693a31393b733a323a223133223b693a32303b733a323a223134223b7d),
(2, 'Super admin', '', '', '', 'support@longtail.info', 'support@longtail.info', 'support@longtail.info', 'support@longtail.info', 'superadmin', '4ef961d430016feab913571a25818e97', '5BnuwlwbgTcJNtbymC8Kmq23e', '', 1, '', '', '', '2023-11-09 10:05:54', 1, 0, '0000-00-00', 0x613a32363a7b693a303b733a323a223734223b693a313b733a313a2231223b693a323b733a333a22333036223b693a333b733a313a2232223b693a343b733a313a2233223b693a353b733a323a223235223b693a363b733a323a223234223b693a373b733a323a223233223b693a383b733a313a2234223b693a393b733a333a22333032223b693a31303b733a333a22333033223b693a31313b733a313a2235223b693a31323b733a323a223237223b693a31333b733a333a22333030223b693a31343b733a333a22333031223b693a31353b733a333a22333035223b693a31363b733a323a223131223b693a31373b733a323a223137223b693a31383b733a333a22333034223b693a31393b733a323a223230223b693a32303b733a323a223139223b693a32313b733a323a223238223b693a32323b733a323a223132223b693a32333b733a323a223133223b693a32343b733a323a223134223b693a32353b733a323a223136223b7d),
(3, 'asdasd', 'asdasd', 'asdasd', '', 'stat@gmail.com', 'stat@gmail.com', 'stat@gmail.com', 'stat@gmail.com', 'asdas', '80c9ef0fb86369cd25f90af27ef53a9e', 'XZtQjE8Rse66xhHG6sSVqzyDZ', '', 3, '', '', '', '0000-00-00 00:00:00', 1, 2, '2024-01-10', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacency`
--

CREATE TABLE `tbl_vacency` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `type` int(1) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vacency`
--

INSERT INTO `tbl_vacency` (`id`, `title`, `post`, `location`, `slug`, `pax`, `content`, `date1`, `date2`, `archive_date`, `sortorder`, `status`, `image`, `type`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(9, 'Asst. Laundry Manager', 'Manager', 'Kathmandu, Nepal', 'asst-laundry-manager', '1', '<p>\r\n	Bachelor</p>\r\n', '0000-00-00', '2023-08-31', '0000-00-00', 1, 1, '', 0, '', '', '2023-08-28 15:12:02'),
(10, 'Painter / Plumber', 'Painter / Plumber', 'Kathmandu, Nepal', 'painter-plumber', '1', '<p>\r\n	<span style=\"color: rgb(71, 61, 53); font-family: Roboto, sans-serif; font-size: 20px; background-color: rgb(247, 246, 246);\">Painter / Plumber</span></p>\r\n', '0000-00-00', '2023-09-22', '0000-00-00', 3, 1, '', 0, '', '', '2023-08-29 11:42:43'),
(12, 'Sales Executive', 'Sales Executive', 'patan', 'sales-executive', '1', '<p>\r\n	asdasd</p>\r\n', '0000-00-00', '2023-09-15', '0000-00-00', 2, 1, '', 0, '', '', '2023-09-03 15:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `source` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `thumb_image` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `source`, `url_type`, `title`, `thumb_image`, `url`, `host`, `content`, `class`, `status`, `sortorder`, `added_date`) VALUES
(8, 'https://www.youtube.com/watch?v=LdWaj1JnPF0', 'youtube', 'Hotel Goodwill | Patan | Lalitpur - YouTube', 'http://img.youtube.com/vi/LdWaj1JnPF0/0.jpg', 'https://www.youtube.com/watch?v=LdWaj1JnPF0', 'www.youtube.com', 'Feel the comfort of home in the heart of the artistic city. Located conveniently close to Patan Durbar Square, Mahaboudha Temple, and Rudravarna Mahavihar (p...', 'youtube', 1, 1, '2024-06-09 15:48:10'),
(9, 'https://youtu.be/H0Mdmw0dG2E', 'youtube', 'Hotel Goodwill history - YouTube', 'http://img.youtube.com/vi/H0Mdmw0dG2E/0.jpg', 'https://youtu.be/H0Mdmw0dG2E', 'youtu.be', 'Hotel Goodwill history', 'youtube', 1, 2, '2024-06-09 15:48:44'),
(10, 'https://www.youtube.com/watch?v=2V866Qs928w', 'youtube', 'Hotel Goodwill Pvt.ltd - YouTube', 'http://img.youtube.com/vi/2V866Qs928w/0.jpg', 'https://www.youtube.com/watch?v=2V866Qs928w', 'www.youtube.com', '', 'youtube', 1, 3, '2024-06-09 15:49:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_download`
--
ALTER TABLE `tbl_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mainservices`
--
ALTER TABLE `tbl_mainservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_child`
--
ALTER TABLE `tbl_offer_child`
  ADD KEY `offer_id` (`offer_id`);

--
-- Indexes for table `tbl_ota`
--
ALTER TABLE `tbl_ota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_download`
--
ALTER TABLE `tbl_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1841;

--
-- AUTO_INCREMENT for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mainservices`
--
ALTER TABLE `tbl_mainservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ota`
--
ALTER TABLE `tbl_ota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
