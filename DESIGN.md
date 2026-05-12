# DESIGN.md — Zeeble Landing Page

## Color Palette (Current)
```css
:root {
  --accent: #6366f1;        /* Primary indigo */
  --accent-h: #4f46e5;      /* Hover state */
  --accent-glow: rgba(99,102,241,0.22);
  --purple: #a78bfa;        /* Secondary purple */
  --purple-deep: #7c3aed;   /* Tertiary deep purple */
  --zurple: #E8D8F0;        /* Accent highlight */
  --zurple-dim: rgba(232,216,240,0.12);
  --zurple-glow: rgba(232,216,240,0.18);
  --blue: #60a5fa;          /* Secondary blue */
  --bg: #0e0e14;            /* Background */
  --bg-card: #13131c;       /* Card surface */
  --bg-card-2: #16161f;     /* Alternate surface */
  --border: #2e2e42;        /* Subtle border */
  --border-hi: #3e3e58;     /* Stronger border */
  --text-1: #f0f0f8;        /* Primary text */
  --text-2: #c0c0d8;        /* Secondary text */
  --text-3: #7070a0;        /* Tertiary text */
  --green: #34d399;         /* Success/check */
  --amber: #f59e0b;         /* Warning/attention */
}
```

## Typography
- **Headings**: Plus Jakarta Sans (weights: 500, 600, 700, 800, 900)
- **Body**: Inter (weights: 300, 400, 500, 600)
- **Line height**: 1.5–1.7 for body, 1.08–1.2 for headings
- **Scale**: Clamp-based responsive sizing

## Elevation & Surfaces
- **Base surface**: `--bg` with subtle radial gradients
- **Card surface**: `--bg-card` with 1px border `--border`, subtle inset shadow
- **Raised**: Outer glow / box-shadow using `--accent-glow`
- **Floating**: Multi-layered shadows for depth

## Spacing
- Container max-width: 1080px, padding 28px
- Section padding: 90px (desktop), 60px (mobile)
- Grid gaps: 20px, 22px
- Component padding: 28px, 32px

## Borders & Radius
- Border radius: 8px (small), 10px, 12px, 14px, 16px, 18px, 20px, 22px
- Borders: 1px (subtle), 1.5px (standard), 2px (strong)
- Consistent use: buttons 8–12px, cards 16–20px

## Interactive States
- Hover: `transform: translateY(-1px)` + stronger glow
- Focus: Ring or enhanced border
- Transitions: 0.2s ease-out

## Components
- **Buttons**: primary (gradient), secondary/ghost (bordered)
- **Cards**: bg-card + border, hover elevation
- **Badges**: small, uppercase, pill-shaped
- **Navigation**: sticky, backdrop blur
- **Mock UI**: Chat interface mock in hero section

## Layout Patterns
- Container: `.container` centered with horizontal padding
- Grid: 3-col features, 2-col pricing/beam, 3-col boosts
- Flex: nav, hero buttons, feature rows
- Section dividers: horizontal gradient line

## Motion Guidelines (to be enhanced)
- Micro-interactions on hover (lift, glow, border color)
- Animated elements: hero-eyebrow dot (pulse), optional scroll reveals
- No layout thrashing; use `transform` and `opacity`

## Neumorphism Upgrade Target (for overhaul)
- **Soft shadows**: Dual-layer (inner + outer) for tactile feel
- **Pressed states**: Inset shadows for active/clicked
- **Surface depth**: 2–3 elevation levels (base, raised, floating)
- **Contrast**: Text remains high-contrast on soft surfaces
- **Preserve brand colors**: Accent gradients for CTAs, but neumorphic surfaces in neutral ranges
- **Subtle glows**: Keep but soften; avoid harsh light edges
- **Interactive mockups**: Hero mock UI gets depth + hover effects on channels/messages

## SEO / AISEO Architecture
- Semantic HTML5: `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<footer>`
- Heading hierarchy: H1 → H2 → H3 (no skipping)
- Descriptive link text (no "click here")
- Alt text on meaningful images
- `<meta>` tags: description, keywords, Open Graph, Twitter Cards
- JSON-LD structured data: Organization, Product, FAQ, WebSite
- Canonical URLs, hreflang if needed
- XML sitemap (static)
- Mobile viewport, fast loading (inline CSS, minimal JS)
- Performance budgets: <100KB total HTML+CSS, <2s LCP

## AISEO Considerations
- Clear, descriptive section headings with keywords
- Natural language variations ("self-hosted" / "self-host")
- Q&A content formatted for voice/search snippets
- Schema.org `FAQPage` markup for common questions
- Breadcrumb navigation (even if single page for now)
- Logical content order for LLM parsing
- Avoid hidden text/cloaking—content visible to users = content for AI

---

**Current state**: Production-ready static HTML, good structure, ready for neumorphic polish + SEO enhancement.