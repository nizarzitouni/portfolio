# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter web portfolio application for Nizar Zitouni, showcasing mobile development projects, game design work, and 3D modeling projects. The app is primarily designed for web deployment and features a responsive design with separate layouts for desktop and mobile viewports.

## Build & Deployment

**Web Build Process:**
```bash
flutter clean
flutter build web
```

**Post-Build Manual Step:**
After building, manually edit `build/web/index.html` and change `<base href="/">` to `<base href="./">`

**Version Management:**
Update version in `pubspec.yaml` before building (format: `1.18.0+18`)

**Important:** Never run build commands automatically. The developer handles all builds manually.

## Architecture

### Responsive Design Pattern
- Uses `ResponsiveLayout` widget as the main layout controller
- Breakpoint: 900px width
  - `>900px`: Web layout (`home_v_web/`)
  - `≤900px`: Mobile layout (`home_v_mobile/`)
- `SizeConfig` is initialized in ResponsiveLayout for responsive sizing

### Routing
- Uses `go_router` (v13.0.1) for navigation
- Routes defined in `lib/core/routes/app_router.dart`
- Main routes:
  - `/` - Home (responsive)
  - `/projects/:projectId` - Project details (responsive)
  - `/privacy-policy` - Privacy policy
  - `/terms-of-service` - Terms and conditions

### Data Architecture
- **No state management library** - Uses StatefulWidget/StatelessWidget only
- Project data is hardcoded in `lib/models/projects_data.dart`
  - `ProjectData.mobileDevProjectList` - Mobile/Flutter projects
  - `ProjectData.threeDProjectList` - 3D/Game design projects
- Firebase Analytics integration via `singlton_init.dart`

### Navigation System
- Uses GlobalKeys for scrolling to sections (defined in `lib/core/global_keys.dart`)
- Sections: Header, Home, Projects, Experience, Skills, About Me, Contact, Mobile Portfolio, 3D Portfolio
- Each section has a GlobalKey for programmatic scrolling

### Project Structure
```
lib/
├── app/                    # App entry point and responsive layout
├── core/                   # Utilities, constants, config
│   ├── routes/            # Routing configuration
│   ├── config/            # App information
│   └── ...                # Pallete, text styles, functions
├── models/                # Data models (projects, experiences, skills)
├── view/
│   ├── home_v_web/        # Desktop/web UI (>900px)
│   │   ├── sections/      # Major sections (home, about, projects, contact)
│   │   └── widgets/       # Reusable web widgets
│   ├── home_v_mobile/     # Mobile UI (≤900px)
│   │   ├── sections/      # Major sections for mobile
│   │   └── widgets/       # Reusable mobile widgets
│   └── privacy_terms/     # Legal document pages
```

## Code Conventions

**Logging:**
- Use `log` from `dart:developer` instead of `print()` statements

**Git Commits:**
- Use natural, human-written commit messages
- Avoid mentioning AI tools in commits
- Keep messages straightforward and descriptive

## Dependencies

**Key Packages:**
- `go_router` - Navigation
- `firebase_core` & `firebase_analytics` - Analytics
- `google_fonts` - Typography
- `carousel_slider` - Image carousels on project pages
- `flutter_svg` - SVG rendering for icons
- `flutter_markdown` - Markdown rendering for legal docs
- `url_launcher` - Opening external links

**Development:**
- Linting: `flutter_lints` with default Flutter rules
- No testing suite currently implemented

## Assets Organization

Assets are organized by project type:
- `assets/images/mob/{project_name}/` - Mobile project screenshots
- `assets/images/game_design/{project_name}/` - Game design assets
- `assets/svgs/` - SVG icons (GitHub, LinkedIn, etc.)
- `assets/mark_down/` - Legal documents (privacy policy, terms)

## Firebase Integration

- Firebase initialized in `main.dart` using `firebase_options.dart`
- Analytics tracked via `FirebaseAnalyticsWeb` singleton in `singlton_init.dart`
- Analytics collection enabled when ResponsiveLayout builds

## External Services

- Supabase credentials in `lib/core/supabase_api.dart` (public anon key)
- Used for some project assets (e.g., Tune Hub ringtone storage)
