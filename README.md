# Platformer Game - Novus

A fast-paced 2D platformer game written entirely in Novus, demonstrating the language's capabilities for game development with physics, collision detection, and graphics abstraction.

## Building

### With Nox (Recommended)

```bash
nox init  # Pull dependencies
novus main.nov  # Compile and run
```

### Manual Compilation

```bash
novus main.nov --target=linux/amd64
./build/linux_x86_64/main
```

## Project Structure

```
platformer-game/
├── main.nov              # Game entry point (170 lines)
├── nox.json             # Nox package configuration
├── lib/
│   ├── framebuffer/     # Graphics abstraction
│   ├── physics/         # Collision detection
│   ├── input/           # Input handling
│   └── core/            # Core utilities
└── README.md
```

## Libraries

- **framebuffer**: Low-level graphics abstraction for Linux framebuffer
- **physics**: AABB collision detection and physics simulation
- **input**: Keyboard input handling with bitwise flags
- **core**: Utility functions (string conversion, clamping, etc.)

## Features

- 9 pre-configured platforms
- Player physics with gravity and jumping
- Collision detection
- Lives and scoring system
- Cross-platform compilation (Linux, macOS, Windows)

## Platforms

- Linux/amd64: Full build and runtime
- darwin/arm64: Cross-compile support
- windows/amd64: Cross-compile support

