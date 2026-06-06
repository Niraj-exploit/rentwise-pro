---
name: Financial Clarity & Stewardship
colors:
  surface: '#f8f9ff'
  surface-dim: '#cbdbf5'
  surface-bright: '#f8f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#eff4ff'
  surface-container: '#e5eeff'
  surface-container-high: '#dce9ff'
  surface-container-highest: '#d3e4fe'
  on-surface: '#0b1c30'
  on-surface-variant: '#434655'
  inverse-surface: '#213145'
  inverse-on-surface: '#eaf1ff'
  outline: '#737686'
  outline-variant: '#c3c6d7'
  surface-tint: '#0053db'
  primary: '#004ac6'
  on-primary: '#ffffff'
  primary-container: '#2563eb'
  on-primary-container: '#eeefff'
  inverse-primary: '#b4c5ff'
  secondary: '#006c49'
  on-secondary: '#ffffff'
  secondary-container: '#6cf8bb'
  on-secondary-container: '#00714d'
  tertiary: '#784b00'
  on-tertiary: '#ffffff'
  tertiary-container: '#996100'
  on-tertiary-container: '#ffeedd'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dbe1ff'
  primary-fixed-dim: '#b4c5ff'
  on-primary-fixed: '#00174b'
  on-primary-fixed-variant: '#003ea8'
  secondary-fixed: '#6ffbbe'
  secondary-fixed-dim: '#4edea3'
  on-secondary-fixed: '#002113'
  on-secondary-fixed-variant: '#005236'
  tertiary-fixed: '#ffddb8'
  tertiary-fixed-dim: '#ffb95f'
  on-tertiary-fixed: '#2a1700'
  on-tertiary-fixed-variant: '#653e00'
  background: '#f8f9ff'
  on-background: '#0b1c30'
  surface-variant: '#d3e4fe'
typography:
  headline-lg:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.02em
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '700'
    lineHeight: 32px
    letterSpacing: -0.02em
  headline-md:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
    letterSpacing: -0.01em
  headline-sm:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
    letterSpacing: 0.05em
  label-sm:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 8px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 32px
  gutter: 16px
  margin-mobile: 16px
  margin-desktop: 48px
---

## Brand & Style

This design system is built for the modern Nepali landlord, bridging the gap between traditional property management and high-precision fintech. The brand personality is **authoritative, transparent, and efficient**. It prioritizes operational clarity to reduce the mental overhead of managing multiple properties and utilities.

The visual style follows a **Corporate/Modern** aesthetic with **Fintech-inspired** precision. It utilizes a high-density information display balanced by generous whitespace and a strict 8px grid. The interface feels "institutional" yet accessible, evoking a sense of financial security and professional organization. Key characteristics include:
- **Card-centric Information Architecture:** Data is encapsulated in distinct modules to manage visual complexity.
- **Data-First Hierarchy:** Financial figures and status indicators are given the highest visual prominence.
- **Functional Minimalism:** Removal of decorative elements in favor of functional depth and clear interaction states.

## Colors

The palette is anchored in **Trustworthy Blue (#2563EB)**, a color that communicates stability and institutional reliability. 

- **Primary (Blue):** Used for primary actions, branding, and active navigation states.
- **Success (Green - #10B981):** Reserved strictly for "Paid," "Collected," and "Reconciled" statuses.
- **Warning (Orange - #F59E0B):** Utilized for "Pending Dues," "Expiring Leases," and items requiring immediate attention.
- **Neutral Scale:** A Slate-based gray scale (from #0F172A to #F8FAFC) ensures high legibility and a sophisticated, non-pure-black dark mode.

For both light and dark modes, surfaces use subtle tonal shifts rather than pure black or white to reduce eye strain during prolonged financial auditing tasks.

## Typography

**Inter** is the sole typeface for this design system. Its neutral, systematic, and highly utilitarian nature makes it ideal for data-heavy SaaS applications where legibility of numbers and status labels is paramount.

- **Numbers:** Always use `tabular-nums` (tnum) OpenType features for financial tables to ensure currency figures align vertically.
- **Headlines:** Use tight letter-spacing (-0.02em) for larger sizes to maintain a modern, "compact" feel.
- **Labels:** Small labels use medium weights and slight tracking to ensure readability at small sizes on mobile devices.
- **Hierarchy:** Strict adherence to font weight is required to differentiate between "Static Data" (Regular 400) and "Actionable Data" (Medium 500 or Semi-bold 600).

## Layout & Spacing

The system employs an **8px linear spacing scale** to maintain mathematical harmony. 

- **Mobile-First Fluidity:** On mobile, the layout uses a single-column fluid grid with 16px outer margins. Components stretch to the container width.
- **Desktop Fixed Grid:** On larger screens, the content is capped at a 1280px max-width, utilizing a 12-column grid with 24px gutters.
- **Card-based Rhythms:** Vertical rhythm is established by 16px (md) spacing between cards. Internal card padding is consistently 16px or 24px depending on the data density required.
- **Touch Targets:** All interactive elements (buttons, inputs) must maintain a minimum height of 48px to accommodate mobile interaction.

## Elevation & Depth

Visual hierarchy is achieved through **Tonal Layers** supplemented by **Ambient Shadows**.

- **Level 0 (Background):** The lowest layer. Use `background_light` or `background_dark`.
- **Level 1 (Cards):** Standard surface for property modules and lists. Features a 1px border (`neutral-200`) and a very soft, diffused shadow (0px 4px 12px, 5% opacity).
- **Level 2 (Active/Hover):** Slightly more pronounced shadow (0px 8px 20px, 8% opacity) to indicate interactivity.
- **Level 3 (Modals/Overlays):** Used for utility payment forms and adding new tenants. These use high-diffusion shadows and a 4px backdrop blur on the background layer to maintain focus.

Avoid heavy skeuomorphism; depth should feel like physical paper sheets stacked neatly.

## Shapes

The shape language is defined by **Friendly Geometric** forms. 

- **Base Radius:** 16px (1rem) is the standard for all primary cards and containers. This creates a soft, modern feel that softens the "coldness" of financial data.
- **Component Radius:** Buttons and input fields use an 8px (0.5rem) radius to differentiate them from the larger container shapes.
- **Micro Radius:** Status badges (chips) and small tags use a 4px or fully rounded (pill) shape to denote their categorization role.

## Components

### Buttons
Primary buttons use a solid `#2563EB` background with white text. Secondary buttons use a subtle ghost style with a 1px border. For destructive actions (e.g., Evict, Delete), use a soft red tint. All buttons feature a subtle 2px vertical gradient to provide a "tactile" pressable feel.

### Cards
Cards are the primary unit of the UI. Property cards must include a header for the property name, a primary "status" slot in the top right, and a "quick-action" footer for utility payments.

### Input Fields
Inputs use a 1px border (#CBD5E1). On focus, the border transitions to Primary Blue with a 3px soft outer glow (ring). Labels must be permanently visible (not floating) to ensure clarity for users who may not be tech-native.

### Status Chips
- **Paid:** Green background (10% opacity) with dark green text.
- **Pending:** Orange background (10% opacity) with dark orange text.
- **Overdue:** Red background (10% opacity) with dark red text.

### Utility Management List
Lists within cards should use a "zebra-stripe" pattern or subtle 1px dividers. Each row should feature a "Pay Now" or "Mark as Paid" action to minimize the number of clicks required for monthly reconciliation.