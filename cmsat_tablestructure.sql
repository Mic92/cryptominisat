DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `runID` bigint(20) NOT NULL,
  `tagname` varchar(500) NOT NULL,
  `tag` varchar(500) NOT NULL
);

DROP TABLE IF EXISTS `reduceDB`;
CREATE TABLE `reduceDB` (
  `runID` bigint(20) NOT NULL,
  `simplifications` int(20) NOT NULL,
  `restarts` bigint(20) NOT NULL,
  `conflicts` bigint(20) NOT NULL,
  `runtime` float NOT NULL,
  `level` int(20) NOT NULL,
  `numReduceDBs` int(20) NOT NULL,
  `numRemoved` int(20) NOT NULL
);

DROP TABLE IF EXISTS `restart`;
CREATE TABLE `restart` (
  `runID` bigint(20) NOT NULL,
  `simplifications` int(20) NOT NULL,
  `restarts` bigint(20) NOT NULL,
  `conflicts` bigint(20) NOT NULL,
  `runtime` float NOT NULL,
  `numIrredBins` int(20) NOT NULL,
  `numIrredLongs` int(20) NOT NULL,
  `numRedBins` int(20) NOT NULL,
  `numRedLongs` int(20) NOT NULL,
  `numIrredLits` bigint(20) NOT NULL,
  `numredLits` bigint(20) NOT NULL,
  `glue` float NOT NULL,
  `glueSD` float NOT NULL,
  `glueMin` int(20) NOT NULL,
  `glueMax` int(20) NOT NULL,
  `size` float NOT NULL,
  `sizeSD` float NOT NULL,
  `sizeMin` int(20) NOT NULL,
  `sizeMax` int(20) NOT NULL,
  `resolutions` float NOT NULL,
  `resolutionsSD` float NOT NULL,
  `resolutionsMin` int(20) NOT NULL,
  `resolutionsMax` int(20) NOT NULL,
  `branchDepth` float NOT NULL,
  `branchDepthSD` float NOT NULL,
  `branchDepthMin` int(20) NOT NULL,
  `branchDepthMax` int(20) NOT NULL,
  `branchDepthDelta` float NOT NULL,
  `branchDepthDeltaSD` float NOT NULL,
  `branchDepthDeltaMin` int(20) NOT NULL,
  `branchDepthDeltaMax` int(20) NOT NULL,
  `trailDepth` float NOT NULL,
  `trailDepthSD` float NOT NULL,
  `trailDepthMin` int(20) NOT NULL,
  `trailDepthMax` int(20) NOT NULL,
  `trailDepthDelta` float NOT NULL,
  `trailDepthDeltaSD` float NOT NULL,
  `trailDepthDeltaMin` int(20) NOT NULL,
  `trailDepthDeltaMax` int(20) NOT NULL,
  `propBinIrred` bigint(20) NOT NULL,
  `propBinRed` bigint(20) NOT NULL,
  `propLongIrred` bigint(20) NOT NULL,
  `propLongRed` bigint(20) NOT NULL,
  `conflBinIrred` bigint(20) NOT NULL,
  `conflBinRed` bigint(20) NOT NULL,
  `conflLongIrred` bigint(20) NOT NULL,
  `conflLongRed` bigint(20) NOT NULL,
  `learntUnits` int(20) NOT NULL,
  `learntBins` int(20) NOT NULL,
  `learntLongs` int(20) NOT NULL,
  `resolBinIrred` bigint(20) NOT NULL,
  `resolBinRed` bigint(20) NOT NULL,
  `resolLIrred` bigint(20) NOT NULL,
  `resolLRed` bigint(20) NOT NULL,
  `propagations` bigint(20) NOT NULL,
  `decisions` bigint(20) NOT NULL,
  `flipped` bigint(20) NOT NULL,
  `varSetPos` bigint(20) NOT NULL,
  `varSetNeg` bigint(20) NOT NULL,
  `free` int(20) NOT NULL,
  `replaced` int(20) NOT NULL,
  `eliminated` int(20) NOT NULL,
  `set` int(20) NOT NULL,
  `clauseIDstartInclusive` int(20) NOT NULL,
  `clauseIDendExclusive` int(20) NOT NULL
);

DROP TABLE IF EXISTS `timepassed`;
CREATE TABLE `timepassed` (
  `runID` bigint(20) NOT NULL,
  `simplifications` bigint(20) NOT NULL,
  `conflicts` bigint(20) NOT NULL,
  `runtime` double NOT NULL,
  `name` varchar(200) NOT NULL,
  `elapsed` double NOT NULL,
  `timeout` int(20) DEFAULT NULL,
  `percenttimeremain` float DEFAULT NULL
);

