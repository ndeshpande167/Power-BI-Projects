DECLARE @APLDate INT
SET @APLDate = 0

SELECT @APLDate = MAX(DateKey) FROM TrackStats ts

/* Apple Plays */
UPDATE MM_TrackTotals 
SET APL_Plays_Total = ts.APL_Plays FROM TrackStats ts
WHERE ts.DateKey = @APLDate AND
ts.TrackKey = TrackId

/* Spotify */
/* Spotify - Streams */
UPDATE MM_TrackTotals 
SET SP_Streams_Total = ts.SP_Streams FROM TrackStats ts
WHERE ts.DateKey = @APLDate AND
ts.TrackKey = TrackId

/* Spotify - Listeners */
UPDATE MM_TrackTotals 
SET SP_Listeners_Total = ts.SP_Listeners FROM TrackStats ts
WHERE ts.DateKey = @APLDate AND
ts.TrackKey = TrackId

/* Spotify - Saves */
UPDATE MM_TrackTotals 
SET SP_Saves_Total = ts.SP_Saves FROM TrackStats ts
WHERE ts.DateKey = @APLDate AND
ts.TrackKey = TrackId


/* YouTube Views */
UPDATE MM_TrackTotals 
SET YT_Views_Total = ts.YT_Views FROM TrackStats ts
WHERE ts.DateKey = @APLDate AND
ts.TrackKey = TrackId

/* SoundCloud Plays */
UPDATE MM_TrackTotals 
SET SC_Plays_Total = ts.SC_Plays FROM TrackStats ts
WHERE ts.DateKey = @APLDate AND
ts.TrackKey = TrackId