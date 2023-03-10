-- CHAMPIONS LEAGUE GROUP STAGE DATA 21-22 FROM UEFA.com -- 

--Looking into Database to find what key stat does a team need to qualify for the next round?--

/*Creating Table*/
CREATE TABLE CLGroupStage (id INTEGER PRIMARY KEY, 
club_name TEXT, country TEXT, uefa_ranking INTEGER, cl_trophies_won NUMERIC, 
goals_scored NUMERIC, goals_conceded NUMERIC, possession_percentage NUMERIC, 
passing_percentage NUMERIC, ball_recovered INTEGER, tackles_won INTEGER, 
clean_sheets NUMERIC, saves NUMERIC, distance_covered_km NUMERIC, 
yellow_red_cards NUMERIC, win_record NUMERIC, loss_record NUMERIC, 
ties_record NUMERIC, groups TEXT, standing INTEGER, qualified TEXT);

/*Create Rows for champions_league for each cell*/
INSERT INTO CLGroupStage VALUES (1, "RB Salzburg", "Austria", 21, 0, 5, 9, 40.5, 71.84, 272, 46, 1, 22, 696.09, 11, 1, 2 ,3, "E",3, "NO");  
INSERT INTO CLGroupStage VALUES (2, "Club Brugge", "Belgium", 44, 0, 7, 4, 47.67, 81.5, 224, 20, 5, 31, 661.65, 22, 3, 1, 2, "B", 2, "YES");
INSERT INTO CLGroupStage VALUES (3, "Dinamo Zagreb", "Croatia",34, 0, 4, 11, 47.5, 82.67, 236, 30, 1, 25, 652.84, 13, 1, 4, 1, "E", 4, "NO");
INSERT INTO CLGroupStage VALUES (4, "Victoria Plzen", "Czech Rep.", 55, 0, 5, 24, 32.67, 76.17, 223, 20, 0, 32, 659.02, 13, 0, 6, 0, "C", 4, "NO");
INSERT INTO CLGroupStage VALUES (5, "Fc Copenhagen", "Denmark",41, 0, 1, 12, 38.67, 82, 221, 16, 2, 27, 725.64, 13, 0, 3, 3, "G", 4, "NO");
INSERT INTO CLGroupStage VALUES (6, "Manchester City", "England",3, 0, 14, 2, 64.17, 91.5, 216, 14, 4, 9, 692.59, 9, 4, 0, 2, "G", 1 , "YES"); 
INSERT INTO CLGroupStage VALUES (7, "Liverpool", "England", 2, 6, 17, 6, 55, 85.5, 243, 34, 3, 10, 692.99, 8, 5, 1, 0, "A", 2, "YES");
INSERT INTO CLGroupStage VALUES (8, "Chelsea", "England", 5, 2, 10, 4, 60.84, 88.5, 278, 25, 2, 12, 665.2, 12, 4, 1, 1, "E", 1, "YES");
INSERT INTO CLGroupStage VALUES (9, "Tottenham Hotspur", "England", 14, 0, 8, 6, 48.34, 85.5, 241, 11, 2, 17, 726.82, 16, 3, 1, 2, "D", 1, "YES");
INSERT INTO CLGroupStage VALUES (10, "PSG", "France",7, 0, 16, 7, 55.5, 90.5, 234, 16, 0, 17, 643.93, 11, 4, 0, 2, "H", 2, "YES");
INSERT INTO CLGroupStage VALUES (11, "Olympique Marseille", "France", 38, 1, 8, 8, 59, 87, 243, 11, 1, 12, 671.07, 12, 2, 4, 0, "D", 4, "NO");
INSERT INTO CLGroupStage VALUES (12, "Bayern Munich", "Germany",1, 6, 18, 2, 55.67, 88.34, 255, 32, 5, 17, 721.54, 11, 6, 0, 0, "C", 1, "YES");
INSERT INTO CLGroupStage VALUES (13, "Borussia Dortmund", "Germany", 19, 1, 10, 5, 46.67, 84.34, 252, 26, 2, 20, 706.06, 8, 2, 1, 3, "G", 2, "YES");
INSERT INTO CLGroupStage VALUES (14, "Bayer Leverkusen", "Germany", 30, 0, 4, 8, 52.34, 84.67, 266, 27, 2, 18, 710.99, 20, 1, 3, 2, "B", 3, "NO");
INSERT INTO CLGroupStage VALUES (15, "RB Leipzig", "Germany", 13, 0, 13, 9, 53.5, 87.67, 245, 26, 2, 11, 588.49, 5, 4, 2, 0, "F", 2, "YES");
INSERT INTO CLGroupStage VALUES (16, "Eintracht Frankfurt", "Germany",26, 0, 7, 8, 45, 80, 296, 23, 2, 16, 720.94, 15, 3, 2, 1, "D", 2, "YES");
INSERT INTO CLGroupStage VALUES (17, "Maccabi Haifa", "Israel",169, 0, 7, 21, 45.67, 84.5, 244, 20, 1, 21, 648.82, 14, 1, 5, 0, "H", 4, "NO");
INSERT INTO CLGroupStage VALUES (18, "Ac Milan", "Italy", 45, 7, 12, 7, 51.17, 83.5, 236, 40, 2, 20, 662.88, 16, 3, 2, 1, "E", 2, "YES"); 
INSERT INTO CLGroupStage VALUES (19, "Inter Milan", "Italy", 23, 3, 10, 7, 49.17, 84.17, 207, 29, 3, 29, 689.42, 16, 3, 2, 1, "C", 2, "YES");
INSERT INTO CLGroupStage VALUES (20, "Napoli", "Italy", 25, 0, 20, 6, 50.67, 85.84, 255, 25, 2, 17, 690.36, 9, 5, 1, 0, "A", 1, "YES");
INSERT INTO CLGroupStage VALUES (21, "Juventus", "Italy", 8, 2, 9, 13, 49.17, 86.34, 220, 35, 0, 20, 674.46, 14, 1, 5, 0, "H", 3, "NO");
INSERT INTO CLGroupStage VALUES (22, "Ajax", "Netherlands", 15, 4, 11, 16, 53.67, 85, 246, 42, 1, 22, 680.74, 16, 2, 4, 0, "A", 3, "NO");
INSERT INTO CLGroupStage VALUES (23, "Benfica", "Portugal", 27, 2, 16, 7, 49.67, 86, 252, 35, 1, 15, 718.47, 13, 4, 0, 2, "H", 1, "YES");
INSERT INTO CLGroupStage VALUES (24, "Porto", "Portugal", 16, 2, 12, 7, 46, 79.34, 242, 25, 3, 23, 673.82, 19, 4, 2, 0, "B", 1, "YES");
INSERT INTO CLGroupStage VALUES (25, "Sporting CP", "Portugal", 28, 0, 8, 9, 47.67, 81.84, 226, 24, 2, 22, 654.54, 20, 2, 3, 1, "D", 3, "NO");
INSERT INTO CLGroupStage VALUES (26, "Celtic", "Scotland", 51, 1, 4, 15, 44.17, 87.5, 218, 29, 0, 16, 598.1, 7, 0, 4, 2, "F", 4, "NO");
INSERT INTO CLGroupStage VALUES (27, "Rangers", "Scotland", 33, 0, 2, 22, 40.67, 79.5, 219, 36, 0, 29, 666.06, 11, 0, 6, 0, "A", 4, "NO");
INSERT INTO CLGroupStage VALUES (28, "Real Madrid", "Spain", 4, 14, 15, 6, 57.84, 91.84, 227, 26, 2, 20, 555.03, 5, 4, 1, 1, "F", 1, "YES");
INSERT INTO CLGroupStage VALUES (29, "Barcelona", "Spain", 6, 5, 12, 12, 62.5, 88.84, 231, 24, 0, 19, 712.92, 10, 2, 3, 1, "C", 3, "NO");
INSERT INTO CLGroupStage VALUES (30, "Atletico Madrid", "Spain", 9, 0, 5, 9, 54, 86.5, 236, 28, 1, 19, 709.9, 13, 1, 3, 2, "B", 4, "NO");
INSERT INTO CLGroupStage VALUES (31, "Sevilla", "Spain", 12, 0, 6, 12, 50.5, 85.34, 207, 35, 2, 18, 684.66, 13, 1, 3, 2, "G", 3, "NO"); 
INSERT INTO CLGroupStage VALUES (32, "Shakhtar Donetsk", "Ukraine", 22, 0, 8, 10, 44.5, 86.5, 234, 34, 0, 31, 697.86, 16, 1, 2, 3, "F", 3, "NO");



