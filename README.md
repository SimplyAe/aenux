# AENUX

**The Ultimate Linux Multi-Tool** — Making complex Linux tasks simple.

```
  ░█████╗░███████╗███╗░░██╗██╗░░░██╗██╗░░██╗
  ██╔══██╗██╔════╝████╗░██║██║░░░██║╚██╗██╔╝
  ███████║█████╗░░██╔██╗██║██║░░░██║░╚███╔╝░
  ██╔══██║██╔══╝░░██║╚████║██║░░░██║░██╔██╗░
  ██║░░██║███████╗██║░╚███║╚██████╔╝██╔╝╚██╗
  ╚═╝░░╚═╝╚══════╝╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝
```

**Version:** 3.0.0  
**Author:** SimplyAe  
**License:** MIT

---

## 🚀 Features

AENUX is a zero-dependency bash script that provides a beautiful interactive menu for managing your entire Linux system.

### 📦 Package Management
- Universal support: **apt · dnf · yum · zypper · pacman · apk · xbps · nix · emerge · slackpkg · swupd**
- Snap & Flatpak integrated menus
- Install, remove, search, update, upgrade
- Hold/pin package versions
- Find what package provides a file
- View recently installed packages
- Dry-run mode for safe upgrades

### 🔧 System Maintenance
- Deep clean (cache, logs, temp files)
- Smart auto-upgrade with disk space checks
- Performance optimization
- Schedule automatic upgrades via cron or systemd timers
- Rebuild initramfs
- Purge old kernels
- Clear systemd journal logs

### ⚡ Process Manager
- View top processes by CPU or memory
- Find, kill, or renice processes
- Detect zombie processes
- Full process tree view

### 💿 Disk & File Tools
- Color-coded disk usage (shows real mounts, filters pseudo-filesystems)
- Find largest files/directories
- Mount/unmount drives
- Format drives (with safety warnings)
- SMART disk health checks

### ⚙️ Service Management
- Start, stop, restart, enable, disable services
- View running and failed services
- Service logs via journalctl
- Supports systemd and SysV init

### 🌐 Network Tools
- Show IPs and interfaces
- Ping, DNS lookup, traceroute
- View open ports and active connections
- Internet speed test
- Flush DNS cache
- Show public IP address

### 💻 Hardware Information
- CPU, RAM, GPU, USB, PCI device info
- Battery status and sensors
- Disk and block device details
- Full system summary (supports fastfetch, hyfetch, neofetch, macchina, pfetch, screenfetch, inxi)
- Clean "About this system" view

### 👤 User & Group Management
- Add/remove users and groups
- Change passwords
- Manage group memberships
- View current user info

### 💾 Backup & Restore
- Backup/restore package lists
- Backup directories and home folder
- Automatic backup before system upgrades
- Configurable backup location

### 🛡️ Security Tools
- Show listening ports
- Login history
- SUID/SGID file scanner
- UFW firewall control
- SSH config audit
- Rootkit scanning (rkhunter)
- Fail2ban status

### 📋 Logs & History
- AENUX action history
- Filtered log viewer (ALL/WARN/ERROR)
- System journal, dmesg, auth logs
- Boot logs

### ⚙️ Settings & Customization
- First-run setup wizard
- Color themes (default, green, magenta, no-color)
- Configurable editor (VS Code, nano, vim, nvim, vi, micro)
- Toggle features (auto-clean, dry-run, tips)
- Self-update capability

### 🔍 Global Search
- Press `/` in the main menu to search all features by keyword

---

## 📥 Installation

### Quick Install

```bash
# Download
curl -fsSL https://raw.githubusercontent.com/SimplyAe/aenux/main/aenux -o aenux

# Make executable
chmod +x aenux

# Move to PATH (optional)
sudo mv aenux /usr/local/bin/aenux

# Run
aenux
```

### From Git

```bash
git clone https://github.com/SimplyAe/aenux.git
cd aenux
chmod +x aenux
sudo mv aenux /usr/local/bin/aenux
aenux
```

---

## 🎯 Usage

### Interactive Menu (Default)
Just run the command:
```bash
aenux
```

