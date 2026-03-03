# Retro Tennis (Working Title) — One-Page Game Design Brief

## 1) High Concept
**Retro Tennis** is a fast, pick-up-and-play arcade tennis game inspired by 1990s 8-bit sports titles. The game emphasizes readable gameplay, tight controls, and short high-energy matches.

## 2) Vision Statement
Deliver a polished vertical slice of an 8-bit-style tennis game where players can complete a full match in under 5 minutes and immediately want a rematch.

## 3) Target Experience
- **Tone:** Energetic, nostalgic, playful arcade vibe.
- **Session Length:** 3–5 minutes per match.
- **Player Feeling:** “Easy to learn, hard to master.”

## 4) Scope (Version 1)
### In Scope
- Single-player exhibition mode (Player vs CPU)
- Local 2-player versus mode (same keyboard/controller)
- 1 court theme
- 4 playable characters with small stat differences
- Basic tennis rules (points/games; simplified set flow)
- Three shot types: normal, lob, slice/topspin variant
- 3 CPU difficulty levels
- Retro menu + pause + results screen
- Chiptune BGM + core SFX

### Out of Scope (v1)
- Online multiplayer
- Career mode / season simulation
- Complex stamina/injury systems
- Advanced replay/commentary system

## 5) Core Gameplay Pillars
1. **Responsive Control First** — input should feel immediate and dependable.
2. **Readable Ball Physics** — players can predict where the ball will land.
3. **Arcade Momentum** — short rallies can quickly become dramatic.
4. **Nostalgic Presentation** — 8-bit visuals and chiptune audio without sacrificing clarity.

## 6) Core Mechanics
- Move in 2D court space with constrained depth lanes for readability.
- Time swings for hit quality (late/early/perfect timing windows).
- Shot choice alters arc/speed/spin:
  - **Normal:** balanced speed and control
  - **Lob:** high arc, defensive reset
  - **Slice/Topspin:** lower/skidding or faster kick trajectory
- Character stats (small deltas only): speed, power, control.

## 7) Artistic Direction (1990s 8-bit)
- Limited color palette per scene.
- Pixel-perfect sprites with low frame-count animation.
- Clean silhouette design for immediate readability.
- CRT-inspired optional post-process (toggle on/off).

## 8) Audio Direction
- 2–3 short looping chiptune tracks (menu, match, results).
- High-priority gameplay SFX: serve, racket hit, net hit, bounce, score stinger, crowd cheer.
- Distinct “perfect timing” audio cue.

## 9) Success Criteria
- New players understand controls within 30 seconds.
- 60 FPS on target platform.
- At least 80% of test players request “one more match.”
- No major input-delay or camera-readability complaints.

---

# Prototype Build Plan (First Playable in ~2 Weeks)

## Milestone 0 — Setup (Day 1)
- Choose engine and project structure.
- Implement fixed timestep and input abstraction.
- Add placeholder sprites, court bounds, and debug overlays.

**Deliverable:** Character can move; ball object spawns; debug UI visible.

## Milestone 1 — Rally Loop (Days 2–4)
- Implement ball physics (speed, bounce, net collision, out-of-bounds).
- Add player swing timing windows and hit resolution.
- Add CPU baseline behavior (move-to-target + swing trigger).

**Deliverable:** Continuous playable rallies between player and CPU.

## Milestone 2 — Rules + Match Flow (Days 5–7)
- Implement score system (point/game/set, simplified where needed).
- Add serve flow and fault handling (single-fault simplification optional).
- Add match end + rematch loop.

**Deliverable:** Full start-to-finish match playable.

## Milestone 3 — Feel Pass (Days 8–10)
- Tune move speed, hit timing windows, shot differentiation.
- Add difficulty tiers by reaction time/positioning error.
- Add camera shake/hit spark/pitch-shifted SFX for impact feedback.

**Deliverable:** “Fun factor” pass complete; three distinct difficulty levels.

## Milestone 4 — Presentation Pass (Days 11–12)
- Replace placeholders with final pixel art for v1.
- Add menu UI, pause, and results screen.
- Integrate music and core SFX mix.

**Deliverable:** Cohesive retro audiovisual identity.

## Milestone 5 — Polish + QA (Days 13–14)
- Fix collision edge cases and scoring bugs.
- Add accessibility assists (optional aim helper / slower game speed).
- Run playtest checklist and tune defaults.

**Deliverable:** Stable v1 prototype ready for feedback.

---

# Practical Next Decisions (Fill These In)
1. Engine choice:
2. Target platform:
3. Control scheme (keyboard/controller):
4. Match length target:
5. Art constraints (palette + sprite size):
6. Must-have features for v1:
7. Hard “not in v1” list:

If you want, the next step is for me to convert this into:
- a concrete **task board** (issue-sized items), and
- a **technical architecture skeleton** for your chosen engine.