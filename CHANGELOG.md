# Dawnrail site changelog

## Unreleased

### Changed
- Rebuilt the landing page on the specter-site layout, styled to match the user guide: light paper and green palette, DM Mono and Manrope, with color variables shared between both pages.
- The macOS, Linux, and Windows buttons in the install section download directly from the latest GitHub release. No URL is shown.
- `install` in the interactive terminal lists the real release artifacts.

### Added
- Interactive terminal demo with boot sequence, command handling, and `clear`.
- Live theme switching via `theme green|cyan|amber|violet`.
- User guide updated for Xpecter v3.8.0: a "New since v3.4" index, a Your configuration section, and how-to coverage of broadcast input, named layouts, session restore, bell notifications, agent forwarding, serial console controls, tag colours and the production guard, PuTTY import, custom highlight rules, find in output, paste line delay, find in files, PDF and image viewers, sudo saves, external editing, SFTP downloads, following the shell's directory, SOCKS and remote forwards, saved forwards, and the update checker. Features are written up as what they do, how they work, and step-by-step use, with worked examples. The settings reference lists every setting in the v3.8.0 Settings dialog under its exact label, with its default, choices, and what it does. Limitations that no longer apply were removed.
- User guide page (`Documentation.html`), reachable from the `docs` nav link and terminal command, with Home links back to the landing page.
- Xpecter logo (favicon and name) at the top left of the landing page and user guide, always linking to the landing page.

### Removed
- Removed the previous gold and serif Dawnrail layout, feature grid, product screenshot, and rail switch animation.
- Removed the `about` nav link.
- Removed the version number (v3.0) from the landing page's terminal boot line and footer.
