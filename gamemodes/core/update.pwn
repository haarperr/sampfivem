SavePlayer(playerid)
{
	new query[140];
	mysql_format(gSQL, query, sizeof(query), "UPDATE `users` SET `Cash` = '%d', `Kills` = '%d', `Deaths` = '%d' WHERE `ID` = '%d'", PlayerInfo[playerid][Cash], PlayerInfo[playerid][Kills], PlayerInfo[playerid][Deaths], PlayerInfo[playerid][ID]);
	// We will format the query to save the player and we will use this as soon as a player disconnects.
	mysql_tquery(gSQL, query); //We will execute the query.
	return 1;
}