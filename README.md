# WORLD 26

A playable, offline, 11-a-side 3D international football game for desktop browsers. Built with JavaScript, HTML, CSS and a bundled copy of Three.js r160. All stadiums, players, animations and sound effects are generated locally.

## Play on Windows

1. If you downloaded the ZIP, extract the entire WorldCup2026 folder first.
2. Double-click **index.html**, or run **START-GAME.cmd**.
3. Select World Cup, choose a nation, and begin the tournament.

The game opens directly in Chrome, Edge or your default browser. No local server, Node.js, Python, package installation, account or internet connection is required. Hardware acceleration is recommended. All JavaScript dependencies are included in game.bundle.js; keep the assets folder beside index.html.

An optional HTTP server is still available for development: run `node server.mjs`, then visit http://localhost:2026. Direct-file and HTTP play have separate browser save locations. Export a tournament before switching between them.

## Matchday 2.0 update

The main menu and browser title now say **MATCHDAY 2.0**. This identifies the new copy. Versioned script and stylesheet URLs make the browser request the updated assets. The desktop shortcut opens this same index.html, preserving the existing save location.

- A redesigned navy matchday menu and broadcast interface, dusk sky, stadium floodlighting, cyan LED tier lights and curved corner seating.
- Original sculpted head meshes with shaped noses, cheeks and eye sockets, procedural complexion maps, close-fitting hair, separate fingers and smoother jersey sleeves.
- **Team Studio:** choose a nation and home/away/third kit, rotate with the button or drag, then take the chosen kit into your next match. Access it from the main menu or team selection.
- A substantially closer default broadcast camera, with the existing tactical and close views still available.
- Goal celebrations automatically frame the scorer. Replays follow the actual recorded ball, and goal nets animate when a goal is scored.
- Reduced crowd geometry and fine grass detail in close views. Models remain stylized original artwork; they are not scanned likenesses.

## Player edition update (1.1.0)

- Rebuilt original footballers with sculpted heads, individual hair and skin tones, eyes, embroidered-style crests, shirt numbers and surnames, collars, boots, socks, captain bands and goalkeeper gloves.
- Jointed elbows, knees and ankles with blended running, kicking, sliding, heading, catching and celebration poses. Replays retain the animation and velocity of the recorded play.
- A live 3D squad on the main menu, richer pitch colours, revised stadium lighting, contact shadows and a cleaner broadcast HUD.
- Closer broadcast and close cameras. Mouse wheel or + / - adjusts camera distance; the setting is saved. All four cameras and penalty views support zoom.
- A better-proportioned football with matching goal-line and post collisions, closer dribbling touches and visible goalkeeper catches.
- Decorative geometry is batched within each animated limb to reduce draw calls. Performance graphics remains available in Settings.

Existing tournament saves and the World 26 desktop shortcut continue to work. Reload an already open game tab to load the update. These remain original stylized models, not scanned or licensed player likenesses.

## Modes

- **World Cup:** the qualified 48-team field in the actual 12 groups. Play your three group matches, qualify for the Round of 32, and continue through the fixed knockout bracket. Semi-final losers play for third place. The final includes a larger stadium bowl, gold scoreboard, trophy lift, medals, confetti and awards.
- **Quick Match:** select any two of 49 nations, including exhibition-only Italy.
- **Penalty Shootout:** take penalties and control your goalkeeper. Five kicks per side, early clinches and unlimited sudden death.
- **Knockout Tournament:** select a custom field of 4, 8, 16 or 32 unique nations.
- **Training Ground:** shooting, passing, dribbling, crossing and free-kick setups. Pause to choose a drill; R resets it.

## Controls

| Input | Action |
| --- | --- |
| WASD | Move relative to the camera |
| Mouse | Aim passes and shot placement |
| Middle mouse + drag | Rotate the broadcast camera |
| Left click, or J | Pass; hold to charge |
| Right click, or K | Shoot; hold to charge |
| E | Sprint; consumes stamina |
| Q | Through ball |
| F | Lofted cross |
| Space | Slide tackle; goalkeeper dive during shootouts |
| Shift | Skill turn while dribbling |
| Tab | Switch to a teammate |
| C | Cycle broadcast, tactical, close and goalkeeper cameras |
| Mouse wheel or + / - | Zoom the camera; saves automatically |
| Esc or P | Pause, substitutions, settings and exit |
| R | Reset the current training drill |
| A / D in shootouts | Move the goalkeeper left / right |

The lime ring identifies your player. Receiving the ball normally switches control to the recipient. Manual switching temporarily overrides that assistance. Passes select a teammate in the direction of your aim. Shots are assisted toward the opposing goal; mouse position adjusts placement. Release at roughly half power for accuracy. Full power can go wide or high. Press shoot close to a raised ball to volley or head it.

Approach opponents from the front when tackling. Challenges from behind can produce free kicks, penalties and cards. Goalkeepers move, intercept, dive, catch and parry according to the physical ball trajectory.

## Tournament and saves

The competition has 72 group fixtures and 32 knockout fixtures, including the bronze-medal match: **104 in total**. The top two in each group and the eight best third-place teams advance. The implementation includes:

- Three points for a win; one for a draw.
- Head-to-head points, goal difference and goals scored, with reapplication for a remaining tied subset.
- Overall goal difference, goals scored, team conduct, then the included 11 June 2026 FIFA ranking snapshot.
- Separate best-third-place ranking and all **495 Annex C allocations**.
- Official Round-of-32 paths and subsequent bracket connections.
- Two 15-minute extra-time periods for drawn knockout games, followed by a shootout if needed.
- Five substitutions, dismissal, two-caution suspension, one-match red-card suspension, and cancellation of accumulated cautions after the quarter-finals.

