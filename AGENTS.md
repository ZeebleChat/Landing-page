# AGENTS.md

Zeeble landing page — static HTML/CSS site for the Zeeble chat platform.

## Setup
- No build step required — pure HTML/CSS
- Serve with any static file server or open `html/index.html` directly
- Docker build: `docker build -t zeeble-landing .`

## Code style
- Mobile-first responsive CSS
- Embedded styles in `<head>` (no external stylesheets)
- CSS custom properties (`--*`) for theming
- Consistent spacing increments, dark theme palette

## Architecture
- Two pages: index.html (main) and pricing.html (pricing details)
- Shared design system via consistent CSS classes and variables
- Container width: 1080px max (`.container`)
- Navigation, hero, features, pricing, boosts, self-host sections

## Deploy
- Dockerfile copies `html/` to nginx `/usr/share/nginx/html/`
- Production: build image and run on port 80
- For local testing: `python3 -m http.server 8080` from `html/` directory

## Notes
- Keep visual design consistent across all sections
- Preserve the established color palette and typography
- Test responsiveness at mobile breakpoint (768px)