Navigate with numbers and letters. Press `q` to quit.

### CLI Mode (Non-Interactive)
For scripting or quick actions:

```bash
aenux install <package>      # Install packages
aenux remove <package>        # Remove packages
aenux update                  # Update package lists
aenux upgrade                 # Smart system upgrade
aenux search <query>          # Search packages
aenux clean                   # Deep clean system
aenux optimize                # Optimize performance
aenux health                  # System health report
aenux backup                  # Backup package list
aenux update-self             # Update AENUX
aenux version                 # Show version
aenux help                    # Show help
```

---

## 🎨 Screenshots

### Main Menu
```
  ░█████╗░███████╗███╗░░██╗██╗░░░██╗██╗░░██╗
  ██╔══██╗██╔════╝████╗░██║██║░░░██║╚██╗██╔╝
  ███████║█████╗░░██╔██╗██║██║░░░██║░╚███╔╝░
  ██╔══██║██╔══╝░░██║╚████║██║░░░██║░██╔██╗░
  ██║░░██║███████╗██║░╚███║╚██████╔╝██╔╝╚██╗
  ╚═╝░░╚═╝╚══════╝╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝

  v3.0.0  │  Host: mypc  │  Distro: Ubuntu 24.04  │  Kernel: 6.8.0  │  PM: apt-get
  ────────────────────────────────────────────────────────────

  Select a category:

   [1]  📦   Package Manager
   [2]  🌍   Universal PMs (Snap & Flatpak)
   [3]  🔧   System Maintenance
   [4]  ⚡   Process Manager
   [5]  💿   Disk & File Tools
   [6]  ⚙️    Service Manager
   [7]  🌐   Network Tools
   [8]  💻   Hardware Info
   [9]  👤   User & Group Management
   [0]  💾   Backup & Restore

   [h]  ❤️    System Health Report
   [s]  🛡️    Security Tools
   [e]  🐚   Shell & Environment
   [l]  📋   Logs & History
   [c]  ⚙️    Settings
   [/]  🔍   Search menus

   [q]  Quit
```

---

## 🔧 Configuration

AENUX stores its config in `~/.config/aenux/`:

- **config.conf** — User settings
- **aenux.log** — Operation log
- **history.log** — Command history

### First-Run Wizard

On first launch, AENUX runs a setup wizard that asks:
1. Preferred text editor (VS Code, nano, vim, nvim, vi, micro)
2. Color theme (default, green, magenta, none)
3. Auto-clean after upgrades? (yes/no)
4. Backup directory location

You can re-run the wizard any time from Settings.

---

## 📋 Requirements

- **Bash 4.0+** (pre-installed on all modern Linux distros)
- **Root access** (via `sudo`) for system operations
- **Optional:** Various tools are used when available (lsusb, lspci, sensors, smartctl, etc.)

**No dependencies to install** — it's pure bash and works out of the box.

---

## 🌍 Supported Distributions

AENUX automatically detects and supports:

- **Debian/Ubuntu** (apt)
- **Fedora/RHEL/CentOS** (dnf, yum)
- **openSUSE** (zypper)
- **Arch Linux** (pacman)
- **Alpine Linux** (apk)
- **Void Linux** (xbps)
- **NixOS** (nix)
- **Gentoo** (emerge)
- **Slackware** (slackpkg)
- **Clear Linux** (swupd)

Plus Snap and Flatpak universal package managers.

---

## 🤝 Contributing

Contributions are welcome! Feel free to:

- Report bugs via [Issues](https://github.com/SimplyAe/aenux/issues)
- Submit pull requests
- Suggest new features
- Improve documentation

---

## 📜 License

MIT License - see [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- Inspired by various Linux system management tools
- Built with love for the Linux community
- Special thanks to all package manager maintainers

---

## 📞 Contact

**Author:** SimplyAe  
**Email:** shane.perso@gmail.com  
**GitHub:** [@SimplyAe](https://github.com/SimplyAe)

---

## ⭐ Star History

If you find AENUX useful, please consider giving it a star on GitHub!

---

**Made with ❤️ for Linux users everywhere.**
