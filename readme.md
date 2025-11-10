<h1 align="center">Zero CW/TG</h1>

<p align="center">
A lightweight and multilanguage gamemode for Clan Wars and Training matches.
</p>
<p align="center">
Ready to use out of the box with full configuration support.
</p>

<div align="center">
<img width="1280" height="720" alt="image" src="https://github.com/user-attachments/assets/6255288c-1a33-4fbb-958f-17d31be2152f" />
</div>

## Installation

1. Download and extract the latest release
2. Configure `server/mysql.ini` with your database credentials
3. Edit `scriptfiles/config.ini` with your server settings
4. Start the server

## Configuration

Everything is configurable from `scriptfiles/config.ini`.

**Main settings:**
- `hostname` - Server name
- `website` - Server website
- `languages` - Comma-separated list (e.g., `english,spanish`)
- `team_alpha_name` / `team_beta_name` - Team names
- `team_alpha_color` / `team_beta_color` - Hex colors without `#` (e.g., `FF0000`)
- `maps` - Comma-separated map list (e.g., `airsf,warehouse`)

## Adding Content

### Maps
1. Create `scriptfiles/maps/yourmap.ini`
2. Add spawn coordinates for alpha, beta, and spectator teams
3. Add map name to `maps=` in `config.ini`
4. Restart server

### Arenas (1v1)
1. Create `scriptfiles/arenas/yourarena.ini`
2. Add spawn coordinates for player1, player2
3. Restart server

### Languages
1. Create `scriptfiles/languages/yourlanguage.ini` using LangPlus format
2. Add all required translation keys (check existing language files)
3. Add language name to `languages=` in `config.ini`
4. Restart server

## Features

- **Authentication:** bcrypt password hashing, MySQL persistence
- **Teams:** Customizable Alpha/Beta/Spectator
- **Matches:** Multiple map support, match tracking, statistics
- **Duels:** x1 arena system with dedicated configs
- **Stats:** Kills, deaths, damage, MMR (Solo/Duo/Team)
- **Multi-language:** Fully configurable language system
- **Anti-Cheat:** [Black Diamond](https://github.com/edgyaf/samp-ac-black-diamond)

### Includes
- `a_mysql`
- `LangPlus`
- `Dini2`
- `strlib`
- `samp_bcrypt`
- `easyDialog`
- `Pawn.CMD`
- `AC_Black_Diamond`
- `weapon-config`


## Support
If you find a bug or need help
- **Discord:** Contact `ne0de` or `troniq`
- **GitHub Issues:** [Open an issue](https://github.com/LatamSAMP/zero-cwtg/issues)
