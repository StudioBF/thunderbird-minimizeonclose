# Release Notes

## v1.0.0 - The Revamp

This is the initial release of **Minimize on Close Revamped**, a fork designed to ensure long-term compatibility with modern Thunderbird versions.

### Changes
*   **New Identity**: Renamed to "Minimize on Close Revamped" with a new ID (`minimize-on-close-revamped@custom`) to prevent conflicts.
*   **Compatibility**: Updated `manifest.json` to support Thunderbird versions up to 160.*.
*   **Architecture**: Renamed internal experiment APIs (`ex_windows_revamped`) to completely isolate the code from the original add-on.
*   **Build System**: Added a PowerShell build script (`build_xpi.ps1`) for easier Windows development.

### Upgrading from Original
This add-on can be installed alongside the original "Minimize on Close". However, it is recommended to disable or remove the original add-on to avoid redundant behavior, although no conflicts should occur.
