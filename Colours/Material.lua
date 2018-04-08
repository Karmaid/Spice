fromMaterial = function(name,i,ac)
	local id = Citrus.Misc.Functions.switch(1,2,3,4,5,6,7,8,9,10):Filter(unpack(Citrus.Misc.Functions.switch({50,100,200,300,400,500,600,700,800,900},{100,200,400,700}):Filter(false,true)(Citrus.Misc.Functions.exists(ac))))
	id = id(i or 500)
	return id and Citrus.Color.getColor(name,id,'Material',ac and 'Accent')
end;

--Colours
Citrus.Color.insertColor('Red',{Citrus.Color.fromRGB(255, 235, 238),Citrus.Color.fromRGB(255, 205, 210),Citrus.Color.fromRGB(239, 154, 154),Citrus.Color.fromRGB(229, 115, 115),Citrus.Color.fromRGB(239, 83, 80),Citrus.Color.fromRGB(244, 67, 54),Citrus.Color.fromRGB(229, 57, 53),Citrus.Color.fromRGB(211, 47, 47),Citrus.Color.fromRGB(198, 40, 40),Citrus.Color.fromRGB(183, 28, 28),}, 'Material')
Citrus.Color.insertColor('Pink',{Citrus.Color.fromRGB(252, 228, 236),Citrus.Color.fromRGB(248, 187, 208),Citrus.Color.fromRGB(244, 143, 177),Citrus.Color.fromRGB(240, 98, 146),Citrus.Color.fromRGB(236, 64, 122),Citrus.Color.fromRGB(233, 30, 99),Citrus.Color.fromRGB(216, 27, 96),Citrus.Color.fromRGB(194, 24, 91),Citrus.Color.fromRGB(173, 20, 87),Citrus.Color.fromRGB(136, 14, 79),}, 'Material')
Citrus.Color.insertColor('Purple',{Citrus.Color.fromRGB(243, 229, 245),Citrus.Color.fromRGB(225, 190, 231),Citrus.Color.fromRGB(206, 147, 216),Citrus.Color.fromRGB(186, 104, 200),Citrus.Color.fromRGB(171, 71, 188),Citrus.Color.fromRGB(156, 39, 176),Citrus.Color.fromRGB(142, 36, 170),Citrus.Color.fromRGB(123, 31, 162),Citrus.Color.fromRGB(106, 27, 154),Citrus.Color.fromRGB(74, 20, 140),}, 'Material')
Citrus.Color.insertColor('Deep purple',{Citrus.Color.fromRGB(237, 231, 246),Citrus.Color.fromRGB(209, 196, 233),Citrus.Color.fromRGB(179, 157, 219),Citrus.Color.fromRGB(149, 117, 205),Citrus.Color.fromRGB(126, 87, 194),Citrus.Color.fromRGB(103, 58, 183),Citrus.Color.fromRGB(94, 53, 177),Citrus.Color.fromRGB(81, 45, 168),Citrus.Color.fromRGB(69, 39, 160),Citrus.Color.fromRGB(49, 27, 146),}, 'Material')
Citrus.Color.insertColor('Indigo',{Citrus.Color.fromRGB(232, 234, 246),Citrus.Color.fromRGB(197, 202, 233),Citrus.Color.fromRGB(159, 168, 218),Citrus.Color.fromRGB(121, 134, 203),Citrus.Color.fromRGB(92, 107, 192),Citrus.Color.fromRGB(63, 81, 181),Citrus.Color.fromRGB(57, 73, 171),Citrus.Color.fromRGB(48, 63, 159),Citrus.Color.fromRGB(40, 53, 147),Citrus.Color.fromRGB(26, 35, 126),}, 'Material')
Citrus.Color.insertColor('Blue',{Citrus.Color.fromRGB(227, 242, 253),Citrus.Color.fromRGB(187, 222, 251),Citrus.Color.fromRGB(144, 202, 249),Citrus.Color.fromRGB(100, 181, 246),Citrus.Color.fromRGB(66, 165, 245),Citrus.Color.fromRGB(33, 150, 243),Citrus.Color.fromRGB(30, 136, 229),Citrus.Color.fromRGB(25, 118, 210),Citrus.Color.fromRGB(21, 101, 192),Citrus.Color.fromRGB(13, 71, 161),}, 'Material')
Citrus.Color.insertColor('Light blue',{Citrus.Color.fromRGB(225, 245, 254),Citrus.Color.fromRGB(179, 229, 252),Citrus.Color.fromRGB(129, 212, 250),Citrus.Color.fromRGB(79, 195, 247),Citrus.Color.fromRGB(41, 182, 246),Citrus.Color.fromRGB(3, 169, 244),Citrus.Color.fromRGB(3, 155, 229),Citrus.Color.fromRGB(2, 136, 209),Citrus.Color.fromRGB(2, 119, 189),Citrus.Color.fromRGB(1, 87, 155),}, 'Material')
Citrus.Color.insertColor('Cyan',{Citrus.Color.fromRGB(224, 247, 250),Citrus.Color.fromRGB(178, 235, 242),Citrus.Color.fromRGB(128, 222, 234),Citrus.Color.fromRGB(77, 208, 225),Citrus.Color.fromRGB(38, 198, 218),Citrus.Color.fromRGB(0, 188, 212),Citrus.Color.fromRGB(0, 172, 193),Citrus.Color.fromRGB(0, 151, 167),Citrus.Color.fromRGB(0, 131, 143),Citrus.Color.fromRGB(0, 96, 100),}, 'Material')
Citrus.Color.insertColor('Teal',{Citrus.Color.fromRGB(224, 242, 241),Citrus.Color.fromRGB(178, 223, 219),Citrus.Color.fromRGB(128, 203, 196),Citrus.Color.fromRGB(77, 182, 172),Citrus.Color.fromRGB(38, 166, 154),Citrus.Color.fromRGB(0, 150, 136),Citrus.Color.fromRGB(0, 137, 123),Citrus.Color.fromRGB(0, 121, 107),Citrus.Color.fromRGB(0, 105, 92),Citrus.Color.fromRGB(0, 77, 64),}, 'Material')
Citrus.Color.insertColor('Green',{Citrus.Color.fromRGB(232, 245, 233),Citrus.Color.fromRGB(200, 230, 201),Citrus.Color.fromRGB(165, 214, 167),Citrus.Color.fromRGB(129, 199, 132),Citrus.Color.fromRGB(102, 187, 106),Citrus.Color.fromRGB(76, 175, 80),Citrus.Color.fromRGB(67, 160, 71),Citrus.Color.fromRGB(56, 142, 60),Citrus.Color.fromRGB(46, 125, 50),Citrus.Color.fromRGB(27, 94, 32),}, 'Material')
Citrus.Color.insertColor('Light green',{Citrus.Color.fromRGB(241, 248, 233),Citrus.Color.fromRGB(220, 237, 200),Citrus.Color.fromRGB(197, 225, 165),Citrus.Color.fromRGB(174, 213, 129),Citrus.Color.fromRGB(156, 204, 101),Citrus.Color.fromRGB(139, 195, 74),Citrus.Color.fromRGB(124, 179, 66),Citrus.Color.fromRGB(104, 159, 56),Citrus.Color.fromRGB(85, 139, 47),Citrus.Color.fromRGB(51, 105, 30),}, 'Material')
Citrus.Color.insertColor('Lime',{Citrus.Color.fromRGB(249, 251, 231),Citrus.Color.fromRGB(240, 244, 195),Citrus.Color.fromRGB(230, 238, 156),Citrus.Color.fromRGB(220, 231, 117),Citrus.Color.fromRGB(212, 225, 87),Citrus.Color.fromRGB(205, 220, 57),Citrus.Color.fromRGB(192, 202, 51),Citrus.Color.fromRGB(175, 180, 43),Citrus.Color.fromRGB(158, 157, 36),Citrus.Color.fromRGB(130, 119, 23),}, 'Material')
Citrus.Color.insertColor('Yellow',{Citrus.Color.fromRGB(255, 253, 231),Citrus.Color.fromRGB(255, 249, 196),Citrus.Color.fromRGB(255, 245, 157),Citrus.Color.fromRGB(255, 241, 118),Citrus.Color.fromRGB(255, 238, 88),Citrus.Color.fromRGB(255, 235, 59),Citrus.Color.fromRGB(253, 216, 53),Citrus.Color.fromRGB(251, 192, 45),Citrus.Color.fromRGB(249, 168, 37),Citrus.Color.fromRGB(245, 127, 23),}, 'Material')
Citrus.Color.insertColor('Amber',{Citrus.Color.fromRGB(255, 248, 225),Citrus.Color.fromRGB(255, 236, 179),Citrus.Color.fromRGB(255, 224, 130),Citrus.Color.fromRGB(255, 213, 79),Citrus.Color.fromRGB(255, 202, 40),Citrus.Color.fromRGB(255, 193, 7),Citrus.Color.fromRGB(255, 179, 0),Citrus.Color.fromRGB(255, 160, 0),Citrus.Color.fromRGB(255, 143, 0),Citrus.Color.fromRGB(255, 111, 0),}, 'Material')
Citrus.Color.insertColor('Orange',{Citrus.Color.fromRGB(255, 243, 224),Citrus.Color.fromRGB(255, 224, 178),Citrus.Color.fromRGB(255, 204, 128),Citrus.Color.fromRGB(255, 183, 77),Citrus.Color.fromRGB(255, 167, 38),Citrus.Color.fromRGB(255, 152, 0),Citrus.Color.fromRGB(251, 140, 0),Citrus.Color.fromRGB(245, 124, 0),Citrus.Color.fromRGB(239, 108, 0),Citrus.Color.fromRGB(230, 81, 0),}, 'Material')
Citrus.Color.insertColor('Deep orange',{Citrus.Color.fromRGB(251, 233, 231),Citrus.Color.fromRGB(255, 204, 188),Citrus.Color.fromRGB(255, 171, 145),Citrus.Color.fromRGB(255, 138, 101),Citrus.Color.fromRGB(255, 112, 67),Citrus.Color.fromRGB(255, 87, 34),Citrus.Color.fromRGB(244, 81, 30),Citrus.Color.fromRGB(230, 74, 25),Citrus.Color.fromRGB(216, 67, 21),Citrus.Color.fromRGB(191, 54, 12),}, 'Material')
Citrus.Color.insertColor('Brown',{Citrus.Color.fromRGB(239, 235, 233),Citrus.Color.fromRGB(215, 204, 200),Citrus.Color.fromRGB(188, 170, 164),Citrus.Color.fromRGB(161, 136, 127),Citrus.Color.fromRGB(141, 110, 99),Citrus.Color.fromRGB(121, 85, 72),Citrus.Color.fromRGB(109, 76, 65),Citrus.Color.fromRGB(93, 64, 55),Citrus.Color.fromRGB(78, 52, 46),Citrus.Color.fromRGB(62, 39, 35),}, 'Material')
Citrus.Color.insertColor('Grey',{Citrus.Color.fromRGB(250, 250, 250),Citrus.Color.fromRGB(245, 245, 245),Citrus.Color.fromRGB(238, 238, 238),Citrus.Color.fromRGB(224, 224, 224),Citrus.Color.fromRGB(189, 189, 189),Citrus.Color.fromRGB(158, 158, 158),Citrus.Color.fromRGB(117, 117, 117),Citrus.Color.fromRGB(97, 97, 97),Citrus.Color.fromRGB(66, 66, 66),Citrus.Color.fromRGB(33, 33, 33),}, 'Material')
Citrus.Color.insertColor('Blue grey',{Citrus.Color.fromRGB(236, 239, 241),Citrus.Color.fromRGB(207, 216, 220),Citrus.Color.fromRGB(176, 190, 197),Citrus.Color.fromRGB(144, 164, 174),Citrus.Color.fromRGB(120, 144, 156),Citrus.Color.fromRGB(96, 125, 139),Citrus.Color.fromRGB(84, 110, 122),Citrus.Color.fromRGB(69, 90, 100),Citrus.Color.fromRGB(55, 71, 79),Citrus.Color.fromRGB(38, 50, 56),}, 'Material')
Citrus.Color.insertColor('Red',{Citrus.Color.fromRGB(255, 138, 128),Citrus.Color.fromRGB(255, 82, 82),Citrus.Color.fromRGB(255, 23, 68),Citrus.Color.fromRGB(213, 0, 0),}, 'Material', 'Accent')
Citrus.Color.insertColor('Pink',{Citrus.Color.fromRGB(255, 128, 171),Citrus.Color.fromRGB(255, 64, 129),Citrus.Color.fromRGB(245, 0, 87),Citrus.Color.fromRGB(197, 17, 98),}, 'Material', 'Accent')
Citrus.Color.insertColor('Purple',{Citrus.Color.fromRGB(234, 128, 252),Citrus.Color.fromRGB(224, 64, 251),Citrus.Color.fromRGB(213, 0, 249),Citrus.Color.fromRGB(170, 0, 255),}, 'Material', 'Accent')
Citrus.Color.insertColor('Deep purple',{Citrus.Color.fromRGB(179, 136, 255),Citrus.Color.fromRGB(124, 77, 255),Citrus.Color.fromRGB(101, 31, 255),Citrus.Color.fromRGB(98, 0, 234),}, 'Material', 'Accent')
Citrus.Color.insertColor('Indigo',{Citrus.Color.fromRGB(140, 158, 255),Citrus.Color.fromRGB(83, 109, 254),Citrus.Color.fromRGB(61, 90, 254),Citrus.Color.fromRGB(48, 79, 254),}, 'Material', 'Accent')
Citrus.Color.insertColor('Blue',{Citrus.Color.fromRGB(130, 177, 255),Citrus.Color.fromRGB(68, 138, 255),Citrus.Color.fromRGB(41, 121, 255),Citrus.Color.fromRGB(41, 98, 255),}, 'Material', 'Accent')
Citrus.Color.insertColor('Light blue',{Citrus.Color.fromRGB(128, 216, 255),Citrus.Color.fromRGB(64, 196, 255),Citrus.Color.fromRGB(0, 176, 255),Citrus.Color.fromRGB(0, 145, 234),}, 'Material', 'Accent')
Citrus.Color.insertColor('Cyan',{Citrus.Color.fromRGB(132, 255, 255),Citrus.Color.fromRGB(24, 255, 255),Citrus.Color.fromRGB(0, 229, 255),Citrus.Color.fromRGB(0, 184, 212),}, 'Material', 'Accent')
Citrus.Color.insertColor('Teal',{Citrus.Color.fromRGB(167, 255, 235),Citrus.Color.fromRGB(100, 255, 218),Citrus.Color.fromRGB(29, 233, 182),Citrus.Color.fromRGB(0, 191, 165),}, 'Material', 'Accent')
Citrus.Color.insertColor('Green',{Citrus.Color.fromRGB(185, 246, 202),Citrus.Color.fromRGB(105, 240, 174),Citrus.Color.fromRGB(0, 230, 118),Citrus.Color.fromRGB(0, 200, 83),}, 'Material', 'Accent')
Citrus.Color.insertColor('Light green',{Citrus.Color.fromRGB(204, 255, 144),Citrus.Color.fromRGB(178, 255, 89),Citrus.Color.fromRGB(118, 255, 3),Citrus.Color.fromRGB(100, 221, 23),}, 'Material', 'Accent')
Citrus.Color.insertColor('Lime',{Citrus.Color.fromRGB(244, 255, 129),Citrus.Color.fromRGB(238, 255, 65),Citrus.Color.fromRGB(198, 255, 0),Citrus.Color.fromRGB(174, 234, 0),}, 'Material', 'Accent')
Citrus.Color.insertColor('Yellow',{Citrus.Color.fromRGB(255, 255, 141),Citrus.Color.fromRGB(255, 255, 0),Citrus.Color.fromRGB(255, 234, 0),Citrus.Color.fromRGB(255, 214, 0),}, 'Material', 'Accent')
Citrus.Color.insertColor('Amber',{Citrus.Color.fromRGB(255, 229, 127),Citrus.Color.fromRGB(255, 215, 64),Citrus.Color.fromRGB(255, 196, 0),Citrus.Color.fromRGB(255, 171, 0),}, 'Material', 'Accent')
Citrus.Color.insertColor('Orange',{Citrus.Color.fromRGB(255, 209, 128),Citrus.Color.fromRGB(255, 171, 64),Citrus.Color.fromRGB(255, 145, 0),Citrus.Color.fromRGB(255, 109, 0),}, 'Material', 'Accent')
Citrus.Color.insertColor('Deep orange',{Citrus.Color.fromRGB(255, 158, 128),Citrus.Color.fromRGB(255, 110, 64),Citrus.Color.fromRGB(255, 61, 0),Citrus.Color.fromRGB(221, 44, 0),}, 'Material', 'Accent')