/*Showing The Whole Table*/
SELECT *
FROM CLGroupStage;

/*How Many Teams Qualified to the next round?*/
SELECT COUNT(qualified) AS RoundOf16
FROM CLGroupStage
WHERE qualified = 'YES'

SELECT club_name, qualified
FROM CLGroupStage
WHERE qualified = 'YES'
--16 teams qualified to the next round--

/*Eliminated Teams*/
SELECT club_name, qualified
FROM CLGroupStage
WHERE qualified = 'NO'


/*Total Goals Scored and Games played*/
SELECT COUNT(club_name) AS TotalTeams,
COUNT(DISTINCT(country)) AS CountriesParticipated,
SUM(goals_scored) AS TotalGoals,
SUM(win_record + loss_record + ties_record) AS TotalGamesPlayed,
COUNT(DISTINCT(groups)) AS TotalGroups
FROM CLGroupStage;
--32 Teams Participated. 15 Countries Involved. 304 Goals in Total. 192 games played. 8 Total groups.--

/*Total Goals By Group*/
SELECT groups, SUM(goals_scored) AS total_goals
FROM CLGroupStage
GROUP BY groups
ORDER BY total_goals DESC
-- Group A has most goals scored with 50 goals while B has 28--

/*Most and Least Goals Scored*/
SELECT club_name, goals_scored, qualified, standing
FROM CLGroupStage
ORDER BY goals_scored DESC
-- Napoli has the most goals scored that qualified to the next round with 20 goals while Eintracht Frankfurt has the least with 7--

