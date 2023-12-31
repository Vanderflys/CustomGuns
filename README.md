# CustomGuns V1.0.1
A fully customizable datapack for Minecraft 1.20.2+ that features custom guns that fully integrate with the surrounding world.
You can create your own guns with custom stats and also use this with friends without having to install mods.

## Installation
Download the zip file and unzip it. When unzipped copy it and press `windows + r` and type `%appdata%\.minecraft\saves`. Click on one of
your worlds that you want the datapack to be in and open the datapacks folder and paste it in there.

## Pros
- You can change the gun behaviour in the settings with `/trigger Settings.Change`.
- You can shoot through gaps in some of the blocks like stairs, slabs, enchanting tables and doors.
- Has headshot detection but is not 100% accurate.
- You can use this with and without a resource pack.
- And if you do use a recource pack you can easily make your own models for them.
- Should work with other datapack but haven't tested it.
- Everything is stored in the "cloud" storage so it will instantly work after being installed.

## Cons (plan to fix/remove most of them in the future) 
- When switching to weapons your offhand will be emptied and returned to the player but if this item contains custom nbt tags
  it will not have those anymore.
- You cannot use your weapon in your offhand.
- Items that have a right click functionality can not be converted.
- **I have not tested it for multiplayer so that might not work at all!**
- **It pretty much doesn't if there is an end portal in the world since it uses ender eyes for the right click detection.**

## Create your own gun
To make your own guns simply use this command in a command block since it is too long for the chat box.
```
/data modify storage guns:variables pickup set value {
    Damage:20,
    Headshot:20,
    Bullets:3,
    Magazine:3,
    X:-0.32,
    Y:-0.18,
    Z:0.2,
    Bloom:0,
    ID:2,
    Cooldown:30,
    Recoil:2.5d,
    Range:300,
    Semi-Auto:true,
    ReloadTime:40,
    Name:"AWP",
}
```

After modifying the storage for your weapon run
```/item modify entity @s weapon.mainhand main:change_stats```
**Hold the item that you want to convert into a weapon in your mainhand!**

- Damage: as in damage dealt in hearts
- Headshot: as in damage dealt in hearts for headshots
- Bullets: Current amount of bullets in gun
- Magazine: Rest of the stored bullets
  
- X: Relative X coordinate for custom bullet tracers
- Y: Relative Y coordinate for custom bullet tracers
- Z: Relative Z coordinate for custom bullet tracers

- ID: Gun ID for identifying the gun
- Bloom: Leave at 0 if the gun shoots 1 bullet, if you are shooting more than 1 bullet change it to that number
- Cooldown: Fire rate cooldown in game ticks. the higher the cooldown, the lower the fire rate
- Semi-Auto: If the mouse can be held down or needs to be clicked manually for every shot.
- Recoil: How much recoil each shot has.
- Range: How far the gun can shoot. 1 block is 4 range.
- ReloadTime: Time for each reload in gameticks (20 ticks is 1 second).
- Name: As a string "AWP" name for the gun.
