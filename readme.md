# Zero CW/TG

A lightweight and multilanguage gamemode for Clan Wars and Training matches. Ready to use out of the box with full configuration support.

## Installation

1. Download and extract the latest release
2. Import database schemas (see Database Setup below)
3. Configure `server/mysql.ini` with your database credentials
4. Edit `scriptfiles/config.ini` with your server settings
5. Start the server

## Database Setup

**Important:** Requires MySQL 5.6.

1. Create the database and import schemas:
   ```bash
   mysql -u root -p -e "CREATE DATABASE zero;"
   mysql -u root -p zero < database/player.sql
   mysql -u root -p zero < database/match.sql
   ```
   Or simply copy and paste the files.

2. Configure MySQL connection in `server/mysql.ini`:
   ```ini
   hostname=localhost
   username=YOUR_USER
   password=YOUR_PASSWORD
   database=zero
   server_port=3306
   ```

## Configuration

Everything is configurable from `scriptfiles/config.ini` without recompiling.

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

