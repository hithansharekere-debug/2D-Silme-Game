# Slime-Game(No Ai)

A 2D survival shooter built from scratch in Godot 4 without using any game templates. Fight endless waves of slimes using automatic radius-based attacks, survive as long as possible, and achieve the highest kill count.

## Features

* Top-down 2D survival gameplay
* Automatic radius-based weapon firing system
* Enemy AI that tracks and chases the player
* Health and damage system
* Animated player and enemy characters
* Real-time slime kill counter
* Game Over screen with final score display
* Restart functionality
* Randomized enemy spawning
* Built entirely from scratch using Godot 4

## Gameplay

The player must survive against continuously spawning slimes. Enemies pursue the player and deal damage on contact. The weapon automatically attacks nearby enemies, rewarding players who can position themselves strategically and survive longer.

## Tech Stack

* Engine: Godot 4.5
* Language: GDScript
* Platform: Windows

## Project Structure

```text
player.gd            # Player movement, health, damage handling
mob.gd               # Enemy AI and combat logic
gun.gd               # Weapon behavior
bullet.gd            # Projectile logic
game_manager.gd      # Global score management
survivors_game.gd    # Main game scene controller
```

## Future Improvements

* Multiple enemy types
* Upgrade system
* XP and leveling mechanics
* New weapons
* Boss battles
* Sound effects and music
* Save system
* Main menu and settings

## Installation

```bash
git clone https://github.com/<your-username>/survivors-arena.git
```

Open the project in Godot 4.5 and run `survivors_game.tscn`.

## License

MIT License

## Authors

**Hithansh Arekere**
