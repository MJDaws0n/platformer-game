# Platformer Game - Novus

A fast-paced 2D platformer game written entirely in Novus, demonstrating the language's capabilities for game development with physics, collision detection, and graphics abstraction.

## Quick Start

```bash
cd ~/Desktop/platformer-game
novus main.nov
```

## Project Structure

```
platformer-game/
├── main.nov              # Game entry point (169 lines)
├── libraries.conf        # Nox package configuration
├── README.md
└── src/
    ├── framebuffer/      # Linux graphics abstraction (project-specific)
    ├── input/            # Keyboard input handling (project-specific)
    ├── physics/          # AABB collision detection (reusable library)
    └── core/             # Core utilities (reusable library)
```

## Libraries

### Project-Specific (src/)
- **framebuffer**: Low-level graphics abstraction for Linux framebuffer
- **input**: Keyboard input handling with bitwise flags

### Reusable (External Repos)
- **physics** (novus-physics): AABB collision detection
  - GitHub: https://github.com/MJDaws0n/novus-physics
- **core** (novus-core): Core utility functions
  - GitHub: https://github.com/MJDaws0n/novus-core

## Features

- 9 pre-configured platforms
- Player physics with gravity and jumping
- Collision detection (AABB)
- Lives and scoring system
- Cross-platform compilation support (Linux, macOS, Windows)

## Build

### Direct Compilation
```bash
novus main.nov --target=linux/amd64
./build/linux_x86_64/main
```

### With Nox (package manager)
```bash
nox init  # Pull external dependencies
novus main.nov
```

## Supported Platforms

- **Linux/amd64**: Full build and runtime support
- **darwin/arm64**: Cross-compile support (ASM generation)
- **windows/amd64**: Cross-compile support (ASM generation)

## Technical Notes

- Uses AABB collision detection for platform collision
- Gravity simulation with clamped velocity
- Platform array-based level design
- Event-driven input handling
