SA-MP Discord Embed Message (Pawn)

This Pawn code allows you to send structured Discord Embed logs directly from your SA-MP server.
It is ideal for logging player actions, admin commands, NPC usage, payments, bans, errors, or system events in real time.

🚀 What does it do?

Sends Embed messages to a Discord channel

Supports:

Title

Description (multi-line logs)

Color

Footer

Keeps logs clean, readable, and professional

Fully customizable per log type

🧠 How it works

The system uses a Discord connector (such as discord-connector / DCC_ functions) to create an embed object and send it to a specific Discord channel.

Typical flow:

Collect in-game data (player name, id, IP, NPC id, cost, date, etc.)

Format the log text

Create an embed

Send it to Discord

🧩 Example Use Cases

🔑 Player login / logout logs

🧑 NPC interaction logs (NPC ID → custom NPC name)

💰 Money / payment tracking

⚠️ Admin actions (kick, ban, warn)

🛠️ Debug & error reporting

📌 Example Embed Structure (Pawn)
new ip[64];
GetPlayerIp(playerid, ip, sizeof(ip));

new message[256], footer[128];
format(message, sizeof(message),
"```Oyuncu: %s\nID: %d\nIP: %s\nNPC ID: %d\nÜcret: $%d\nTarih: %s```",
GetName(playerid), playerid, ip, npc_id, cost, ReturnDate()
);

new DCC_Embed:embed = DCC_CreateEmbed();
DCC_SetEmbedColor(embed, 0xff0000);
DCC_SetEmbedTitle(embed, "WYS FREEROAM LOG");
DCC_SetEmbedDescription(embed, message);

format(footer, sizeof(footer), "wys freeroam • discord.gg/samptr");
DCC_SetEmbedFooter(embed, footer);

DCC_SendChannelEmbedMessage(LOG_CHANNEL_ID, embed);

🎨 Why use Discord Embeds?

Much more readable than plain text

Easy to separate logs by color & title

Looks professional for public or staff-only servers

Works perfectly with large RP / Freeroam servers

✅ Advantages

Lightweight & fast

No gameplay impact

Fully modular (enable/disable logs)

Easy to expand with new fields

If you want, I can:

🔧 Add NPC name mapping by ID

🔁 Add log on/off toggle

🎯 Split logs into multiple Discord channels

🧪 Add debug / error embeds

📦 Turn this into a full log module

Söyle yeter, yapıyı bozmadan ekleriz 😄

hem ingilizce hem ingilizce yaz

Tamam 👍
Aşağıda aynı içeriği hem Türkçe hem İngilizce olacak şekilde, README / tanıtım metni formatında verdim. Bunu direkt GitHub, forum veya paylaşım konusu olarak kullanabilirsin.

SA-MP Discord Embed Message (Pawn)
🇹🇷 Türkçe Açıklama

Bu Pawn kodu, SA-MP sunucunuzdan Discord’a Embed formatında log göndermenizi sağlar.
Oyuncu işlemleri, admin komutları, NPC kullanımı, para hareketleri ve sistem olayları için idealdir.

🚀 Ne işe yarar?

Discord kanalına Embed mesaj gönderir

Destekler:

Başlık (Title)

Açıklama (Description – çok satırlı log)

Renk (Color)

Footer

Logları düzenli, okunabilir ve profesyonel gösterir

Her log türü için özelleştirilebilir

🧠 Nasıl çalışır?

Sistem, discord-connector (DCC_ fonksiyonları) kullanarak bir Embed oluşturur ve belirlenen Discord kanalına gönderir.

Akış:

Oyun içi veriler alınır (isim, id, IP, NPC id, ücret, tarih)

Log metni formatlanır

Embed oluşturulur

Discord’a gönderilir

🧩 Kullanım Alanları

🔑 Oyuncu giriş / çıkış logları

🧑 NPC etkileşim logları (ID → NPC adı)

💰 Para / ödeme logları

⚠️ Admin işlemleri (kick, ban, warn)

🛠️ Debug ve hata logları

📌 Örnek Pawn Kodu
new ip[64];
GetPlayerIp(playerid, ip, sizeof(ip));

new message[256], footer[128];
format(message, sizeof(message),
"```Oyuncu: %s\nID: %d\nIP: %s\nNPC ID: %d\nÜcret: $%d\nTarih: %s```",
GetName(playerid), playerid, ip, npc_id, cost, ReturnDate()
);

new DCC_Embed:embed = DCC_CreateEmbed();
DCC_SetEmbedColor(embed, 0xff0000);
DCC_SetEmbedTitle(embed, "WYS FREEROAM LOG");
DCC_SetEmbedDescription(embed, message);

format(footer, sizeof(footer), "wys freeroam • discord.gg/samptr");
DCC_SetEmbedFooter(embed, footer);

DCC_SendChannelEmbedMessage(LOG_CHANNEL_ID, embed);

✅ Avantajlar

Hafif ve hızlı

Oyun performansını etkilemez

Loglar aç/kapat yapılabilir

Kolay genişletilebilir

🇬🇧 English Description

This Pawn code allows you to send Discord Embed logs directly from your SA-MP server.
It is perfect for player actions, admin commands, NPC usage, money logs, and system events.

🚀 What does it do?

Sends Embed messages to a Discord channel

Supports:

Title

Description (multi-line logs)

Color

Footer

Keeps logs clean, readable, and professional

Fully customizable for each log type

🧠 How does it work?

The system uses a Discord connector (DCC_ functions) to create an embed and send it to a specific Discord channel.

Flow:

Collect in-game data (name, id, IP, NPC id, cost, date)

Format the log text

Create an embed

Send it to Discord

🧩 Use Cases

🔑 Player login / logout logs

🧑 NPC interaction logs (ID → NPC name)

💰 Money / payment tracking

⚠️ Admin actions (kick, ban, warn)

🛠️ Debug & error logs

✅ Advantages

Lightweight & fast

No gameplay impact

Logs can be enabled / disabled

Easy to expand and customize