DROP TABLE IF EXISTS `memused`;
CREATE TABLE `memused` (
  `runID` bigint(20) NOT NULL,
  `simplifications` bigint(20) NOT NULL,
  `conflicts` bigint(20) NOT NULL,
  `runtime` double NOT NULL,
  `name` varchar(200) NOT NULL,
  `MB` int(20) NOT NULL
);

DROP TABLE IF EXISTS `solverRun`;
CREATE TABLE `solverRun` (
  `runID` bigint(20) NOT NULL,
  `runtime` bigint(20) NOT NULL
);

DROP TABLE IF EXISTS `startup`;
CREATE TABLE `startup` (
  `runID` bigint(20) NOT NULL,
  `startTime` datetime NOT NULL
);

DROP TABLE IF EXISTS `finishup`;
CREATE TABLE `finishup` (
  `runID` bigint(20) NOT NULL,
  `endTime` datetime NOT NULL,
  `status` varchar(255) NOT NULL
);

DROP TABLE IF EXISTS `clauseStats`;
CREATE TABLE `clauseStats` (
  `runID` bigint(20) NOT NULL,
  `simplifications` int(20) NOT NULL,
  `restarts` bigint(20) NOT NULL,
  `conflicts` bigint(20) NOT NULL,
  `clauseID` bigint(20) NOT NULL,

  `glue` int(20) NOT NULL,
  `size` int(20) NOT NULL,
  `conflicts_this_restart` bigint(20) NOT NULL,
  `num_overlap_literals` int(20) NOT NULL,
  `num_antecedents` int(20) NOT NULL,
  `antecedents_avg_size` int(20) NOT NULL,

  `backtrack_level` int(20) NOT NULL,
  `decision_level` int(20) NOT NULL,
  `trail_depth_level` int(20) NOT NULL,

  `atedecents_binIrred` int(20) NOT NULL,
  `atedecents_binRed` int(20) NOT NULL,
  `atedecents_longIrred` int(20) NOT NULL,
  `atedecents_longRed` int(20) NOT NULL,

  `vsids_vars_avg` double NOT NULL,
  `vsids_vars_var` double NOT NULL,
  `vsids_vars_max` double NOT NULL,

  `antecedents_glue_long_reds_avg` float NOT NULL,
  `antecedents_glue_long_reds_var` float NOT NULL,
  `antecedents_glue_long_reds_min` int(20) NOT NULL,
  `antecedents_glue_long_reds_max` int(20) NOT NULL,

  `antecedents_long_red_age_avg` double NOT NULL,
  `antecedents_long_red_age_var` double NOT NULL,
  `antecedents_long_red_age_min` bigint(20) NOT NULL,
  `antecedents_long_red_age_max` bigint(20) NOT NULL,

  `vsids_of_resolving_literals_avg` double NOT NULL,
  `vsids_of_resolving_literals_var` double NOT NULL,
  `vsids_of_resolving_literals_min` double NOT NULL,
  `vsids_of_resolving_literals_max` double NOT NULL,

  `vsids_of_all_incoming_lits_avg` double NOT NULL,
  `vsids_of_all_incoming_lits_var` double NOT NULL,
  `vsids_of_all_incoming_lits_min` double NOT NULL,
  `vsids_of_all_incoming_lits_max` double NOT NULL,

  `antecedents_antecedents_vsids_avg` double NOT NULL,

  `decision_level_hist` float NOT NULL,
  `backtrack_level_hist` float NOT NULL,
  `trail_depth_level_hist` float NOT NULL,
  `vsids_vars_hist` double NOT NULL,
  `size_hist` float NOT NULL,
  `glue_hist` float NOT NULL,
  `num_antecedents_hist` float NOT NULL
);

DROP TABLE IF EXISTS `goodClauses`;
create table `goodClauses` (
    `runID` bigint(20) NOT NULL,
    `clauseID` bigint(20) NOT NULL,
    `numUsed` bigint(20) NOT NULL,
    `usedForTime` bigint(20) NOT NULL
);

-- create index `idx6` on `restart` (`runID`,`simplifications`);
-- create index `idx7` on `timepassed` (`runID`,`conflicts`);
-- create index `idx7_2` on `memused` (`runID`,`conflicts`);
-- create index `idx9` on `solverRun` (`runID`);
-- create index `idx10` on `startup` (`runID`);
-- create index `idx11` on `finishup` (`runID`);
-- create index `idx3` on `tags` (`runID`);
-- create index `idx4` on `reduceDB` (`runID`,`conflicts`);
-- create index `idx12` on `sum_clause_stats` (`runID`,`reduceDB`);