Your match results come from the live simulation. Other fixtures use a seeded, team-strength-based scoring simulation with scorers, bookings and ratings. Completing a match resolves the other fixtures in that round and updates the standings and bracket. If eliminated, advance the remaining rounds to follow the tournament to completion.

Tournament progress saves in localStorage after matches and during play every ten seconds. Pausing also saves an active match. **Continue** resumes the saved journey, including an interrupted match. **Export save** creates a portable JSON file; **Import save** restores it. Keep the same folder location and browser to use the same direct-file save. HTTP play uses the same localhost address and port. Private browsing and cleared browser data do not retain saves.

Statistics retain the latest 100 completed user matches. Tournament awards are game awards: Golden Boot counts goals; Golden Ball uses average player ratings and appearances; Golden Glove uses team clean sheets and goals conceded; Fair Play uses card deductions per match among advancing teams.

## Scope and presentation

This is an independent, stylised browser football game, not a licensed AAA simulation. It uses procedural articulated players and original stadium designs, not scanned athletes, motion capture or exact venue replicas. All 26-player squads have **fictional player names**; kits, national-team emblems and ability ratings are original interpretations, clearly identified in the selection screen. Italy is not included in the qualified World Cup field.

The implemented football rules and AI are simplified for responsive short matches. There is no VAR, injury system, advantage interpretation, detailed disciplinary tribunal, or added-time calculation. Offside is checked when a teammate receives a pass. Tackles use direction and distance; physical player contact uses soft separation. The ball has gravity, restitution, rolling friction, airborne drag, spin and goal-frame collision. Rain is visual and does not alter traction. Commentary uses original lines with browser speech synthesis; voices depend on your browser/OS. Crowd atmosphere and effects are synthesised rather than recorded chants.

## Performance

Use **Settings → Graphics → Performance** to disable shadows and limit pixel ratio. The crowd uses instanced geometry, pitch detail uses a generated texture, and physics advances with fixed steps and ball substeps. The game runs entirely on your PC; match length can be 2, 4, 8 or 12 real minutes. Browser QA used software rendering in an isolated Chrome profile; performance on a particular GPU is not certified.

## Source layout

| File | Purpose |
| --- | --- |
| `build.mjs` / `game.bundle.js` | Dependency-free build and the direct-file browser bundle |
| `src/simulation.js` | Match state, movement, AI, ball physics, rules and shootouts |
| `src/world.js` | Three.js pitch, stadiums, players, cameras and trophy presentation |
| `src/players.js` | Original articulated player models, kit textures and blended poses |
| `src/athlete.js` | Sculpted facial meshes, complexion textures, hair and hands |
| `src/presentation.js` | Floodlighting, stadium details and grass |
| `src/tournament.js` | Standings, progression, simulation, discipline, awards and saves |
| `src/third-allocations.js` | All 495 official third-place bracket allocations |
| `src/data.js` | Nations, original squads, kits, ratings and group draw |
| `src/app.js` | Menus, match HUD, controls, persistence and game flow |
| `src/audio.js` | Stadium sound and event commentary |
| `assets/` | Bundled Three.js, flags and license notices |
| `tests/` | Rules, simulation, browser interaction and championship checks |

After editing source modules, run `npm run build` to update the browser bundle. Run `node build.mjs --check` to check that it matches the sources. Run `npm test` with a recent Node.js to execute the automated core tests. Browser tests use the small dependency-free Chrome DevTools client in `tests/cdp.mjs`; they expect a dedicated Chrome debugging profile on port 9226 and the game server on port 2026. Run `node tests/browser.mjs`, `node tests/finale.mjs` and `node tests/mouse.mjs`. Use an isolated test profile: browser tests create and replace test tournament saves.

The core suite covers complete tournament progression for every qualified nation, all bracket allocations, tie-breaks, elimination, third place, shootouts, save/load, movement, passing, gravity, goals, restarts, offside, discipline, substitutions and goalkeeping. Browser QA additionally covers menus, actual input events, pause, saved-match resumption, replays, the trophy presentation and alternate stadium/weather settings. These are regression checks, not a claim of exhaustive football-rule compliance.

## Data and asset sources

- [FIFA qualified teams](https://www.fifa.com/en/articles/world-cup-2026-who-has-qualified)
- [US Soccer: final 2026 group draw](https://www.ussoccer.com/stories/2026/05/usmnt/which-countries-are-competing-in-fifa-world-cup-usa-mexico-canada)
- [FIFA World Cup 26 regulations, including Annex C (PDF mirror)](https://www.worldcup2026football.co.uk/wc-2026-regulations.pdf)
- [MLS: FIFA ranking snapshot, 11 June 2026](https://www.mlssoccer.com/competitions/fifa-world-cup/news/fifa-world-rankings-every-team-at-the-world-cup)
- [Three.js r160](https://github.com/mrdoob/three.js/tree/r160), MIT license in `assets/THREE-LICENSE.txt`
- [flag-icons](https://github.com/lipis/flag-icons), MIT license in `assets/FLAGS-LICENSE.txt`

Historical qualification and group data are used to start a fresh playable tournament. Real-world tournament results are not preloaded or forced into your save.
