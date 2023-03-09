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