/*Finding the Goal Difference and Team Ranking*/
SELECT club_name, goals_scored, goals_conceded, (goals_scored - goals_conceded) AS GoalDifference,
DENSE_RANK() OVER (ORDER BY goals_scored - goals_conceded DESC) AS GoalRank
FROM CLGroupStage
-- A goal difference is calculated when finding out which teams qualify through split decision. The higher the goal difference the more likely youl qualify. In this case, Bayern Munich qualified with a goal difference of 16--

/* Average Goals and Conceded by Placement in Group*/
SELECT club_name, goals_scored, goals_conceded,
DENSE_RANK() OVER (ORDER BY standing) AS [Rank],
AVG(goals_scored) OVER(PARTITION BY standing) AS AvgGoalsByPlacement,
AVG(goals_conceded) OVER(PARTITION BY standing) AS AvgConcededByPlacement
FROM CLGroupStage 
--First Place Ranked scored an average goal of 14.125%--




--Looking into Possession and Passing--

/*Looking into teams that holds best possession and passing*/
SELECT club_name, possession_percentage, 
DENSE_RANK() OVER (ORDER BY possession_percentage DESC) AS PossessionRank,
qualified, 
standing
FROM CLGroupStage
ORDER BY possession_percentage 
--Manchester City has the most possession with 64.17%--

SELECT club_name, passing_percentage, 
DENSE_RANK() OVER (ORDER BY passing_percentage DESC) AS PassingRank, 
qualified, 
standing
FROM CLGroupStage
ORDER BY passing_percentage 
--Real Madrid has most passing with 91.84%--

SELECT club_name, possession_percentage, passing_percentage, standing,
AVG(possession_percentage) OVER (PARTITION BY standing) AS AvgPossessionByPlacement,
AVG(passing_percentage) OVER (PARTITION BY standing) AS AvgPassingByPlacement
FROM CLGroupStage
--First Place in Rank has Average Possession of 54.15%--

--Looking into balls recovered through successful tackles--
SELECT club_name, tackles_won, ball_recovered, (tackles_won/ball_recovered)*100 AS BallRecoveryByTacklePercentage
FROM CLGroupStage
ORDER BY BallRecoveryByTacklePercentage
-- Ajax recovered 17% of their possession through successful tackles--

SELECT club_name, tackles_won, ball_recovered, standing,
AVG(tackles_won) OVER (PARTITION BY standing) AS AvgTacklesByPlacement,
AVG(ball_recovered) OVER (PARTITION BY standing) AS AvgBallRecoveryByPlacement
FROM CLGroupStage
ORDER BY Standing 
--Third Place averages the most tackles with 33.375 but First Place average the most ball recovery with 245.75

/*Looking into Clean Sheets and Saves*/
SELECT club_name, clean_sheets, qualified, standing
FROM CLGroupStage
ORDER BY clean_sheets 
--Bayern Munich has the most clean sheets with 5 and out of the top 16 teams for clean sheets, 75% qualified to the round of 16--

SELECT  club_name, saves, qualified, standing
FROM CLGroupStage
ORDER BY saves 
-- Victoria Plzen has most saves with 32 while Manchester City has 9 even though Victoria Plzen didn't qualify and were last in their group. This tells me the worser teams tend to have more saves as more shots are being thrown at them.--

SELECT club_name, clean_sheets, saves, standing,
AVG(clean_sheets) OVER(PARTITION BY standing) AS AvgCleanSheetsByPlacement,
AVG(saves) OVER (PARTITION BY standing) AS AvgSavesByPlacement
FROM CLGroupStage
--First Place Averaged clean sheets at 2.625 but Last Place Averaged the most saves with 22.625--


--Looking into Distance Covered--
SELECT club_name, distance_covered_km, qualified, standing
FROM CLGroupStage
ORDER BY distance_covered_km 

SELECT club_name, distance_covered_km, standing,
AVG(distance_covered_km) OVER (PARTITION BY standing) AS AvgDistanceByPlacement
FROM CLGroupStage
--Although Tottenham Hotspur are qualified with distance covered being 726.82 km, Real Madrid also qualified has the least at 555.03 km. There seems to be no relation between qualified and not qualified as counter attacks play a huge role in winning a game.--



--Looking into Win Loss Tie Record--
SELECT club_name, win_record, qualified, standing
FROM CLGroupStage
ORDER BY win_record DESC 

SELECT club_name, loss_record, qualified, standing
FROM CLGroupStage
ORDER BY loss_record DESC

SELECT club_name,  ties_record, qualified, standing
FROM CLGroupStage
ORDER BY ties_record DESC

SELECT club_name, win_record, ties_record, loss_record, qualified,
(win_record + ties_record + loss_record) AS TotalGames,
((2 * win_record + ties_record) / (2 * 6)) * 100 AS WinningPercentage
FROM CLGroupStage
ORDER BY WinningPercentage 

--Teams that won 58.3% of their games and over qualified to the next round--
--Bayern Munich has most wins with 6. Victoria Plzen has most losses with 6. Rb Salzburg has most ties with 3.--


