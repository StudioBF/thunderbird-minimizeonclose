# Minimize on Close Revamped

**Minimize on Close Revamped** is a modern fork of the classic "Minimize on Close" add-on for Thunderbird. It ensures that clicking the window close button (X) minimizes Thunderbird to the tray/taskbar instead of closing the application.

## 🚀 Key Features

*   **Seamless Minimization**: Keeps Thunderbird running in the background when you close the main window.
*   **Modern Compatibility**: Updated to support Thunderbird **128.0** and all future versions (Max Version: `*`).
*   **Conflict-Free**: Renamed internal IDs and APIs to coexist peacefully with the original add-on if needed.
*   **Zero Configuration**: Just install and it works.

## 📦 Installation

### From Add-ons Store
(Coming soon to addons.thunderbird.net)

### Manual Installation
1.  Download the latest `.xpi` release from the releases page (or build it yourself).
2.  Open Thunderbird.
3.  Go to **Settings** > **Add-ons and Themes**.
4.  Click the gear icon ⚙️ > **Install Add-on From File...**
5.  Select the downloaded `.xpi` file.

## 🛠️ Building from Source

This project includes a PowerShell script for easy building on Windows.

1.  Clone the repository.
2.  Run `build_xpi.ps1` in PowerShell.
3.  The signed package will be created in the `dist/` folder.

```powershell
.\build_xpi.ps1
```

## 📜 Credits & License

This project is a fork of the original [Minimize on Close](https://github.com/rsjtdrjgfuzkfg/thunderbird-minimizeonclose) by `rsjtdrjgfuzkfg`.

*   **Original Author**: rsjtdrjgfuzkfg
*   **License**: Mozilla Public License 2.0 (MPL 2.0)

Distributed under the MPL 2.0 license. See `LICENSE` for more information.
