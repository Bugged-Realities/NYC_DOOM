# NYC DOOM

## What This Project Is

NYC DOOM is a **top-down 2D roguelike / auto-shooter** inspired by games like Archero and Vampire Survivors, with a strong **NYC theme** (subways, bodegas, rooftops, mutant rats).
The goal is to keep the game **simple, readable, and playable**, then slowly add depth.

## Core Design Rules (Important)

Read this before watching tutorials.

- This is **TOP-DOWN**, not a platformer
- No gravity, no jumping
- Use **Input Map**, not raw key presses
- Backgrounds use **TileMap + TileSet**
- Player and enemies use **CharacterBody2D**
- Mobile support comes **later**, not now

If a tutorial breaks these rules → don’t follow that part.

## Camera Rules

- Camera is a **child of Player**
- Camera2D → Current = ON
- Optional smoothing enabled
- Camera limits set to map bounds

## Expenses (Tracked)

- $3 — https://sscary.itch.io/the-adventurer-female

## Reminder to Myself

You don’t need to build everything at once.
If movement + camera + enemies work → you’re on track.
This README exists so I don’t feel lost when I come back.
