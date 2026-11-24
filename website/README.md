# s1op Setup Wizard

A glass-style, four-step setup UI for s1op: LocalDevVPN check/confirmation, device pairing guidance, Apple ID signing safety, and GitHub source/install links.

## Honest limitations
- Browser pages cannot verify a private VPN/tunnel reliably. Step 1 asks the user to confirm the companion's status.
- This is a guide UI, not a native installer. It does not pair devices, request Apple ID credentials, sign IPAs, or install software.
- Apple ID sign-in must happen only through official/trusted installation prompts.
- Android VM performance approaching an iPhone's native performance in demanding games is not guaranteed or realistically achieved by UI changes. It needs major runtime, virtualization, GPU translation, driver, and device-specific engineering.

## Open source
The website files are openly available in this repository. Maintainer credit: **ales04718**.

## Files
- `index.html`: wizard markup and illustrations
- `styles.css`: liquid-glass styling, motion, hover/press feedback, responsive layout
- `app.js`: step navigation and user-confirmed VPN state

## License
See the repository license. All original website source is open for inspection.
