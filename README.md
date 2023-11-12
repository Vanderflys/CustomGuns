# custom-guns
A fully customizable datapack for Minecraft 1.20.2+ that features custom guns that fully integrates with the surrounding world.

# Own gun creation
To make your own guns simply use
/data modify storage guns:variables give set value {
    Damage:1,       ->  Damage as in hearts
    Headshot:20,    ->  Headshot damage in hearts
    Bullets:30,     ->  Current amount of bullets in gun
    Magazine:60,    ->  Rest of the stored bullets
    X:0,            ->  Relative X coordinate for custom bullet tracers
    Y:0,            ->  Relative Y coordinate for custom bullet tracers
    Z:0,            ->  Relative Z coordinate for custom bullet tracers
    GunID:1,        ->  Gun ID only really used for resource pack.
    Bloom:0,        ->  Amount of bullets the gun shoots
    Cooldown:1,     ->  Fire rate in game ticks
    Semi-Auto:0     ->  If the mouse can be held down or needs to be clicked
}
