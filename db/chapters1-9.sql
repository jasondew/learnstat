TRUNCATE questions;
TRUNCATE choices;

INSERT INTO questions (id, body, chapter) VALUES (1, 'Does using a cell phone while driving make an accident more likely?  Researchers compared telephone company and police records to find 699 people who had cell phones and were also involved in an auto accident.  Using phone billing records, they compared cell phone use in the period of the accident with cell phone use the same period on a previous day.  Result: the risk of an accident was 4 times higher when using a cell phone.  This study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1, 1, 'a randomized comparative experiment.');
INSERT INTO choices (id, question_id, body) VALUES (2, 1, 'an experiment, but without randomization.');
INSERT INTO choices (id, question_id, body) VALUES (3, 1, 'a simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (4, 1, 'an observational study, but not a simple random sample.');
UPDATE questions SET answer = 4 WHERE id=1;

INSERT INTO questions (id, body, chapter) VALUES (2, 'Does using a cell phone while driving make an accident more likely?  Researchers compared telephone company and police records to find 699 people who had cell phones and were also involved in an auto accident.  Using phone billing records, they compared cell phone use in the period of the accident with cell phone use the same period on a previous day.  Result: the risk of an accident was 4 times higher when using a cell phone.The explanatory variable in this study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (5, 2, 'whether or not the subject had an auto accident.');
INSERT INTO choices (id, question_id, body) VALUES (6, 2, 'whether or not the subject was using a cell phone.');
UPDATE questions SET answer = 6 WHERE id=2;
INSERT INTO choices (id, question_id, body) VALUES (7, 2, 'the risk of an accident.');
INSERT INTO choices (id, question_id, body) VALUES (8, 2, 'whether or not the subject owned a cell phone.');

INSERT INTO questions (id, body, chapter) VALUES (3, 'Does using a cell phone while driving make an accident more likely?  Researchers compared telephone company and police records to find 699 people who had cell phones and were also involved in an auto accident.  Using phone billing records, they compared cell phone use in the period of the accident with cell phone use the same period on a previous day.  Result: the risk of an accident was 4 times higher when using a cell phone.The researchers also recorded the manufacturer of each subject\'s cell phone (Motorola, Nokia, and so on).  This variable is', 129);
INSERT INTO choices (id, question_id, body) VALUES (9, 3, 'categorical.');
UPDATE questions SET answer = 9 WHERE id=3;
INSERT INTO choices (id, question_id, body) VALUES (10, 3, 'quantitative.');
INSERT INTO choices (id, question_id, body) VALUES (11, 3, 'response.');
INSERT INTO choices (id, question_id, body) VALUES (12, 3, 'not valid.');

INSERT INTO questions (id, body, chapter) VALUES (4, 'Does using a cell phone while driving make an accident more likely?  Researchers compared telephone company and police records to find 699 people who had cell phones and were also involved in an auto accident.  Using phone billing records, they compared cell phone use in the period of the accident with cell phone use the same period on a previous day.  Result: the risk of an accident was 4 times higher when using a cell phone.An example of a lurking variable that might affect the results of this study is:', 129);
INSERT INTO choices (id, question_id, body) VALUES (13, 4, 'whether or not the subject had an auto accident.');
INSERT INTO choices (id, question_id, body) VALUES (14, 4, 'whether or not the subject was using a cell phone.');
INSERT INTO choices (id, question_id, body) VALUES (15, 4, 'whether or not the subject was talking to a passenger in the  car.');
UPDATE questions SET answer = 15 WHERE id=4;
INSERT INTO choices (id, question_id, body) VALUES (16, 4, 'whether or not the subject owned a cell phone.');

INSERT INTO questions (id, body, chapter) VALUES (5, 'A researcher studied whether friendship affects the prices people set for selling things.  She had 80 students all imagine selling the same six items.  Half the students, assigned at random, imagined selling the items to a stranger.  The other half imagined selling the items to a friend.  Then the students were asked to set the price of the items.  On the average, those selling to friends set lower prices than those selling to strangers.This study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (17, 5, 'a randomized comparative experiment.');
UPDATE questions SET answer = 17 WHERE id=5;
INSERT INTO choices (id, question_id, body) VALUES (18, 5, 'an experiment, but without randomization.');
INSERT INTO choices (id, question_id, body) VALUES (19, 5, 'a simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (20, 5, 'an observational study, but not an SRS.');

INSERT INTO questions (id, body, chapter) VALUES (6, 'A researcher studied whether friendship affects the prices people set for selling things.  She had 80 students all imagine selling the same six items.  Half the students, assigned at random, imagined selling the items to a stranger.  The other half imagined selling the items to a friend.  Then the students were asked to set the price of the items.  On the average, those selling to friends set lower prices than those selling to strangers.This study applies the principle of <em>replication</em> in', 129);
INSERT INTO choices (id, question_id, body) VALUES (21, 6, 'assigning subjects <em>at random</em>.');
INSERT INTO choices (id, question_id, body) VALUES (22, 6, 'having the students imagine selling <em>six</em> items.');
INSERT INTO choices (id, question_id, body) VALUES (23, 6, 'using <em>80 students</em> rather than just a handful.');
UPDATE questions SET answer = 23 WHERE id=6;
INSERT INTO choices (id, question_id, body) VALUES (24, 6, '<em>comparing</em> two treatments (selling to friends or strangers).');

INSERT INTO questions (id, body, chapter) VALUES (7, 'A researcher studied whether friendship affects the prices people set for selling things.  She had 80 students all imagine selling the same six items.  Half the students, assigned at random, imagined selling the items to a stranger.  The other half imagined selling the items to a friend.  Then the students were asked to set the price of the items.  On the average, those selling to friends set lower prices than those selling to strangers.To randomly assign 40 of the 80 students to the &quot;friends&quot; group,  we must first label them, then use the table of random digits.  Which of these are correct ways to label?', 129);
INSERT INTO choices (id, question_id, body) VALUES (25, 7, 'Label the 80 students 01 to 80.');
INSERT INTO choices (id, question_id, body) VALUES (26, 7, 'Label the 80 students 00 to 79 .');
INSERT INTO choices (id, question_id, body) VALUES (27, 7, 'Label the 40 students in the &quot;friends&quot; group 01 to 40.');
INSERT INTO choices (id, question_id, body) VALUES (28, 7, 'All three are correct.');
INSERT INTO choices (id, question_id, body) VALUES (29, 7, '(A) and (B) are correct but (C) is not.');
UPDATE questions SET answer = 29 WHERE id=7;

INSERT INTO questions (id, body, chapter) VALUES (8, 'Scotland is considering independence from England.  An opinion poll showed that 51% of Scots favor &quot;independence.&quot;  Another poll taken at the same time showed that only 34% favored being &quot;separate&quot; from England.  The reason these results differ by so much is that', 129);
INSERT INTO choices (id, question_id, body) VALUES (30, 8, 'samples will usually differ just by chance due to random sampling.');
INSERT INTO choices (id, question_id, body) VALUES (31, 8, 'the wording of questions has a big effect on poll results.');
UPDATE questions SET answer = 31 WHERE id=8;
INSERT INTO choices (id, question_id, body) VALUES (32, 8, 'more follow-up efforts reduced the nonresponse rate of the second poll.');
INSERT INTO choices (id, question_id, body) VALUES (33, 8, 'the sample sizes are different, so the margins of error are different.');

INSERT INTO questions (id, body, chapter) VALUES (9, 'The basic ethical requirements for any study of human subjects are', 129);
INSERT INTO choices (id, question_id, body) VALUES (34, 9, 'comparison, randomization, and replication.');
INSERT INTO choices (id, question_id, body) VALUES (35, 9, 'approval by a review board, informed consent, confidentiality of data.');
UPDATE questions SET answer = 35 WHERE id=9;
INSERT INTO choices (id, question_id, body) VALUES (36, 9, 'subjects are anonymous, subjects are randomly chosen, subjects cannot be harmed.');
INSERT INTO choices (id, question_id, body) VALUES (37, 9, 'data production, data analysis, inference.');

INSERT INTO questions (id, body, chapter) VALUES (10, '<strong>BLANK A</strong> try to gather data without influencing the responses.  <strong>BLANK B</strong>, on the other hand, impose some <strong>BLANK C</strong> in order to observe the response.<strong> BLANK A</strong> should read', 129);
INSERT INTO choices (id, question_id, body) VALUES (38, 10, 'matched pairs designs.');
INSERT INTO choices (id, question_id, body) VALUES (39, 10, 'observational studies.');
UPDATE questions SET answer = 39 WHERE id=10;
INSERT INTO choices (id, question_id, body) VALUES (40, 10, 'explanatory variables.');
INSERT INTO choices (id, question_id, body) VALUES (41, 10, 'experiments.');

INSERT INTO questions (id, body, chapter) VALUES (11, '<strong>BLANK A</strong> try to gather data without influencing the responses.  <strong>BLANK B</strong>, on the other hand, impose some <strong>BLANK C</strong> in order to observe the response.<strong>BLANK B</strong> should read', 129);
INSERT INTO choices (id, question_id, body) VALUES (42, 11, 'explanatory variables.');
INSERT INTO choices (id, question_id, body) VALUES (43, 11, 'observational studies.');
INSERT INTO choices (id, question_id, body) VALUES (44, 11, 'sample surveys.');
INSERT INTO choices (id, question_id, body) VALUES (45, 11, 'experiments.');
UPDATE questions SET answer = 45 WHERE id=11;

INSERT INTO questions (id, body, chapter) VALUES (12, '<strong>BLANK A</strong> try to gather data without influencing the responses.  <strong>BLANK B</strong>, on the other hand, impose some <strong>BLANK C</strong> in order to observe the response.<strong>BLANK C</strong> should read', 129);
INSERT INTO choices (id, question_id, body) VALUES (46, 12, 'randomization.');
INSERT INTO choices (id, question_id, body) VALUES (47, 12, 'confounding.');
INSERT INTO choices (id, question_id, body) VALUES (48, 12, 'response variable.');
INSERT INTO choices (id, question_id, body) VALUES (49, 12, 'treatment.');
UPDATE questions SET answer = 49 WHERE id=12;

INSERT INTO questions (id, body, chapter) VALUES (13, '<strong>BLANK A</strong> in a sampling method means that the sample results will systematically misrepresent the population in the same way when we take repeated samples.  For example, if we contact only people listed in telephone directories, the sample suffers from <strong>BLANK B</strong>.  If some people chosen for the sample refuse to participate, the sample suffers from <strong>BLANK C</strong>.  Both <strong>BLANK B</strong> and<strong> BLANK C</strong> are common sources of <strong>BLANK A</strong>.<strong>BLANK A</strong> should read', 129);
INSERT INTO choices (id, question_id, body) VALUES (50, 13, 'bias');
UPDATE questions SET answer = 50 WHERE id=13;
INSERT INTO choices (id, question_id, body) VALUES (51, 13, 'random sampling error');
INSERT INTO choices (id, question_id, body) VALUES (52, 13, 'high variability');
INSERT INTO choices (id, question_id, body) VALUES (53, 13, 'imprecise measurement');

INSERT INTO questions (id, body, chapter) VALUES (14, '<strong>BLANK A</strong> in a sampling method means that the sample results will systematically misrepresent the population in the same way when we take repeated samples.  For example, if we contact only people listed in telephone directories, the sample suffers from <strong>BLANK B</strong>.  If some people chosen for the sample refuse to participate, the sample suffers from <strong>BLANK C</strong>.  Both <strong>BLANK B</strong> and<strong> BLANK C</strong> are common sources of <strong>BLANK A</strong>.<strong>BLANK B</strong> should read', 129);
INSERT INTO choices (id, question_id, body) VALUES (54, 14, 'nonresponse');
INSERT INTO choices (id, question_id, body) VALUES (55, 14, 'voluntary response');
INSERT INTO choices (id, question_id, body) VALUES (56, 14, 'undercoverage');
UPDATE questions SET answer = 56 WHERE id=14;
INSERT INTO choices (id, question_id, body) VALUES (57, 14, 'double-blindness');

INSERT INTO questions (id, body, chapter) VALUES (15, '<strong>BLANK A</strong> in a sampling method means that the sample results will systematically misrepresent the population in the same way when we take repeated samples.  For example, if we contact only people listed in telephone directories, the sample suffers from <strong>BLANK B</strong>.  If some people chosen for the sample refuse to participate, the sample suffers from <strong>BLANK C</strong>.  Both <strong>BLANK B</strong> and<strong> BLANK C</strong> are common sources of <strong>BLANK A</strong>.<strong>BLANK C</strong> should read', 129);
INSERT INTO choices (id, question_id, body) VALUES (58, 15, 'nonresponse');
UPDATE questions SET answer = 58 WHERE id=15;
INSERT INTO choices (id, question_id, body) VALUES (59, 15, 'voluntary response');
INSERT INTO choices (id, question_id, body) VALUES (60, 15, 'undercoverage');
INSERT INTO choices (id, question_id, body) VALUES (61, 15, 'double-blindness');

INSERT INTO questions (id, body, chapter) VALUES (16, 'The Census Bureau proposed to use statistical sampling to supplement the door to door count for the 2000 Census.  The Supreme Court ruled that', 129);
INSERT INTO choices (id, question_id, body) VALUES (62, 16, 'sampling would reduce bias, so it can be used in the Census');
INSERT INTO choices (id, question_id, body) VALUES (63, 16, 'sampling is against the law, so it cannot be used at all in the Census');
INSERT INTO choices (id, question_id, body) VALUES (64, 16, 'sampling is not an accepted scientific method, so it cannot be used at all in the Census');
INSERT INTO choices (id, question_id, body) VALUES (65, 16, 'sampling cannot be used to say how many seats in Congress each state has, but can be used for all other Census purposes');
UPDATE questions SET answer = 65 WHERE id=16;

INSERT INTO questions (id, body, chapter) VALUES (17, 'The student newspaper runs a weekly question that readers can answer online or by campus mail.  One question was &quot;Do you think the college is doing enough to provide student parking?&quot; Of the 136 people who responded, 79% said &quot;No.&quot;The number 79% is a', 129);
INSERT INTO choices (id, question_id, body) VALUES (66, 17, 'margin of error');
INSERT INTO choices (id, question_id, body) VALUES (67, 17, 'parameter');
INSERT INTO choices (id, question_id, body) VALUES (68, 17, 'reliability');
INSERT INTO choices (id, question_id, body) VALUES (69, 17, 'statistic');
UPDATE questions SET answer = 69 WHERE id=17;

INSERT INTO questions (id, body, chapter) VALUES (18, 'The student newspaper runs a weekly question that readers can answer online or by campus mail.  One question was &quot;Do you think the college is doing enough to provide student parking?&quot; Of the 136 people who responded, 79% said &quot;No.&quot;If we applied the quick method to the poll we would obtain this 95% confidence interval:', 129);
INSERT INTO choices (id, question_id, body) VALUES (70, 18, '79% +/- 11.7%');
INSERT INTO choices (id, question_id, body) VALUES (71, 18, '79% +/- 7.3%');
INSERT INTO choices (id, question_id, body) VALUES (72, 18, '136 +/- 79');
INSERT INTO choices (id, question_id, body) VALUES (73, 18, '79% +/- 8.6%');
UPDATE questions SET answer = 73 WHERE id=18;

INSERT INTO questions (id, body, chapter) VALUES (19, 'The student newspaper runs a weekly question that readers can answer online or by campus mail.  One question was &quot;Do you think the college is doing enough to provide student parking?&quot; Of the 136 people who responded, 79% said &quot;No.&quot;The newspaper poll does not give a trustworthy estimate of student opinion because of', 129);
INSERT INTO choices (id, question_id, body) VALUES (74, 19, 'bias due to nonresponse');
INSERT INTO choices (id, question_id, body) VALUES (75, 19, 'bias due to undercoverage');
INSERT INTO choices (id, question_id, body) VALUES (76, 19, 'bias due to the suggestive wording of the question');
INSERT INTO choices (id, question_id, body) VALUES (77, 19, 'bias due to relying on voluntary response');
UPDATE questions SET answer = 77 WHERE id=19;

INSERT INTO questions (id, body, chapter) VALUES (20, 'The student newspaper runs a weekly question that readers can answer online or by campus mail.  One question was &quot;Do you think the college is doing enough to provide student parking?&quot; Of the 136 people who responded, 79% said &quot;No.&quot;When we say that the newspaper poll is biased, we mean that', 129);
INSERT INTO choices (id, question_id, body) VALUES (78, 20, 'repeated polls would miss the truth about the population in the same direction');
UPDATE questions SET answer = 78 WHERE id=20;
INSERT INTO choices (id, question_id, body) VALUES (79, 20, 'repeated polls would give results that are very different from each other');
INSERT INTO choices (id, question_id, body) VALUES (80, 20, 'the question asked shows gender or racial bias');
INSERT INTO choices (id, question_id, body) VALUES (81, 20, 'faculty may have a different opinion from students');

INSERT INTO questions (id, body, chapter) VALUES (21, 'All statistical studies should follow the principle of confidentiality.  This means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (82, 21, 'information about individual subjects is never made public');
UPDATE questions SET answer = 82 WHERE id=21;
INSERT INTO choices (id, question_id, body) VALUES (83, 21, 'the identities of the subjects are not known even to the researchers');
INSERT INTO choices (id, question_id, body) VALUES (84, 21, 'information about who paid for the study is never made public');
INSERT INTO choices (id, question_id, body) VALUES (85, 21, 'the results and conclusions of the study are never made public');

INSERT INTO questions (id, body, chapter) VALUES (22, 'Does coaching raise SAT scores?  Because many students score higher on a second try even without coaching, a study looked at an SRS of 4200 students who took the SAT twice.  Of these, 500 had taken coaching courses between their two attempts at the SAT.  The study compared the average increase in scores (out of the total possible score of 1600) for students who were coached with the average increase for students who were not coached.This study compares two groups, but it is not an experiment because', 129);
INSERT INTO choices (id, question_id, body) VALUES (86, 22, 'there is no explanatory variable');
INSERT INTO choices (id, question_id, body) VALUES (87, 22, 'there is no response variable');
INSERT INTO choices (id, question_id, body) VALUES (88, 22, 'random selection was not used to produce the data');
INSERT INTO choices (id, question_id, body) VALUES (89, 22, 'each student chose whether or not to take a coaching course');
UPDATE questions SET answer = 89 WHERE id=22;

INSERT INTO questions (id, body, chapter) VALUES (23, 'Does coaching raise SAT scores?  Because many students score higher on a second try even without coaching, a study looked at an SRS of 4200 students who took the SAT twice.  Of these, 500 had taken coaching courses between their two attempts at the SAT.  The study compared the average increase in scores (out of the total possible score of 1600) for students who were coached with the average increase for students who were not coached.The report of the SAT study says, &quot;With 95% confidence, we can say that students who are coached raise their average SAT scores by between 19 and 38 points more than students who are not coached.&quot; By &quot;95% confidence&quot; we mean', 129);
INSERT INTO choices (id, question_id, body) VALUES (90, 23, '95% of all students will increase their score by between 19 and 38 points if they are coached');
INSERT INTO choices (id, question_id, body) VALUES (91, 23, 'we are certain that the average increase is between 19 and 38 points');
INSERT INTO choices (id, question_id, body) VALUES (92, 23, 'we got the 19 to 38 point range by using a method that would give a correct answer in 95% of all samples');
UPDATE questions SET answer = 92 WHERE id=23;
INSERT INTO choices (id, question_id, body) VALUES (93, 23, '95% of all adults would believe the statement');

INSERT INTO questions (id, body, chapter) VALUES (24, 'Does coaching raise SAT scores?  Because many students score higher on a second try even without coaching, a study looked at an SRS of 4200 students who took the SAT twice.  Of these, 500 had taken coaching courses between their two attempts at the SAT.  The study compared the average increase in scores (out of the total possible score of 1600) for students who were coached with the average increase for students who were not coached.Because students\' SAT scores vary a lot when they retake the test, the difference between the average increases for coached and uncoached students was not statistically significant.  This means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (94, 24, 'we cannot make a 95% confidence statement');
INSERT INTO choices (id, question_id, body) VALUES (95, 24, 'the increase makes no difference in getting into college');
INSERT INTO choices (id, question_id, body) VALUES (96, 24, 'a difference this big could easily occur just by chance even if coaching really has no effect');
UPDATE questions SET answer = 96 WHERE id=24;
INSERT INTO choices (id, question_id, body) VALUES (97, 24, 'the study was badly designed');

INSERT INTO questions (id, body, chapter) VALUES (25, 'Does coaching raise SAT scores?  Because many students score higher on a second try even without coaching, a study looked at an SRS of 4200 students who took the SAT twice.  Of these, 500 had taken coaching courses between their two attempts at the SAT.  The study compared the average increase in scores (out of the total possible score of 1600) for students who were coached with the average increase for students who were not coached.The SAT study doesn\'t show that coaching <em>causes</em> a greater increase in SAT scores.  One plausible reason is that', 129);
INSERT INTO choices (id, question_id, body) VALUES (98, 25, 'more students were not coached than were coached');
INSERT INTO choices (id, question_id, body) VALUES (99, 25, '4200 students is too few to draw a conclusion');
INSERT INTO choices (id, question_id, body) VALUES (100, 25, 'students who chose coaching were different (in particular, they were richer) than students who had no coaching');
UPDATE questions SET answer = 100 WHERE id=25;
INSERT INTO choices (id, question_id, body) VALUES (101, 25, 'there was no random selection');

INSERT INTO questions (id, body, chapter) VALUES (26, 'Does coaching raise SAT scores?  Because many students score higher on a second try even without coaching, a study looked at an SRS of 4200 students who took the SAT twice.  Of these, 500 had taken coaching courses between their two attempts at the SAT.  The study compared the average increase in scores (out of the total possible score of 1600) for students who were coached with the average increase for students who were not coached.We are 95% confident that the difference between average scores for coached and uncoached students is between 19 and 38 points.  If we want to be 99% confident, the range of points would be', 129);
INSERT INTO choices (id, question_id, body) VALUES (102, 26, 'wider, because higher confidence requires a larger margin of error');
UPDATE questions SET answer = 102 WHERE id=26;
INSERT INTO choices (id, question_id, body) VALUES (103, 26, 'narrower, because higher confidence requires a smaller margin of error');
INSERT INTO choices (id, question_id, body) VALUES (104, 26, 'wider, because higher confidence requires a smaller margin of error');
INSERT INTO choices (id, question_id, body) VALUES (105, 26, 'narrower, because higher confidence requires a larger margin of error');

INSERT INTO questions (id, body, chapter) VALUES (27, 'A study of a drug to prevent hair loss showed that 86% of the men who took it maintained or increased the amount of hair on their heads.  But so did 42% of the men in the same study who took a placebo instead of the drug.  This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (106, 27, 'a sampling error: the study should not have included men whose hair grew without the drug');
INSERT INTO choices (id, question_id, body) VALUES (107, 27, 'the placebo effect: a treatment often works if you believe that it will work');
UPDATE questions SET answer = 107 WHERE id=27;
INSERT INTO choices (id, question_id, body) VALUES (108, 27, 'an error in calculating percentages');
INSERT INTO choices (id, question_id, body) VALUES (109, 27, 'failure to use the double-blind idea');

INSERT INTO questions (id, body, chapter) VALUES (28, 'The Dow Jones Industrial Average (DJIA) is the most common measure of stock market prices.  Suppose that the DJIA starts at 9000 points and drops 300 points.  This is a decrease of', 129);
INSERT INTO choices (id, question_id, body) VALUES (110, 28, '0.033%');
INSERT INTO choices (id, question_id, body) VALUES (111, 28, '3.3%');
UPDATE questions SET answer = 111 WHERE id=28;
INSERT INTO choices (id, question_id, body) VALUES (112, 28, '33.3%');
INSERT INTO choices (id, question_id, body) VALUES (113, 28, '333%');

INSERT INTO questions (id, body, chapter) VALUES (29, 'A 300 point drop in the DJIA was a big drop when the DJIA was at 2000 and a much smaller drop when the DJIA reached 9000.  The percent by which stock prices fall is a more meaningful measure. The lesson here is that', 129);
INSERT INTO choices (id, question_id, body) VALUES (114, 29, 'rates are often more meaningful than counts');
UPDATE questions SET answer = 114 WHERE id=29;
INSERT INTO choices (id, question_id, body) VALUES (115, 29, 'it is easy to make a mistake calculating a percent');
INSERT INTO choices (id, question_id, body) VALUES (116, 29, 'the DJIA is a categorical variable');
INSERT INTO choices (id, question_id, body) VALUES (117, 29, 'confidentiality has been violated');

INSERT INTO questions (id, body, chapter) VALUES (30, 'The telephone company says that 62% of all residential phone numbers in Los Angeles are unlisted.  A telephone survey contacts a random sample of 1000 Los Angeles telephone numbers, of which 58% are unlisted.  In this setting,', 129);
INSERT INTO choices (id, question_id, body) VALUES (118, 30, '62% is a parameter and 58% is a statistic');
UPDATE questions SET answer = 118 WHERE id=30;
INSERT INTO choices (id, question_id, body) VALUES (119, 30, '58% is a parameter and 62% is a statistic');
INSERT INTO choices (id, question_id, body) VALUES (120, 30, '62% and 58% are both parameters');
INSERT INTO choices (id, question_id, body) VALUES (121, 30, '58% and 62% are both statistics');

INSERT INTO questions (id, body, chapter) VALUES (31, 'The monthly government sample survey that produces the unemployment rate and other data about employment and earnings is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (122, 31, 'the National Household Survey');
INSERT INTO choices (id, question_id, body) VALUES (123, 31, 'the General Social Survey');
INSERT INTO choices (id, question_id, body) VALUES (124, 31, 'the Survey of Employment');
INSERT INTO choices (id, question_id, body) VALUES (125, 31, 'the Current Population Survey');
UPDATE questions SET answer = 125 WHERE id=31;

INSERT INTO questions (id, body, chapter) VALUES (32, 'On January 6, just after the National Basketball Association labor dispute was settled, the Gallup Poll asked a random sample of 671 adults &quot;How much have you missed watching NBA basketball since the dispute started?&quot; 60% answered &quot;Not at all.&quot;  Gallup says that the margin of error for this result is plus or minus 4 percentage points.  This means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (126, 32, 'we can be 95% confident that between 56% and 64% of all adults did not miss watching NBA games');
UPDATE questions SET answer = 126 WHERE id=32;
INSERT INTO choices (id, question_id, body) VALUES (127, 32, 'we can be certain that between 56% and 64% of all adults did not miss watching NBA games');
INSERT INTO choices (id, question_id, body) VALUES (128, 32, 'in many samples, all the results would fall between 56% and 64%');
INSERT INTO choices (id, question_id, body) VALUES (129, 32, 'we are 95% confident that if we take one more sample the result will fall between 56% and 64%');

INSERT INTO questions (id, body, chapter) VALUES (33, 'Gallup conducts its polls by telephone, so people without phones are always excluded from the Gallup sample.  Any errors in the final result due to excluding people without phones', 129);
INSERT INTO choices (id, question_id, body) VALUES (130, 33, 'are included in Gallup\'s announced margin of error');
INSERT INTO choices (id, question_id, body) VALUES (131, 33, 'are in addition to the announced margin of error');
UPDATE questions SET answer = 131 WHERE id=33;
INSERT INTO choices (id, question_id, body) VALUES (132, 33, 'can be ignored, because these people are not part of the population');
INSERT INTO choices (id, question_id, body) VALUES (133, 33, 'can be ignored, because this is a nonsampling error');

INSERT INTO questions (id, body, chapter) VALUES (34, 'Here is a shortened version of the summary of a paper in the <em>New England Journal of Medicine</em> that compares the fate of heart attack victims in three types of hospitals.  (&quot;Acute myocardial infarction&quot; is medical jargon for a heart attack.)  The next four questions concern this summary.<br /><br /><strong>Background</strong> &quot;America\'s Best Hospitals,&quot; published annually by <em>U.S. News &amp; World Report</em>, assesses the quality of hospitals.  It is not known whether patients admitted to hospitals ranked at the top in cardiology have lower short term mortality from acute myocardial infarction than those admitted to other hospitals.<br /><br /><strong>Methods</strong>. Using data from the Cooperative Cardiovascular Project on 149,177 elderly Medicare beneficiaries with acute myocardial infarction in 1994 or 1995, we examined the care and outcomes of patients admitted to three types of hospitals: those ranked high in cardiology (top ranked hospitals); hospitals not in the top rank that had onsite facilities for cardiac catheterization, coronary angioplasty, and bypass surgery (similarly equipped hospitals); and the remaining hospitals (non-similarly equipped hospitals). We compared 30-day mortality ...<br /><br /><strong>Results</strong>. Admission to a top ranked hospital was associated with lower adjusted 30-day mortality (odds ratio, 0.87; 95 percent confidence interval, 0.76 to 1.00).The design of this study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (134, 34, 'a completely randomized experiment');
INSERT INTO choices (id, question_id, body) VALUES (135, 34, 'a randomized block experiment');
INSERT INTO choices (id, question_id, body) VALUES (136, 34, 'a multistage national sample survey');
INSERT INTO choices (id, question_id, body) VALUES (137, 34, 'an observational study that compares several treatments');
UPDATE questions SET answer = 137 WHERE id=34;

INSERT INTO questions (id, body, chapter) VALUES (35, 'Here is a shortened version of the summary of a paper in the <em>New England Journal of Medicine</em> that compares the fate of heart attack victims in three types of hospitals.  (&quot;Acute myocardial infarction&quot; is medical jargon for a heart attack.)  The next four questions concern this summary.<br /><br /><strong>Background</strong> &quot;America\'s Best Hospitals,&quot; published annually by <em>U.S. News &amp; World Report</em>, assesses the quality of hospitals.  It is not known whether patients admitted to hospitals ranked at the top in cardiology have lower short term mortality from acute myocardial infarction than those admitted to other hospitals.<br /><br /><strong>Methods</strong>. Using data from the Cooperative Cardiovascular Project on 149,177 elderly Medicare beneficiaries with acute myocardial infarction in 1994 or 1995, we examined the care and outcomes of patients admitted to three types of hospitals: those ranked high in cardiology (top ranked hospitals); hospitals not in the top rank that had onsite facilities for cardiac catheterization, coronary angioplasty, and bypass surgery (similarly equipped hospitals); and the remaining hospitals (non-similarly equipped hospitals). We compared 30-day mortality ...<br /><br /><strong>Results</strong>. Admission to a top ranked hospital was associated with lower adjusted 30-day mortality (odds ratio, 0.87; 95 percent confidence interval, 0.76 to 1.00).The explanatory and response variables are:', 129);
INSERT INTO choices (id, question_id, body) VALUES (138, 35, 'explanatory = elderly Medicare beneficiaries; response = 30-day mortality');
INSERT INTO choices (id, question_id, body) VALUES (139, 35, 'explanatory = type of hospital; response = 30-day mortality');
UPDATE questions SET answer = 139 WHERE id=35;
INSERT INTO choices (id, question_id, body) VALUES (140, 35, 'explanatory = 30-day mortality; response = type of hospital');
INSERT INTO choices (id, question_id, body) VALUES (141, 35, 'explanatory = type of hospital; response = heart attack or not');

INSERT INTO questions (id, body, chapter) VALUES (36, 'Here is a shortened version of the summary of a paper in the <em>New England Journal of Medicine</em> that compares the fate of heart attack victims in three types of hospitals.  (&quot;Acute myocardial infarction&quot; is medical jargon for a heart attack.)  The next four questions concern this summary.<br /><br /><strong>Background</strong> &quot;America\'s Best Hospitals,&quot; published annually by <em>U.S. News &amp; World Report</em>, assesses the quality of hospitals.  It is not known whether patients admitted to hospitals ranked at the top in cardiology have lower short term mortality from acute myocardial infarction than those admitted to other hospitals.<br /><br /><strong>Methods</strong>. Using data from the Cooperative Cardiovascular Project on 149,177 elderly Medicare beneficiaries with acute myocardial infarction in 1994 or 1995, we examined the care and outcomes of patients admitted to three types of hospitals: those ranked high in cardiology (top ranked hospitals); hospitals not in the top rank that had onsite facilities for cardiac catheterization, coronary angioplasty, and bypass surgery (similarly equipped hospitals); and the remaining hospitals (non-similarly equipped hospitals). We compared 30-day mortality ...<br /><br /><strong>Results</strong>. Admission to a top ranked hospital was associated with lower adjusted 30-day mortality (odds ratio, 0.87; 95 percent confidence interval, 0.76 to 1.00).The &quot;odds ratio&quot; compares two death rates.  So the finding &quot;odds ratio 0.87&quot; means that on the average the chance of dying at a highly ranked hospital is only 87% as great as at other hospitals. The summary then gives a confidence statement about this odds ratio.  &quot;95 percent confidence&quot; means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (142, 36, 'the interval 0.76 to 1.00 came from a method that catches the true ratio in 95% of all samples');
UPDATE questions SET answer = 142 WHERE id=36;
INSERT INTO choices (id, question_id, body) VALUES (143, 36, '95% of all the hospitals had a mortality rate between 0.76 and 1.00');
INSERT INTO choices (id, question_id, body) VALUES (144, 36, 'the mortality rate at highly ranked hospitals varies between 76% and 100% of the rate at other hospitals');
INSERT INTO choices (id, question_id, body) VALUES (145, 36, 'we can be between 76% and 100% confident that the study results are correct');

INSERT INTO questions (id, body, chapter) VALUES (37, 'Here is a shortened version of the summary of a paper in the <em>New England Journal of Medicine</em> that compares the fate of heart attack victims in three types of hospitals.  (&quot;Acute myocardial infarction&quot; is medical jargon for a heart attack.)  The next four questions concern this summary.<br /><br /><strong>Background</strong> &quot;America\'s Best Hospitals,&quot; published annually by <em>U.S. News &amp; World Report</em>, assesses the quality of hospitals.  It is not known whether patients admitted to hospitals ranked at the top in cardiology have lower short term mortality from acute myocardial infarction than those admitted to other hospitals.<br /><br /><strong>Methods</strong>. Using data from the Cooperative Cardiovascular Project on 149,177 elderly Medicare beneficiaries with acute myocardial infarction in 1994 or 1995, we examined the care and outcomes of patients admitted to three types of hospitals: those ranked high in cardiology (top ranked hospitals); hospitals not in the top rank that had onsite facilities for cardiac catheterization, coronary angioplasty, and bypass surgery (similarly equipped hospitals); and the remaining hospitals (non-similarly equipped hospitals). We compared 30-day mortality ...<br /><br /><strong>Results</strong>. Admission to a top ranked hospital was associated with lower adjusted 30-day mortality (odds ratio, 0.87; 95 percent confidence interval, 0.76 to 1.00).The population about which the study draws conclusions is', 129);
INSERT INTO choices (id, question_id, body) VALUES (146, 37, 'all adult residents of the U.S.');
INSERT INTO choices (id, question_id, body) VALUES (147, 37, 'all heart attack victims');
INSERT INTO choices (id, question_id, body) VALUES (148, 37, 'elderly Medicare beneficiaries who are heart attack victims');
UPDATE questions SET answer = 148 WHERE id=37;
INSERT INTO choices (id, question_id, body) VALUES (149, 37, 'doctors 40 years old or older');

INSERT INTO questions (id, body, chapter) VALUES (38, 'A psychologist says that scores on a test for &quot;authoritarian personality&quot; can\'t be trusted because the test counts religious belief as authoritarian.  The psychologist is attacking the test\'s', 129);
INSERT INTO choices (id, question_id, body) VALUES (150, 38, 'validity');
UPDATE questions SET answer = 150 WHERE id=38;
INSERT INTO choices (id, question_id, body) VALUES (151, 38, 'reliability');
INSERT INTO choices (id, question_id, body) VALUES (152, 38, 'margin of error');
INSERT INTO choices (id, question_id, body) VALUES (153, 38, 'confidence level');

INSERT INTO questions (id, body, chapter) VALUES (39, 'Confounding often defeats attempts to show that one variable causes changes in another variable.  Confounding means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (154, 39, 'this was an observational study, so cause and effect conclusions are not possible');
INSERT INTO choices (id, question_id, body) VALUES (155, 39, 'the effects of several variables are mixed up, so we cannot say which is causing the response');
UPDATE questions SET answer = 155 WHERE id=39;
INSERT INTO choices (id, question_id, body) VALUES (156, 39, 'we don\'t know which is the response variable and which is the explanatory variable');
INSERT INTO choices (id, question_id, body) VALUES (157, 39, 'we would get widely varied results if we repeated the study many times');

INSERT INTO questions (id, body, chapter) VALUES (40, 'In a table of random digits,', 129);
INSERT INTO choices (id, question_id, body) VALUES (158, 40, 'each pair of digits 00, 01, 02, ..., 99 appears exactly once in any row of the table');
INSERT INTO choices (id, question_id, body) VALUES (159, 40, 'any pair of entries is equally likely to be any of the 100 possible pairs 00, 01, 02, ..., 99');
UPDATE questions SET answer = 159 WHERE id=40;
INSERT INTO choices (id, question_id, body) VALUES (160, 40, 'a specific pair such as 00 cannot be repeated until all other pairs have appeared');
INSERT INTO choices (id, question_id, body) VALUES (161, 40, 'the pair 00 can appear, but 000 is not random and can never appear in the table');

INSERT INTO questions (id, body, chapter) VALUES (41, 'A recent Gallup poll asked &quot;Do you consider pro wrestling to be a  sport, or not?&quot;  Of the people asked, 81% said &quot;No.&quot;  Here is what Gallup says about the accuracy of this poll:<br /><br />The results below are based on telephone interviews with a randomly selected national sample of 1,028 adults, 18 years and older, conducted August 16&#8211;18, 1999. For results based on this sample, one can say with 95 percent confidence that the maximum error attributable to sampling and other random effects is plus or minus 3 percentage points. In addition to sampling error, question wording and practical difficulties in conducting surveys can introduce error or bias into the findings of public opinion polls.The population for this poll appears to be', 129);
INSERT INTO choices (id, question_id, body) VALUES (162, 41, 'all adults, 18 years and older.');
UPDATE questions SET answer = 162 WHERE id=41;
INSERT INTO choices (id, question_id, body) VALUES (163, 41, '95% of adults, 18 years and older.');
INSERT INTO choices (id, question_id, body) VALUES (164, 41, 'the 1028 adults who were interviewed.');
INSERT INTO choices (id, question_id, body) VALUES (165, 41, '95% of the 1028 adults who were interviewed.');

INSERT INTO questions (id, body, chapter) VALUES (42, 'A recent Gallup poll asked &quot;Do you consider pro wrestling to be a  sport, or not?&quot;  Of the people asked, 81% said &quot;No.&quot;  Here is what Gallup says about the accuracy of this poll:<br /><br />The results below are based on telephone interviews with a randomly selected national sample of 1,028 adults, 18 years and older, conducted August 16&#8211;18, 1999. For results based on this sample, one can say with 95 percent confidence that the maximum error attributable to sampling and other random effects is plus or minus 3 percentage points. In addition to sampling error, question wording and practical difficulties in conducting surveys can introduce error or bias into the findings of public opinion polls.The sample for this poll is', 129);
INSERT INTO choices (id, question_id, body) VALUES (166, 42, 'all adults, 18 years and older.');
INSERT INTO choices (id, question_id, body) VALUES (167, 42, '95% of adults, 18 years and older.');
INSERT INTO choices (id, question_id, body) VALUES (168, 42, 'the 1028 adults who were interviewed.');
UPDATE questions SET answer = 168 WHERE id=42;
INSERT INTO choices (id, question_id, body) VALUES (169, 42, '95% of the 1028 adults who were interviewed.');

INSERT INTO questions (id, body, chapter) VALUES (43, 'A recent Gallup poll asked &quot;Do you consider pro wrestling to be a  sport, or not?&quot;  Of the people asked, 81% said &quot;No.&quot;  Here is what Gallup says about the accuracy of this poll:<br /><br />The results below are based on telephone interviews with a randomly selected national sample of 1,028 adults, 18 years and older, conducted August 16&#8211;18, 1999. For results based on this sample, one can say with 95 percent confidence that the maximum error attributable to sampling and other random effects is plus or minus 3 percentage points. In addition to sampling error, question wording and practical difficulties in conducting surveys can introduce error or bias into the findings of public opinion polls.In Gallup\'s statement, &quot;95% confidence&quot; means', 129);
INSERT INTO choices (id, question_id, body) VALUES (170, 43, 'We know that 95% of all adults would give the same answer that this poll found.');
INSERT INTO choices (id, question_id, body) VALUES (171, 43, 'If Gallup repeated this poll many times, 95% of all the polls would find that 81% of the people interviewed think pro wrestling is not a sport.');
INSERT INTO choices (id, question_id, body) VALUES (172, 43, 'This poll is one of the 95% of all Gallup polls that give correct results.');
INSERT INTO choices (id, question_id, body) VALUES (173, 43, 'If Gallup repeated this poll many times, 95% of the results would be within plus or minus three percentage points of the truth about the population.');
UPDATE questions SET answer = 173 WHERE id=43;

INSERT INTO questions (id, body, chapter) VALUES (44, 'A recent Gallup poll asked &quot;Do you consider pro wrestling to be a  sport, or not?&quot;  Of the people asked, 81% said &quot;No.&quot;  Here is what Gallup says about the accuracy of this poll:<br /><br />The results below are based on telephone interviews with a randomly selected national sample of 1,028 adults, 18 years and older, conducted August 16&#8211;18, 1999. For results based on this sample, one can say with 95 percent confidence that the maximum error attributable to sampling and other random effects is plus or minus 3 percentage points. In addition to sampling error, question wording and practical difficulties in conducting surveys can introduce error or bias into the findings of public opinion polls.Which of these sources of possible errors in the poll result are covered by the margin of error of plus or minus three points?', 129);
INSERT INTO choices (id, question_id, body) VALUES (174, 44, 'The poll left out people without telephones.');
INSERT INTO choices (id, question_id, body) VALUES (175, 44, 'Some people chosen for the sample refused to answer.');
INSERT INTO choices (id, question_id, body) VALUES (176, 44, 'Some people did not tell the truth because they were embarrassed to admit they like pro wrestling.');
INSERT INTO choices (id, question_id, body) VALUES (177, 44, 'None of these.');
UPDATE questions SET answer = 177 WHERE id=44;
INSERT INTO choices (id, question_id, body) VALUES (178, 44, '(B) and (C) but not (A).');

INSERT INTO questions (id, body, chapter) VALUES (45, 'A recent Gallup poll asked &quot;Do you consider pro wrestling to be a  sport, or not?&quot;  Of the people asked, 81% said &quot;No.&quot;  Here is what Gallup says about the accuracy of this poll:<br /><br />The results below are based on telephone interviews with a randomly selected national sample of 1,028 adults, 18 years and older, conducted August 16&#8211;18, 1999. For results based on this sample, one can say with 95 percent confidence that the maximum error attributable to sampling and other random effects is plus or minus 3 percentage points. In addition to sampling error, question wording and practical difficulties in conducting surveys can introduce error or bias into the findings of public opinion polls.Which of these sources of possible errors in the poll result are examples of nonsampling errors?', 129);
INSERT INTO choices (id, question_id, body) VALUES (179, 45, 'The poll left out people without telephones.');
INSERT INTO choices (id, question_id, body) VALUES (180, 45, 'Some people chosen for the sample refused to answer.');
INSERT INTO choices (id, question_id, body) VALUES (181, 45, 'Some people did not tell the truth because they were embarrassed to admit they like pro wrestling.');
INSERT INTO choices (id, question_id, body) VALUES (182, 45, 'None of these.');
INSERT INTO choices (id, question_id, body) VALUES (183, 45, '(B) and (C) but not (A).');
UPDATE questions SET answer = 183 WHERE id=45;

INSERT INTO questions (id, body, chapter) VALUES (46, 'A recent Gallup poll asked &quot;Do you consider pro wrestling to be a  sport, or not?&quot;  Of the people asked, 81% said &quot;No.&quot;  Here is what Gallup says about the accuracy of this poll:<br /><br />The results below are based on telephone interviews with a randomly selected national sample of 1,028 adults, 18 years and older, conducted August 16&#8211;18, 1999. For results based on this sample, one can say with 95 percent confidence that the maximum error attributable to sampling and other random effects is plus or minus 3 percentage points. In addition to sampling error, question wording and practical difficulties in conducting surveys can introduce error or bias into the findings of public opinion polls.Which of these is a correct confidence statement based on this Gallup poll?', 129);
INSERT INTO choices (id, question_id, body) VALUES (184, 46, 'We are 95% confident that between 78% and 84% of all adults think that pro wrestling is not a sport.');
UPDATE questions SET answer = 184 WHERE id=46;
INSERT INTO choices (id, question_id, body) VALUES (185, 46, 'We are 95% confident that between 78% and 84% of the 1028 people interviewed think that pro wrestling is not a sport.');
INSERT INTO choices (id, question_id, body) VALUES (186, 46, 'There is a 95% chance that the opinions of the 1028 people interviewed fairly represent the opinions of all adults.');
INSERT INTO choices (id, question_id, body) VALUES (187, 46, 'In many samples, 95% will find that 81% of the people interviewed think pro wrestling is not a sport.');

INSERT INTO questions (id, body, chapter) VALUES (47, 'A recent Gallup poll asked &quot;Do you consider pro wrestling to be a  sport, or not?&quot;  Of the people asked, 81% said &quot;No.&quot;  Here is what Gallup says about the accuracy of this poll:<br /><br />The results below are based on telephone interviews with a randomly selected national sample of 1,028 adults, 18 years and older, conducted August 16&#8211;18, 1999. For results based on this sample, one can say with 95 percent confidence that the maximum error attributable to sampling and other random effects is plus or minus 3 percentage points. In addition to sampling error, question wording and practical difficulties in conducting surveys can introduce error or bias into the findings of public opinion polls.In all, 151 people in the sample of 1028 adults said they were fans of pro wrestling.  Gallup asked these 151 people, &quot;Who is your favorite pro wrestler?&quot;  Twenty-four percent said Steve Austin was their favorite.  Gallup gave a margin of error for this result. This margin of error is', 129);
INSERT INTO choices (id, question_id, body) VALUES (188, 47, 'plus or minus three percentage points, just as for the overall poll.');
INSERT INTO choices (id, question_id, body) VALUES (189, 47, 'less than plus or minus three points because the sample for this question is smaller.');
INSERT INTO choices (id, question_id, body) VALUES (190, 47, 'greater than plus or minus three points because the sample for this question is smaller.');
UPDATE questions SET answer = 190 WHERE id=47;
INSERT INTO choices (id, question_id, body) VALUES (191, 47, 'less than plus or minus three points because the population of wrestling fans is smaller than the population of all adults.');

INSERT INTO questions (id, body, chapter) VALUES (48, 'A recent Gallup poll asked &quot;Do you consider pro wrestling to be a  sport, or not?&quot;  Of the people asked, 81% said &quot;No.&quot;  Here is what Gallup says about the accuracy of this poll:<br /><br />The results below are based on telephone interviews with a randomly selected national sample of 1,028 adults, 18 years and older, conducted August 16&#8211;18, 1999. For results based on this sample, one can say with 95 percent confidence that the maximum error attributable to sampling and other random effects is plus or minus 3 percentage points. In addition to sampling error, question wording and practical difficulties in conducting surveys can introduce error or bias into the findings of public opinion polls.In all, 151 people in the sample of 1028 adults said they were fans of pro wrestling.  Gallup asked these 151 people, &quot;Who is your favorite pro wrestler?&quot;  Twenty-four percent said Steve Austin was their favorite.  Gallup gave a margin of error for this result. Applying the quick method, we find that the margin of error for 95% confidence changes as follows when the sample size drops from 1028 to 151:', 129);
INSERT INTO choices (id, question_id, body) VALUES (192, 48, '8.1% to 3.1%.');
INSERT INTO choices (id, question_id, body) VALUES (193, 48, '3.1% to 8.1%.');
UPDATE questions SET answer = 193 WHERE id=48;
INSERT INTO choices (id, question_id, body) VALUES (194, 48, '3% to 2%.');
INSERT INTO choices (id, question_id, body) VALUES (195, 48, '3% to 5%.');

INSERT INTO questions (id, body, chapter) VALUES (49, 'Want to stop smoking?  Nicotine patches may help, and so may taking a drug that fights depression.  A report in a recent issue of the <em>New England Journal of Medicine</em> describes a study of what works best.  Here is part of the summary:<br /><br />Use of nicotine replacement therapies and the antidepressant bupropion helps people stop smoking. We conducted a double-blind, placebo-controlled comparison of sustained-release bupropion (244 subjects), a nicotine patch (244 subjects), bupropion and a nicotine patch (245 subjects), and placebo (160 subjects) for smoking cessation.<br /><br /><strong>Results</strong>. The abstinence rates at 12 months were 15.6 percent in the placebo group, as compared with 16.4 percent in the nicotine patch group, 30.3 percent in the bupropion group, and 35.5 percent in the group given bupropion and the nicotine patch.How many treatments did this experiment compare?', 129);
INSERT INTO choices (id, question_id, body) VALUES (196, 49, 'two.');
INSERT INTO choices (id, question_id, body) VALUES (197, 49, 'three.');
INSERT INTO choices (id, question_id, body) VALUES (198, 49, 'four.');
UPDATE questions SET answer = 198 WHERE id=49;
INSERT INTO choices (id, question_id, body) VALUES (199, 49, 'can\'t tell from the information given.');

INSERT INTO questions (id, body, chapter) VALUES (50, 'Want to stop smoking?  Nicotine patches may help, and so may taking a drug that fights depression.  A report in a recent issue of the <em>New England Journal of Medicine</em> describes a study of what works best.  Here is part of the summary:<br /><br />Use of nicotine replacement therapies and the antidepressant bupropion helps people stop smoking. We conducted a double-blind, placebo-controlled comparison of sustained-release bupropion (244 subjects), a nicotine patch (244 subjects), bupropion and a nicotine patch (245 subjects), and placebo (160 subjects) for smoking cessation.<br /><br /><strong>Results</strong>. The abstinence rates at 12 months were 15.6 percent in the placebo group, as compared with 16.4 percent in the nicotine patch group, 30.3 percent in the bupropion group, and 35.5 percent in the group given bupropion and the nicotine patch.The response variable in this experiment is', 129);
INSERT INTO choices (id, question_id, body) VALUES (200, 50, 'the combination of drug (bupropion or placebo) and nicotine patch.');
INSERT INTO choices (id, question_id, body) VALUES (201, 50, '893 people who want to quit smoking.');
INSERT INTO choices (id, question_id, body) VALUES (202, 50, 'bupropion.');
INSERT INTO choices (id, question_id, body) VALUES (203, 50, 'whether or not a subject was able to abstain from smoking for a year.');
UPDATE questions SET answer = 203 WHERE id=50;

INSERT INTO questions (id, body, chapter) VALUES (51, 'Want to stop smoking?  Nicotine patches may help, and so may taking a drug that fights depression.  A report in a recent issue of the <em>New England Journal of Medicine</em> describes a study of what works best.  Here is part of the summary:<br /><br />Use of nicotine replacement therapies and the antidepressant bupropion helps people stop smoking. We conducted a double-blind, placebo-controlled comparison of sustained-release bupropion (244 subjects), a nicotine patch (244 subjects), bupropion and a nicotine patch (245 subjects), and placebo (160 subjects) for smoking cessation.<br /><br /><strong>Results</strong>. The abstinence rates at 12 months were 15.6 percent in the placebo group, as compared with 16.4 percent in the nicotine patch group, 30.3 percent in the bupropion group, and 35.5 percent in the group given bupropion and the nicotine patch.One group received a placebo.  Why not just give this group no treatment at all?', 129);
INSERT INTO choices (id, question_id, body) VALUES (204, 51, 'It is not ethical to give no treatment at all in this setting.');
INSERT INTO choices (id, question_id, body) VALUES (205, 51, 'Just thinking you are getting a treatment may have an effect, and we want to see if the real treatments do better than this.');
UPDATE questions SET answer = 205 WHERE id=51;
INSERT INTO choices (id, question_id, body) VALUES (206, 51, 'A placebo is the same thing as no treatment at all.');
INSERT INTO choices (id, question_id, body) VALUES (207, 51, 'Subjects would be disappointed if not given a pill.');

INSERT INTO questions (id, body, chapter) VALUES (52, 'Want to stop smoking?  Nicotine patches may help, and so may taking a drug that fights depression.  A report in a recent issue of the <em>New England Journal of Medicine</em> describes a study of what works best.  Here is part of the summary:<br /><br />Use of nicotine replacement therapies and the antidepressant bupropion helps people stop smoking. We conducted a double-blind, placebo-controlled comparison of sustained-release bupropion (244 subjects), a nicotine patch (244 subjects), bupropion and a nicotine patch (245 subjects), and placebo (160 subjects) for smoking cessation.<br /><br /><strong>Results</strong>. The abstinence rates at 12 months were 15.6 percent in the placebo group, as compared with 16.4 percent in the nicotine patch group, 30.3 percent in the bupropion group, and 35.5 percent in the group given bupropion and the nicotine patch.The experiment was &quot;double-blind.&quot;  This means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (208, 52, 'neither the subjects nor the people who worked with them knew whether they were taking bupropion or placebo.');
UPDATE questions SET answer = 208 WHERE id=52;
INSERT INTO choices (id, question_id, body) VALUES (209, 52, 'the subjects did not know that the treatments were intended to reduce their smoking.');
INSERT INTO choices (id, question_id, body) VALUES (210, 52, 'the subjects did not know whether they were taking bupropion or placebo.');
INSERT INTO choices (id, question_id, body) VALUES (211, 52, 'subjects were not allowed to see cigarette ads.');

INSERT INTO questions (id, body, chapter) VALUES (53, 'Want to stop smoking?  Nicotine patches may help, and so may taking a drug that fights depression.  A report in a recent issue of the <em>New England Journal of Medicine</em> describes a study of what works best.  Here is part of the summary:<br /><br />Use of nicotine replacement therapies and the antidepressant bupropion helps people stop smoking. We conducted a double-blind, placebo-controlled comparison of sustained-release bupropion (244 subjects), a nicotine patch (244 subjects), bupropion and a nicotine patch (245 subjects), and placebo (160 subjects) for smoking cessation.<br /><br /><strong>Results</strong>. The abstinence rates at 12 months were 15.6 percent in the placebo group, as compared with 16.4 percent in the nicotine patch group, 30.3 percent in the bupropion group, and 35.5 percent in the group given bupropion and the nicotine patch.The subjects of the study included both men and women.  All of the subjects were randomly assigned among all the treatments with one use of the table of random digits.  This design is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (212, 53, 'a simple random sample');
INSERT INTO choices (id, question_id, body) VALUES (213, 53, 'a completely randomized design.');
UPDATE questions SET answer = 213 WHERE id=53;
INSERT INTO choices (id, question_id, body) VALUES (214, 53, 'a matched pairs design.');
INSERT INTO choices (id, question_id, body) VALUES (215, 53, 'a block design.');

INSERT INTO questions (id, body, chapter) VALUES (54, 'Want to stop smoking?  Nicotine patches may help, and so may taking a drug that fights depression.  A report in a recent issue of the <em>New England Journal of Medicine</em> describes a study of what works best.  Here is part of the summary:<br /><br />Use of nicotine replacement therapies and the antidepressant bupropion helps people stop smoking. We conducted a double-blind, placebo-controlled comparison of sustained-release bupropion (244 subjects), a nicotine patch (244 subjects), bupropion and a nicotine patch (245 subjects), and placebo (160 subjects) for smoking cessation.<br /><br /><strong>Results</strong>. The abstinence rates at 12 months were 15.6 percent in the placebo group, as compared with 16.4 percent in the nicotine patch group, 30.3 percent in the bupropion group, and 35.5 percent in the group given bupropion and the nicotine patch.The subjects of the study included both men and women.  If the men and women were separately assigned to treatments, using the table of random digits twice, the design would be', 129);
INSERT INTO choices (id, question_id, body) VALUES (216, 54, 'a simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (217, 54, 'a completely randomized design.');
INSERT INTO choices (id, question_id, body) VALUES (218, 54, 'a matched pairs design.');
INSERT INTO choices (id, question_id, body) VALUES (219, 54, 'a block design.');
UPDATE questions SET answer = 219 WHERE id=54;

INSERT INTO questions (id, body, chapter) VALUES (55, 'Studies with human subjects must be approved in advance by an Institutional Review Board.  The Board\'s main purpose is to', 129);
INSERT INTO choices (id, question_id, body) VALUES (220, 55, 'be sure that the study is scientifically interesting.');
INSERT INTO choices (id, question_id, body) VALUES (221, 55, 'be sure that the study uses good statistical techniques.');
INSERT INTO choices (id, question_id, body) VALUES (222, 55, 'be sure that the study will have some benefit to society.');
INSERT INTO choices (id, question_id, body) VALUES (223, 55, 'be sure that the subjects of the study are safe.');
UPDATE questions SET answer = 223 WHERE id=55;

INSERT INTO questions (id, body, chapter) VALUES (56, 'Each month, the head of the Bureau of Labor Statistics appears before Congress. Her most recent testimony (September 3, 1999) began, &quot;Good morning.  I am pleased to have this opportunity to discuss the August employment and unemployment estimates that we released this morning.  The unemployment rate, at 4.2 percent in August, was little changed over the month ...&quot;  The large sample survey that produces monthly data on employment and unemployment is called the', 129);
INSERT INTO choices (id, question_id, body) VALUES (224, 56, 'Current Population Survey.');
UPDATE questions SET answer = 224 WHERE id=56;
INSERT INTO choices (id, question_id, body) VALUES (225, 56, 'General Social Survey.');
INSERT INTO choices (id, question_id, body) VALUES (226, 56, 'Federal Employment Survey.');
INSERT INTO choices (id, question_id, body) VALUES (227, 56, 'Gallup Poll.');

INSERT INTO questions (id, body, chapter) VALUES (57, 'An article in <em>USA Today</em> on August 9, 1999 said that &quot;a nationally representative survey of 3,617 Americans&quot; shows that &quot;People who attend religious services at least once a month live significantly longer than those who don\'t.&quot;  But churchgoers are more likely to be nonsmokers and to have good health habits.  Does attending religious services cause longer life?', 129);
INSERT INTO choices (id, question_id, body) VALUES (228, 57, 'Yes, because this study is a comparative experiment.');
INSERT INTO choices (id, question_id, body) VALUES (229, 57, 'We can\'t say: the effects of going to church are confounded with the effects of other behavior such as not smoking.');
UPDATE questions SET answer = 229 WHERE id=57;
INSERT INTO choices (id, question_id, body) VALUES (230, 57, 'Yes, because a sample survey with a large sample size will have a small margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (231, 57, 'No, we can be sure that only physical habits like not smoking can affect how long we live.');

INSERT INTO questions (id, body, chapter) VALUES (58, 'Do doctors in managed care plans give less charity care?  Researchers chose 60 communities at random, then chose doctors at random in each community.  In all, they interviewed 10,881 doctors.  Overall, 77.3% of the doctors said they had given some care free or at reduced rates because of the patient\'s financial need in the month before the interview.  Doctors who received at least 85% of their practice income from managed care plans were significantly less likely than other doctors to provide charity care.This study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (232, 58, 'a randomized comparative experiment.');
INSERT INTO choices (id, question_id, body) VALUES (233, 58, 'an experiment, but there is no control group.');
INSERT INTO choices (id, question_id, body) VALUES (234, 58, 'a census.');
INSERT INTO choices (id, question_id, body) VALUES (235, 58, 'a sample survey.');
UPDATE questions SET answer = 235 WHERE id=58;

INSERT INTO questions (id, body, chapter) VALUES (59, 'Do doctors in managed care plans give less charity care?  Researchers chose 60 communities at random, then chose doctors at random in each community.  In all, they interviewed 10,881 doctors.  Overall, 77.3% of the doctors said they had given some care free or at reduced rates because of the patient\'s financial need in the month before the interview.  Doctors who received at least 85% of their practice income from managed care plans were significantly less likely than other doctors to provide charity care.The study design appears to be', 129);
INSERT INTO choices (id, question_id, body) VALUES (236, 59, 'a completely randomized experimental design.');
INSERT INTO choices (id, question_id, body) VALUES (237, 59, 'a block experimental design.');
INSERT INTO choices (id, question_id, body) VALUES (238, 59, 'a simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (239, 59, 'a multistage random sample.');
UPDATE questions SET answer = 239 WHERE id=59;

INSERT INTO questions (id, body, chapter) VALUES (60, 'Do doctors in managed care plans give less charity care?  Researchers chose 60 communities at random, then chose doctors at random in each community.  In all, they interviewed 10,881 doctors.  Overall, 77.3% of the doctors said they had given some care free or at reduced rates because of the patient\'s financial need in the month before the interview.  Doctors who received at least 85% of their practice income from managed care plans were significantly less likely than other doctors to provide charity care.The number 77.3% is', 129);
INSERT INTO choices (id, question_id, body) VALUES (240, 60, 'a statistic, because it describes a sample.');
UPDATE questions SET answer = 240 WHERE id=60;
INSERT INTO choices (id, question_id, body) VALUES (241, 60, 'a statistic, because it describes a population.');
INSERT INTO choices (id, question_id, body) VALUES (242, 60, 'a parameter, because it describes a sample.');
INSERT INTO choices (id, question_id, body) VALUES (243, 60, 'a parameter, because it describes a population.');

INSERT INTO questions (id, body, chapter) VALUES (61, 'Do doctors in managed care plans give less charity care?  Researchers chose 60 communities at random, then chose doctors at random in each community.  In all, they interviewed 10,881 doctors.  Overall, 77.3% of the doctors said they had given some care free or at reduced rates because of the patient\'s financial need in the month before the interview.  Doctors who received at least 85% of their practice income from managed care plans were significantly less likely than other doctors to provide charity care.The phrase &quot;significantly less likely&quot; means that when we compare the charity work of doctors with more than 85% of their practice in managed care with other doctors,', 129);
INSERT INTO choices (id, question_id, body) VALUES (244, 61, 'the difference in charity work is very large.');
INSERT INTO choices (id, question_id, body) VALUES (245, 61, 'the difference in charity work is so large that it would rarely occur just by chance in choosing a sample.');
UPDATE questions SET answer = 245 WHERE id=61;
INSERT INTO choices (id, question_id, body) VALUES (246, 61, 'the difference in charity work is large enough to affect doctors\' income.');
INSERT INTO choices (id, question_id, body) VALUES (247, 61, 'the difference in charity work is less than we would expect just by chance in choosing a sample.');

INSERT INTO questions (id, body, chapter) VALUES (62, 'Do doctors in managed care plans give less charity care?  Researchers chose 60 communities at random, then chose doctors at random in each community.  In all, they interviewed 10,881 doctors.  Overall, 77.3% of the doctors said they had given some care free or at reduced rates because of the patient\'s financial need in the month before the interview.  Doctors who received at least 85% of their practice income from managed care plans were significantly less likely than other doctors to provide charity care.Some doctors who did not give any charity care may say that they did.  If so, the study suffers from', 129);
INSERT INTO choices (id, question_id, body) VALUES (248, 62, 'a large margin of error to take account of possible failure to be truthful.');
INSERT INTO choices (id, question_id, body) VALUES (249, 62, 'sampling errors that require a better random sampling design.');
INSERT INTO choices (id, question_id, body) VALUES (250, 62, 'bias: the sample result will systematically underestimate the true percent of doctors who give charity care.');
INSERT INTO choices (id, question_id, body) VALUES (251, 62, 'bias: the sample result will systematically overestimate the true percent of doctors who give charity care.');
UPDATE questions SET answer = 251 WHERE id=62;

INSERT INTO questions (id, body, chapter) VALUES (63, 'Do doctors in managed care plans give less charity care?  Researchers chose 60 communities at random, then chose doctors at random in each community.  In all, they interviewed 10,881 doctors.  Overall, 77.3% of the doctors said they had given some care free or at reduced rates because of the patient\'s financial need in the month before the interview.  Doctors who received at least 85% of their practice income from managed care plans were significantly less likely than other doctors to provide charity care.For a simple random sample of size 10,881, the margin of error for 95% confidence is about', 129);
INSERT INTO choices (id, question_id, body) VALUES (252, 63, '+/- 9.6% .');
INSERT INTO choices (id, question_id, body) VALUES (253, 63, '+/- 3% .');
INSERT INTO choices (id, question_id, body) VALUES (254, 63, '+/- 0.96% .');
UPDATE questions SET answer = 254 WHERE id=63;
INSERT INTO choices (id, question_id, body) VALUES (255, 63, '+/- 0.0096% .');

INSERT INTO questions (id, body, chapter) VALUES (64, 'A study of the effect of government job training programs finds that the pay of workers after training is higher than it was before training.  A critic points out that workers often enroll for training when their pay has recently dipped.  So the effect of training in raising pay is mixed up with the fact that pay would often rise when we measure from a low point.  The statistical term for this effect is', 129);
INSERT INTO choices (id, question_id, body) VALUES (256, 64, 'confounding');
UPDATE questions SET answer = 256 WHERE id=64;
INSERT INTO choices (id, question_id, body) VALUES (257, 64, 'control');
INSERT INTO choices (id, question_id, body) VALUES (258, 64, 'nonresponse');
INSERT INTO choices (id, question_id, body) VALUES (259, 64, 'stratification');

INSERT INTO questions (id, body, chapter) VALUES (65, 'In January of 1997, the price of Intel common stock rose from $131 per share to $162 per share.  (Intel makes the processors for the computers you have been happily using.)  What percent increase is this?', 129);
INSERT INTO choices (id, question_id, body) VALUES (260, 65, '19.1%');
INSERT INTO choices (id, question_id, body) VALUES (261, 65, '23.7%');
UPDATE questions SET answer = 261 WHERE id=65;
INSERT INTO choices (id, question_id, body) VALUES (262, 65, '80.9%');
INSERT INTO choices (id, question_id, body) VALUES (263, 65, '123.7%');

INSERT INTO questions (id, body, chapter) VALUES (66, 'A Census Bureau report on the income of Americans says that with 95% confidence the median income of all U.S. households in 1997 was $37,005 with a margin of error of  +/- $342 .This means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (264, 66, '95% of all households had incomes in the range  $37,005. +/- $342 .');
INSERT INTO choices (id, question_id, body) VALUES (265, 66, 'we can be sure that the median income for all households in the country lies in the range  $37,005 +/- $342 .');
INSERT INTO choices (id, question_id, body) VALUES (266, 66, '95% of the households in the sample interviewed by the Census Bureau had incomes in the range  $37,005 +/- $342.');
INSERT INTO choices (id, question_id, body) VALUES (267, 66, 'the Census Bureau got the result  $37,005 +/- $342  using a method that will cover the true median income 95% of the time when used repeatedly.');
UPDATE questions SET answer = 267 WHERE id=66;

INSERT INTO questions (id, body, chapter) VALUES (67, 'A Census Bureau report on the income of Americans says that with 95% confidence the median income of all U.S. households in 1997 was $37,005 with a margin of error of  +/- $342 .Suppose that many of the households asked their income by the Census Bureau give an answer that is too low because they fear that their answer will go to the Internal Revenue Service.', 129);
INSERT INTO choices (id, question_id, body) VALUES (268, 67, 'This is a sampling error that causes bias.');
INSERT INTO choices (id, question_id, body) VALUES (269, 67, 'This is a sampling error that increases variability.');
INSERT INTO choices (id, question_id, body) VALUES (270, 67, 'This is a nonsampling error that causes bias.');
UPDATE questions SET answer = 270 WHERE id=67;
INSERT INTO choices (id, question_id, body) VALUES (271, 67, 'This is a nonsampling error that increases variability.');

INSERT INTO questions (id, body, chapter) VALUES (68, 'A Census Bureau report on the income of Americans says that with 95% confidence the median income of all U.S. households in 1997 was $37,005 with a margin of error of  +/- $342 .In fact, the Census Bureau never shares information about individuals with the IRS.  To do so would violate a basic requirement of data ethics, namely', 129);
INSERT INTO choices (id, question_id, body) VALUES (272, 68, 'confidentiality of individual data.');
UPDATE questions SET answer = 272 WHERE id=68;
INSERT INTO choices (id, question_id, body) VALUES (273, 68, 'informed consent by all subjects.');
INSERT INTO choices (id, question_id, body) VALUES (274, 68, 'prior approval by an institutional review board.');
INSERT INTO choices (id, question_id, body) VALUES (275, 68, 'avoid bias in sampling procedures.');

INSERT INTO questions (id, body, chapter) VALUES (69, 'The drug manufacturer Merck recently stopped testing a promising new drug to treat depression.  It turned out that in a randomized, double-blind trial a dummy pill did almost as well as the new drug. The fact that many people respond to a dummy treatment is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (276, 69, 'confounding.');
INSERT INTO choices (id, question_id, body) VALUES (277, 69, 'nonresponse.');
INSERT INTO choices (id, question_id, body) VALUES (278, 69, 'comparison.');
INSERT INTO choices (id, question_id, body) VALUES (279, 69, 'the placebo effect.');
UPDATE questions SET answer = 279 WHERE id=69;

INSERT INTO questions (id, body, chapter) VALUES (70, 'When you drop your pencil point blindly into the middle of a table of random digits, what is the chance that the three digits to the right of where you land will be 999?', 129);
INSERT INTO choices (id, question_id, body) VALUES (280, 70, '1 in 100, because every three-digit group has the same chance to come up.');
INSERT INTO choices (id, question_id, body) VALUES (281, 70, '1 in 1000, because every three-digit group has the same chance to come up.');
UPDATE questions SET answer = 281 WHERE id=70;
INSERT INTO choices (id, question_id, body) VALUES (282, 70, 'no chance, because 999 is not a random group of digits.');
INSERT INTO choices (id, question_id, body) VALUES (283, 70, 'can\'t say&#8212;it is completely random.');

INSERT INTO questions (id, body, chapter) VALUES (71, 'In one of the first attempts to discover the speed of light, Simon Newcomb in 1882 made 66 measurements of the time light takes to travel between the Washington Monument and his laboratory on the Potomac River.  Why did Newcomb repeat his measurement 66 times and the take the average of the 66 as his final result?', 129);
INSERT INTO choices (id, question_id, body) VALUES (284, 71, 'Averaging several measurements reduces any bias that is present in his instruments.');
INSERT INTO choices (id, question_id, body) VALUES (285, 71, 'The average of several measurements is more reliable (less variable) than a single measurement.');
UPDATE questions SET answer = 285 WHERE id=71;
INSERT INTO choices (id, question_id, body) VALUES (286, 71, 'Even if a measuring process is not valid, averaging several measurements made by this process will be valid.');
INSERT INTO choices (id, question_id, body) VALUES (287, 71, 'Both (A) and (B) but not (C).');
INSERT INTO choices (id, question_id, body) VALUES (288, 71, 'All of (A), (B), and (C).');

INSERT INTO questions (id, body, chapter) VALUES (72, 'A psychologist wants to know if adults with normal vision can be fooled by a certain optical illusion.  She recruits 50 students from her PSY 120 class and finds that 42 of them are fooled by the illusion.The population in this study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (289, 72, 'the 42 students who were fooled.');
INSERT INTO choices (id, question_id, body) VALUES (290, 72, 'the 50 students who served as subjects.');
INSERT INTO choices (id, question_id, body) VALUES (291, 72, 'all students in the PSY 120 class.');
INSERT INTO choices (id, question_id, body) VALUES (292, 72, 'all adults with normal vision.');
UPDATE questions SET answer = 292 WHERE id=72;

INSERT INTO questions (id, body, chapter) VALUES (73, 'A psychologist wants to know if adults with normal vision can be fooled by a certain optical illusion.  She recruits 50 students from her PSY 120 class and finds that 42 of them are fooled by the illusion.The biggest potential weakness of experiments is', 129);
INSERT INTO choices (id, question_id, body) VALUES (293, 73, 'they do not give good evidence for cause and effect.');
INSERT INTO choices (id, question_id, body) VALUES (294, 73, 'they only work when we can give a placebo.');
INSERT INTO choices (id, question_id, body) VALUES (295, 73, 'it can be hard to generalize conclusions beyond the actual subjects to a wider population.');
UPDATE questions SET answer = 295 WHERE id=73;
INSERT INTO choices (id, question_id, body) VALUES (296, 73, 'informed consent is often not possible.');

INSERT INTO questions (id, body, chapter) VALUES (74, 'Professor Iconu has developed a new college entrance test.  Any such test must have several versions because some people take the test more than once.  Unfortunately, it turns out that the same person often gets very different scores depending on which version of the test is offered.  The test suffers from', 129);
INSERT INTO choices (id, question_id, body) VALUES (297, 74, 'large bias.');
INSERT INTO choices (id, question_id, body) VALUES (298, 74, 'confounding.');
INSERT INTO choices (id, question_id, body) VALUES (299, 74, 'large sampling errors.');
INSERT INTO choices (id, question_id, body) VALUES (300, 74, 'low reliability.');
UPDATE questions SET answer = 300 WHERE id=74;

INSERT INTO questions (id, body, chapter) VALUES (75, 'The most important advantage of experiments over observational studies is', 129);
INSERT INTO choices (id, question_id, body) VALUES (301, 75, 'a well-designed experiment can give good evidence that the treatments actually cause the response.');
UPDATE questions SET answer = 301 WHERE id=75;
INSERT INTO choices (id, question_id, body) VALUES (302, 75, 'an experiment can compare two or more groups.');
INSERT INTO choices (id, question_id, body) VALUES (303, 75, 'we can use randomization to avoid bias in designing an experiment.');
INSERT INTO choices (id, question_id, body) VALUES (304, 75, 'we can study the relationship between two or more explanatory variables.');

INSERT INTO questions (id, body, chapter) VALUES (76, 'You might try to measure how rich a person is by looking at the car they drive.  In fact, driving a fancy car has little to do with income (most luxury cars are leased).  In statistical terms, measuring income by car model is', 129);
INSERT INTO choices (id, question_id, body) VALUES (305, 76, 'not reliable.');
INSERT INTO choices (id, question_id, body) VALUES (306, 76, 'not valid.');
UPDATE questions SET answer = 306 WHERE id=76;
INSERT INTO choices (id, question_id, body) VALUES (307, 76, 'biased.');
INSERT INTO choices (id, question_id, body) VALUES (308, 76, 'not precise.');

INSERT INTO questions (id, body, chapter) VALUES (77, 'our statistics recitation has 30 students.  You want to call an SRS of 5 students from your recitation to ask where they use a computer for the online exercises.  You label the students 01, 02, &#188;, 30. You enter the table of random digits at this line:<p>14459 26056 31424 80371 65103 62253 22490 61181</p>Your SRS contains the students labeled:', 129);
INSERT INTO choices (id, question_id, body) VALUES (309, 77, '14, 45, 92, 60, 56');
INSERT INTO choices (id, question_id, body) VALUES (310, 77, '14, 31, 03, 10, 22');
INSERT INTO choices (id, question_id, body) VALUES (311, 77, '14, 03, 10, 22, 22');
INSERT INTO choices (id, question_id, body) VALUES (312, 77, '14, 03, 10, 22, 06');
UPDATE questions SET answer = 312 WHERE id=77;
INSERT INTO choices (id, question_id, body) VALUES (313, 77, '14, 03, 10, 22, 11');

INSERT INTO questions (id, body, chapter) VALUES (78, 'You take an SRS of size 500 from the 37,000 students at Purdue University.  You then take an SRS of size 500 from the 4,400,000 adults in the state of Indiana.  The margin of error in a 95% confidence statement for the Indiana sample is', 129);
INSERT INTO choices (id, question_id, body) VALUES (314, 78, 'the same as for the Purdue sample because both are samples of size 500.');
UPDATE questions SET answer = 314 WHERE id=78;
INSERT INTO choices (id, question_id, body) VALUES (315, 78, 'smaller than for the Purdue sample because the population is much larger.');
INSERT INTO choices (id, question_id, body) VALUES (316, 78, 'larger than for the Purdue sample because the population is much larger.');
INSERT INTO choices (id, question_id, body) VALUES (317, 78, 'either larger or smaller than for the Purdue sample because it changes at random when we taker a sample.');

INSERT INTO questions (id, body, chapter) VALUES (79, 'Increasing the size of an SRS has these beneficial effects:', 129);
INSERT INTO choices (id, question_id, body) VALUES (318, 79, 'the bias of the sample is reduced relative to smaller SRSs.');
INSERT INTO choices (id, question_id, body) VALUES (319, 79, 'the margin of error is smaller than it is for smaller SRSs.');
UPDATE questions SET answer = 319 WHERE id=79;
INSERT INTO choices (id, question_id, body) VALUES (320, 79, 'nonsampling errors become less important');
INSERT INTO choices (id, question_id, body) VALUES (321, 79, '(A) and (B) but not (C).');
INSERT INTO choices (id, question_id, body) VALUES (322, 79, 'all of (A), (B), and (C).');

INSERT INTO questions (id, body, chapter) VALUES (80, 'When we take a census, we attempt to collect data from', 129);
INSERT INTO choices (id, question_id, body) VALUES (323, 80, 'a stratified random sample');
INSERT INTO choices (id, question_id, body) VALUES (324, 80, 'every individual selected in a simple random sample');
INSERT INTO choices (id, question_id, body) VALUES (325, 80, 'every individual in the population');
UPDATE questions SET answer = 325 WHERE id=80;
INSERT INTO choices (id, question_id, body) VALUES (326, 80, 'a voluntary response sample');
INSERT INTO choices (id, question_id, body) VALUES (327, 80, 'a convenience sample');

INSERT INTO questions (id, body, chapter) VALUES (81, 'A table of random numbers is used to select 30 students from a statistics class to rate a statistics video. These 30 students are', 129);
INSERT INTO choices (id, question_id, body) VALUES (328, 81, 'the sampling frame');
INSERT INTO choices (id, question_id, body) VALUES (329, 81, 'the population');
INSERT INTO choices (id, question_id, body) VALUES (330, 81, 'a simple random sample of the class');
UPDATE questions SET answer = 330 WHERE id=81;
INSERT INTO choices (id, question_id, body) VALUES (331, 81, 'a census');
INSERT INTO choices (id, question_id, body) VALUES (332, 81, 'a voluntary response sample');

INSERT INTO questions (id, body, chapter) VALUES (82, 'A table of random numbers is used to select 30 students from a statistics class to rate a statistics video. The ratings that these students give are used to estimate the ratings that would be given if  the entire class were asked to rate the video. The average of the ratings of all students in the class is', 129);
INSERT INTO choices (id, question_id, body) VALUES (333, 82, 'a population parameter');
INSERT INTO choices (id, question_id, body) VALUES (334, 82, 'a convenience sample');
INSERT INTO choices (id, question_id, body) VALUES (335, 82, 'a census');
INSERT INTO choices (id, question_id, body) VALUES (336, 82, 'the population');
INSERT INTO choices (id, question_id, body) VALUES (337, 82, 'a statistic that is an unbiased estimate of the class rating');
UPDATE questions SET answer = 337 WHERE id=82;

INSERT INTO questions (id, body, chapter) VALUES (83, 'An instructor has five sections of a course: A, B, C, D, and E.  She wants to randomly select three sections for a special teaching evaluation. She labels the classes as follows: A = 1, B = 2, C = 3, D = 4, and E = 5. She starts at the beginning of this list of random digits:<br /><br />15689 14227 06565 14374<br /><br />Which classes did she select?', 129);
INSERT INTO choices (id, question_id, body) VALUES (338, 83, 'A, E, and A');
INSERT INTO choices (id, question_id, body) VALUES (339, 83, 'A and D');
INSERT INTO choices (id, question_id, body) VALUES (340, 83, 'A, B, and C');
INSERT INTO choices (id, question_id, body) VALUES (341, 83, 'B, C, and D');
INSERT INTO choices (id, question_id, body) VALUES (342, 83, 'A, D, and E');
UPDATE questions SET answer = 342 WHERE id=83;

INSERT INTO questions (id, body, chapter) VALUES (84, 'In a table of 500 random digits', 129);
INSERT INTO choices (id, question_id, body) VALUES (343, 84, 'the number one will appear exactly 50 times');
INSERT INTO choices (id, question_id, body) VALUES (344, 84, 'the number one will appear approximately 10 times');
INSERT INTO choices (id, question_id, body) VALUES (345, 84, 'the numbers from 1 to 10 are equally likely');
INSERT INTO choices (id, question_id, body) VALUES (346, 84, 'the chance that the first number is one is the same as the chance that the first number is two');
UPDATE questions SET answer = 346 WHERE id=84;
INSERT INTO choices (id, question_id, body) VALUES (347, 84, 'the average of these numbers will be 5');

INSERT INTO questions (id, body, chapter) VALUES (85, 'For a sample to be a simple random sample of size <em>n</em>,', 129);
INSERT INTO choices (id, question_id, body) VALUES (348, 85, 'the variability must be small');
INSERT INTO choices (id, question_id, body) VALUES (349, 85, '<em>n</em> must be a large number');
INSERT INTO choices (id, question_id, body) VALUES (350, 85, 'every item in the population must be selected');
INSERT INTO choices (id, question_id, body) VALUES (351, 85, 'every collection of n individuals must have the same chance to be the sample actually chosen');
UPDATE questions SET answer = 351 WHERE id=85;
INSERT INTO choices (id, question_id, body) VALUES (352, 85, 'the size of the population must be smaller than <em>n </em>');

INSERT INTO questions (id, body, chapter) VALUES (86, 'Which of the following is correct?', 129);
INSERT INTO choices (id, question_id, body) VALUES (353, 86, 'Parameters describe population characteristics.');
UPDATE questions SET answer = 353 WHERE id=86;
INSERT INTO choices (id, question_id, body) VALUES (354, 86, 'Parameters describe sample characteristics.');
INSERT INTO choices (id, question_id, body) VALUES (355, 86, 'The population is a subset of the sample.');
INSERT INTO choices (id, question_id, body) VALUES (356, 86, 'Statistics must be based on a simple random sample.');

INSERT INTO questions (id, body, chapter) VALUES (87, 'If we take many simple random samples from the same population, we expect', 129);
INSERT INTO choices (id, question_id, body) VALUES (357, 87, 'the same values of the statistic for each sample');
INSERT INTO choices (id, question_id, body) VALUES (358, 87, 'the values of the statistic will vary from sample to sample');
UPDATE questions SET answer = 358 WHERE id=87;
INSERT INTO choices (id, question_id, body) VALUES (359, 87, 'a different value of the parameter for each sample');
INSERT INTO choices (id, question_id, body) VALUES (360, 87, 'a problem with voluntary response');
INSERT INTO choices (id, question_id, body) VALUES (361, 87, 'a problem with bias');

INSERT INTO questions (id, body, chapter) VALUES (88, 'Suppose that we take many simple random samples of size 20 from a large class and for each sample we compute the average height of the students in the sample.  Which of the following statements is true?', 129);
INSERT INTO choices (id, question_id, body) VALUES (362, 88, 'The sample means are parameters.');
INSERT INTO choices (id, question_id, body) VALUES (363, 88, 'The mean height of the class is a statistic.');
INSERT INTO choices (id, question_id, body) VALUES (364, 88, '<em>n</em> = 460');
INSERT INTO choices (id, question_id, body) VALUES (365, 88, 'There is always bias when we choose simple random samples.');
INSERT INTO choices (id, question_id, body) VALUES (366, 88, 'The variation in the means of the samples is described by a distribution.');
UPDATE questions SET answer = 366 WHERE id=88;

INSERT INTO questions (id, body, chapter) VALUES (89, 'If a sampling method is biased then', 129);
INSERT INTO choices (id, question_id, body) VALUES (367, 89, 'we need to improve the sampling method to remove the bias.');
UPDATE questions SET answer = 367 WHERE id=89;
INSERT INTO choices (id, question_id, body) VALUES (368, 89, 'we need to increase the sample size to remove the bias.');
INSERT INTO choices (id, question_id, body) VALUES (369, 89, 'we should sample from a larger population.');
INSERT INTO choices (id, question_id, body) VALUES (370, 89, 'the sample statistic will be close to the population parameter.');
INSERT INTO choices (id, question_id, body) VALUES (371, 89, 'the center of the distribution of the statistic will be close to the population parameter.');

INSERT INTO questions (id, body, chapter) VALUES (90, 'If we take a simple random sample of size <em>n </em>=500 from a population of size 5,000,000, the variability of our estimate will be', 129);
INSERT INTO choices (id, question_id, body) VALUES (372, 90, 'less than the bias.');
INSERT INTO choices (id, question_id, body) VALUES (373, 90, 'much less than the variability for a sample of size <em>n </em>=500 from a population of size 50,000,000.');
INSERT INTO choices (id, question_id, body) VALUES (374, 90, 'approximately the same as the variability for a sample of size <em>n </em>=500  from a population of size 50,000,000.');
UPDATE questions SET answer = 374 WHERE id=90;
INSERT INTO choices (id, question_id, body) VALUES (375, 90, 'plus or minus 5%.');
INSERT INTO choices (id, question_id, body) VALUES (376, 90, 'much greater than the variability for a sample of size <em>n </em>=500 from a population of size 50,000,000.');

INSERT INTO questions (id, body, chapter) VALUES (91, 'To reduce the variability of estimates from a simple random sample, you should', 129);
INSERT INTO choices (id, question_id, body) VALUES (377, 91, 'use a smaller sample.');
INSERT INTO choices (id, question_id, body) VALUES (378, 91, 'increase the bias.');
INSERT INTO choices (id, question_id, body) VALUES (379, 91, 'use a count, not a percent.');
INSERT INTO choices (id, question_id, body) VALUES (380, 91, 'use a larger sample.');
UPDATE questions SET answer = 380 WHERE id=91;
INSERT INTO choices (id, question_id, body) VALUES (381, 91, 'use a percent, not a count.');

INSERT INTO questions (id, body, chapter) VALUES (92, 'The margin of error for a poll is 4%. This means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (382, 92, '4% of those sampled did not answer the question asked');
INSERT INTO choices (id, question_id, body) VALUES (383, 92, 'we have 95% confidence that the sample statistic is within 4% of the population parameter');
UPDATE questions SET answer = 383 WHERE id=92;
INSERT INTO choices (id, question_id, body) VALUES (384, 92, '4% of those sampled gave the wrong answer to the question asked');
INSERT INTO choices (id, question_id, body) VALUES (385, 92, '4% of the population were in the sample');
INSERT INTO choices (id, question_id, body) VALUES (386, 92, 'the confidence we have in the statistic is 4%');

INSERT INTO questions (id, body, chapter) VALUES (93, 'Which of the following sources of error is included in the margin of error?', 129);
INSERT INTO choices (id, question_id, body) VALUES (387, 93, 'chance variation in choosing a random sample');
UPDATE questions SET answer = 387 WHERE id=93;
INSERT INTO choices (id, question_id, body) VALUES (388, 93, 'errors in entering the data into the computer');
INSERT INTO choices (id, question_id, body) VALUES (389, 93, 'some of the subjects did not understand the questions');
INSERT INTO choices (id, question_id, body) VALUES (390, 93, 'voluntary response');
INSERT INTO choices (id, question_id, body) VALUES (391, 93, 'all of the above');

INSERT INTO questions (id, body, chapter) VALUES (94, 'For what confidence level are margins of error usually reported?', 129);
INSERT INTO choices (id, question_id, body) VALUES (392, 94, '5%');
INSERT INTO choices (id, question_id, body) VALUES (393, 94, '95%');
UPDATE questions SET answer = 393 WHERE id=94;
INSERT INTO choices (id, question_id, body) VALUES (394, 94, '90%');
INSERT INTO choices (id, question_id, body) VALUES (395, 94, '99%');
INSERT INTO choices (id, question_id, body) VALUES (396, 94, '50%');

INSERT INTO questions (id, body, chapter) VALUES (95, 'A survey was sent to a simple random sample of college sophomores. The sample size was 300. When asked whether or not they liked Willie Nelson\'s music, 35 of these students did not give any answer. This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (397, 95, 'a stratified sample');
INSERT INTO choices (id, question_id, body) VALUES (398, 95, 'a census');
INSERT INTO choices (id, question_id, body) VALUES (399, 95, 'bias');
INSERT INTO choices (id, question_id, body) VALUES (400, 95, 'nonresponse');
UPDATE questions SET answer = 400 WHERE id=95;
INSERT INTO choices (id, question_id, body) VALUES (401, 95, 'the margin of error');

INSERT INTO questions (id, body, chapter) VALUES (96, 'We divide the class into two groups: first year students and others. We then take random samples from each group. This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (402, 96, 'simple random sampling');
INSERT INTO choices (id, question_id, body) VALUES (403, 96, 'clustered sampling');
INSERT INTO choices (id, question_id, body) VALUES (404, 96, 'multistage sampling');
INSERT INTO choices (id, question_id, body) VALUES (405, 96, 'stratified random sampling');
UPDATE questions SET answer = 405 WHERE id=96;
INSERT INTO choices (id, question_id, body) VALUES (406, 96, 'systematic random sampling');

INSERT INTO questions (id, body, chapter) VALUES (97, 'To take a sample of students in this class we make a list ordered by social security number and select every 20th student in this list to be in our sample. This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (407, 97, 'systematic sampling');
UPDATE questions SET answer = 407 WHERE id=97;
INSERT INTO choices (id, question_id, body) VALUES (408, 97, 'simple random sampling');
INSERT INTO choices (id, question_id, body) VALUES (409, 97, 'stratified random sampling');
INSERT INTO choices (id, question_id, body) VALUES (410, 97, 'clustered sampling');
INSERT INTO choices (id, question_id, body) VALUES (411, 97, 'multistage sampling');

INSERT INTO questions (id, body, chapter) VALUES (98, 'Students in a large statistics class were randomly divided into two groups. The first group took the midterm exam with soft music playing in the background while the second group took the exam with no music playing. The scores of the two groups on the exam were compared.In this experiment the instrument is', 129);
INSERT INTO choices (id, question_id, body) VALUES (412, 98, 'whether or not music was playing during the exam');
INSERT INTO choices (id, question_id, body) VALUES (413, 98, 'the explanatory variable');
INSERT INTO choices (id, question_id, body) VALUES (414, 98, 'a CD player');
INSERT INTO choices (id, question_id, body) VALUES (415, 98, 'the method used to randomize the students to the two groups');
INSERT INTO choices (id, question_id, body) VALUES (416, 98, 'the midterm exam');
UPDATE questions SET answer = 416 WHERE id=98;

INSERT INTO questions (id, body, chapter) VALUES (99, 'Students in a large statistics class were randomly divided into two groups. The first group took the midterm exam with soft music playing in the background while the second group took the exam with no music playing. The scores of the two groups on the exam were compared.In this experiment the response variable is', 129);
INSERT INTO choices (id, question_id, body) VALUES (417, 99, 'the score on the midterm exam');
UPDATE questions SET answer = 417 WHERE id=99;
INSERT INTO choices (id, question_id, body) VALUES (418, 99, 'whether or not music was playing during the exam');
INSERT INTO choices (id, question_id, body) VALUES (419, 99, 'the placebo');
INSERT INTO choices (id, question_id, body) VALUES (420, 99, 'the scores of the students on the final exam');
INSERT INTO choices (id, question_id, body) VALUES (421, 99, 'a lurking variable');

INSERT INTO questions (id, body, chapter) VALUES (100, 'Students in a large statistics class were randomly divided into two groups. The first group took the midterm exam with soft music playing in the background while the second group took the exam with no music playing. The scores of the two groups on the exam were compared.In this experiment the explanatory variable is', 129);
INSERT INTO choices (id, question_id, body) VALUES (422, 100, 'the score on the midterm exam');
INSERT INTO choices (id, question_id, body) VALUES (423, 100, 'whether or not music was playing during the exam');
UPDATE questions SET answer = 423 WHERE id=100;
INSERT INTO choices (id, question_id, body) VALUES (424, 100, 'the placebo');
INSERT INTO choices (id, question_id, body) VALUES (425, 100, 'the scores of the students on the final exam');
INSERT INTO choices (id, question_id, body) VALUES (426, 100, 'a lurking variable');

INSERT INTO questions (id, body, chapter) VALUES (101, 'Students in a large statistics class were randomly divided into two groups. The first group took the midterm exam with soft music playing in the background while the second group took the exam with no music playing. The scores of the two groups on the exam were compared.The study design for this experiment is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (427, 101, 'a simple random sample design');
INSERT INTO choices (id, question_id, body) VALUES (428, 101, 'a randomized blocks design');
INSERT INTO choices (id, question_id, body) VALUES (429, 101, 'a matched pairs design');
INSERT INTO choices (id, question_id, body) VALUES (430, 101, 'a completely randomized design');
UPDATE questions SET answer = 430 WHERE id=101;
INSERT INTO choices (id, question_id, body) VALUES (431, 101, 'an observational study');

INSERT INTO questions (id, body, chapter) VALUES (102, 'Students in a large statistics class were randomly divided into two groups. The first group took the midterm exam with soft music playing in the background while the second group took the exam with no music playing. The scores of the two groups on the exam were compared.This experiment was not double-blind because', 129);
INSERT INTO choices (id, question_id, body) VALUES (432, 102, 'students were allowed to keep their eyes open while taking the exam');
INSERT INTO choices (id, question_id, body) VALUES (433, 102, 'the exam was too long');
INSERT INTO choices (id, question_id, body) VALUES (434, 102, 'the students knew whether or not music was playing while they were taking the exam');
UPDATE questions SET answer = 434 WHERE id=102;
INSERT INTO choices (id, question_id, body) VALUES (435, 102, 'some of the students did not study for the exam');
INSERT INTO choices (id, question_id, body) VALUES (436, 102, 'students were randomized into the two groups');

INSERT INTO questions (id, body, chapter) VALUES (103, 'Students in a large statistics class were randomly divided into two groups. The first group took the midterm exam with soft music playing in the background while the second group took the exam with no music playing. The scores of the two groups on the exam were compared.To improve the design of this experiment, one part of it should be done in a blind way.  That is, we should', 129);
INSERT INTO choices (id, question_id, body) VALUES (437, 103, 'make the students take the exam in a dark room');
INSERT INTO choices (id, question_id, body) VALUES (438, 103, 'let the students in the music group have extra time for the  exam if they need it');
INSERT INTO choices (id, question_id, body) VALUES (439, 103, 'not allow the students to find out their grades on the exam');
INSERT INTO choices (id, question_id, body) VALUES (440, 103, 'tell all of the students that they will receive a grade of A on the exam if they agree to participate');
INSERT INTO choices (id, question_id, body) VALUES (441, 103, 'be sure that the person grading the exam does not know which students listened to music and which did not');
UPDATE questions SET answer = 441 WHERE id=103;

INSERT INTO questions (id, body, chapter) VALUES (104, 'This exam is a measuring instrument. Which of the following ways is most likely to make it more reliable?', 129);
INSERT INTO choices (id, question_id, body) VALUES (442, 104, 'Use fewer questions.');
INSERT INTO choices (id, question_id, body) VALUES (443, 104, 'Give the exam in the morning.');
INSERT INTO choices (id, question_id, body) VALUES (444, 104, 'Use more questions.');
UPDATE questions SET answer = 444 WHERE id=104;
INSERT INTO choices (id, question_id, body) VALUES (445, 104, 'Reduce the bias.');
INSERT INTO choices (id, question_id, body) VALUES (446, 104, 'Give the exam in the recitation sections.');

INSERT INTO questions (id, body, chapter) VALUES (105, 'In an experiment to see if aspirin reduces the chance of having a heart attack, a placebo is', 129);
INSERT INTO choices (id, question_id, body) VALUES (447, 105, 'the place where the subjects go when they have a heart attack');
INSERT INTO choices (id, question_id, body) VALUES (448, 105, 'a dummy pill that looks like aspirin but has no active ingredients');
UPDATE questions SET answer = 448 WHERE id=105;
INSERT INTO choices (id, question_id, body) VALUES (449, 105, 'a procedure for deciding who gets the aspirin treatment');
INSERT INTO choices (id, question_id, body) VALUES (450, 105, 'the margin of error');
INSERT INTO choices (id, question_id, body) VALUES (451, 105, '95%');

INSERT INTO questions (id, body, chapter) VALUES (106, 'During a visit to the doctor, you are weighed on a very accurate scale.  You are weighed five times and the five readings are essentially the same. When being weighed, you are wearing all of your clothes and a pair of hiking boots. As a measure of your weight without clothes, the reading on the scale is', 129);
INSERT INTO choices (id, question_id, body) VALUES (452, 106, 'unbiased and reliable');
INSERT INTO choices (id, question_id, body) VALUES (453, 106, 'unbiased and unreliable');
INSERT INTO choices (id, question_id, body) VALUES (454, 106, '95% accurate');
INSERT INTO choices (id, question_id, body) VALUES (455, 106, 'biased and unreliable');
INSERT INTO choices (id, question_id, body) VALUES (456, 106, 'biased and reliable');
UPDATE questions SET answer = 456 WHERE id=106;

INSERT INTO questions (id, body, chapter) VALUES (107, 'An exam has 40 multiple-choice questions, each with 5 choices. Only 1 of the 5 choices for each question is correct.  If you used a table of random digits to randomly choose your answer on all questions, about how many answers would you expect to get correct?', 129);
INSERT INTO choices (id, question_id, body) VALUES (457, 107, '40');
INSERT INTO choices (id, question_id, body) VALUES (458, 107, '0');
INSERT INTO choices (id, question_id, body) VALUES (459, 107, '20');
INSERT INTO choices (id, question_id, body) VALUES (460, 107, '8');
UPDATE questions SET answer = 460 WHERE id=107;
INSERT INTO choices (id, question_id, body) VALUES (461, 107, '50');

INSERT INTO questions (id, body, chapter) VALUES (108, 'Which of the following statements do you think could possibly be true?', 129);
INSERT INTO choices (id, question_id, body) VALUES (462, 108, 'The number of students enrolled at Ohio State University is about 2 million.');
INSERT INTO choices (id, question_id, body) VALUES (463, 108, 'A basketball team made 110% of its free throws in a game last week.');
INSERT INTO choices (id, question_id, body) VALUES (464, 108, 'The temperature will be 195 degrees (Fahrenheit) tomorrow in Chicago.');
INSERT INTO choices (id, question_id, body) VALUES (465, 108, 'More than 30 million people live in California.');
UPDATE questions SET answer = 465 WHERE id=108;
INSERT INTO choices (id, question_id, body) VALUES (466, 108, 'The textbook for this class weighs 250 pounds.');

INSERT INTO questions (id, body, chapter) VALUES (109, 'When Ann Landers asked her readers to tell her &quot;if your sex life has gone downhill after marriage,&quot; more than 100,000 people responded.  This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (467, 109, 'a voluntary response sample.');
INSERT INTO choices (id, question_id, body) VALUES (468, 109, 'an observational study.');
INSERT INTO choices (id, question_id, body) VALUES (469, 109, 'a stratified sample.');
UPDATE questions SET answer = 469 WHERE id=109;
INSERT INTO choices (id, question_id, body) VALUES (470, 109, 'a dis-stratified sample.');
INSERT INTO choices (id, question_id, body) VALUES (471, 109, 'the placebo effect.');

INSERT INTO questions (id, body, chapter) VALUES (110, 'Six years after their senior year in high school, 0.6% of the women had attained a professional or advanced degree, while 0.9% of the men had done likewise. Assuming equal numbers of male and female high school seniors, the number of men with professional or advanced degrees was what percent greater than the number of women with such degrees?', 129);
INSERT INTO choices (id, question_id, body) VALUES (472, 110, '0.3%');
INSERT INTO choices (id, question_id, body) VALUES (473, 110, '3%');
INSERT INTO choices (id, question_id, body) VALUES (474, 110, '33%');
UPDATE questions SET answer = 474 WHERE id=110;
INSERT INTO choices (id, question_id, body) VALUES (475, 110, '50%');
INSERT INTO choices (id, question_id, body) VALUES (476, 110, '95%');

INSERT INTO questions (id, body, chapter) VALUES (111, 'When I set my alarm clock to ring at 6:30, it rings 10 minutes late every day.  My alarm clock is', 129);
INSERT INTO choices (id, question_id, body) VALUES (477, 111, 'biased.');
UPDATE questions SET answer = 477 WHERE id=111;
INSERT INTO choices (id, question_id, body) VALUES (478, 111, 'invalid.');
INSERT INTO choices (id, question_id, body) VALUES (479, 111, 'imprecise.');
INSERT INTO choices (id, question_id, body) VALUES (480, 111, 'unreliable.');
INSERT INTO choices (id, question_id, body) VALUES (481, 111, 'Both (A) and (D).');

INSERT INTO questions (id, body, chapter) VALUES (112, 'An ad for a new heartburn treatment says that it &quot;reduces heartburn by 300 percent.&quot; What does this mean?', 129);
INSERT INTO choices (id, question_id, body) VALUES (482, 112, 'It means that there is 3 times as much heartburn before using the treatment as there is after using it.');
INSERT INTO choices (id, question_id, body) VALUES (483, 112, 'It means there is only seven-tenths as much heartburn after using the treatment, because 300/1000 = 0.3, or three-tenths.');
INSERT INTO choices (id, question_id, body) VALUES (484, 112, 'It\'s nonsense, because removing 100 percent of the heartburn already removes all of it.');
UPDATE questions SET answer = 484 WHERE id=112;
INSERT INTO choices (id, question_id, body) VALUES (485, 112, 'It\'s nonsense, because heartburn is a categorical variable, so percents don\'t make sense.');
INSERT INTO choices (id, question_id, body) VALUES (486, 112, 'It\'s nonsense because percents only make sense for counts, and amount of heartburn isn\'t a count.');

INSERT INTO questions (id, body, chapter) VALUES (113, 'Ethical standards for randomized, controlled clinical trials include', 129);
INSERT INTO choices (id, question_id, body) VALUES (487, 113, 'not asking subjects to agree to participate without first informing them of the nature of the study and possible risks and benefits.');
UPDATE questions SET answer = 487 WHERE id=113;
INSERT INTO choices (id, question_id, body) VALUES (488, 113, 'insuring that each subject knows which treatment he or she received.');
INSERT INTO choices (id, question_id, body) VALUES (489, 113, 'allowing subjects to decide whether or not to be in the control group');
INSERT INTO choices (id, question_id, body) VALUES (490, 113, 'never testing drugs which have not been proven to be completely safe.');
INSERT INTO choices (id, question_id, body) VALUES (491, 113, 'All of the above.');

INSERT INTO questions (id, body, chapter) VALUES (114, 'It was difficult to establish the causal link between cigarette smoking and lung cancer because', 129);
INSERT INTO choices (id, question_id, body) VALUES (492, 114, 'random allocation of subjects to smoking is unethical.');
INSERT INTO choices (id, question_id, body) VALUES (493, 114, 'observational studies generally cannot rule out confounding.');
INSERT INTO choices (id, question_id, body) VALUES (494, 114, 'those who choose to smoke may be genetically at greater risk for lung cancer than those who don\'t choose to smoke.');
INSERT INTO choices (id, question_id, body) VALUES (495, 114, 'experiments done on animals may not be valid for humans.');
INSERT INTO choices (id, question_id, body) VALUES (496, 114, 'All of the above');
UPDATE questions SET answer = 496 WHERE id=114;

INSERT INTO questions (id, body, chapter) VALUES (115, 'An experiment compares two brands of automobile tires. Each of a number of cars is equipped with one tire of each brand on a rear wheel (the order is randomized from car to car) and tread wear is measured periodically. This is called a', 129);
INSERT INTO choices (id, question_id, body) VALUES (497, 115, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (498, 115, 'stratified random sample.');
INSERT INTO choices (id, question_id, body) VALUES (499, 115, 'completely randomized design.');
INSERT INTO choices (id, question_id, body) VALUES (500, 115, 'matched pairs design.');
UPDATE questions SET answer = 500 WHERE id=115;
INSERT INTO choices (id, question_id, body) VALUES (501, 115, 'double-blind design.');

INSERT INTO questions (id, body, chapter) VALUES (116, 'After we take a sample, we want to estimate a population <strong>BLANK A</strong> by a sample <strong>BLANK B</strong>. Because samples rarely give exactly correct results, we also give a margin of error. The margin of error includes <strong>BLANK C</strong>, but it does not include the effects of <strong>BLANK D</strong>. The sequence of terms that makes this statement correct is:', 129);
INSERT INTO choices (id, question_id, body) VALUES (502, 116, 'parameter, statistic, chance variation, nonsampling error.');
UPDATE questions SET answer = 502 WHERE id=116;
INSERT INTO choices (id, question_id, body) VALUES (503, 116, 'statistic, parameter, chance variation, nonsampling error.');
INSERT INTO choices (id, question_id, body) VALUES (504, 116, 'parameter, statistic, nonsampling error, chance variation.');
INSERT INTO choices (id, question_id, body) VALUES (505, 116, 'statistic, parameter, nonsampling error, chance variation.');
INSERT INTO choices (id, question_id, body) VALUES (506, 116, 'parameter, statistic, chance variation, probability.');

INSERT INTO questions (id, body, chapter) VALUES (117, 'A newspaper article was headlined, &quot;Marrying young can be beneficial.&quot; The article said: Marriage is a good thing when it comes to cutting back on drinking and drugs. A University of Michigan Institute for Social Research study of 33,000 young adults showed that young, unmarried adults usually increased their alcohol, marijuana and cocaine use when they left home, often to attend college. Those same people, however, decreased their drug and alcohol use when they got engaged or married.  Couples who lived together but were not engaged or married showed no such drop in drug use.The strongest reason for having reservations about the claim made in the first sentence of the quote is', 129);
INSERT INTO choices (id, question_id, body) VALUES (507, 117, 'you don\'t agree with the claim.');
INSERT INTO choices (id, question_id, body) VALUES (508, 117, 'the sample size is too small.');
INSERT INTO choices (id, question_id, body) VALUES (509, 117, 'the study was limited to Michigan.');
INSERT INTO choices (id, question_id, body) VALUES (510, 117, 'there is no control group.');
INSERT INTO choices (id, question_id, body) VALUES (511, 117, 'it\'s an observational study.');
UPDATE questions SET answer = 511 WHERE id=117;

INSERT INTO questions (id, body, chapter) VALUES (118, 'A newspaper article was headlined, &quot;Marrying young can be beneficial.&quot; The article said: Marriage is a good thing when it comes to cutting back on drinking and drugs. A University of Michigan Institute for Social Research study of 33,000 young adults showed that young, unmarried adults usually increased their alcohol, marijuana and cocaine use when they left home, often to attend college. Those same people, however, decreased their drug and alcohol use when they got engaged or married.  Couples who lived together but were not engaged or married showed no such drop in drug use.The explanatory variable in this study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (512, 118, 'the level of alcohol, marijuana and cocaine use.');
INSERT INTO choices (id, question_id, body) VALUES (513, 118, 'marital status.');
UPDATE questions SET answer = 513 WHERE id=118;
INSERT INTO choices (id, question_id, body) VALUES (514, 118, 'year in college (e.g., freshman, sophomore, etc.).');
INSERT INTO choices (id, question_id, body) VALUES (515, 118, 'not given in the quote above.');
INSERT INTO choices (id, question_id, body) VALUES (516, 118, 'There is no explanatory variable because this is an observational study.');

INSERT INTO questions (id, body, chapter) VALUES (119, 'A national sample survey interviewed 3,800 people age 18 and older nationwide by telephone. One question asked was whether they agreed with this statement: &quot;Some people say we should have a third major political party in this country in addition to the Democrats and Republicans.&quot;The population for this sample survey appears to be', 129);
INSERT INTO choices (id, question_id, body) VALUES (517, 119, 'all adult residents of the U.S.');
UPDATE questions SET answer = 517 WHERE id=119;
INSERT INTO choices (id, question_id, body) VALUES (518, 119, 'all registered voters.');
INSERT INTO choices (id, question_id, body) VALUES (519, 119, 'the 3,800 people who were interviewed.');
INSERT INTO choices (id, question_id, body) VALUES (520, 119, 'people who think we should have a third political party.');
INSERT INTO choices (id, question_id, body) VALUES (521, 119, 'all U.S. citizens.');

INSERT INTO questions (id, body, chapter) VALUES (120, 'A national sample survey interviewed 3,800 people age 18 and older nationwide by telephone. One question asked was whether they agreed with this statement: &quot;Some people say we should have a third major political party in this country in addition to the Democrats and Republicans.&quot;53% of the people asked agreed that we should have a third party. The number 53% is a', 129);
INSERT INTO choices (id, question_id, body) VALUES (522, 120, 'correlation.');
INSERT INTO choices (id, question_id, body) VALUES (523, 120, 'parameter.');
INSERT INTO choices (id, question_id, body) VALUES (524, 120, 'margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (525, 120, 'confidence level.');
INSERT INTO choices (id, question_id, body) VALUES (526, 120, 'statistic.');
UPDATE questions SET answer = 526 WHERE id=120;

INSERT INTO questions (id, body, chapter) VALUES (121, 'A national sample survey interviewed 3,800 people age 18 and older nationwide by telephone. One question asked was whether they agreed with this statement: &quot;Some people say we should have a third major political party in this country in addition to the Democrats and Republicans.&quot;The news article that reports the poll results says, &quot;The margin of error is plus or minus two percentage points.&quot; This means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (527, 121, 'we can be sure that between 51% and 55% of all Americans think we should have a third party.');
INSERT INTO choices (id, question_id, body) VALUES (528, 121, 'we can be 95% confident that 53% of all Americans think we should have a third party.');
INSERT INTO choices (id, question_id, body) VALUES (529, 121, 'we can be 95% confident that between 51% and 55% of all Americans think we should have a third party.');
UPDATE questions SET answer = 529 WHERE id=121;
INSERT INTO choices (id, question_id, body) VALUES (530, 121, 'we can be 95% confident that between 51% and 55% of the 3,800 people interviewed think we should have a third party.');
INSERT INTO choices (id, question_id, body) VALUES (531, 121, 'we can be between 93% and 97% confident that 53% of all Americans think we should have a third party.');

INSERT INTO questions (id, body, chapter) VALUES (122, 'A national sample survey interviewed 3,800 people age 18 and older nationwide by telephone. One question asked was whether they agreed with this statement: &quot;Some people say we should have a third major political party in this country in addition to the Democrats and Republicans.&quot;Among the poll respondents who were between 18 and 24 years old, 60% agreed that we should have a third political party. The margin of error that goes with this result is', 129);
INSERT INTO choices (id, question_id, body) VALUES (532, 122, 'less than +/- 2%, because there are fewer than 3,800 people 18 to 24 in the sample.');
INSERT INTO choices (id, question_id, body) VALUES (533, 122, 'greater than +/- 2%, because there are fewer than 3,800 people 18 to 24 in the sample.');
UPDATE questions SET answer = 533 WHERE id=122;
INSERT INTO choices (id, question_id, body) VALUES (534, 122, 'equal to +/- 2%, because this result comes from the same sample survey.');
INSERT INTO choices (id, question_id, body) VALUES (535, 122, 'less than +/- 2%, because only some of the population is between 18 and 24, so it\'s easier to estimate facts about them.');
INSERT INTO choices (id, question_id, body) VALUES (536, 122, 'greater than +/- 2%, because only some of the population is between 18 and 24, so it\'s harder to estimate facts about them.');

INSERT INTO questions (id, body, chapter) VALUES (123, 'A national sample survey interviewed 3,800 people age 18 and older nationwide by telephone. One question asked was whether they agreed with this statement: &quot;Some people say we should have a third major political party in this country in addition to the Democrats and Republicans.&quot;A possible source of nonsampling error in this sample survey is', 129);
INSERT INTO choices (id, question_id, body) VALUES (537, 123, 'some people chosen for the sample refused to answer questions.');
INSERT INTO choices (id, question_id, body) VALUES (538, 123, 'people without telephones could not be in the sample.');
INSERT INTO choices (id, question_id, body) VALUES (539, 123, 'some people never answered the phone in several calls.');
INSERT INTO choices (id, question_id, body) VALUES (540, 123, 'Both (a) and (c).');
UPDATE questions SET answer = 540 WHERE id=123;
INSERT INTO choices (id, question_id, body) VALUES (541, 123, 'All of (a), (b), and (c).');

INSERT INTO questions (id, body, chapter) VALUES (124, 'A national sample survey interviewed 3,800 people age 18 and older nationwide by telephone. One question asked was whether they agreed with this statement: &quot;Some people say we should have a third major political party in this country in addition to the Democrats and Republicans.&quot;Answers (A), (B), (C) of the previous question list three sources of error in an opinion poll. Which of these sources is included in the +/- 2% margin of error announced for the poll?', 129);
INSERT INTO choices (id, question_id, body) VALUES (542, 124, 'Only source (A).');
INSERT INTO choices (id, question_id, body) VALUES (543, 124, 'Only source (B).');
INSERT INTO choices (id, question_id, body) VALUES (544, 124, 'Only source (C).');
INSERT INTO choices (id, question_id, body) VALUES (545, 124, 'All three sources of error.');
INSERT INTO choices (id, question_id, body) VALUES (546, 124, 'None of these sources of error.');
UPDATE questions SET answer = 546 WHERE id=124;

INSERT INTO questions (id, body, chapter) VALUES (125, 'A national sample survey interviewed 3,800 people age 18 and older nationwide by telephone. One question asked was whether they agreed with this statement: &quot;Some people say we should have a third major political party in this country in addition to the Democrats and Republicans.&quot;The most common national opinion polls have a margin of error of +/- 3%. This survey has a smaller margin of error (+/- 2%) because', 129);
INSERT INTO choices (id, question_id, body) VALUES (547, 125, 'the size of the sample is smaller than the usual sample size, which is about 5,000 people.');
INSERT INTO choices (id, question_id, body) VALUES (548, 125, 'the confidence level is less than that of most polls.');
INSERT INTO choices (id, question_id, body) VALUES (549, 125, 'the size of the sample is larger than the usual sample size, which is about 1,500 people.');
UPDATE questions SET answer = 549 WHERE id=125;
INSERT INTO choices (id, question_id, body) VALUES (550, 125, 'the confidence level is greater than that of most polls.');
INSERT INTO choices (id, question_id, body) VALUES (551, 125, 'fewer people refused to answer questions in this poll than in most polls.');

INSERT INTO questions (id, body, chapter) VALUES (126, 'You want to take an SRS of 50 of the 816 students who live in a college dormitory.  You label the students 001 to 816 in alphabetical order. In the table of random digits you read the entries<br /><br /> 96746  12149  37823  71868  18442  35119  62103  39244The first three students in your sample have labels', 129);
INSERT INTO choices (id, question_id, body) VALUES (552, 126, '967, 461, 214');
INSERT INTO choices (id, question_id, body) VALUES (553, 126, '967, 121, 378');
INSERT INTO choices (id, question_id, body) VALUES (554, 126, '461, 214, 937');
INSERT INTO choices (id, question_id, body) VALUES (555, 126, '461, 214, 718');
UPDATE questions SET answer = 555 WHERE id=126;
INSERT INTO choices (id, question_id, body) VALUES (556, 126, '674, 612, 149');

INSERT INTO questions (id, body, chapter) VALUES (127, 'You want to take an SRS of 50 of the 816 students who live in a college dormitory.  You label the students 001 to 816 in alphabetical order. In the table of random digits you read the entries<br /><br /> 96746  12149  37823  71868  18442  35119  62103  39244Another correct choice of labels for the 816 students is', 129);
INSERT INTO choices (id, question_id, body) VALUES (557, 127, '000 to 816 in alphabetical order.');
INSERT INTO choices (id, question_id, body) VALUES (558, 127, '001 to 816 in order of the student ID numbers.');
INSERT INTO choices (id, question_id, body) VALUES (559, 127, '000 to 815 in alphabetical order.');
INSERT INTO choices (id, question_id, body) VALUES (560, 127, 'Both (B) and (C) are correct.');
UPDATE questions SET answer = 560 WHERE id=127;
INSERT INTO choices (id, question_id, body) VALUES (561, 127, 'All of (A), (B), and (C) are correct.');

INSERT INTO questions (id, body, chapter) VALUES (128, 'You want to take an SRS of 50 of the 816 students who live in a college dormitory.  You label the students 001 to 816 in alphabetical order. In the table of random digits you read the entries<br /><br /> 96746  12149  37823  71868  18442  35119  62103  39244Which of these statements about the table of random digits is true?', 129);
INSERT INTO choices (id, question_id, body) VALUES (562, 128, 'Every row must have exactly the same number of 0\'s and 1\'s.');
INSERT INTO choices (id, question_id, body) VALUES (563, 128, 'In the entire table, there are exactly the same number of 0\'s and 1\'s.');
INSERT INTO choices (id, question_id, body) VALUES (564, 128, 'If you look at 100 consecutive pairs of digits anywhere in the table, exactly 1 pair is 00.');
INSERT INTO choices (id, question_id, body) VALUES (565, 128, 'All of these are true.');
INSERT INTO choices (id, question_id, body) VALUES (566, 128, 'None of these is true.');
UPDATE questions SET answer = 566 WHERE id=128;

INSERT INTO questions (id, body, chapter) VALUES (129, 'You want to ask a sample of undergraduates at State Tech how they feel about a proposal to delay future Spring Breaks by a week. Opinions may differ depending on the class of the student, especially because seniors will have left before the policy is changed. So you take separate SRS\'s of seniors and non-seniors and combine them to form your sample.You used a', 129);
INSERT INTO choices (id, question_id, body) VALUES (567, 129, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (568, 129, 'stratified random sample.');
UPDATE questions SET answer = 568 WHERE id=129;
INSERT INTO choices (id, question_id, body) VALUES (569, 129, 'multistage sample.');
INSERT INTO choices (id, question_id, body) VALUES (570, 129, 'completely randomized experiment.');
INSERT INTO choices (id, question_id, body) VALUES (571, 129, 'randomized block experiment.');

INSERT INTO questions (id, body, chapter) VALUES (130, 'You want to ask a sample of undergraduates at State Tech how they feel about a proposal to delay future Spring Breaks by a week. Opinions may differ depending on the class of the student, especially because seniors will have left before the policy is changed. So you take separate SRS\'s of seniors and non-seniors and combine them to form your sample.The results of your Spring Break survey are as follows: 72% of the non-seniors favor delaying Spring Break by a week, but only 28% of the seniors do. If you wanted an estimate of the percentage of all State Tech undergraduates who favor delaying the break, which of the following would be the most reasonable?', 129);
INSERT INTO choices (id, question_id, body) VALUES (572, 130, '28% because seniors are more experienced.');
INSERT INTO choices (id, question_id, body) VALUES (573, 130, '100% because both groups should be combined and 72 + 28 =100.');
INSERT INTO choices (id, question_id, body) VALUES (574, 130, '72% because seniors\' opinions don\'t matter.');
INSERT INTO choices (id, question_id, body) VALUES (575, 130, '50% because 50 is the average of 28 and 72');
INSERT INTO choices (id, question_id, body) VALUES (576, 130, '61% = (3/4)(72%) + (1/4)(28%), taking into account that there are about three times as many non-seniors as seniors.');
UPDATE questions SET answer = 576 WHERE id=130;

INSERT INTO questions (id, body, chapter) VALUES (131, '&quot;Congress passed a ban on the sale of assault weapons.  Now there is a move to repeal that ban. Do you agree that the ban on sale of assault weapons should be repealed?&quot; You ask that question to an SRS of 1000 adults in Texas (population 18 million people) and to a separate SRS of 1000 adults in Indiana (population 5.7 million people).  You make 95% confidence statements about the percents of all adults in both states who agree.Your margin of error for Indiana is', 129);
INSERT INTO choices (id, question_id, body) VALUES (577, 131, 'the same as in Texas, because the two SRS\'s are the same size.');
UPDATE questions SET answer = 577 WHERE id=131;
INSERT INTO choices (id, question_id, body) VALUES (578, 131, 'larger than in Texas, because there are fewer people in Indiana.');
INSERT INTO choices (id, question_id, body) VALUES (579, 131, 'smaller than in Texas, because there are fewer people in Indiana.');
INSERT INTO choices (id, question_id, body) VALUES (580, 131, 'may be either smaller or larger than in Texas, because the sample result varies due to chance.');
INSERT INTO choices (id, question_id, body) VALUES (581, 131, 'smaller, because everything is bigger in Texas.');

INSERT INTO questions (id, body, chapter) VALUES (132, '&quot;Congress passed a ban on the sale of assault weapons.  Now there is a move to repeal that ban. Do you agree that the ban on sale of assault weapons should be repealed?&quot; You ask that question to an SRS of 1000 adults in Texas (population 18 million people) and to a separate SRS of 1000 adults in Indiana (population 5.7 million people).  You make 95% confidence statements about the percents of all adults in both states who agree.It would be cheaper to just announce the question on TV and ask people to call in with their opinions.  Is this the best approach?', 129);
INSERT INTO choices (id, question_id, body) VALUES (582, 132, 'This is a good way to get information about the opinions of all adults.');
INSERT INTO choices (id, question_id, body) VALUES (583, 132, 'This is a bad idea, because if only a few people call in your margin of error will be large.');
INSERT INTO choices (id, question_id, body) VALUES (584, 132, 'This is a bad idea, because allowing people to volunteer may result in large bias.');
UPDATE questions SET answer = 584 WHERE id=132;
INSERT INTO choices (id, question_id, body) VALUES (585, 132, 'This is a bad idea, because there is no control group.');
INSERT INTO choices (id, question_id, body) VALUES (586, 132, 'This is a bad idea, because the study isn\'t double-blind.');

INSERT INTO questions (id, body, chapter) VALUES (133, 'You wonder if your new TV commercial for Rock \'n Roll beer is more effective than the old one. So you design an experiment. Random samples of men and of women are each randomly allocated to two groups.  One group views the old commercial, while the other views the new one.  The amount of Rock \'n Roll beer bought by each subject in the next 48 hours is recorded.  What type of experimental design is this?', 129);
INSERT INTO choices (id, question_id, body) VALUES (587, 133, 'This is a randomized block design.');
UPDATE questions SET answer = 587 WHERE id=133;
INSERT INTO choices (id, question_id, body) VALUES (588, 133, 'This is a matched pairs design.');
INSERT INTO choices (id, question_id, body) VALUES (589, 133, 'This is a completely randomized design with one factor.');
INSERT INTO choices (id, question_id, body) VALUES (590, 133, 'This is a completely randomized design with two factors.');
INSERT INTO choices (id, question_id, body) VALUES (591, 133, 'This is a completely randomized design with four factors.');

INSERT INTO questions (id, body, chapter) VALUES (134, 'Does taking large amounts of vitamins protect against cancer?  To study this question, researchers enrolled 29,000 Finnish men, all smokers over the age of 50.  Half of the men took vitamin supplements, and others took a dummy pill that has no active ingredient.  The researchers followed all the men for eight years. At the end of the study, men in the vitamin group were no less likely to have cancer than men in the other group. This study cast doubt on the popular idea that taking lots of vitamins can reduce the risk of cancer.<br /><br />The study design looked like this:<br /><br /><img src="/images/freeman/candc/f1-134.jpg" /><br />The statistical name for this study design is', 129);
INSERT INTO choices (id, question_id, body) VALUES (592, 134, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (593, 134, 'stratified random sample.');
INSERT INTO choices (id, question_id, body) VALUES (594, 134, 'randomized comparative experiment.');
UPDATE questions SET answer = 594 WHERE id=134;
INSERT INTO choices (id, question_id, body) VALUES (595, 134, 'multistage sample.');
INSERT INTO choices (id, question_id, body) VALUES (596, 134, 'observational study.');

INSERT INTO questions (id, body, chapter) VALUES (135, 'Does taking large amounts of vitamins protect against cancer?  To study this question, researchers enrolled 29,000 Finnish men, all smokers over the age of 50.  Half of the men took vitamin supplements, and others took a dummy pill that has no active ingredient.  The researchers followed all the men for eight years. At the end of the study, men in the vitamin group were no less likely to have cancer than men in the other group. This study cast doubt on the popular idea that taking lots of vitamins can reduce the risk of cancer.<br /><br />The study design looked like this:<br /><br /><img src="/images/freeman/candc/f1-134.jpg" /><br />The method used to form the groups should appear in the outline at the point marked (Question A).  What is this method?', 129);
INSERT INTO choices (id, question_id, body) VALUES (597, 135, 'Random allocation.');
UPDATE questions SET answer = 597 WHERE id=135;
INSERT INTO choices (id, question_id, body) VALUES (598, 135, 'Voluntary response.');
INSERT INTO choices (id, question_id, body) VALUES (599, 135, 'First come, first served.');
INSERT INTO choices (id, question_id, body) VALUES (600, 135, 'The double-blind method.');
INSERT INTO choices (id, question_id, body) VALUES (601, 135, 'Stratified sampling.');

INSERT INTO questions (id, body, chapter) VALUES (136, 'Does taking large amounts of vitamins protect against cancer?  To study this question, researchers enrolled 29,000 Finnish men, all smokers over the age of 50.  Half of the men took vitamin supplements, and others took a dummy pill that has no active ingredient.  The researchers followed all the men for eight years. At the end of the study, men in the vitamin group were no less likely to have cancer than men in the other group. This study cast doubt on the popular idea that taking lots of vitamins can reduce the risk of cancer.<br /><br />The study design looked like this:<br /><br /><img src="/images/freeman/candc/f1-134.jpg" /><br />Treatment 2 was a dummy pill.  Such a dummy treatment is called a', 129);
INSERT INTO choices (id, question_id, body) VALUES (602, 136, 'double blind.');
INSERT INTO choices (id, question_id, body) VALUES (603, 136, 'categorical variable.');
INSERT INTO choices (id, question_id, body) VALUES (604, 136, 'nonsampling error.');
INSERT INTO choices (id, question_id, body) VALUES (605, 136, 'placebo.');
UPDATE questions SET answer = 605 WHERE id=136;
INSERT INTO choices (id, question_id, body) VALUES (606, 136, 'comparative.');

INSERT INTO questions (id, body, chapter) VALUES (137, 'Does taking large amounts of vitamins protect against cancer?  To study this question, researchers enrolled 29,000 Finnish men, all smokers over the age of 50.  Half of the men took vitamin supplements, and others took a dummy pill that has no active ingredient.  The researchers followed all the men for eight years. At the end of the study, men in the vitamin group were no less likely to have cancer than men in the other group. This study cast doubt on the popular idea that taking lots of vitamins can reduce the risk of cancer.<br /><br />The study design looked like this:<br /><br /><img src="/images/freeman/candc/f1-134.jpg" /><br />The response variable should be named in the outline at (Question C).  The response variable in this study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (607, 137, 'whether or not a subject took vitamins.');
INSERT INTO choices (id, question_id, body) VALUES (608, 137, '29,000 Finnish men.');
INSERT INTO choices (id, question_id, body) VALUES (609, 137, 'random allocation.');
INSERT INTO choices (id, question_id, body) VALUES (610, 137, 'a confidence statement.');
INSERT INTO choices (id, question_id, body) VALUES (611, 137, 'whether or not a subject developed cancer.');
UPDATE questions SET answer = 611 WHERE id=137;

INSERT INTO questions (id, body, chapter) VALUES (138, 'Does taking large amounts of vitamins protect against cancer?  To study this question, researchers enrolled 29,000 Finnish men, all smokers over the age of 50.  Half of the men took vitamin supplements, and others took a dummy pill that has no active ingredient.  The researchers followed all the men for eight years. At the end of the study, men in the vitamin group were no less likely to have cancer than men in the other group. This study cast doubt on the popular idea that taking lots of vitamins can reduce the risk of cancer.<br /><br />The study design looked like this:<br /><br /><img src="/images/freeman/candc/f1-134.jpg" /><br />In order to avoid unconscious bias, neither the subjects not the doctors who examined them knew whether a particular subject was taking vitamins or dummy pills.  This is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (612, 138, 'the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (613, 138, 'the double-blind technique.');
UPDATE questions SET answer = 613 WHERE id=138;
INSERT INTO choices (id, question_id, body) VALUES (614, 138, 'the retrospective method.');
INSERT INTO choices (id, question_id, body) VALUES (615, 138, 'stratified sampling.');
INSERT INTO choices (id, question_id, body) VALUES (616, 138, 'internal validity.');

INSERT INTO questions (id, body, chapter) VALUES (139, 'Does taking large amounts of vitamins protect against cancer?  To study this question, researchers enrolled 29,000 Finnish men, all smokers over the age of 50.  Half of the men took vitamin supplements, and others took a dummy pill that has no active ingredient.  The researchers followed all the men for eight years. At the end of the study, men in the vitamin group were no less likely to have cancer than men in the other group. This study cast doubt on the popular idea that taking lots of vitamins can reduce the risk of cancer.<br /><br />The study design looked like this:<br /><br /><img src="/images/freeman/candc/f1-134.jpg" /><br />A weakness of this study is that', 129);
INSERT INTO choices (id, question_id, body) VALUES (617, 139, 'it isn\'t clear that the results apply to women.');
UPDATE questions SET answer = 617 WHERE id=139;
INSERT INTO choices (id, question_id, body) VALUES (618, 139, 'observational studies give only weak evidence for causation.');
INSERT INTO choices (id, question_id, body) VALUES (619, 139, 'the people who took vitamins may have had other good habits.');
INSERT INTO choices (id, question_id, body) VALUES (620, 139, 'the response is measured in a biased way.');
INSERT INTO choices (id, question_id, body) VALUES (621, 139, 'nonsampling errors may be large.');

INSERT INTO questions (id, body, chapter) VALUES (140, 'A company database contains the following information about each employee: age, date hired, sex (male or female), ethnic group (Asian, black, Hispanic, etc.), job category (clerical, management, technical, etc.), yearly salary.  Which of the following lists of variables are <em>all</em> categorical?', 129);
INSERT INTO choices (id, question_id, body) VALUES (622, 140, 'age, sex, ethnic group.');
INSERT INTO choices (id, question_id, body) VALUES (623, 140, 'sex, ethnic group, job category.');
UPDATE questions SET answer = 623 WHERE id=140;
INSERT INTO choices (id, question_id, body) VALUES (624, 140, 'ethnic group, job category, yearly salary.');
INSERT INTO choices (id, question_id, body) VALUES (625, 140, 'yearly salary, age.');
INSERT INTO choices (id, question_id, body) VALUES (626, 140, 'age, date hired.');

INSERT INTO questions (id, body, chapter) VALUES (141, 'A company used to give IQ tests to all job applicants.  This is now illegal because IQ is not related to the performance of workers in all the company\'s jobs.  That is, IQ as a measure of future performance on the job is', 129);
INSERT INTO choices (id, question_id, body) VALUES (627, 141, 'biased.');
INSERT INTO choices (id, question_id, body) VALUES (628, 141, 'invalid.');
UPDATE questions SET answer = 628 WHERE id=141;
INSERT INTO choices (id, question_id, body) VALUES (629, 141, 'imprecise.');
INSERT INTO choices (id, question_id, body) VALUES (630, 141, 'unreliable.');
INSERT INTO choices (id, question_id, body) VALUES (631, 141, 'a sampling error.');

INSERT INTO questions (id, body, chapter) VALUES (142, 'You work for an advertising agency that is preparing a new television commercial to appeal to women.  You have been asked to design an experiment to compare the effectiveness of three versions of the commercial.  Each subject will be shown one of the three versions and then asked her attitude toward the product.  You think there may be large differences between women who are employed and those who are not.  Because of these differences, you should use', 129);
INSERT INTO choices (id, question_id, body) VALUES (632, 142, 'a completely randomized design.');
INSERT INTO choices (id, question_id, body) VALUES (633, 142, 'a categorical variable.');
INSERT INTO choices (id, question_id, body) VALUES (634, 142, 'a block design.');
UPDATE questions SET answer = 634 WHERE id=142;
INSERT INTO choices (id, question_id, body) VALUES (635, 142, 'a matched pairs design.');
INSERT INTO choices (id, question_id, body) VALUES (636, 142, 'a multistage sample.');

INSERT INTO questions (id, body, chapter) VALUES (143, 'The Gallup poll interviews 1600 people. Of these, 18% say that they jog regularly.  The news report adds that &quot;The poll had a margin of error of plus or minus three percentage points.&quot;You can safely conclude that', 129);
INSERT INTO choices (id, question_id, body) VALUES (637, 143, '95% of all Gallup poll samples like this one give answers within +/- 3% of the true population value.');
UPDATE questions SET answer = 637 WHERE id=143;
INSERT INTO choices (id, question_id, body) VALUES (638, 143, 'the percent of the population who jog is certain to be between 15% and 21%.');
INSERT INTO choices (id, question_id, body) VALUES (639, 143, '95% of the population jog between 15% and 21% of the time.');
INSERT INTO choices (id, question_id, body) VALUES (640, 143, 'we can be  3% confident that the sample result is true.');
INSERT INTO choices (id, question_id, body) VALUES (641, 143, 'if Gallup took many samples, 95% of them would find that exactly 18% of the people in the sample jog.');

INSERT INTO questions (id, body, chapter) VALUES (144, 'The Gallup poll interviews 1600 people. Of these, 18% say that they jog regularly.  The news report adds that &quot;The poll had a margin of error of plus or minus three percentage points.&quot;How many of the 1600 people in the Gallup Poll sample said that they jog regularly?', 129);
INSERT INTO choices (id, question_id, body) VALUES (642, 144, '1312');
INSERT INTO choices (id, question_id, body) VALUES (643, 144, '288');
UPDATE questions SET answer = 643 WHERE id=144;
INSERT INTO choices (id, question_id, body) VALUES (644, 144, '89');
INSERT INTO choices (id, question_id, body) VALUES (645, 144, 'Between 240 and 336, because of the margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (646, 144, 'We can\'t say exactly, because we are only 95% confident.');

INSERT INTO questions (id, body, chapter) VALUES (145, 'Amy wants to spend a summer in France after she graduates.  She is worried that this will be too expensive because the dollar buys fewer French francs now.  When Amy entered college, a dollar was worth 6.5 francs.  Now a dollar is worth only 5.25 francs.  By about what percent has the value of the dollar in francs decreased?', 129);
INSERT INTO choices (id, question_id, body) VALUES (647, 145, '10%');
INSERT INTO choices (id, question_id, body) VALUES (648, 145, '19%');
UPDATE questions SET answer = 648 WHERE id=145;
INSERT INTO choices (id, question_id, body) VALUES (649, 145, '24%');
INSERT INTO choices (id, question_id, body) VALUES (650, 145, '76%');
INSERT INTO choices (id, question_id, body) VALUES (651, 145, '81%');

INSERT INTO questions (id, body, chapter) VALUES (146, 'An ad for a new mouth rinse says that it &quot;reduces plaque on teeth by 300 percent.&quot;  What does this mean?', 129);
INSERT INTO choices (id, question_id, body) VALUES (652, 146, 'It means that three-tenths of the plaque is removed, because 300/1000 = 0.3, or three-tenths.');
INSERT INTO choices (id, question_id, body) VALUES (653, 146, 'It\'s nonsense, because plaque is a categorical variable, so percents don\'t make sense.');
INSERT INTO choices (id, question_id, body) VALUES (654, 146, 'It means that there is 3 times as much plaque before using the rinse as there is after using it.');
INSERT INTO choices (id, question_id, body) VALUES (655, 146, 'It\'s nonsense, because removing 100 percent of the plaque already removes all of it.');
UPDATE questions SET answer = 655 WHERE id=146;
INSERT INTO choices (id, question_id, body) VALUES (656, 146, 'It\'s nonsense because percents only make sense for counts, and amount of plaque isn\'t a count.');

INSERT INTO questions (id, body, chapter) VALUES (147, 'All statistical studies that collect data from people should follow some basic ethical standards.  Some of these ethical standards are:', 129);
INSERT INTO choices (id, question_id, body) VALUES (657, 147, 'Always use random selection to choose among people.');
INSERT INTO choices (id, question_id, body) VALUES (658, 147, 'Keep data on individuals confidential.');
INSERT INTO choices (id, question_id, body) VALUES (659, 147, 'Get informed consent before collecting data.');
INSERT INTO choices (id, question_id, body) VALUES (660, 147, 'Both (B) and (C).');
UPDATE questions SET answer = 660 WHERE id=147;
INSERT INTO choices (id, question_id, body) VALUES (661, 147, 'All of (A), (B), and (C).');

INSERT INTO questions (id, body, chapter) VALUES (148, 'Any institution that does research with human subjects must have an Institutional Review Board.  This board reviews all planned research with human subjects in advance in order to', 129);
INSERT INTO choices (id, question_id, body) VALUES (662, 148, 'be sure that the research has some scientific value.');
INSERT INTO choices (id, question_id, body) VALUES (663, 148, 'be sure that the researchers are qualified to do the research.');
INSERT INTO choices (id, question_id, body) VALUES (664, 148, 'be sure that the research obeys all the standards that protect the human subjects from harm.');
UPDATE questions SET answer = 664 WHERE id=148;
INSERT INTO choices (id, question_id, body) VALUES (665, 148, 'be sure that the statistical design of the research is sound, so that useful data will result.');
INSERT INTO choices (id, question_id, body) VALUES (666, 148, 'all of the above.');

INSERT INTO questions (id, body, chapter) VALUES (149, 'An experiment compares the taste of a new spaghetti sauce with the taste of a successful sauce.  Each of a number of tasters tastes both sauces (in random order) and says which tastes better. This is called a', 129);
INSERT INTO choices (id, question_id, body) VALUES (667, 149, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (668, 149, 'stratified random sample.');
INSERT INTO choices (id, question_id, body) VALUES (669, 149, 'completely randomized design.');
INSERT INTO choices (id, question_id, body) VALUES (670, 149, 'matched pairs design.');
UPDATE questions SET answer = 670 WHERE id=149;
INSERT INTO choices (id, question_id, body) VALUES (671, 149, 'double-blind design.');

INSERT INTO questions (id, body, chapter) VALUES (150, 'You want to ask a sample of professors at your school how they feel about the tenure system for faculty.  You realize that opinions may differ depending on the rank of the professor, especially because assistant professors do not have tenure.  So you take separate SRS\'s of assistant, associate, and full professors and combine them to form your sample.  You used a', 129);
INSERT INTO choices (id, question_id, body) VALUES (672, 150, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (673, 150, 'stratified random sample.');
UPDATE questions SET answer = 673 WHERE id=150;
INSERT INTO choices (id, question_id, body) VALUES (674, 150, 'multistage sample.');
INSERT INTO choices (id, question_id, body) VALUES (675, 150, 'completely randomized experiment.');
INSERT INTO choices (id, question_id, body) VALUES (676, 150, 'randomized block experiment.');

INSERT INTO questions (id, body, chapter) VALUES (151, 'The general term for the kind of samples recommended by statisticians is <em>probability sample</em>.  Which of these are accurate statements about all probability samples of <em>n</em> individuals?', 129);
INSERT INTO choices (id, question_id, body) VALUES (677, 151, 'All samples of size <em>n</em> can be chosen, and all have the same chance to be chosen.');
INSERT INTO choices (id, question_id, body) VALUES (678, 151, 'There may be some samples of size <em>n</em> that can\'t be chosen.');
INSERT INTO choices (id, question_id, body) VALUES (679, 151, 'There may be samples of size <em>n</em> that can be chosen, but have different chances to be chosen.');
INSERT INTO choices (id, question_id, body) VALUES (680, 151, 'Both (B) and (C) are true.');
UPDATE questions SET answer = 680 WHERE id=151;
INSERT INTO choices (id, question_id, body) VALUES (681, 151, 'None of these statements is true.');

INSERT INTO questions (id, body, chapter) VALUES (152, 'Sale of eggs that are contaminated with salmonella can cause food poisoning among consumers.  A large egg producer takes an SRS of 200 eggs from all the eggs shipped in one day.  The laboratory reports that 9 of these eggs had salmonella contamination.  Unknown to the producer, 0.1% (one-tenth of one percent) of all eggs shipped had salmonella.In this situation,', 129);
INSERT INTO choices (id, question_id, body) VALUES (682, 152, '0.1% is a parameter and 9 is a statistic.');
UPDATE questions SET answer = 682 WHERE id=152;
INSERT INTO choices (id, question_id, body) VALUES (683, 152, '9 is a parameter and 0.1% is a statistic.');
INSERT INTO choices (id, question_id, body) VALUES (684, 152, 'both 0.1% and 9 are parameters.');
INSERT INTO choices (id, question_id, body) VALUES (685, 152, 'both 0.1% and 9 are statistics.');
INSERT INTO choices (id, question_id, body) VALUES (686, 152, '0.1% is an estimate and 9 is a margin of error.');

INSERT INTO questions (id, body, chapter) VALUES (153, 'Sale of eggs that are contaminated with salmonella can cause food poisoning among consumers.  A large egg producer takes an SRS of 200 eggs from all the eggs shipped in one day.  The laboratory reports that 9 of these eggs had salmonella contamination.  Unknown to the producer, 0.1% (one-tenth of one percent) of all eggs shipped had salmonella.Based on the sample data, the producer estimates that the proportion of contaminated eggs in the population is about', 129);
INSERT INTO choices (id, question_id, body) VALUES (687, 153, '0.2%');
INSERT INTO choices (id, question_id, body) VALUES (688, 153, '0.045%.');
INSERT INTO choices (id, question_id, body) VALUES (689, 153, '3%.');
INSERT INTO choices (id, question_id, body) VALUES (690, 153, '4.5%.');
UPDATE questions SET answer = 690 WHERE id=153;
INSERT INTO choices (id, question_id, body) VALUES (691, 153, '20%');

INSERT INTO questions (id, body, chapter) VALUES (154, 'Sale of eggs that are contaminated with salmonella can cause food poisoning among consumers.  A large egg producer takes an SRS of 200 eggs from all the eggs shipped in one day.  The laboratory reports that 9 of these eggs had salmonella contamination.  Unknown to the producer, 0.1% (one-tenth of one percent) of all eggs shipped had salmonella.A statistician tells the producer that the margin of error for a 95% confidence statement for these data is about plus or minus 3 percentage points.  The producer therefore reports that between 1.5% and 7.5% (that\'s 4.5% +/- 3%) of all eggs are contaminated. This isn\'t right&#8212;only 0.1% are contaminated.  What went wrong?', 129);
INSERT INTO choices (id, question_id, body) VALUES (692, 154, 'The 4.5% is wrong&#8212;see my answer to the previous problem for the correct estimate.');
INSERT INTO choices (id, question_id, body) VALUES (693, 154, 'A 95% confidence statement is only right for 95% of all possible samples.  This must be one of the 5% for which we get an incorrect conclusion.');
UPDATE questions SET answer = 693 WHERE id=154;
INSERT INTO choices (id, question_id, body) VALUES (694, 154, 'The 4.5% is correct, and it\'s impossible for the truth to lie outside the margin of error, so there must be another mistake.  Maybe the laboratory counted contaminated eggs incorrectly.');

INSERT INTO questions (id, body, chapter) VALUES (155, 'Sale of eggs that are contaminated with salmonella can cause food poisoning among consumers.  A large egg producer takes an SRS of 200 eggs from all the eggs shipped in one day.  The laboratory reports that 9 of these eggs had salmonella contamination.  Unknown to the producer, 0.1% (one-tenth of one percent) of all eggs shipped had salmonella.If the producer took an SRS of 400 eggs instead of 200, the new margin of error would be', 129);
INSERT INTO choices (id, question_id, body) VALUES (695, 155, 'the same as before, because the population of eggs is the same.');
INSERT INTO choices (id, question_id, body) VALUES (696, 155, 'smaller than before, because the sample is larger.');
UPDATE questions SET answer = 696 WHERE id=155;
INSERT INTO choices (id, question_id, body) VALUES (697, 155, 'larger than before, because the sample is larger.');
INSERT INTO choices (id, question_id, body) VALUES (698, 155, 'random in size, could be either larger or smaller than before.');
INSERT INTO choices (id, question_id, body) VALUES (699, 155, 'can\'t tell, because the size of the sample doesn\'t control the margin of error.');

INSERT INTO questions (id, body, chapter) VALUES (156, 'The histograms below describe the values taken by three sample statistics in several hundred samples from the same population.  The true value of the population parameter is marked on each histogram.<br /> <img src="/images/freeman/candc/f1-156.jpg" /><br />The name for the pattern of values that a statistic takes when we sample repeatedly from the same population is', 129);
INSERT INTO choices (id, question_id, body) VALUES (700, 156, 'the bias of the statistic.');
INSERT INTO choices (id, question_id, body) VALUES (701, 156, 'the distribution of the statistic.');
UPDATE questions SET answer = 701 WHERE id=156;
INSERT INTO choices (id, question_id, body) VALUES (702, 156, 'the scale of measurement of the statistic.');
INSERT INTO choices (id, question_id, body) VALUES (703, 156, 'the variability of the statistic.');
INSERT INTO choices (id, question_id, body) VALUES (704, 156, 'the sampling error.');

INSERT INTO questions (id, body, chapter) VALUES (157, 'The histograms below describe the values taken by three sample statistics in several hundred samples from the same population.  The true value of the population parameter is marked on each histogram.<br /> <img src="/images/freeman/candc/f1-156.jpg" /><br />The statistic that has the largest bias among these three is', 129);
INSERT INTO choices (id, question_id, body) VALUES (705, 157, 'A.');
INSERT INTO choices (id, question_id, body) VALUES (706, 157, 'B.');
INSERT INTO choices (id, question_id, body) VALUES (707, 157, 'C.');
UPDATE questions SET answer = 707 WHERE id=157;
INSERT INTO choices (id, question_id, body) VALUES (708, 157, 'A and B have similar bias, and it is larger than the bias of C.');
INSERT INTO choices (id, question_id, body) VALUES (709, 157, 'B and C have similar bias, and it is larger than the bias of A.');

INSERT INTO questions (id, body, chapter) VALUES (158, 'The histograms below describe the values taken by three sample statistics in several hundred samples from the same population.  The true value of the population parameter is marked on each histogram.<br /> <img src="/images/freeman/candc/f1-156.jpg" /><br />The statistic that has the lowest variability among these three is', 129);
INSERT INTO choices (id, question_id, body) VALUES (710, 158, 'A.');
UPDATE questions SET answer = 710 WHERE id=158;
INSERT INTO choices (id, question_id, body) VALUES (711, 158, 'B.');
INSERT INTO choices (id, question_id, body) VALUES (712, 158, 'C.');
INSERT INTO choices (id, question_id, body) VALUES (713, 158, 'A and B have similar variability, and it is less than the variability of C.');
INSERT INTO choices (id, question_id, body) VALUES (714, 158, 'B and C have similar variability, and it is greater than the variability of A.');

INSERT INTO questions (id, body, chapter) VALUES (159, 'The histograms below describe the values taken by three sample statistics in several hundred samples from the same population.  The true value of the population parameter is marked on each histogram.<br /> <img src="/images/freeman/candc/f1-156.jpg" /><br />Based on the performance of the three statistics in many samples, which is preferred as an estimate of the parameter?', 129);
INSERT INTO choices (id, question_id, body) VALUES (715, 159, 'A.');
UPDATE questions SET answer = 715 WHERE id=159;
INSERT INTO choices (id, question_id, body) VALUES (716, 159, 'B.');
INSERT INTO choices (id, question_id, body) VALUES (717, 159, 'C.');
INSERT INTO choices (id, question_id, body) VALUES (718, 159, 'either A or B would be equally good.');
INSERT INTO choices (id, question_id, body) VALUES (719, 159, 'either B or C would be equally good.');

INSERT INTO questions (id, body, chapter) VALUES (160, 'You plan to give a math achievement test to samples of 15 year-olds from both the U.S. and Korea in order to compare mathematics knowledge in the two countries.  In each country, you will choose<br /><br />300 students from low-income families<br />400 students from middle-income families<br />200 students from high-income families<br /><br />The sample from Korea is a', 129);
INSERT INTO choices (id, question_id, body) VALUES (720, 160, 'multistage sample.');
INSERT INTO choices (id, question_id, body) VALUES (721, 160, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (722, 160, 'randomized comparative experiment.');
INSERT INTO choices (id, question_id, body) VALUES (723, 160, 'voluntary response sample.');
INSERT INTO choices (id, question_id, body) VALUES (724, 160, 'stratified sample.');
UPDATE questions SET answer = 724 WHERE id=160;

INSERT INTO questions (id, body, chapter) VALUES (161, 'Were the extinctions that occurred in the last ice age more frequent among species of animals with large body sizes?  A researcher gathers data on the average body mass (in kilograms) of all species known to have existed at that time.These measurements are values of', 129);
INSERT INTO choices (id, question_id, body) VALUES (725, 161, 'a categorical variable.');
INSERT INTO choices (id, question_id, body) VALUES (726, 161, 'a quantitative variable.');
UPDATE questions SET answer = 726 WHERE id=161;
INSERT INTO choices (id, question_id, body) VALUES (727, 161, 'an invalid variable.');
INSERT INTO choices (id, question_id, body) VALUES (728, 161, 'a margin of error.');

INSERT INTO questions (id, body, chapter) VALUES (162, 'Were the extinctions that occurred in the last ice age more frequent among species of animals with large body sizes?  A researcher gathers data on the average body mass (in kilograms) of all species known to have existed at that time.What are the explanatory and response variables?', 129);
INSERT INTO choices (id, question_id, body) VALUES (729, 162, 'There is no explanatory-response distinction in this situation.');
INSERT INTO choices (id, question_id, body) VALUES (730, 162, 'Explanatory: body mass of a species. Response: whether the species went extinct.');
UPDATE questions SET answer = 730 WHERE id=162;
INSERT INTO choices (id, question_id, body) VALUES (731, 162, 'Explanatory: the ice age. Response: whether a species went extinct.');
INSERT INTO choices (id, question_id, body) VALUES (732, 162, 'Explanatory: whether a species went extinct. Response: the body mass of the species.');
INSERT INTO choices (id, question_id, body) VALUES (733, 162, 'Explanatory: the ice age.  Response: the body mass of a species.');

INSERT INTO questions (id, body, chapter) VALUES (163, 'You want to know the opinions of American school teachers about establishing a national test for high school graduation.  You obtain a list of the members of the National Education Association (the largest teachers\' union) and mail a questionnaire to 2500 teachers chosen at random from this list.  In all 1347 teachers return the questionnaire.In this situation, the <em>population</em> is', 129);
INSERT INTO choices (id, question_id, body) VALUES (734, 163, 'the 1347 teachers who mail back the questionnaire.');
INSERT INTO choices (id, question_id, body) VALUES (735, 163, 'the 2500 teachers to whom you mailed the questionnaire.');
INSERT INTO choices (id, question_id, body) VALUES (736, 163, 'all members of the National Education Association.');
INSERT INTO choices (id, question_id, body) VALUES (737, 163, 'all American school teachers.');
UPDATE questions SET answer = 737 WHERE id=163;
INSERT INTO choices (id, question_id, body) VALUES (738, 163, 'all American school students.');

INSERT INTO questions (id, body, chapter) VALUES (164, 'You want to know the opinions of American school teachers about establishing a national test for high school graduation.  You obtain a list of the members of the National Education Association (the largest teachers\' union) and mail a questionnaire to 2500 teachers chosen at random from this list.  In all 1347 teachers return the questionnaire.The <em>sampling frame</em> is', 129);
INSERT INTO choices (id, question_id, body) VALUES (739, 164, 'the 1347 teachers who mail back the questionnaire.');
INSERT INTO choices (id, question_id, body) VALUES (740, 164, 'the 2500 teachers to whom you mailed the questionnaire.');
INSERT INTO choices (id, question_id, body) VALUES (741, 164, 'all members of the National Education Association.');
UPDATE questions SET answer = 741 WHERE id=164;
INSERT INTO choices (id, question_id, body) VALUES (742, 164, 'all American school teachers.');
INSERT INTO choices (id, question_id, body) VALUES (743, 164, 'all American school students.');

INSERT INTO questions (id, body, chapter) VALUES (165, 'You want to know the opinions of American school teachers about establishing a national test for high school graduation.  You obtain a list of the members of the National Education Association (the largest teachers\' union) and mail a questionnaire to 2500 teachers chosen at random from this list.  In all 1347 teachers return the questionnaire.The <em>sample</em> is', 129);
INSERT INTO choices (id, question_id, body) VALUES (744, 165, 'the 1347 teachers who mail back the questionnaire.');
UPDATE questions SET answer = 744 WHERE id=165;
INSERT INTO choices (id, question_id, body) VALUES (745, 165, 'the 2500 teachers to whom you mailed the questionnaire.');
INSERT INTO choices (id, question_id, body) VALUES (746, 165, 'all members of the National Education Association.');
INSERT INTO choices (id, question_id, body) VALUES (747, 165, 'all American school teachers.');
INSERT INTO choices (id, question_id, body) VALUES (748, 165, 'all American school students.');

INSERT INTO questions (id, body, chapter) VALUES (166, 'An example of a nonsampling error that can reduce the accuracy of a sample survey is:', 129);
INSERT INTO choices (id, question_id, body) VALUES (749, 166, 'Using voluntary response to choose the sample.');
INSERT INTO choices (id, question_id, body) VALUES (750, 166, 'Using the telephone directory as the sampling frame.');
INSERT INTO choices (id, question_id, body) VALUES (751, 166, 'Interviewing people at shopping malls to obtain a sample.');
INSERT INTO choices (id, question_id, body) VALUES (752, 166, 'Variation due to chance in choosing a sample at random.');
INSERT INTO choices (id, question_id, body) VALUES (753, 166, 'Many members of the sample cannot be contacted.');
UPDATE questions SET answer = 753 WHERE id=166;

INSERT INTO questions (id, body, chapter) VALUES (167, 'Any sample survey should follow these two basic principles of data ethics:', 129);
INSERT INTO choices (id, question_id, body) VALUES (754, 167, 'Anonymity and random sampling.');
INSERT INTO choices (id, question_id, body) VALUES (755, 167, 'Comparison and randomization.');
INSERT INTO choices (id, question_id, body) VALUES (756, 167, 'Double-blind and placebo.');
INSERT INTO choices (id, question_id, body) VALUES (757, 167, 'Bias and variability.');
INSERT INTO choices (id, question_id, body) VALUES (758, 167, 'Informed consent and confidentiality.');
UPDATE questions SET answer = 758 WHERE id=167;

INSERT INTO questions (id, body, chapter) VALUES (168, 'IQ tests are intended to measure &quot;general problem-solving ability,&quot; which is what we mean by intelligence.  Some experts think IQ tests measure not intelligence but how much education and how much exposure to middle-class culture you have.  These experts say that IQ tests are', 129);
INSERT INTO choices (id, question_id, body) VALUES (759, 168, 'biased.');
INSERT INTO choices (id, question_id, body) VALUES (760, 168, 'not valid.');
UPDATE questions SET answer = 760 WHERE id=168;
INSERT INTO choices (id, question_id, body) VALUES (761, 168, 'not reliable.');
INSERT INTO choices (id, question_id, body) VALUES (762, 168, 'highly variable.');
INSERT INTO choices (id, question_id, body) VALUES (763, 168, 'subject to nonsampling errors.');

INSERT INTO questions (id, body, chapter) VALUES (169, 'In a table of random digits it is true that', 129);
INSERT INTO choices (id, question_id, body) VALUES (764, 169, 'every pair of digits has chance 1/100 to be any of the 100 possible pairs 00, 01,  ... , 99.');
UPDATE questions SET answer = 764 WHERE id=169;
INSERT INTO choices (id, question_id, body) VALUES (765, 169, 'if a pair of digits is 00, the next pair cannot also be 00.');
INSERT INTO choices (id, question_id, body) VALUES (766, 169, 'every row has exactly the same number of 0\'s and 1\'s.');
INSERT INTO choices (id, question_id, body) VALUES (767, 169, '(A) and (B) but not (C).');
INSERT INTO choices (id, question_id, body) VALUES (768, 169, 'All of (A), (B), and (C).');

INSERT INTO questions (id, body, chapter) VALUES (170, 'A radio talk show invites listeners to call a telephone number to vote &quot;Yes&quot; or &quot;No&quot; on whether they support a bond issue for a new school.  About 1500 people call in.  Over 80% say &quot;No.&quot; As an estimate of community opinion, this result is', 129);
INSERT INTO choices (id, question_id, body) VALUES (769, 170, 'accurate to within +/- 3% with 95% confidence.');
INSERT INTO choices (id, question_id, body) VALUES (770, 170, 'not trustworthy because of nonsampling errors.');
INSERT INTO choices (id, question_id, body) VALUES (771, 170, 'not precise because the sample size 1500 is too small.');
INSERT INTO choices (id, question_id, body) VALUES (772, 170, 'unethical due to lack of informed consent.');
INSERT INTO choices (id, question_id, body) VALUES (773, 170, 'badly biased due to voluntary response.');
UPDATE questions SET answer = 773 WHERE id=170;

INSERT INTO questions (id, body, chapter) VALUES (171, 'Medical experiments, such as one to compare aspirin with a placebo for preventing heart attacks, are often <em>double-blind</em>.  This means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (774, 171, 'neither the subject nor the doctors know which treatment the patient received.');
UPDATE questions SET answer = 774 WHERE id=171;
INSERT INTO choices (id, question_id, body) VALUES (775, 171, 'subjects choose which treatment they get, but do not tell the doctors.');
INSERT INTO choices (id, question_id, body) VALUES (776, 171, 'the doctors choose which treatment to give each subject, but do not tell the subjects.');
INSERT INTO choices (id, question_id, body) VALUES (777, 171, 'subjects are not told either their treatment or their medical condition.');
INSERT INTO choices (id, question_id, body) VALUES (778, 171, 'all individual data are kept confidential.');

INSERT INTO questions (id, body, chapter) VALUES (172, 'Corn variety #1 yielded 140 bushels per acre last year at a research farm.  This year, corn variety #2, planted in the same location, yielded only 110 bushels per acre.  Unfortunately, we don\'t know whether the difference is due to the superiority of variety #1 or to the effect of this year\'s drought.  This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (779, 172, 'bias due to voluntary response.');
INSERT INTO choices (id, question_id, body) VALUES (780, 172, 'random sampling error.');
INSERT INTO choices (id, question_id, body) VALUES (781, 172, 'confounding.');
UPDATE questions SET answer = 781 WHERE id=172;
INSERT INTO choices (id, question_id, body) VALUES (782, 172, 'the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (783, 172, 'nonsampling error.');

INSERT INTO questions (id, body, chapter) VALUES (173, 'You must choose a simple random sample of 7 lots from a shipment of 80 lots of vaccine for testing.  You label the lots 01, 02, 03, ..., 80 and then use the random number table to select your sample. The chance that any one lot is chosen for the sample is', 129);
INSERT INTO choices (id, question_id, body) VALUES (784, 173, 'random because the sample is random.');
INSERT INTO choices (id, question_id, body) VALUES (785, 173, 'can\'t say without looking at the random number table.');
INSERT INTO choices (id, question_id, body) VALUES (786, 173, '1 in 80.');
INSERT INTO choices (id, question_id, body) VALUES (787, 173, '7 in 80.');
UPDATE questions SET answer = 787 WHERE id=173;
INSERT INTO choices (id, question_id, body) VALUES (788, 173, '7 in 100.');

INSERT INTO questions (id, body, chapter) VALUES (174, 'The Environmental Protection Agency sends four identical samples of polluted water to the Acme Chemical Analysis Laboratory.  The lab measures the amount of dioxin in each sample.  The lab reports dioxin concentrations of 141, 323, 74, and 923 parts per billion. You can see that dioxin measurements made by Acme are', 129);
INSERT INTO choices (id, question_id, body) VALUES (789, 174, 'not reliable.');
UPDATE questions SET answer = 789 WHERE id=174;
INSERT INTO choices (id, question_id, body) VALUES (790, 174, 'not biased.');
INSERT INTO choices (id, question_id, body) VALUES (791, 174, 'invalid.');
INSERT INTO choices (id, question_id, body) VALUES (792, 174, 'confounded.');
INSERT INTO choices (id, question_id, body) VALUES (793, 174, 'categorical.');

INSERT INTO questions (id, body, chapter) VALUES (175, 'You measure the age (years), weight (pounds), and marital status (single, married, divorced, or widowed) of 1400 women.  How many variables did you measure?', 129);
INSERT INTO choices (id, question_id, body) VALUES (794, 175, '1400');
INSERT INTO choices (id, question_id, body) VALUES (795, 175, 'one');
INSERT INTO choices (id, question_id, body) VALUES (796, 175, 'two');
INSERT INTO choices (id, question_id, body) VALUES (797, 175, 'three');
UPDATE questions SET answer = 797 WHERE id=175;
INSERT INTO choices (id, question_id, body) VALUES (798, 175, '1403');

INSERT INTO questions (id, body, chapter) VALUES (176, 'The most important advantage of experiments over observational studies is that', 129);
INSERT INTO choices (id, question_id, body) VALUES (799, 176, 'experiments are usually easier to carry out.');
INSERT INTO choices (id, question_id, body) VALUES (800, 176, 'experiments can give better evidence of causation.');
UPDATE questions SET answer = 800 WHERE id=176;
INSERT INTO choices (id, question_id, body) VALUES (801, 176, 'confounding cannot happen in experiments.');
INSERT INTO choices (id, question_id, body) VALUES (802, 176, 'an observational study cannot have a response variable.');
INSERT INTO choices (id, question_id, body) VALUES (803, 176, 'observational studies cannot use random samples.');

INSERT INTO questions (id, body, chapter) VALUES (177, 'A study compares the effect on college students of two different TV advertisements for spring break in Gulf Shores, Alabama.  Call the ads &quot;Ad #1&quot; and &quot;Ad #2.&quot; We want to know which ad makes more students want to visit Gulf Shores during spring break.  The subjects are 90 students taking a course in hotel management.  The design of the study looks like this: <br /><br /><img src="/images/freeman/candc/f1-182.jpg" /><br />The statistical name for this study design is', 129);
INSERT INTO choices (id, question_id, body) VALUES (804, 177, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (805, 177, 'stratified random sample.');
INSERT INTO choices (id, question_id, body) VALUES (806, 177, 'randomized comparative experiment.');
UPDATE questions SET answer = 806 WHERE id=177;
INSERT INTO choices (id, question_id, body) VALUES (807, 177, 'matched-pairs experiment.');
INSERT INTO choices (id, question_id, body) VALUES (808, 177, 'observational study.');

INSERT INTO questions (id, body, chapter) VALUES (178, 'A study compares the effect on college students of two different TV advertisements for spring break in Gulf Shores, Alabama.  Call the ads &quot;Ad #1&quot; and &quot;Ad #2.&quot; We want to know which ad makes more students want to visit Gulf Shores during spring break.  The subjects are 90 students taking a course in hotel management.  The design of the study looks like this: <br /><br /><img src="/images/freeman/candc/f1-182.jpg" /><br />The method used to form the groups appears in the diagram above at the point marked &quot;Question A.&quot;  This method is', 129);
INSERT INTO choices (id, question_id, body) VALUES (809, 178, 'Men in Group 1, women in Group 2.');
INSERT INTO choices (id, question_id, body) VALUES (810, 178, 'Students choose which group they want.');
INSERT INTO choices (id, question_id, body) VALUES (811, 178, 'Voluntary response.');
INSERT INTO choices (id, question_id, body) VALUES (812, 178, 'Randomization.');
UPDATE questions SET answer = 812 WHERE id=178;
INSERT INTO choices (id, question_id, body) VALUES (813, 178, 'The first students to appear go to Group 1.');

INSERT INTO questions (id, body, chapter) VALUES (179, 'A study compares the effect on college students of two different TV advertisements for spring break in Gulf Shores, Alabama.  Call the ads &quot;Ad #1&quot; and &quot;Ad #2.&quot; We want to know which ad makes more students want to visit Gulf Shores during spring break.  The subjects are 90 students taking a course in hotel management.  The design of the study looks like this: <br /><br /><img src="/images/freeman/candc/f1-182.jpg" /><br />What is Group 2\'s treatment (at the point marked &quot;Question B&quot; in the diagram)?', 129);
INSERT INTO choices (id, question_id, body) VALUES (814, 179, 'A placebo.');
INSERT INTO choices (id, question_id, body) VALUES (815, 179, 'Ad #2.');
UPDATE questions SET answer = 815 WHERE id=179;
INSERT INTO choices (id, question_id, body) VALUES (816, 179, 'One of the ads, chosen at random.');
INSERT INTO choices (id, question_id, body) VALUES (817, 179, 'Watch TV, but see no advertisement.');
INSERT INTO choices (id, question_id, body) VALUES (818, 179, 'Can\'t say because of double-blindness.');

INSERT INTO questions (id, body, chapter) VALUES (180, 'A study compares the effect on college students of two different TV advertisements for spring break in Gulf Shores, Alabama.  Call the ads &quot;Ad #1&quot; and &quot;Ad #2.&quot; We want to know which ad makes more students want to visit Gulf Shores during spring break.  The subjects are 90 students taking a course in hotel management.  The design of the study looks like this: <br /><br /><img src="/images/freeman/candc/f1-182.jpg" /><br />The response variable should be named in the outline at (Question C).  The response variable in this study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (819, 180, 'whether a student wants to visit Gulf Shores.');
UPDATE questions SET answer = 819 WHERE id=180;
INSERT INTO choices (id, question_id, body) VALUES (820, 180, 'which advertisement a student watched.');
INSERT INTO choices (id, question_id, body) VALUES (821, 180, '90 college students.');
INSERT INTO choices (id, question_id, body) VALUES (822, 180, 'randomization.');
INSERT INTO choices (id, question_id, body) VALUES (823, 180, 'Ad #2.');

INSERT INTO questions (id, body, chapter) VALUES (181, 'A study compares the effect on college students of two different TV advertisements for spring break in Gulf Shores, Alabama.  Call the ads &quot;Ad #1&quot; and &quot;Ad #2.&quot; We want to know which ad makes more students want to visit Gulf Shores during spring break.  The subjects are 90 students taking a course in hotel management.  The design of the study looks like this: <br /><br /><img src="/images/freeman/candc/f1-182.jpg" /><br />A weakness of this study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (824, 181, 'This is an observational study, so we can\'t conclude that the ad viewed causes the response.');
INSERT INTO choices (id, question_id, body) VALUES (825, 181, 'The design is biased in favor of Ad #1.');
INSERT INTO choices (id, question_id, body) VALUES (826, 181, 'The double-blind technique was not used.');
INSERT INTO choices (id, question_id, body) VALUES (827, 181, 'Because the students all come from one course, the findings may not extend to all college students.');
UPDATE questions SET answer = 827 WHERE id=181;
INSERT INTO choices (id, question_id, body) VALUES (828, 181, 'There is no placebo group.');

INSERT INTO questions (id, body, chapter) VALUES (182, 'A random sample of 1500 adults from the 260 million people in the U.S. has a margin of error of +/- 3 percentage points with 95% confidence.  If a random sample of 1500 adults from the 5 1/2 million people in Indiana is selected by the same method, the margin of error will be', 129);
INSERT INTO choices (id, question_id, body) VALUES (829, 182, 'less than +/- 3 percentage points.');
INSERT INTO choices (id, question_id, body) VALUES (830, 182, 'greater than +/- 3 percentage points.');
INSERT INTO choices (id, question_id, body) VALUES (831, 182, 'the same as for the national sample, +/- 3 percentage points.');
UPDATE questions SET answer = 831 WHERE id=182;
INSERT INTO choices (id, question_id, body) VALUES (832, 182, 'Could be either greater or less than +/- 3 percentage points.');
INSERT INTO choices (id, question_id, body) VALUES (833, 182, 'Can\'t say before the sample is chosen.');

INSERT INTO questions (id, body, chapter) VALUES (183, 'Which of the following is a source of <em>nonsampling error</em> in a sample survey?', 129);
INSERT INTO choices (id, question_id, body) VALUES (834, 183, 'Voluntary response sampling.');
INSERT INTO choices (id, question_id, body) VALUES (835, 183, 'Using voter registration lists as the sampling frame.');
INSERT INTO choices (id, question_id, body) VALUES (836, 183, 'Some subjects do not tell the truth.');
UPDATE questions SET answer = 836 WHERE id=183;
INSERT INTO choices (id, question_id, body) VALUES (837, 183, 'Both (B) and (C).');
INSERT INTO choices (id, question_id, body) VALUES (838, 183, 'None of these.');

INSERT INTO questions (id, body, chapter) VALUES (184, 'When an opinion poll says that &quot;with 95% confidence&quot; the margin of error for its results is plus or minus 3 percentage points, this means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (839, 184, '95% of the people chosen for the sample were contacted.');
INSERT INTO choices (id, question_id, body) VALUES (840, 184, 'between 92% and 98% of the people chosen for the sample were contacted.');
INSERT INTO choices (id, question_id, body) VALUES (841, 184, 'the percent of people who said &quot;Yes&quot; to the question was between 92% and 98%.');
INSERT INTO choices (id, question_id, body) VALUES (842, 184, 'we can be certain that the true population value is within +/- 3 points of 95%.');
INSERT INTO choices (id, question_id, body) VALUES (843, 184, '95% of all samples chosen as this one was give results within +/- 3 points of the true population value.');
UPDATE questions SET answer = 843 WHERE id=184;

INSERT INTO questions (id, body, chapter) VALUES (185, 'An opinion poll asks a sample of 1100 people whether they support reducing the number of legal immigrants to the U.S.; 53% of these 1100 people say &quot;Yes.&quot;  The number 53% is a', 129);
INSERT INTO choices (id, question_id, body) VALUES (844, 185, 'margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (845, 185, 'statistic.');
UPDATE questions SET answer = 845 WHERE id=185;
INSERT INTO choices (id, question_id, body) VALUES (846, 185, 'bias.');
INSERT INTO choices (id, question_id, body) VALUES (847, 185, 'parameter.');
INSERT INTO choices (id, question_id, body) VALUES (848, 185, 'reliability.');

INSERT INTO questions (id, body, chapter) VALUES (186, 'An example of a categorical variable is', 129);
INSERT INTO choices (id, question_id, body) VALUES (849, 186, 'the name of the college a student attends.');
INSERT INTO choices (id, question_id, body) VALUES (850, 186, 'a student\'s weight in kilograms.');
INSERT INTO choices (id, question_id, body) VALUES (851, 186, 'a student\'s class rank, such as 25th out of 364.');
INSERT INTO choices (id, question_id, body) VALUES (852, 186, 'a student\'s sex (male or female).');
INSERT INTO choices (id, question_id, body) VALUES (853, 186, 'Both (A) and (D).');
UPDATE questions SET answer = 853 WHERE id=186;

INSERT INTO questions (id, body, chapter) VALUES (187, 'The net asset value of a mutual fund has increased from $27 on December 31 to $33 now.  The percent increase in value is about', 129);
INSERT INTO choices (id, question_id, body) VALUES (854, 187, '22%.');
UPDATE questions SET answer = 854 WHERE id=187;
INSERT INTO choices (id, question_id, body) VALUES (855, 187, '18%.');
INSERT INTO choices (id, question_id, body) VALUES (856, 187, '1.2%.');
INSERT INTO choices (id, question_id, body) VALUES (857, 187, '122%.');
INSERT INTO choices (id, question_id, body) VALUES (858, 187, '82%');

INSERT INTO questions (id, body, chapter) VALUES (188, 'The price of gold was $350 per ounce on December 31, and has dropped 20% since that time.  What is the price per ounce now?', 129);
INSERT INTO choices (id, question_id, body) VALUES (859, 188, '$280');
UPDATE questions SET answer = 859 WHERE id=188;
INSERT INTO choices (id, question_id, body) VALUES (860, 188, '$420');
INSERT INTO choices (id, question_id, body) VALUES (861, 188, '$330');
INSERT INTO choices (id, question_id, body) VALUES (862, 188, '$370');
INSERT INTO choices (id, question_id, body) VALUES (863, 188, '$70');

INSERT INTO questions (id, body, chapter) VALUES (189, 'The following is an excerpt from a newspaper article:<br /><br />Women who are obese suffer social and economic consequences, a new study has shown.  They are 20 percent less likely to marry, have household incomes that average of $6,710 lower, and are 10 percent more likely to live in poverty.  The findings are from an study of 10,039 randomly selected people who were 16 to 24 years old when the research began.<br />This study was based on', 129);
INSERT INTO choices (id, question_id, body) VALUES (864, 189, 'a randomized comparative experiment.');
INSERT INTO choices (id, question_id, body) VALUES (865, 189, 'a matched-pairs experiment.');
INSERT INTO choices (id, question_id, body) VALUES (866, 189, 'a voluntary response sample.');
INSERT INTO choices (id, question_id, body) VALUES (867, 189, 'a probability sample.');
UPDATE questions SET answer = 867 WHERE id=189;

INSERT INTO questions (id, body, chapter) VALUES (190, 'The following is an excerpt from a newspaper article:<br /><br />Women who are obese suffer social and economic consequences, a new study has shown.  They are 20 percent less likely to marry, have household incomes that average of $6,710 lower, and are 10 percent more likely to live in poverty.  The findings are from an study of 10,039 randomly selected people who were 16 to 24 years old when the research began.<br />Does this study give strong evidence that being obese <em>causes</em> lower income?', 129);
INSERT INTO choices (id, question_id, body) VALUES (868, 190, 'Yes, because the study included both people who were fat and people who were not.');
INSERT INTO choices (id, question_id, body) VALUES (869, 190, 'Yes, because the subjects in the study were selected at random.');
INSERT INTO choices (id, question_id, body) VALUES (870, 190, 'No, because the study showed that there is no connection between income and being fat.');
INSERT INTO choices (id, question_id, body) VALUES (871, 190, 'No, because people who are already poor may tend to overeat and/or get less exercise, which may make them more likely to be fat.');
UPDATE questions SET answer = 871 WHERE id=190;

INSERT INTO questions (id, body, chapter) VALUES (191, 'A 1996 Gallup poll of eligible New Hampshire primary voters reported that &quot;of 1200 voters surveyed, 24% would vote for Senator Bob Dole if the primary election were held today&quot;.  The Gallup organization also reported that the margin of error for a sample of 1200 people is 3 percentage points. Sample of size 1,200 is plus or minus 3 percentage points.The margin of error gives a range such that', 129);
INSERT INTO choices (id, question_id, body) VALUES (872, 191, 'we can be certain a conclusion is correct within this margin.');
INSERT INTO choices (id, question_id, body) VALUES (873, 191, 'we can be 99% confident that conclusions are correct within this margin.');
INSERT INTO choices (id, question_id, body) VALUES (874, 191, 'we can be 95% confident that conclusions are correct within this margin.');
UPDATE questions SET answer = 874 WHERE id=191;
INSERT INTO choices (id, question_id, body) VALUES (875, 191, 'we can be 90% confident that conclusions are correct within this margin.');

INSERT INTO questions (id, body, chapter) VALUES (192, 'A 1996 Gallup poll of eligible New Hampshire primary voters reported that &quot;of 1200 voters surveyed, 24% would vote for Senator Bob Dole if the primary election were held today&quot;.  The Gallup organization also reported that the margin of error for a sample of 1200 people is 3 percentage points. Sample of size 1,200 is plus or minus 3 percentage points.We can be confident (to the degree explained in the previous question) that', 129);
INSERT INTO choices (id, question_id, body) VALUES (876, 192, 'Senator Dole will win between 21% and 27% of the vote when the primary is held 3 weeks from now.');
INSERT INTO choices (id, question_id, body) VALUES (877, 192, 'Senator Dole would win exactly 24% of the vote if the primary were held today.');
INSERT INTO choices (id, question_id, body) VALUES (878, 192, 'Senator Dole would win between 21% and 27% of the vote if the primary were held today.');
UPDATE questions SET answer = 878 WHERE id=192;
INSERT INTO choices (id, question_id, body) VALUES (879, 192, 'Senator Dole would get much less than 24% of the vote if the primary were held today, because 24% of 1,200 is only a small fraction of the number who would actually vote.');

INSERT INTO questions (id, body, chapter) VALUES (193, 'A 1996 Gallup poll of eligible New Hampshire primary voters reported that &quot;of 1200 voters surveyed, 24% would vote for Senator Bob Dole if the primary election were held today&quot;.  The Gallup organization also reported that the margin of error for a sample of 1200 people is 3 percentage points. Sample of size 1,200 is plus or minus 3 percentage points.If Gallup had surveyed 4,800 voters instead of 1,200,', 129);
INSERT INTO choices (id, question_id, body) VALUES (880, 193, 'The margin of error would have been about the same.');
INSERT INTO choices (id, question_id, body) VALUES (881, 193, 'The margin of error would have been smaller.');
UPDATE questions SET answer = 881 WHERE id=193;
INSERT INTO choices (id, question_id, body) VALUES (882, 193, 'The margin of error would have been larger.');
INSERT INTO choices (id, question_id, body) VALUES (883, 193, 'Only those people given placebos would have favored Dole.');

INSERT INTO questions (id, body, chapter) VALUES (194, 'A 1996 Gallup poll of eligible New Hampshire primary voters reported that &quot;of 1200 voters surveyed, 24% would vote for Senator Bob Dole if the primary election were held today&quot;.  The Gallup organization also reported that the margin of error for a sample of 1200 people is 3 percentage points. Sample of size 1,200 is plus or minus 3 percentage points.If the Gallup organization had wanted to make a confidence statement based on the same data with a higher confidence level, the margin of error would be', 129);
INSERT INTO choices (id, question_id, body) VALUES (884, 194, 'smaller than 3%.');
INSERT INTO choices (id, question_id, body) VALUES (885, 194, 'about 3%.');
INSERT INTO choices (id, question_id, body) VALUES (886, 194, 'larger than 3%.');
UPDATE questions SET answer = 886 WHERE id=194;
INSERT INTO choices (id, question_id, body) VALUES (887, 194, 'infinite, because higher confidence is not possible with this small a sample.');

INSERT INTO questions (id, body, chapter) VALUES (195, 'Suppose that Gallup had taken separate random samples of 600 men and 600 women. This would have been', 129);
INSERT INTO choices (id, question_id, body) VALUES (888, 195, 'a randomized block design.');
INSERT INTO choices (id, question_id, body) VALUES (889, 195, 'a matched pairs design.');
INSERT INTO choices (id, question_id, body) VALUES (890, 195, 'an involuntary response poll.');
INSERT INTO choices (id, question_id, body) VALUES (891, 195, 'a stratified random sample.');
UPDATE questions SET answer = 891 WHERE id=195;

INSERT INTO questions (id, body, chapter) VALUES (196, 'The reason that block designs are sometimes used in experimentation is to', 129);
INSERT INTO choices (id, question_id, body) VALUES (892, 196, 'prevent the placebo effect;');
INSERT INTO choices (id, question_id, body) VALUES (893, 196, 'allow double-blinding;');
INSERT INTO choices (id, question_id, body) VALUES (894, 196, 'eliminate confounding with another factor;');
UPDATE questions SET answer = 894 WHERE id=196;
INSERT INTO choices (id, question_id, body) VALUES (895, 196, 'eliminate sampling variability;');

INSERT INTO questions (id, body, chapter) VALUES (197, 'In a(n) _____________, the environments of the subjects are controlled or manipulated by the researcher.', 129);
INSERT INTO choices (id, question_id, body) VALUES (896, 197, 'stratified sample');
INSERT INTO choices (id, question_id, body) VALUES (897, 197, 'experiment');
UPDATE questions SET answer = 897 WHERE id=197;
INSERT INTO choices (id, question_id, body) VALUES (898, 197, 'observational study');
INSERT INTO choices (id, question_id, body) VALUES (899, 197, 'sample survey');

INSERT INTO questions (id, body, chapter) VALUES (198, 'In an experiment to study the effect of vibrations on plant growth, the height of a chrysanthemum was measured three times.  The reason for making the measurement three times instead of just once was probably to', 129);
INSERT INTO choices (id, question_id, body) VALUES (900, 198, 'decrease bias.');
INSERT INTO choices (id, question_id, body) VALUES (901, 198, 'eliminate confounding.');
INSERT INTO choices (id, question_id, body) VALUES (902, 198, 'increase reliability.');
UPDATE questions SET answer = 902 WHERE id=198;
INSERT INTO choices (id, question_id, body) VALUES (903, 198, 'completely eliminate measurement error.');

INSERT INTO questions (id, body, chapter) VALUES (199, 'Which of these statements about a random number table is true?', 129);
INSERT INTO choices (id, question_id, body) VALUES (904, 199, 'Each line contains exactly the same number of 0\'s and 1\'s.');
INSERT INTO choices (id, question_id, body) VALUES (905, 199, 'The chance that any pair of adjacent digits is 88 is 1/100.');
UPDATE questions SET answer = 905 WHERE id=199;
INSERT INTO choices (id, question_id, body) VALUES (906, 199, 'The chance that any pair of adjacent digits is 89 is 1/99.');
INSERT INTO choices (id, question_id, body) VALUES (907, 199, 'No row of the table can consist of all 9\'s.');

INSERT INTO questions (id, body, chapter) VALUES (200, 'Which of the following statements about a randomized block design with two treatments is <em>not</em> true?', 129);
INSERT INTO choices (id, question_id, body) VALUES (908, 200, 'Every subject has a 50/50 chance of being given the first treatment.');
INSERT INTO choices (id, question_id, body) VALUES (909, 200, 'Block A is chosen randomly from among the available subjects.');
UPDATE questions SET answer = 909 WHERE id=200;
INSERT INTO choices (id, question_id, body) VALUES (910, 200, 'In every block, some subjects are assigned the first treatment and some the second treatment.');
INSERT INTO choices (id, question_id, body) VALUES (911, 200, 'Treatments are assigned randomly within each block.');

INSERT INTO questions (id, body, chapter) VALUES (201, 'A hypothetical experiment is conducted  whose purpose is to determine whether the nutritional benefits of Little Chocolate Doughnuts can have a beneficial effect on the exam performance of Stat 001 students.Suppose all students who attend Stat 001 lectures during Fall Term 1997 are given packages of Little Chocolate Donuts at the beginning of each lecture, which they are encouraged to eat during the first five minutes of class.  Students who attend Stat 001 lectures during Spring Term 1998 will not be given doughnuts.  Unfortunately, any systematic difference between Fall Term students and Spring Term students on the exams might be due to the fact that the spring term teacher is more skillful than the fall term teacher, rather than the doughnuts. This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (912, 201, 'confounding.');
UPDATE questions SET answer = 912 WHERE id=201;
INSERT INTO choices (id, question_id, body) VALUES (913, 201, 'the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (914, 201, 'stratification.');
INSERT INTO choices (id, question_id, body) VALUES (915, 201, 'response error.');

INSERT INTO questions (id, body, chapter) VALUES (202, 'A hypothetical experiment is conducted  whose purpose is to determine whether the nutritional benefits of Little Chocolate Doughnuts can have a beneficial effect on the exam performance of Stat 001 students.In the Spring Term, Stat 001 lectures will be given at 10:30 A.M. rather than at 8:30 A.M.  The time of lecture (8:30 or 10:30) is', 129);
INSERT INTO choices (id, question_id, body) VALUES (916, 202, 'the response variable.');
INSERT INTO choices (id, question_id, body) VALUES (917, 202, 'an explanatory variable.');
INSERT INTO choices (id, question_id, body) VALUES (918, 202, 'a lurking variable.');
UPDATE questions SET answer = 918 WHERE id=202;
INSERT INTO choices (id, question_id, body) VALUES (919, 202, 'a stratum.');

INSERT INTO questions (id, body, chapter) VALUES (203, 'A hypothetical experiment is conducted  whose purpose is to determine whether the nutritional benefits of Little Chocolate Doughnuts can have a beneficial effect on the exam performance of Stat 001 students.Suppose that instead of giving Spring Term 1998 students <em>nothing</em> we give them packages of <em>fake</em> Little Chocolate Donuts, which look and taste just like the real ones but have no sugar, fat, calories, or other nutritional benefits.  Suppose we find that both Fall 97 and Spring 98 students do better on their exams than Stat 001 students have ever done before, despite the fact that the lectures, tests, etc. are all nearly identical to what they have been in the past.  This could be an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (920, 203, 'stratified sampling.');
INSERT INTO choices (id, question_id, body) VALUES (921, 203, 'nonsampling error.');
INSERT INTO choices (id, question_id, body) VALUES (922, 203, 'the placebo effect.');
UPDATE questions SET answer = 922 WHERE id=203;
INSERT INTO choices (id, question_id, body) VALUES (923, 203, 'None of the above.');

INSERT INTO questions (id, body, chapter) VALUES (204, 'A hypothetical experiment is conducted  whose purpose is to determine whether the nutritional benefits of Little Chocolate Doughnuts can have a beneficial effect on the exam performance of Stat 001 students.The response variable in this study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (924, 204, 'the doughnut variable.');
INSERT INTO choices (id, question_id, body) VALUES (925, 204, 'time of lecture (8:30 or 10:30).');
INSERT INTO choices (id, question_id, body) VALUES (926, 204, 'the lecturer.');
INSERT INTO choices (id, question_id, body) VALUES (927, 204, 'exam performance.');
UPDATE questions SET answer = 927 WHERE id=204;

INSERT INTO questions (id, body, chapter) VALUES (205, 'An important reason for the use of <em>randomization</em> in designing experiments is that it tends to', 129);
INSERT INTO choices (id, question_id, body) VALUES (928, 205, 'reduce confounding.');
UPDATE questions SET answer = 928 WHERE id=205;
INSERT INTO choices (id, question_id, body) VALUES (929, 205, 'allow double-blinding.');
INSERT INTO choices (id, question_id, body) VALUES (930, 205, 'eliminate response error.');
INSERT INTO choices (id, question_id, body) VALUES (931, 205, 'reduce the placebo effect.');

INSERT INTO questions (id, body, chapter) VALUES (206, 'Which of the following is <em>not</em> a source of nonsampling error:', 129);
INSERT INTO choices (id, question_id, body) VALUES (932, 206, 'inability to contact a subject.');
INSERT INTO choices (id, question_id, body) VALUES (933, 206, 'accidentally throwing away the completed survey questions.');
INSERT INTO choices (id, question_id, body) VALUES (934, 206, 'choosing the sample from shoppers at a suburban mall.');
UPDATE questions SET answer = 934 WHERE id=206;
INSERT INTO choices (id, question_id, body) VALUES (935, 206, 'poorly worded questions.');

INSERT INTO questions (id, body, chapter) VALUES (207, '&quot;In American History, 20 students failed.  Only 11 students failed World History.  American History must be a more difficult course than World History.&quot;  This statement is misleading because the measurement &quot;number of students who fail&quot; used as a surrogate for &quot;difficulty of course&quot; is', 129);
INSERT INTO choices (id, question_id, body) VALUES (936, 207, 'categorical.');
INSERT INTO choices (id, question_id, body) VALUES (937, 207, 'unreliable.');
INSERT INTO choices (id, question_id, body) VALUES (938, 207, 'invalid.');
UPDATE questions SET answer = 938 WHERE id=207;
INSERT INTO choices (id, question_id, body) VALUES (939, 207, 'confounded.');
INSERT INTO choices (id, question_id, body) VALUES (940, 207, 'Nevada');
UPDATE questions SET answer = 940 WHERE id=207;

INSERT INTO questions (id, body, chapter) VALUES (208, 'A recent medical study found that people who drink more than 4 cups of coffee a day have more heart attacks than people who drink less coffee or no coffee. This led some doctors to suspect that coffee may be a contributing factor in causing heart attacks. However, more careful analysis of the data showed that heavy coffee drinkers tend to smoke more than other people. This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (941, 208, 'the placebo effect');
INSERT INTO choices (id, question_id, body) VALUES (942, 208, 'response error');
INSERT INTO choices (id, question_id, body) VALUES (943, 208, 'the double-blind technique');
INSERT INTO choices (id, question_id, body) VALUES (944, 208, 'a completely randomized design');
INSERT INTO choices (id, question_id, body) VALUES (945, 208, 'confounding');
UPDATE questions SET answer = 945 WHERE id=208;

INSERT INTO questions (id, body, chapter) VALUES (209, 'Which of the following is <em>not</em> true of a simple random sample of size 1000 chosen from a population of size 4,000,000?', 129);
INSERT INTO choices (id, question_id, body) VALUES (946, 209, 'Every individual in the population has the same chance of selection as every other individual.');
INSERT INTO choices (id, question_id, body) VALUES (947, 209, 'Every set of 1000 individuals has the same chance of being the sample as every other set of 1000 individuals.');
INSERT INTO choices (id, question_id, body) VALUES (948, 209, 'Every individual of the population has chance 1 in 1,000 of being included in the sample.');
UPDATE questions SET answer = 948 WHERE id=209;
INSERT INTO choices (id, question_id, body) VALUES (949, 209, 'Every set of 500 individuals has the same chance of being included in the sample as every other set of 500 individuals.');

INSERT INTO questions (id, body, chapter) VALUES (210, 'A Gallup Poll recently showed that 60 percent of Americans believe there is a hell. (The question was, &quot;Do you believe there is a place where those who led bad lives and died without repentance are eternally damned?&quot;)  The poll contacted 1,108 adults by telephone. The margin of sampling error was plus or minus four percentage points.The population for this sample survey is', 129);
INSERT INTO choices (id, question_id, body) VALUES (950, 210, 'all adult residents of the United States.');
UPDATE questions SET answer = 950 WHERE id=210;
INSERT INTO choices (id, question_id, body) VALUES (951, 210, 'the 1,108 people who answered the question.');
INSERT INTO choices (id, question_id, body) VALUES (952, 210, 'all households in the United States.');
INSERT INTO choices (id, question_id, body) VALUES (953, 210, 'the 60% who answered &quot;Yes&quot; to the question.');

INSERT INTO questions (id, body, chapter) VALUES (211, 'A Gallup Poll recently showed that 60 percent of Americans believe there is a hell. (The question was, &quot;Do you believe there is a place where those who led bad lives and died without repentance are eternally damned?&quot;)  The poll contacted 1,108 adults by telephone. The margin of sampling error was plus or minus four percentage points.From the information given above, you can make which of the following statements.  (Note that 60 +/- 4 is 56 percent to 64 percent.)', 129);
INSERT INTO choices (id, question_id, body) VALUES (954, 211, 'Between 56 percent and 64 percent of the sample believe there is a hell.');
INSERT INTO choices (id, question_id, body) VALUES (955, 211, 'Between 56 percent and 64 percent of all American adults believe there is a hell.');
INSERT INTO choices (id, question_id, body) VALUES (956, 211, 'We are 95% confident (but not certain) that between 56% and 64% of the sample believe there is a hell.');
INSERT INTO choices (id, question_id, body) VALUES (957, 211, 'We are 95% confident (but not certain) that between 56% and 64% of all American adults believe there is a hell.');
UPDATE questions SET answer = 957 WHERE id=211;

INSERT INTO questions (id, body, chapter) VALUES (212, 'A Gallup Poll recently showed that 60 percent of Americans believe there is a hell. (The question was, &quot;Do you believe there is a place where those who led bad lives and died without repentance are eternally damned?&quot;)  The poll contacted 1,108 adults by telephone. The margin of sampling error was plus or minus four percentage points.The poll has some bias because the sample leaves out people without a telephone.  This bias', 129);
INSERT INTO choices (id, question_id, body) VALUES (958, 212, 'is included in the +/- 4% margin of error.');
INSERT INTO choices (id, question_id, body) VALUES (959, 212, 'is not included in the margin of error, because leaving out people with no phone is a nonsampling error.');
INSERT INTO choices (id, question_id, body) VALUES (960, 212, 'is not included in the margin of error, because the margin of error only covers the chance variation in a random sample.');
UPDATE questions SET answer = 960 WHERE id=212;
INSERT INTO choices (id, question_id, body) VALUES (961, 212, 'is not included in the margin of error, because leaving out people with no phone has no effect on the outcome of the poll.');

INSERT INTO questions (id, body, chapter) VALUES (213, 'It is hard to measure &quot;intelligence.&quot;  Let\'s do it the easy way: measure height in inches, and call the result &quot;intelligence.&quot; Not only is this method easy, it gives the same number every time we repeat the measurement on the same person.  Measuring intelligence this way is', 129);
INSERT INTO choices (id, question_id, body) VALUES (962, 213, 'not reliable and not valid.');
INSERT INTO choices (id, question_id, body) VALUES (963, 213, 'highly reliable but not valid.');
UPDATE questions SET answer = 963 WHERE id=213;
INSERT INTO choices (id, question_id, body) VALUES (964, 213, 'valid, but not reliable.');
INSERT INTO choices (id, question_id, body) VALUES (965, 213, 'both valid and highly reliable.');

INSERT INTO questions (id, body, chapter) VALUES (214, 'A measurement process that does not systematically overstate or understate the true value of the quantity being measured is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (966, 214, 'valid.');
INSERT INTO choices (id, question_id, body) VALUES (967, 214, 'reliable.');
INSERT INTO choices (id, question_id, body) VALUES (968, 214, 'random.');
INSERT INTO choices (id, question_id, body) VALUES (969, 214, 'unbiased.');
UPDATE questions SET answer = 969 WHERE id=214;

INSERT INTO questions (id, body, chapter) VALUES (215, 'A confidence statement based on a probability sample says &quot;We are 95% confident that between 72% and 78% of all adult Americans believe that the country needs a national health-care system.&quot; The phrase &quot;95% confident&quot; means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (970, 215, 'if we took many samples, we would reach a correct conclusion in 95% of them.');
UPDATE questions SET answer = 970 WHERE id=215;
INSERT INTO choices (id, question_id, body) VALUES (971, 215, 'the sampling frame lists 95% of all American adults.');
INSERT INTO choices (id, question_id, body) VALUES (972, 215, '95% of the sample agreed that we need a national health-care system.');
INSERT INTO choices (id, question_id, body) VALUES (973, 215, 'the margin of error covers 95% of all responses in the population.');

INSERT INTO questions (id, body, chapter) VALUES (216, 'A typical opinion poll uses a sample size between 1000 and 1500 people.  The Current Population Survey samples 50,000 households every month to gather data on employment and unemployment.  The main advantage of the much larger sample is', 129);
INSERT INTO choices (id, question_id, body) VALUES (974, 216, 'there is less bias in a large random sample.');
INSERT INTO choices (id, question_id, body) VALUES (975, 216, 'a large random sample has a smaller margin of error.');
UPDATE questions SET answer = 975 WHERE id=216;
INSERT INTO choices (id, question_id, body) VALUES (976, 216, 'a larger random sample allows use of stratified sampling.');
INSERT INTO choices (id, question_id, body) VALUES (977, 216, 'nonsampling errors are smaller in a large random sample.');

INSERT INTO questions (id, body, chapter) VALUES (217, 'The United Presbyterian Church recently took a sample of opinion in the church.  The overall sample &quot;contains independent random samples of 1537 members, 1400 elders, 1513 pastors and 714 other clergy.&quot;This sampling design is a', 129);
INSERT INTO choices (id, question_id, body) VALUES (978, 217, 'multistage sample.');
INSERT INTO choices (id, question_id, body) VALUES (979, 217, 'voluntary response sample.');
INSERT INTO choices (id, question_id, body) VALUES (980, 217, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (981, 217, 'stratified sample.');
UPDATE questions SET answer = 981 WHERE id=217;

INSERT INTO questions (id, body, chapter) VALUES (218, 'The United Presbyterian Church recently took a sample of opinion in the church.  The overall sample &quot;contains independent random samples of 1537 members, 1400 elders, 1513 pastors and 714 other clergy.&quot;The sample survey of Presbyterians found that 70% of pastors and 53% of other clergy had served in an ecumenical organization in the past year.  Which of the following statements is true?', 129);
INSERT INTO choices (id, question_id, body) VALUES (982, 218, 'Both results are free of bias.  The result for pastors is less variable because the sample of pastors is larger.');
UPDATE questions SET answer = 982 WHERE id=218;
INSERT INTO choices (id, question_id, body) VALUES (983, 218, 'Both results are equally variable.  The result for pastors has less bias because the sample of pastors is larger.');
INSERT INTO choices (id, question_id, body) VALUES (984, 218, 'Both results have the same bias and the same variability.');
INSERT INTO choices (id, question_id, body) VALUES (985, 218, 'The result for pastors has both less bias and less variability because the sample of pastors is larger.');

INSERT INTO questions (id, body, chapter) VALUES (219, 'Any statistical study that uses human subjects requires <em>informed consent</em>.  This means that', 129);
INSERT INTO choices (id, question_id, body) VALUES (986, 219, 'a review board must agree that the study is worthwhile and will not harm the subjects.');
INSERT INTO choices (id, question_id, body) VALUES (987, 219, 'the authors of the study must agree to inform the public of the study results.');
INSERT INTO choices (id, question_id, body) VALUES (988, 219, 'the authors of the study must inform a review board about it and obtain the board\'s consent to go ahead.');
INSERT INTO choices (id, question_id, body) VALUES (989, 219, 'the nature of the study must be explained in advance to the subjects and they must voluntarily agree to take part.');
UPDATE questions SET answer = 989 WHERE id=219;

INSERT INTO questions (id, body, chapter) VALUES (220, 'Two essential features of all statistically designed experiments are', 129);
INSERT INTO choices (id, question_id, body) VALUES (990, 220, 'compare several treatments; use the double-blind method.');
INSERT INTO choices (id, question_id, body) VALUES (991, 220, 'compare several treatments; use chance to assign subjects to treatments.');
UPDATE questions SET answer = 991 WHERE id=220;
INSERT INTO choices (id, question_id, body) VALUES (992, 220, 'always have a placebo group; use the double-blind method.');
INSERT INTO choices (id, question_id, body) VALUES (993, 220, 'use a block design; use chance to assign subjects to treatments.');

INSERT INTO questions (id, body, chapter) VALUES (221, 'The Physicians\' Health Study gave half of a group of 22,000 male M.D.\'s aspirin.  The other half received a placebo.  After five years there were 189 heart attacks in the placebo group and 104 in the aspirin group.  One of the response variables in the Physicians\' Health Study was', 129);
INSERT INTO choices (id, question_id, body) VALUES (994, 221, 'the 22,000 male M.D.\'s.');
INSERT INTO choices (id, question_id, body) VALUES (995, 221, 'whether a subject took aspirin or a placebo.');
INSERT INTO choices (id, question_id, body) VALUES (996, 221, 'whether or not a subject had a heart attack.');
UPDATE questions SET answer = 996 WHERE id=221;
INSERT INTO choices (id, question_id, body) VALUES (997, 221, 'the 11,000 subjects who received aspirin.');

INSERT INTO questions (id, body, chapter) VALUES (222, 'Some common sources of nonsampling error in samples of human populations are', 129);
INSERT INTO choices (id, question_id, body) VALUES (998, 222, 'using voluntary response samples; some subjects lie.');
INSERT INTO choices (id, question_id, body) VALUES (999, 222, 'some subjects lie; some subjects can\'t be contacted.');
UPDATE questions SET answer = 999 WHERE id=222;
INSERT INTO choices (id, question_id, body) VALUES (1000, 222, 'some subjects can\'t be contacted; drawing a sample from names in a telephone directory.');
INSERT INTO choices (id, question_id, body) VALUES (1001, 222, 'Both (B) and (C).');
INSERT INTO choices (id, question_id, body) VALUES (1002, 222, 'All of (A), (B), and (C).');

INSERT INTO questions (id, body, chapter) VALUES (223, 'A psychologist recently said that &quot;For relatively mild medical problems, the placebo effect will produce positive results in roughly two-thirds of patients.&quot;  The placebo effect is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1003, 223, 'the bias due to voluntary response in a sample.');
INSERT INTO choices (id, question_id, body) VALUES (1004, 223, 'the effect of a dummy treatment on a patient.');
UPDATE questions SET answer = 1004 WHERE id=223;
INSERT INTO choices (id, question_id, body) VALUES (1005, 223, 'a violation of confidentiality.');
INSERT INTO choices (id, question_id, body) VALUES (1006, 223, 'the effect of confounding in an observational study.');

INSERT INTO questions (id, body, chapter) VALUES (224, 'If we choose a simple random sample (SRS) from a population, we can be sure that the ______________ which we compute from our SRS is a/an _______________ estimate of the population\'s true _______________.  We also know that we can reduce the _____________ of our result as desired by taking a large enough sample.  The appropriate sequence of words to complete this statement is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1007, 224, 'parameter, variation, statistic, unbiasedness');
INSERT INTO choices (id, question_id, body) VALUES (1008, 224, 'parameter, unbiased, statistic, variation');
INSERT INTO choices (id, question_id, body) VALUES (1009, 224, 'statistic, variation, parameter, unbiasedness');
INSERT INTO choices (id, question_id, body) VALUES (1010, 224, 'statistic, unbiased, parameter, variation');
UPDATE questions SET answer = 1010 WHERE id=224;

INSERT INTO questions (id, body, chapter) VALUES (225, 'A news article on an opinion poll said that, &quot;31 percent of the 1542 adults surveyed felt that Bill Clinton colors his hair to make it look more grey than it really is.&quot;  The article also noted that, &quot;The margin of error for a sample of size 1542 is plus or minus 3 percent.&quot;  Based on this information, which of the following is a correct statement to make?', 129);
INSERT INTO choices (id, question_id, body) VALUES (1011, 225, 'We are 95% confident that between 28% and 34% of the people surveyed felt that Clinton colors his hair.');
INSERT INTO choices (id, question_id, body) VALUES (1012, 225, 'We are 95% confident that between 28% and 34% of all adult Americans feel that Clinton colors his hair.');
UPDATE questions SET answer = 1012 WHERE id=225;
INSERT INTO choices (id, question_id, body) VALUES (1013, 225, 'We can be certain that between 28% and 34% of all adult Americans feel that Clinton colors his hair.');
INSERT INTO choices (id, question_id, body) VALUES (1014, 225, 'We are 95% confident that 31% of all adult Americans feel that Clinton colors his hair.');

INSERT INTO questions (id, body, chapter) VALUES (226, 'Michelle\'s income two years ago was $420,000.  Last year her income was only $100,000.  The percent change in Michelle\'s income was', 129);
INSERT INTO choices (id, question_id, body) VALUES (1015, 226, '76.2% decrease');
UPDATE questions SET answer = 1015 WHERE id=226;
INSERT INTO choices (id, question_id, body) VALUES (1016, 226, '320% decrease');
INSERT INTO choices (id, question_id, body) VALUES (1017, 226, '31.3% decrease');
INSERT INTO choices (id, question_id, body) VALUES (1018, 226, '23.8% decrease');
INSERT INTO choices (id, question_id, body) VALUES (1019, 226, 'None of these.');

INSERT INTO questions (id, body, chapter) VALUES (227, 'Increasing the size of a probability sample', 129);
INSERT INTO choices (id, question_id, body) VALUES (1020, 227, 'decreases the margin of error for a sample statistic.');
INSERT INTO choices (id, question_id, body) VALUES (1021, 227, 'increases the variability of a sample statistic.');
INSERT INTO choices (id, question_id, body) VALUES (1022, 227, 'decreases the variability of a sample statistic.');
INSERT INTO choices (id, question_id, body) VALUES (1023, 227, 'Both (a) and (b).');
INSERT INTO choices (id, question_id, body) VALUES (1024, 227, 'Both (a) and (c).');
UPDATE questions SET answer = 1024 WHERE id=227;

INSERT INTO questions (id, body, chapter) VALUES (228, 'The General Social Survey (GSS), conducted by the National Opinion Research Center at the University of Chicago, is a major source of data on social attitudes in the U.S.  Once each year 1500 adults are interviewed in their homes all across the country.  The subjects are asked their opinions about sex and marriage, attitudes toward women, welfare, foreign policy and many other issues.The GSS is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1025, 228, 'anecdotal information.');
INSERT INTO choices (id, question_id, body) VALUES (1026, 228, 'using available data.');
INSERT INTO choices (id, question_id, body) VALUES (1027, 228, 'a sample survey.');
UPDATE questions SET answer = 1027 WHERE id=228;
INSERT INTO choices (id, question_id, body) VALUES (1028, 228, 'an experiment.');

INSERT INTO questions (id, body, chapter) VALUES (229, 'The General Social Survey (GSS), conducted by the National Opinion Research Center at the University of Chicago, is a major source of data on social attitudes in the U.S.  Once each year 1500 adults are interviewed in their homes all across the country.  The subjects are asked their opinions about sex and marriage, attitudes toward women, welfare, foreign policy and many other issues.The population for the GSS is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1029, 229, 'all adult residents of the U.S.');
UPDATE questions SET answer = 1029 WHERE id=229;
INSERT INTO choices (id, question_id, body) VALUES (1030, 229, 'the University of Chicago.');
INSERT INTO choices (id, question_id, body) VALUES (1031, 229, 'the 1500 persons interviewed.');
INSERT INTO choices (id, question_id, body) VALUES (1032, 229, 'the list of questions asked.');

INSERT INTO questions (id, body, chapter) VALUES (230, 'The General Social Survey (GSS), conducted by the National Opinion Research Center at the University of Chicago, is a major source of data on social attitudes in the U.S.  Once each year 1500 adults are interviewed in their homes all across the country.  The subjects are asked their opinions about sex and marriage, attitudes toward women, welfare, foreign policy and many other issues.The GSS finds that 28% of the 1500 people interviewed do not approve of capital punishment.  The number 28% is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1033, 230, 'a confidence level.');
INSERT INTO choices (id, question_id, body) VALUES (1034, 230, 'a random digit.');
INSERT INTO choices (id, question_id, body) VALUES (1035, 230, 'a parameter.');
INSERT INTO choices (id, question_id, body) VALUES (1036, 230, 'a statistic.');
UPDATE questions SET answer = 1036 WHERE id=230;

INSERT INTO questions (id, body, chapter) VALUES (231, 'The General Social Survey (GSS), conducted by the National Opinion Research Center at the University of Chicago, is a major source of data on social attitudes in the U.S.  Once each year 1500 adults are interviewed in their homes all across the country.  The subjects are asked their opinions about sex and marriage, attitudes toward women, welfare, foreign policy and many other issues.The GSS begins by selecting a sample of counties from the 3000 counties in the country.  The counties are divided into urban, rural, and suburban; a separate sample is chosen at random from each group.  This is a', 129);
INSERT INTO choices (id, question_id, body) VALUES (1037, 231, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (1038, 231, 'stratified random sample.');
UPDATE questions SET answer = 1038 WHERE id=231;
INSERT INTO choices (id, question_id, body) VALUES (1039, 231, 'systematic random sample.');
INSERT INTO choices (id, question_id, body) VALUES (1040, 231, 'voluntary response sample.');

INSERT INTO questions (id, body, chapter) VALUES (232, 'The General Social Survey (GSS), conducted by the National Opinion Research Center at the University of Chicago, is a major source of data on social attitudes in the U.S.  Once each year 1500 adults are interviewed in their homes all across the country.  The subjects are asked their opinions about sex and marriage, attitudes toward women, welfare, foreign policy and many other issues.The GSS never releases any individual responses, only percents and averages for large groups of people.  This policy is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (1041, 232, 'anonymity.');
INSERT INTO choices (id, question_id, body) VALUES (1042, 232, 'informed consent.');
INSERT INTO choices (id, question_id, body) VALUES (1043, 232, 'voluntary response.');
INSERT INTO choices (id, question_id, body) VALUES (1044, 232, 'confidentiality.');
UPDATE questions SET answer = 1044 WHERE id=232;

INSERT INTO questions (id, body, chapter) VALUES (233, 'The General Social Survey (GSS), conducted by the National Opinion Research Center at the University of Chicago, is a major source of data on social attitudes in the U.S.  Once each year 1500 adults are interviewed in their homes all across the country.  The subjects are asked their opinions about sex and marriage, attitudes toward women, welfare, foreign policy and many other issues.Based on 1500 interviews, the GSS makes confidence statements about its conclusions.  If 28% of those interviewed oppose capital punishment, we can be 95% confident that the percent of all adults who oppose capital punishment is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1045, 233, '95% +/- 3%.');
INSERT INTO choices (id, question_id, body) VALUES (1046, 233, '28% +/- 3%.');
UPDATE questions SET answer = 1046 WHERE id=233;
INSERT INTO choices (id, question_id, body) VALUES (1047, 233, '95% of 28%, which is 26.6%.');
INSERT INTO choices (id, question_id, body) VALUES (1048, 233, 'exactly 28%.');

INSERT INTO questions (id, body, chapter) VALUES (234, 'The General Social Survey (GSS), conducted by the National Opinion Research Center at the University of Chicago, is a major source of data on social attitudes in the U.S.  Once each year 1500 adults are interviewed in their homes all across the country.  The subjects are asked their opinions about sex and marriage, attitudes toward women, welfare, foreign policy and many other issues.If the GSS interviewed 1500 adults from Illinois (population 12,000,000) rather than 1500 from the entire U.S. (population 260,000,000) the margin of error for 95% confidence would be', 129);
INSERT INTO choices (id, question_id, body) VALUES (1049, 234, 'smaller because Illinois has a smaller population.');
INSERT INTO choices (id, question_id, body) VALUES (1050, 234, 'larger because Illinois has a smaller population.');
INSERT INTO choices (id, question_id, body) VALUES (1051, 234, 'the same because population size doesn\'t matter.');
UPDATE questions SET answer = 1051 WHERE id=234;
INSERT INTO choices (id, question_id, body) VALUES (1052, 234, 'either smaller or larger because it\'s random.');

INSERT INTO questions (id, body, chapter) VALUES (235, 'The General Social Survey (GSS), conducted by the National Opinion Research Center at the University of Chicago, is a major source of data on social attitudes in the U.S.  Once each year 1500 adults are interviewed in their homes all across the country.  The subjects are asked their opinions about sex and marriage, attitudes toward women, welfare, foreign policy and many other issues.A potential source of nonsampling error in the GSS is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1053, 235, 'some subjects refuse to give their opinions.');
UPDATE questions SET answer = 1053 WHERE id=235;
INSERT INTO choices (id, question_id, body) VALUES (1054, 235, 'the sample design chooses dwelling units, so homeless people are left out.');
INSERT INTO choices (id, question_id, body) VALUES (1055, 235, 'both blacks and whites are included in the sample.');
INSERT INTO choices (id, question_id, body) VALUES (1056, 235, 'Both (a) and (b), but not (c).');

INSERT INTO questions (id, body, chapter) VALUES (236, 'A study at Yale Medical School investigated treatments for chronic cocaine abusers.  Of the 72 subjects, all cocaine users who wanted to quit, 24 were assigned at random to each of three drugs:  (a) desipramine, (b) lithium, (c) a placebo.  After 6 weeks the subjects reported whether they had stayed off cocaine.The Yale study is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1057, 236, 'an experiment.');
UPDATE questions SET answer = 1057 WHERE id=236;
INSERT INTO choices (id, question_id, body) VALUES (1058, 236, 'a sample survey.');
INSERT INTO choices (id, question_id, body) VALUES (1059, 236, 'using available data.');
INSERT INTO choices (id, question_id, body) VALUES (1060, 236, 'an observational study, but not a sample survey.');

INSERT INTO questions (id, body, chapter) VALUES (237, 'A study at Yale Medical School investigated treatments for chronic cocaine abusers.  Of the 72 subjects, all cocaine users who wanted to quit, 24 were assigned at random to each of three drugs:  (a) desipramine, (b) lithium, (c) a placebo.  After 6 weeks the subjects reported whether they had stayed off cocaine.The explanatory variable in the Yale study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1061, 237, 'whether or not a subject stayed off cocaine.');
INSERT INTO choices (id, question_id, body) VALUES (1062, 237, '72 cocaine users.');
INSERT INTO choices (id, question_id, body) VALUES (1063, 237, 'which drug a subject was given.');
UPDATE questions SET answer = 1063 WHERE id=237;
INSERT INTO choices (id, question_id, body) VALUES (1064, 237, 'randomization.');

INSERT INTO questions (id, body, chapter) VALUES (238, 'A study at Yale Medical School investigated treatments for chronic cocaine abusers.  Of the 72 subjects, all cocaine users who wanted to quit, 24 were assigned at random to each of three drugs:  (a) desipramine, (b) lithium, (c) a placebo.  After 6 weeks the subjects reported whether they had stayed off cocaine.The response variable in the Yale study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1065, 238, 'whether or not a subject stayed off cocaine.');
UPDATE questions SET answer = 1065 WHERE id=238;
INSERT INTO choices (id, question_id, body) VALUES (1066, 238, '72 cocaine users.');
INSERT INTO choices (id, question_id, body) VALUES (1067, 238, 'which drug a subject was given.');
INSERT INTO choices (id, question_id, body) VALUES (1068, 238, 'randomization.');

INSERT INTO questions (id, body, chapter) VALUES (239, 'A study at Yale Medical School investigated treatments for chronic cocaine abusers.  Of the 72 subjects, all cocaine users who wanted to quit, 24 were assigned at random to each of three drugs:  (a) desipramine, (b) lithium, (c) a placebo.  After 6 weeks the subjects reported whether they had stayed off cocaine.All of the subjects in the Yale study were male.  A similar study had 60 male and 30 female subjects.  The men and women were separately assigned at random to the three treatments so that separate conclusions are possible for men and women.  This design is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (1069, 239, 'a block design.');
UPDATE questions SET answer = 1069 WHERE id=239;
INSERT INTO choices (id, question_id, body) VALUES (1070, 239, 'a stratified random sample.');
INSERT INTO choices (id, question_id, body) VALUES (1071, 239, 'a matched-pairs design.');
INSERT INTO choices (id, question_id, body) VALUES (1072, 239, 'a completely randomized design.');

INSERT INTO questions (id, body, chapter) VALUES (240, 'The average wage of production workers (adjusted for the effects of inflation) was $11.08 an hour in 1981 and $10.35 an hour in 1991. In the decade of the 1980s, wages went down by about', 129);
INSERT INTO choices (id, question_id, body) VALUES (1073, 240, '73%.');
INSERT INTO choices (id, question_id, body) VALUES (1074, 240, '7.3%.');
INSERT INTO choices (id, question_id, body) VALUES (1075, 240, '7.0%.');
INSERT INTO choices (id, question_id, body) VALUES (1076, 240, '6.6%.');
UPDATE questions SET answer = 1076 WHERE id=240;

INSERT INTO questions (id, body, chapter) VALUES (241, 'A news article about airport flight delays said, &quot;Chicago\'s O\'Hare Field scheduled 114,370 flights.  Nearly 10 percent, 1136, were canceled.&quot; The correct percentage canceled was', 129);
INSERT INTO choices (id, question_id, body) VALUES (1077, 241, 'near one-tenth of one percent.');
INSERT INTO choices (id, question_id, body) VALUES (1078, 241, 'near one percent.');
UPDATE questions SET answer = 1078 WHERE id=241;
INSERT INTO choices (id, question_id, body) VALUES (1079, 241, 'near 10 percent.');
INSERT INTO choices (id, question_id, body) VALUES (1080, 241, 'near 100 percent.');

INSERT INTO questions (id, body, chapter) VALUES (242, 'A researcher creates a machine that will measure the total electrical activity in a human brain over a short period of time. She claims that this measures the intelligence of the brain\'s owner.  A psychologist says that\'s not true because the amount of electrical activity isn\'t related to ability to solve problems. The psychologist is claiming that electrical activity as a measure of intelligence is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1081, 242, 'invalid.');
UPDATE questions SET answer = 1081 WHERE id=242;
INSERT INTO choices (id, question_id, body) VALUES (1082, 242, 'biased.');
INSERT INTO choices (id, question_id, body) VALUES (1083, 242, 'not reliable.');
INSERT INTO choices (id, question_id, body) VALUES (1084, 242, 'not precise.');

INSERT INTO questions (id, body, chapter) VALUES (243, 'You are designing a clinical trial to see whether added calcium in the diet will reduce the blood pressure of middle-aged men.  You plan to give added calcium to a group of men and see whether their blood pressure is lower after six weeks.If you don\'t include a control group, your data will be invalid because of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1085, 243, 'the placebo effect.');
UPDATE questions SET answer = 1085 WHERE id=243;
INSERT INTO choices (id, question_id, body) VALUES (1086, 243, 'lack of confidentiality.');
INSERT INTO choices (id, question_id, body) VALUES (1087, 243, 'the double-blind effect.');
INSERT INTO choices (id, question_id, body) VALUES (1088, 243, 'voluntary response.');

INSERT INTO questions (id, body, chapter) VALUES (244, 'You are designing a clinical trial to see whether added calcium in the diet will reduce the blood pressure of middle-aged men.  You plan to give added calcium to a group of men and see whether their blood pressure is lower after six weeks.Preliminary information suggests that the effect of calcium is larger for black men than for white men.  Knowing this, you would probably use', 129);
INSERT INTO choices (id, question_id, body) VALUES (1089, 244, 'a stratified random sample.');
INSERT INTO choices (id, question_id, body) VALUES (1090, 244, 'a completely randomized design.');
INSERT INTO choices (id, question_id, body) VALUES (1091, 244, 'a block design, with calcium and placebo as the blocks.');
INSERT INTO choices (id, question_id, body) VALUES (1092, 244, 'a block design, with black and white as the blocks.');
UPDATE questions SET answer = 1092 WHERE id=244;

INSERT INTO questions (id, body, chapter) VALUES (245, 'You are designing a clinical trial to see whether added calcium in the diet will reduce the blood pressure of middle-aged men.  You plan to give added calcium to a group of men and see whether their blood pressure is lower after six weeks.Neither the subjects nor the doctors who work with them know whether or not a subject was given extra calcium.  This is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (1093, 245, 'informed consent.');
INSERT INTO choices (id, question_id, body) VALUES (1094, 245, 'randomization.');
INSERT INTO choices (id, question_id, body) VALUES (1095, 245, 'the double-blind technique.');
UPDATE questions SET answer = 1095 WHERE id=245;
INSERT INTO choices (id, question_id, body) VALUES (1096, 245, 'confounding.');

INSERT INTO questions (id, body, chapter) VALUES (246, 'A study shows that patients who receive surgery for intestinal cancer live much longer after treatment than patients who are treated without surgery.  But doctors operate only on patients in relatively good condition, so we can\'t conclude that surgery lengthens the patients\' lives.This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1097, 246, 'double-blind technique.');
INSERT INTO choices (id, question_id, body) VALUES (1098, 246, 'internal inconsistency.');
INSERT INTO choices (id, question_id, body) VALUES (1099, 246, 'the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1100, 246, 'confounding.');
UPDATE questions SET answer = 1100 WHERE id=246;

INSERT INTO questions (id, body, chapter) VALUES (247, 'A study shows that patients who receive surgery for intestinal cancer live much longer after treatment than patients who are treated without surgery.  But doctors operate only on patients in relatively good condition, so we can\'t conclude that surgery lengthens the patients\' lives.The response variable in the study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1101, 247, 'intestinal cancer.');
INSERT INTO choices (id, question_id, body) VALUES (1102, 247, 'length of life after treatment.');
UPDATE questions SET answer = 1102 WHERE id=247;
INSERT INTO choices (id, question_id, body) VALUES (1103, 247, 'the medical treatment given.');
INSERT INTO choices (id, question_id, body) VALUES (1104, 247, 'the cancer patients.');

INSERT INTO questions (id, body, chapter) VALUES (248, 'A psychologist conducts an experiment on the effect of rewards on performance by having students in her freshman course play an electronic game for rewards of $1, $5, and $25.  The students are randomly assigned to the three rewards.  Other psychologists think the experiment gives no information about the effect of rewards in realistic settings, such as business managers.  The critics claim the study', 129);
INSERT INTO choices (id, question_id, body) VALUES (1105, 248, 'gives results that do not generalize.');
UPDATE questions SET answer = 1105 WHERE id=248;
INSERT INTO choices (id, question_id, body) VALUES (1106, 248, 'ignores the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1107, 248, 'is not precise.');
INSERT INTO choices (id, question_id, body) VALUES (1108, 248, 'cannot establish causation because it is an observational study.');

INSERT INTO questions (id, body, chapter) VALUES (249, 'Increasing the sample size of an opinion poll will', 129);
INSERT INTO choices (id, question_id, body) VALUES (1109, 249, 'reduce the bias of the poll result.');
INSERT INTO choices (id, question_id, body) VALUES (1110, 249, 'reduce the variability of the poll result.');
UPDATE questions SET answer = 1110 WHERE id=249;
INSERT INTO choices (id, question_id, body) VALUES (1111, 249, 'reduce the effect of nonresponse on the poll.');
INSERT INTO choices (id, question_id, body) VALUES (1112, 249, 'all of the above.');
INSERT INTO choices (id, question_id, body) VALUES (1113, 249, '(A) and (B) but not (C).');

INSERT INTO questions (id, body, chapter) VALUES (250, 'A member of Congress receives 1128 letters about proposed legislation that would provide government insurance for nursing- home care.  Over 80% oppose the legislation.  This sample can\'t be trusted because', 129);
INSERT INTO choices (id, question_id, body) VALUES (1114, 250, 'there is no control group.');
INSERT INTO choices (id, question_id, body) VALUES (1115, 250, 'it includes people with no interest in the issue.');
INSERT INTO choices (id, question_id, body) VALUES (1116, 250, 'there is bias due to voluntary response.');
UPDATE questions SET answer = 1116 WHERE id=250;
INSERT INTO choices (id, question_id, body) VALUES (1117, 250, 'of the placebo effect.');

INSERT INTO questions (id, body, chapter) VALUES (251, 'A sample of student opinion at a Big Ten university selects an SRS of 200 of the 30,000 undergraduate students and a separate SRS of 100 of the 5,000 graduate students.  This kind of sample is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (1118, 251, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (1119, 251, 'stratified random sample.');
UPDATE questions SET answer = 1119 WHERE id=251;
INSERT INTO choices (id, question_id, body) VALUES (1120, 251, 'systematic random sample.');
INSERT INTO choices (id, question_id, body) VALUES (1121, 251, 'multistage sample.');

INSERT INTO questions (id, body, chapter) VALUES (252, 'There are 34 students in your statistics section.  You want to choose an SRS of 3 of these students.  A correct way to assign labels to the 34 students before using the random digit table is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1122, 252, '00, 01, 02, ..., 33.');
INSERT INTO choices (id, question_id, body) VALUES (1123, 252, '00, 01, 02, ..., 34.');
INSERT INTO choices (id, question_id, body) VALUES (1124, 252, '01, 02, 03, ..., 34.');
INSERT INTO choices (id, question_id, body) VALUES (1125, 252, 'all three are correct.');
INSERT INTO choices (id, question_id, body) VALUES (1126, 252, 'only (a) and (c) are correct.');
UPDATE questions SET answer = 1126 WHERE id=252;

INSERT INTO questions (id, body, chapter) VALUES (253, 'A quality control inspector on an assembly line making microwave ovens randomly chooses one of the first ten ovens manufactured each day.  This oven and every tenth oven thereafter gets inspected.  This is called', 129);
INSERT INTO choices (id, question_id, body) VALUES (1127, 253, 'a block design.');
INSERT INTO choices (id, question_id, body) VALUES (1128, 253, 'a completely randomized design.');
INSERT INTO choices (id, question_id, body) VALUES (1129, 253, 'simple random sampling.');
INSERT INTO choices (id, question_id, body) VALUES (1130, 253, 'systematic random sampling.');
UPDATE questions SET answer = 1130 WHERE id=253;
INSERT INTO choices (id, question_id, body) VALUES (1131, 253, 'stratified random sampling.');

INSERT INTO questions (id, body, chapter) VALUES (254, 'The Dean of Students at Mountain Tech is interested in finding out how prevalent cheating is.  She sends a questionnaire to 1000 randomly chosen students and receives 700 replies.  Those asked to fill out the questionnaire are told not to put their names on either the questionnaire or on the return envelope.  Thus, no one in the Dean\'s office has any idea who sent in which response. After the replies are processed, statistics describing the entire sample are published, but no one outside the Dean\'s office is allowed to see individual questionnaires.  This survey is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1132, 254, 'both anonymous and confidential.');
UPDATE questions SET answer = 1132 WHERE id=254;
INSERT INTO choices (id, question_id, body) VALUES (1133, 254, 'anonymous but not necessarily confidential.');
INSERT INTO choices (id, question_id, body) VALUES (1134, 254, 'confidential, but not necessarily anonymous.');
INSERT INTO choices (id, question_id, body) VALUES (1135, 254, 'neither anonymous nor confidential.');

INSERT INTO questions (id, body, chapter) VALUES (255, 'The Gallup organization conducts a poll to see how much support there is for a constitutional amendment guaranteeing the right to abortion.  They announce that 23% of Americans are in favor of such an amendment, with a 95% confidence margin of error of 3.4 percent. If the results of the above poll were described using a 90% confidence statement, what would happen to the margin of error?', 129);
INSERT INTO choices (id, question_id, body) VALUES (1136, 255, 'It would be greater than 3.4 percent.');
INSERT INTO choices (id, question_id, body) VALUES (1137, 255, 'It would be less than 3.4 percent.');
UPDATE questions SET answer = 1137 WHERE id=255;
INSERT INTO choices (id, question_id, body) VALUES (1138, 255, 'It would still be 3.4 percent.');
INSERT INTO choices (id, question_id, body) VALUES (1139, 255, 'More information is needed to determine how the margin or error would change.');

INSERT INTO questions (id, body, chapter) VALUES (256, 'About half of a Gallup abortion poll sample were women.  Of the women asked, 29% said they would support a constitutional amendment guaranteeing the right to abortion.  What can you say about the margin of error for a 95% confidence statement concerning the percentage of American women favoring such a constitutional amendment?', 129);
INSERT INTO choices (id, question_id, body) VALUES (1140, 256, 'Greater than 3.4 percent.');
UPDATE questions SET answer = 1140 WHERE id=256;
INSERT INTO choices (id, question_id, body) VALUES (1141, 256, 'Less than 3.4 percent.');
INSERT INTO choices (id, question_id, body) VALUES (1142, 256, 'Equal to 3.4 percent.');
INSERT INTO choices (id, question_id, body) VALUES (1143, 256, 'It is not possible to choose between (A), (B), and (C) without further information.');

INSERT INTO questions (id, body, chapter) VALUES (257, 'Voluntary response polls almost always suffer from', 129);
INSERT INTO choices (id, question_id, body) VALUES (1144, 257, 'the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1145, 257, 'high bias.');
UPDATE questions SET answer = 1145 WHERE id=257;
INSERT INTO choices (id, question_id, body) VALUES (1146, 257, 'highly variable results.');
INSERT INTO choices (id, question_id, body) VALUES (1147, 257, 'randomization.');

INSERT INTO questions (id, body, chapter) VALUES (258, 'In comparative trials in medicine, the placebo effect and subconscious bias on the part of the physicians evaluating treatment outcomes can be avoided by using', 129);
INSERT INTO choices (id, question_id, body) VALUES (1148, 258, 'the double-blind technique.');
UPDATE questions SET answer = 1148 WHERE id=258;
INSERT INTO choices (id, question_id, body) VALUES (1149, 258, 'randomized complete block designs.');
INSERT INTO choices (id, question_id, body) VALUES (1150, 258, 'response variables.');
INSERT INTO choices (id, question_id, body) VALUES (1151, 258, 'stratified random samples.');
INSERT INTO choices (id, question_id, body) VALUES (1152, 258, 'all of the above.');

INSERT INTO questions (id, body, chapter) VALUES (259, 'Professor Ziegenfuss of the Geology Department has ordered a new instrument which is supposed to measure the iron content of iron ore.  After the instrument arrives, he uses it to measure the iron content of five test samples of ore, all of which are known to be exactly 16% iron.  The numbers given by the machine on these five test samples are 5%, 3%, 28%, 16%, and 25%. Based on these measurements, one can conclude that the new instrument', 129);
INSERT INTO choices (id, question_id, body) VALUES (1153, 259, 'is biased.');
INSERT INTO choices (id, question_id, body) VALUES (1154, 259, 'is not reliable.');
UPDATE questions SET answer = 1154 WHERE id=259;
INSERT INTO choices (id, question_id, body) VALUES (1155, 259, 'suffers from the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1156, 259, 'is confounded.');
INSERT INTO choices (id, question_id, body) VALUES (1157, 259, 'Both (B) and (C).');

INSERT INTO questions (id, body, chapter) VALUES (260, 'A local police department gives everyone who applies for a job a test in American history.  However, experience shows that these test scores are unrelated to future job performance. As a measure of ability to do police work, the history test scores', 129);
INSERT INTO choices (id, question_id, body) VALUES (1158, 260, 'are response variables.');
INSERT INTO choices (id, question_id, body) VALUES (1159, 260, 'are biased.');
INSERT INTO choices (id, question_id, body) VALUES (1160, 260, 'are confounded.');
INSERT INTO choices (id, question_id, body) VALUES (1161, 260, 'are invalid.');
UPDATE questions SET answer = 1161 WHERE id=260;
INSERT INTO choices (id, question_id, body) VALUES (1162, 260, 'have predictive validity.');

INSERT INTO questions (id, body, chapter) VALUES (261, 'A local police department gives everyone who applies for a job a test of their knowledge of modern popular music.  Experience shows that those who score well on this test tend to become lousy police officers.  As a measure of future job performance, the music test scores', 129);
INSERT INTO choices (id, question_id, body) VALUES (1163, 261, 'are response variables.');
INSERT INTO choices (id, question_id, body) VALUES (1164, 261, 'are biased.');
INSERT INTO choices (id, question_id, body) VALUES (1165, 261, 'are confounded.');
INSERT INTO choices (id, question_id, body) VALUES (1166, 261, 'are invalid.');
INSERT INTO choices (id, question_id, body) VALUES (1167, 261, 'have predictive validity.');
UPDATE questions SET answer = 1167 WHERE id=261;

INSERT INTO questions (id, body, chapter) VALUES (262, 'A farmer wishes to determine which of two brands of baby-pig pellets, Kent or Moormans, produces better weight gains.  Two of his sows each give birth to litters of 10 pigs on the same day, so he decides to give the baby-pigs in litter A only Kent pellets, while the pigs in litter B will get only Moormans pellets.  After four weeks, the average weight gain for pigs in litter A is greater than the average weight gain for pigs in litter B.The farmer in this story has conducted', 129);
INSERT INTO choices (id, question_id, body) VALUES (1168, 262, 'a stratified random sample.');
INSERT INTO choices (id, question_id, body) VALUES (1169, 262, 'a matched pair design.');
INSERT INTO choices (id, question_id, body) VALUES (1170, 262, 'an observational study.');
INSERT INTO choices (id, question_id, body) VALUES (1171, 262, 'an experiment.');
UPDATE questions SET answer = 1171 WHERE id=262;
INSERT INTO choices (id, question_id, body) VALUES (1172, 262, 'a double-blind trial.');

INSERT INTO questions (id, body, chapter) VALUES (263, 'A farmer wishes to determine which of two brands of baby-pig pellets, Kent or Moormans, produces better weight gains.  Two of his sows each give birth to litters of 10 pigs on the same day, so he decides to give the baby-pigs in litter A only Kent pellets, while the pigs in litter B will get only Moormans pellets.  After four weeks, the average weight gain for pigs in litter A is greater than the average weight gain for pigs in litter B.In the farmer story above, the weight of the pigs after four weeks is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1173, 263, 'a parameter.');
INSERT INTO choices (id, question_id, body) VALUES (1174, 263, 'the response variable.');
UPDATE questions SET answer = 1174 WHERE id=263;
INSERT INTO choices (id, question_id, body) VALUES (1175, 263, 'the explanatory variable.');
INSERT INTO choices (id, question_id, body) VALUES (1176, 263, 'the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1177, 263, 'stratified.');

INSERT INTO questions (id, body, chapter) VALUES (264, 'A farmer wishes to determine which of two brands of baby-pig pellets, Kent or Moormans, produces better weight gains.  Two of his sows each give birth to litters of 10 pigs on the same day, so he decides to give the baby-pigs in litter A only Kent pellets, while the pigs in litter B will get only Moormans pellets.  After four weeks, the average weight gain for pigs in litter A is greater than the average weight gain for pigs in litter B.The brand of pellets in this story is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1178, 264, 'a parameter.');
INSERT INTO choices (id, question_id, body) VALUES (1179, 264, 'the response variable.');
INSERT INTO choices (id, question_id, body) VALUES (1180, 264, 'the explanatory variable.');
UPDATE questions SET answer = 1180 WHERE id=264;
INSERT INTO choices (id, question_id, body) VALUES (1181, 264, 'the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1182, 264, 'stratified.');

INSERT INTO questions (id, body, chapter) VALUES (265, 'A farmer wishes to determine which of two brands of baby-pig pellets, Kent or Moormans, produces better weight gains.  Two of his sows each give birth to litters of 10 pigs on the same day, so he decides to give the baby-pigs in litter A only Kent pellets, while the pigs in litter B will get only Moormans pellets.  After four weeks, the average weight gain for pigs in litter A is greater than the average weight gain for pigs in litter B.The feed they get is not the only factor affecting the rate at which pigs gain weight.  Genetic differences also affect weight gain.  It is likely that the pigs in litter A are genetically different from the pigs in litter B, since the two litters have different mothers.  Since the farmer is only interested in determining which brand of pellets is better, the study suffers from', 129);
INSERT INTO choices (id, question_id, body) VALUES (1183, 265, 'confounding');
UPDATE questions SET answer = 1183 WHERE id=265;
INSERT INTO choices (id, question_id, body) VALUES (1184, 265, 'voluntary response.');
INSERT INTO choices (id, question_id, body) VALUES (1185, 265, 'convenience sampling.');
INSERT INTO choices (id, question_id, body) VALUES (1186, 265, 'invalid measurement.');
INSERT INTO choices (id, question_id, body) VALUES (1187, 265, 'the placebo effect.');

INSERT INTO questions (id, body, chapter) VALUES (266, 'A farmer wishes to determine which of two brands of baby-pig pellets, Kent or Moormans, produces better weight gains.  Two of his sows each give birth to litters of 10 pigs on the same day, so he decides to give the baby-pigs in litter A only Kent pellets, while the pigs in litter B will get only Moormans pellets.  After four weeks, the average weight gain for pigs in litter A is greater than the average weight gain for pigs in litter B.If the farmer had fed Kent pellets to an SRS of 5 pigs from litter A and an SRS of 5 pigs from litter B, with the remaining 10 pigs getting Moormans pellets, then he would have been using', 129);
INSERT INTO choices (id, question_id, body) VALUES (1188, 266, 'a systematic random sample.');
INSERT INTO choices (id, question_id, body) VALUES (1189, 266, 'a convenience sample.');
INSERT INTO choices (id, question_id, body) VALUES (1190, 266, 'a matched-pairs design.');
INSERT INTO choices (id, question_id, body) VALUES (1191, 266, 'a block design.');
UPDATE questions SET answer = 1191 WHERE id=266;
INSERT INTO choices (id, question_id, body) VALUES (1192, 266, 'a completely randomized design.');

INSERT INTO questions (id, body, chapter) VALUES (267, 'Men who have worked as coal miners for many years generally have lung problems.  They call their problems &quot;black lung disease.&quot; Suppose, however, that almost all coal miners smoke.  This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1193, 267, 'confounding.');
UPDATE questions SET answer = 1193 WHERE id=267;
INSERT INTO choices (id, question_id, body) VALUES (1194, 267, 'the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1195, 267, 'a completely randomized design.');
INSERT INTO choices (id, question_id, body) VALUES (1196, 267, 'a double-blind experiment.');
INSERT INTO choices (id, question_id, body) VALUES (1197, 267, 'voluntary response sampling.');

INSERT INTO questions (id, body, chapter) VALUES (268, 'Professor Lilli Gans wishes to study the relationship between a person\'s zodiac sign and the his or her political opinions.  She obtains the birthdays of all 816 students enrolled in her Astrology 101 course.  Then she uses a random digits table to choose 10 students from each of the twelve zodiac signs.  For example, students born from March 21 until April 19 have the Aries zodiac sign, and Professor Gans chooses 10 Aries students at random.  She uses a different part of the table of random digits to choose students having each sign.  After obtaining her sample, Professor Gans has the selected students fill out a questionnaire.Professor Gans has obtained', 129);
INSERT INTO choices (id, question_id, body) VALUES (1198, 268, 'a simple random sample from her class.');
INSERT INTO choices (id, question_id, body) VALUES (1199, 268, 'a systematic random sample from her class.');
INSERT INTO choices (id, question_id, body) VALUES (1200, 268, 'a stratified random sample, where the strata are students with different political opinions.');
INSERT INTO choices (id, question_id, body) VALUES (1201, 268, 'a stratified random sample, where the strata are students with different zodiac signs.');
UPDATE questions SET answer = 1201 WHERE id=268;

INSERT INTO questions (id, body, chapter) VALUES (269, 'Professor Lilli Gans wishes to study the relationship between a person\'s zodiac sign and the his or her political opinions.  She obtains the birthdays of all 816 students enrolled in her Astrology 101 course.  Then she uses a random digits table to choose 10 students from each of the twelve zodiac signs.  For example, students born from March 21 until April 19 have the Aries zodiac sign, and Professor Gans chooses 10 Aries students at random.  She uses a different part of the table of random digits to choose students having each sign.  After obtaining her sample, Professor Gans has the selected students fill out a questionnaire.Professor Gans asks the students filling out her questionnaire to put their names on the front so she can ask for clarification or elaboration of some answers later.  However, she promises that no one other than she will find out who gave what answer.  Professor Gans is promising', 129);
INSERT INTO choices (id, question_id, body) VALUES (1202, 269, 'informed consent.');
INSERT INTO choices (id, question_id, body) VALUES (1203, 269, 'anonymity.');
INSERT INTO choices (id, question_id, body) VALUES (1204, 269, 'confidentiality.');
UPDATE questions SET answer = 1204 WHERE id=269;
INSERT INTO choices (id, question_id, body) VALUES (1205, 269, 'unbiasedness.');

INSERT INTO questions (id, body, chapter) VALUES (270, 'Professor Lilli Gans wishes to study the relationship between a person\'s zodiac sign and the his or her political opinions.  She obtains the birthdays of all 816 students enrolled in her Astrology 101 course.  Then she uses a random digits table to choose 10 students from each of the twelve zodiac signs.  For example, students born from March 21 until April 19 have the Aries zodiac sign, and Professor Gans chooses 10 Aries students at random.  She uses a different part of the table of random digits to choose students having each sign.  After obtaining her sample, Professor Gans has the selected students fill out a questionnaire.One of the questions in Professor Gans\' questionnaire asks whether the student has ever given money to the American Nazi Party.  Any students who have done so are likely to lie and say &quot;No,&quot; rather than admit the truth.  This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1206, 270, 'confounding');
INSERT INTO choices (id, question_id, body) VALUES (1207, 270, 'anecdotal evidence.');
INSERT INTO choices (id, question_id, body) VALUES (1208, 270, 'sampling error');
INSERT INTO choices (id, question_id, body) VALUES (1209, 270, 'nonsampling error');
UPDATE questions SET answer = 1209 WHERE id=270;

INSERT INTO questions (id, body, chapter) VALUES (271, 'Professor Faulpelz asks a random sample of high school freshmen about their TV viewing habits.  Four years later, he obtains their final high school grade-point averages and compares these with the answers about TV viewing habits.  He finds that students who watch a lot of TV get lower grades than those who don\'t.  When it comes to high school GPA, the answers to the Faulpelz questionnaire on TV viewing habits', 129);
INSERT INTO choices (id, question_id, body) VALUES (1210, 271, 'have predictive validity.');
UPDATE questions SET answer = 1210 WHERE id=271;
INSERT INTO choices (id, question_id, body) VALUES (1211, 271, 'are invalid because they are biased against students whose parents watch TV a lot.');
INSERT INTO choices (id, question_id, body) VALUES (1212, 271, 'are invalid because there were no controls.');
INSERT INTO choices (id, question_id, body) VALUES (1213, 271, 'are invalid because of convenience sampling.');

INSERT INTO questions (id, body, chapter) VALUES (272, 'Is &quot;tartar control&quot; Crest toothpaste is more effective at preventing tartar build-up on teeth than regular Crest toothpaste? Researchers recruit 200 volunteers (109 men and 91 women) who first get a free tooth cleaning.  Then the researchers randomly assign 100 to the tartar control group and 100 to the regular toothpaste group.  All 200 people are given unmarked tubes of the appropriate toothpaste and instructed on how often to brush their teeth each day.  They are not told which group they are in, and the two kinds of toothpaste look the same.  After 6 months, they are rated on tartar build-up by dentists who don\'t know who was in each group.This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1214, 272, 'matched-pairs design.');
INSERT INTO choices (id, question_id, body) VALUES (1215, 272, 'a completely randomized design.');
UPDATE questions SET answer = 1215 WHERE id=272;
INSERT INTO choices (id, question_id, body) VALUES (1216, 272, 'a block design.');
INSERT INTO choices (id, question_id, body) VALUES (1217, 272, 'more than one of the above.');
INSERT INTO choices (id, question_id, body) VALUES (1218, 272, 'None of the above.');

INSERT INTO questions (id, body, chapter) VALUES (273, 'Is &quot;tartar control&quot; Crest toothpaste is more effective at preventing tartar build-up on teeth than regular Crest toothpaste? Researchers recruit 200 volunteers (109 men and 91 women) who first get a free tooth cleaning.  Then the researchers randomly assign 100 to the tartar control group and 100 to the regular toothpaste group.  All 200 people are given unmarked tubes of the appropriate toothpaste and instructed on how often to brush their teeth each day.  They are not told which group they are in, and the two kinds of toothpaste look the same.  After 6 months, they are rated on tartar build-up by dentists who don\'t know who was in each group.The study also made use of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1219, 273, 'computer-assisted interviewing.');
INSERT INTO choices (id, question_id, body) VALUES (1220, 273, 'anonymity of subjects.');
INSERT INTO choices (id, question_id, body) VALUES (1221, 273, 'the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1222, 273, 'the double-blind technique.');
UPDATE questions SET answer = 1222 WHERE id=273;
INSERT INTO choices (id, question_id, body) VALUES (1223, 273, 'None of the above.');

INSERT INTO questions (id, body, chapter) VALUES (274, 'Suppose we wish to estimate the percentage of students who smoke cigarettes at each of several colleges and universities.  Two of the colleges are Wabash College (enrollment 900) and Purdue University (enrollment 36,000).  The margin of error for a simple random sample of 5% of the students at each school will be', 129);
INSERT INTO choices (id, question_id, body) VALUES (1224, 274, 'smaller for Wabash than for Purdue.');
INSERT INTO choices (id, question_id, body) VALUES (1225, 274, 'larger for Wabash than for Purdue.');
UPDATE questions SET answer = 1225 WHERE id=274;
INSERT INTO choices (id, question_id, body) VALUES (1226, 274, 'about the same at both schools.');
INSERT INTO choices (id, question_id, body) VALUES (1227, 274, 'either smaller or larger for Wabash&#8212;can\'t tell without seeing the sample results.');

INSERT INTO questions (id, body, chapter) VALUES (275, 'If we took a SRS of 1700 people from California (population 32 million) and a SRS of 1000 people from Detroit (population 1 million) which sample would have the smaller margin of error?', 129);
INSERT INTO choices (id, question_id, body) VALUES (1228, 275, 'Detroit, because 1000/1,000,000 is more than 1700/32,000,000.');
INSERT INTO choices (id, question_id, body) VALUES (1229, 275, 'Detroit, because it has the smaller population.');
INSERT INTO choices (id, question_id, body) VALUES (1230, 275, 'California, because the sample size (1700) is larger than for Detroit (1000).');
UPDATE questions SET answer = 1230 WHERE id=275;
INSERT INTO choices (id, question_id, body) VALUES (1231, 275, 'California, because it has the larger population.');
INSERT INTO choices (id, question_id, body) VALUES (1232, 275, 'Both would be the same, because simple random samples(SRS) are taken in both places.');

INSERT INTO questions (id, body, chapter) VALUES (276, 'Compared with other types of probability sampling, a simple random sample (SRS) is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1233, 276, 'the least expensive method for a national sample survey.');
INSERT INTO choices (id, question_id, body) VALUES (1234, 276, 'the only method in which all individuals in the population are equally likely to be selected.');
INSERT INTO choices (id, question_id, body) VALUES (1235, 276, 'the only method in which all possible samples have the same chance of being selected.');
UPDATE questions SET answer = 1235 WHERE id=276;
INSERT INTO choices (id, question_id, body) VALUES (1236, 276, 'all of the above.');

INSERT INTO questions (id, body, chapter) VALUES (277, 'A Gallup poll reports that of a sample of 1500 randomly selected U.S. adults, 63% think that Jessie Ventura is unfit to be president.  They also report that the margin of error is +/- 4 %, and that the confidence level is 95%.You can conclude that', 129);
INSERT INTO choices (id, question_id, body) VALUES (1237, 277, 'exactly 63% of all U.S. adults think Ventura is unfit.');
INSERT INTO choices (id, question_id, body) VALUES (1238, 277, 'with 95% confidence, between 59% and 67% of all U.S. adults think Ventura is unfit.');
UPDATE questions SET answer = 1238 WHERE id=277;
INSERT INTO choices (id, question_id, body) VALUES (1239, 277, 'it is certain that between 59% and 67% of all U.S. adults think Ventura is unfit.');
INSERT INTO choices (id, question_id, body) VALUES (1240, 277, 'if 100 other pollsters were to duplicate this poll, 95 would get a sample percentage somewhat closer to 50% than to 63%.');

INSERT INTO questions (id, body, chapter) VALUES (278, 'A Gallup poll reports that of a sample of 1500 randomly selected U.S. adults, 63% think that Jessie Ventura is unfit to be president.  They also report that the margin of error is +/- 4 %, and that the confidence level is 95%.The parameter of interest is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1241, 278, 'the unknown percentage of all U.S. adults who think Ventura is unfit to be president.');
UPDATE questions SET answer = 1241 WHERE id=278;
INSERT INTO choices (id, question_id, body) VALUES (1242, 278, '63%.');
INSERT INTO choices (id, question_id, body) VALUES (1243, 278, '1500.');
INSERT INTO choices (id, question_id, body) VALUES (1244, 278, '95%.');
INSERT INTO choices (id, question_id, body) VALUES (1245, 278, '+/- 4%.');

INSERT INTO questions (id, body, chapter) VALUES (279, 'A sample survey to study the effect of race on political affiliation takes a sample consisting of 500 randomly selected whites, 500 randomly selected blacks, and 500 randomly selected Hispanics.  This is an example of a', 129);
INSERT INTO choices (id, question_id, body) VALUES (1246, 279, 'randomized block experiment.');
INSERT INTO choices (id, question_id, body) VALUES (1247, 279, 'simple random sample.');
INSERT INTO choices (id, question_id, body) VALUES (1248, 279, 'systematic random sample.');
INSERT INTO choices (id, question_id, body) VALUES (1249, 279, 'stratified random sample.');
UPDATE questions SET answer = 1249 WHERE id=279;
INSERT INTO choices (id, question_id, body) VALUES (1250, 279, 'None of the above.');

INSERT INTO questions (id, body, chapter) VALUES (280, 'The essential difference between an experiment and an observational study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1251, 280, 'observational studies may have confounded variables, but experiments never do.');
INSERT INTO choices (id, question_id, body) VALUES (1252, 280, 'in an experiment, people must give their informed consent before being allowed to participate.');
INSERT INTO choices (id, question_id, body) VALUES (1253, 280, 'observational studies are always biased.');
INSERT INTO choices (id, question_id, body) VALUES (1254, 280, 'observational studies cannot have response variables.');
INSERT INTO choices (id, question_id, body) VALUES (1255, 280, 'an experiment imposes treatments on the subjects, but an observational study does not.');
UPDATE questions SET answer = 1255 WHERE id=280;

INSERT INTO questions (id, body, chapter) VALUES (281, 'An experiment is conducted to determine whether the caffeine in two cups of regular coffee, taken each morning before class, can improve the performance of a typical student on a statistics exam.<br /><br />Suppose all students in the 8:30 section are given the treatment (2 cups of coffee) and all students in the 9:30 section are not permitted to have any caffeine before class.Unfortunately, any systematic difference between the two sections on the exam might be due to the fact that the 8:30 and 9:30 classes have different instructors. This is an example of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1256, 281, 'placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1257, 281, 'bias.');
INSERT INTO choices (id, question_id, body) VALUES (1258, 281, 'confounding.');
UPDATE questions SET answer = 1258 WHERE id=281;
INSERT INTO choices (id, question_id, body) VALUES (1259, 281, 'observational study.');
INSERT INTO choices (id, question_id, body) VALUES (1260, 281, 'stratification.');

INSERT INTO questions (id, body, chapter) VALUES (282, 'An experiment is conducted to determine whether the caffeine in two cups of regular coffee, taken each morning before class, can improve the performance of a typical student on a statistics exam.<br /><br />Suppose all students in the 8:30 section are given the treatment (2 cups of coffee) and all students in the 9:30 section are not permitted to have any caffeine before class.The response variable in this study is', 129);
INSERT INTO choices (id, question_id, body) VALUES (1261, 282, '2 cups of coffee');
INSERT INTO choices (id, question_id, body) VALUES (1262, 282, 'the time the class is held');
INSERT INTO choices (id, question_id, body) VALUES (1263, 282, 'class attendance');
INSERT INTO choices (id, question_id, body) VALUES (1264, 282, 'teacher\'s performance');
INSERT INTO choices (id, question_id, body) VALUES (1265, 282, 'exam performance');
UPDATE questions SET answer = 1265 WHERE id=282;

INSERT INTO questions (id, body, chapter) VALUES (283, 'An experiment is conducted to determine whether the caffeine in two cups of regular coffee, taken each morning before class, can improve the performance of a typical student on a statistics exam.<br /><br />Suppose all students in the 8:30 section are given the treatment (2 cups of coffee) and all students in the 9:30 section are not permitted to have any caffeine before class.Instead of giving all students in the 8:30 section 2 cups of coffee, students in the 8:30 section are randomly assigned to a treatment group (2 cups of coffee) or a control group (2 cups of decaffeinated coffee).  The coffee is so bad that students cannot tell whether they are in the treatment or the control group.  As is turns out, students in both groups do better on the exam than students in the 9:30 section, who weren\'t given anything.  This could be the result of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1266, 283, 'the placebo effect.');
UPDATE questions SET answer = 1266 WHERE id=283;
INSERT INTO choices (id, question_id, body) VALUES (1267, 283, 'an observational study.');
INSERT INTO choices (id, question_id, body) VALUES (1268, 283, 'voluntary response.');
INSERT INTO choices (id, question_id, body) VALUES (1269, 283, 'sampling variability.');
INSERT INTO choices (id, question_id, body) VALUES (1270, 283, 'all of the above.');

INSERT INTO questions (id, body, chapter) VALUES (284, 'An experiment is conducted to determine whether the caffeine in two cups of regular coffee, taken each morning before class, can improve the performance of a typical student on a statistics exam.<br /><br />Suppose all students in the 8:30 section are given the treatment (2 cups of coffee) and all students in the 9:30 section are not permitted to have any caffeine before class.Suppose half of the 8:30 students are randomly allocated to the treatment group (2 cups of coffee), the other half to the control group (2 cups of decaf). In addition, half of the 9:30 students are randomly allocated to the treatment group, and the other half to the control group.  This is an example of a', 129);
INSERT INTO choices (id, question_id, body) VALUES (1271, 284, 'voluntary response study.');
INSERT INTO choices (id, question_id, body) VALUES (1272, 284, 'stratified sampling procedure.');
INSERT INTO choices (id, question_id, body) VALUES (1273, 284, 'gazebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1274, 284, 'completely randomized design.');
INSERT INTO choices (id, question_id, body) VALUES (1275, 284, 'block design.');
UPDATE questions SET answer = 1275 WHERE id=284;

INSERT INTO questions (id, body, chapter) VALUES (285, 'Randomization in experimental design is used to', 129);
INSERT INTO choices (id, question_id, body) VALUES (1276, 285, 'control for the response variable.');
INSERT INTO choices (id, question_id, body) VALUES (1277, 285, 'avoid confounding.');
UPDATE questions SET answer = 1277 WHERE id=285;
INSERT INTO choices (id, question_id, body) VALUES (1278, 285, 'avoid the placebo effect.');
INSERT INTO choices (id, question_id, body) VALUES (1279, 285, 'implement the double-blind technique.');

INSERT INTO questions (id, body, chapter) VALUES (286, 'In a randomized block design the blocks often represent levels of', 129);
INSERT INTO choices (id, question_id, body) VALUES (1280, 286, 'a lurking variable suspected of being confounded with the explanatory variable.');
UPDATE questions SET answer = 1280 WHERE id=286;
INSERT INTO choices (id, question_id, body) VALUES (1281, 286, 'the explanatory variable.');
INSERT INTO choices (id, question_id, body) VALUES (1282, 286, 'the response variable.');
INSERT INTO choices (id, question_id, body) VALUES (1283, 286, 'placebo dosage.');

INSERT INTO questions (id, body, chapter) VALUES (287, 'A student reports that of a simple random sample of 200 college undergraduates 37% were female and 41% were male.  We know that the student has made a mistake because', 129);
INSERT INTO choices (id, question_id, body) VALUES (1284, 287, 'it is highly unlikely that a simple random sample of 200 undergraduates would have as few as 37% females.');
INSERT INTO choices (id, question_id, body) VALUES (1285, 287, 'of the possibility of response error.');
INSERT INTO choices (id, question_id, body) VALUES (1286, 287, '37% plus 41% is not 100%.');
UPDATE questions SET answer = 1286 WHERE id=287;
INSERT INTO choices (id, question_id, body) VALUES (1287, 287, 'the percentages of males and females would be closer together in a true SRS.');
INSERT INTO choices (id, question_id, body) VALUES (1288, 287, 'a stratified random sample would have been less prone to error.');

INSERT INTO questions (id, body, chapter) VALUES (288, 'In a clinical trial to study the effectiveness of a vaccine in preventing a new disease, the best design is to', 129);
INSERT INTO choices (id, question_id, body) VALUES (1289, 288, 'give the vaccine to the high-risk subjects and a placebo to the rest.');
INSERT INTO choices (id, question_id, body) VALUES (1290, 288, 'give the vaccine to those who want it, and use the others as a control group for comparison.');
INSERT INTO choices (id, question_id, body) VALUES (1291, 288, 'give the vaccine to all who sign a consent form.');
INSERT INTO choices (id, question_id, body) VALUES (1292, 288, 'choose a control group and a treatment group by random allocation from among those who consent to take part in the study.');
UPDATE questions SET answer = 1292 WHERE id=288;

INSERT INTO questions (id, body, chapter) VALUES (289, 'In 1970, 8.4 billion cigars were smoked in the United States. In 1989, 2.0 billion cigars were smoked. What percentage change is this?', 129);
INSERT INTO choices (id, question_id, body) VALUES (1293, 289, '7.6% decrease');
INSERT INTO choices (id, question_id, body) VALUES (1294, 289, '7.6% increase');
INSERT INTO choices (id, question_id, body) VALUES (1295, 289, '176% decrease');
INSERT INTO choices (id, question_id, body) VALUES (1296, 289, '76% increase');
INSERT INTO choices (id, question_id, body) VALUES (1297, 289, '76% decrease');
UPDATE questions SET answer = 1297 WHERE id=289;

INSERT INTO questions (id, body, chapter) VALUES (290, 'The diameter of a metal rod was measured 8 times and the results in millimeters were<br /><br />31.7, 31.7, 31.8, 31.7, 31.7, 31.8, 31.8<br /><br />The true diameter of the rod is 29.2 millimeters. The measurement process appears to', 129);
INSERT INTO choices (id, question_id, body) VALUES (1298, 290, 'be biased and unreliable');
INSERT INTO choices (id, question_id, body) VALUES (1299, 290, 'be reliable but somewhat biased');
UPDATE questions SET answer = 1299 WHERE id=290;
INSERT INTO choices (id, question_id, body) VALUES (1300, 290, 'be unbiased but unreliable');
INSERT INTO choices (id, question_id, body) VALUES (1301, 290, 'be unbiased and reliable');

INSERT INTO questions (id, body, chapter) VALUES (291, 'If the sample size is much smaller than the population size, the margin of error of a simple random sample depends on', 129);
INSERT INTO choices (id, question_id, body) VALUES (1302, 291, 'sample size.');
UPDATE questions SET answer = 1302 WHERE id=291;
INSERT INTO choices (id, question_id, body) VALUES (1303, 291, 'population size.');
INSERT INTO choices (id, question_id, body) VALUES (1304, 291, 'Both of the above.');
INSERT INTO choices (id, question_id, body) VALUES (1305, 291, 'Neither of the above.');

INSERT INTO questions (id, body, chapter) VALUES (292, 'An experiment on the effect of Vitamin A on cancer uses two randomly chosen groups of 200 men each, one given Vitamin A and the other a placebo. An estimate from a similar experiment using two groups of 1000 men each would have', 129);
INSERT INTO choices (id, question_id, body) VALUES (1306, 292, 'less bias.');
INSERT INTO choices (id, question_id, body) VALUES (1307, 292, 'more bias.');
INSERT INTO choices (id, question_id, body) VALUES (1308, 292, 'more variability.');
INSERT INTO choices (id, question_id, body) VALUES (1309, 292, 'less variability.');
UPDATE questions SET answer = 1309 WHERE id=292;

INSERT INTO questions (id, body, chapter) VALUES (293, 'A dishonest butcher has a scale on which he weighs the meat his customers buy. In order to increase his profits, he has doctored the scale so that it always reads very close to 10 percent more than the actual weight. The measurements from this scale are', 129);
INSERT INTO choices (id, question_id, body) VALUES (1310, 293, 'biased and unreliable');
INSERT INTO choices (id, question_id, body) VALUES (1311, 293, 'biased and reliable');
UPDATE questions SET answer = 1311 WHERE id=293;
INSERT INTO choices (id, question_id, body) VALUES (1312, 293, 'unbiased and unreliable');
INSERT INTO choices (id, question_id, body) VALUES (1313, 293, 'unbiased and reliable');
