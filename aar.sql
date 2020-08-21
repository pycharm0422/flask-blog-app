-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2020 at 02:44 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aar`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comnt` varchar(500) NOT NULL,
  `comnt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `username`, `comnt`, `comnt_id`) VALUES
(1, 'faraz', 'how are you. nice post ho are you and what is your name thankyou and have a nice day i would like to see you soon and i hope we will meet one day.', 19),
(4, 'khan', 'wow its really nice post', 20),
(5, '18cs5a1045', 'wowoowwowoow', 20),
(6, '18cs5a1045', 'nice post i really love it i hope i can see more of these blogs\r\n', 20),
(7, '18cs5a1045', 'nice post i really love it i hope i can see more of these blogs\r\n', 20),
(8, '18cs5a1045', 'adsfadsf', 20),
(9, 'faraz', 'thankyou for this post\r\n', 17),
(10, 'faraz', 'Nice story i really liked it and i hope you liked it also', 24),
(11, '18cs5a1045', 'nice post', 17),
(12, '18cs5a1045', 'nice post\r\n', 9);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `user_id`) VALUES
(9, 'title here', 'Human or animals  Our body is made up of billions of cells, which are too small too small to see without a strong microscope.Inside most of those cells are chromosomes, which are thread-like chromossomes, which are thread-like strands that contain hundreds of genes that determine your physical traits.lf your chromosomes from your mother.', 1),
(17, 'Health', '	Take care of your physical health. This is an act of kindness to oneself.\r\n \r\n	Take care of your mental health. This also is an act of kindness to self.\r\n\r\n	Pray for others. Regardless of your belief system, offering prayers and positive thoughts to others is a great act of kindness. \r\n\r\n	Forgive others. Offering forgiveness frees you and others from the realm of negative thoughts and harmful energies.\r\n\r\n	Practice humility. Indirectly, as you practice humility, you are offering your kindness toward others by living with internal peace and humbleness. This is kindness in action.\r\n\r\n	Practice sincerity. It is hard to like all people, but you can learn to be sincere toward all people. This is practicing universal kindness.\r\n\r\n	When you listen to others, ask questions. This way people will see that you are actively listening and care about what they have said.', 1),
(18, 'Benfits of water', '	Drink at least six glasses of fresh water every day. All doctors will tell you this; this helps you detoxify and cleanse your system on a daily basis. When your physical health is well; this is kindness to oneself on the physical level.\r\n\r\n	Observe silence for at least one hour each day. This way, others around you will benefit from that silence; this is\r\nan indirect act of kindness.\r\n\r\n	If you can, read the \"Dhammapada\" (Sayings of the Buddha). You will learn a lot about kindness and compassion in this historical text.\r\n\r\n	If you can, read the \"Sermon on the Mount\" given by Jesus in the Bible. You will learn a lot about kindness, compassion, and love in this historical text.', 1),
(19, 'Explore Possibilites', '	Collaborate with others in your professional arena. You will build new friendships and contacts. This is called professional kindness.\r\n\r\n	Cooperate with others during a crisis moment. This is the only way out of hard times and into better ones.\r\n\r\n	Explore the possibilities before deciding on your path. Kindness is not just sentimental, but it is also practical. You will be doing yourself a favor to do necessary research before embarking on projects, journeys and more.\r\n\r\n	Listen to your elders. Most likely, your elders will have your best interests at heart. They will say things that you don\'t understand and hence don\'t value. However, give them the benefit of the doubt. Surely, they are transforming their experiences of loss and pain and suffering into ones of happiness, success, and prosperity for you.', 2),
(20, 'Patience', '	Practice patience. Today\'s world is moving very fast sometimes, and patience is the way out of calamity. Just take a deep breath and let the stress go and allow \"mother nature\" to take care of the situation at hand.\r\n\r\n	Listen to the sounds around you. People always appreciate a good listener more than someone who just babbles.\r\n\r\n	Take notes during important conversation and meeting. People will appreciate this in the long run. This shows them that you care about what they have said. This is kindness in action.\r\n\r\n	Adopt a pet if you don\'t have one. There are thousands and thousands of pets at shelters around the country and around the globe waiting to be brought home.\r\n\r\n	Practice cleanliness. When people come into your home or office, for example, and things are clean, this gives them a sense of peace and contentment. They will enjoy their visit much more if your place is clean. This is kindness in action.', 2),
(21, 'Alice and the wonder land', 'Alice was beginning to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice she had peeped into the book her sister was reading, but it had no pictures or conversations in it, and where is the use of a book, thought Alice, without pictures or conversations? So she was considering in her own mind, (as well as she could, for the hot day made her feel very sleepy and stupid,) whether the pleasure of making a daisy-chain was worth the trouble of getting up and picking the daisies, when a white rabbit with pink eyes ran close by her.\r\n\r\n	There was nothing very remarkable in that, nor did Alice think it so very much out of the way to hear the rabbit say to itself \"dear, dear! I shall be too late!\" (when she thought it over afterwards, it occurred to her that she ought to have wondered at this, but at the time it all seemed quite natural); but when the rabbit actually took a watch out of its waistcoat-pocket, looked at it, and then hurried on, Alice started to her feet, for it flashed across her mind that she had never before seen a rabbit with either a waistcoat-pocket or a watch to take out of it, and, full of curiosity, she hurried across the field after it, and was just in time to see it pop down a large rabbit-hole under the hedge. In a moment down went Alice after it, never once considering how in the world she was to get out again.\r\n', 2),
(22, 'Mongoose vs snake', 'This is the story of the great war that Rikki-tikki-tavi fought single-handed, through the bath-rooms of the big bungalow in Segowlee cantonment. Darzee, the Tailorbird, helped him, and Chuchundra, the musk-rat, who never comes out into the middle of the floor, but always creeps round by the wall, gave him advice, but Rikki-tikki did the real fighting.\r\n\r\n	He was a mongoose, rather like a little cat in his fur and his tail, but quite like a weasel in his head and his habits. His eyes and the end of his restless nose were pink. He could scratch himself anywhere he pleased with any leg, front or back, that he chose to use. He could fluff up his tail till it looked like a bottle brush, and his war cry as he scuttled through the long grass was: \"Rikk-tikk-tikki-tikki-tchk!\"\r\n\r\n	One day, a high summer flood washed him out of the burrow where he lived with his father and mother, and carried him, kicking and clucking, down a roadside ditch. He found a little wisp of grass floating there, and clung to it till he lost his senses. When he revived, he was lying in the hot sun on the middle of a garden path, very draggled indeed, and a small boy was saying, \"Here\'s a dead mongoose. Let\'s have a funeral.\"\r\n\r\n	\"No,\" said his mother, \"let\'s take him in and dry him. Perhaps he isn\'t really dead.\"\r\n\r\n	They took him into the house, and a big man picked him up between his finger and thumb and said he was not dead but half choked. So they wrapped him in cotton wool, and warmed him over a little fire, and he opened his eyes and sneezed.', 1),
(23, 'Caring ', '	In a large town, where there are so many houses, and so many people, that there is no roof left for everybody to have a little garden; and where, on this account, most. persons are obliged to content themselves with flowers in pots; there lived two little children, who had a garden somewhat larger than a flower-pot. They were not brother and sister; but they cared for each other as much as if they were. Their parents lived exactly opposite. They inhabited two garrets; and where the roof of the one house joined that of the other, and the gutter ran along the extreme end of it, there was to each house a small window: one needed only to step over the gutter to get from one window to the other.\r\n\r\n	The children\'s parents had large wooden boxes there, in which vegetables for the kitchen were planted, and little rosetrees besides: there was a rose in each box, and they grew splendidly. They now thought of placing the boxes across the gutter, so that they nearly reached from one window to the other, and looked just like two walls of flowers. The tendrils of the peas hung down over the boxes; and the rose-trees shot up long branches, twined round the windows, and then bent towards each other: it was almost like a triumphant arch of foliage and flowers. The boxes were very high, and the children knew that they must not creep over them; so they often obtained permission to get out of the windows to each other, and to sit on their little stools among the roses, where they could play delight fully. In winter there was an end of this pleasure. The windows were often frozen over; but then they heated copper farthings on the stove, and laid the hot farthing on the windowpane, and then they had a capital peep-hole, quite nicely rounded; and out of each peeped a gentle friendly eye--it was the little boy and the little girl who were looking out. His name was Kay, hers was Gerda. In summer, with one jump, they could get to each other; but in winter they were obliged first to go down the long stairs, and then up the long stairs again: and out-of-doors there was quite a snow-storm.', 1),
(24, 'Mowgli', 'All that is told here happened some time before Mowgli was turned out of the Seeonee Wolf Pack, or revenged himself on Shere Khan the tiger. It was in the days when Baloo was teaching him the Law of the Jungle. The big, serious, old brown bear was delighted to have so quick a pupil, for the young wolves will only learn as much of the Law of the Jungle as applies to their own pack and tribe, and run away as soon as they can repeat the Hunting Verse --\"Feet that make no noise; eyes that can see in the dark; ears that can hear the winds in their lairs, and sharp white teeth, all these things are the marks of our brothers except Tabaqui the Jackal and the Hyaena whom we hate.\" But Mowgli, as a man-cub, had to learn a great deal more than this. Sometimes Bagheera the Black Panther would come lounging through the jungle to see how his pet was getting on, and would purr with his head against a tree while Mowgli recited the day\'s lesson to Baloo. The boy could climb almost as well as he could swim, and swim almost as well as he could run. So Baloo, the Teacher of the Law, taught him the Wood and Water Laws: how to tell a rotten branch from a sound one; how to speak politely to the wild bees when he came upon a hive of them fifty feet above ground; what to say to Mang the Bat when he disturbed him in the branches at midday; and how to warn the water-snakes in the pools before he splashed down among them. None of the Jungle People like being disturbed, and all are very ready to fly at an intruder. Then, too, Mowgli was taught the Strangers\' Hunting Call, which must be repeated aloud till it is answered, whenever one of the Jungle-People hunts outside his own grounds. It means, translated, \"Give me leave to hunt here because I am hungry.\" And the answer is, \"Hunt then for food, but not for pleasure.\"\r\n\r\nAll this will show you how much Mowgli had to learn by heart, and he grew very tired of saying the same thing over a hundred times. But, as Baloo said to Bagheera, one day when Mowgli had been cuffed and run off in a temper, \"A man\'s cub is a man\'s cub, and he must learn al', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'faraz', 'asdf'),
(2, 'khan', 'fdsa'),
(3, 'adf', 'qwe'),
(4, '18cs5a1045', 'bcCfrV3gVPc7ngu'),
(5, 'affan', 'affa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
