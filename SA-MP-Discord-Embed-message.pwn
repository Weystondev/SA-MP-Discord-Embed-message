// SA-MP-Discord-Embed-message
//Code : Weyston

#include <a_samp>
//----------------------------------------------------------
#include <discord-connector> //inc olarak discord-connector

static DCC_Channel: loginlog;
static DCC_Channel: exitlog;

// Stocks
stock strreplace(string[], find, replace)
{
    for(new i=0; string[i]; i++)
    {
        if(string[i] == find)
        {
            string[i] = replace;
        }
    }
}
stock GetName(playerid)
{
    new name[24];
    GetPlayerName(playerid, name, sizeof(name));
    strreplace(name, '_', ' ');
    return name;
}


////
ReturnDate()
{
    static
        date[36];

    getdate(date[2], date[1], date[0]);
    gettime(date[3], date[4], date[5]);

    format(date, sizeof(date), "%02d/%02d/%d, %02d:%02d:%02d", date[0], date[1], date[2], date[3], date[4], date[5]);
    return date;
}

main()
{
	print("\n----------------------------------");
	print(" SA-MP-Discord-Embed-message Loaded...");
	print("----------------------------------\n");
}



public OnGameModeInit()
{
	SetGameModeText("Weyston");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	
	// Discord channels
	loginlog = DCC_FindChannelById("log channel ID");
	exitlog = DCC_FindChannelById("log channel ID");
	return 1;
}

public OnGameModeExit()
{
	return 1;
}


public OnPlayerConnect(playerid)
{

	// Discord Embed log
	new ip[64];
	GetPlayerIp(playerid, ip, sizeof(ip));
    new message[256], footer [500];
    format(message, sizeof(message), "``` Oyuncu ismi : %s\n Oyuncu id : (%d)\n IP: %s\n sunucuya giris yapti !\n Tarih : [%s] ```", GetName(playerid), playerid, ip, ReturnDate());
    new DCC_Embed:embed = DCC_CreateEmbed();
    DCC_SetEmbedColor(embed, 0xff0000);
    DCC_SetEmbedTitle(embed, "_SERVER NAME_");
    format (footer, sizeof(footer), "server name discord.gg/test");
    DCC_SetEmbedFooter (embed, footer);
    DCC_SetEmbedDescription(embed, message);
    DCC_SendChannelEmbedMessage(loginlog, embed);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    // Discord Embed log
    new ip[64];
	GetPlayerIp(playerid, ip, sizeof(ip));
    new message[256], footer [500];
    format(message, sizeof(message), "``` Oyuncu ismi : %s\n Oyuncu id : (%d)\n IP: %s\n sunucudan ayrildi !\n Tarih : [%s] ```", GetName(playerid), playerid, ip, ReturnDate());
    new DCC_Embed:embed = DCC_CreateEmbed();
    DCC_SetEmbedColor(embed, 0xff0000);
    DCC_SetEmbedTitle(embed, "_SERVER NAME_");
    format (footer, sizeof(footer), "server name discord.gg/test");
    DCC_SetEmbedFooter (embed, footer);
    DCC_SetEmbedDescription(embed, message);
    DCC_SendChannelEmbedMessage(exitlog, embed);
	return 1;
}

