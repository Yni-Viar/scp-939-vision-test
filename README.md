# SCP-939 vision test
## It is a TEST repository!!!
⚠️ This is an example implementation, how I think, SCP-939 should see.

If you want to implement this vision in the game, consider replacing `/src/939_target.png` with animated texture, representing body heat. I added this as an example.

## How it works.

First-person player also have 2 lights - one for "cold" surfaces, such as walls, second for "warm" surfaces, such as other players.

"Cold" light has default parameters, while "warm" light has `energy` set to 4, and `radius` set to 2x of room size (if room size is 20.48, then radius of light is 40.96)

**Also you need to set fog, as Exponential, NOT as depth, or it won't work!**

## License.

You can use this under CC-BY-SA 3.0/4.0 (in SCP projects) or CC0 (in non-SCP projects)