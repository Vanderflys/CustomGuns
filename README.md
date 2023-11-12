# custom-guns
A fully customizable datapack for Minecraft 1.20.2+ that features custom guns that fully integrates with the surrounding world.

## Create your own gun
To make your own guns simply use
```
/data modify storage guns:variables give set value {
    Damage:1,
    Headshot:20,
    Bullets:30,
    Magazine:60,
    X:0,
    Y:0,
    Z:0,
    ID:1,
    Bloom:0,
    Cooldown:1,
    Semi-Auto:0
}
```

- Damage: as in damage dealt in hearts
- Headshot: as in damage dealt in hearts for headshots
- Bullets: Current amount of bullets in gun
- Magazine: Rest of the stored bullets
  
- X: Relative X coordinate for custom bullet tracers
- Y: Relative Y coordinate for custom bullet tracers
- Z: Relative Z coordinate for custom bullet tracers

- ID: Leave at 0 if you're not using the resource pack made for this datapack
- Bloom: Leave at 0 if the gun shoots 1 bullet, if you are shooting more than 1 bullet change it to that number
- Cooldown: Fire rate cooldown in game ticks. the higher the cooldown, the lower the fire rate
- Semi-Auto: If the mouse can be held down or needs to be clicked manually for every shot.
