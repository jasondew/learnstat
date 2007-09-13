
INSERT INTO questions (id, body, chapter) VALUES (596, 'The most recent value of the Consumer Price Index (1982&#8211;84 = 100) is 165.0.  This means that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2724, 596, 'household income has increased by 65% since 1982&#8211;84.');
INSERT INTO choices (id, question_id, body) VALUES (2725, 596, '1999 is 165% of 1982.');
INSERT INTO choices (id, question_id, body) VALUES (2726, 596, 'for every $100 the government printed in 1982&#8211;84, it prints $165 now.');
INSERT INTO choices (id, question_id, body) VALUES (2727, 596, 'consumers now spend $165 for every $100 they spent in 1982&#8211;84.');
INSERT INTO choices (id, question_id, body) VALUES (2728, 596, 'a market basket of goods and services that cost $100 in 1982 to 1984 now costs $165.');
UPDATE questions SET answer = 2728 WHERE id=596;

INSERT INTO questions (id, body, chapter) VALUES (597, 'The Consumer Price Index (CPI) somewhat overstates the rise in prices over time.  One reason for this is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2729, 597, 'the government uses voluntary response samples to gather price information.');
INSERT INTO choices (id, question_id, body) VALUES (2730, 597, 'many products improve in quality over time, so higher prices are partly paying for better quality.');
UPDATE questions SET answer = 2730 WHERE id=597;
INSERT INTO choices (id, question_id, body) VALUES (2731, 597, 'the CPI market basket never changes, so it has out-of-date products such as typewriters');
INSERT INTO choices (id, question_id, body) VALUES (2732, 597, 'the government uses small samples, so there is a lot of sampling variability in the CPI.');
INSERT INTO choices (id, question_id, body) VALUES (2733, 597, 'prices are recorded in only a few places, and some of these are places where prices are higher than in Indiana.');

INSERT INTO questions (id, body, chapter) VALUES (598, 'The Consumer Price Index (1982&#8211;84 = 100) in mid-1999 was about 165.0. The CPI in 1930 (same base) was 16.7.  The New York Yankees paid Babe Ruth $80,000 in 1930, an enormous salary for an athlete in those days.  The buying power of the Babe\'s salary in 1999 dollars is about', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2734, 598, '$8,097');
INSERT INTO choices (id, question_id, body) VALUES (2735, 598, '$479,042');
INSERT INTO choices (id, question_id, body) VALUES (2736, 598, '$790,419');
UPDATE questions SET answer = 2736 WHERE id=598;
INSERT INTO choices (id, question_id, body) VALUES (2737, 598, '$1,336,000');
INSERT INTO choices (id, question_id, body) VALUES (2738, 598, '$13,200,000');

INSERT INTO questions (id, body, chapter) VALUES (599, '__________ in a sampling method means that the sample results will systematically misrepresent the population in the same way when we take repeated samples.  ___________ should read', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2739, 599, 'Bias');
UPDATE questions SET answer = 2739 WHERE id=599;
INSERT INTO choices (id, question_id, body) VALUES (2740, 599, 'Confounding');
INSERT INTO choices (id, question_id, body) VALUES (2741, 599, 'Comparison');
INSERT INTO choices (id, question_id, body) VALUES (2742, 599, 'Precision');
INSERT INTO choices (id, question_id, body) VALUES (2743, 599, 'Confidence level');

INSERT INTO questions (id, body, chapter) VALUES (600, 'A study compares computer-based instruction with a text for teaching statistics.The proper way to design such a study is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2744, 600, 'Take an SRS of algebra students to see which method they are using.');
INSERT INTO choices (id, question_id, body) VALUES (2745, 600, 'Have a group of students use the computer and compare them with last year\'s class, which used a textbook.');
INSERT INTO choices (id, question_id, body) VALUES (2746, 600, 'Do a randomized comparative experiment in which half the students are assigned to the computer and half to a text.');
UPDATE questions SET answer = 2746 WHERE id=600;
INSERT INTO choices (id, question_id, body) VALUES (2747, 600, 'Compare students at Harvard, which uses a text, with students at Prairie View, where they use computers.');

INSERT INTO questions (id, body, chapter) VALUES (601, 'A study compares computer-based instruction with a text for teaching statistics.The report of the study says, &quot;With 95% confidence, we can say that students who used computer-based instruction raise their average algebra scores by between 10 and 18 points more than students who just use a textbook.&quot; By &quot;95% confidence&quot; we mean', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2748, 601, '95% of all students will increase their score by between 10 and 18 points if they use a computer');
INSERT INTO choices (id, question_id, body) VALUES (2749, 601, 'we are certain that the average increase is between 10 and  18 points');
INSERT INTO choices (id, question_id, body) VALUES (2750, 601, 'we got the 10 to 18 point range by using a method that would give a correct answer in 95% of all samples');
UPDATE questions SET answer = 2750 WHERE id=601;
INSERT INTO choices (id, question_id, body) VALUES (2751, 601, '95% of all the students would do better with a computer');

INSERT INTO questions (id, body, chapter) VALUES (602, 'A study compares computer-based instruction with a text for teaching statistics.Does the study (properly designed) give good reason to think that using the computer <em>causes</em> a bigger increase in algebra scores?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2752, 602, 'Yes&#8212;randomized comparative experiments give good evidence for causation');
UPDATE questions SET answer = 2752 WHERE id=602;
INSERT INTO choices (id, question_id, body) VALUES (2753, 602, 'No&#8212;students at schools that use computers may be different from students at schools that use texts');
INSERT INTO choices (id, question_id, body) VALUES (2754, 602, 'Yes&#8212;a large sample will accurately represent the population');
INSERT INTO choices (id, question_id, body) VALUES (2755, 602, 'No&#8212;students who choose to use a computer are different from students who avoid computers');
INSERT INTO choices (id, question_id, body) VALUES (2756, 602, 'No&#8212;random assignment means the results could just be due to chance');

INSERT INTO questions (id, body, chapter) VALUES (603, 'A recent Gallup Poll asked, &quot;Do you consider the amount of federal income tax you have to pay as too high, about right, or too low?&quot; 69% of the sample answered &quot;Too high.&quot;  Gallup says that:<br><br>For results based on the sample of national adults (<em>n </em>= 1,055) surveyed April 6&#8211;7, 1999, the margin of sampling error is &#177; 3 percentage points.The poll was carried out by telephone, so people without phones are always excluded from the sample.  Any errors in the final result due to excluding people without phones', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2757, 603, 'are included in the announced margin of error');
INSERT INTO choices (id, question_id, body) VALUES (2758, 603, 'are in addition to the announced margin of error');
UPDATE questions SET answer = 2758 WHERE id=603;
INSERT INTO choices (id, question_id, body) VALUES (2759, 603, 'can be ignored, because these people are not part of the population');
INSERT INTO choices (id, question_id, body) VALUES (2760, 603, 'can be ignored, because this is a nonsampling error');

INSERT INTO questions (id, body, chapter) VALUES (604, 'A recent Gallup Poll asked, &quot;Do you consider the amount of federal income tax you have to pay as too high, about right, or too low?&quot; 69% of the sample answered &quot;Too high.&quot;  Gallup says that:<br><br>For results based on the sample of national adults (<em>n </em>= 1,055) surveyed April 6&#8211;7, 1999, the margin of sampling error is &#177; 3 percentage points.If Gallup had used an SRS of size <em>n </em>=1055 and obtained the sample proportion p =0.69 , you can calculate that the margin of error for 95% confidence would be', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2761, 604, '');
INSERT INTO choices (id, question_id, body) VALUES (2762, 604, '');
INSERT INTO choices (id, question_id, body) VALUES (2763, 604, '');
INSERT INTO choices (id, question_id, body) VALUES (2764, 604, '');
UPDATE questions SET answer = 2764 WHERE id=604;
INSERT INTO choices (id, question_id, body) VALUES (2765, 604, '');

INSERT INTO questions (id, body, chapter) VALUES (605, 'In 1997, the mean and median incomes of the top 1% of Americans were $330,000 and $675,000.  Which of these numbers is the mean, and why?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2766, 605, '$330,000 is the mean, because income distributions are slewed to the left');
INSERT INTO choices (id, question_id, body) VALUES (2767, 605, '$675,000 is the mean, because income distributions are skewed to the left');
INSERT INTO choices (id, question_id, body) VALUES (2768, 605, '$330,000 is the mean, because income distributions are slewed to the right');
INSERT INTO choices (id, question_id, body) VALUES (2769, 605, '$675,000 is the mean, because income distributions are skewed to the right');
UPDATE questions SET answer = 2769 WHERE id=605;
INSERT INTO choices (id, question_id, body) VALUES (2770, 605, 'can\'t say, because income distributions are often not skewed');

INSERT INTO questions (id, body, chapter) VALUES (606, 'The box in the center of a boxplot marks', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2771, 606, 'the full range covered by the data');
INSERT INTO choices (id, question_id, body) VALUES (2772, 606, 'the range covered by the middle half of the data');
UPDATE questions SET answer = 2772 WHERE id=606;
INSERT INTO choices (id, question_id, body) VALUES (2773, 606, 'the range covered by the middle three-quarters of the data');
INSERT INTO choices (id, question_id, body) VALUES (2774, 606, 'the span one standard deviation on each side of the mean');
INSERT INTO choices (id, question_id, body) VALUES (2775, 606, 'the span two standard deviations on each side of the mean');

INSERT INTO questions (id, body, chapter) VALUES (607, 'Lean body mass (your weight leaving out fat) helps predict metabolic rate (how many calories of energy you burn in an hour).  The relationship is roughly a straight line.  The least-squares regression line for predicting metabolic rate (y in calories) from lean body mass (<em>x</em> in kilograms) is <em>y</em> = 113.2 + 26.9<em>x</em>.Using this regression line, you predict that a person with lean body mass 50 kilograms will have metabolic rate equal to about how many calories?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2776, 607, '140');
INSERT INTO choices (id, question_id, body) VALUES (2777, 607, '1232');
INSERT INTO choices (id, question_id, body) VALUES (2778, 607, '1345');
INSERT INTO choices (id, question_id, body) VALUES (2779, 607, '1458');
UPDATE questions SET answer = 2779 WHERE id=607;
INSERT INTO choices (id, question_id, body) VALUES (2780, 607, '5687');

INSERT INTO questions (id, body, chapter) VALUES (608, 'Lean body mass (your weight leaving out fat) helps predict metabolic rate (how many calories of energy you burn in an hour).  The relationship is roughly a straight line.  The least-squares regression line for predicting metabolic rate (y in calories) from lean body mass (<em>x</em> in kilograms) is <em>y</em> = 113.2 + 26.9<em>x</em>.The slope of the regression line is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2781, 608, '113.2&#8212;that is, when ');
INSERT INTO choices (id, question_id, body) VALUES (2782, 608, '113.2&#8212;that is, the mean metabolic rate is 113.2 calories per hour');
INSERT INTO choices (id, question_id, body) VALUES (2783, 608, '26.9&#8212;that is, the mean metabolic rate is 26.9 calories per hour');
INSERT INTO choices (id, question_id, body) VALUES (2784, 608, '26.9&#8212;that is, when lean body mass goes up by 1 kg, metabolic rate goes up by 26.9 calories');
UPDATE questions SET answer = 2784 WHERE id=608;
INSERT INTO choices (id, question_id, body) VALUES (2785, 608, '26.9&#8212;that is, when a person weighs 26.9 more kg, metabolic rate goes up by 1 calorie');

INSERT INTO questions (id, body, chapter) VALUES (609, 'Research studies that collect data from people must follow ethical guidelines.  Some basic ethical principles for these studies are:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2786, 609, 'Advance review by an institutional review board');
INSERT INTO choices (id, question_id, body) VALUES (2787, 609, 'Informed consent by the subjects');
INSERT INTO choices (id, question_id, body) VALUES (2788, 609, 'All data are released to the subjects after completion');
INSERT INTO choices (id, question_id, body) VALUES (2789, 609, 'All of (A), (B), and (C)');
INSERT INTO choices (id, question_id, body) VALUES (2790, 609, '(A) and (B) but not (C)');
UPDATE questions SET answer = 2790 WHERE id=609;

INSERT INTO questions (id, body, chapter) VALUES (610, 'A recent issue of the <em>New England Journal of Medicine</em> reports a study of all 122,754 infants born over an 8.5-year period at Parkland Hospital in Dallas, leaving out multiple births and infants with birth defects.  The researchers wanted to know if there is a specific birth weight below which infant death and illness increases sharply.This study is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2791, 610, 'a randomized comparative experiment');
INSERT INTO choices (id, question_id, body) VALUES (2792, 610, 'an experiment, but subjects are not assigned at random');
INSERT INTO choices (id, question_id, body) VALUES (2793, 610, 'a probability sample of a population');
INSERT INTO choices (id, question_id, body) VALUES (2794, 610, 'an observational study, but not a probability sample');
UPDATE questions SET answer = 2794 WHERE id=610;
INSERT INTO choices (id, question_id, body) VALUES (2795, 610, 'a fixed market basket price index');

INSERT INTO questions (id, body, chapter) VALUES (611, 'A recent issue of the <em>New England Journal of Medicine</em> reports a study of all 122,754 infants born over an 8.5-year period at Parkland Hospital in Dallas, leaving out multiple births and infants with birth defects.  The researchers wanted to know if there is a specific birth weight below which infant death and illness increases sharply.The explanatory variable in the study is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2796, 611, 'death and illness');
INSERT INTO choices (id, question_id, body) VALUES (2797, 611, 'birth weight');
UPDATE questions SET answer = 2797 WHERE id=611;
INSERT INTO choices (id, question_id, body) VALUES (2798, 611, 'infants (leaving out multiple births, etc.)');
INSERT INTO choices (id, question_id, body) VALUES (2799, 611, 'Parkland Hospital');
INSERT INTO choices (id, question_id, body) VALUES (2800, 611, '122,754');

INSERT INTO questions (id, body, chapter) VALUES (612, 'The student newspaper at a college asks an SRS of of 250 undergraduates, &quot;Do you favor eliminating the carnival from the term-end celebration?&quot;   In all, 150 of the 250 are in favor.The ___________ you want to estimate is the proportion <em>p</em> of all undergraduates who favor eliminating the carnival.  _________ should read', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2801, 612, 'bias');
INSERT INTO choices (id, question_id, body) VALUES (2802, 612, 'confidence level');
INSERT INTO choices (id, question_id, body) VALUES (2803, 612, 'mean');
INSERT INTO choices (id, question_id, body) VALUES (2804, 612, 'parameter');
UPDATE questions SET answer = 2804 WHERE id=612;
INSERT INTO choices (id, question_id, body) VALUES (2805, 612, 'statistic');

INSERT INTO questions (id, body, chapter) VALUES (613, 'The student newspaper at a college asks an SRS of of 250 undergraduates, &quot;Do you favor eliminating the carnival from the term-end celebration?&quot;   In all, 150 of the 250 are in favor.To estimate <em>p</em>, you will use the proportion p = 150/250 of your sample who favored eliminating the carnival.  The number p is a', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2806, 613, 'bias');
INSERT INTO choices (id, question_id, body) VALUES (2807, 613, 'confidence level');
INSERT INTO choices (id, question_id, body) VALUES (2808, 613, 'mean');
INSERT INTO choices (id, question_id, body) VALUES (2809, 613, 'parameter');
INSERT INTO choices (id, question_id, body) VALUES (2810, 613, 'statistic');
UPDATE questions SET answer = 2810 WHERE id=613;

INSERT INTO questions (id, body, chapter) VALUES (614, 'The student newspaper at a college asks an SRS of of 250 undergraduates, &quot;Do you favor eliminating the carnival from the term-end celebration?&quot;   In all, 150 of the 250 are in favor.A 95% confidence interval for the population proportion <em>p</em> is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2811, 614, '150 ');
INSERT INTO choices (id, question_id, body) VALUES (2812, 614, '0.6 ');
INSERT INTO choices (id, question_id, body) VALUES (2813, 614, '150 ');
INSERT INTO choices (id, question_id, body) VALUES (2814, 614, '0.6 ');
UPDATE questions SET answer = 2814 WHERE id=614;
INSERT INTO choices (id, question_id, body) VALUES (2815, 614, '1.67 ');

INSERT INTO questions (id, body, chapter) VALUES (615, 'The student newspaper at a college asks an SRS of of 250 undergraduates, &quot;Do you favor eliminating the carnival from the term-end celebration?&quot;   In all, 150 of the 250 are in favor.A 90% confidence interval based on this same sample would have', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2816, 615, 'the same center and a larger margin of error');
INSERT INTO choices (id, question_id, body) VALUES (2817, 615, 'the same center and a smaller margin of error');
UPDATE questions SET answer = 2817 WHERE id=615;
INSERT INTO choices (id, question_id, body) VALUES (2818, 615, 'a larger margin of error and probably a different center');
INSERT INTO choices (id, question_id, body) VALUES (2819, 615, 'a smaller margin of error and probably a different center');
INSERT INTO choices (id, question_id, body) VALUES (2820, 615, 'the same center, but the margin of error changes randomly');

INSERT INTO questions (id, body, chapter) VALUES (616, 'Suppose that (unknown to you) 55% of all undergraduates favor eliminating the carnival.  If you took a very large number of SRSs of size <em>n</em> = 250 from this population, the sampling distribution of the sample proportion p would be normal with', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2821, 616, 'mean 0.55 and standard deviation 0.015');
INSERT INTO choices (id, question_id, body) VALUES (2822, 616, 'mean 0.60 and standard deviation 0.06');
INSERT INTO choices (id, question_id, body) VALUES (2823, 616, 'mean 0.55 and standard deviation 0.06');
INSERT INTO choices (id, question_id, body) VALUES (2824, 616, 'mean 0.60 and standard deviation 0.03');
INSERT INTO choices (id, question_id, body) VALUES (2825, 616, 'mean 0.55 and standard deviation 0.03');
UPDATE questions SET answer = 2825 WHERE id=616;

INSERT INTO questions (id, body, chapter) VALUES (617, 'A basketball player makes 47% of her shots from the field during the season.To simulate whether a shot hits or misses you would assign random digits as follows:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2826, 617, 'One digit simulates one shot; 4 and 7 are a hit, other digits are a miss.');
INSERT INTO choices (id, question_id, body) VALUES (2827, 617, 'One digit simulates one shot; odd digits are a hit and even digits are a miss.');
INSERT INTO choices (id, question_id, body) VALUES (2828, 617, 'Two digits simulate one shot; 00 to 47 are a hit and 48 to 99 are a miss.');
INSERT INTO choices (id, question_id, body) VALUES (2829, 617, 'Two digits simulate one shot; 00 to 46 are a hit and 47 to 99 are a miss.');
UPDATE questions SET answer = 2829 WHERE id=617;
INSERT INTO choices (id, question_id, body) VALUES (2830, 617, 'Two digits simulate one shot; 00 to 45 are a hit and 46 to 99 are a miss.');

INSERT INTO questions (id, body, chapter) VALUES (618, 'A basketball player makes 47% of her shots from the field during the season.Use the correct choice from the previous question and these random digits to simulate 10 shots:<br><br>82734 71490 20467 47511 81676 55300 94383 14893<br><br>How many of these 10 shots are hits?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2831, 618, '2');
INSERT INTO choices (id, question_id, body) VALUES (2832, 618, '3');
INSERT INTO choices (id, question_id, body) VALUES (2833, 618, '4');
UPDATE questions SET answer = 2833 WHERE id=618;
INSERT INTO choices (id, question_id, body) VALUES (2834, 618, '5');
INSERT INTO choices (id, question_id, body) VALUES (2835, 618, '6');

INSERT INTO questions (id, body, chapter) VALUES (619, 'A basketball player makes 47% of her shots from the field during the season.You want to estimate the probability that the player makes 5 or more of 10 shots.  You simulate 10 shots 25 times and get the following numbers of hits:<br><br>5 7 5 4 1 5 3 4 3 4 5 3 4 4 6 3 4 1 7 4 5 5 6 5 7<br><br>What is your estimate of the probability?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2836, 619, '5/25, or 0.20');
INSERT INTO choices (id, question_id, body) VALUES (2837, 619, '11/25, or 0.44');
INSERT INTO choices (id, question_id, body) VALUES (2838, 619, '12/25, or 0.48');
UPDATE questions SET answer = 2838 WHERE id=619;
INSERT INTO choices (id, question_id, body) VALUES (2839, 619, '16/25, or 0.64');
INSERT INTO choices (id, question_id, body) VALUES (2840, 619, '19/25, or 0.76');

INSERT INTO questions (id, body, chapter) VALUES (620, 'A basketball player makes 47% of her shots from the field during the season.Use the same simulation (25 trials with the results given in the previous exercise) to estimate the expected number of hits in 10 shots.  Your estimate is:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2841, 620, '4 out of 10 shots');
INSERT INTO choices (id, question_id, body) VALUES (2842, 620, '4.4 out of 10 shots');
UPDATE questions SET answer = 2842 WHERE id=620;
INSERT INTO choices (id, question_id, body) VALUES (2843, 620, '4.6 out of 10 shots');
INSERT INTO choices (id, question_id, body) VALUES (2844, 620, '5 out of 10 shots');

INSERT INTO questions (id, body, chapter) VALUES (621, 'In government data, a household consists of all occupants of a dwelling unit.  Choose an American household at random and count the number of people it contains.  Here is the assignment of probabilities for your outcome:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="156"><strong>Number of persons</strong><br></p></td><td valign="top" align="left" width="53">1<br></p></td><td valign="top" align="left" width="54">2<br></p></td><td valign="top" align="left" width="53">3<br></p></td><td valign="top" align="left" width="54">4<br></p></td><td valign="top" align="left" width="60">5<br></p></td><td valign="top" align="left" width="60">6<br></p></td><td valign="top" align="left" width="132">7<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="156"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="53">0.25<br></p></td><td valign="top" align="left" width="54">0.32<br></p></td><td valign="top" align="left" width="53">???<br></p></td><td valign="top" align="left" width="54">???<br></p></td><td valign="top" align="left" width="60">0.07<br></p></td><td valign="top" align="left" width="60">0.03<br></p></td><td valign="top" align="left" width="132">0.01<br></p></td></tr></table><br>The probability of finding 3 people in a household is the same as the probability of finding 4 people.  These probabilities are marked ??? in the table of the distribution.  The probability that a household contains 3 people must be <br></p>', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2845, 621, '0.68');
INSERT INTO choices (id, question_id, body) VALUES (2846, 621, '0.32');
INSERT INTO choices (id, question_id, body) VALUES (2847, 621, '0.16');
UPDATE questions SET answer = 2847 WHERE id=621;
INSERT INTO choices (id, question_id, body) VALUES (2848, 621, '0.08');
INSERT INTO choices (id, question_id, body) VALUES (2849, 621, 'between 0 and 1, and we can say no more.');

INSERT INTO questions (id, body, chapter) VALUES (622, 'In government data, a family consists of two or more persons who live together and are related by blood or marriage.  Choose an American family at random and count the number of people it contains.  Here is the assignment of probabilities for your outcome:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="156"><strong>Number of persons</strong><br></p></td><td valign="top" align="left" width="53">2<br></p></td><td valign="top" align="left" width="48">3<br></p></td><td valign="top" align="left" width="54">4<br></p></td><td valign="top" align="left" width="53">5<br></p></td><td valign="top" align="left" width="60">6<br></p></td><td valign="top" align="left" width="198">7<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="156"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="53">0.42<br></p></td><td valign="top" align="left" width="48">0.23<br></p></td><td valign="top" align="left" width="54">0.21<br></p></td><td valign="top" align="left" width="53">0.09<br></p></td><td valign="top" align="left" width="60">0.03<br></p></td><td valign="top" align="left" width="198">0.02 <br></p></td></tr></table>What is the probability that the family you choose has more than 2 people?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2850, 622, '0.35');
INSERT INTO choices (id, question_id, body) VALUES (2851, 622, '0.42');
INSERT INTO choices (id, question_id, body) VALUES (2852, 622, '0.58');
UPDATE questions SET answer = 2852 WHERE id=622;
INSERT INTO choices (id, question_id, body) VALUES (2853, 622, '1.00');
INSERT INTO choices (id, question_id, body) VALUES (2854, 622, 'Between 0 and 1, and we can say no more.');

INSERT INTO questions (id, body, chapter) VALUES (623, 'In government data, a family consists of two or more persons who live together and are related by blood or marriage.  Choose an American family at random and count the number of people it contains.  Here is the assignment of probabilities for your outcome:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="156"><strong>Number of persons</strong><br></p></td><td valign="top" align="left" width="53">2<br></p></td><td valign="top" align="left" width="48">3<br></p></td><td valign="top" align="left" width="54">4<br></p></td><td valign="top" align="left" width="53">5<br></p></td><td valign="top" align="left" width="60">6<br></p></td><td valign="top" align="left" width="198">7<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="156"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="53">0.42<br></p></td><td valign="top" align="left" width="48">0.23<br></p></td><td valign="top" align="left" width="54">0.21<br></p></td><td valign="top" align="left" width="53">0.09<br></p></td><td valign="top" align="left" width="60">0.03<br></p></td><td valign="top" align="left" width="198">0.02 <br></p></td></tr></table>Using the probabilities above, what is the expected size of the family you draw?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2855, 623, '2 people');
INSERT INTO choices (id, question_id, body) VALUES (2856, 623, '3 people');
INSERT INTO choices (id, question_id, body) VALUES (2857, 623, '3.14 people');
UPDATE questions SET answer = 2857 WHERE id=623;
INSERT INTO choices (id, question_id, body) VALUES (2858, 623, '3.5 people');
INSERT INTO choices (id, question_id, body) VALUES (2859, 623, '4.5 people');

INSERT INTO questions (id, body, chapter) VALUES (624, 'Which of the following statements about correlation <em>r</em> is <strong>false</strong>?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2860, 624, '');
INSERT INTO choices (id, question_id, body) VALUES (2861, 624, '');
INSERT INTO choices (id, question_id, body) VALUES (2862, 624, 'It makes no sense to talk about a correlation between a student\'s major and her income.');
INSERT INTO choices (id, question_id, body) VALUES (2863, 624, 'The value of ');
INSERT INTO choices (id, question_id, body) VALUES (2864, 624, '');
UPDATE questions SET answer = 2864 WHERE id=624;

INSERT INTO questions (id, body, chapter) VALUES (625, 'Which of the following statements about a table of random digits is <strong>true</strong>?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2865, 625, 'If each line contains 40 digits, there will be exactly 4 zeros in every line.');
INSERT INTO choices (id, question_id, body) VALUES (2866, 625, 'The probability that there are exactly 4 zeros in a line of 40 digits is exactly 0.5.');
INSERT INTO choices (id, question_id, body) VALUES (2867, 625, 'The number of zeros in a line of 40 digits will vary, but on the average there will be 4 zeros per line.');
UPDATE questions SET answer = 2867 WHERE id=625;
INSERT INTO choices (id, question_id, body) VALUES (2868, 625, 'There can never be 4 zeros in a row because that pattern isn\'t random.');
INSERT INTO choices (id, question_id, body) VALUES (2869, 625, 'Both (C) and (D) are true.');

INSERT INTO questions (id, body, chapter) VALUES (626, 'You want to estimate the proportion of undergraduates at a college who favor eliminating evening exams.  You will choose an SRS.  If you enlarge your SRS from 250 to 1000 students, the sample proportion p ', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2870, 626, 'will have the same mean and the same standard deviation.');
INSERT INTO choices (id, question_id, body) VALUES (2871, 626, 'will have smaller bias and the standard deviation will be 1/4 as large.');
INSERT INTO choices (id, question_id, body) VALUES (2872, 626, 'will have smaller bias and the standard deviation will be 1/2 as large.');
INSERT INTO choices (id, question_id, body) VALUES (2873, 626, 'will have the same mean and the standard deviation will be 1/4 as large.');
INSERT INTO choices (id, question_id, body) VALUES (2874, 626, 'will have the same mean and the standard deviation will be 1/2 as large.');
UPDATE questions SET answer = 2874 WHERE id=626;

INSERT INTO questions (id, body, chapter) VALUES (627, 'Which of the following are sources of nonsampling errors?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2875, 627, 'You can\'t ever contact some of the students in your sample.');
INSERT INTO choices (id, question_id, body) VALUES (2876, 627, 'Some of the students you contact refuse to answer.');
INSERT INTO choices (id, question_id, body) VALUES (2877, 627, 'You choose students by walking through the crowd at a football game.');
INSERT INTO choices (id, question_id, body) VALUES (2878, 627, '(A) and (B) but not (C).');
UPDATE questions SET answer = 2878 WHERE id=627;
INSERT INTO choices (id, question_id, body) VALUES (2879, 627, 'All of (A), (B), and (C).');

INSERT INTO questions (id, body, chapter) VALUES (628, 'A friend rolls cheap dice many times.  He reports that the probabilities of the possible outcomes are about as follows:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="101"><strong>Outcome</strong><br></p></td><td valign="top" align="left" width="48">1<br></p></td><td valign="top" align="left" width="48">2<br></p></td><td valign="top" align="left" width="48">3<br></p></td><td valign="top" align="left" width="48">4<br></p></td><td valign="top" align="left" width="48">5<br></p></td><td valign="top" align="left" width="282">6<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="101"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="48">0.2<br></p></td><td valign="top" align="left" width="48">0.2<br></p></td><td valign="top" align="left" width="48">0.2<br></p></td><td valign="top" align="left" width="48">0.1<br></p></td><td valign="top" align="left" width="48">0.1<br></p></td><td valign="top" align="left" width="282">0.2<br></p></td></tr></table><br>Is this a legitimate probability model? <br></p>', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2880, 628, 'Yes.');
UPDATE questions SET answer = 2880 WHERE id=628;
INSERT INTO choices (id, question_id, body) VALUES (2881, 628, 'No&#8212;the faces must all have the same probability.');
INSERT INTO choices (id, question_id, body) VALUES (2882, 628, 'No&#8212;the 3 and 4 faces are opposite each other, so they must have the same probability.');
INSERT INTO choices (id, question_id, body) VALUES (2883, 628, 'No&#8212;the total probability for all faces is wrong.');
INSERT INTO choices (id, question_id, body) VALUES (2884, 628, 'No&#8212;not all the values given are possible values for a probability.');

INSERT INTO questions (id, body, chapter) VALUES (629, 'What percent of the observations from a normal distribution lie between the standard scores <em>z </em>= &#8211;1 and <em>z</em> = 2? (Hint: sketch a normal curve.)', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2885, 629, '16%');
INSERT INTO choices (id, question_id, body) VALUES (2886, 629, '47.5%');
INSERT INTO choices (id, question_id, body) VALUES (2887, 629, '50%');
INSERT INTO choices (id, question_id, body) VALUES (2888, 629, '61%');
INSERT INTO choices (id, question_id, body) VALUES (2889, 629, '81.5%');
UPDATE questions SET answer = 2889 WHERE id=629;

INSERT INTO questions (id, body, chapter) VALUES (630, 'Before starting a weight reduction program, Joe weighed 216 pounds. At the end of the program, he weighed 187 pounds.  This is a percentage loss of', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2890, 630, '1.34%');
INSERT INTO choices (id, question_id, body) VALUES (2891, 630, '1.55%');
INSERT INTO choices (id, question_id, body) VALUES (2892, 630, '13.4%');
UPDATE questions SET answer = 2892 WHERE id=630;
INSERT INTO choices (id, question_id, body) VALUES (2893, 630, '15.5%');
INSERT INTO choices (id, question_id, body) VALUES (2894, 630, '86.6%');

INSERT INTO questions (id, body, chapter) VALUES (631, 'The governments of all developed nations produce large volumes of data on economic and social issues.  Canada, like most countries, has a single national statistical office (Statistics Canada) that is responsible for these data.  In the United States,', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2895, 631, 'All federal statistics are handled by the Bureau of Labor Statistics.');
INSERT INTO choices (id, question_id, body) VALUES (2896, 631, 'There are separate statistical offices in each federal agency (more than 70 of them).');
UPDATE questions SET answer = 2896 WHERE id=631;
INSERT INTO choices (id, question_id, body) VALUES (2897, 631, 'All data are produced by the states&#8212;there are no federal statistical agencies.');
INSERT INTO choices (id, question_id, body) VALUES (2898, 631, 'All data are produced by private firms&#8212;there are no federal statistical agencies.');

INSERT INTO questions (id, body, chapter) VALUES (632, 'The price of fresh oranges falls early in each year when the orange harvest in Florida is ready, then rises late in the year when oranges from that year\'s harvest begin to run out.  This is an example of', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2899, 632, 'trend in a time series.');
INSERT INTO choices (id, question_id, body) VALUES (2900, 632, 'erratic fluctuations in a time series.');
INSERT INTO choices (id, question_id, body) VALUES (2901, 632, 'seasonal variation in a time series.');
UPDATE questions SET answer = 2901 WHERE id=632;
INSERT INTO choices (id, question_id, body) VALUES (2902, 632, 'confounding.');
INSERT INTO choices (id, question_id, body) VALUES (2903, 632, 'using the CPI to compare prices at different times.');

INSERT INTO questions (id, body, chapter) VALUES (633, 'The &quot;average&quot; income of American households in 1998 was either $38,885 or $51,855, depending on whether we use the mean or median to measure center.  We can say that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2904, 633, '$38,885 is the mean because income distributions are skewed to the left.');
INSERT INTO choices (id, question_id, body) VALUES (2905, 633, '$51,855 is the mean because income distributions are skewed to the left.');
INSERT INTO choices (id, question_id, body) VALUES (2906, 633, '$38,885 is the mean because income distributions are skewed to the right.');
INSERT INTO choices (id, question_id, body) VALUES (2907, 633, '$51,855 is the mean because income distributions are skewed to the right.');
UPDATE questions SET answer = 2907 WHERE id=633;
INSERT INTO choices (id, question_id, body) VALUES (2908, 633, 'One of the numbers must be wrong because income distributions are close to symmetric.');

INSERT INTO questions (id, body, chapter) VALUES (634, 'You have decided to buy a yacht, specifically, a Nautor\'s Swan 68 sailing yacht.  This lovely boat cost $384,300 in 1976, when the CPI was 57.  The CPI at the beginning of 2000 was about 168, and the yacht then cost $2,300,000.  What is the 1976 yacht price expressed in 2000 dollars?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2909, 634, '$130,388');
INSERT INTO choices (id, question_id, body) VALUES (2910, 634, '$780,357');
INSERT INTO choices (id, question_id, body) VALUES (2911, 634, '$1,132,674');
UPDATE questions SET answer = 2911 WHERE id=634;
INSERT INTO choices (id, question_id, body) VALUES (2912, 634, '$6,778,947');

INSERT INTO questions (id, body, chapter) VALUES (635, 'A recent monthly press release on the Consumer Price Index says: &quot;The Consumer Price Index for All Urban Consumers (CPI-U) rose 0.2 percent in October, before seasonal adjustment, to a level of 168.2 (1982&#8211;84=100), the Bureau of Labor Statistics of the U.S. Department of Labor reported today.&quot;What does &quot;1982&#8211;84=100&quot; mean here?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2913, 635, 'The CPI did not exist before 1982.');
INSERT INTO choices (id, question_id, body) VALUES (2914, 635, 'The CPI increased by 100 between 1982 and 1984.');
INSERT INTO choices (id, question_id, body) VALUES (2915, 635, 'The CPI measures prices relative to what they were in the years 1982 to 1984.');
UPDATE questions SET answer = 2915 WHERE id=635;
INSERT INTO choices (id, question_id, body) VALUES (2916, 635, 'To find the CPI, start with 1982&#8211;84 prices and add 100.');

INSERT INTO questions (id, body, chapter) VALUES (636, 'A recent monthly press release on the Consumer Price Index says: &quot;The Consumer Price Index for All Urban Consumers (CPI-U) rose 0.2 percent in October, before seasonal adjustment, to a level of 168.2 (1982&#8211;84=100), the Bureau of Labor Statistics of the U.S. Department of Labor reported today.&quot;What does &quot;seasonal adjustment&quot; mean?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2917, 636, 'Data are seasonally adjusted if we take out changes that occur in about the same size and same time every year.');
UPDATE questions SET answer = 2917 WHERE id=636;
INSERT INTO choices (id, question_id, body) VALUES (2918, 636, 'Data are seasonally adjusted when we ignore the effects of one-time events such as strikes and hurricanes.');
INSERT INTO choices (id, question_id, body) VALUES (2919, 636, 'Data are seasonally adjusted if we report the average for this month over several past years, not just this one month\'s data.');
INSERT INTO choices (id, question_id, body) VALUES (2920, 636, 'Data are seasonally adjusted if we report the average for the past four months, not just this month\'s data.');

INSERT INTO questions (id, body, chapter) VALUES (637, 'A recent monthly press release on the Consumer Price Index says: &quot;The Consumer Price Index for All Urban Consumers (CPI-U) rose 0.2 percent in October, before seasonal adjustment, to a level of 168.2 (1982&#8211;84=100), the Bureau of Labor Statistics of the U.S. Department of Labor reported today.&quot;The CPI was 163.3 in September, 1998 and 167.9 in September, 1999. By what percent did the CPI increase in this 12-month period?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2921, 637, '0.5%');
INSERT INTO choices (id, question_id, body) VALUES (2922, 637, '2.7%');
INSERT INTO choices (id, question_id, body) VALUES (2923, 637, '2.8%');
UPDATE questions SET answer = 2923 WHERE id=637;
INSERT INTO choices (id, question_id, body) VALUES (2924, 637, '97.3%');
INSERT INTO choices (id, question_id, body) VALUES (2925, 637, '102.8%');

INSERT INTO questions (id, body, chapter) VALUES (638, 'Which of these statements is always true of the standard deviation <em>s</em>?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2926, 638, '');
INSERT INTO choices (id, question_id, body) VALUES (2927, 638, '');
INSERT INTO choices (id, question_id, body) VALUES (2928, 638, '');
INSERT INTO choices (id, question_id, body) VALUES (2929, 638, 'Both (A) and (C).');
UPDATE questions SET answer = 2929 WHERE id=638;
INSERT INTO choices (id, question_id, body) VALUES (2930, 638, 'Both (B) and (C).');

INSERT INTO questions (id, body, chapter) VALUES (639, 'Which of these statements is true of the correlation <em>r</em>?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2931, 639, '');
INSERT INTO choices (id, question_id, body) VALUES (2932, 639, '');
INSERT INTO choices (id, question_id, body) VALUES (2933, 639, '');
INSERT INTO choices (id, question_id, body) VALUES (2934, 639, 'Both (A) and (C).');
INSERT INTO choices (id, question_id, body) VALUES (2935, 639, 'Both (B) and (C).');
UPDATE questions SET answer = 2935 WHERE id=639;

INSERT INTO questions (id, body, chapter) VALUES (640, 'The <em>Journal of the American Medical Association</em> recently published an article titled &quot;The Spread of the Obesity Epidemic in the United States.&quot;  Here is a plot of the percent of adults who are obese in each of the 45 states that participated in a large study.  The data are in percents and tenths of a percent.  For example, 19.5% of Indiana adults are obese.<br><br><img src="/images/freeman/candc/f3-45.jpg"><br>This type of graph is called a', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2936, 640, 'boxplot');
INSERT INTO choices (id, question_id, body) VALUES (2937, 640, 'histogram');
INSERT INTO choices (id, question_id, body) VALUES (2938, 640, 'line graph');
INSERT INTO choices (id, question_id, body) VALUES (2939, 640, 'scatterplot');
INSERT INTO choices (id, question_id, body) VALUES (2940, 640, 'stemplot');
UPDATE questions SET answer = 2940 WHERE id=640;

INSERT INTO questions (id, body, chapter) VALUES (641, 'The <em>Journal of the American Medical Association</em> recently published an article titled &quot;The Spread of the Obesity Epidemic in the United States.&quot;  Here is a plot of the percent of adults who are obese in each of the 45 states that participated in a large study.  The data are in percents and tenths of a percent.  For example, 19.5% of Indiana adults are obese.<br><br><img src="/images/freeman/candc/f3-45.jpg"><br>The median percent of obese adults in these 45 states is:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2941, 641, '17.69%');
INSERT INTO choices (id, question_id, body) VALUES (2942, 641, '17.8%');
INSERT INTO choices (id, question_id, body) VALUES (2943, 641, '17.85%');
INSERT INTO choices (id, question_id, body) VALUES (2944, 641, '17.9%');
UPDATE questions SET answer = 2944 WHERE id=641;
INSERT INTO choices (id, question_id, body) VALUES (2945, 641, '23%');

INSERT INTO questions (id, body, chapter) VALUES (642, 'Below is a graph of the percent of adults in each state who were obese in 1991 and the percent who were obese in 1998:<br><br><img src="/images/freeman/candc/f3-47.jpg"><br>This type of graph is called a', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2946, 642, 'boxplot');
INSERT INTO choices (id, question_id, body) VALUES (2947, 642, 'histogram');
INSERT INTO choices (id, question_id, body) VALUES (2948, 642, 'line graph');
INSERT INTO choices (id, question_id, body) VALUES (2949, 642, 'scatterplot');
UPDATE questions SET answer = 2949 WHERE id=642;
INSERT INTO choices (id, question_id, body) VALUES (2950, 642, 'stemplot');

INSERT INTO questions (id, body, chapter) VALUES (643, 'Below is a graph of the percent of adults in each state who were obese in 1991 and the percent who were obese in 1998:<br><br><img src="/images/freeman/candc/f3-47.jpg"><br>Which of these is a reasonable value of the correlation <em>r </em>for the data in this graph?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2951, 643, '');
INSERT INTO choices (id, question_id, body) VALUES (2952, 643, '');
INSERT INTO choices (id, question_id, body) VALUES (2953, 643, '');
UPDATE questions SET answer = 2953 WHERE id=643;
INSERT INTO choices (id, question_id, body) VALUES (2954, 643, '');
INSERT INTO choices (id, question_id, body) VALUES (2955, 643, '');

INSERT INTO questions (id, body, chapter) VALUES (644, 'Below is a graph of the percent of adults in each state who were obese in 1991 and the percent who were obese in 1998:<br><br><img src="/images/freeman/candc/f3-47.jpg"><br>Arizona had the lowest percent obese in 1998, 12.7%.  About what percent of Arizona adults were obese in 1991?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2956, 644, '7.8%');
INSERT INTO choices (id, question_id, body) VALUES (2957, 644, '11.0%');
UPDATE questions SET answer = 2957 WHERE id=644;
INSERT INTO choices (id, question_id, body) VALUES (2958, 644, '12.7%');
INSERT INTO choices (id, question_id, body) VALUES (2959, 644, '14.7%');

INSERT INTO questions (id, body, chapter) VALUES (645, 'Below is a graph of the percent of adults in each state who were obese in 1991 and the percent who were obese in 1998:<br><br><img src="/images/freeman/candc/f3-47.jpg"><br>The least-squares regression line for predicting 1998 percent obese from 1991 percent obese is <em>y</em> = 7.4 + 0.86<em>x</em>.  In 1991, 14.8% of Indiana adults were obese.  Based on this information, what percent would you predict to be obese in 1998?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2960, 645, '5.3%');
INSERT INTO choices (id, question_id, body) VALUES (2961, 645, '7.5%');
INSERT INTO choices (id, question_id, body) VALUES (2962, 645, '12.7%');
INSERT INTO choices (id, question_id, body) VALUES (2963, 645, '19.5%');
INSERT INTO choices (id, question_id, body) VALUES (2964, 645, '20.1%');
UPDATE questions SET answer = 2964 WHERE id=645;

INSERT INTO questions (id, body, chapter) VALUES (646, '</A>', 17224);

INSERT INTO questions (id, body, chapter) VALUES (647, 'Below is a graph of the percent of adults in each state who were obese in 1991 and the percent who were obese in 1998:<br><br><img src="/images/freeman/candc/f3-47.jpg"><br>The 11 states in the Midwest have these percents of obese adults:<br><br>19.5 19.5 17.9 20.7 17.9 15.7 19.3 19.8 18.7 15.4 17.5<br><br>The mean and standard deviation of these values are about:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2965, 647, '18.35 and 18.7');
INSERT INTO choices (id, question_id, body) VALUES (2966, 647, '18.35 and 19.5');
INSERT INTO choices (id, question_id, body) VALUES (2967, 647, '18.7 and 1.68');
INSERT INTO choices (id, question_id, body) VALUES (2968, 647, '18.35 and 1.68');
UPDATE questions SET answer = 2968 WHERE id=647;
INSERT INTO choices (id, question_id, body) VALUES (2969, 647, '18.35 and 2.00');

INSERT INTO questions (id, body, chapter) VALUES (648, '</A>', 17224);

INSERT INTO questions (id, body, chapter) VALUES (649, 'Below is a graph of the percent of adults in each state who were obese in 1991 and the percent who were obese in 1998:<br><br><img src="/images/freeman/candc/f3-47.jpg"><br>Indiana has 19.5% obese adults.  Where does Indiana stand in the distribution for the 11 Midwest states?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2970, 649, 'Below the median.');
INSERT INTO choices (id, question_id, body) VALUES (2971, 649, 'Exactly at the median.');
INSERT INTO choices (id, question_id, body) VALUES (2972, 649, 'Above the median but below the third quartile');
INSERT INTO choices (id, question_id, body) VALUES (2973, 649, 'Exactly at the third quartile.');
UPDATE questions SET answer = 2973 WHERE id=649;
INSERT INTO choices (id, question_id, body) VALUES (2974, 649, 'Above the third quartile.');

INSERT INTO questions (id, body, chapter) VALUES (650, 'A study of fathers\' involvement in their children\'s education interviews a sample of fathers of school-age children. One question concerns regularly scheduled parent-teacher conferences.  Here is a two-way table of the results:<br><br><img src="/images/freeman/candc/f3-53.jpg"><br>How many fathers were interviewed?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2975, 650, '135');
INSERT INTO choices (id, question_id, body) VALUES (2976, 650, '444');
INSERT INTO choices (id, question_id, body) VALUES (2977, 650, '580');
UPDATE questions SET answer = 2977 WHERE id=650;
INSERT INTO choices (id, question_id, body) VALUES (2978, 650, '444,000');
INSERT INTO choices (id, question_id, body) VALUES (2979, 650, '580,000');

INSERT INTO questions (id, body, chapter) VALUES (651, 'A study of fathers\' involvement in their children\'s education interviews a sample of fathers of school-age children. One question concerns regularly scheduled parent-teacher conferences.  Here is a two-way table of the results:<br><br><img src="/images/freeman/candc/f3-53.jpg"><br>How many fathers from single-parent families were interviewed?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2980, 651, '38');
UPDATE questions SET answer = 2980 WHERE id=651;
INSERT INTO choices (id, question_id, body) VALUES (2981, 651, '444');
INSERT INTO choices (id, question_id, body) VALUES (2982, 651, '580');
INSERT INTO choices (id, question_id, body) VALUES (2983, 651, '38,000');
INSERT INTO choices (id, question_id, body) VALUES (2984, 651, '444,000');

INSERT INTO questions (id, body, chapter) VALUES (652, 'A study of fathers\' involvement in their children\'s education interviews a sample of fathers of school-age children. One question concerns regularly scheduled parent-teacher conferences.  Here is a two-way table of the results:<br><br><img src="/images/freeman/candc/f3-53.jpg"><br>What percent of single-parent fathers attended all the conferences?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2985, 652, 'about 39%');
UPDATE questions SET answer = 2985 WHERE id=652;
INSERT INTO choices (id, question_id, body) VALUES (2986, 652, 'about 23%');
INSERT INTO choices (id, question_id, body) VALUES (2987, 652, 'about 11%');
INSERT INTO choices (id, question_id, body) VALUES (2988, 652, 'about 2.5%');

INSERT INTO questions (id, body, chapter) VALUES (653, 'A study of fathers\' involvement in their children\'s education interviews a sample of fathers of school-age children. One question concerns regularly scheduled parent-teacher conferences.  Here is a two-way table of the results:<br><br><img src="/images/freeman/candc/f3-53.jpg"><br>We can summarize the relationship between family status and fathers\' attendance at parent-teacher conferences by saying', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2989, 653, 'Few fathers are single parents, more are nonresident, and most are in two-parent families.');
INSERT INTO choices (id, question_id, body) VALUES (2990, 653, 'Fathers in two-parent families are much more likely to attend than other fathers, and nonresident fathers rarely attend.');
INSERT INTO choices (id, question_id, body) VALUES (2991, 653, 'Nonresident fathers rarely attend, and single-parent fathers are somewhat more likely to attend than fathers in two-parent families.');
UPDATE questions SET answer = 2991 WHERE id=653;
INSERT INTO choices (id, question_id, body) VALUES (2992, 653, 'Most fathers attended no school conferences, and only about a quarter attended all.');

INSERT INTO questions (id, body, chapter) VALUES (654, 'A study of fathers\' involvement in their children\'s education interviews a sample of fathers of school-age children. One question concerns regularly scheduled parent-teacher conferences.  Here is a two-way table of the results:<br><br><img src="/images/freeman/candc/f3-53.jpg"><br>The chi-square statistic for this two-way table is <em>X</em><sup>2</sup> = 54.8 with <em>P</em>-value <em>P</em> &lt; 0.001.  We can conclude that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2993, 654, 'There is very strong evidence that family status and fathers\' attendance at school conferences are related in the population of all fathers.');
UPDATE questions SET answer = 2993 WHERE id=654;
INSERT INTO choices (id, question_id, body) VALUES (2994, 654, 'There is very strong evidence that family status and fathers\' attendance at school conferences are related among the fathers in this sample.');
INSERT INTO choices (id, question_id, body) VALUES (2995, 654, 'We lack strong evidence that family status and fathers\' attendance at school conferences are related in the population of all fathers.');
INSERT INTO choices (id, question_id, body) VALUES (2996, 654, 'We lack strong evidence that family status and fathers\' attendance at school conferences are related among the fathers in this sample.');

INSERT INTO questions (id, body, chapter) VALUES (655, 'Here is a two-way table of the numbers of college students (U.S. citizens only) classified by racial/ethnic group and by whether they attend a public or a private college.  The entries are in thousands of students.<br><br><img src="/images/freeman/candc/f3-58.jpg"><br>How many non-Hispanic black college students are there?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (2997, 655, '1121');
INSERT INTO choices (id, question_id, body) VALUES (2998, 655, '11,210');
INSERT INTO choices (id, question_id, body) VALUES (2999, 655, '112,100');
INSERT INTO choices (id, question_id, body) VALUES (3000, 655, '1,121,000');
UPDATE questions SET answer = 3000 WHERE id=655;
INSERT INTO choices (id, question_id, body) VALUES (3001, 655, '11,210,000');

INSERT INTO questions (id, body, chapter) VALUES (656, 'Here is a two-way table of the numbers of college students (U.S. citizens only) classified by racial/ethnic group and by whether they attend a public or a private college.  The entries are in thousands of students.<br><br><img src="/images/freeman/candc/f3-58.jpg"><br>What percent of non-Hispanic black students attend public colleges?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3002, 656, '9.8%');
INSERT INTO choices (id, question_id, body) VALUES (3003, 656, '10.4%');
INSERT INTO choices (id, question_id, body) VALUES (3004, 656, '13.3%');
INSERT INTO choices (id, question_id, body) VALUES (3005, 656, '26%');
INSERT INTO choices (id, question_id, body) VALUES (3006, 656, '74%');
UPDATE questions SET answer = 3006 WHERE id=656;

INSERT INTO questions (id, body, chapter) VALUES (657, 'Here is a two-way table of the numbers of college students (U.S. citizens only) classified by racial/ethnic group and by whether they attend a public or a private college.  The entries are in thousands of students.<br><br><img src="/images/freeman/candc/f3-58.jpg"><br>There is no reason to use the chi-square test on these data, because', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3007, 657, 'The hypothesis that chi-square tests makes no sense here.');
INSERT INTO choices (id, question_id, body) VALUES (3008, 657, 'The data describe the entire population of college students, so there is no inference from sample to population.');
INSERT INTO choices (id, question_id, body) VALUES (3009, 657, 'The sample size is so large that any test will certainly be highly significant.');
UPDATE questions SET answer = 3009 WHERE id=657;
INSERT INTO choices (id, question_id, body) VALUES (3010, 657, 'The sample size is too small to allow use of the chi-square test.');

INSERT INTO questions (id, body, chapter) VALUES (658, 'Here is a two-way table of the numbers of college students (U.S. citizens only) classified by racial/ethnic group and by whether they attend a public or a private college.  The entries are in thousands of students.<br><br><img src="/images/freeman/candc/f3-58.jpg"><br>What percent of public college students are non-Hispanic blacks?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3011, 658, '9.8%');
UPDATE questions SET answer = 3011 WHERE id=658;
INSERT INTO choices (id, question_id, body) VALUES (3012, 658, '10.4%');
INSERT INTO choices (id, question_id, body) VALUES (3013, 658, '13.3%');
INSERT INTO choices (id, question_id, body) VALUES (3014, 658, '26%');
INSERT INTO choices (id, question_id, body) VALUES (3015, 658, '74%');

INSERT INTO questions (id, body, chapter) VALUES (659, 'The phrase &quot;95% confidence&quot; in a Gallup Poll press release means that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3016, 659, 'our results are true for 95% of the population of all adults.');
INSERT INTO choices (id, question_id, body) VALUES (3017, 659, '95% of the population falls within the margin of error we announce.');
INSERT INTO choices (id, question_id, body) VALUES (3018, 659, 'the probability is 0.95 that a randomly chosen adult falls in the margin of error we announce.');
INSERT INTO choices (id, question_id, body) VALUES (3019, 659, 'we got these results using a method that gives correct answers in 95% of all samples.');
UPDATE questions SET answer = 3019 WHERE id=659;

INSERT INTO questions (id, body, chapter) VALUES (660, 'A recent Gallup Poll interviewed a random sample of 1523 adults. Of these, 868 bought a lottery ticket in the past year.A 95% confidence interval for the proportion of all adults who bought a lottery ticket in the past year is (assume Gallup used an SRS)', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3020, 660, '0.57 ');
INSERT INTO choices (id, question_id, body) VALUES (3021, 660, '0.57 ');
INSERT INTO choices (id, question_id, body) VALUES (3022, 660, '0.57 ');
INSERT INTO choices (id, question_id, body) VALUES (3023, 660, '0.57 ');
UPDATE questions SET answer = 3023 WHERE id=660;
INSERT INTO choices (id, question_id, body) VALUES (3024, 660, '0.57 ');

INSERT INTO questions (id, body, chapter) VALUES (661, 'A recent Gallup Poll interviewed a random sample of 1523 adults. Of these, 868 bought a lottery ticket in the past year.Suppose that in fact (unknown to Gallup) exactly 60% of all adults bought a lottery ticket in the past year.  If Gallup took many SRSs of 1523 people, the sample proportion who bought a ticket would vary from sample to sample.  The sampling distribution would be close to normal with', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3025, 661, 'mean 0.6 and standard deviation 0.00016');
INSERT INTO choices (id, question_id, body) VALUES (3026, 661, 'mean 0.6 and standard deviation 0.0126');
UPDATE questions SET answer = 3026 WHERE id=661;
INSERT INTO choices (id, question_id, body) VALUES (3027, 661, 'mean 0.6 and standard deviation 0.4899');
INSERT INTO choices (id, question_id, body) VALUES (3028, 661, 'mean 0.6 and standard deviation 0.0251');

INSERT INTO questions (id, body, chapter) VALUES (662, 'A recent Gallup Poll interviewed a random sample of 1523 adults. Of these, 868 bought a lottery ticket in the past year.The same Gallup Poll asked its 1523 adult respondents and also 501 teens (ages 13 to 17) whether they generally approved of legal gambling: 63% of adults and 52% of teens said yes.  The margin of error for a 95% confidence statement about teens would be', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3029, 662, 'greater than for adults, because the teen sample is smaller.');
UPDATE questions SET answer = 3029 WHERE id=662;
INSERT INTO choices (id, question_id, body) VALUES (3030, 662, 'less than for adults, because the teen sample is smaller.');
INSERT INTO choices (id, question_id, body) VALUES (3031, 662, 'less than for adults, because there are fewer teens in the population.');
INSERT INTO choices (id, question_id, body) VALUES (3032, 662, 'the same as for adults, because they both come from the same sample survey.');
INSERT INTO choices (id, question_id, body) VALUES (3033, 662, 'can\'t say, because it depends on what percent of each population was in the sample.');

INSERT INTO questions (id, body, chapter) VALUES (663, 'Computer voice recognition software is getting better.  Some companies claim that their software correctly recognizes 98% of all words spoken by a trained user.To simulate recognizing a single word when the probability of being correct is 0.98, you would use random digits as follows:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3034, 663, 'two digits simulate one word; 00 to 97 mean &quot;correct.&quot;');
UPDATE questions SET answer = 3034 WHERE id=663;
INSERT INTO choices (id, question_id, body) VALUES (3035, 663, 'two digits simulate one word; 00 to 98 mean &quot;correct.&quot;');
INSERT INTO choices (id, question_id, body) VALUES (3036, 663, 'one digit simulates one word; 0 to 9 mean &quot;correct.&quot;');
INSERT INTO choices (id, question_id, body) VALUES (3037, 663, 'three digits simulate one word; 001 to 098 mean &quot;correct.&quot;');

INSERT INTO questions (id, body, chapter) VALUES (664, 'Cmputer voice recognition software is getting better.  Some companies claim that their software correctly recognizes 98% of all words spoken by a trained user.The program recognizes words (or not) independently.  To simulate the program\'s performance on 10 words, use your method from the previous problem and these random digits:<br><br>60970  70024  17868  29843  61790  90656  87964  18883<br><br>The number of words correct out of the 10 is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3038, 664, '10');
INSERT INTO choices (id, question_id, body) VALUES (3039, 664, '9');
UPDATE questions SET answer = 3039 WHERE id=664;
INSERT INTO choices (id, question_id, body) VALUES (3040, 664, '8');
INSERT INTO choices (id, question_id, body) VALUES (3041, 664, '2');

INSERT INTO questions (id, body, chapter) VALUES (665, 'Investment advisors now often report correlations.  For example, the correlation between gains and losses in large cap stocks and gains and losses in municipal bonds is <em>r</em> = 0.45 .  This means that the percent of changes in municipal bond performance that can be explained by the straight line relationship between municipal bonds and large cap stocks is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3042, 665, '90%');
INSERT INTO choices (id, question_id, body) VALUES (3043, 665, '67%');
INSERT INTO choices (id, question_id, body) VALUES (3044, 665, '45%');
INSERT INTO choices (id, question_id, body) VALUES (3045, 665, '20%');
UPDATE questions SET answer = 3045 WHERE id=665;

INSERT INTO questions (id, body, chapter) VALUES (666, 'Coose an American household at random and ask how many cars and trucks that household owns.  Here are the probabilities as of 1997:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="168"><strong>Number of vehicles</strong><br></p></td><td valign="top" align="left" width="60">0<br></p></td><td valign="top" align="left" width="60">1<br></p></td><td valign="top" align="left" width="60">2<br></p></td><td valign="top" align="left" width="60">3<br></p></td><td valign="top" align="left" width="60">4<br></p></td><td valign="top" align="left" width="156">5<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="168"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="60">0.04<br></p></td><td valign="top" align="left" width="60">0.25<br></p></td><td valign="top" align="left" width="60">0.45<br></p></td><td valign="top" align="left" width="60">0.18<br></p></td><td valign="top" align="left" width="60">0.06<br></p></td><td valign="top" align="left" width="156">0.02<br></p></td></tr></table>This is a legitimate assignment of probabilities because it satisfies these rules:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3046, 666, 'all the probabilities are between 0 and 1.');
INSERT INTO choices (id, question_id, body) VALUES (3047, 666, 'all the probabilities are between  &#8211;1  and 1.');
INSERT INTO choices (id, question_id, body) VALUES (3048, 666, 'the sum of all the probabilities is exactly 1.');
INSERT INTO choices (id, question_id, body) VALUES (3049, 666, 'Both (A) and (C).');
UPDATE questions SET answer = 3049 WHERE id=666;
INSERT INTO choices (id, question_id, body) VALUES (3050, 666, 'Both (B) and (C).');

INSERT INTO questions (id, body, chapter) VALUES (667, 'Coose an American household at random and ask how many cars and trucks that household owns.  Here are the probabilities as of 1997:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="168"><strong>Number of vehicles</strong><br></p></td><td valign="top" align="left" width="60">0<br></p></td><td valign="top" align="left" width="60">1<br></p></td><td valign="top" align="left" width="60">2<br></p></td><td valign="top" align="left" width="60">3<br></p></td><td valign="top" align="left" width="60">4<br></p></td><td valign="top" align="left" width="156">5<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="168"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="60">0.04<br></p></td><td valign="top" align="left" width="60">0.25<br></p></td><td valign="top" align="left" width="60">0.45<br></p></td><td valign="top" align="left" width="60">0.18<br></p></td><td valign="top" align="left" width="60">0.06<br></p></td><td valign="top" align="left" width="156">0.02<br></p></td></tr></table>What is the probability that a randomly chosen household owns more than one motor vehicle?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3051, 667, '0.96');
INSERT INTO choices (id, question_id, body) VALUES (3052, 667, '0.71');
UPDATE questions SET answer = 3052 WHERE id=667;
INSERT INTO choices (id, question_id, body) VALUES (3053, 667, '0.26');
INSERT INTO choices (id, question_id, body) VALUES (3054, 667, '0.25');

INSERT INTO questions (id, body, chapter) VALUES (668, 'Coose an American household at random and ask how many cars and trucks that household owns.  Here are the probabilities as of 1997:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="168"><strong>Number of vehicles</strong><br></p></td><td valign="top" align="left" width="60">0<br></p></td><td valign="top" align="left" width="60">1<br></p></td><td valign="top" align="left" width="60">2<br></p></td><td valign="top" align="left" width="60">3<br></p></td><td valign="top" align="left" width="60">4<br></p></td><td valign="top" align="left" width="156">5<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="168"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="60">0.04<br></p></td><td valign="top" align="left" width="60">0.25<br></p></td><td valign="top" align="left" width="60">0.45<br></p></td><td valign="top" align="left" width="60">0.18<br></p></td><td valign="top" align="left" width="60">0.06<br></p></td><td valign="top" align="left" width="156">0.02<br></p></td></tr></table>What is the expected number of vehicles owned by a randomly chosen household?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3055, 668, '2.03');
UPDATE questions SET answer = 3055 WHERE id=668;
INSERT INTO choices (id, question_id, body) VALUES (3056, 668, '2.07');
INSERT INTO choices (id, question_id, body) VALUES (3057, 668, '2.5');
INSERT INTO choices (id, question_id, body) VALUES (3058, 668, '2.91');

INSERT INTO questions (id, body, chapter) VALUES (669, 'Dice have six faces, showing 1 to 6 pips (spots).  If a die is balanced, all six faces are equally likely.  What must be the probability of each face?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3059, 669, '1/10, or 0.10.');
INSERT INTO choices (id, question_id, body) VALUES (3060, 669, '1/6, or 0.167.');
UPDATE questions SET answer = 3060 WHERE id=669;
INSERT INTO choices (id, question_id, body) VALUES (3061, 669, '2/10, or 0.20.');
INSERT INTO choices (id, question_id, body) VALUES (3062, 669, 'could be any number between 0 and 1.');

INSERT INTO questions (id, body, chapter) VALUES (670, 'The casino game craps is based on rolling two dice.  Here is the assignment of probabilities to the sum of the numbers on the up faces when two dice are rolled:<br><br><img src="/images/freeman/candc/f3-73.jpg"><br>The most common bet in craps is the &quot;pass line.&quot;  A pass line bettor wins immediately if either a 7 or an 11 comes up on the first roll.  This is called a &quot;natural.&quot;  What is the probability of a natural?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3063, 670, '2/36');
INSERT INTO choices (id, question_id, body) VALUES (3064, 670, '6/36');
INSERT INTO choices (id, question_id, body) VALUES (3065, 670, '8/36');
UPDATE questions SET answer = 3065 WHERE id=670;
INSERT INTO choices (id, question_id, body) VALUES (3066, 670, '12/36');
INSERT INTO choices (id, question_id, body) VALUES (3067, 670, '20/36');

INSERT INTO questions (id, body, chapter) VALUES (671, 'The casino game craps is based on rolling two dice.  Here is the assignment of probabilities to the sum of the numbers on the up faces when two dice are rolled:<br><br><img src="/images/freeman/candc/f3-73.jpg"><br>Gigi has rolled a natural on four straight tosses of the dice. This excites the gamblers standing around the table.  They should know that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3068, 671, 'Gigi has a hot hand, so she is more likely to roll another natural.');
INSERT INTO choices (id, question_id, body) VALUES (3069, 671, 'The law of averages says that Gigi is now less likely to roll another natural.');
INSERT INTO choices (id, question_id, body) VALUES (3070, 671, 'Rolls are independent, so the chance of rolling another natural has not changed.');
UPDATE questions SET answer = 3070 WHERE id=671;
INSERT INTO choices (id, question_id, body) VALUES (3071, 671, 'Four straight naturals are almost impossible, so the dice are probably loaded.');

INSERT INTO questions (id, body, chapter) VALUES (672, 'A shocking fact: 66% of all teenagers have a TV set in their room.  If an opinion poll chooses an SRS of 1000 teens and asks if they have a TV set in their room, the percent who say &quot;Yes&quot; will vary if the sample is repeated.  In fact, the percent &quot;Yes&quot; in many samples will follow a normal distribution with mean 66% and standard deviation 1.5%.Which of these ranges of outcomes contains 95% of all the results of a large number of polls of 1000 teens?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3072, 672, '66% to 100%');
INSERT INTO choices (id, question_id, body) VALUES (3073, 672, '64.5% to 67.5%');
INSERT INTO choices (id, question_id, body) VALUES (3074, 672, '63% to 69%');
UPDATE questions SET answer = 3074 WHERE id=672;
INSERT INTO choices (id, question_id, body) VALUES (3075, 672, '61.5% to 70.5%');

INSERT INTO questions (id, body, chapter) VALUES (673, 'A shocking fact: 66% of all teenagers have a TV set in their room.  If an opinion poll chooses an SRS of 1000 teens and asks if they have a TV set in their room, the percent who say &quot;Yes&quot; will vary if the sample is repeated.  In fact, the percent &quot;Yes&quot; in many samples will follow a normal distribution with mean 66% and standard deviation 1.5%.Although the result will vary if the poll is repeated, the distribution of results is centered at the truth about the population (66%).  We call this desirable property of an SRS', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3076, 673, 'lack of bias.');
UPDATE questions SET answer = 3076 WHERE id=673;
INSERT INTO choices (id, question_id, body) VALUES (3077, 673, 'low variability.');
INSERT INTO choices (id, question_id, body) VALUES (3078, 673, 'symmetry.');
INSERT INTO choices (id, question_id, body) VALUES (3079, 673, 'margin of error.');

INSERT INTO questions (id, body, chapter) VALUES (674, 'A shocking fact: 66% of all teenagers have a TV set in their room.  If an opinion poll chooses an SRS of 1000 teens and asks if they have a TV set in their room, the percent who say &quot;Yes&quot; will vary if the sample is repeated.  In fact, the percent &quot;Yes&quot; in many samples will follow a normal distribution with mean 66% and standard deviation 1.5%.The variation from sample to sample when the poll is repeated is described by the standard deviation (1.5%).  We would like this variation to be small, so that repeated polls give almost the same result.  To reduce the standard deviation, we could', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3080, 674, 'use an SRS of size less than 1000.');
INSERT INTO choices (id, question_id, body) VALUES (3081, 674, 'use an SRS of size greater than 1000.');
UPDATE questions SET answer = 3081 WHERE id=674;
INSERT INTO choices (id, question_id, body) VALUES (3082, 674, 'use a confidence level less than 95%.');
INSERT INTO choices (id, question_id, body) VALUES (3083, 674, 'use a confidence level greater than 95%.');
INSERT INTO choices (id, question_id, body) VALUES (3084, 674, 'Both (B) and (C).');

INSERT INTO questions (id, body, chapter) VALUES (675, 'Professional sample surveys use careful random samples, usually by randomly dialing telephone numbers, to come close to an SRS. But the results that a sample survey actually obtains may be strongly biased because', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3085, 675, 'the typical sample size of 1000 or 1500 people is too small.');
INSERT INTO choices (id, question_id, body) VALUES (3086, 675, 'many people have unlisted telephone numbers and so are left out.');
INSERT INTO choices (id, question_id, body) VALUES (3087, 675, 'surveys report only what their sponsors want to hear.');
INSERT INTO choices (id, question_id, body) VALUES (3088, 675, 'many people refuse to respond to telephone surveys.');
UPDATE questions SET answer = 3088 WHERE id=675;

INSERT INTO questions (id, body, chapter) VALUES (676, 'You read that drinking moderate amounts of alcohol may reduce the risk of heart disease.  To be convinced this is true, you would like to have data from', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3089, 676, 'a random sample of people with heart disease that asked about their drinking habits.');
INSERT INTO choices (id, question_id, body) VALUES (3090, 676, 'a random sample of people with different drinking habits, followed for several years to compare their future heart disease.');
INSERT INTO choices (id, question_id, body) VALUES (3091, 676, 'a comparison of heart disease rates in countries where people drink lots of wine with countries where people drink little.');
INSERT INTO choices (id, question_id, body) VALUES (3092, 676, 'a randomized comparative experiment in which some people drink moderately and others do not drink at all.');
UPDATE questions SET answer = 3092 WHERE id=676;

INSERT INTO questions (id, body, chapter) VALUES (677, 'A gambler who keeps placing $1 bets on roulette will, after a very large number of bets, find that his average winnings per bet are close to $0.947.  (The house keeps the other $0.053 per bet.)  The statistical term for the number $0.947 is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3093, 677, 'the probability of winning a bet.');
INSERT INTO choices (id, question_id, body) VALUES (3094, 677, 'the bias of a bet.');
INSERT INTO choices (id, question_id, body) VALUES (3095, 677, 'a random number.');
INSERT INTO choices (id, question_id, body) VALUES (3096, 677, 'the expected value of a bet.');
UPDATE questions SET answer = 3096 WHERE id=677;

INSERT INTO questions (id, body, chapter) VALUES (678, 'When a sample survey asks people about use of illegal drugs, some people who use drugs will deny that they do because they fear that the information will be given to the police or employers.', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3097, 678, 'This is a sampling error that causes bias.');
INSERT INTO choices (id, question_id, body) VALUES (3098, 678, 'This is a sampling error that increases variability.');
INSERT INTO choices (id, question_id, body) VALUES (3099, 678, 'This is a nonsampling error that causes bias.');
UPDATE questions SET answer = 3099 WHERE id=678;
INSERT INTO choices (id, question_id, body) VALUES (3100, 678, 'This is a nonsampling error that increases variability.');

INSERT INTO questions (id, body, chapter) VALUES (679, 'You take an SRS of size 100 from the 48,300 students at Ohio State University.  You then take an SRS of size 100 from the 8,500,000 adults in the state of Ohio.  The margin of error in a 95% confidence statement for the Ohio State student sample is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3101, 679, 'the same as for the sample of Ohio adults because both are samples of size 100.');
UPDATE questions SET answer = 3101 WHERE id=679;
INSERT INTO choices (id, question_id, body) VALUES (3102, 679, 'smaller than for the sample of Ohio adults because the population is much larger.');
INSERT INTO choices (id, question_id, body) VALUES (3103, 679, 'larger than for the sample of Ohio adults because the population is much larger.');
INSERT INTO choices (id, question_id, body) VALUES (3104, 679, 'either larger or smaller than for the sample of Ohio adults because it changes at e) random when we take a sample.');

INSERT INTO questions (id, body, chapter) VALUES (680, 'Increasing the size of an SRS has these beneficial effects:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3105, 680, 'the bias of the sample is reduced relative to smaller SRSs.');
INSERT INTO choices (id, question_id, body) VALUES (3106, 680, 'the margin of error is smaller than it is for smaller SRSs.');
UPDATE questions SET answer = 3106 WHERE id=680;
INSERT INTO choices (id, question_id, body) VALUES (3107, 680, 'nonsampling errors become less important');
INSERT INTO choices (id, question_id, body) VALUES (3108, 680, '(A) and (B) but not (C).');
INSERT INTO choices (id, question_id, body) VALUES (3109, 680, 'all of (A), (B), and (C).');

INSERT INTO questions (id, body, chapter) VALUES (681, 'A Gallup Poll asked 1013 randomly chosen adults to rate the &quot;honesty and ethical standards&quot; of 45 occupations.  Nurses were at the top, with 73% of the poll respondents rating them &quot;very high&quot; or &quot;high.&quot;  Car salesmen were at the bottom with just 8% &quot;very high&quot; or &quot;high&quot; ratings.The population for this poll is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3110, 681, 'all adults.');
UPDATE questions SET answer = 3110 WHERE id=681;
INSERT INTO choices (id, question_id, body) VALUES (3111, 681, 'the 1013 respondents.');
INSERT INTO choices (id, question_id, body) VALUES (3112, 681, 'people in 45 occupations.');
INSERT INTO choices (id, question_id, body) VALUES (3113, 681, 'nurses and car salesmen.');

INSERT INTO questions (id, body, chapter) VALUES (682, 'A Gallup Poll asked 1013 randomly chosen adults to rate the &quot;honesty and ethical standards&quot; of 45 occupations.  Nurses were at the top, with 73% of the poll respondents rating them &quot;very high&quot; or &quot;high.&quot;  Car salesmen were at the bottom with just 8% &quot;very high&quot; or &quot;high&quot; ratings.The numbers 73% and 8% in the report on the poll results are', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3114, 682, 'parameters because they describe a population.');
INSERT INTO choices (id, question_id, body) VALUES (3115, 682, 'parameters because they describe a sample.');
INSERT INTO choices (id, question_id, body) VALUES (3116, 682, 'statistics because they describe a population.');
INSERT INTO choices (id, question_id, body) VALUES (3117, 682, 'statistics because they describe a sample.');
UPDATE questions SET answer = 3117 WHERE id=682;

INSERT INTO questions (id, body, chapter) VALUES (683, 'If I toss a fair coin five times and the outcomes are TTTTT, then the probability that tails appears on the next toss is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3118, 683, '0.5');
UPDATE questions SET answer = 3118 WHERE id=683;
INSERT INTO choices (id, question_id, body) VALUES (3119, 683, 'less than 0.5');
INSERT INTO choices (id, question_id, body) VALUES (3120, 683, 'greater than 0.5');
INSERT INTO choices (id, question_id, body) VALUES (3121, 683, '0');
INSERT INTO choices (id, question_id, body) VALUES (3122, 683, '1');

INSERT INTO questions (id, body, chapter) VALUES (684, 'The margin of error for a 95% confidence interval is 2.8. If we decrease the confidence level to 90%, the margin of error will be', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3123, 684, 'biased');
INSERT INTO choices (id, question_id, body) VALUES (3124, 684, '99%');
INSERT INTO choices (id, question_id, body) VALUES (3125, 684, '2.8');
INSERT INTO choices (id, question_id, body) VALUES (3126, 684, 'smaller than 2.8');
UPDATE questions SET answer = 3126 WHERE id=684;
INSERT INTO choices (id, question_id, body) VALUES (3127, 684, 'larger than 2.8');

INSERT INTO questions (id, body, chapter) VALUES (685, 'When we take a census, we collect data from', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3128, 685, 'a stratified random sample');
INSERT INTO choices (id, question_id, body) VALUES (3129, 685, 'every individual selected in a simple random sample');
INSERT INTO choices (id, question_id, body) VALUES (3130, 685, 'every individual in the population');
UPDATE questions SET answer = 3130 WHERE id=685;
INSERT INTO choices (id, question_id, body) VALUES (3131, 685, 'a voluntary response sample');
INSERT INTO choices (id, question_id, body) VALUES (3132, 685, 'a convenience sample');

INSERT INTO questions (id, body, chapter) VALUES (686, 'If the least squares regression line for predicting <em>y</em> from <em>x</em> is <em>y</em> = 40 + 10<em>x</em>, what is the predicted value of <em>y</em> when <em>x</em> = 5 ?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3133, 686, '90');
UPDATE questions SET answer = 3133 WHERE id=686;
INSERT INTO choices (id, question_id, body) VALUES (3134, 686, '50');
INSERT INTO choices (id, question_id, body) VALUES (3135, 686, '40');
INSERT INTO choices (id, question_id, body) VALUES (3136, 686, '10');
INSERT INTO choices (id, question_id, body) VALUES (3137, 686, '140');

INSERT INTO questions (id, body, chapter) VALUES (687, 'A  experiment has four possible outcomes: A, B, C, and D.  Which of the following is a legitimate assignment of probabilities for these four events?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3138, 687, '0.2, 0.2, 0.2, 0.2');
INSERT INTO choices (id, question_id, body) VALUES (3139, 687, '0.3, 0.3, 0.3, 0.1');
UPDATE questions SET answer = 3139 WHERE id=687;
INSERT INTO choices (id, question_id, body) VALUES (3140, 687, '0.8, 0.3, &#8211;0.1');
INSERT INTO choices (id, question_id, body) VALUES (3141, 687, '0.4, 0.4, 0.4, 0.4');
INSERT INTO choices (id, question_id, body) VALUES (3142, 687, '0.1, 0.5, 0.4, 0.1');

INSERT INTO questions (id, body, chapter) VALUES (688, 'Which of the following is correct', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3143, 688, 'parameters describe sample characteristics');
INSERT INTO choices (id, question_id, body) VALUES (3144, 688, 'parameters describe population characteristics');
UPDATE questions SET answer = 3144 WHERE id=688;
INSERT INTO choices (id, question_id, body) VALUES (3145, 688, 'the population is a subset of the sample');
INSERT INTO choices (id, question_id, body) VALUES (3146, 688, 'statistics must be based on a simple random sample');
INSERT INTO choices (id, question_id, body) VALUES (3147, 688, 'parameter and statistic are two names for the same thing');

INSERT INTO questions (id, body, chapter) VALUES (689, 'If the value of the standardized test statistic <em>z</em> is 2.5,', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3148, 689, 'conclude that the null hypothesis and the alternative hypothesis are the same');
INSERT INTO choices (id, question_id, body) VALUES (3149, 689, 'we reject the null hypothesis at the 5% significance level');
UPDATE questions SET answer = 3149 WHERE id=689;
INSERT INTO choices (id, question_id, body) VALUES (3150, 689, 'we fail to reject the null hypothesis at the 5% significance level');
INSERT INTO choices (id, question_id, body) VALUES (3151, 689, 'we reject the alternative hypothesis at the 5% significance level');
INSERT INTO choices (id, question_id, body) VALUES (3152, 689, 'should use a different null hypothesis');

INSERT INTO questions (id, body, chapter) VALUES (690, 'Divide undergraduate students at State Tech into two groups: those who live in university housing and those who do not.  Take a random sample from each group. This is an example of', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3153, 690, 'multistage sampling');
INSERT INTO choices (id, question_id, body) VALUES (3154, 690, 'stratified random sampling');
UPDATE questions SET answer = 3154 WHERE id=690;
INSERT INTO choices (id, question_id, body) VALUES (3155, 690, 'clustered sampling');
INSERT INTO choices (id, question_id, body) VALUES (3156, 690, 'simple random sampling');
INSERT INTO choices (id, question_id, body) VALUES (3157, 690, 'systematic random sampling');

INSERT INTO questions (id, body, chapter) VALUES (691, 'I want to use simulation to estimate the probability of getting exactly one head and one tail in two tosses of a fair coin. I assign the digits 0, 1, 2, 3, 4 to heads and 5, 6, 7, 8, 9 to tails. Using the following random digits to simulate, what is the estimate of the probability.<br><br>19226 95034 05756 07118', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3158, 691, '1/10');
INSERT INTO choices (id, question_id, body) VALUES (3159, 691, '1/20');
INSERT INTO choices (id, question_id, body) VALUES (3160, 691, '0.6');
UPDATE questions SET answer = 3160 WHERE id=691;
INSERT INTO choices (id, question_id, body) VALUES (3161, 691, '2/3');
INSERT INTO choices (id, question_id, body) VALUES (3162, 691, '0.5');

INSERT INTO questions (id, body, chapter) VALUES (692, 'The correlation between two variables <em>x</em> and <em>y</em> is &#8211;0.6. If we used a regression line to predict <em>y </em>using <em>x</em>, what percent of the variation in <em>y</em> would be explained?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3163, 692, '20%');
INSERT INTO choices (id, question_id, body) VALUES (3164, 692, '36%');
UPDATE questions SET answer = 3164 WHERE id=692;
INSERT INTO choices (id, question_id, body) VALUES (3165, 692, '&#8211;36%');
INSERT INTO choices (id, question_id, body) VALUES (3166, 692, '6%');
INSERT INTO choices (id, question_id, body) VALUES (3167, 692, '&#8211;6%');

INSERT INTO questions (id, body, chapter) VALUES (693, 'The probability that the sum is 7 when you roll two dice is 1/6; the probability that the sum is 11 is 1/18. Suppose you play a game where you win if the sum is 7 or 11. What is the probability that you win?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3168, 693, '2/6');
INSERT INTO choices (id, question_id, body) VALUES (3169, 693, '2/18');
INSERT INTO choices (id, question_id, body) VALUES (3170, 693, '7/6');
INSERT INTO choices (id, question_id, body) VALUES (3171, 693, '2/9');
UPDATE questions SET answer = 3171 WHERE id=693;
INSERT INTO choices (id, question_id, body) VALUES (3172, 693, '2/24');

INSERT INTO questions (id, body, chapter) VALUES (694, 'For a 95% confidence interval, a larger sample size will generally give', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3173, 694, 'a least-squares line');
INSERT INTO choices (id, question_id, body) VALUES (3174, 694, 'a larger margin of error');
INSERT INTO choices (id, question_id, body) VALUES (3175, 694, 'less bias');
INSERT INTO choices (id, question_id, body) VALUES (3176, 694, 'higher correlation');
INSERT INTO choices (id, question_id, body) VALUES (3177, 694, 'a smaller margin of error');
UPDATE questions SET answer = 3177 WHERE id=694;

INSERT INTO questions (id, body, chapter) VALUES (695, 'The null hypothesis is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3178, 695, 'another name for the alternative hypothesis');
INSERT INTO choices (id, question_id, body) VALUES (3179, 695, 'true with 95% probability');
INSERT INTO choices (id, question_id, body) VALUES (3180, 695, 'usually a statement of &quot;no effect&quot; or &quot;no difference&quot;');
UPDATE questions SET answer = 3180 WHERE id=695;
INSERT INTO choices (id, question_id, body) VALUES (3181, 695, 'determined by looking at the data');
INSERT INTO choices (id, question_id, body) VALUES (3182, 695, 'statistically significant');

INSERT INTO questions (id, body, chapter) VALUES (696, 'Fifty percent of the observations will be at or above the', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3183, 696, 'maximum');
INSERT INTO choices (id, question_id, body) VALUES (3184, 696, 'standard deviation');
INSERT INTO choices (id, question_id, body) VALUES (3185, 696, 'mean');
INSERT INTO choices (id, question_id, body) VALUES (3186, 696, 'median');
UPDATE questions SET answer = 3186 WHERE id=696;
INSERT INTO choices (id, question_id, body) VALUES (3187, 696, 'first quartile');

INSERT INTO questions (id, body, chapter) VALUES (697, 'A pair of ballet slippers cost $35.00 in 1990; a pair of the same type of slippers costs $70.00 in 2000. Using 1990 as the base year, what is the ballet slipper index number for 2000?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3188, 697, '200');
UPDATE questions SET answer = 3188 WHERE id=697;
INSERT INTO choices (id, question_id, body) VALUES (3189, 697, '0.5');
INSERT INTO choices (id, question_id, body) VALUES (3190, 697, '2.0');
INSERT INTO choices (id, question_id, body) VALUES (3191, 697, '$35.00');
INSERT INTO choices (id, question_id, body) VALUES (3192, 697, '$70.00');

INSERT INTO questions (id, body, chapter) VALUES (698, 'If we take a simple random sample of size <em>n</em> = 1000 from a population of size 1,000,000, the variability of our estimate will be', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3193, 698, 'less than the bias');
INSERT INTO choices (id, question_id, body) VALUES (3194, 698, 'approximately the same as the variability for a sample of size ');
UPDATE questions SET answer = 3194 WHERE id=698;
INSERT INTO choices (id, question_id, body) VALUES (3195, 698, 'plus or minus 5%');
INSERT INTO choices (id, question_id, body) VALUES (3196, 698, 'much greater than the variability for a sample of size ');
INSERT INTO choices (id, question_id, body) VALUES (3197, 698, 'much less than the variability for a sample of size ');

INSERT INTO questions (id, body, chapter) VALUES (699, 'If a coin has 0.6 probability coming up tails, the probability that it comes up heads is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3198, 699, '0.5');
INSERT INTO choices (id, question_id, body) VALUES (3199, 699, '&#8211;0.2');
INSERT INTO choices (id, question_id, body) VALUES (3200, 699, '0.4');
UPDATE questions SET answer = 3200 WHERE id=699;
INSERT INTO choices (id, question_id, body) VALUES (3201, 699, '0.6');
INSERT INTO choices (id, question_id, body) VALUES (3202, 699, '1.0');

INSERT INTO questions (id, body, chapter) VALUES (700, 'Seasonal variation is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3203, 700, 'a persistent long term rise or fall');
INSERT INTO choices (id, question_id, body) VALUES (3204, 700, 'due to nonresponse');
INSERT INTO choices (id, question_id, body) VALUES (3205, 700, 'larger than the standard deviation');
INSERT INTO choices (id, question_id, body) VALUES (3206, 700, 'a pattern in a time series that repeats itself at known  regular intervals of time');
UPDATE questions SET answer = 3206 WHERE id=700;
INSERT INTO choices (id, question_id, body) VALUES (3207, 700, 'the square of the correlation');

INSERT INTO questions (id, body, chapter) VALUES (701, 'Which correlation indicates a strong negative straight line relationship?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3208, 701, '0.5');
INSERT INTO choices (id, question_id, body) VALUES (3209, 701, '&#8211;1.5');
INSERT INTO choices (id, question_id, body) VALUES (3210, 701, '&#8211;0.5');
INSERT INTO choices (id, question_id, body) VALUES (3211, 701, '&#8211;0.9');
UPDATE questions SET answer = 3211 WHERE id=701;
INSERT INTO choices (id, question_id, body) VALUES (3212, 701, '0.9');

INSERT INTO questions (id, body, chapter) VALUES (702, 'If a significance test gives a <em>P-</em>value of 0.50,', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3213, 702, 'the margin of error is 0.50');
INSERT INTO choices (id, question_id, body) VALUES (3214, 702, 'the null hypothesis is very likely to be true');
INSERT INTO choices (id, question_id, body) VALUES (3215, 702, 'we do not have good evidence against the null hypothesis');
UPDATE questions SET answer = 3215 WHERE id=702;
INSERT INTO choices (id, question_id, body) VALUES (3216, 702, 'we do have good evidence against the null hypothesis');
INSERT INTO choices (id, question_id, body) VALUES (3217, 702, 'the effect of interest is practically significant');

INSERT INTO questions (id, body, chapter) VALUES (703, 'You play a game with two possible outcomes. Outcome A has probability 0.4 and outcome B has probability 0.6.  When B occurs you win $2.00; otherwise, you lose $1.00. What is your expected value for this game?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3218, 703, '$2.00');
INSERT INTO choices (id, question_id, body) VALUES (3219, 703, '&#8211;$0.10');
INSERT INTO choices (id, question_id, body) VALUES (3220, 703, '$0.20');
INSERT INTO choices (id, question_id, body) VALUES (3221, 703, '&#8211;$0.80');
INSERT INTO choices (id, question_id, body) VALUES (3222, 703, '$0.80');
UPDATE questions SET answer = 3222 WHERE id=703;

INSERT INTO questions (id, body, chapter) VALUES (704, 'A table of random numbers is used to select 25 students from a large class to rate CD by the group REM. The ratings that these students give are used to estimate the ratings that would be given if the entire class were asked to rate the CD. The average of the ratings of the 25 students in the sample is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3223, 704, 'a convenience sample');
INSERT INTO choices (id, question_id, body) VALUES (3224, 704, 'a census');
INSERT INTO choices (id, question_id, body) VALUES (3225, 704, 'an unbiased estimate of the class rating');
UPDATE questions SET answer = 3225 WHERE id=704;
INSERT INTO choices (id, question_id, body) VALUES (3226, 704, 'a biased estimate of the class rating');
INSERT INTO choices (id, question_id, body) VALUES (3227, 704, 'the population');

INSERT INTO questions (id, body, chapter) VALUES (705, 'We observe p = 0.3. If the standard deviation of the sampling distribution of p is 0.04, what is the 95% confidence interval for <em>p</em>?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3228, 705, '0.26 to 0.34');
INSERT INTO choices (id, question_id, body) VALUES (3229, 705, '0.18 to 0.42');
INSERT INTO choices (id, question_id, body) VALUES (3230, 705, '0.3 plus or minus 0.08');
UPDATE questions SET answer = 3230 WHERE id=705;
INSERT INTO choices (id, question_id, body) VALUES (3231, 705, '0.04 plus or minus 0.6');
INSERT INTO choices (id, question_id, body) VALUES (3232, 705, '99% accurate');

INSERT INTO questions (id, body, chapter) VALUES (706, 'If I toss a fair coin 5000 times', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3233, 706, 'the number of heads will be close to 2500');
INSERT INTO choices (id, question_id, body) VALUES (3234, 706, 'the proportion of heads will be close to 0.5');
UPDATE questions SET answer = 3234 WHERE id=706;
INSERT INTO choices (id, question_id, body) VALUES (3235, 706, 'the price of oranges will increase');
INSERT INTO choices (id, question_id, body) VALUES (3236, 706, 'the proportion of heads in these tosses is a parameter');
INSERT INTO choices (id, question_id, body) VALUES (3237, 706, 'the proportion of heads will be close to 50');

INSERT INTO questions (id, body, chapter) VALUES (707, 'If a significance test gives <em>P-</em>value 0.005,', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3238, 707, 'the margin of error is 0.005.');
INSERT INTO choices (id, question_id, body) VALUES (3239, 707, 'the null hypothesis is very likely to be true.');
INSERT INTO choices (id, question_id, body) VALUES (3240, 707, 'we do not have good evidence against the null hypothesis.');
INSERT INTO choices (id, question_id, body) VALUES (3241, 707, 'we do have good evidence against the null hypothesis.');
UPDATE questions SET answer = 3241 WHERE id=707;
INSERT INTO choices (id, question_id, body) VALUES (3242, 707, 'the effect of interest is practically significant.');

INSERT INTO questions (id, body, chapter) VALUES (708, 'A college football team wins 8 games and loses 3 during its season.  The margins of victory in the 8 wins are (in points scored):<br><br>11 14 12 16 25 45 1 49What were the mean and median margins of victory in these eight games?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3243, 708, 'mean = 20.5, median = 21.6');
INSERT INTO choices (id, question_id, body) VALUES (3244, 708, 'mean = 21.6, median = 20.5');
INSERT INTO choices (id, question_id, body) VALUES (3245, 708, 'mean = 15, median = 21.6');
INSERT INTO choices (id, question_id, body) VALUES (3246, 708, 'mean = 21.6, median = 15');
UPDATE questions SET answer = 3246 WHERE id=708;
INSERT INTO choices (id, question_id, body) VALUES (3247, 708, 'Can\'t tell without knowing the results of the three losses.');

INSERT INTO questions (id, body, chapter) VALUES (709, 'A college football team wins 8 games and loses 3 during its season.  The margins of victory in the 8 wins are (in points scored):<br><br>11 14 12 16 25 45 1 49The relationship between the mean and median margin of victory is typical of distributions which, like this one, are', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3248, 709, 'nearly symmetric.');
INSERT INTO choices (id, question_id, body) VALUES (3249, 709, 'skewed to the left.');
INSERT INTO choices (id, question_id, body) VALUES (3250, 709, 'skewed to the right.');
UPDATE questions SET answer = 3250 WHERE id=709;
INSERT INTO choices (id, question_id, body) VALUES (3251, 709, 'all positive.');
INSERT INTO choices (id, question_id, body) VALUES (3252, 709, 'football-shaped.');

INSERT INTO questions (id, body, chapter) VALUES (710, 'A college football team wins 8 games and loses 3 during its season.  The margins of victory in the 8 wins are (in points scored):<br><br>11 14 12 16 25 45 1 49Suppose the &quot;margins of victory&quot; in the team\'s three losses were also reported, as negative numbers; for example, the &quot;margin of victory&quot; in a 42 to 17 was <em>-</em>25. What effect would including these three negative numbers, in addition to the eight positive numbers, have on the mean and median?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3253, 710, 'Both the mean and the median would be smaller.');
UPDATE questions SET answer = 3253 WHERE id=710;
INSERT INTO choices (id, question_id, body) VALUES (3254, 710, 'The mean would be smaller, but the median would stay the same.');
INSERT INTO choices (id, question_id, body) VALUES (3255, 710, 'The median would be smaller, but the mean would stay the same.');
INSERT INTO choices (id, question_id, body) VALUES (3256, 710, 'Both the mean and the median would stay the same.');
INSERT INTO choices (id, question_id, body) VALUES (3257, 710, 'Can\'t tell without knowing the results of all three losses.');

INSERT INTO questions (id, body, chapter) VALUES (711, 'A high correlation between two variables does not always mean that changes in one cause changes in the other. The best way to get good evidence that cause-and-effect is present is to', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3258, 711, 'arrange the data in a two-way table.');
INSERT INTO choices (id, question_id, body) VALUES (3259, 711, 'carry out a randomized comparative experiment.');
UPDATE questions SET answer = 3259 WHERE id=711;
INSERT INTO choices (id, question_id, body) VALUES (3260, 711, 'make a histogram and look for outliers.');
INSERT INTO choices (id, question_id, body) VALUES (3261, 711, 'make a scatterplot and look for a strong association.');
INSERT INTO choices (id, question_id, body) VALUES (3262, 711, 'select a simple random sample from the population of interest.');

INSERT INTO questions (id, body, chapter) VALUES (712, 'Here are the attendance figures for the lectures in a large class.<br><br><img src="/images/freeman/candc/f3-115.jpg"><br>To show the evolution of attendance during the semester, what type of graph should you draw?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3263, 712, 'boxplot');
INSERT INTO choices (id, question_id, body) VALUES (3264, 712, 'histogram');
INSERT INTO choices (id, question_id, body) VALUES (3265, 712, 'line graph');
UPDATE questions SET answer = 3265 WHERE id=712;
INSERT INTO choices (id, question_id, body) VALUES (3266, 712, 'scatterplot');
INSERT INTO choices (id, question_id, body) VALUES (3267, 712, 'stemplot');

INSERT INTO questions (id, body, chapter) VALUES (713, 'Here are the attendance figures for the lectures in a large class.<br><br><img src="/images/freeman/candc/f3-115.jpg"><br>For each of the 423 students in the class, the instructor puts into a box one ticket, with the student\'s name on it, for each lecture the student attended, then choose the lucky winner of an autographed copy of the final exam by drawing out one ticket at random.  What kind of sampling is this?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3268, 713, 'Simple random sampling because each ticket has the same chance of being selected.');
INSERT INTO choices (id, question_id, body) VALUES (3269, 713, 'Simple random sampling because each person has the same chance of being selected.');
INSERT INTO choices (id, question_id, body) VALUES (3270, 713, 'Multistage cluster sampling because there are multiple tickets for each person.');
INSERT INTO choices (id, question_id, body) VALUES (3271, 713, 'Probability sampling because each person has a known chance of being selected.');
UPDATE questions SET answer = 3271 WHERE id=713;
INSERT INTO choices (id, question_id, body) VALUES (3272, 713, 'Stratified sampling because some people attended more lectures than others.');

INSERT INTO questions (id, body, chapter) VALUES (714, 'Here are the attendance figures for the lectures in a large class.<br><br><img src="/images/freeman/candc/f3-115.jpg"><br>74% of the 398 students who attended the August 26 lecture said they knew how to &quot;go to a computer lab and get on the World Wide Web.&quot;  If these 398 were a simple random sample drawn from the entire student population, what would a 95% confidence interval be for the percent of all students who could do likewise?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3273, 714, '74% ');
INSERT INTO choices (id, question_id, body) VALUES (3274, 714, '74% ');
INSERT INTO choices (id, question_id, body) VALUES (3275, 714, '74% ');
INSERT INTO choices (id, question_id, body) VALUES (3276, 714, '74% ');
UPDATE questions SET answer = 3276 WHERE id=714;
INSERT INTO choices (id, question_id, body) VALUES (3277, 714, '74% ');

INSERT INTO questions (id, body, chapter) VALUES (715, 'In which of these cases would the confidence interval be wider than the one in the previous question?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3278, 715, 'If the confidence level were 90% instead of 95%.');
INSERT INTO choices (id, question_id, body) VALUES (3279, 715, 'If the sample size were 498 instead of 398.');
INSERT INTO choices (id, question_id, body) VALUES (3280, 715, 'Both of the above.');
INSERT INTO choices (id, question_id, body) VALUES (3281, 715, 'Neither of the above.');
UPDATE questions SET answer = 3281 WHERE id=715;

INSERT INTO questions (id, body, chapter) VALUES (716, 'In an SRS of students, 23% said they smoked, while another 16% said they &quot;hardly ever&quot; smoked. The numbers 23% and 16% are', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3282, 716, 'confidence levels.');
INSERT INTO choices (id, question_id, body) VALUES (3283, 716, 'joint distributions.');
INSERT INTO choices (id, question_id, body) VALUES (3284, 716, 'parameters.');
INSERT INTO choices (id, question_id, body) VALUES (3285, 716, 'percentiles.');
INSERT INTO choices (id, question_id, body) VALUES (3286, 716, 'statistics.');
UPDATE questions SET answer = 3286 WHERE id=716;

INSERT INTO questions (id, body, chapter) VALUES (717, 'Only 20 of a sample of 275 students say they are vegetarians. Of these, 9 eat both fish and eggs, 3 eat eggs but not fish, and 8 eat neither. If we choose one of those 275 students at random and the chosen student turns out to be a vegetarian, what is the probability that the chosen student eats neither fish nor eggs?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3287, 717, '8/275 = 0.03');
INSERT INTO choices (id, question_id, body) VALUES (3288, 717, '20/275 = 0.07');
INSERT INTO choices (id, question_id, body) VALUES (3289, 717, '8/20 = 0.4');
UPDATE questions SET answer = 3289 WHERE id=717;
INSERT INTO choices (id, question_id, body) VALUES (3290, 717, '0.5');
INSERT INTO choices (id, question_id, body) VALUES (3291, 717, '1');

INSERT INTO questions (id, body, chapter) VALUES (718, 'You ask a sample of 370 students, &quot;Should clinical trials on issues such as heart attacks that affect both sexes use subjects of just one sex?&quot;  The responses are as follows:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="84"><strong>Yes</strong><br></p></td><td valign="top" align="left" width="65"><strong>No</strong><br></p></td><td valign="top" align="left" width="474"></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="84"><strong>Male</strong><br></p></td><td valign="top" align="left" width="65">34<br></p></td><td valign="top" align="left" width="474">105<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="84"><strong>Female</strong><br></p></td><td valign="top" align="left" width="65">46<br></p></td><td valign="top" align="left" width="474">185<br></p></td></tr></table>What percent of the women said &quot;Yes&quot;?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3292, 718, '20%');
UPDATE questions SET answer = 3292 WHERE id=718;
INSERT INTO choices (id, question_id, body) VALUES (3293, 718, '22%');
INSERT INTO choices (id, question_id, body) VALUES (3294, 718, '25%');
INSERT INTO choices (id, question_id, body) VALUES (3295, 718, '50%');
INSERT INTO choices (id, question_id, body) VALUES (3296, 718, '57.5%');

INSERT INTO questions (id, body, chapter) VALUES (719, 'You ask a sample of 370 students, &quot;Should clinical trials on issues such as heart attacks that affect both sexes use subjects of just one sex?&quot;  The responses are as follows:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="84"><strong>Yes</strong><br></p></td><td valign="top" align="left" width="65"><strong>No</strong><br></p></td><td valign="top" align="left" width="474"></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="84"><strong>Male</strong><br></p></td><td valign="top" align="left" width="65">34<br></p></td><td valign="top" align="left" width="474">105<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="84"><strong>Female</strong><br></p></td><td valign="top" align="left" width="65">46<br></p></td><td valign="top" align="left" width="474">185<br></p></td></tr></table>What percent of those who said &quot;Yes&quot; were women?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3297, 719, '20%');
INSERT INTO choices (id, question_id, body) VALUES (3298, 719, '22%');
INSERT INTO choices (id, question_id, body) VALUES (3299, 719, '25%');
INSERT INTO choices (id, question_id, body) VALUES (3300, 719, '50%');
INSERT INTO choices (id, question_id, body) VALUES (3301, 719, '57.5%');
UPDATE questions SET answer = 3301 WHERE id=719;

INSERT INTO questions (id, body, chapter) VALUES (720, 'How can Igor have a higher GPA than Desdemona in hard courses, also have a higher GPA in easy courses, and yet have an overall GPA which is lower than hers?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3302, 720, 'It\'s impossible.');
INSERT INTO choices (id, question_id, body) VALUES (3303, 720, 'It could happen. Igor could have taken mostly hard courses while Desdemona took mostly easy courses.');
UPDATE questions SET answer = 3303 WHERE id=720;
INSERT INTO choices (id, question_id, body) VALUES (3304, 720, 'It could happen. Igor could have taken mostly easy courses while Desdemona took mostly hard courses.');
INSERT INTO choices (id, question_id, body) VALUES (3305, 720, 'It would happen if Igor took more credit hours than Desdemona.');
INSERT INTO choices (id, question_id, body) VALUES (3306, 720, 'Both (C) and (D) are true.');

INSERT INTO questions (id, body, chapter) VALUES (721, 'The report of a sample survey of 1,014 adults says, &quot;With 95% confidence, between 9% and 15% of all Americans expect to spend more money on gifts this year than last year.&quot; The phrase &quot;95% confidence&quot; means', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3307, 721, '95% of all Americans will spend between 9% and 15% of what they spent last year.');
INSERT INTO choices (id, question_id, body) VALUES (3308, 721, '9% to 15% of all Americans will spend 95% of what they spent last year.');
INSERT INTO choices (id, question_id, body) VALUES (3309, 721, 'there is a 95% chance that the percent who expect to spend more is between 9% and 15%.');
INSERT INTO choices (id, question_id, body) VALUES (3310, 721, 'the method used to get the interval from 9% to 15%, when used over and over, produces intervals which include the true population percentage 95% of the time.');
UPDATE questions SET answer = 3310 WHERE id=721;
INSERT INTO choices (id, question_id, body) VALUES (3311, 721, 'we can be 95% confident that the method used to get the interval always gives the right answer.');

INSERT INTO questions (id, body, chapter) VALUES (722, 'A sample survey finds that 30% of a sample of 874 Ohio adults said good health was the thing they were most thankful for. If that sample were an SRS from the population of all Ohio adults, what would be the 99% confidence interval for the percent of all Ohio adults who feel that way?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3312, 722, '25% to 35%');
INSERT INTO choices (id, question_id, body) VALUES (3313, 722, '26% to 34%');
UPDATE questions SET answer = 3313 WHERE id=722;
INSERT INTO choices (id, question_id, body) VALUES (3314, 722, '27% to 33%');
INSERT INTO choices (id, question_id, body) VALUES (3315, 722, '28% to 32%');
INSERT INTO choices (id, question_id, body) VALUES (3316, 722, '29% to 31%');

INSERT INTO questions (id, body, chapter) VALUES (723, 'If the 874 people in the previous question had called a 900 number to give their opinions, how would this affect your response?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3317, 723, 'Not at all, because the width of the confidence interval depends only on the sample size, and not on the population size.');
INSERT INTO choices (id, question_id, body) VALUES (3318, 723, 'Not at all, because the width of the confidence interval depends only on the sample size, and not on how the sample was obtained.');
INSERT INTO choices (id, question_id, body) VALUES (3319, 723, 'It would be wider because voluntary response polls have a bigger margin of error than SRSs.');
INSERT INTO choices (id, question_id, body) VALUES (3320, 723, 'It would be narrower because voluntary response polls are less variable than SRSs.');
INSERT INTO choices (id, question_id, body) VALUES (3321, 723, 'A confidence interval makes no sense for a voluntary response sample.');
UPDATE questions SET answer = 3321 WHERE id=723;

INSERT INTO questions (id, body, chapter) VALUES (724, 'If we roll a pair of fair dice and count the number of aces (one dot) showing, the probability model is as follows:<br><br></p><table border=0 width="257"><tr><td valign="top" align="left" width="56"><strong>Count of aces</strong><br></p></td><td valign="top" align="center" width="42"><strong>Probability</strong><br></p></td><td valign="top" align="center" width="159"></td></tr></table><table border=0 width="257"><tr><td valign="top" align="left" width="56">0<br></p></td><td valign="top" align="center" width="42">?<br></p></td><td valign="top" align="center" width="159"></td></tr></table><table border=0 width="257"><tr><td valign="top" align="left" width="56">1<br></p></td><td valign="top" align="center" width="42">10/36<br></p></td><td valign="top" align="center" width="159"></td></tr></table><table border=0 width="257"><tr><td valign="top" align="left" width="56">2<br></p></td><td valign="top" align="center" width="42">1/36<br></p></td><td valign="top" align="center" width="159"></td></tr></table>The probability of no aces is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3322, 724, '0');
INSERT INTO choices (id, question_id, body) VALUES (3323, 724, '1/2');
INSERT INTO choices (id, question_id, body) VALUES (3324, 724, '2/3');
INSERT INTO choices (id, question_id, body) VALUES (3325, 724, '25/36');
UPDATE questions SET answer = 3325 WHERE id=724;
INSERT INTO choices (id, question_id, body) VALUES (3326, 724, 'impossible to determine.');

INSERT INTO questions (id, body, chapter) VALUES (725, 'If we roll a pair of fair dice and count the number of aces (one dot) showing, the probability model is as follows:<br><br></p><table border=0 width="257"><tr><td valign="top" align="left" width="56"><strong>Count of aces</strong><br></p></td><td valign="top" align="center" width="42"><strong>Probability</strong><br></p></td><td valign="top" align="center" width="159"></td></tr></table><table border=0 width="257"><tr><td valign="top" align="left" width="56">0<br></p></td><td valign="top" align="center" width="42">?<br></p></td><td valign="top" align="center" width="159"></td></tr></table><table border=0 width="257"><tr><td valign="top" align="left" width="56">1<br></p></td><td valign="top" align="center" width="42">10/36<br></p></td><td valign="top" align="center" width="159"></td></tr></table><table border=0 width="257"><tr><td valign="top" align="left" width="56">2<br></p></td><td valign="top" align="center" width="42">1/36<br></p></td><td valign="top" align="center" width="159"></td></tr></table>Back in the 17th century, some gamblers thought that the probability of at least one ace (i.e., 1 or more aces) was 1/6 <em>+ </em>1/6. Is that true?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3327, 725, 'Yes.');
INSERT INTO choices (id, question_id, body) VALUES (3328, 725, 'No, it\'s larger than 1/6 ');
INSERT INTO choices (id, question_id, body) VALUES (3329, 725, 'No, it\'s smaller than 1/6 ');
UPDATE questions SET answer = 3329 WHERE id=725;
INSERT INTO choices (id, question_id, body) VALUES (3330, 725, 'Sometimes it\'s larger and sometimes it\'s smaller.');
INSERT INTO choices (id, question_id, body) VALUES (3331, 725, 'Impossible to say.');

INSERT INTO questions (id, body, chapter) VALUES (726, 'If we roll a pair of fair dice and count the number of aces (one dot) showing, the probability model is as follows:<br><br></p><table border=0 width="257"><tr><td valign="top" align="left" width="56"><strong>Count of aces</strong><br></p></td><td valign="top" align="center" width="42"><strong>Probability</strong><br></p></td><td valign="top" align="center" width="159"></td></tr></table><table border=0 width="257"><tr><td valign="top" align="left" width="56">0<br></p></td><td valign="top" align="center" width="42">?<br></p></td><td valign="top" align="center" width="159"></td></tr></table><table border=0 width="257"><tr><td valign="top" align="left" width="56">1<br></p></td><td valign="top" align="center" width="42">10/36<br></p></td><td valign="top" align="center" width="159"></td></tr></table><table border=0 width="257"><tr><td valign="top" align="left" width="56">2<br></p></td><td valign="top" align="center" width="42">1/36<br></p></td><td valign="top" align="center" width="159"></td></tr></table>How does the expected value of the number of aces compare with 1/6 <em>+</em> 1/6?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3332, 726, 'It equals 1/6 ');
UPDATE questions SET answer = 3332 WHERE id=726;
INSERT INTO choices (id, question_id, body) VALUES (3333, 726, 'It\'s larger than 1/6 ');
INSERT INTO choices (id, question_id, body) VALUES (3334, 726, 'It\'s smaller than 1/6 ');
INSERT INTO choices (id, question_id, body) VALUES (3335, 726, 'Sometimes it\'s larger and sometimes it\'s smaller.');
INSERT INTO choices (id, question_id, body) VALUES (3336, 726, 'Impossible to say.');

INSERT INTO questions (id, body, chapter) VALUES (727, 'A news report says, &quot;New research suggests that an active social life may increase resistance to respiratory infections.  In a recent study, 300 healthy volunteers were given nasal sprays of cold virus, then quarantined for five days.  The volunteers were asked about relationships with spouse, children, friends, neighbors, and coworkers.  Those who had only one to three types of relationships were four times as likely to get a cold as those six or more types. The most significant factor for resisting the cold virus seemed to be the diversity rather than the sheer quantity of social contacts.&quot;How would you categorize this study?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3337, 727, 'An experiment with the nasal spray as the treatment.');
INSERT INTO choices (id, question_id, body) VALUES (3338, 727, 'An observational study with the various possible &quot;social networks&quot; as the treatments.');
UPDATE questions SET answer = 3338 WHERE id=727;
INSERT INTO choices (id, question_id, body) VALUES (3339, 727, 'An experiment with the various possible &quot;social networks&quot;as the treatments.');
INSERT INTO choices (id, question_id, body) VALUES (3340, 727, 'A randomized, controlled clinical trial.');
INSERT INTO choices (id, question_id, body) VALUES (3341, 727, 'A voluntary response study.');

INSERT INTO questions (id, body, chapter) VALUES (728, 'A news report says, &quot;New research suggests that an active social life may increase resistance to respiratory infections.  In a recent study, 300 healthy volunteers were given nasal sprays of cold virus, then quarantined for five days.  The volunteers were asked about relationships with spouse, children, friends, neighbors, and coworkers.  Those who had only one to three types of relationships were four times as likely to get a cold as those six or more types. The most significant factor for resisting the cold virus seemed to be the diversity rather than the sheer quantity of social contacts.&quot;Why do these results fall short of demonstrating that by broadening our social networks we can increase our resistance to respiratory infections? (Pick the best answer.)', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3342, 728, 'Volunteers were used.');
INSERT INTO choices (id, question_id, body) VALUES (3343, 728, 'We\'re not told the age of the volunteers.');
INSERT INTO choices (id, question_id, body) VALUES (3344, 728, 'We\'re not told what day of the week they got the nasal spray.');
INSERT INTO choices (id, question_id, body) VALUES (3345, 728, 'Maybe the subjects lied about their relationships.');
INSERT INTO choices (id, question_id, body) VALUES (3346, 728, 'Some other variables, associated with the breadth of one\'s social network, may be the real causes of higher resistance to colds.');
UPDATE questions SET answer = 3346 WHERE id=728;

INSERT INTO questions (id, body, chapter) VALUES (729, 'A cording to the FBI Uniform Crime Report, the robbery rate in the United States is 202 per 100,000 people.  At that rate, how many robberies would there be in a state the size of Indiana (5.8 million people)?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3347, 729, 'about 1,200');
INSERT INTO choices (id, question_id, body) VALUES (3348, 729, 'about 12,000');
UPDATE questions SET answer = 3348 WHERE id=729;
INSERT INTO choices (id, question_id, body) VALUES (3349, 729, 'about 120,000');
INSERT INTO choices (id, question_id, body) VALUES (3350, 729, 'about 1,200,000');
INSERT INTO choices (id, question_id, body) VALUES (3351, 729, 'impossible to say');

INSERT INTO questions (id, body, chapter) VALUES (730, 'The price per pound of iceberg lettuce has fluctuated quite a bit over the last few years. Here it is in dollars, from 1989 to 1995.<br><br></p><table border=0 width="466"><tr><td valign="top" align="left" width="32"><br></p></td><td valign="top" align="center" width="24">1989<br></p></td><td valign="top" align="center" width="87">1990<br></p></td><td valign="top" align="center" width="55">1991<br></p></td><td valign="top" align="center" width="70">1992<br></p></td><td valign="top" align="center" width="64">1993<br></p></td><td valign="top" align="center" width="67">1994<br></p></td><td valign="top" align="center" width="65">1995<br></p></td></tr></table><table border=0 width="466"><tr><td valign="top" align="left" width="32"><br></p></td><td valign="top" align="center" width="24">$0.52<br></p></td><td valign="top" align="center" width="87">$0.58<br></p></td><td valign="top" align="center" width="55">$0.69<br></p></td><td valign="top" align="center" width="70">$0.66<br></p></td><td valign="top" align="center" width="64">$0.53<br></p></td><td valign="top" align="center" width="67">$0.91<br></p></td><td valign="top" align="center" width="65">$0.61<br></p></td></tr></table><br>In which of these years was the Iceberg Lettuce Index Number (1989=100) equal to 133? <br></p>', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3352, 730, '1990');
INSERT INTO choices (id, question_id, body) VALUES (3353, 730, '1991');
UPDATE questions SET answer = 3353 WHERE id=730;
INSERT INTO choices (id, question_id, body) VALUES (3354, 730, '1992');
INSERT INTO choices (id, question_id, body) VALUES (3355, 730, '1993');
INSERT INTO choices (id, question_id, body) VALUES (3356, 730, '1994');

INSERT INTO questions (id, body, chapter) VALUES (731, 'There are separate CPI\'s for various components of the market basket. For example, the CPI for Cable TV (1982&#8211;84=100) was 200.7 in 1996.If there were no adjustments for quality improvements, then how much did Cable TV rates increase from the base period to 1996?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3357, 731, 'By 24.8%.');
INSERT INTO choices (id, question_id, body) VALUES (3358, 731, 'By 200%.');
INSERT INTO choices (id, question_id, body) VALUES (3359, 731, 'They doubled.');
UPDATE questions SET answer = 3359 WHERE id=731;
INSERT INTO choices (id, question_id, body) VALUES (3360, 731, 'Both (B) and (C) are true.');
INSERT INTO choices (id, question_id, body) VALUES (3361, 731, 'Impossible to say because the CPI doesn\'t measure prices.');

INSERT INTO questions (id, body, chapter) VALUES (732, 'There are separate CPI\'s for various components of the market basket. For example, the CPI for Cable TV (1982&#8211;84=100) was 200.7 in 1996.If there were adjustments in the Cable TV index due to quality improvements (e.g., more channels now than in 1984), would the increase in Cable TV rates be greater, smaller, or the same as in the previous question?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3362, 732, 'Greater.');
UPDATE questions SET answer = 3362 WHERE id=732;
INSERT INTO choices (id, question_id, body) VALUES (3363, 732, 'Smaller.');
INSERT INTO choices (id, question_id, body) VALUES (3364, 732, 'The same.');
INSERT INTO choices (id, question_id, body) VALUES (3365, 732, 'Could be either greater or smaller.');
INSERT INTO choices (id, question_id, body) VALUES (3366, 732, 'The question doesn\'t make sense.');

INSERT INTO questions (id, body, chapter) VALUES (733, 'The difference between an experiment and an observational study is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3367, 733, 'Observational studies don\'t have explanatory and response variables.');
INSERT INTO choices (id, question_id, body) VALUES (3368, 733, 'Experiments don\'t have placebos.');
INSERT INTO choices (id, question_id, body) VALUES (3369, 733, 'An experiment imposes treatments on subjects, while an observational study accepts existing treatments.');
UPDATE questions SET answer = 3369 WHERE id=733;
INSERT INTO choices (id, question_id, body) VALUES (3370, 733, 'Experiments are double-blind, while observational studies are only single-blind.');
INSERT INTO choices (id, question_id, body) VALUES (3371, 733, 'All of the above.');

INSERT INTO questions (id, body, chapter) VALUES (734, 'A  auto assembly plant reports these sales figures for the models it makes:<br><br></p><table border=0 width="459"><tr><td valign="top" align="left" width="120"><strong>Vehicle</strong><br></p></td><td valign="top" align="center" width="90"><strong>Nov 97</strong><br></p></td><td valign="top" align="center" width="80"><strong>YTD-97</strong><br></p></td><td valign="top" align="center" width="86"><strong>Nov 96</strong><br></p></td><td valign="top" align="center" width="82"><strong>YTD-96</strong><br></p></td></tr></table><table border=0 width="459"><tr><td valign="top" align="left" width="120">Subaru Legacy<br></p></td><td valign="top" align="center" width="90">8,570<br></p></td><td valign="top" align="center" width="80">83,994<br></p></td><td valign="top" align="center" width="86">8,615<br></p></td><td valign="top" align="center" width="82">85,256<br></p></td></tr></table><table border=0 width="459"><tr><td valign="top" align="left" width="120">Isuzu Rodeo<br></p></td><td valign="top" align="center" width="90">4,536<br></p></td><td valign="top" align="center" width="80">57,810<br></p></td><td valign="top" align="center" width="86">3,889<br></p></td><td valign="top" align="center" width="82">57,099<br></p></td></tr></table><table border=0 width="459"><tr><td valign="top" align="left" width="120">Honda Passport<br></p></td><td valign="top" align="center" width="90">1,569<br></p></td><td valign="top" align="center" width="80">20,567<br></p></td><td valign="top" align="center" width="86">2,259<br></p></td><td valign="top" align="center" width="82">25,982<br></p></td></tr></table><br>By what percent did November Honda Passport sales drop from \'96 to \'97? <br></p>', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3372, 734, '69%');
INSERT INTO choices (id, question_id, body) VALUES (3373, 734, '44%');
INSERT INTO choices (id, question_id, body) VALUES (3374, 734, '31%');
UPDATE questions SET answer = 3374 WHERE id=734;
INSERT INTO choices (id, question_id, body) VALUES (3375, 734, '21%');
INSERT INTO choices (id, question_id, body) VALUES (3376, 734, 'They didn\'t drop. They rose by 44%');

INSERT INTO questions (id, body, chapter) VALUES (735, 'A magazine article on preventing cancer says, &quot;Eating one serving of tofu a week may cut your risk of breast cancer 15 percent, recent research suggests.&quot; If the data comes from an observational study, then', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3377, 735, 'the results must be false.');
INSERT INTO choices (id, question_id, body) VALUES (3378, 735, 'the results must be true.');
INSERT INTO choices (id, question_id, body) VALUES (3379, 735, 'there may be lurking variables.');
INSERT INTO choices (id, question_id, body) VALUES (3380, 735, 'perhaps those who chose to eat more tofu are, for some reason, less susceptible to breast cancer than those who didn\'t.');
INSERT INTO choices (id, question_id, body) VALUES (3381, 735, 'Both (C) and (D) are true.');
UPDATE questions SET answer = 3381 WHERE id=735;

INSERT INTO questions (id, body, chapter) VALUES (736, 'A box has 10 tickets in it, two of which are winning tickets. You draw a ticket at random. If it\'s a winning ticket, you win. If not, you get another chance, as follows: your losing ticket is replaced in the box by a winning ticket (so now there are 10 tickets, as before, but 3 of them are winning tickets). You get to draw again, at random. To simulate this, we could let', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3382, 736, '0, 1 = win at first draw; 20, 21, 22, 30, 31, 32, ');
INSERT INTO choices (id, question_id, body) VALUES (3383, 736, '00, ');
INSERT INTO choices (id, question_id, body) VALUES (3384, 736, '0, 1 = win at first draw; 2, 3, 4 = win at second draw; 5, 6, 7, 8, 9 = lose.');
INSERT INTO choices (id, question_id, body) VALUES (3385, 736, 'Both (A) and (B) are correct.');
UPDATE questions SET answer = 3385 WHERE id=736;
INSERT INTO choices (id, question_id, body) VALUES (3386, 736, '(A), (B) and (C) are all correct.');

INSERT INTO questions (id, body, chapter) VALUES (737, 'There are 2,598,960 possible 5-card hands which can be dealt from an ordinary 52-card deck. Of these, 5,148 have all five cards of the same suit. (In poker such hands are called flushes. The probability of being dealt such a hand (assuming randomness) is closest to', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3387, 737, '1/4');
INSERT INTO choices (id, question_id, body) VALUES (3388, 737, '1/10');
INSERT INTO choices (id, question_id, body) VALUES (3389, 737, '1/100');
INSERT INTO choices (id, question_id, body) VALUES (3390, 737, '1/500');
UPDATE questions SET answer = 3390 WHERE id=737;
INSERT INTO choices (id, question_id, body) VALUES (3391, 737, '1/1000');

INSERT INTO questions (id, body, chapter) VALUES (738, 'A  the number of tosses of a fair coin goes up from 10, to 100, to 1,000 and to 10,000, what happens to the probability of getting between 40% and 60% heads?  What happens to the probability of getting exactly 50% heads?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3392, 738, 'Both of those probabilities increase.');
INSERT INTO choices (id, question_id, body) VALUES (3393, 738, 'Both of those probabilities decrease.');
INSERT INTO choices (id, question_id, body) VALUES (3394, 738, 'The first probability increases, but the second one decreases.');
UPDATE questions SET answer = 3394 WHERE id=738;
INSERT INTO choices (id, question_id, body) VALUES (3395, 738, 'The first probability decreases, but the second one increases.');
INSERT INTO choices (id, question_id, body) VALUES (3396, 738, 'We don\'t know until we toss the coin.');

INSERT INTO questions (id, body, chapter) VALUES (739, 'A game involving a pair of dice pays you 3 with probability 17/36, costs you 2 with probability 14/36, and costs you 4 with probability 5/36.What is your probability of losing money in one play of the game?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3397, 739, '0');
INSERT INTO choices (id, question_id, body) VALUES (3398, 739, '0.14');
INSERT INTO choices (id, question_id, body) VALUES (3399, 739, '0.47');
INSERT INTO choices (id, question_id, body) VALUES (3400, 739, '0.50');
INSERT INTO choices (id, question_id, body) VALUES (3401, 739, '0.53');
UPDATE questions SET answer = 3401 WHERE id=739;

INSERT INTO questions (id, body, chapter) VALUES (740, 'A game involving a pair of dice pays you 3 with probability 17/36, costs you 2 with probability 14/36, and costs you 4 with probability 5/36.What is your expected gain, in dollars, per play?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3402, 740, '&#8211;2.75');
INSERT INTO choices (id, question_id, body) VALUES (3403, 740, '&#8211;0.08');
INSERT INTO choices (id, question_id, body) VALUES (3404, 740, '0');
INSERT INTO choices (id, question_id, body) VALUES (3405, 740, '0.08');
UPDATE questions SET answer = 3405 WHERE id=740;
INSERT INTO choices (id, question_id, body) VALUES (3406, 740, '2.75');

INSERT INTO questions (id, body, chapter) VALUES (741, 'A game involving a pair of dice pays you 3 with probability 17/36, costs you 2 with probability 14/36, and costs you 4 with probability 5/36.If you play this game many times, in the long run how will your average gain per play compare with your answer to the previous question?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3407, 741, 'smaller');
INSERT INTO choices (id, question_id, body) VALUES (3408, 741, 'bigger');
INSERT INTO choices (id, question_id, body) VALUES (3409, 741, 'the same');
UPDATE questions SET answer = 3409 WHERE id=741;
INSERT INTO choices (id, question_id, body) VALUES (3410, 741, 'the question can\'t be answered');

INSERT INTO questions (id, body, chapter) VALUES (742, 'A sample of credit card holders charged, on the average, about 300 more this year, without an annual fee, than they did last year with one. Unfortunately we don\'t know whether the increase is due to not having an annual fee or to better economic conditions this year than last. This is an example of', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3411, 742, 'bias due to involuntary response.');
INSERT INTO choices (id, question_id, body) VALUES (3412, 742, 'measurement error.');
INSERT INTO choices (id, question_id, body) VALUES (3413, 742, 'the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (3414, 742, 'sampling error.');
INSERT INTO choices (id, question_id, body) VALUES (3415, 742, 'confounding.');
UPDATE questions SET answer = 3415 WHERE id=742;

INSERT INTO questions (id, body, chapter) VALUES (743, 'A baseball team had the following record for the season:<br><br></p><table border=0 width="275"><tr><td valign="top" align="left" width="75"><strong>Home Games</strong><br></p></td><td valign="top" align="center" width="57"><strong>Away Games</strong><br></p></td><td valign="top" align="center" width="142"></td></tr></table><table border=0 width="275"><tr><td valign="top" align="left" width="75"><strong>Won</strong><br></p></td><td valign="top" align="center" width="57">45<br></p></td><td valign="top" align="center" width="142">25<br></p></td></tr></table><table border=0 width="275"><tr><td valign="top" align="left" width="75"><strong>Lost</strong><br></p></td><td valign="top" align="center" width="57">35<br></p></td><td valign="top" align="center" width="142">55<br></p></td></tr></table>What percent of their games did the team win for the season?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3416, 743, '28.125%');
INSERT INTO choices (id, question_id, body) VALUES (3417, 743, '31.25%');
INSERT INTO choices (id, question_id, body) VALUES (3418, 743, '43.75%');
UPDATE questions SET answer = 3418 WHERE id=743;
INSERT INTO choices (id, question_id, body) VALUES (3419, 743, '56.25%');
INSERT INTO choices (id, question_id, body) VALUES (3420, 743, '64.29%');

INSERT INTO questions (id, body, chapter) VALUES (744, 'A baseball team had the following record for the season:<br><br></p><table border=0 width="275"><tr><td valign="top" align="left" width="75"><strong>Home Games</strong><br></p></td><td valign="top" align="center" width="57"><strong>Away Games</strong><br></p></td><td valign="top" align="center" width="142"></td></tr></table><table border=0 width="275"><tr><td valign="top" align="left" width="75"><strong>Won</strong><br></p></td><td valign="top" align="center" width="57">45<br></p></td><td valign="top" align="center" width="142">25<br></p></td></tr></table><table border=0 width="275"><tr><td valign="top" align="left" width="75"><strong>Lost</strong><br></p></td><td valign="top" align="center" width="57">35<br></p></td><td valign="top" align="center" width="142">55<br></p></td></tr></table>What percent of their home games did the team win?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3421, 744, '28.125%');
INSERT INTO choices (id, question_id, body) VALUES (3422, 744, '31.25%');
INSERT INTO choices (id, question_id, body) VALUES (3423, 744, '43.75%');
INSERT INTO choices (id, question_id, body) VALUES (3424, 744, '56.25%');
INSERT INTO choices (id, question_id, body) VALUES (3425, 744, '64.29%');
UPDATE questions SET answer = 3425 WHERE id=744;

INSERT INTO questions (id, body, chapter) VALUES (745, 'A baseball team had the following record for the season:<br><br></p><table border=0 width="275"><tr><td valign="top" align="left" width="75"><strong>Home Games</strong><br></p></td><td valign="top" align="center" width="57"><strong>Away Games</strong><br></p></td><td valign="top" align="center" width="142"></td></tr></table><table border=0 width="275"><tr><td valign="top" align="left" width="75"><strong>Won</strong><br></p></td><td valign="top" align="center" width="57">45<br></p></td><td valign="top" align="center" width="142">25<br></p></td></tr></table><table border=0 width="275"><tr><td valign="top" align="left" width="75"><strong>Lost</strong><br></p></td><td valign="top" align="center" width="57">35<br></p></td><td valign="top" align="center" width="142">55<br></p></td></tr></table>The two previous questions lead to this conclusion about the relationship between where the team played and how well it did:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3426, 745, 'The team is more likely to win when it plays at home.');
UPDATE questions SET answer = 3426 WHERE id=745;
INSERT INTO choices (id, question_id, body) VALUES (3427, 745, 'The team is less likely to win when it plays at home.');
INSERT INTO choices (id, question_id, body) VALUES (3428, 745, 'There is a positive association between where the team played and whether it won or lost.');
INSERT INTO choices (id, question_id, body) VALUES (3429, 745, 'Both (A) and (C).');
INSERT INTO choices (id, question_id, body) VALUES (3430, 745, 'Both (B) and (C).');

INSERT INTO questions (id, body, chapter) VALUES (746, 'Here is a two-way table showing enrollment data for full-time undergraduate students in U.S. colleges and universities.  The entries are <em>thousands of students</em>.<br><br><img src="/images/freeman/candc/f3-149.jpg"><br>How many students were 18 to 21 years old?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3431, 746, '1345');
INSERT INTO choices (id, question_id, body) VALUES (3432, 746, '5214');
INSERT INTO choices (id, question_id, body) VALUES (3433, 746, '521,400');
INSERT INTO choices (id, question_id, body) VALUES (3434, 746, '3,869,000');
INSERT INTO choices (id, question_id, body) VALUES (3435, 746, '5,214,000');
UPDATE questions SET answer = 3435 WHERE id=746;

INSERT INTO questions (id, body, chapter) VALUES (747, 'Here is a two-way table showing enrollment data for full-time undergraduate students in U.S. colleges and universities.  The entries are <em>thousands of students</em>.<br><br><img src="/images/freeman/candc/f3-149.jpg"><br>What percent of students in 4-year programs were 18 to 21 years old?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3436, 747, 'About 0.684%');
INSERT INTO choices (id, question_id, body) VALUES (3437, 747, 'About 3869%');
INSERT INTO choices (id, question_id, body) VALUES (3438, 747, 'About 49.2%');
INSERT INTO choices (id, question_id, body) VALUES (3439, 747, 'About 68.4%');
UPDATE questions SET answer = 3439 WHERE id=747;
INSERT INTO choices (id, question_id, body) VALUES (3440, 747, 'None of these.');

INSERT INTO questions (id, body, chapter) VALUES (748, 'Here is a two-way table showing enrollment data for full-time undergraduate students in U.S. colleges and universities.  The entries are <em>thousands of students</em>.<br><br><img src="/images/freeman/candc/f3-149.jpg"><br>One way of describing the association between type of program (2-year or 4-year) and student age is to say:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3441, 748, 'A higher percent of students in 2-year programs are 18 to 21 years old.');
INSERT INTO choices (id, question_id, body) VALUES (3442, 748, 'A lower percent of students in 2-year programs are 18 to 21 years old.');
UPDATE questions SET answer = 3442 WHERE id=748;
INSERT INTO choices (id, question_id, body) VALUES (3443, 748, 'There are many more students in 4-year programs.');
INSERT INTO choices (id, question_id, body) VALUES (3444, 748, 'Almost two-thirds of all full-time students are 18 to 21 years old.');

INSERT INTO questions (id, body, chapter) VALUES (749, 'A <em>census</em> is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3445, 749, 'a simple random sample from the population.');
INSERT INTO choices (id, question_id, body) VALUES (3446, 749, 'a count of a nation\'s people.');
INSERT INTO choices (id, question_id, body) VALUES (3447, 749, 'a sample that does not use chance selection.');
INSERT INTO choices (id, question_id, body) VALUES (3448, 749, 'a sample that attempts to include the entire population.');
UPDATE questions SET answer = 3448 WHERE id=749;
INSERT INTO choices (id, question_id, body) VALUES (3449, 749, 'any sample of people.');

INSERT INTO questions (id, body, chapter) VALUES (750, 'A <em>simple random sample</em> is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3450, 750, 'any sample selected by using chance.');
INSERT INTO choices (id, question_id, body) VALUES (3451, 750, 'any sample that gives every individual the same chance to be selected.');
INSERT INTO choices (id, question_id, body) VALUES (3452, 750, 'a sample that gives every possible sample of the same size the same chance to be selected.');
UPDATE questions SET answer = 3452 WHERE id=750;
INSERT INTO choices (id, question_id, body) VALUES (3453, 750, 'a sample that selects equal numbers of individuals from each stratum.');
INSERT INTO choices (id, question_id, body) VALUES (3454, 750, 'a sample that contains the same percent of each subgroup in the population.');

INSERT INTO questions (id, body, chapter) VALUES (751, '<em>Bias</em> in a sampling method is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3455, 751, 'any error in the sample result, that is, any deviation of the sample result from the truth about the population.');
INSERT INTO choices (id, question_id, body) VALUES (3456, 751, 'the random error due to using chance to select a sample.');
INSERT INTO choices (id, question_id, body) VALUES (3457, 751, 'any error due to practical difficulties such as contacting the subjects selected.');
INSERT INTO choices (id, question_id, body) VALUES (3458, 751, 'any systematic error that tends to occur in the same direction every time you use this sampling method.');
UPDATE questions SET answer = 3458 WHERE id=751;
INSERT INTO choices (id, question_id, body) VALUES (3459, 751, 'racism or sexism on the part of those who take the sample.');

INSERT INTO questions (id, body, chapter) VALUES (752, 'The name for the pattern of values that a statistic takes when we sample repeatedly from the same population is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3460, 752, 'the bias of the statistic.');
INSERT INTO choices (id, question_id, body) VALUES (3461, 752, 'the sampling distribution of the statistic.');
UPDATE questions SET answer = 3461 WHERE id=752;
INSERT INTO choices (id, question_id, body) VALUES (3462, 752, 'the scale of measurement of the statistic.');
INSERT INTO choices (id, question_id, body) VALUES (3463, 752, 'the variability of the statistic.');
INSERT INTO choices (id, question_id, body) VALUES (3464, 752, 'the sampling error.');

INSERT INTO questions (id, body, chapter) VALUES (753, 'The government sample survey of 50,000 households each month that produces data on employment, earnings and many other variables is called the', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3465, 753, 'General Household Survey.');
INSERT INTO choices (id, question_id, body) VALUES (3466, 753, 'Labor Statistics Survey.');
INSERT INTO choices (id, question_id, body) VALUES (3467, 753, 'General Social Survey.');
INSERT INTO choices (id, question_id, body) VALUES (3468, 753, 'Gallup Poll.');
INSERT INTO choices (id, question_id, body) VALUES (3469, 753, 'Current Population Survey.');
UPDATE questions SET answer = 3469 WHERE id=753;

INSERT INTO questions (id, body, chapter) VALUES (754, 'Before any study that uses human subjects can be done at a university,', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3470, 754, 'the Institutional Review Board must agree that subjects are adequately protected from possible harm.');
UPDATE questions SET answer = 3470 WHERE id=754;
INSERT INTO choices (id, question_id, body) VALUES (3471, 754, 'the Institutional Review Board must agree that the statistical design of the study is suitable.');
INSERT INTO choices (id, question_id, body) VALUES (3472, 754, 'the Institutional Review Board must agree that the study will produce valuable knowledge.');
INSERT INTO choices (id, question_id, body) VALUES (3473, 754, 'the Institutional Review Board must check that funding for the study is available.');
INSERT INTO choices (id, question_id, body) VALUES (3474, 754, 'Both (A) and (B).');

INSERT INTO questions (id, body, chapter) VALUES (755, 'You are planning an experiment to determine the effect of the brand of gasoline and the weight of a car on gas mileage measured in miles per gallon.  You will use a single test car, adding weights so that its total weight is 3000, 3500, or 4000 pounds. The car will drive on a test track at each weight using each of Amoco, Marathon, and Speedway gasoline.The response variable in your experiment is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3475, 755, 'the weight of the car.');
INSERT INTO choices (id, question_id, body) VALUES (3476, 755, 'the brand of gasoline.');
INSERT INTO choices (id, question_id, body) VALUES (3477, 755, 'Both (A) and (B) are response variables.');
INSERT INTO choices (id, question_id, body) VALUES (3478, 755, 'gas mileage in miles per gallon.');
UPDATE questions SET answer = 3478 WHERE id=755;
INSERT INTO choices (id, question_id, body) VALUES (3479, 755, 'random.');

INSERT INTO questions (id, body, chapter) VALUES (756, 'You are planning an experiment to determine the effect of the brand of gasoline and the weight of a car on gas mileage measured in miles per gallon.  You will use a single test car, adding weights so that its total weight is 3000, 3500, or 4000 pounds. The car will drive on a test track at each weight using each of Amoco, Marathon, and Speedway gasoline.Which is the best way to organize the experiment?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3480, 756, 'Start with 3000 pounds and Amoco and run the car on the test track.  Then do 3500 and 4000 pounds.  Change to Marathon and go through the three weights in order.  Then change to Speedway and do the three weights in order once more.');
INSERT INTO choices (id, question_id, body) VALUES (3481, 756, 'Start with 3000 pounds and Amoco and run the car on the test track.  Then change to Marathon and then to Speedway without changing the weight.  Then add weights to get 3500 pounds and go through the three gasolines in the same order. Then change to 4000 pounds and do the three gasolines in order again.');
INSERT INTO choices (id, question_id, body) VALUES (3482, 756, 'Choose a gasoline at random, and run the car with this gasoline at 3000, 3500, and 4000 pounds in order.  Choose one of the two remaining gasolines at random and again run the car at 3000, then 3500, then 4000 pounds.  Do the same with the last gasoline.');
INSERT INTO choices (id, question_id, body) VALUES (3483, 756, 'There are 9 combinations of weight and gasoline.  Run the car several times using each of these combinations.  Make all these runs in random order.');
UPDATE questions SET answer = 3483 WHERE id=756;

INSERT INTO questions (id, body, chapter) VALUES (757, 'You are planning an experiment to determine the effect of the brand of gasoline and the weight of a car on gas mileage measured in miles per gallon.  You will use a single test car, adding weights so that its total weight is 3000, 3500, or 4000 pounds. The car will drive on a test track at each weight using each of Amoco, Marathon, and Speedway gasoline.In the gas mileage experiment,', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3484, 757, 'gasoline brand is a categorical variable and weight is a quantitative variable.');
UPDATE questions SET answer = 3484 WHERE id=757;
INSERT INTO choices (id, question_id, body) VALUES (3485, 757, 'gasoline brand and weight are both categorical variables.');
INSERT INTO choices (id, question_id, body) VALUES (3486, 757, 'gasoline brand and weight are both quantitative variables.');
INSERT INTO choices (id, question_id, body) VALUES (3487, 757, 'gasoline brand is a quantitative variable and weight is a categorical variable.');

INSERT INTO questions (id, body, chapter) VALUES (758, 'The Internal Revenue Service examines an SRS of 1,000 income tax returns.The distribution of incomes shown on these 1,000 tax returns is almost certainly', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3488, 758, 'strongly skewed to the right.');
UPDATE questions SET answer = 3488 WHERE id=758;
INSERT INTO choices (id, question_id, body) VALUES (3489, 758, 'nearly symmetric but not close to normal.');
INSERT INTO choices (id, question_id, body) VALUES (3490, 758, 'close to normal.');
INSERT INTO choices (id, question_id, body) VALUES (3491, 758, 'strongly skewed to the left.');

INSERT INTO questions (id, body, chapter) VALUES (759, 'The Internal Revenue Service examines an SRS of 1,000 income tax returns.The Internal Revenue Service examines an SRS of 1,000 income tax returns.  Because of the shape of the distribution, you would describe this distribution numerically by giving', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3492, 759, 'the mean and standard deviation.');
INSERT INTO choices (id, question_id, body) VALUES (3493, 759, 'the correlation coefficient.');
INSERT INTO choices (id, question_id, body) VALUES (3494, 759, 'incomes in real terms, using the CPI.');
INSERT INTO choices (id, question_id, body) VALUES (3495, 759, 'the standard deviation and the correlation.');
INSERT INTO choices (id, question_id, body) VALUES (3496, 759, 'the five-number summary.');
UPDATE questions SET answer = 3496 WHERE id=759;

INSERT INTO questions (id, body, chapter) VALUES (760, 'The Internal Revenue Service examines an SRS of 1,000 income tax returns.Suppose you determined the &quot;middle&quot; of the distribution of incomes by averaging the smallest and largest of the 1,000 incomes.  Because of the shape of the distribution, this &quot;middle&quot; would almost certainly be', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3497, 760, 'less than the median income.');
INSERT INTO choices (id, question_id, body) VALUES (3498, 760, 'about the same as the median income.');
INSERT INTO choices (id, question_id, body) VALUES (3499, 760, 'greater than the median income.');
UPDATE questions SET answer = 3499 WHERE id=760;
INSERT INTO choices (id, question_id, body) VALUES (3500, 760, 'nonsense because income is a categorical variable.');
INSERT INTO choices (id, question_id, body) VALUES (3501, 760, 'nonsense because of voluntary response sampling.');

INSERT INTO questions (id, body, chapter) VALUES (761, 'Scores on the Scholastic Assessment Test are reported on a scale that yields a normal distribution with mean 500 and standard deviation 100.  The percent of scores above 500 on the SAT is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3502, 761, '99.7%');
INSERT INTO choices (id, question_id, body) VALUES (3503, 761, '95%');
INSERT INTO choices (id, question_id, body) VALUES (3504, 761, '68%');
INSERT INTO choices (id, question_id, body) VALUES (3505, 761, '50%');
UPDATE questions SET answer = 3505 WHERE id=761;
INSERT INTO choices (id, question_id, body) VALUES (3506, 761, '34%');

INSERT INTO questions (id, body, chapter) VALUES (762, 'Scores on the Scholastic Assessment Test are reported on a scale that yields a normal distribution with mean 500 and standard deviation 100.  Julie scores 600 on the SAT.  Her standard score is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3507, 762, '');
INSERT INTO choices (id, question_id, body) VALUES (3508, 762, '');
INSERT INTO choices (id, question_id, body) VALUES (3509, 762, '');
UPDATE questions SET answer = 3509 WHERE id=762;
INSERT INTO choices (id, question_id, body) VALUES (3510, 762, '');
INSERT INTO choices (id, question_id, body) VALUES (3511, 762, '');

INSERT INTO questions (id, body, chapter) VALUES (763, 'In any normal distribution, the percent of observations falling between standard score <em>z</em> = 0  and standard score <em>z</em> = 2 is about', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3512, 763, '95%');
INSERT INTO choices (id, question_id, body) VALUES (3513, 763, '81.5%');
INSERT INTO choices (id, question_id, body) VALUES (3514, 763, '61%');
INSERT INTO choices (id, question_id, body) VALUES (3515, 763, '50%');
INSERT INTO choices (id, question_id, body) VALUES (3516, 763, '47.5%');
UPDATE questions SET answer = 3516 WHERE id=763;

INSERT INTO questions (id, body, chapter) VALUES (764, 'George has an average bowling score of 180 and bowls in a league where the average for all bowlers is 150 and the standard deviation is 20.  Bill has an average bowling score of 190 and bowls in a league where the average is 160 and the standard deviation is 15. Who ranks higher in his own league, George or Bill?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3517, 764, 'Bill, because his 190 is higher than George\'s 180.');
INSERT INTO choices (id, question_id, body) VALUES (3518, 764, 'Bill, because his standard score is higher than George\'s.');
UPDATE questions SET answer = 3518 WHERE id=764;
INSERT INTO choices (id, question_id, body) VALUES (3519, 764, 'Bill and George have the same rank in their leagues, because both are 30 pins above the mean.');
INSERT INTO choices (id, question_id, body) VALUES (3520, 764, 'George, because his standard score is higher than Bill\'s.');

INSERT INTO questions (id, body, chapter) VALUES (765, 'Scores of adults on the Wechsler Adult Intelligence Scale (a common &quot;IQ&quot; test) follow a normal distribution.  The middle 95% of scores on this test range from 70 to 130.  What is the standard deviation of the test scores?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3521, 765, '20 points');
INSERT INTO choices (id, question_id, body) VALUES (3522, 765, '15 points');
INSERT INTO choices (id, question_id, body) VALUES (3523, 765, '10 points');
INSERT INTO choices (id, question_id, body) VALUES (3524, 765, '7.5 points');
UPDATE questions SET answer = 3524 WHERE id=765;
INSERT INTO choices (id, question_id, body) VALUES (3525, 765, '5 points');

INSERT INTO questions (id, body, chapter) VALUES (766, 'A set of measurements has this boxplot:<br><br><img src="/images/freeman/candc/f3-169.jpg"> <br><br>Which point on this boxplot is the first quartile of the distribution?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3526, 766, 'A');
INSERT INTO choices (id, question_id, body) VALUES (3527, 766, 'B');
UPDATE questions SET answer = 3527 WHERE id=766;
INSERT INTO choices (id, question_id, body) VALUES (3528, 766, 'C');
INSERT INTO choices (id, question_id, body) VALUES (3529, 766, 'D');
INSERT INTO choices (id, question_id, body) VALUES (3530, 766, 'E');

INSERT INTO questions (id, body, chapter) VALUES (767, 'There is a strong straight-line relationship between the outdoor temperature and the amount of energy used to heat a house.  Lower temperatures require more energy to keep the house warm.  Knowing this, a reasonable value for the correlation coefficient between temperature and home energy consumption is:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3531, 767, '');
INSERT INTO choices (id, question_id, body) VALUES (3532, 767, '');
INSERT INTO choices (id, question_id, body) VALUES (3533, 767, '');
INSERT INTO choices (id, question_id, body) VALUES (3534, 767, '');
UPDATE questions SET answer = 3534 WHERE id=767;
INSERT INTO choices (id, question_id, body) VALUES (3535, 767, '');

INSERT INTO questions (id, body, chapter) VALUES (768, 'The final exam scores of seven randomly chosen STAT 001 students are 82 82 37 50 77 70 43.  The mean of these scores is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3536, 768, '50');
INSERT INTO choices (id, question_id, body) VALUES (3537, 768, '59.8');
INSERT INTO choices (id, question_id, body) VALUES (3538, 768, '63');
UPDATE questions SET answer = 3538 WHERE id=768;
INSERT INTO choices (id, question_id, body) VALUES (3539, 768, '70');
INSERT INTO choices (id, question_id, body) VALUES (3540, 768, '82');

INSERT INTO questions (id, body, chapter) VALUES (769, 'Here is an assignment of probabilities to the face that comes up when rolling a die once:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="101"><strong>Outcome</strong><br></p></td><td valign="top" align="left" width="60">1<br></p></td><td valign="top" align="left" width="53">2<br></p></td><td valign="top" align="left" width="53">3<br></p></td><td valign="top" align="left" width="54">4<br></p></td><td valign="top" align="left" width="48">5<br></p></td><td valign="top" align="left" width="251">6<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="101"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="60">1/7<br></p></td><td valign="top" align="left" width="53">2/7<br></p></td><td valign="top" align="left" width="53">0<br></p></td><td valign="top" align="left" width="54">3/7<br></p></td><td valign="top" align="left" width="48">0<br></p></td><td valign="top" align="left" width="251">1/7<br></p></td></tr></table><br>Which of the following is true?<br></p>', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3541, 769, 'This isn\'t a legitimate assignment of probability, because every face of a die must have probability 1/6.');
INSERT INTO choices (id, question_id, body) VALUES (3542, 769, 'This isn\'t a legitimate assignment of probability, because it gives probability zero to rolling a 3 or a 5.');
INSERT INTO choices (id, question_id, body) VALUES (3543, 769, 'This isn\'t a legitimate assignment of probability, because the probabilities do not add to exactly 1.');
INSERT INTO choices (id, question_id, body) VALUES (3544, 769, 'This isn\'t a legitimate assignment of probability, because we must actually roll the die many times to learn the true probabilities.');
INSERT INTO choices (id, question_id, body) VALUES (3545, 769, 'This is a legitimate assignment of probability.');
UPDATE questions SET answer = 3545 WHERE id=769;

INSERT INTO questions (id, body, chapter) VALUES (770, 'Here is a scatterplot of the percent of games won by 11 basketball teams versus the percent of their shots that they made.  <br><br><img src="/images/freeman/candc/f3-173.jpg"> <br><br>What is the correlation between these two variables?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3546, 770, 'about &#8211;0.8');
INSERT INTO choices (id, question_id, body) VALUES (3547, 770, 'about &#8211;0.3');
INSERT INTO choices (id, question_id, body) VALUES (3548, 770, 'close to 0');
INSERT INTO choices (id, question_id, body) VALUES (3549, 770, 'about 0.3');
INSERT INTO choices (id, question_id, body) VALUES (3550, 770, 'about 0.8');
UPDATE questions SET answer = 3550 WHERE id=770;

INSERT INTO questions (id, body, chapter) VALUES (771, 'Which of the following statements about correlation is <strong>false</strong>?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3551, 771, 'The correlation coefficient measures how tightly the points on a scatterplot cluster about a straight line.');
INSERT INTO choices (id, question_id, body) VALUES (3552, 771, 'It is impossible to get a correlation greater than 1.');
INSERT INTO choices (id, question_id, body) VALUES (3553, 771, 'Correlation makes no sense for categorical variables.');
INSERT INTO choices (id, question_id, body) VALUES (3554, 771, 'The correlation coefficient is the proportion of the variance of one variable that can be explained by straight-line dependence on the other variable.');
UPDATE questions SET answer = 3554 WHERE id=771;
INSERT INTO choices (id, question_id, body) VALUES (3555, 771, 'The correlation coefficient is heavily influenced by outliers.');

INSERT INTO questions (id, body, chapter) VALUES (772, 'The next question(s) concern(s) a standard deck of 52 cards.A deck of cards contains 52 cards, of which 4 are aces.  You are offered the following wager: Draw one card at random from the deck. You win $10 if the card drawn is an ace.  Otherwise you lose $1. If you make this wager very many times, what will be the mean outcome?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3556, 772, 'About &#8211;$1, because you will lose most of the time.');
INSERT INTO choices (id, question_id, body) VALUES (3557, 772, 'About $9, because you win $10 but lose only $1.');
INSERT INTO choices (id, question_id, body) VALUES (3558, 772, 'About &#8211;$0.15, that is, on the average you lose about 15 cents.');
UPDATE questions SET answer = 3558 WHERE id=772;
INSERT INTO choices (id, question_id, body) VALUES (3559, 772, 'About $0.77, that is, on the average you win about 77 cents.');
INSERT INTO choices (id, question_id, body) VALUES (3560, 772, 'About $0, because the random draw gives you a fair bet.');

INSERT INTO questions (id, body, chapter) VALUES (773, 'The next question(s) concern(s) a standard deck of 52 cards.A deck of 52 cards contains 13 hearts.  Here is another wager: Draw one card at random from the deck.  If the card drawn is a heart, you win $2.  Otherwise, you lose $1.  Compare this wager (call it Wager 2) with that of the previous question (call it Wager 1).  Which one should you prefer?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3561, 773, 'Wager 1, because it has a higher expected value.');
UPDATE questions SET answer = 3561 WHERE id=773;
INSERT INTO choices (id, question_id, body) VALUES (3562, 773, 'Wager 2, because it has a higher expected value.');
INSERT INTO choices (id, question_id, body) VALUES (3563, 773, 'Wager 1, because it has a higher probability of winning.');
INSERT INTO choices (id, question_id, body) VALUES (3564, 773, 'Wager 2, because it has a higher probability of winning.');
INSERT INTO choices (id, question_id, body) VALUES (3565, 773, 'Both wagers are equally favorable.');

INSERT INTO questions (id, body, chapter) VALUES (774, 'A household is a group of people living together at the same address.  Choose one American household at random and record how many people it contains.  Here are the probabilities:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="149"><strong>Number of people</strong><br></p></td><td valign="top" align="left" width="48">1<br></p></td><td valign="top" align="left" width="48">2<br></p></td><td valign="top" align="left" width="48">3<br></p></td><td valign="top" align="left" width="48">4<br></p></td><td valign="top" align="left" width="48">5<br></p></td><td valign="top" align="left" width="48">6<br></p></td><td valign="top" align="left" width="186">7 or more<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="149"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="48">?<br></p></td><td valign="top" align="left" width="48">0.32<br></p></td><td valign="top" align="left" width="48">0.17<br></p></td><td valign="top" align="left" width="48">0.16<br></p></td><td valign="top" align="left" width="48">0.07<br></p></td><td valign="top" align="left" width="48">0.02<br></p></td><td valign="top" align="left" width="186">0.01<br></p></td></tr></table>What is the probability that the household chosen contains only one person?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3566, 774, '0.15');
INSERT INTO choices (id, question_id, body) VALUES (3567, 774, '0.25');
UPDATE questions SET answer = 3567 WHERE id=774;
INSERT INTO choices (id, question_id, body) VALUES (3568, 774, '0.35');
INSERT INTO choices (id, question_id, body) VALUES (3569, 774, '0.75');
INSERT INTO choices (id, question_id, body) VALUES (3570, 774, 'Can\'t tell from the information given.');

INSERT INTO questions (id, body, chapter) VALUES (775, 'A household is a group of people living together at the same address.  Choose one American household at random and record how many people it contains.  Here are the probabilities:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="149"><strong>Number of people</strong><br></p></td><td valign="top" align="left" width="48">1<br></p></td><td valign="top" align="left" width="48">2<br></p></td><td valign="top" align="left" width="48">3<br></p></td><td valign="top" align="left" width="48">4<br></p></td><td valign="top" align="left" width="48">5<br></p></td><td valign="top" align="left" width="48">6<br></p></td><td valign="top" align="left" width="186">7 or more<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="149"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="48">?<br></p></td><td valign="top" align="left" width="48">0.32<br></p></td><td valign="top" align="left" width="48">0.17<br></p></td><td valign="top" align="left" width="48">0.16<br></p></td><td valign="top" align="left" width="48">0.07<br></p></td><td valign="top" align="left" width="48">0.02<br></p></td><td valign="top" align="left" width="186">0.01<br></p></td></tr></table>What is the probability that a randomly chosen household contains 4 or more people?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3571, 775, '0.10');
INSERT INTO choices (id, question_id, body) VALUES (3572, 775, '0.16');
INSERT INTO choices (id, question_id, body) VALUES (3573, 775, '0.26');
UPDATE questions SET answer = 3573 WHERE id=775;
INSERT INTO choices (id, question_id, body) VALUES (3574, 775, '0.90');
INSERT INTO choices (id, question_id, body) VALUES (3575, 775, 'Can\'t tell from the information given.');

INSERT INTO questions (id, body, chapter) VALUES (776, 'A household is a group of people living together at the same address.  Choose one American household at random and record how many people it contains.  Here are the probabilities:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="149"><strong>Number of people</strong><br></p></td><td valign="top" align="left" width="48">1<br></p></td><td valign="top" align="left" width="48">2<br></p></td><td valign="top" align="left" width="48">3<br></p></td><td valign="top" align="left" width="48">4<br></p></td><td valign="top" align="left" width="48">5<br></p></td><td valign="top" align="left" width="48">6<br></p></td><td valign="top" align="left" width="186">7 or more<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="149"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="48">?<br></p></td><td valign="top" align="left" width="48">0.32<br></p></td><td valign="top" align="left" width="48">0.17<br></p></td><td valign="top" align="left" width="48">0.16<br></p></td><td valign="top" align="left" width="48">0.07<br></p></td><td valign="top" align="left" width="48">0.02<br></p></td><td valign="top" align="left" width="186">0.01<br></p></td></tr></table>Ten percent of U.S. households contain 5 or more people.  You want to simulate choosing a household at random and recording whether or not it contains 5 or more people.  Which of these are correct assignments of digits for this simulation?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3576, 776, 'Odd = Yes (5 or more people); Even = No (not 5 or more people)');
INSERT INTO choices (id, question_id, body) VALUES (3577, 776, '0 = Yes; 1,2,3,4,5,6,7,8,9 = No');
INSERT INTO choices (id, question_id, body) VALUES (3578, 776, '5 = Yes; 0,1,2,3,4,6,7,8,9 = No');
INSERT INTO choices (id, question_id, body) VALUES (3579, 776, 'All three are correct.');
INSERT INTO choices (id, question_id, body) VALUES (3580, 776, '(B) and (C) are correct, but (A) is not.');
UPDATE questions SET answer = 3580 WHERE id=776;

INSERT INTO questions (id, body, chapter) VALUES (777, 'The next five questions concern the following situation: A multiple choice exam offers 5 choices for each question.  Jason just guesses the answers, so he has probability 1/5 of getting any one answer right.Jason\'s guess on any one question gives no information about his guess on any other question.  The statistical term for this is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3581, 777, 'absence of bias');
INSERT INTO choices (id, question_id, body) VALUES (3582, 777, 'absence of confounding');
INSERT INTO choices (id, question_id, body) VALUES (3583, 777, 'law of large numbers');
INSERT INTO choices (id, question_id, body) VALUES (3584, 777, 'independence');
UPDATE questions SET answer = 3584 WHERE id=777;
INSERT INTO choices (id, question_id, body) VALUES (3585, 777, 'expected value');

INSERT INTO questions (id, body, chapter) VALUES (778, 'The next five questions concern the following situation: A multiple choice exam offers 5 choices for each question.  Jason just guesses the answers, so he has probability 1/5 of getting any one answer right.You want to simulate whether Jason\'s answers to 10 questions are right or wrong.  One correct way to do this is:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3586, 778, 'One digit from the random digit table simulates one answer, with 5 = right and all other digits = wrong.  Ten digits from the table simulate 10 answers.');
INSERT INTO choices (id, question_id, body) VALUES (3587, 778, 'One digit from the random digit table simulates one answer, with 0 or 1 = right and all other digits = wrong.  Ten digits from the table simulate 10 answers.');
UPDATE questions SET answer = 3587 WHERE id=778;
INSERT INTO choices (id, question_id, body) VALUES (3588, 778, 'One digit from the random digit table simulates one answer, with odd = right and even = wrong.  Ten digits from the table simulate 10 answers.');
INSERT INTO choices (id, question_id, body) VALUES (3589, 778, 'Two digits from the random digit table simulate one answer, with 00 to 20 = right and 21 to 99 = wrong.  Ten pairs of digits simulate 10 answers.');
INSERT INTO choices (id, question_id, body) VALUES (3590, 778, 'Two digits from the random digit table simulate one answer, with 00 to 05 = right and 06 to 99 = wrong.  Ten pairs of digits simulate 10 answers.');

INSERT INTO questions (id, body, chapter) VALUES (779, 'The next five questions concern the following situation: A multiple choice exam offers 5 choices for each question.  Jason just guesses the answers, so he has probability 1/5 of getting any one answer right.Here is part of the table of random digits:<br><br>14459  26066  14201  88371  65103  62253  50490  61181<br><br>Use your chosen method from the previous question to simulate Jason\'s answers to 10 multiple choice questions.  The number he gets right is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3591, 779, 'none');
INSERT INTO choices (id, question_id, body) VALUES (3592, 779, 'one');
INSERT INTO choices (id, question_id, body) VALUES (3593, 779, 'two');
UPDATE questions SET answer = 3593 WHERE id=779;
INSERT INTO choices (id, question_id, body) VALUES (3594, 779, 'three');
INSERT INTO choices (id, question_id, body) VALUES (3595, 779, 'four');

INSERT INTO questions (id, body, chapter) VALUES (780, 'The next five questions concern the following situation: A multiple choice exam offers 5 choices for each question.  Jason just guesses the answers, so he has probability 1/5 of getting any one answer right.One of your math major friends tells you that the assignment of probabilities to the number of questions Jason gets right out of 10 is (rounded to three decimal places):<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="101"><strong>Number right</strong><br></p></td><td valign="top" align="left" width="48">0<br></p></td><td valign="top" align="left" width="42">1<br></p></td><td valign="top" align="left" width="41">2<br></p></td><td valign="top" align="left" width="42">3<br></p></td><td valign="top" align="left" width="41">4<br></p></td><td valign="top" align="left" width="36">5<br></p></td><td valign="top" align="left" width="42">6<br></p></td><td valign="top" align="left" width="41">7<br></p></td><td valign="top" align="left" width="42">8<br></p></td><td valign="top" align="left" width="36">9<br></p></td><td valign="top" align="left" width="108">10<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="101"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="48">.108<br></p></td><td valign="top" align="left" width="42">.268<br></p></td><td valign="top" align="left" width="41">.302<br></p></td><td valign="top" align="left" width="42">.201<br></p></td><td valign="top" align="left" width="41">.088<br></p></td><td valign="top" align="left" width="36">.026<br></p></td><td valign="top" align="left" width="42">.006<br></p></td><td valign="top" align="left" width="41">.001<br></p></td><td valign="top" align="left" width="42">.000<br></p></td><td valign="top" align="left" width="36">.000<br></p></td><td valign="top" align="left" width="108">.000<br></p></td></tr></table><br>What is the probability that Jason will get no more than two of the 10 questions right? <br></p>', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3596, 780, '0.302');
INSERT INTO choices (id, question_id, body) VALUES (3597, 780, '0.322');
INSERT INTO choices (id, question_id, body) VALUES (3598, 780, '0.376');
INSERT INTO choices (id, question_id, body) VALUES (3599, 780, '0.678');
UPDATE questions SET answer = 3599 WHERE id=780;
INSERT INTO choices (id, question_id, body) VALUES (3600, 780, '0.698');

INSERT INTO questions (id, body, chapter) VALUES (781, 'The next five questions concern the following situation: A multiple choice exam offers 5 choices for each question.  Jason just guesses the answers, so he has probability 1/5 of getting any one answer right.What is the expected number of right answers Jason will get?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3601, 781, '4');
INSERT INTO choices (id, question_id, body) VALUES (3602, 781, '3');
INSERT INTO choices (id, question_id, body) VALUES (3603, 781, '2');
UPDATE questions SET answer = 3603 WHERE id=781;
INSERT INTO choices (id, question_id, body) VALUES (3604, 781, '1');
INSERT INTO choices (id, question_id, body) VALUES (3605, 781, 'Can\'t tell from the information given.');

INSERT INTO questions (id, body, chapter) VALUES (782, 'The business magazine <em>Forbes</em> claims that the &quot;average&quot; wealth of its subscribers either is $800,000 or $2.2 million, depending on how we measure &quot;average.&quot;  One of these numbers is the median and one is the mean.', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3606, 782, 'The median is $2.2 million because it is pulled up by a few very rich subscribers.');
INSERT INTO choices (id, question_id, body) VALUES (3607, 782, 'The mean is $2.2 million because it is pulled up by a few very rich subscribers.');
UPDATE questions SET answer = 3607 WHERE id=782;
INSERT INTO choices (id, question_id, body) VALUES (3608, 782, 'There is no way to guess which is the median and which is the mean.');
INSERT INTO choices (id, question_id, body) VALUES (3609, 782, 'The median is $2.2 million because the median is the better measure of center for strongly skewed distributions.');
INSERT INTO choices (id, question_id, body) VALUES (3610, 782, 'The mean is $2.2 million because the mean is the better measure of center for normal distributions.');

INSERT INTO questions (id, body, chapter) VALUES (783, 'A poll of 1,234 adults found that 62% expect an increase in environmental pollution in the next decade.  Take the poll\'s sample to be an SRS of all adults.Which of these is a correct 95% confidence statement?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3611, 783, 'With 95% confidence, the percent of the sample who expect pollution to increase is between 60.6% and 63.4%.');
INSERT INTO choices (id, question_id, body) VALUES (3612, 783, 'With 95% confidence, the percent of the sample who expect pollution to increase is between 59.2% and 64.8%.');
INSERT INTO choices (id, question_id, body) VALUES (3613, 783, 'With 95% confidence, the percent of all adults who expect pollution to increase is between 60.6% and 63.4%.');
INSERT INTO choices (id, question_id, body) VALUES (3614, 783, 'With 95% confidence, the percent of all adults who expect pollution to increase is between 59.2% and 64.8%.');
UPDATE questions SET answer = 3614 WHERE id=783;
INSERT INTO choices (id, question_id, body) VALUES (3615, 783, 'With 95% confidence, the percent of all adults who expect pollution to increase is between 59% and 65%.');

INSERT INTO questions (id, body, chapter) VALUES (784, 'A poll of 1,234 adults found that 62% expect an increase in environmental pollution in the next decade.  Take the poll\'s sample to be an SRS of all adults.The poll was conducted by telephone. This causes some bias, because people without phones cannot be in the sample.  How is this bias reflected in the confidence statement?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3616, 784, 'The margin of error includes the effect of this bias, because the margin of error includes all sources of error in the poll.');
INSERT INTO choices (id, question_id, body) VALUES (3617, 784, 'The margin of error includes the effect of this bias, because the margin of error includes all sampling errors and this is a sampling error.');
INSERT INTO choices (id, question_id, body) VALUES (3618, 784, 'This bias is not included in the margin of error because people without phones are not part of the population.');
INSERT INTO choices (id, question_id, body) VALUES (3619, 784, 'This bias is not included in the margin of error because the margin of error includes only sampling errors and this is a nonsampling error.');
INSERT INTO choices (id, question_id, body) VALUES (3620, 784, 'This bias is not included in the margin of error, because the margin of error includes only the chance variation in choosing the SRS.');
UPDATE questions SET answer = 3620 WHERE id=784;

INSERT INTO questions (id, body, chapter) VALUES (785, 'A poll of 1,234 adults found that 62% expect an increase in environmental pollution in the next decade.  Take the poll\'s sample to be an SRS of all adults.The sample for the poll included 985 whites and 249 people of other races.  The margin of error for a 95% confidence interval for the opinion of people of other races is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3621, 785, 'larger than for whites, because the sample is smaller.');
UPDATE questions SET answer = 3621 WHERE id=785;
INSERT INTO choices (id, question_id, body) VALUES (3622, 785, 'smaller than for whites, because the sample is smaller.');
INSERT INTO choices (id, question_id, body) VALUES (3623, 785, 'the same as for whites, because both use 95% confidence.');
INSERT INTO choices (id, question_id, body) VALUES (3624, 785, 'the same as for whites, because both are part of the same poll.');
INSERT INTO choices (id, question_id, body) VALUES (3625, 785, 'larger than for whites, because there is more bias against people of other race.');

INSERT INTO questions (id, body, chapter) VALUES (786, 'A study of treatments for angina (pain due to low blood supply to the heart) compared bypass surgery, angioplasty, and use of drugs. The study looked at the medical records of thousands of angina patients whose doctors had chosen one of these treatments.  It found that the median survival time of patients given drugs was the highest.  What do you conclude?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3626, 786, 'Drugs prolong life, and should be the treatment of choice.');
INSERT INTO choices (id, question_id, body) VALUES (3627, 786, 'The study is unreliable because it is a voluntary response sample.');
INSERT INTO choices (id, question_id, body) VALUES (3628, 786, 'The study is unreliable, because doctors chose the treatments and probably used drugs on the less serious cases.');
UPDATE questions SET answer = 3628 WHERE id=786;
INSERT INTO choices (id, question_id, body) VALUES (3629, 786, 'The conclusion that drugs work best is trustworthy because the study was a comparative experiment.');
INSERT INTO choices (id, question_id, body) VALUES (3630, 786, 'The study is unreliable because the patients volunteered to be studied.');

INSERT INTO questions (id, body, chapter) VALUES (787, 'The most important principles of statistical design of experiments are:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3631, 787, 'randomization and comparison of several treatments.');
UPDATE questions SET answer = 3631 WHERE id=787;
INSERT INTO choices (id, question_id, body) VALUES (3632, 787, 'randomization and the double-blind technique.');
INSERT INTO choices (id, question_id, body) VALUES (3633, 787, 'random sampling and sampling distributions.');
INSERT INTO choices (id, question_id, body) VALUES (3634, 787, 'confidence intervals and comparison of several treatments.');
INSERT INTO choices (id, question_id, body) VALUES (3635, 787, 'margin of error and random sampling.');

INSERT INTO questions (id, body, chapter) VALUES (788, 'You have invented a drug that you think will relieve anxiety and help students score better on exams.  You want to test the drug on a group of statistics students who are about to take their final exam.You will give some students your new drug and others a dummy pill.  Why?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3636, 788, 'To avoid the bad effects of voluntary response.');
INSERT INTO choices (id, question_id, body) VALUES (3637, 788, 'To avoid confounding with the placebo effect.');
UPDATE questions SET answer = 3637 WHERE id=788;
INSERT INTO choices (id, question_id, body) VALUES (3638, 788, 'To allow you to decide who gets the drug.');
INSERT INTO choices (id, question_id, body) VALUES (3639, 788, 'To allow students to choose whether they want to take the drug.');
INSERT INTO choices (id, question_id, body) VALUES (3640, 788, 'To allow informed consent.');

INSERT INTO questions (id, body, chapter) VALUES (789, 'You have invented a drug that you think will relieve anxiety and help students score better on exams.  You want to test the drug on a group of statistics students who are about to take their final exam.How will you decide which students get your drug?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3641, 789, 'Let students choose whether they want the drug or not.');
INSERT INTO choices (id, question_id, body) VALUES (3642, 789, 'Give the drug to the students who are getting D or F in the course, because they need help the most.');
INSERT INTO choices (id, question_id, body) VALUES (3643, 789, 'Give the drug to the students who are getting an A in the course, because that will make your drug look good.');
INSERT INTO choices (id, question_id, body) VALUES (3644, 789, 'Choose a group that seems to you to be a fair representation of all the students in the course.');
INSERT INTO choices (id, question_id, body) VALUES (3645, 789, 'Choose an SRS of half of the available students.');
UPDATE questions SET answer = 3645 WHERE id=789;

INSERT INTO questions (id, body, chapter) VALUES (790, 'You have invented a drug that you think will relieve anxiety and help students score better on exams.  You want to test the drug on a group of statistics students who are about to take their final exam.What is a reasonable response variable for the experiment?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3646, 790, 'Whether a student received the drug or the dummy pill.');
INSERT INTO choices (id, question_id, body) VALUES (3647, 790, 'The chemical composition of your drug.');
INSERT INTO choices (id, question_id, body) VALUES (3648, 790, 'A student\'s overall GPA.');
INSERT INTO choices (id, question_id, body) VALUES (3649, 790, 'A student\'s score on a statistics final exam.');
UPDATE questions SET answer = 3649 WHERE id=790;
INSERT INTO choices (id, question_id, body) VALUES (3650, 790, 'Whether a student liked the taste of the drug.');

INSERT INTO questions (id, body, chapter) VALUES (791, 'A CBS News/New York Times opinion poll asked 1,190 adults whether they would prefer balancing the Federal budget over cutting taxes; 702 of those asked said &quot;Yes.&quot;  Take the sample to be an SRS from the population of all adults.  Which of these is a correct 95% confidence interval for the proportion of all adults who prefer balancing the budget over cutting taxes?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3651, 791, '0.59 ');
INSERT INTO choices (id, question_id, body) VALUES (3652, 791, '0.59 ');
INSERT INTO choices (id, question_id, body) VALUES (3653, 791, '0.59 ');
INSERT INTO choices (id, question_id, body) VALUES (3654, 791, '0.59 ');
UPDATE questions SET answer = 3654 WHERE id=791;
INSERT INTO choices (id, question_id, body) VALUES (3655, 791, '0.59 ');

INSERT INTO questions (id, body, chapter) VALUES (792, 'Suppose that in fact 62% of all adults favor balancing the budget over cutting taxes.  The number 62% is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3656, 792, 'a bias.');
INSERT INTO choices (id, question_id, body) VALUES (3657, 792, 'a margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (3658, 792, 'a statistic.');
INSERT INTO choices (id, question_id, body) VALUES (3659, 792, 'a parameter.');
UPDATE questions SET answer = 3659 WHERE id=792;
INSERT INTO choices (id, question_id, body) VALUES (3660, 792, 'a coefficient of variation.');

INSERT INTO questions (id, body, chapter) VALUES (793, 'Suppose that in fact 62% of all adults favor balancing the budget over cutting taxes.  If you take a large number of SRSs of size 1,190, the sample proportions who favor balancing the budget will vary.  Some will be lower than 62% and some will be higher, but the average sample result will be very close to 62%.  This fact is called', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3661, 793, 'small bias.');
UPDATE questions SET answer = 3661 WHERE id=793;
INSERT INTO choices (id, question_id, body) VALUES (3662, 793, 'small margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (3663, 793, 'high variability.');
INSERT INTO choices (id, question_id, body) VALUES (3664, 793, 'large bias.');
INSERT INTO choices (id, question_id, body) VALUES (3665, 793, 'low variability.');

INSERT INTO questions (id, body, chapter) VALUES (794, 'A  ad for <em>ARCO graphite</em> motor oil says (really): &quot;Based on a 95% confidence level, our tests achieved between 1% and 8.7% mileage improvement&quot; as compared with a conventional motor oil. What does the phrase &quot;95% confidence level&quot; mean here?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3666, 794, '');
INSERT INTO choices (id, question_id, body) VALUES (3667, 794, 'The interval from 1% to 8.7% covers 95% of the mileage improvements observed in the tests.');
INSERT INTO choices (id, question_id, body) VALUES (3668, 794, 'The tests included 95% of all oil brands on the market.');
INSERT INTO choices (id, question_id, body) VALUES (3669, 794, 'The estimate that mileage improves somewhere between 1% and 8.7% came from a method that would catch the true improvement in 95% of all similar tests.');
UPDATE questions SET answer = 3669 WHERE id=794;
INSERT INTO choices (id, question_id, body) VALUES (3670, 794, 'A mistake has been made, because 95% + 8.7% is more than 100%.');

INSERT INTO questions (id, body, chapter) VALUES (795, 'The federal minimum wage was $4.25 an hour before it was increased in 1996.  In 1980, the minimum wage was $3.25 an hour. The CPI (1982&#8211;84=100) was 82.4 in 1980 and was 153.7 in mid-1995. Which of these is true?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3671, 795, 'The 1980 minimum wage is about $6.06 in 1995 dollars, so the minimum wage has gone down in real terms.');
UPDATE questions SET answer = 3671 WHERE id=795;
INSERT INTO choices (id, question_id, body) VALUES (3672, 795, 'The 1980 minimum wage is about $6.06 in 1995 dollars, so the minimum wage has gone up in real terms.');
INSERT INTO choices (id, question_id, body) VALUES (3673, 795, 'The 1980 minimum wage is about $1.74 in 1995 dollars, so the minimum wage has gone down in real terms.');
INSERT INTO choices (id, question_id, body) VALUES (3674, 795, 'The 1980 minimum wage is about $1.74 in 1995 dollars, so the minimum wage has gone up in real terms.');
INSERT INTO choices (id, question_id, body) VALUES (3675, 795, 'The 1980 minimum wage is about $3.94 in 1995 dollars, so the minimum wage has gone up in real terms.');

INSERT INTO questions (id, body, chapter) VALUES (796, 'A sportswriter wants to know how strongly Lafayette residents support the local minor league baseball team, the Lafayette Leopards.  She stands outside the stadium before a game and interviews the first 20 people who enter the stadium.The <em>population</em> for this survey is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3676, 796, 'all residents of Lafayette.');
UPDATE questions SET answer = 3676 WHERE id=796;
INSERT INTO choices (id, question_id, body) VALUES (3677, 796, 'all Leopard fans.');
INSERT INTO choices (id, question_id, body) VALUES (3678, 796, 'all people attending the game the day the survey was conducted.');
INSERT INTO choices (id, question_id, body) VALUES (3679, 796, 'the 20 people who gave the sportswriter their opinion.');
INSERT INTO choices (id, question_id, body) VALUES (3680, 796, 'all American adults.');

INSERT INTO questions (id, body, chapter) VALUES (797, 'A sportswriter wants to know how strongly Lafayette residents support the local minor league baseball team, the Lafayette Leopards.  She stands outside the stadium before a game and interviews the first 20 people who enter the stadium.The <em>sample</em> for the survey is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3681, 797, 'all residents of Lafayette.');
INSERT INTO choices (id, question_id, body) VALUES (3682, 797, 'all Leopard fans.');
INSERT INTO choices (id, question_id, body) VALUES (3683, 797, 'all people attending the game the day the survey was conducted.');
INSERT INTO choices (id, question_id, body) VALUES (3684, 797, 'the 20 people who gave the sportswriter their opinion.');
UPDATE questions SET answer = 3684 WHERE id=797;
INSERT INTO choices (id, question_id, body) VALUES (3685, 797, 'the sportswriter.');

INSERT INTO questions (id, body, chapter) VALUES (798, 'A sportswriter wants to know how strongly Lafayette residents support the local minor league baseball team, the Lafayette Leopards.  She stands outside the stadium before a game and interviews the first 20 people who enter the stadium.The newspaper asks you to comment on their survey of local opinion.  You say', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3686, 798, 'This is a simple random sample.  It gives very accurate results.');
INSERT INTO choices (id, question_id, body) VALUES (3687, 798, 'This is a simple random sample.  The results are not biased, but the sample is so small that variation will be high.');
INSERT INTO choices (id, question_id, body) VALUES (3688, 798, 'This is a census, because all fans had a chance to be asked.  It gives very accurate results.');
INSERT INTO choices (id, question_id, body) VALUES (3689, 798, 'The sampling method is biased.  It will almost certainly overestimate the level of support among all Lafayette residents.');
UPDATE questions SET answer = 3689 WHERE id=798;
INSERT INTO choices (id, question_id, body) VALUES (3690, 798, 'The sampling method is biased.  It will almost certainly underestimate the level of support among all Lafayette residents.');

INSERT INTO questions (id, body, chapter) VALUES (799, 'A <em>stratified random sample</em> is a sample in which', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3691, 799, 'every member of the population has the same chance of being selected.');
INSERT INTO choices (id, question_id, body) VALUES (3692, 799, 'every member of the population has a known chance of being selected.');
INSERT INTO choices (id, question_id, body) VALUES (3693, 799, 'the population is first divided into groups of similar individuals, then a separate simple random sample is selected from each group and combined to form the full sample.');
UPDATE questions SET answer = 3693 WHERE id=799;
INSERT INTO choices (id, question_id, body) VALUES (3694, 799, 'every possible sample of the same size has the same chance of being selected.');
INSERT INTO choices (id, question_id, body) VALUES (3695, 799, 'we choose the final sample in several stages, for example, first states, then counties in those states, then households in those counties.');

INSERT INTO questions (id, body, chapter) VALUES (800, 'The Gallup poll interviews 1,600 people. Of these, 18% say that they jog regularly.  The news report adds that &quot;The poll had a margin of error of plus or minus three percentage points.&quot; You can safely conclude that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3696, 800, '95% of all Gallup poll samples like this one give answers within ');
UPDATE questions SET answer = 3696 WHERE id=800;
INSERT INTO choices (id, question_id, body) VALUES (3697, 800, 'the percent of the population who jog is certain to be between 15% and 21%.');
INSERT INTO choices (id, question_id, body) VALUES (3698, 800, '95% of the population jog between 15% and 21% of the time.');
INSERT INTO choices (id, question_id, body) VALUES (3699, 800, 'we can be  3% confident that the sample result is true.');
INSERT INTO choices (id, question_id, body) VALUES (3700, 800, 'if Gallup took many samples, 95% of them would find that exactly 18% of the people in the sample jog.');

INSERT INTO questions (id, body, chapter) VALUES (801, 'A Gallup Poll contacts people by dialing telephone numbers at random.  A possible source of <em>nonsampling error</em> in this poll is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3701, 801, 'some people chosen for the sample refused to answer questions.');
INSERT INTO choices (id, question_id, body) VALUES (3702, 801, 'people without telephones could not be in the sample.');
INSERT INTO choices (id, question_id, body) VALUES (3703, 801, 'some people never answered the phone in several calls.');
INSERT INTO choices (id, question_id, body) VALUES (3704, 801, 'Both (A) and (C).');
UPDATE questions SET answer = 3704 WHERE id=801;
INSERT INTO choices (id, question_id, body) VALUES (3705, 801, 'All of (A), (B), and (C).');

INSERT INTO questions (id, body, chapter) VALUES (802, 'The general term for the kind of samples recommended by statisticians is <em>probability sample</em>.  Which of these are accurate statements about probability samples of <em>n</em> individuals?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3706, 802, 'All samples of size ');
INSERT INTO choices (id, question_id, body) VALUES (3707, 802, 'There may be some samples of size ');
INSERT INTO choices (id, question_id, body) VALUES (3708, 802, 'There may be samples of size ');
INSERT INTO choices (id, question_id, body) VALUES (3709, 802, 'Both (B) and (C) are true.');
UPDATE questions SET answer = 3709 WHERE id=802;
INSERT INTO choices (id, question_id, body) VALUES (3710, 802, 'None of these statements is true.');

INSERT INTO questions (id, body, chapter) VALUES (803, 'In statistical language, &quot;95% confidence&quot; means that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3711, 803, 'we used a margin of error that covers 95% of the entire population.');
INSERT INTO choices (id, question_id, body) VALUES (3712, 803, 'we used simulation to get our result, so we know it is not exactly correct.');
INSERT INTO choices (id, question_id, body) VALUES (3713, 803, 'we used a method that gives correct answers with probability 0.95.');
UPDATE questions SET answer = 3713 WHERE id=803;
INSERT INTO choices (id, question_id, body) VALUES (3714, 803, 'our margin of error is ');
INSERT INTO choices (id, question_id, body) VALUES (3715, 803, 'the sampling distribution has only probability 0.95, rather than probability 1.');

INSERT INTO questions (id, body, chapter) VALUES (804, 'The <em>probability</em> of an outcome of a random phenomenon is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3716, 804, 'either 0 or 1, depending on whether or not the phenomenon can actually occur.');
INSERT INTO choices (id, question_id, body) VALUES (3717, 804, 'the proportion of a very long series of repetitions on which  the outcome occurs.');
UPDATE questions SET answer = 3717 WHERE id=804;
INSERT INTO choices (id, question_id, body) VALUES (3718, 804, 'the mean plus or minus two standard deviations.');
INSERT INTO choices (id, question_id, body) VALUES (3719, 804, 'another name for its expected value.');
INSERT INTO choices (id, question_id, body) VALUES (3720, 804, 'the confidence level.');

INSERT INTO questions (id, body, chapter) VALUES (805, 'When you choose a card at random from a well-shuffled deck, the probability is 1/4 that your card belongs to any one of the four suits:  clubs, diamonds, hearts, and spades.  Clubs and spades are black, hearts and diamonds are red.  The probability that your card is red is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3721, 805, '0');
INSERT INTO choices (id, question_id, body) VALUES (3722, 805, '1/4');
INSERT INTO choices (id, question_id, body) VALUES (3723, 805, '1/2');
UPDATE questions SET answer = 3723 WHERE id=805;
INSERT INTO choices (id, question_id, body) VALUES (3724, 805, '3/4');
INSERT INTO choices (id, question_id, body) VALUES (3725, 805, '1');

INSERT INTO questions (id, body, chapter) VALUES (806, 'A psychologist thinks that listening to Mozart helps people think. She gives subjects a set of puzzles and measures how many they solve in 5 minutes while listening to Mozart.  From data on many people, the psychologist gets this probability model:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="132"><strong>Puzzles solved</strong><br></p></td><td valign="top" align="left" width="53">1<br></p></td><td valign="top" align="left" width="53">2<br></p></td><td valign="top" align="left" width="53">3<br></p></td><td valign="top" align="left" width="330">4<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="132"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="53">0.2<br></p></td><td valign="top" align="left" width="53">0.4<br></p></td><td valign="top" align="left" width="53">0.3<br></p></td><td valign="top" align="left" width="330">0.1<br></p></td></tr></table>The probability that a subject solves more than one puzzle is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3726, 806, '0.2');
INSERT INTO choices (id, question_id, body) VALUES (3727, 806, '0.8');
UPDATE questions SET answer = 3727 WHERE id=806;
INSERT INTO choices (id, question_id, body) VALUES (3728, 806, '2.3');
INSERT INTO choices (id, question_id, body) VALUES (3729, 806, '1');
INSERT INTO choices (id, question_id, body) VALUES (3730, 806, 'unknown&#8212;not enough information.');

INSERT INTO questions (id, body, chapter) VALUES (807, 'A psychologist thinks that listening to Mozart helps people think. She gives subjects a set of puzzles and measures how many they solve in 5 minutes while listening to Mozart.  From data on many people, the psychologist gets this probability model:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="132"><strong>Puzzles solved</strong><br></p></td><td valign="top" align="left" width="53">1<br></p></td><td valign="top" align="left" width="53">2<br></p></td><td valign="top" align="left" width="53">3<br></p></td><td valign="top" align="left" width="330">4<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="132"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="53">0.2<br></p></td><td valign="top" align="left" width="53">0.4<br></p></td><td valign="top" align="left" width="53">0.3<br></p></td><td valign="top" align="left" width="330">0.1<br></p></td></tr></table>The expected number of puzzles that a subject solves is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3731, 807, '0.575');
INSERT INTO choices (id, question_id, body) VALUES (3732, 807, '1');
INSERT INTO choices (id, question_id, body) VALUES (3733, 807, '2.3');
UPDATE questions SET answer = 3733 WHERE id=807;
INSERT INTO choices (id, question_id, body) VALUES (3734, 807, '2.5');
INSERT INTO choices (id, question_id, body) VALUES (3735, 807, 'varies from repetition to repetition.');

INSERT INTO questions (id, body, chapter) VALUES (808, 'A psychologist thinks that listening to Mozart helps people think. She gives subjects a set of puzzles and measures how many they solve in 5 minutes while listening to Mozart.  From data on many people, the psychologist gets this probability model:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="132"><strong>Puzzles solved</strong><br></p></td><td valign="top" align="left" width="53">1<br></p></td><td valign="top" align="left" width="53">2<br></p></td><td valign="top" align="left" width="53">3<br></p></td><td valign="top" align="left" width="330">4<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="132"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="53">0.2<br></p></td><td valign="top" align="left" width="53">0.4<br></p></td><td valign="top" align="left" width="53">0.3<br></p></td><td valign="top" align="left" width="330">0.1<br></p></td></tr></table>In the previous question, you found the expected number of puzzles solved by a subject.  The <em>law of large numbers</em> says:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3736, 808, 'Observe whether each of many subjects solves a puzzle.  The proportion who solve a puzzle will be close to the number calculated in the previous question.');
INSERT INTO choices (id, question_id, body) VALUES (3737, 808, 'If you observe five subjects in a row who solve only one puzzle, the next several subjects are likely to solve 3 or 4 puzzles because the average must stay close to the expected value.');
INSERT INTO choices (id, question_id, body) VALUES (3738, 808, 'The expected value is correct only in a randomized comparative experiment.');
INSERT INTO choices (id, question_id, body) VALUES (3739, 808, 'Probabilities can be found by simulation.');
INSERT INTO choices (id, question_id, body) VALUES (3740, 808, 'Observe many subjects and record how many puzzles each solves. The average will be close to the number calculated in the previous question.');
UPDATE questions SET answer = 3740 WHERE id=808;

INSERT INTO questions (id, body, chapter) VALUES (809, 'A poll of 1,190 adults found that 702 said they would prefer balancing the budget over cutting taxes.The <em>sample proportion</em> who prefer balancing the budget is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3741, 809, 'unknown, because we only have information on 1,190 people.');
INSERT INTO choices (id, question_id, body) VALUES (3742, 809, 'unknown until we decide what confidence level we want.');
INSERT INTO choices (id, question_id, body) VALUES (3743, 809, '1.70');
INSERT INTO choices (id, question_id, body) VALUES (3744, 809, '0.59');
UPDATE questions SET answer = 3744 WHERE id=809;
INSERT INTO choices (id, question_id, body) VALUES (3745, 809, '0.41');

INSERT INTO questions (id, body, chapter) VALUES (810, 'A poll of 1,190 adults found that 702 said they would prefer balancing the budget over cutting taxes.Suppose that the poll used an SRS.  A 95% confidence interval for the proportion of all adults who prefer balancing the budget to cutting taxes is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3746, 810, '0.41 ');
INSERT INTO choices (id, question_id, body) VALUES (3747, 810, '0.59 ');
UPDATE questions SET answer = 3747 WHERE id=810;
INSERT INTO choices (id, question_id, body) VALUES (3748, 810, '0.41 ');
INSERT INTO choices (id, question_id, body) VALUES (3749, 810, '0.59 ');
INSERT INTO choices (id, question_id, body) VALUES (3750, 810, '0.59 ');

INSERT INTO questions (id, body, chapter) VALUES (811, 'A poll of 1,190 adults found that 702 said they would prefer balancing the budget over cutting taxes.A member of Congress thinks that 95% confidence isn\'t enough. He wants to be 99% confident.  How would the margin of error of a 99% confidence interval based on the same sample compare with the 95% interval you found in the previous question?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3751, 811, 'It would be smaller, because it omits only 1% of the possible samples instead of 5%.');
INSERT INTO choices (id, question_id, body) VALUES (3752, 811, 'It would be the same, because the sample is the same.');
INSERT INTO choices (id, question_id, body) VALUES (3753, 811, 'It would be larger, because higher confidence requires a larger margin of error.');
UPDATE questions SET answer = 3753 WHERE id=811;
INSERT INTO choices (id, question_id, body) VALUES (3754, 811, 'Can\'t tell, because the margin of error is random.');
INSERT INTO choices (id, question_id, body) VALUES (3755, 811, 'Can\'t tell, because it depends on the size of the population.');

INSERT INTO questions (id, body, chapter) VALUES (812, 'A poll of 1,190 adults found that 702 said they would prefer balancing the budget over cutting taxes.Another member of Congress is satisfied with 95% confidence, but she wants a smaller margin of error. How can we get a smaller margin of error, still with 95% confidence?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3756, 812, 'Take a larger sample, because larger samples result in smaller margins of error.');
UPDATE questions SET answer = 3756 WHERE id=812;
INSERT INTO choices (id, question_id, body) VALUES (3757, 812, 'Take a smaller sample, because smaller samples result in smaller margins of error.');
INSERT INTO choices (id, question_id, body) VALUES (3758, 812, 'Take another sample of the same size&#8212;you might be lucky and get a much smaller margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (3759, 812, 'Take a sample of adults in Indiana instead of in the entire country.  Then the population will be smaller and this will give a smaller margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (3760, 812, 'Carry out a call-in poll to get a voluntary response sample. Voluntary response samples have no margin of error.');

INSERT INTO questions (id, body, chapter) VALUES (813, 'Cn pleasant aromas help people work more efficiently?  Researchers did this study to find out.  Twenty-two students worked a paper-and-pencil maze six times.  On three tries, they wore a mask with floral scents.  On the other three tries they wore a mask with no scent.  The six tries were done in random order and each used a different maze.  The researchers found that the subjects took less time to complete the maze when wearing the scented mask.This study is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3761, 813, 'an experiment.');
UPDATE questions SET answer = 3761 WHERE id=813;
INSERT INTO choices (id, question_id, body) VALUES (3762, 813, 'an observational study.');
INSERT INTO choices (id, question_id, body) VALUES (3763, 813, 'a sample survey.');
INSERT INTO choices (id, question_id, body) VALUES (3764, 813, 'a census.');
INSERT INTO choices (id, question_id, body) VALUES (3765, 813, 'a time series.');

INSERT INTO questions (id, body, chapter) VALUES (814, 'Cn pleasant aromas help people work more efficiently?  Researchers did this study to find out.  Twenty-two students worked a paper-and-pencil maze six times.  On three tries, they wore a mask with floral scents.  On the other three tries they wore a mask with no scent.  The six tries were done in random order and each used a different maze.  The researchers found that the subjects took less time to complete the maze when wearing the scented mask.Because the subjects in the experiment were all college students under 25 years old, it isn\'t clear that the conclusions of the study apply to other groups such as older people and workers who are not students. This is an issue of', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3766, 814, 'confounding.');
INSERT INTO choices (id, question_id, body) VALUES (3767, 814, 'ability to generalize conclusions.');
UPDATE questions SET answer = 3767 WHERE id=814;
INSERT INTO choices (id, question_id, body) VALUES (3768, 814, 'unrealistic treatments.');
INSERT INTO choices (id, question_id, body) VALUES (3769, 814, 'bias in measurement.');
INSERT INTO choices (id, question_id, body) VALUES (3770, 814, 'nonsampling error.');

INSERT INTO questions (id, body, chapter) VALUES (815, 'We say that the design of a study is biased if which of the following is true?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3771, 815, 'We suspect racial or sexual prejudice.');
INSERT INTO choices (id, question_id, body) VALUES (3772, 815, 'The study assigns subjects at random to a placebo.');
INSERT INTO choices (id, question_id, body) VALUES (3773, 815, 'The study systematically favors certain outcomes.');
UPDATE questions SET answer = 3773 WHERE id=815;
INSERT INTO choices (id, question_id, body) VALUES (3774, 815, 'The study shows a correlation greater than 1 or less than &#8211;1.');
INSERT INTO choices (id, question_id, body) VALUES (3775, 815, 'The study is double-blind.');

INSERT INTO questions (id, body, chapter) VALUES (816, 'A y institution that does research with human subjects must have an <em>Institutional Review Board</em>.  This board reviews all planned research with human subjects in advance in order to', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3776, 816, 'be sure that the research has some scientific value.');
INSERT INTO choices (id, question_id, body) VALUES (3777, 816, 'be sure that the researchers are qualified to do the research.');
INSERT INTO choices (id, question_id, body) VALUES (3778, 816, 'be sure that the research obeys all the standards that protect the human subjects from harm.');
UPDATE questions SET answer = 3778 WHERE id=816;
INSERT INTO choices (id, question_id, body) VALUES (3779, 816, 'be sure that the statistical design of the research is sound, so that useful data will result.');
INSERT INTO choices (id, question_id, body) VALUES (3780, 816, 'all of the above.');

INSERT INTO questions (id, body, chapter) VALUES (817, 'You calculate that the standard deviation of a set of observations is 0.  This tells you that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3781, 817, 'you made an arithmetic mistake.');
INSERT INTO choices (id, question_id, body) VALUES (3782, 817, 'all the observations have the same value.');
UPDATE questions SET answer = 3782 WHERE id=817;
INSERT INTO choices (id, question_id, body) VALUES (3783, 817, 'there is no straight-line association.');
INSERT INTO choices (id, question_id, body) VALUES (3784, 817, 'the mean must also be 0.');
INSERT INTO choices (id, question_id, body) VALUES (3785, 817, 'Both (B) and (D) are true.');

INSERT INTO questions (id, body, chapter) VALUES (818, 'Which of the values below is impossible for the descriptive measure in question?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3786, 818, '');
UPDATE questions SET answer = 3786 WHERE id=818;
INSERT INTO choices (id, question_id, body) VALUES (3787, 818, '');
INSERT INTO choices (id, question_id, body) VALUES (3788, 818, '');
INSERT INTO choices (id, question_id, body) VALUES (3789, 818, 'Both (A) and (B).');
INSERT INTO choices (id, question_id, body) VALUES (3790, 818, 'Both (A) and (C).');

INSERT INTO questions (id, body, chapter) VALUES (819, 'You measure both the calories and the amount of salt in each of 33 brands of hot dogs.  The correlation between these variables is <em>r</em> = 0.49.  This shows that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3791, 819, 'hot dogs with more calories tend to have less salt.');
INSERT INTO choices (id, question_id, body) VALUES (3792, 819, 'calories and salt in hot dogs are not related at all.');
INSERT INTO choices (id, question_id, body) VALUES (3793, 819, 'the mean amount of salt is less than the mean number of calories.');
INSERT INTO choices (id, question_id, body) VALUES (3794, 819, 'the mean amount of salt is greater than the mean number of calories.');
INSERT INTO choices (id, question_id, body) VALUES (3795, 819, 'hot dogs with more salt tend to also have more calories.');
UPDATE questions SET answer = 3795 WHERE id=819;

INSERT INTO questions (id, body, chapter) VALUES (820, 'The label on a package of hot dogs tells you how much salt each hot dog has.  You want to use this information to predict how many calories the hot dog has.  The correlation is <em>r</em> = 0.49.  This says that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3796, 820, 'the fact that hot dogs have different amounts of salt explains about 24% of the observed variation in their calorie counts.');
UPDATE questions SET answer = 3796 WHERE id=820;
INSERT INTO choices (id, question_id, body) VALUES (3797, 820, 'the fact that hot dogs have different amounts of salt explains about 49% of the observed variation in their calorie counts.');
INSERT INTO choices (id, question_id, body) VALUES (3798, 820, 'the fact that hot dogs have different amounts of salt explains about 70% of the observed variation in their calorie counts.');
INSERT INTO choices (id, question_id, body) VALUES (3799, 820, 'the fact that hot dogs have different amounts of salt explains about 98% of the observed variation in their calorie counts.');

INSERT INTO questions (id, body, chapter) VALUES (821, 'A study of drug addicts in Amsterdam recorded how often each addict had recently injected drugs and whether or not the addict was infected with HIV, the virus that causes AIDS.   Here is a two-way table of the numbers of addicts in each condition:<br><br><img src="/images/freeman/candc/f3-224.jpg"><br>How many addicts did the study gather data from?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3800, 821, '156');
UPDATE questions SET answer = 3800 WHERE id=821;
INSERT INTO choices (id, question_id, body) VALUES (3801, 821, '86');
INSERT INTO choices (id, question_id, body) VALUES (3802, 821, '77');
INSERT INTO choices (id, question_id, body) VALUES (3803, 821, '70');
INSERT INTO choices (id, question_id, body) VALUES (3804, 821, 'Can\'t tell from the table.');

INSERT INTO questions (id, body, chapter) VALUES (822, 'A study of drug addicts in Amsterdam recorded how often each addict had recently injected drugs and whether or not the addict was infected with HIV, the virus that causes AIDS.   Here is a two-way table of the numbers of addicts in each condition:<br><br><img src="/images/freeman/candc/f3-224.jpg"><br>About what percent of addicts who inject daily are infected with HIV?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3805, 822, '20.5%.');
INSERT INTO choices (id, question_id, body) VALUES (3806, 822, '41.6%.');
UPDATE questions SET answer = 3806 WHERE id=822;
INSERT INTO choices (id, question_id, body) VALUES (3807, 822, '44.9%.');
INSERT INTO choices (id, question_id, body) VALUES (3808, 822, '45.7%.');
INSERT INTO choices (id, question_id, body) VALUES (3809, 822, '49.3%.');

INSERT INTO questions (id, body, chapter) VALUES (823, 'A study of drug addicts in Amsterdam recorded how often each addict had recently injected drugs and whether or not the addict was infected with HIV, the virus that causes AIDS.   Here is a two-way table of the numbers of addicts in each condition:<br><br><img src="/images/freeman/candc/f3-224.jpg"><br>From the data in the two-way table, about what is the value of the correlation between whether or not an addict is infected with HIV and how often he or she injects drugs?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3810, 823, 'Small but positive, say ');
INSERT INTO choices (id, question_id, body) VALUES (3811, 823, 'Quite large and positive, say ');
INSERT INTO choices (id, question_id, body) VALUES (3812, 823, 'Very small, close to ');
INSERT INTO choices (id, question_id, body) VALUES (3813, 823, 'Small but negative, say ');
INSERT INTO choices (id, question_id, body) VALUES (3814, 823, '');
UPDATE questions SET answer = 3814 WHERE id=823;

INSERT INTO questions (id, body, chapter) VALUES (824, 'You want to make a graph to display the distribution of the salaries of the 1700 professors at a large university.  The best choice is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3815, 824, 'a boxplot.');
INSERT INTO choices (id, question_id, body) VALUES (3816, 824, 'a histogram.');
UPDATE questions SET answer = 3816 WHERE id=824;
INSERT INTO choices (id, question_id, body) VALUES (3817, 824, 'a line graph.');
INSERT INTO choices (id, question_id, body) VALUES (3818, 824, 'a pie chart.');
INSERT INTO choices (id, question_id, body) VALUES (3819, 824, 'a stemplot.');

INSERT INTO questions (id, body, chapter) VALUES (825, 'Until the scale was changed in 1995, SAT scores were based on a scale set many years ago.  For math scores, the mean under the old scale in the 1990s was about 470 and the standard deviation was about 110.  What is the standard score of someone who scored 500 on the old SAT?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3820, 825, '');
UPDATE questions SET answer = 3820 WHERE id=825;
INSERT INTO choices (id, question_id, body) VALUES (3821, 825, '');
INSERT INTO choices (id, question_id, body) VALUES (3822, 825, '');
INSERT INTO choices (id, question_id, body) VALUES (3823, 825, '');
INSERT INTO choices (id, question_id, body) VALUES (3824, 825, '');

INSERT INTO questions (id, body, chapter) VALUES (826, 'The change in scales in 1995 (For math scores, the mean under the old scale in the 1990s was about 470 and the standard deviation was about 110) makes it hard to compare scores on the 1994 math SAT (mean 470, standard deviation 110) and the 1996 math SAT (mean 500, standard deviation 100).  Jane took the SAT in 1994 and scored 500.  Her sister Colleen took the SAT in 1996 and scored 520.  Who did better on the exam, and how can you tell?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3825, 826, 'Colleen&#8212;she scored 20 points higher than Jane.');
INSERT INTO choices (id, question_id, body) VALUES (3826, 826, 'Colleen&#8212;her standard score is higher than Jane\'s.');
INSERT INTO choices (id, question_id, body) VALUES (3827, 826, 'Jane&#8212;her standard score is higher than Colleen\'s.');
UPDATE questions SET answer = 3827 WHERE id=826;
INSERT INTO choices (id, question_id, body) VALUES (3828, 826, 'Jane&#8212;the standard deviation was bigger in 1994.');
INSERT INTO choices (id, question_id, body) VALUES (3829, 826, 'Can\'t tell from the information given.');

INSERT INTO questions (id, body, chapter) VALUES (827, 'The risk of an investment is measured by the variability of the changes in its value over a fixed period, such as a year.  More variation from year to year means more risk.  The government\'s Securities and Exchange Commission wants to require mutual funds to tell investors how risky they are.  A news article (<em>New</em> <em>York Times</em>, April 2, 1995) says that some people think that &quot;the proposed risk descriptions, especially one that goes by the daunting name standard deviation&quot; are hard to understand.  Explain to a friend what the standard deviation means, using the fact that the changes in a mutual fund\'s value over many years have a roughly normal distribution.', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3830, 827, 'The standard deviation is the distance between the first and third quartiles, so it spans half the yearly changes in the fund\'s value.');
INSERT INTO choices (id, question_id, body) VALUES (3831, 827, 'The standard deviation is the largest change we ever expect to see in a year.');
INSERT INTO choices (id, question_id, body) VALUES (3832, 827, 'The yearly change in the fund\'s value will be greater than the standard deviation half the time and less than the standard deviation half the time.');
INSERT INTO choices (id, question_id, body) VALUES (3833, 827, 'Start with the average (mean) change in the fund\'s value over many years; the actual change will be within one standard deviation of that average in about 68% of all years.');
UPDATE questions SET answer = 3833 WHERE id=827;
INSERT INTO choices (id, question_id, body) VALUES (3834, 827, 'Start with the average (mean) change in the fund\'s value over many years; the actual change will be within one standard deviation of that average in about 95% of all years.');

INSERT INTO questions (id, body, chapter) VALUES (828, 'Cina has 1.2 billion people.  Marketers want to know which international brands they have heard of.  A large study showed that 62% of all Chinese adults have heard of Coca-Cola.  You want to simulate choosing 10 Chinese at random and asking each if he or she has heard of Coca-Cola.One correct way to assign random digits to simulate the answer is:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3835, 828, 'One digit simulates one person\'s answer; odd means &quot;Yes&quot; and even mean &quot;No.&quot;');
INSERT INTO choices (id, question_id, body) VALUES (3836, 828, 'One digit simulates one person\'s answer; 0 to 6 mean &quot;Yes&quot; and 7 to 9 mean &quot;No.&quot;');
INSERT INTO choices (id, question_id, body) VALUES (3837, 828, 'Two digits simulate one person\'s answer; 00 to 61 mean &quot;Yes&quot; and 62 to 99 mean &quot;No.&quot;');
UPDATE questions SET answer = 3837 WHERE id=828;
INSERT INTO choices (id, question_id, body) VALUES (3838, 828, 'Two digits simulate one person\'s answer; 00 to 62 mean &quot;Yes&quot; and 63 to 99 mean &quot;No.&quot;');
INSERT INTO choices (id, question_id, body) VALUES (3839, 828, 'There are 1.2 billion possible answers, which is too many to simulate.');

INSERT INTO questions (id, body, chapter) VALUES (829, 'Cina has 1.2 billion people.  Marketers want to know which international brands they have heard of.  A large study showed that 62% of all Chinese adults have heard of Coca-Cola.  You want to simulate choosing 10 Chinese at random and asking each if he or she has heard of Coca-Cola.Use the correct assignment of digits and the random digits below to simulate the answers of 10 Chinese. Read across the row of random digits from left to right.  How many of these 10 Chinese have heard of Coca-Cola?<br><br>19223 95034 05756 28713 96409 12531 42544 82853', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3840, 829, '4');
INSERT INTO choices (id, question_id, body) VALUES (3841, 829, '5');
INSERT INTO choices (id, question_id, body) VALUES (3842, 829, '6');
INSERT INTO choices (id, question_id, body) VALUES (3843, 829, '7');
UPDATE questions SET answer = 3843 WHERE id=829;
INSERT INTO choices (id, question_id, body) VALUES (3844, 829, '8');

INSERT INTO questions (id, body, chapter) VALUES (830, 'The <em>New York Times</em> conducted a poll on women\'s issues in June of 1989.The poll conducted telephone interviews with 1497 adults. These 1497 people make up the', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3845, 830, 'population.');
INSERT INTO choices (id, question_id, body) VALUES (3846, 830, 'sampling frame.');
INSERT INTO choices (id, question_id, body) VALUES (3847, 830, 'sample.');
UPDATE questions SET answer = 3847 WHERE id=830;
INSERT INTO choices (id, question_id, body) VALUES (3848, 830, 'response variable.');

INSERT INTO questions (id, body, chapter) VALUES (831, 'The <em>New York Times</em> conducted a poll on women\'s issues in June of 1989.The poll omitted people without telephones, and also left out Alaska and Hawaii to reduce cost.  These omissions may cause a small bias.  If so, that bias is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3849, 831, 'a sampling error.');
UPDATE questions SET answer = 3849 WHERE id=831;
INSERT INTO choices (id, question_id, body) VALUES (3850, 831, 'a nonsampling error.');
INSERT INTO choices (id, question_id, body) VALUES (3851, 831, 'due to voluntary response.');
INSERT INTO choices (id, question_id, body) VALUES (3852, 831, 'due to absence of a control group.');

INSERT INTO questions (id, body, chapter) VALUES (832, 'The <em>New York Times</em> conducted a poll on women\'s issues in June of 1989.One question asked was:  &quot;Many women have better jobs and more opportunities than they did 20 years ago.  Do you think women have had to give up too much in the process, or not?&quot;  Of the 1025 women who were asked, 492 said &quot;Yes.&quot;  Take these 1025 women to be an SRS of all adult women.  Which of these is a correct 95% confidence interval for the proportion of all adult women who would say &quot;Yes&quot; to this statement?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3853, 832, '0.48 ');
UPDATE questions SET answer = 3853 WHERE id=832;
INSERT INTO choices (id, question_id, body) VALUES (3854, 832, '0.48 ');
INSERT INTO choices (id, question_id, body) VALUES (3855, 832, '0.48 ');
INSERT INTO choices (id, question_id, body) VALUES (3856, 832, '0.492 ');
INSERT INTO choices (id, question_id, body) VALUES (3857, 832, '0.492 ');

INSERT INTO questions (id, body, chapter) VALUES (833, 'The <em>New York Times</em> conducted a poll on women\'s issues in June of 1989.In the previous question, you obtained a 95% confidence interval for this telephone sample.  The bias due to leaving out people without a telephone', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3858, 833, 'is included in the margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (3859, 833, 'is not included in the margin of error, because leaving out people with no phone is a nonsampling error.');
INSERT INTO choices (id, question_id, body) VALUES (3860, 833, 'is not included in the margin of error, because leaving out people with no phone has no effect on the outcome of the poll.');
INSERT INTO choices (id, question_id, body) VALUES (3861, 833, 'is not included in the margin of error, because the margin of error only covers the chance variation in a random sample.');
UPDATE questions SET answer = 3861 WHERE id=833;

INSERT INTO questions (id, body, chapter) VALUES (834, 'The <em>New York Times</em> conducted a poll on women\'s issues in June of 1989.The poll questioned 1025 women and 472 men.  The design of the sample choose separate samples of men and women and planned to interview more women than men.  This is a', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3862, 834, 'systematic random sample.');
INSERT INTO choices (id, question_id, body) VALUES (3863, 834, 'completely randomized design.');
INSERT INTO choices (id, question_id, body) VALUES (3864, 834, 'stratified random sample.');
UPDATE questions SET answer = 3864 WHERE id=834;
INSERT INTO choices (id, question_id, body) VALUES (3865, 834, 'simple random sample.');

INSERT INTO questions (id, body, chapter) VALUES (835, 'The <em>New York Times</em> conducted a poll on women\'s issues in June of 1989.The 472 men were also asked the question, &quot;Many women have better jobs and more opportunities than they did 20 years ago.  Do you think women have had to give up too much in the process, or not?&quot;  above, and 212 of them said &quot;Yes.&quot;  The margin of error for a 95% confidence interval for men would be', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3866, 835, 'larger than for women, because fewer men were asked.');
UPDATE questions SET answer = 3866 WHERE id=835;
INSERT INTO choices (id, question_id, body) VALUES (3867, 835, 'smaller than for women, because fewer men were asked.');
INSERT INTO choices (id, question_id, body) VALUES (3868, 835, 'larger than for women, because fewer men said &quot;Yes.&quot;');
INSERT INTO choices (id, question_id, body) VALUES (3869, 835, 'smaller than for women, because fewer men said &quot;Yes.&quot;');
INSERT INTO choices (id, question_id, body) VALUES (3870, 835, 'the same as for women.');

INSERT INTO questions (id, body, chapter) VALUES (836, 'The <em>New York Times</em> conducted a poll on women\'s issues in June of 1989.The poll interviewed 1025 women and 472 men; 47% of the women and 37% of the men said they do not get enough time to themselves. Which of these statements is true?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3871, 836, 'The result for women has both less bias and lower variability because the sample of women is larger.');
INSERT INTO choices (id, question_id, body) VALUES (3872, 836, 'Both results have the same bias and the same variability.');
INSERT INTO choices (id, question_id, body) VALUES (3873, 836, 'Both results are equally variable.  The result for women has less bias because the sample of women is larger.');
INSERT INTO choices (id, question_id, body) VALUES (3874, 836, 'Both results have the same bias.  The result for women is less variable because the sample of women is larger.');
UPDATE questions SET answer = 3874 WHERE id=836;

INSERT INTO questions (id, body, chapter) VALUES (837, 'The <em>New York Times</em> conducted a poll on women\'s issues in June of 1989.The <em>Times</em> gave 95% confidence intervals.  The term &quot;95% confidence&quot; means', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3875, 837, 'If we took many samples, the confidence interval would cover the true population result in 95% of them.');
UPDATE questions SET answer = 3875 WHERE id=837;
INSERT INTO choices (id, question_id, body) VALUES (3876, 837, 'The sampling frame lists 95% of all American adults.');
INSERT INTO choices (id, question_id, body) VALUES (3877, 837, '95% of those interviewed said &quot;Yes&quot; to the question asked.');
INSERT INTO choices (id, question_id, body) VALUES (3878, 837, 'The confidence interval covers 95% of all responses in the population.');

INSERT INTO questions (id, body, chapter) VALUES (838, 'A  part of regular medical checkups, a study asked all 101,000 members of a medical insurance program to described their coffee drinking.  The researchers then compared those who drank coffee with those who did not.  Drinking 4 or more cups of coffee a day appeared to increase the risk of a heart attack by 40%.Why is this study an experiment or not an experiment?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3879, 838, 'This study is an experiment because it has an explanatory variable and a response variable.');
INSERT INTO choices (id, question_id, body) VALUES (3880, 838, 'This study is not an experiment because people choose whether to drink coffee or not.');
UPDATE questions SET answer = 3880 WHERE id=838;
INSERT INTO choices (id, question_id, body) VALUES (3881, 838, 'This study is an experiment because it compares two groups.');
INSERT INTO choices (id, question_id, body) VALUES (3882, 838, 'This study is not an experiment because it was not double-blind.');

INSERT INTO questions (id, body, chapter) VALUES (839, 'A  part of regular medical checkups, a study asked all 101,000 members of a medical insurance program to described their coffee drinking.  The researchers then compared those who drank coffee with those who did not.  Drinking 4 or more cups of coffee a day appeared to increase the risk of a heart attack by 40%.The response variable in the study is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3883, 839, '101,000 members of a medical insurance program.');
INSERT INTO choices (id, question_id, body) VALUES (3884, 839, 'how much coffee a person drinks.');
INSERT INTO choices (id, question_id, body) VALUES (3885, 839, 'whether or not a person had a heart attack.');
UPDATE questions SET answer = 3885 WHERE id=839;
INSERT INTO choices (id, question_id, body) VALUES (3886, 839, 'regular medical checkups.');

INSERT INTO questions (id, body, chapter) VALUES (840, 'Does taking vitamins prevent colon cancer?  A study assigned 864 subjects at random to four groups.  One group took beta-carotene, another took vitamins C and E, a third took all three, and the fourth group took only a dummy pill.  After four years, there was no difference among the groups in the formation of polyps in the colon that precede cancer.The dummy pill given to the fourth group is called', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3887, 840, 'a placebo.');
UPDATE questions SET answer = 3887 WHERE id=840;
INSERT INTO choices (id, question_id, body) VALUES (3888, 840, 'a double-blind.');
INSERT INTO choices (id, question_id, body) VALUES (3889, 840, 'a response variable.');
INSERT INTO choices (id, question_id, body) VALUES (3890, 840, 'a comparative.');

INSERT INTO questions (id, body, chapter) VALUES (841, 'Does taking vitamins prevent colon cancer?  A study assigned 864 subjects at random to four groups.  One group took beta-carotene, another took vitamins C and E, a third took all three, and the fourth group took only a dummy pill.  After four years, there was no difference among the groups in the formation of polyps in the colon that precede cancer.Neither the subjects nor the medical personnel who worked with them knew what any subject\'s pills contained.  We say that the study was', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3891, 841, 'double-blind.');
UPDATE questions SET answer = 3891 WHERE id=841;
INSERT INTO choices (id, question_id, body) VALUES (3892, 841, 'comparative.');
INSERT INTO choices (id, question_id, body) VALUES (3893, 841, 'placebo.');
INSERT INTO choices (id, question_id, body) VALUES (3894, 841, 'controlled.');

INSERT INTO questions (id, body, chapter) VALUES (842, 'Does taking vitamins prevent colon cancer?  A study assigned 864 subjects at random to four groups.  One group took beta-carotene, another took vitamins C and E, a third took all three, and the fourth group took only a dummy pill.  After four years, there was no difference among the groups in the formation of polyps in the colon that precede cancer.Earlier studies had shown that people who choose to eat lots of vegetables containing these vitamins tend to have less colon cancer.', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3895, 842, 'The earlier studies are more convincing than the new study because they involved thousands of people.');
INSERT INTO choices (id, question_id, body) VALUES (3896, 842, 'The results of the earlier studies could be due to some other fact about people who choose to eat lots of vegetables.');
INSERT INTO choices (id, question_id, body) VALUES (3897, 842, 'The new study is more convincing because people were assigned to treatments at random, rather than choosing whether or not to take vitamins.');
INSERT INTO choices (id, question_id, body) VALUES (3898, 842, 'Both (B) and (C) are true.');
UPDATE questions SET answer = 3898 WHERE id=842;
INSERT INTO choices (id, question_id, body) VALUES (3899, 842, 'All of (A), (B), and (C) are true.');

INSERT INTO questions (id, body, chapter) VALUES (843, 'Does taking vitamins prevent colon cancer?  A study assigned 864 subjects at random to four groups.  One group took beta-carotene, another took vitamins C and E, a third took all three, and the fourth group took only a dummy pill.  After four years, there was no difference among the groups in the formation of polyps in the colon that precede cancer.To do the random assignment of 864 subjects, you could label the subjects', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3900, 843, '1, 2, 3, ... , 864');
INSERT INTO choices (id, question_id, body) VALUES (3901, 843, '001, 002, 003, ... , 864');
UPDATE questions SET answer = 3901 WHERE id=843;
INSERT INTO choices (id, question_id, body) VALUES (3902, 843, '000, 001, 002, ... , 864');
INSERT INTO choices (id, question_id, body) VALUES (3903, 843, 'Both (B) and (C) are correct.');
INSERT INTO choices (id, question_id, body) VALUES (3904, 843, 'All of (A), (B), and (C) are correct.');

INSERT INTO questions (id, body, chapter) VALUES (844, 'Scores on the SAT exams have approximately a normal distribution with mean 500 and standard deviation 100.  Julie scores 400 on the math SAT.  What percent of scores are higher than Julie\'s?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3905, 844, '16%');
INSERT INTO choices (id, question_id, body) VALUES (3906, 844, '32%');
INSERT INTO choices (id, question_id, body) VALUES (3907, 844, '68%');
INSERT INTO choices (id, question_id, body) VALUES (3908, 844, '84%');
UPDATE questions SET answer = 3908 WHERE id=844;
INSERT INTO choices (id, question_id, body) VALUES (3909, 844, 'None of these.');

INSERT INTO questions (id, body, chapter) VALUES (845, 'Jason scores 380 on the math SAT.  (SAT scores have mean 500 and standard deviation 100.)  Jason\'s standard score is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3910, 845, '');
INSERT INTO choices (id, question_id, body) VALUES (3911, 845, '');
UPDATE questions SET answer = 3911 WHERE id=845;
INSERT INTO choices (id, question_id, body) VALUES (3912, 845, '1.2');
INSERT INTO choices (id, question_id, body) VALUES (3913, 845, '3.8');
INSERT INTO choices (id, question_id, body) VALUES (3914, 845, 'None of these.');

INSERT INTO questions (id, body, chapter) VALUES (846, 'You interview 100 college sophomores and you ask how much they earned the previous summer.  You decide to use the <em>median</em> to describe the <em>center</em> of the distribution of earnings.  You should describe the <em>spread</em> of the distribution by', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3915, 846, 'the two quartiles.');
UPDATE questions SET answer = 3915 WHERE id=846;
INSERT INTO choices (id, question_id, body) VALUES (3916, 846, 'the standard deviation.');
INSERT INTO choices (id, question_id, body) VALUES (3917, 846, 'the correlation.');
INSERT INTO choices (id, question_id, body) VALUES (3918, 846, 'the margin of error.');

INSERT INTO questions (id, body, chapter) VALUES (847, 'You read that &quot;the correlation between a person\'s sex and his or her occupation is <em>r</em> =0.32 .&quot;  This statement is improper because', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3919, 847, '0.32 is not a possible value for a correlation.');
INSERT INTO choices (id, question_id, body) VALUES (3920, 847, 'correlation can\'t be used to describe association between two categorical variables.');
UPDATE questions SET answer = 3920 WHERE id=847;
INSERT INTO choices (id, question_id, body) VALUES (3921, 847, 'the association is negative, so the correlation must be less than zero.');
INSERT INTO choices (id, question_id, body) VALUES (3922, 847, 'the five-number summary is a better description of these data.');

INSERT INTO questions (id, body, chapter) VALUES (848, 'You read that &quot;the correlation between spending on schools (dollars per pupil) and median score on student achievement tests is <em>r</em> =0.08 .&quot;  This means that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3923, 848, 'school districts that spend a lot have higher scores than low-spending districts, and this effect is quite strong.');
INSERT INTO choices (id, question_id, body) VALUES (3924, 848, 'school districts that spend a lot have lower scores than low-spending districts, and the effect is quite strong.');
INSERT INTO choices (id, question_id, body) VALUES (3925, 848, 'school districts that spend a lot have somewhat higher scores than low-spending districts, but the effect is weak.');
UPDATE questions SET answer = 3925 WHERE id=848;
INSERT INTO choices (id, question_id, body) VALUES (3926, 848, 'school districts that spend a lot have somewhat lower scores than low-spending districts, but the effect is weak.');

INSERT INTO questions (id, body, chapter) VALUES (849, 'The Consumer Price Index (1982&#8211;84  =100) was about 150 in 1994.  In 1989 the CPI was 124.  Tuition for in-state students at one Big Ten university was $2032 in 1989.  In 1994 dollars, this tuition is equivalent to', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3927, 849, '2032 ');
INSERT INTO choices (id, question_id, body) VALUES (3928, 849, '2032 ');
INSERT INTO choices (id, question_id, body) VALUES (3929, 849, '2032 ');
INSERT INTO choices (id, question_id, body) VALUES (3930, 849, '2032 ');
UPDATE questions SET answer = 3930 WHERE id=849;

INSERT INTO questions (id, body, chapter) VALUES (850, 'The 1994 in-state tuition at the university in the previous question was $2884.  So your calculation in the previous question shows that in the 1989&#8211;1994 period,', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3931, 850, 'tuition stayed the same in real terms.');
INSERT INTO choices (id, question_id, body) VALUES (3932, 850, 'tuition went up in real terms.');
UPDATE questions SET answer = 3932 WHERE id=850;
INSERT INTO choices (id, question_id, body) VALUES (3933, 850, 'tuition went down in real terms.');
INSERT INTO choices (id, question_id, body) VALUES (3934, 850, 'can\'t tell without more information.');

INSERT INTO questions (id, body, chapter) VALUES (851, 'Grades in STAT 001 are based on total points out of 500 possible; the final exam contributes 100 of the 500 points.  Students with higher totals out of the 400 points before the final tend to do better on the final than students with lower pre-final totals.  In fact, the linear relationship between pre-final total and final exam score explains about half of the variation seen in the class\'s final exam scores.', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3935, 851, 'The correlation between pre-exam total and final exam score is about ');
INSERT INTO choices (id, question_id, body) VALUES (3936, 851, 'The correlation between pre-exam total and final exam score is about  ');
INSERT INTO choices (id, question_id, body) VALUES (3937, 851, 'The correlation between pre-exam total and final exam score is about ');
UPDATE questions SET answer = 3937 WHERE id=851;
INSERT INTO choices (id, question_id, body) VALUES (3938, 851, 'The correlation between pre-exam total and final exam score is about ');
INSERT INTO choices (id, question_id, body) VALUES (3939, 851, 'There is not enough information to say what the correlation is.');

INSERT INTO questions (id, body, chapter) VALUES (852, 'Here is information on the number of suicides in the U.S. in a recent year, classified by sex and method:<br><br><img src="/images/freeman/candc/f3-255.jpg"><br>The percent of women suicides who used firearms is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3940, 852, '65.1%');
INSERT INTO choices (id, question_id, body) VALUES (3941, 852, '63.3%');
UPDATE questions SET answer = 3941 WHERE id=852;
INSERT INTO choices (id, question_id, body) VALUES (3942, 852, '27.5%');
INSERT INTO choices (id, question_id, body) VALUES (3943, 852, '17.9%');
INSERT INTO choices (id, question_id, body) VALUES (3944, 852, 'None of these.');

INSERT INTO questions (id, body, chapter) VALUES (853, 'Here is information on the number of suicides in the U.S. in a recent year, classified by sex and method:<br><br><img src="/images/freeman/candc/f3-255.jpg"><br>One way to describe the association between the sex of a suicide and the method used, based on the data in the previous question, is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3945, 853, 'a much higher percent of women than of men use poison.');
UPDATE questions SET answer = 3945 WHERE id=853;
INSERT INTO choices (id, question_id, body) VALUES (3946, 853, 'the number of men who shoot themselves is much higher than the number of women who shoot themselves.');
INSERT INTO choices (id, question_id, body) VALUES (3947, 853, 'many more men than women commit suicide.');
INSERT INTO choices (id, question_id, body) VALUES (3948, 853, 'a majority of all suicides use firearms.');

INSERT INTO questions (id, body, chapter) VALUES (854, 'Six friends compare their scores on a statistics exam.  It turns out that four of them have scores of 80 and the other two have scores of 65.  What is their mean score?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3949, 854, '27.5');
INSERT INTO choices (id, question_id, body) VALUES (3950, 854, '72.5');
INSERT INTO choices (id, question_id, body) VALUES (3951, 854, '75');
UPDATE questions SET answer = 3951 WHERE id=854;
INSERT INTO choices (id, question_id, body) VALUES (3952, 854, '80');

INSERT INTO questions (id, body, chapter) VALUES (855, 'You read in a book about bridge that the probability that each of the four players is dealt exactly one ace is about 0.11.  To simulate an outcome with probability 0.11 you could', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3953, 855, 'look at 2 digits in the random number table; the outcome occurs if the digits are 11.');
INSERT INTO choices (id, question_id, body) VALUES (3954, 855, 'look at 2 digits in the random number table; the outcome occurs if the digits are any of 00, 01, ... , 11.');
INSERT INTO choices (id, question_id, body) VALUES (3955, 855, 'look at 2 digits in the random number table; the outcome occurs if the digits are any of 00, 01, ... , 10.');
INSERT INTO choices (id, question_id, body) VALUES (3956, 855, 'look at 2 digits in the random number table; the outcome occurs if the digits are any of 01, 02, ... , 11.');
INSERT INTO choices (id, question_id, body) VALUES (3957, 855, 'Both (c) and (d) are correct simulations.');
UPDATE questions SET answer = 3957 WHERE id=855;

INSERT INTO questions (id, body, chapter) VALUES (856, 'You read in a book about bridge that the probability that each of the four players is dealt exactly one ace is about 0.11.  This means that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3958, 856, 'in every 100 bridge deals, each player has one ace exactly 11 times.');
INSERT INTO choices (id, question_id, body) VALUES (3959, 856, 'in one million bridge deals, the number of deals on which each player has one ace will scarcely be within ');
INSERT INTO choices (id, question_id, body) VALUES (3960, 856, 'in a very large number of bridge deals, the percent of deals on which each player has one ace will be very close to 11%.');
UPDATE questions SET answer = 3960 WHERE id=856;
INSERT INTO choices (id, question_id, body) VALUES (3961, 856, 'in a very large number of bridge deals, the average number of aces in a hand will be very close to 0.11.');

INSERT INTO questions (id, body, chapter) VALUES (857, 'Coose a woman over 18 years of age at random from the entire U.S. population.  Here are the probabilities for her marital status.<br><br></p><table border=0 width="401"><tr><td valign="top" align="left" width="83"><strong>Outcome</strong><br></p></td><td valign="top" align="center" width="62">Single<br></p></td><td valign="top" align="center" width="86">Married<br></p></td><td valign="top" align="center" width="82">Widowed<br></p></td><td valign="top" align="center" width="85">Divorced<br></p></td></tr></table><table border=0 width="401"><tr><td valign="top" align="left" width="83"><strong>Probability</strong><br></p></td><td valign="top" align="center" width="62">?<br></p></td><td valign="top" align="center" width="86">0.58<br></p></td><td valign="top" align="center" width="82">0.12<br></p></td><td valign="top" align="center" width="85">0.10<br></p></td></tr></table><br>To make this a legitimate assignment of probabilities, the probability that the woman chosen is single must be <br></p>', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3962, 857, '1');
INSERT INTO choices (id, question_id, body) VALUES (3963, 857, '0.8');
INSERT INTO choices (id, question_id, body) VALUES (3964, 857, '0.2');
UPDATE questions SET answer = 3964 WHERE id=857;
INSERT INTO choices (id, question_id, body) VALUES (3965, 857, '0.02');

INSERT INTO questions (id, body, chapter) VALUES (858, 'You choose an SRS of 2000 women over 18 years of age from the New York City metropolitan area; 623 of them are single.  A 95% confidence interval for the proportion of all adult women in the New York area who are single is (approximately)', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3966, 858, '0.31 ');
INSERT INTO choices (id, question_id, body) VALUES (3967, 858, '0.62 ');
INSERT INTO choices (id, question_id, body) VALUES (3968, 858, '0.31 ');
UPDATE questions SET answer = 3968 WHERE id=858;
INSERT INTO choices (id, question_id, body) VALUES (3969, 858, '0.62 ');
INSERT INTO choices (id, question_id, body) VALUES (3970, 858, '0.20 ');

INSERT INTO questions (id, body, chapter) VALUES (859, 'Coose an adult woman at random.  Here is the probability distribution for the number of children the woman chosen has had.<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="161"><strong>Number of children</strong><br></p></td><td valign="top" align="left" width="60">0<br></p></td><td valign="top" align="left" width="66">1<br></p></td><td valign="top" align="left" width="60">2<br></p></td><td valign="top" align="left" width="60">3<br></p></td><td valign="top" align="left" width="65">4<br></p></td><td valign="top" align="left" width="150">5<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="161"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="60">0.41<br></p></td><td valign="top" align="left" width="66">0.18<br></p></td><td valign="top" align="left" width="60">0.21<br></p></td><td valign="top" align="left" width="60">0.13<br></p></td><td valign="top" align="left" width="65">0.05<br></p></td><td valign="top" align="left" width="150">0.02<br></p></td></tr></table>The probability that a randomly chosen woman has had 3 or more children is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3971, 859, '0.59');
INSERT INTO choices (id, question_id, body) VALUES (3972, 859, '0.87');
INSERT INTO choices (id, question_id, body) VALUES (3973, 859, '0.13');
INSERT INTO choices (id, question_id, body) VALUES (3974, 859, '0.20');
UPDATE questions SET answer = 3974 WHERE id=859;

INSERT INTO questions (id, body, chapter) VALUES (860, 'Coose an adult woman at random.  Here is the probability distribution for the number of children the woman chosen has had.<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="161"><strong>Number of children</strong><br></p></td><td valign="top" align="left" width="60">0<br></p></td><td valign="top" align="left" width="66">1<br></p></td><td valign="top" align="left" width="60">2<br></p></td><td valign="top" align="left" width="60">3<br></p></td><td valign="top" align="left" width="65">4<br></p></td><td valign="top" align="left" width="150">5<br></p></td></tr></table><table border=0 width="624"><tr><td valign="top" align="left" width="161"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="60">0.41<br></p></td><td valign="top" align="left" width="66">0.18<br></p></td><td valign="top" align="left" width="60">0.21<br></p></td><td valign="top" align="left" width="60">0.13<br></p></td><td valign="top" align="left" width="65">0.05<br></p></td><td valign="top" align="left" width="150">0.02<br></p></td></tr></table>What is the expected value of the number of children a randomly chosen woman has had? (Use the information in the previous problem.)', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3975, 860, '0.59');
INSERT INTO choices (id, question_id, body) VALUES (3976, 860, '1.29');
UPDATE questions SET answer = 3976 WHERE id=860;
INSERT INTO choices (id, question_id, body) VALUES (3977, 860, '2.0');
INSERT INTO choices (id, question_id, body) VALUES (3978, 860, '2.5');

INSERT INTO questions (id, body, chapter) VALUES (861, 'Two important ethical requirements for experiments with human subjects are:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3979, 861, 'randomization and comparison.');
INSERT INTO choices (id, question_id, body) VALUES (3980, 861, 'get informed consent, have an institutional review board.');
UPDATE questions SET answer = 3980 WHERE id=861;
INSERT INTO choices (id, question_id, body) VALUES (3981, 861, 'use a control group, confidentiality.');
INSERT INTO choices (id, question_id, body) VALUES (3982, 861, 'avoid placebos, get informed consent.');

INSERT INTO questions (id, body, chapter) VALUES (862, 'The evidence that smoking causes lung cancer is very strong.  But it is not the strongest possible statistical evidence because', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3983, 862, 'we can\'t do experiments to compare smokers and non-smokers.');
UPDATE questions SET answer = 3983 WHERE id=862;
INSERT INTO choices (id, question_id, body) VALUES (3984, 862, 'only smokers have been studied.');
INSERT INTO choices (id, question_id, body) VALUES (3985, 862, 'the studies of the effects of smoking are not double-blind.');
INSERT INTO choices (id, question_id, body) VALUES (3986, 862, 'all the studies of the effects of smoking involve animals, not humans.');

INSERT INTO questions (id, body, chapter) VALUES (863, 'A study of the starting salaries of graduates of Mountain Tech shows that male graduates earn more on the average than female graduates.  But starting salaries for men and women are nearly the same when we look at each of Mountain Tech\'s schools (engineering, liberal arts, and so on) separately.  This is an example of', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3987, 863, 'using the mean when the median would be more appropriate.');
INSERT INTO choices (id, question_id, body) VALUES (3988, 863, 'an experiment without a control group.');
INSERT INTO choices (id, question_id, body) VALUES (3989, 863, 'internal inconsistency&#8212;there must be an arithmetic mistake.');
INSERT INTO choices (id, question_id, body) VALUES (3990, 863, 'Simpson\'s paradox&#8212;there must be more men in the schools whose graduates earn higher salaries.');
UPDATE questions SET answer = 3990 WHERE id=863;

INSERT INTO questions (id, body, chapter) VALUES (864, 'Students who study German in high school tend to score higher on tests of English grammar than students who do not study German. Which is true:', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3991, 864, 'This shows that studying German improves your knowledge of English grammar.');
INSERT INTO choices (id, question_id, body) VALUES (3992, 864, 'Students who choose to study German are probably already good at grammar, so we can\'t conclude anything about cause and effect.');
UPDATE questions SET answer = 3992 WHERE id=864;
INSERT INTO choices (id, question_id, body) VALUES (3993, 864, 'This makes no sense because you can\'t compute the correlation between studying German and English grammar test scores.');
INSERT INTO choices (id, question_id, body) VALUES (3994, 864, 'There is a positive correlation between whether or not a student studied German and the student\'s English grammar test score.');

INSERT INTO questions (id, body, chapter) VALUES (865, 'In the good old days (1986) the U.S. dollar was worth 1.85 Swiss Francs.  A decade later in 1996, the dollar was worth 1.33 Swiss Francs.  The value of the dollar in Swiss Francs went down by about', 17224);
INSERT INTO choices (id, question_id, body) VALUES (3995, 865, '72%');
INSERT INTO choices (id, question_id, body) VALUES (3996, 865, '28%');
UPDATE questions SET answer = 3996 WHERE id=865;
INSERT INTO choices (id, question_id, body) VALUES (3997, 865, '39%');
INSERT INTO choices (id, question_id, body) VALUES (3998, 865, '139%');
INSERT INTO choices (id, question_id, body) VALUES (3999, 865, 'Can\'t tell without knowing the CPI for 1986.');

INSERT INTO questions (id, body, chapter) VALUES (866, 'How can we measure intelligence?  One way is to measure the size of the brain.  New technology makes it possible to measure the volume of a person\'s brain in cubic inches without injury.  What is more, the measurement gives close to the same answer when we repeat it.  But how big the brain is has no relation to how smart a person is.  As a measure of intelligence, brain volume is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4000, 866, 'reliable but invalid.');
UPDATE questions SET answer = 4000 WHERE id=866;
INSERT INTO choices (id, question_id, body) VALUES (4001, 866, 'valid but not reliable.');
INSERT INTO choices (id, question_id, body) VALUES (4002, 866, 'valid and reliable.');
INSERT INTO choices (id, question_id, body) VALUES (4003, 866, 'not reliable and invalid.');

INSERT INTO questions (id, body, chapter) VALUES (867, 'Cal miners often develop serious respiratory illnesses.  It is usually thought that these are caused by coal dust in the mines. But coal miners as a group are heavy smokers, and this may explain some of the illnesses.  This is an example of', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4004, 867, 'a randomized comparative experiment.');
INSERT INTO choices (id, question_id, body) VALUES (4005, 867, 'Simpson\'s paradox.');
INSERT INTO choices (id, question_id, body) VALUES (4006, 867, 'confounding between two variables.');
UPDATE questions SET answer = 4006 WHERE id=867;
INSERT INTO choices (id, question_id, body) VALUES (4007, 867, 'the placebo effect.');

INSERT INTO questions (id, body, chapter) VALUES (868, 'You are planning a survey of Pennsylvania households.  Among other items, you will ask whether they ate turkey on Thanksgiving day.  You will give a 95% confidence interval for the proportion <em>p </em>who ate turkey.  If you take an SRS of 2000 households, the margin of error in your confidence interval will be', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4008, 868, 'twice as large as for an SRS of 500 households.');
INSERT INTO choices (id, question_id, body) VALUES (4009, 868, 'one-half as large as for an SRS of 500 households.');
UPDATE questions SET answer = 4009 WHERE id=868;
INSERT INTO choices (id, question_id, body) VALUES (4010, 868, 'four times as large as for an SRS of 500 households.');
INSERT INTO choices (id, question_id, body) VALUES (4011, 868, 'one-fourth as large as for an SRS of 500 households.');

INSERT INTO questions (id, body, chapter) VALUES (869, 'You take an SRS of 700 households in California (population about 31 million people) and another SRS of 700 households in Wyoming(population about 470,000 people).  You calculate 95% confidence intervals for the proportion in both states who ate turkey on Thanksgiving day.  The margin of error in Wyoming', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4012, 869, 'is smaller than the California margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (4013, 869, 'is larger than the California margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (4014, 869, 'is the same as the California margin of error.');
UPDATE questions SET answer = 4014 WHERE id=869;
INSERT INTO choices (id, question_id, body) VALUES (4015, 869, 'can be either much smaller or much larger than the California margin of error.');

INSERT INTO questions (id, body, chapter) VALUES (870, 'Some common sources of <em>nonsampling error</em> in samples of human populations are', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4016, 870, 'voluntary response samples; can\'t contact some subjects.');
INSERT INTO choices (id, question_id, body) VALUES (4017, 870, 'can\'t contact some subjects; some subjects refuse to answer.');
UPDATE questions SET answer = 4017 WHERE id=870;
INSERT INTO choices (id, question_id, body) VALUES (4018, 870, 'some subjects refuse to answer; using telephone directory as the sample frame.');
INSERT INTO choices (id, question_id, body) VALUES (4019, 870, 'All of these.');
INSERT INTO choices (id, question_id, body) VALUES (4020, 870, 'None of these.');

INSERT INTO questions (id, body, chapter) VALUES (871, 'Suppose that 30% of students at your college would be willing to pay for the student newspaper. Choose a student at random and ask whether he or she would pay. To simulate the outcome, you could use one random digit with', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4021, 871, '');
INSERT INTO choices (id, question_id, body) VALUES (4022, 871, '');
INSERT INTO choices (id, question_id, body) VALUES (4023, 871, '');
INSERT INTO choices (id, question_id, body) VALUES (4024, 871, 'Both (B) and (C) are correct.');
UPDATE questions SET answer = 4024 WHERE id=871;
INSERT INTO choices (id, question_id, body) VALUES (4025, 871, 'None of these is correct.');

INSERT INTO questions (id, body, chapter) VALUES (872, 'A study found correlation <em>r</em> =0.61 between the sex of a worker and his or her income. You conclude that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4026, 872, 'women earn more than men on the average.');
INSERT INTO choices (id, question_id, body) VALUES (4027, 872, 'women earn less than men on the average.');
INSERT INTO choices (id, question_id, body) VALUES (4028, 872, 'an arithmetic mistake was made because this is not a possible value of ');
INSERT INTO choices (id, question_id, body) VALUES (4029, 872, 'this is nonsense because correlation makes no sense here.');
UPDATE questions SET answer = 4029 WHERE id=872;

INSERT INTO questions (id, body, chapter) VALUES (873, 'A study found correlation <em>r</em> = <em>&#8211;</em>0.43 between how many cigarettes a person smokes and how overweight the person is. You conclude that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4030, 873, 'people who smoke more tend to be more overweight.');
INSERT INTO choices (id, question_id, body) VALUES (4031, 873, 'people who smoke more tend to be less overweight.');
UPDATE questions SET answer = 4031 WHERE id=873;
INSERT INTO choices (id, question_id, body) VALUES (4032, 873, 'an arithmetic mistake was made because this is not a possible value of ');
INSERT INTO choices (id, question_id, body) VALUES (4033, 873, 'this is nonsense because correlation makes no sense here.');

INSERT INTO questions (id, body, chapter) VALUES (874, 'One source of error in pre-election polls is that some people in the sample say they will vote but later do not vote. This is an example of', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4034, 874, 'a nonsampling error.');
UPDATE questions SET answer = 4034 WHERE id=874;
INSERT INTO choices (id, question_id, body) VALUES (4035, 874, 'a random sampling error.');
INSERT INTO choices (id, question_id, body) VALUES (4036, 874, 'a sampling error, but not a random sampling error.');
INSERT INTO choices (id, question_id, body) VALUES (4037, 874, 'incorrect randomization.');

INSERT INTO questions (id, body, chapter) VALUES (875, 'The mean salary of medical doctors in 1995 was about $187,000. The median salary is surely', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4038, 875, 'higher, because the distribution is right skewed.');
INSERT INTO choices (id, question_id, body) VALUES (4039, 875, 'higher, because the distribution is left skewed.');
INSERT INTO choices (id, question_id, body) VALUES (4040, 875, 'lower, because the distribution is right skewed.');
UPDATE questions SET answer = 4040 WHERE id=875;
INSERT INTO choices (id, question_id, body) VALUES (4041, 875, 'lower, because the distribution is left skewed.');

INSERT INTO questions (id, body, chapter) VALUES (876, 'When two coins are tossed, the probability of getting two heads is 0.25. This means that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4042, 876, 'of every 100 tosses, exactly 25 will have two heads.');
INSERT INTO choices (id, question_id, body) VALUES (4043, 876, 'the odds against two heads are 4 to 1.');
INSERT INTO choices (id, question_id, body) VALUES (4044, 876, 'in the long run, the average number of heads is 0.25.');
INSERT INTO choices (id, question_id, body) VALUES (4045, 876, 'in the long run two heads will occur on 25% of all tosses.');
UPDATE questions SET answer = 4045 WHERE id=876;

INSERT INTO questions (id, body, chapter) VALUES (877, 'A recent survey of 113,000 randomly selected U.S. adults studied the religious affiliation of Americans.The sample for this survey is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4046, 877, 'religious affiliation.');
INSERT INTO choices (id, question_id, body) VALUES (4047, 877, 'the 113,000 people questioned.');
UPDATE questions SET answer = 4047 WHERE id=877;
INSERT INTO choices (id, question_id, body) VALUES (4048, 877, 'all adults with telephones.');
INSERT INTO choices (id, question_id, body) VALUES (4049, 877, 'all U.S. adults.');

INSERT INTO questions (id, body, chapter) VALUES (878, 'A recent survey of 113,000 randomly selected U.S. adults studied the religious affiliation of Americans.The survey found that nationwide 7.5% said that they had no religion.  But in California 13% were without religion.  The sample included 7000 people in California.  The margin of error in a 95% confidence interval for the proportion of all adults who have no religion is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4050, 878, 'larger for California than for the nation.');
UPDATE questions SET answer = 4050 WHERE id=878;
INSERT INTO choices (id, question_id, body) VALUES (4051, 878, 'the same for California and for the nation.');
INSERT INTO choices (id, question_id, body) VALUES (4052, 878, 'smaller for California than for the nation.');
INSERT INTO choices (id, question_id, body) VALUES (4053, 878, 'random, so we can\'t make a comparison.');

INSERT INTO questions (id, body, chapter) VALUES (879, 'A recent survey of 113,000 randomly selected U.S. adults studied the religious affiliation of Americans.An example of a nonsampling error that could affect the results of this survey is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4054, 879, 'some people refused to talk about their religion.');
UPDATE questions SET answer = 4054 WHERE id=879;
INSERT INTO choices (id, question_id, body) VALUES (4055, 879, 'the sampling frame for the survey left out people with no telephone.');
INSERT INTO choices (id, question_id, body) VALUES (4056, 879, 'the survey left out Alaska and Hawaii to reduce expenses.');
INSERT INTO choices (id, question_id, body) VALUES (4057, 879, 'Both (B) and (C) but not (A).');

INSERT INTO questions (id, body, chapter) VALUES (880, 'A recent survey of 113,000 randomly selected U.S. adults studied the religious affiliation of Americans.Of those questioned in the poll, 86.5% said that they were Christians.  The number 86.5% is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4058, 880, 'a statistic.');
UPDATE questions SET answer = 4058 WHERE id=880;
INSERT INTO choices (id, question_id, body) VALUES (4059, 880, 'a margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (4060, 880, 'a parameter.');
INSERT INTO choices (id, question_id, body) VALUES (4061, 880, 'a confidence level.');

INSERT INTO questions (id, body, chapter) VALUES (881, 'A recent survey of 113,000 randomly selected U.S. adults studied the religious affiliation of Americans.The survey interviewed 800 people in Vermont.  Suppose that this is a simple random sample of adult residents of Vermont.  Of these 800 people, 120 said they are Methodists.  A 95% confidence interval for the proportion of all Vermonters who are Methodists is closest to', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4062, 881, '0.110 to 0.190.');
INSERT INTO choices (id, question_id, body) VALUES (4063, 881, '0.120 to 0.180.');
INSERT INTO choices (id, question_id, body) VALUES (4064, 881, '0.125 to 0.175.');
UPDATE questions SET answer = 4064 WHERE id=881;
INSERT INTO choices (id, question_id, body) VALUES (4065, 881, '0.130 to 0.170.');

INSERT INTO questions (id, body, chapter) VALUES (882, 'A psychologist finds correlation <em>r </em>= &#8211;0.3 between degree of internal religious commitment and degree of racial prejudice in a large group of people.  This means that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4066, 882, 'people with more religious commitment tend to be more prejudiced.');
INSERT INTO choices (id, question_id, body) VALUES (4067, 882, 'an arithmetic error has been made.');
INSERT INTO choices (id, question_id, body) VALUES (4068, 882, 'people with more religious commitment tend to be less prejudiced.');
UPDATE questions SET answer = 4068 WHERE id=882;
INSERT INTO choices (id, question_id, body) VALUES (4069, 882, 'there is less variation in prejudice than in religious commitment.');

INSERT INTO questions (id, body, chapter) VALUES (883, 'Larry Bird made 90% of his free throws.  To simulate one free throw shot by Larry Bird, we could use a random digit with', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4070, 883, 'odd = made, even = missed.');
INSERT INTO choices (id, question_id, body) VALUES (4071, 883, '0 to 8 = made, 9 = missed.');
UPDATE questions SET answer = 4071 WHERE id=883;
INSERT INTO choices (id, question_id, body) VALUES (4072, 883, '0 to 4 = made, 5 to 9 = missed.');
INSERT INTO choices (id, question_id, body) VALUES (4073, 883, 'Either a or c is correct.');

INSERT INTO questions (id, body, chapter) VALUES (884, 'The Chicago Cubs have 27 players on their roster.  The distribution of players\' salaries is strongly skewed to the right, with many players making &quot;only&quot; several hundred thousand dollars and a few stars making millions.  A good numerical description of this distribution is given by', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4074, 884, 'the expected value.');
INSERT INTO choices (id, question_id, body) VALUES (4075, 884, 'the mean and standard deviation.');
INSERT INTO choices (id, question_id, body) VALUES (4076, 884, 'the correlation coefficient.');
INSERT INTO choices (id, question_id, body) VALUES (4077, 884, 'the five-number summary.');
UPDATE questions SET answer = 4077 WHERE id=884;

INSERT INTO questions (id, body, chapter) VALUES (885, 'A grocery chain runs a prize game by giving each customer a ticket that may win a prize when a box is scratched.  Printed on the ticket are the following probabilities for a customer who shops once a week:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="66"><strong>Amount won</strong><br></p></td><td valign="top" align="left" width="114"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="443"></td></tr></table><table border=0 width="273"><tr><td valign="top" align="left" width="67">$500<br></p></td><td valign="top" align="center" width="50">0.01<br></p></td><td valign="top" align="center" width="154"></td></tr></table><table border=0 width="273"><tr><td valign="top" align="left" width="67">$50<br></p></td><td valign="top" align="center" width="50">0.05<br></p></td><td valign="top" align="center" width="154"></td></tr></table><table border=0 width="273"><tr><td valign="top" align="left" width="67">$10<br></p></td><td valign="top" align="center" width="50">0.20<br></p></td><td valign="top" align="center" width="154"></td></tr></table>What is the probability of winning nothing?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4078, 885, '0.50');
INSERT INTO choices (id, question_id, body) VALUES (4079, 885, '0.26');
INSERT INTO choices (id, question_id, body) VALUES (4080, 885, '0.74');
UPDATE questions SET answer = 4080 WHERE id=885;
INSERT INTO choices (id, question_id, body) VALUES (4081, 885, '0.69');

INSERT INTO questions (id, body, chapter) VALUES (886, 'A grocery chain runs a prize game by giving each customer a ticket that may win a prize when a box is scratched.  Printed on the ticket are the following probabilities for a customer who shops once a week:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="66"><strong>Amount won</strong><br></p></td><td valign="top" align="left" width="114"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="443"></td></tr></table><table border=0 width="273"><tr><td valign="top" align="left" width="67">$500<br></p></td><td valign="top" align="center" width="50">0.01<br></p></td><td valign="top" align="center" width="154"></td></tr></table><table border=0 width="273"><tr><td valign="top" align="left" width="67">$50<br></p></td><td valign="top" align="center" width="50">0.05<br></p></td><td valign="top" align="center" width="154"></td></tr></table><table border=0 width="273"><tr><td valign="top" align="left" width="67">$10<br></p></td><td valign="top" align="center" width="50">0.20<br></p></td><td valign="top" align="center" width="154"></td></tr></table>What is the expected value of a customer\'s winnings in this game?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4082, 886, '$9.50');
UPDATE questions SET answer = 4082 WHERE id=886;
INSERT INTO choices (id, question_id, body) VALUES (4083, 886, '$54.50');
INSERT INTO choices (id, question_id, body) VALUES (4084, 886, '$560.00');
INSERT INTO choices (id, question_id, body) VALUES (4085, 886, '$0.26');

INSERT INTO questions (id, body, chapter) VALUES (887, 'A grocery chain runs a prize game by giving each customer a ticket that may win a prize when a box is scratched.  Printed on the ticket are the following probabilities for a customer who shops once a week:<br><br></p><table border=0 width="624"><tr><td valign="top" align="left" width="66"><strong>Amount won</strong><br></p></td><td valign="top" align="left" width="114"><strong>Probability</strong><br></p></td><td valign="top" align="left" width="443"></td></tr></table><table border=0 width="273"><tr><td valign="top" align="left" width="67">$500<br></p></td><td valign="top" align="center" width="50">0.01<br></p></td><td valign="top" align="center" width="154"></td></tr></table><table border=0 width="273"><tr><td valign="top" align="left" width="67">$50<br></p></td><td valign="top" align="center" width="50">0.05<br></p></td><td valign="top" align="center" width="154"></td></tr></table><table border=0 width="273"><tr><td valign="top" align="left" width="67">$10<br></p></td><td valign="top" align="center" width="50">0.20<br></p></td><td valign="top" align="center" width="154"></td></tr></table>If several thousand customers play the grocery store game, you expect that the mean amount they win will be close to', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4086, 887, 'the probability of winning something.');
INSERT INTO choices (id, question_id, body) VALUES (4087, 887, 'the median amount they win.');
INSERT INTO choices (id, question_id, body) VALUES (4088, 887, 'the expected value of a customer\'s winnings.');
UPDATE questions SET answer = 4088 WHERE id=887;
INSERT INTO choices (id, question_id, body) VALUES (4089, 887, '$500.');

INSERT INTO questions (id, body, chapter) VALUES (888, 'A poker player is dealt poor hands for several hours.  He decides to bet heavily on the last hand of the evening on the grounds that after many bad hands he is due for a winner.', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4090, 888, 'He\'s right, because the winnings have to average out.');
INSERT INTO choices (id, question_id, body) VALUES (4091, 888, 'He\'s wrong, because successive deals are independent of each other.');
UPDATE questions SET answer = 4091 WHERE id=888;
INSERT INTO choices (id, question_id, body) VALUES (4092, 888, 'He\'s right, because successive deals are independent of each other.');
INSERT INTO choices (id, question_id, body) VALUES (4093, 888, 'He\'s wrong, because his expected winnings are $0 and he\'s below that now.');

INSERT INTO questions (id, body, chapter) VALUES (889, '</A>', 17224);

INSERT INTO questions (id, body, chapter) VALUES (890, 'Ten members of a fraternity take a statistics course.  Here are their scores on the first exam in the course:<br><br> 61 74 47 60 62 63 65 79 55 45To present the distribution of scores in a graph, you might choose', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4094, 890, 'a line graph.');
INSERT INTO choices (id, question_id, body) VALUES (4095, 890, 'a bar graph.');
INSERT INTO choices (id, question_id, body) VALUES (4096, 890, 'a scatterplot.');
INSERT INTO choices (id, question_id, body) VALUES (4097, 890, 'a stemplot.');
UPDATE questions SET answer = 4097 WHERE id=890;

INSERT INTO questions (id, body, chapter) VALUES (891, '</A>', 17224);

INSERT INTO questions (id, body, chapter) VALUES (892, 'Ten members of a fraternity take a statistics course.  Here are their scores on the first exam in the course:<br><br> 61 74 47 60 62 63 65 79 55 45The median score was', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4098, 892, '61');
INSERT INTO choices (id, question_id, body) VALUES (4099, 892, '61.1');
INSERT INTO choices (id, question_id, body) VALUES (4100, 892, '61.5');
UPDATE questions SET answer = 4100 WHERE id=892;
INSERT INTO choices (id, question_id, body) VALUES (4101, 892, '62.5');

INSERT INTO questions (id, body, chapter) VALUES (893, '</A>', 17224);

INSERT INTO questions (id, body, chapter) VALUES (894, 'Ten members of a fraternity take a statistics course.  Here are their scores on the first exam in the course:<br><br> 61 74 47 60 62 63 65 79 55 45The third quartile of the scores was', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4102, 894, '64');
INSERT INTO choices (id, question_id, body) VALUES (4103, 894, '65');
UPDATE questions SET answer = 4103 WHERE id=894;
INSERT INTO choices (id, question_id, body) VALUES (4104, 894, '69.5');
INSERT INTO choices (id, question_id, body) VALUES (4105, 894, '79');

INSERT INTO questions (id, body, chapter) VALUES (895, '</A>', 17224);

INSERT INTO questions (id, body, chapter) VALUES (896, 'Ten members of a fraternity take a statistics course.  Here are their scores on the first exam in the course:<br><br> 61 74 47 60 62 63 65 79 55 45In all, 135 students took the statistics exam.  The third quartile for all 135 scores was 69.  How many students had scores higher than 69?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4106, 896, '34');
UPDATE questions SET answer = 4106 WHERE id=896;
INSERT INTO choices (id, question_id, body) VALUES (4107, 896, '67');
INSERT INTO choices (id, question_id, body) VALUES (4108, 896, '69');
INSERT INTO choices (id, question_id, body) VALUES (4109, 896, '101');

INSERT INTO questions (id, body, chapter) VALUES (897, 'You gather data on the number of hours of television watched per week and the grade point index of juniors majoring in the School of Liberal arts.  You expect that TV watching will help explain grades.In a scatterplot of your data,', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4110, 897, 'hours of TV should be on the horizontal axis.');
UPDATE questions SET answer = 4110 WHERE id=897;
INSERT INTO choices (id, question_id, body) VALUES (4111, 897, 'grade index should be on the horizontal axis.');
INSERT INTO choices (id, question_id, body) VALUES (4112, 897, 'it makes no difference which is horizontal.');
INSERT INTO choices (id, question_id, body) VALUES (4113, 897, 'a scatterplot is not an appropriate type of graph for these data.');

INSERT INTO questions (id, body, chapter) VALUES (898, 'You gather data on the number of hours of television watched per week and the grade point index of juniors majoring in the School of Liberal arts.  You expect that TV watching will help explain grades.The plot of the data in the preceding question shows that students who watch more TV tend to have lower grade indexes.  You calculate the correlation <em>r</em> between hours of TV and grade index.  A plausible value is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4114, 898, '');
INSERT INTO choices (id, question_id, body) VALUES (4115, 898, '');
UPDATE questions SET answer = 4115 WHERE id=898;
INSERT INTO choices (id, question_id, body) VALUES (4116, 898, '');
INSERT INTO choices (id, question_id, body) VALUES (4117, 898, '');

INSERT INTO questions (id, body, chapter) VALUES (899, 'If an SRS of size <em>n</em> = 1500 has sample proportion p = 0.55 approving of the president, a 95% confidence interval for the proportion <em>p</em> of all adults who approve is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4118, 899, '0.55 ');
INSERT INTO choices (id, question_id, body) VALUES (4119, 899, '0.55 ');
INSERT INTO choices (id, question_id, body) VALUES (4120, 899, '0.55 ');
UPDATE questions SET answer = 4120 WHERE id=899;
INSERT INTO choices (id, question_id, body) VALUES (4121, 899, '0.55 ');

INSERT INTO questions (id, body, chapter) VALUES (900, 'A writer says that the correlation between the family income of a high school senior and the student\'s college board score is <em>r</em> = 0.4. This means that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4122, 900, 'students from high-income families tend to have lower scores than students from low-income families.');
INSERT INTO choices (id, question_id, body) VALUES (4123, 900, 'students from high-income families tend to have higher scores than students from low-income families.');
UPDATE questions SET answer = 4123 WHERE id=900;
INSERT INTO choices (id, question_id, body) VALUES (4124, 900, 'the writer made a mistake because 0.4 is not a possible value of the correlation.');
INSERT INTO choices (id, question_id, body) VALUES (4125, 900, 'this is an example of Simpson\'s paradox.');

INSERT INTO questions (id, body, chapter) VALUES (901, 'A study observes 200 men who run regularly and 200 men who choose not to run.  A personality test shows that the runners are more optimistic and outgoing. Does this prove that running causes a change in personality?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4126, 901, 'Yes&#8212;the personality is the response variable.');
INSERT INTO choices (id, question_id, body) VALUES (4127, 901, 'No&#8212;the more optimistic men may have chosen to run, so there is confounding.');
UPDATE questions SET answer = 4127 WHERE id=901;
INSERT INTO choices (id, question_id, body) VALUES (4128, 901, 'Yes&#8212;this is an experiment, so it establishes causation.');
INSERT INTO choices (id, question_id, body) VALUES (4129, 901, 'No&#8212;it\'s a case of Simpson\'s paradox.');

INSERT INTO questions (id, body, chapter) VALUES (902, 'Which of the following pairs of variables is most likely to show a negative correlation?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4130, 902, 'a person\'s income and her years of education.');
INSERT INTO choices (id, question_id, body) VALUES (4131, 902, 'a car\'s top speed and its gas mileage (miles per gallon).');
UPDATE questions SET answer = 4131 WHERE id=902;
INSERT INTO choices (id, question_id, body) VALUES (4132, 902, 'a student\'s grade index and his IQ score.');
INSERT INTO choices (id, question_id, body) VALUES (4133, 902, 'a man\'s height and his income.');

INSERT INTO questions (id, body, chapter) VALUES (903, 'Below is a table of persons aged 18 to 21 years by school enrollment status and sex, collected by the Current Population Survey.<br><br></p><table border=0 width="322"><tr><td valign="top" align="left" width="184"><strong>Number of Persons (thousands)</strong><br></p></td><td valign="top" align="center" width="138"></td></tr></table><table border=0 width="343"><tr><td valign="top" align="left" width="152"><em>Female</em><br></p></td><td valign="top" align="center" width="114"><em>Male</em><br></p></td><td valign="top" align="center" width="76"></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">High school drop-outs<br></p></td><td valign="top" align="right" width="122">965<br></p></td><td valign="top" align="right" width="90">1122<br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">Enrolled in high school<br></p></td><td valign="top" align="right" width="122">355<br></p></td><td valign="top" align="right" width="90">695<br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">HS graduate, not in college<br></p></td><td valign="top" align="right" width="122">2865<br></p></td><td valign="top" align="right" width="90">2540<br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">HS graduate, in college<br></p></td><td valign="top" align="right" width="122"><u>3068</u><br></p></td><td valign="top" align="right" width="90"><u>2659</u><br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">Total<br></p></td><td valign="top" align="right" width="122">7252<br></p></td><td valign="top" align="right" width="90">7016<br></p></td></tr></table>How many persons age 18 to 21 are there?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4134, 903, '14,268');
INSERT INTO choices (id, question_id, body) VALUES (4135, 903, '1,426,800');
INSERT INTO choices (id, question_id, body) VALUES (4136, 903, '14,268,000');
UPDATE questions SET answer = 4136 WHERE id=903;
INSERT INTO choices (id, question_id, body) VALUES (4137, 903, '12,181,000');

INSERT INTO questions (id, body, chapter) VALUES (904, 'Below is a table of persons aged 18 to 21 years by school enrollment status and sex, collected by the Current Population Survey.<br><br></p><table border=0 width="322"><tr><td valign="top" align="left" width="184"><strong>Number of Persons (thousands)</strong><br></p></td><td valign="top" align="center" width="138"></td></tr></table><table border=0 width="343"><tr><td valign="top" align="left" width="152"><em>Female</em><br></p></td><td valign="top" align="center" width="114"><em>Male</em><br></p></td><td valign="top" align="center" width="76"></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">High school drop-outs<br></p></td><td valign="top" align="right" width="122">965<br></p></td><td valign="top" align="right" width="90">1122<br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">Enrolled in high school<br></p></td><td valign="top" align="right" width="122">355<br></p></td><td valign="top" align="right" width="90">695<br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">HS graduate, not in college<br></p></td><td valign="top" align="right" width="122">2865<br></p></td><td valign="top" align="right" width="90">2540<br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">HS graduate, in college<br></p></td><td valign="top" align="right" width="122"><u>3068</u><br></p></td><td valign="top" align="right" width="90"><u>2659</u><br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">Total<br></p></td><td valign="top" align="right" width="122">7252<br></p></td><td valign="top" align="right" width="90">7016<br></p></td></tr></table>The percent of men age 18 to 21 who are high school drop outs is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4138, 904, '13.3%');
INSERT INTO choices (id, question_id, body) VALUES (4139, 904, '16.0%');
UPDATE questions SET answer = 4139 WHERE id=904;
INSERT INTO choices (id, question_id, body) VALUES (4140, 904, '7.9%');
INSERT INTO choices (id, question_id, body) VALUES (4141, 904, '53.8%');

INSERT INTO questions (id, body, chapter) VALUES (905, 'Below is a table of persons aged 18 to 21 years by school enrollment status and sex, collected by the Current Population Survey.<br><br></p><table border=0 width="322"><tr><td valign="top" align="left" width="184"><strong>Number of Persons (thousands)</strong><br></p></td><td valign="top" align="center" width="138"></td></tr></table><table border=0 width="343"><tr><td valign="top" align="left" width="152"><em>Female</em><br></p></td><td valign="top" align="center" width="114"><em>Male</em><br></p></td><td valign="top" align="center" width="76"></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">High school drop-outs<br></p></td><td valign="top" align="right" width="122">965<br></p></td><td valign="top" align="right" width="90">1122<br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">Enrolled in high school<br></p></td><td valign="top" align="right" width="122">355<br></p></td><td valign="top" align="right" width="90">695<br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">HS graduate, not in college<br></p></td><td valign="top" align="right" width="122">2865<br></p></td><td valign="top" align="right" width="90">2540<br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">HS graduate, in college<br></p></td><td valign="top" align="right" width="122"><u>3068</u><br></p></td><td valign="top" align="right" width="90"><u>2659</u><br></p></td></tr></table><table border=0 width="336"><tr><td valign="top" align="left" width="122">Total<br></p></td><td valign="top" align="right" width="122">7252<br></p></td><td valign="top" align="right" width="90">7016<br></p></td></tr></table>On the whole, these data suggest that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4142, 905, 'young men are getting less education than young women.');
UPDATE questions SET answer = 4142 WHERE id=905;
INSERT INTO choices (id, question_id, body) VALUES (4143, 905, 'young men are getting more education than young women.');
INSERT INTO choices (id, question_id, body) VALUES (4144, 905, 'almost all high school graduates go on to college.');
INSERT INTO choices (id, question_id, body) VALUES (4145, 905, 'high school graduates are mainly men.');

INSERT INTO questions (id, body, chapter) VALUES (906, 'Kevin thinks he can use ESP to predict the outcome of rolling a fair die.  You agree to pay him $3 if he can correctly predict the results of the next roll.  Kevin has to pay you $1 if he is wrong.  If Kevin doesn\'t have any psychic powers, which of the following is closest to the expected value of your net winnings on this bet?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4146, 906, '&#8211;$0.70');
INSERT INTO choices (id, question_id, body) VALUES (4147, 906, '');
INSERT INTO choices (id, question_id, body) VALUES (4148, 906, '$0');
INSERT INTO choices (id, question_id, body) VALUES (4149, 906, '$0.30');
UPDATE questions SET answer = 4149 WHERE id=906;
INSERT INTO choices (id, question_id, body) VALUES (4150, 906, '$0.70');

INSERT INTO questions (id, body, chapter) VALUES (907, 'Which of the following are most likely to be negatively correlated?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4151, 907, 'The total floor space and the price of an apartment in New York.');
INSERT INTO choices (id, question_id, body) VALUES (4152, 907, 'The percentage of body fat and the time it takes to run a mile for male college students.');
INSERT INTO choices (id, question_id, body) VALUES (4153, 907, 'The heights and yearly earnings of 35 year old U.S. adults.');
INSERT INTO choices (id, question_id, body) VALUES (4154, 907, 'Gender and yearly earnings among 35 year old U.S. adults.');
INSERT INTO choices (id, question_id, body) VALUES (4155, 907, 'The prices and the weights of all racing bicycles sold last year in Chicago.');
UPDATE questions SET answer = 4155 WHERE id=907;

INSERT INTO questions (id, body, chapter) VALUES (908, 'A Sears warehouse receives a shipment of 600 telephones of the same model.  The 600 boxes are labeled 1, 2, 3, ... , 600.  The quality control inspector at the warehouse wishes to test 6 telephones. She uses the table of random digits to choose a single pair of digits at random from all the possible pairs 00, 01, ... , 99.  It happens that she chooses the pair 86.  She then inspects all the phones whose labels end in the chosen pair of digits.  In this case, she will inspect the phones with labels 86, 186, 286, 386, 486, and 586.This is a', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4156, 908, 'stratified random sample.');
INSERT INTO choices (id, question_id, body) VALUES (4157, 908, 'systematic random sample.');
UPDATE questions SET answer = 4157 WHERE id=908;
INSERT INTO choices (id, question_id, body) VALUES (4158, 908, 'convenience sample.');
INSERT INTO choices (id, question_id, body) VALUES (4159, 908, 'simple random sample.');

INSERT INTO questions (id, body, chapter) VALUES (909, 'A Sears warehouse receives a shipment of 600 telephones of the same model.  The 600 boxes are labeled 1, 2, 3, ... , 600.  The quality control inspector at the warehouse wishes to test 6 telephones. She uses the table of random digits to choose a single pair of digits at random from all the possible pairs 00, 01, ... , 99.  It happens that she chooses the pair 86.  She then inspects all the phones whose labels end in the chosen pair of digits.  In this case, she will inspect the phones with labels 86, 186, 286, 386, 486, and 586.The chance that the phone labeled 341 would be one of those chosen was', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4160, 909, '1 in 600 (or 1/600).');
INSERT INTO choices (id, question_id, body) VALUES (4161, 909, '6 in 100 (or 6/100).');
INSERT INTO choices (id, question_id, body) VALUES (4162, 909, '1 in 100 (or 1/100).');
UPDATE questions SET answer = 4162 WHERE id=909;
INSERT INTO choices (id, question_id, body) VALUES (4163, 909, '1 in 6  (or 1/6).');

INSERT INTO questions (id, body, chapter) VALUES (910, 'A Sears warehouse receives a shipment of 20,000 light bulbs.  The quality control inspector tests a SRS of 100 light bulbs and finds that 14 of these are defective.  She estimates that 14% of the light bulbs in the whole shipment are defective.  In fact, the true percentage of defective light bulbs in the shipment is 18.5%.  The difference between the estimate 14% and the true value 18.5% is due to', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4164, 910, 'bias.');
INSERT INTO choices (id, question_id, body) VALUES (4165, 910, 'nonsampling error.');
INSERT INTO choices (id, question_id, body) VALUES (4166, 910, 'random sampling error.');
UPDATE questions SET answer = 4166 WHERE id=910;
INSERT INTO choices (id, question_id, body) VALUES (4167, 910, 'nonrandom sampling error.');

INSERT INTO questions (id, body, chapter) VALUES (911, 'Hearing loss is more common among premature infants than among full-term infants.  This was thought to be an effect of premature birth.  It has recently been suggested that hearing loss may be caused by the high noise level of the incubators in which the premature infants are placed.  This is an example of', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4168, 911, 'statistical significance.');
INSERT INTO choices (id, question_id, body) VALUES (4169, 911, 'confounding between two variables.');
UPDATE questions SET answer = 4169 WHERE id=911;
INSERT INTO choices (id, question_id, body) VALUES (4170, 911, 'a designed experiment.');
INSERT INTO choices (id, question_id, body) VALUES (4171, 911, 'nonrandom sampling error.');
INSERT INTO choices (id, question_id, body) VALUES (4172, 911, 'a matched pair design.');

INSERT INTO questions (id, body, chapter) VALUES (912, 'You are chatting with the principal of a local high school.  The topic of SAT scores comes up, and the principal mentions that SAT scores at the school are normally distributed.  She doesn\'t remember the mean or the standard deviation, but she does remember that the first and third quartiles are 500 and 600.  The standard deviation of SAT verbal scores is closest to', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4173, 912, '550 points');
INSERT INTO choices (id, question_id, body) VALUES (4174, 912, '00 points');
INSERT INTO choices (id, question_id, body) VALUES (4175, 912, '75 points');
UPDATE questions SET answer = 4175 WHERE id=912;
INSERT INTO choices (id, question_id, body) VALUES (4176, 912, '50 points');
INSERT INTO choices (id, question_id, body) VALUES (4177, 912, '25 points');

INSERT INTO questions (id, body, chapter) VALUES (913, 'Professor Otto Schafskopf wants to find out whether students at his university think they get enough attention from professors. Schafskopf chooses a SRS of 100 from the 30,000 undergraduates and chooses a SRS of 100 from the 6000 graduate students. The 200 students chosen are then asked to fill out a questionnaire.  The 200 students are', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4178, 913, 'a simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (4179, 913, 'a systematic random sample.');
INSERT INTO choices (id, question_id, body) VALUES (4180, 913, 'a stratified random sample.');
INSERT INTO choices (id, question_id, body) VALUES (4181, 913, 'a probability sample.');
INSERT INTO choices (id, question_id, body) VALUES (4182, 913, 'Both (C) and (D).');
UPDATE questions SET answer = 4182 WHERE id=913;

INSERT INTO questions (id, body, chapter) VALUES (914, 'One source of error in pre-election polls is that some people in the sample say they will vote but then don\'t vote. This is an example of', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4183, 914, 'nonsampling error.');
UPDATE questions SET answer = 4183 WHERE id=914;
INSERT INTO choices (id, question_id, body) VALUES (4184, 914, 'random sampling error.');
INSERT INTO choices (id, question_id, body) VALUES (4185, 914, 'nonrandom sampling error.');
INSERT INTO choices (id, question_id, body) VALUES (4186, 914, 'incorrect randomization.');
INSERT INTO choices (id, question_id, body) VALUES (4187, 914, 'the placebo effect.');

INSERT INTO questions (id, body, chapter) VALUES (915, 'Most people can roll their tongues, but many people can\'t. Whether or not a person can roll his tongue is genetically determined. Suppose we are interested in determining what fraction of students can roll their tongues. We get a simple random sample of 400 students and find that 317 can roll their tongues. The margin of error for a 95% confidence interval for the true percentage of tongue-rollers among students is closest to', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4188, 915, '0.8%');
INSERT INTO choices (id, question_id, body) VALUES (4189, 915, '2.0%');
INSERT INTO choices (id, question_id, body) VALUES (4190, 915, '3.0%');
INSERT INTO choices (id, question_id, body) VALUES (4191, 915, '4.0%');
UPDATE questions SET answer = 4191 WHERE id=915;
INSERT INTO choices (id, question_id, body) VALUES (4192, 915, '20.75%');

INSERT INTO questions (id, body, chapter) VALUES (916, 'A medical researcher collects health data on many women in each of several countries. One of the variables measured for each woman in the study is her weight in pounds. The following list gives the five-number summary for the weights of women in each of several countries. The first and last numbers for each country are the deciles (that is, the 10th and 90th percentiles).<br><br></p><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country A</strong><br></p></td><td valign="top" align="right" width="72">100<br></p></td><td valign="top" align="right" width="66">110<br></p></td><td valign="top" align="right" width="59">120<br></p></td><td valign="top" align="right" width="60">160<br></p></td><td valign="top" align="right" width="53">200<br></p></td></tr></table><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country B</strong><br></p></td><td valign="top" align="right" width="72">113<br></p></td><td valign="top" align="right" width="66">135<br></p></td><td valign="top" align="right" width="59">151<br></p></td><td valign="top" align="right" width="60">185<br></p></td><td valign="top" align="right" width="53">240<br></p></td></tr></table><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country C</strong><br></p></td><td valign="top" align="right" width="72">84<br></p></td><td valign="top" align="right" width="66">96<br></p></td><td valign="top" align="right" width="59">110<br></p></td><td valign="top" align="right" width="60">124<br></p></td><td valign="top" align="right" width="53">136<br></p></td></tr></table><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country D</strong><br></p></td><td valign="top" align="right" width="72">100<br></p></td><td valign="top" align="right" width="66">143<br></p></td><td valign="top" align="right" width="59">182<br></p></td><td valign="top" align="right" width="60">191<br></p></td><td valign="top" align="right" width="53">200<br></p></td></tr></table>In one of these countries the weights of women are approximately normally distributed. Which country is it?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4193, 916, 'Country A');
INSERT INTO choices (id, question_id, body) VALUES (4194, 916, 'Country B');
INSERT INTO choices (id, question_id, body) VALUES (4195, 916, 'Country C');
UPDATE questions SET answer = 4195 WHERE id=916;
INSERT INTO choices (id, question_id, body) VALUES (4196, 916, 'Country D');

INSERT INTO questions (id, body, chapter) VALUES (917, 'A medical researcher collects health data on many women in each of several countries. One of the variables measured for each woman in the study is her weight in pounds. The following list gives the five-number summary for the weights of women in each of several countries. The first and last numbers for each country are the deciles (that is, the 10th and 90th percentiles).<br><br></p><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country A</strong><br></p></td><td valign="top" align="right" width="72">100<br></p></td><td valign="top" align="right" width="66">110<br></p></td><td valign="top" align="right" width="59">120<br></p></td><td valign="top" align="right" width="60">160<br></p></td><td valign="top" align="right" width="53">200<br></p></td></tr></table><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country B</strong><br></p></td><td valign="top" align="right" width="72">113<br></p></td><td valign="top" align="right" width="66">135<br></p></td><td valign="top" align="right" width="59">151<br></p></td><td valign="top" align="right" width="60">185<br></p></td><td valign="top" align="right" width="53">240<br></p></td></tr></table><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country C</strong><br></p></td><td valign="top" align="right" width="72">84<br></p></td><td valign="top" align="right" width="66">96<br></p></td><td valign="top" align="right" width="59">110<br></p></td><td valign="top" align="right" width="60">124<br></p></td><td valign="top" align="right" width="53">136<br></p></td></tr></table><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country D</strong><br></p></td><td valign="top" align="right" width="72">100<br></p></td><td valign="top" align="right" width="66">143<br></p></td><td valign="top" align="right" width="59">182<br></p></td><td valign="top" align="right" width="60">191<br></p></td><td valign="top" align="right" width="53">200<br></p></td></tr></table>In one of the four countries, the mean weight of women is less than the median weight. Which country is it most likely to be?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4197, 917, 'Country A');
INSERT INTO choices (id, question_id, body) VALUES (4198, 917, 'Country B');
INSERT INTO choices (id, question_id, body) VALUES (4199, 917, 'Country C');
INSERT INTO choices (id, question_id, body) VALUES (4200, 917, 'Country D');
UPDATE questions SET answer = 4200 WHERE id=917;

INSERT INTO questions (id, body, chapter) VALUES (918, 'A medical researcher collects health data on many women in each of several countries. One of the variables measured for each woman in the study is her weight in pounds. The following list gives the five-number summary for the weights of women in each of several countries. The first and last numbers for each country are the deciles (that is, the 10th and 90th percentiles).<br><br></p><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country A</strong><br></p></td><td valign="top" align="right" width="72">100<br></p></td><td valign="top" align="right" width="66">110<br></p></td><td valign="top" align="right" width="59">120<br></p></td><td valign="top" align="right" width="60">160<br></p></td><td valign="top" align="right" width="53">200<br></p></td></tr></table><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country B</strong><br></p></td><td valign="top" align="right" width="72">113<br></p></td><td valign="top" align="right" width="66">135<br></p></td><td valign="top" align="right" width="59">151<br></p></td><td valign="top" align="right" width="60">185<br></p></td><td valign="top" align="right" width="53">240<br></p></td></tr></table><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country C</strong><br></p></td><td valign="top" align="right" width="72">84<br></p></td><td valign="top" align="right" width="66">96<br></p></td><td valign="top" align="right" width="59">110<br></p></td><td valign="top" align="right" width="60">124<br></p></td><td valign="top" align="right" width="53">136<br></p></td></tr></table><table border=0 width="384"><tr><td valign="top" align="left" width="72"><strong>Country D</strong><br></p></td><td valign="top" align="right" width="72">100<br></p></td><td valign="top" align="right" width="66">143<br></p></td><td valign="top" align="right" width="59">182<br></p></td><td valign="top" align="right" width="60">191<br></p></td><td valign="top" align="right" width="53">200<br></p></td></tr></table>About what fraction of Country A women weigh between 110 and 200 pounds?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4201, 918, '50%');
INSERT INTO choices (id, question_id, body) VALUES (4202, 918, '65%');
INSERT INTO choices (id, question_id, body) VALUES (4203, 918, '75%');
UPDATE questions SET answer = 4203 WHERE id=918;
INSERT INTO choices (id, question_id, body) VALUES (4204, 918, '85%');
INSERT INTO choices (id, question_id, body) VALUES (4205, 918, '95%');

INSERT INTO questions (id, body, chapter) VALUES (919, 'A double-blind experiment was conducted to evaluate the effectiveness of the Salk polio vaccine.  The purpose of keeping the diagnosing physicians ignorant of the treatment status of the experimental subjects was to', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4206, 919, 'eliminate grounds for malpractice suits.');
INSERT INTO choices (id, question_id, body) VALUES (4207, 919, 'ensure that subjects were randomly assigned to treatments.');
INSERT INTO choices (id, question_id, body) VALUES (4208, 919, 'eliminate a possible source of bias.');
UPDATE questions SET answer = 4208 WHERE id=919;
INSERT INTO choices (id, question_id, body) VALUES (4209, 919, 'make sure nobody is harmed.');
INSERT INTO choices (id, question_id, body) VALUES (4210, 919, 'prevent stratification of the experiment.');

INSERT INTO questions (id, body, chapter) VALUES (920, 'Cnsider the following game.  You pay me an entry fee of <em>x</em> dollars; then I roll a fair die.  If the die shows a number less than 3 I pay you nothing; if the die shows a 3 or 4, I give you back your entry fee of <em>x</em> dollars; if the the die shows a 5, I will pay you 1; and if the die shows a 6, I pay you 3.  What value of <em>x</em> makes the game fair (in terms of expected value) for both of us?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4211, 920, '$2');
INSERT INTO choices (id, question_id, body) VALUES (4212, 920, '$4');
INSERT INTO choices (id, question_id, body) VALUES (4213, 920, '$1');
UPDATE questions SET answer = 4213 WHERE id=920;
INSERT INTO choices (id, question_id, body) VALUES (4214, 920, '$0.75');
INSERT INTO choices (id, question_id, body) VALUES (4215, 920, '$0.50');

INSERT INTO questions (id, body, chapter) VALUES (921, 'A Gallup poll reports that &quot;with 95% confidence, between 58% and 64% of American adults feel that the president is doing a good job.&quot;  The phrase &quot;95% confidence&quot; means that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4216, 921, 'statements made by the method Gallup used are correct 95% of the time.');
UPDATE questions SET answer = 4216 WHERE id=921;
INSERT INTO choices (id, question_id, body) VALUES (4217, 921, 'only 95% of those sampled had an opinion.');
INSERT INTO choices (id, question_id, body) VALUES (4218, 921, 'the average level of confidence in the president among those sampled was 95%.');
INSERT INTO choices (id, question_id, body) VALUES (4219, 921, '61% of those sampled reported their level of confidence in the president to be at least 95%.');
INSERT INTO choices (id, question_id, body) VALUES (4220, 921, 'None of the above.');

INSERT INTO questions (id, body, chapter) VALUES (922, 'Light bulbs produced at the Lenin Electrical Works factory in Volgagrad are defective with probability 0.12.  To simulate the event that a single light bulb produced at the Lenin Electrical Works is defective, the CIA could use two digits from a random generator with the convention', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4221, 922, '00, 01, 02, ');
INSERT INTO choices (id, question_id, body) VALUES (4222, 922, '01, 02, 03, ');
INSERT INTO choices (id, question_id, body) VALUES (4223, 922, '00, 01, 02, ');
INSERT INTO choices (id, question_id, body) VALUES (4224, 922, 'Any of the above.');
UPDATE questions SET answer = 4224 WHERE id=922;
INSERT INTO choices (id, question_id, body) VALUES (4225, 922, 'None of the above.');

INSERT INTO questions (id, body, chapter) VALUES (923, 'Suppose that the distribution of MATH SAT scores from your state this year is normally distributed with mean 480 and standard deviation 100 for males, and mean 440 and standard deviation 120 for females.If someone who scores 780 or higher on MATH SAT can be considered a genius, the proportion of geniuses among male SAT takers is about', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4226, 923, '30%');
INSERT INTO choices (id, question_id, body) VALUES (4227, 923, '15%');
INSERT INTO choices (id, question_id, body) VALUES (4228, 923, '3%');
INSERT INTO choices (id, question_id, body) VALUES (4229, 923, '1.5%');
INSERT INTO choices (id, question_id, body) VALUES (4230, 923, '0.15%');
UPDATE questions SET answer = 4230 WHERE id=923;

INSERT INTO questions (id, body, chapter) VALUES (924, 'Suppose that the distribution of MATH SAT scores from your state this year is normally distributed with mean 480 and standard deviation 100 for males, and mean 440 and standard deviation 120 for females.The proportion of geniuses among female SAT takers is __________ the proportion of geniuses among males who took the test.', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4231, 924, 'greater than');
UPDATE questions SET answer = 4231 WHERE id=924;
INSERT INTO choices (id, question_id, body) VALUES (4232, 924, 'less than');
INSERT INTO choices (id, question_id, body) VALUES (4233, 924, 'about equal to');
INSERT INTO choices (id, question_id, body) VALUES (4234, 924, 'can\'t tell from the information given');

INSERT INTO questions (id, body, chapter) VALUES (925, 'Suppose that the distribution of MATH SAT scores from your state this year is normally distributed with mean 480 and standard deviation 100 for males, and mean 440 and standard deviation 120 for females.Mary took the MATH SAT and scored 640.  She did better than _____% of female students taking the test.', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4235, 925, '99.9');
INSERT INTO choices (id, question_id, body) VALUES (4236, 925, '99');
INSERT INTO choices (id, question_id, body) VALUES (4237, 925, '97');
INSERT INTO choices (id, question_id, body) VALUES (4238, 925, '95');
UPDATE questions SET answer = 4238 WHERE id=925;
INSERT INTO choices (id, question_id, body) VALUES (4239, 925, '90');

INSERT INTO questions (id, body, chapter) VALUES (926, 'Suppose that the distribution of MATH SAT scores from your state this year is normally distributed with mean 480 and standard deviation 100 for males, and mean 440 and standard deviation 120 for females.How well did Mary\'s score of 640 rate in terms of the scores of male students?  Mary did better than ____% of male students taking the test.', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4240, 926, '99.9');
INSERT INTO choices (id, question_id, body) VALUES (4241, 926, '99');
INSERT INTO choices (id, question_id, body) VALUES (4242, 926, '97');
INSERT INTO choices (id, question_id, body) VALUES (4243, 926, '95');
UPDATE questions SET answer = 4243 WHERE id=926;
INSERT INTO choices (id, question_id, body) VALUES (4244, 926, '90');

INSERT INTO questions (id, body, chapter) VALUES (927, 'Suppose that the distribution of MATH SAT scores from your state this year is normally distributed with mean 480 and standard deviation 100 for males, and mean 440 and standard deviation 120 for females.Dr. Stats plans to toss a fair coin 10,000 times in the hope that it will lead him to a deeper understanding of the laws of probability.  Which of the following statements is true?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4245, 927, 'It is unlikely that Dr. Stats will get more than 5000 heads.');
INSERT INTO choices (id, question_id, body) VALUES (4246, 927, 'Whenever Dr. Stats gets a string of 15 tails in a row, it becomes more likely that the next toss will be a head.');
INSERT INTO choices (id, question_id, body) VALUES (4247, 927, 'The fraction of tosses resulting in heads should be close to 1/2.');
UPDATE questions SET answer = 4247 WHERE id=927;
INSERT INTO choices (id, question_id, body) VALUES (4248, 927, 'The chance that the 100th toss will be a head depends somewhat on the results of the first 99 tosses.');
INSERT INTO choices (id, question_id, body) VALUES (4249, 927, 'All of the above statements are true.');

INSERT INTO questions (id, body, chapter) VALUES (928, 'Suppose that the distribution of MATH SAT scores from your state this year is normally distributed with mean 480 and standard deviation 100 for males, and mean 440 and standard deviation 120 for females.A certain random experiment can result in one of four different possible outcomes, which we\'ll call A, B, C, and D.  It has been determined that the probabilities of these outcomes are as follows:<br><br></p><table border=0 width="163"><tr><td valign="top" align="left" width="35">A<br></p></td><td valign="top" align="center" width="26">B<br></p></td><td valign="top" align="center" width="58">C<br></p></td><td valign="top" align="center" width="42">D<br></p></td></tr></table><table border=0 width="163"><tr><td valign="top" align="left" width="35">1<br></p></td><td valign="top" align="center" width="26">0<br></p></td><td valign="top" align="center" width="58">?<br></p></td><td valign="top" align="center" width="42">2<br></p></td></tr></table><br>What is the probability of outcome C? <br></p>', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4250, 928, '0.75');
INSERT INTO choices (id, question_id, body) VALUES (4251, 928, '0.50');
UPDATE questions SET answer = 4251 WHERE id=928;
INSERT INTO choices (id, question_id, body) VALUES (4252, 928, '0.25');
INSERT INTO choices (id, question_id, body) VALUES (4253, 928, '0');
INSERT INTO choices (id, question_id, body) VALUES (4254, 928, 'There is a mistake in the table, because a probability cannot be 0.');

INSERT INTO questions (id, body, chapter) VALUES (929, 'Suppose that the distribution of MATH SAT scores from your state this year is normally distributed with mean 480 and standard deviation 100 for males, and mean 440 and standard deviation 120 for females.In backgammon, one rolls a pair of two fair dice.  The probability of getting a sum of 7 is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4255, 929, '3/36');
INSERT INTO choices (id, question_id, body) VALUES (4256, 929, '4/36');
INSERT INTO choices (id, question_id, body) VALUES (4257, 929, '5/36');
INSERT INTO choices (id, question_id, body) VALUES (4258, 929, '6/36');
UPDATE questions SET answer = 4258 WHERE id=929;
INSERT INTO choices (id, question_id, body) VALUES (4259, 929, 'None of the above.');

INSERT INTO questions (id, body, chapter) VALUES (930, 'Suppose the CPI (Consumer Price Index) with respect to some unknown base period was 89 in 1985, 115 in 1990 and 127 in 1993.  The CPI rose steadily during this period.  The base period used', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4260, 930, 'must have been between 1985 and 1990');
UPDATE questions SET answer = 4260 WHERE id=930;
INSERT INTO choices (id, question_id, body) VALUES (4261, 930, 'must have been between 1985 and 1993');
INSERT INTO choices (id, question_id, body) VALUES (4262, 930, 'must have been between 1990 and 1993');
INSERT INTO choices (id, question_id, body) VALUES (4263, 930, 'is 1982&#8211;84 as usual');
INSERT INTO choices (id, question_id, body) VALUES (4264, 930, 'can\'t tell from the information given');

INSERT INTO questions (id, body, chapter) VALUES (931, 'A number with 60% of the data <em>above</em> it is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4265, 931, 'the 60th percentile');
INSERT INTO choices (id, question_id, body) VALUES (4266, 931, 'the 40th percentile');
UPDATE questions SET answer = 4266 WHERE id=931;
INSERT INTO choices (id, question_id, body) VALUES (4267, 931, 'always bigger than the mean');
INSERT INTO choices (id, question_id, body) VALUES (4268, 931, 'always smaller than the mean');

INSERT INTO questions (id, body, chapter) VALUES (932, 'The standard deviation of the numbers 68,979,821 and 68,979,823 is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4269, 932, 'very large.');
INSERT INTO choices (id, question_id, body) VALUES (4270, 932, 'zero.');
INSERT INTO choices (id, question_id, body) VALUES (4271, 932, 'the same as the standard deviation of 1 and 3.');
UPDATE questions SET answer = 4271 WHERE id=932;
INSERT INTO choices (id, question_id, body) VALUES (4272, 932, 'None of the above.');

INSERT INTO questions (id, body, chapter) VALUES (933, '<strong>Corrective lens wearers by sex and type</strong><br><br></p><table border=0 width="355"><tr><td valign="top" align="center" width="75"></td><td valign="top" align="center" width="160"><strong>Male</strong><br></p></td><td valign="top" align="center" width="120"><strong>Female</strong><br></p></td></tr></table><table border=0 width="341"><tr><td valign="top" align="left" width="126"><strong>Eyeglasses only (millions)</strong><br></p></td><td valign="top" align="right" width="126">43.3<br></p></td><td valign="top" align="right" width="89">54.6<br></p></td></tr></table><table border=0 width="341"><tr><td valign="top" align="left" width="126"><strong>Contact lenses (millions)</strong><br></p></td><td valign="top" align="right" width="126">2.9<br></p></td><td valign="top" align="right" width="89">7.0<br></p></td></tr></table><table border=0 width="341"><tr><td valign="top" align="left" width="126"><strong>TOTAL</strong><br></p></td><td valign="top" align="right" width="126">46.2<br></p></td><td valign="top" align="right" width="89">61.6 <br></p></td></tr></table>How many people wore corrective lenses, i.e., eyeglasses or contact lenses?', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4273, 933, '9.9 million');
INSERT INTO choices (id, question_id, body) VALUES (4274, 933, '97.9 million');
INSERT INTO choices (id, question_id, body) VALUES (4275, 933, '107.8 million');
UPDATE questions SET answer = 4275 WHERE id=933;
INSERT INTO choices (id, question_id, body) VALUES (4276, 933, 'Impossible to say from the information given.');

INSERT INTO questions (id, body, chapter) VALUES (934, '<strong>Corrective lens wearers by sex and type</strong><br><br></p><table border=0 width="355"><tr><td valign="top" align="center" width="75"></td><td valign="top" align="center" width="160"><strong>Male</strong><br></p></td><td valign="top" align="center" width="120"><strong>Female</strong><br></p></td></tr></table><table border=0 width="341"><tr><td valign="top" align="left" width="126"><strong>Eyeglasses only (millions)</strong><br></p></td><td valign="top" align="right" width="126">43.3<br></p></td><td valign="top" align="right" width="89">54.6<br></p></td></tr></table><table border=0 width="341"><tr><td valign="top" align="left" width="126"><strong>Contact lenses (millions)</strong><br></p></td><td valign="top" align="right" width="126">2.9<br></p></td><td valign="top" align="right" width="89">7.0<br></p></td></tr></table><table border=0 width="341"><tr><td valign="top" align="left" width="126"><strong>TOTAL</strong><br></p></td><td valign="top" align="right" width="126">46.2<br></p></td><td valign="top" align="right" width="89">61.6 <br></p></td></tr></table>From the table, 11.4% of female corrective lens wearers wear contact lenses.  The corresponding percentage for males is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4277, 934, '2.9%');
INSERT INTO choices (id, question_id, body) VALUES (4278, 934, '6.3%');
UPDATE questions SET answer = 4278 WHERE id=934;
INSERT INTO choices (id, question_id, body) VALUES (4279, 934, '6.7%');
INSERT INTO choices (id, question_id, body) VALUES (4280, 934, 'None of the above.');

INSERT INTO questions (id, body, chapter) VALUES (935, 'If the mean of a list of numbers is 12.4, and the standard deviation is zero, you know that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4281, 935, 'you have made an arithmetic mistake.');
INSERT INTO choices (id, question_id, body) VALUES (4282, 935, 'the mean is zero.');
INSERT INTO choices (id, question_id, body) VALUES (4283, 935, 'all the numbers in the list are the same.');
UPDATE questions SET answer = 4283 WHERE id=935;
INSERT INTO choices (id, question_id, body) VALUES (4284, 935, 'Both (b) and (c).');

INSERT INTO questions (id, body, chapter) VALUES (936, 'In March 2000, the <em>New York Times</em> conducted &quot;a telephone poll of a random sample of 1003 adults in all 50 states, giving all phone numbers, listed and unlisted, a proportionate chance of being included.&quot; We can treat this as a simple random sample.  One question asked was, &quot;Do you think what is shown on television today is less moral than American society, more moral than American society, or accurately reflects morality in American society?&quot; Of the answers, 46% said &quot;Less,&quot; 37% said &quot;Accurate,&quot; 9% said &quot;More,&quot; and the others had no opinion.The population for the poll is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4285, 936, 'the 1003 people interviewed.');
INSERT INTO choices (id, question_id, body) VALUES (4286, 936, 'a simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (4287, 936, 'the 46% who think TV is less moral than society.');
INSERT INTO choices (id, question_id, body) VALUES (4288, 936, 'all adults living in the United States.');
UPDATE questions SET answer = 4288 WHERE id=936;

INSERT INTO questions (id, body, chapter) VALUES (937, 'In March 2000, the <em>New York Times</em> conducted &quot;a telephone poll of a random sample of 1003 adults in all 50 states, giving all phone numbers, listed and unlisted, a proportionate chance of being included.&quot; We can treat this as a simple random sample.  One question asked was, &quot;Do you think what is shown on television today is less moral than American society, more moral than American society, or accurately reflects morality in American society?&quot; Of the answers, 46% said &quot;Less,&quot; 37% said &quot;Accurate,&quot; 9% said &quot;More,&quot; and the others had no opinion.The number 46% is', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4289, 937, 'a parameter because it describes the population.');
INSERT INTO choices (id, question_id, body) VALUES (4290, 937, 'a parameter because it describes the sample.');
INSERT INTO choices (id, question_id, body) VALUES (4291, 937, 'a statistic because it describes the population.');
INSERT INTO choices (id, question_id, body) VALUES (4292, 937, 'a statistic because it describes the sample.');
UPDATE questions SET answer = 4292 WHERE id=937;

INSERT INTO questions (id, body, chapter) VALUES (938, 'In March 2000, the <em>New York Times</em> conducted &quot;a telephone poll of a random sample of 1003 adults in all 50 states, giving all phone numbers, listed and unlisted, a proportionate chance of being included.&quot; We can treat this as a simple random sample.  One question asked was, &quot;Do you think what is shown on television today is less moral than American society, more moral than American society, or accurately reflects morality in American society?&quot; Of the answers, 46% said &quot;Less,&quot; 37% said &quot;Accurate,&quot; 9% said &quot;More,&quot; and the others had no opinion.If the poll were repeated at the same time using the same sampling method, the percent who think TV is less moral than society', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4293, 938, 'would be 46%, because the same method will give the same result.');
INSERT INTO choices (id, question_id, body) VALUES (4294, 938, 'would be less than 46% because of bias.');
INSERT INTO choices (id, question_id, body) VALUES (4295, 938, 'could be either greater or less than 46%, because of chance variation in random sampling.');
UPDATE questions SET answer = 4295 WHERE id=938;
INSERT INTO choices (id, question_id, body) VALUES (4296, 938, 'could be either greater or less than 46%, because of bias.');

INSERT INTO questions (id, body, chapter) VALUES (939, 'In March 2000, the <em>New York Times</em> conducted &quot;a telephone poll of a random sample of 1003 adults in all 50 states, giving all phone numbers, listed and unlisted, a proportionate chance of being included.&quot; We can treat this as a simple random sample.  One question asked was, &quot;Do you think what is shown on television today is less moral than American society, more moral than American society, or accurately reflects morality in American society?&quot; Of the answers, 46% said &quot;Less,&quot; 37% said &quot;Accurate,&quot; 9% said &quot;More,&quot; and the others had no opinion.A 95% confidence interval for the percent of all adults who think TV is less moral than society is about', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4297, 939, '46% ');
INSERT INTO choices (id, question_id, body) VALUES (4298, 939, '46% ');
UPDATE questions SET answer = 4298 WHERE id=939;
INSERT INTO choices (id, question_id, body) VALUES (4299, 939, '46% ');
INSERT INTO choices (id, question_id, body) VALUES (4300, 939, 'None of these, because we only have information about a sample.');

INSERT INTO questions (id, body, chapter) VALUES (940, 'In March 2000, the <em>New York Times</em> conducted &quot;a telephone poll of a random sample of 1003 adults in all 50 states, giving all phone numbers, listed and unlisted, a proportionate chance of being included.&quot; We can treat this as a simple random sample.  One question asked was, &quot;Do you think what is shown on television today is less moral than American society, more moral than American society, or accurately reflects morality in American society?&quot; Of the answers, 46% said &quot;Less,&quot; 37% said &quot;Accurate,&quot; 9% said &quot;More,&quot; and the others had no opinion.We might use these data to answer the question, &quot;Do more than half of all adults think TV is less moral than society?&quot;  To do this, we would take as our null hypothesis', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4301, 940, '');
INSERT INTO choices (id, question_id, body) VALUES (4302, 940, '');
UPDATE questions SET answer = 4302 WHERE id=940;
INSERT INTO choices (id, question_id, body) VALUES (4303, 940, '');
INSERT INTO choices (id, question_id, body) VALUES (4304, 940, '');

INSERT INTO questions (id, body, chapter) VALUES (941, 'In March 2000, the <em>New York Times</em> conducted &quot;a telephone poll of a random sample of 1003 adults in all 50 states, giving all phone numbers, listed and unlisted, a proportionate chance of being included.&quot; We can treat this as a simple random sample.  One question asked was, &quot;Do you think what is shown on television today is less moral than American society, more moral than American society, or accurately reflects morality in American society?&quot; Of the answers, 46% said &quot;Less,&quot; 37% said &quot;Accurate,&quot; 9% said &quot;More,&quot; and the others had no opinion.The <em>P-</em>value for the test in the previous question is about 0.99.  This means that', 17224);
INSERT INTO choices (id, question_id, body) VALUES (4305, 941, 'the poll gives very strong evidence that more than half of adults feel TV is less moral than society.');
INSERT INTO choices (id, question_id, body) VALUES (4306, 941, 'the poll gives weak evidence that more than half of adults feel TV is less moral than society.');
INSERT INTO choices (id, question_id, body) VALUES (4307, 941, 'the poll sheds no light on whether more than half of adults feel TV is less moral than society.');
INSERT INTO choices (id, question_id, body) VALUES (4308, 941, 'the poll gives no evidence that more than half of adults feel TV is less moral than society.');
UPDATE questions SET answer = 4308 WHERE id=941;
