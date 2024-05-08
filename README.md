![Header](https://cdn.modrinth.com/data/cached_images/c125fa1f38631128b293112a7a511c61bd438ee2.png)
<center>
<img alt="Modrinth Followers" src="https://img.shields.io/modrinth/followers/ACSZqOO2?style=flat-square&amp;logo=modrinth&amp;logoColor=%2300AF5C&amp;label=Followers">
<a href="https://discord.gg/D75yRDfWKD" target="_blank"><img alt="Discord" src="https://img.shields.io/discord/878270685867311164?logo=discord&amp;logoColor=%235865F2&amp;label=Discord&amp;cacheSeconds=3600&amp;link=https%3A%2F%2Fdiscord.gg%2FD75yRDfWKD">
</a>
<a href="https://vanderflys.github.io" target="_blank"><img alt="Website" src="https://img.shields.io/website?url=https%3A%2F%2Fexplorerseden.eu&amp;up_message=Click%20Me&amp;down_message=We%27ll%20be%20right%20back!&amp;label=Website&amp;cacheSeconds=3600">
</a>
<img alt="Static Badge" src="https://img.shields.io/badge/Server-vanderflys.chickeniq.net-brightgreen">
</center><br>

## 📖 Description
A fully customizable datapack for Minecraft 1.20.5+ that features custom guns that fully integrate with the surrounding world.
You can create your own guns with custom stats and also use this with friends without having to install mods.
## ⭐ Features
• Functional and accurate guns with realistic names, movement, and recoil.<br>
• Works with and without resource packs.<br>
• 100% Multiplayer supported.<br>
• It is easy to change settings via the chat menu.<br>
• Create your own guns or use the ones that are already in the datapack.

## ⚙️ Installation
After installing it you may need to restart your world with `/reload`.<br>
To open the chat menu, use `/reload` again.

## ⚡️IMPORTANT REMINDER
You need permissions to use commands to install and configure the settings!<br>
This means that commands must be turned on in single-player and OP in multiplayer.

## 🛠️ Creation
### For V2.1.0+
Hold the item that you want to convert into a gun in your mainhand and run this command:
```
/function guns:create {name:"AR-15",color:"blue",bullets:30,bullet_type:"medium",damage:9,headshot:20,cooldown:2,bloom:false,semi_auto:false,range:70,reload_time:40}
```
Replace the stats with your wanted stats.

Unsupported items for custom gun creation are: All types of firework, rods, armor pieces, buckets, bows, potions, (throwables), empty maps, spawn eggs, eggs, snowballs, tridents, axes (still strip logs when right clicked on them), ender pearls, debug stick and ender eyes.
<br><br>
### For V2
Hold the item that you want to convert into a gun in your mainhand and run this command:
```
/function guns:create {name:"AR-15",color:"blue",bullets:30,magazine:90,damage:9,headshot:20,cooldown:2,bloom:false,semi_auto:false,range:70,reload_time:40}
```
Replace the stats with your wanted stats.
<br><br>
### For V1
To make your own guns simply use this command in a command block since it is too long for the chat box.
```
/data modify storage guns create set value {
    Damage:20,
    Headshot:20,
    Bullets:3,
    Magazine:3,
    Bloom:0,
    Cooldown:30,
    Recoil:2.5,
    Range:300,
    Semi-Auto:true,
    ReloadTime:40,
    Name:"AWP",
}
```
<br>

After modifying the storage for your weapon run<br>
```
/item modify entity @s weapon.mainhand main:change_stats
```
