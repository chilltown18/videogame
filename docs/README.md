# How to Turn `TENNIS_GAME_BRIEF_AND_PLAN.md` into a Playable Game (Godot)

This guide converts your brief into a working prototype, step by step.

## 0) Goal of this starter
By the end, you should have:
- a controllable player
- a CPU opponent
- a moving ball you can return
- basic scoring
- a match loop that feels like tennis

## 1) Create the Godot project
1. Open Godot (4.x stable).
2. New Project → `retro-realism-tennis`.
3. 2D renderer is fine.
4. Create folders:
   - `scenes/`
   - `scripts/`
   - `assets/`
   - `ui/`

## 2) Add Input Map (Project Settings → Input Map)
Add these actions:
- `move_left` = A / Left Arrow
- `move_right` = D / Right Arrow
- `move_up` = W / Up Arrow
- `move_down` = S / Down Arrow
- `hit_flat` = J
- `hit_topspin` = I
- `hit_slice` = K
- `hit_lob` = L

## 3) Build the scene tree
Create `scenes/Main.tscn`:
- `Main` (`Node2D`)
  - `Court` (`ColorRect` or Sprite2D placeholder)
  - `Player` (`CharacterBody2D`)
  - `CPU` (`CharacterBody2D`)
  - `Ball` (`CharacterBody2D`)
  - `MatchManager` (`Node`)
  - `CanvasLayer`
    - `ScoreLabel` (`Label`)

Attach starter scripts from `godot_starter/scripts/`:
- `Player.gd` to `Player`
- `AIController.gd` to `CPU`
- `Ball.gd` to `Ball`
- `MatchManager.gd` to `MatchManager`

## 4) Wire references in Inspector
For `Ball` node script exports:
- assign `player_path` to `../Player`
- assign `cpu_path` to `../CPU`

For `MatchManager` exports:
- assign `ball_path` to `../Ball`
- assign `score_label_path` to `../CanvasLayer/ScoreLabel`

## 5) Create simple collisions
- Add `CollisionShape2D` to Player/CPU/Ball.
- Use circles/rectangles as placeholders.
- Add rough court boundaries as `StaticBody2D` if needed.

## 6) Paste starter scripts
Copy scripts from `godot_starter/scripts` into your Godot `scripts/` folder (or drag folder in).

## 7) Run and tune
Start with these tweaks:
- Player speed: 220–280
- Ball speed: 250–340
- Hit radius: 35–50
- CPU follow speed: 160–250

## 8) Build in this order
1. Get movement + ball motion working.
2. Get hit timing and returns working.
3. Add scoring + resets.
4. Tune feel for 3–5 minute matches.
5. Add menus/audio last.

## 9) What to build next (after this starter)
- 5 difficulties (adjust CPU reaction + movement + error chance)
- Exhibition and tournament flow screens
- retro UI polish
- chiptune + SFX

This is the shortest path from design brief to playable prototype.
