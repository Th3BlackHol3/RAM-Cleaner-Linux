# RAM-Cleaner-Linux | Th3BlackHol3
A lightweight Linux Bash script to safely flush filesystem buffers, drop cached RAM (pagecache, dentries, and inodes), and reset swap space to reclaim system memory.

A zero-dependency Linux memory management script designed to free up system memory and purge swap allocation without requiring a reboot.

# Key Features

* **Safe Buffer Flushing:** Executes repeated sync operations to ensure all dirty filesystem buffers are committed to disk before releasing memory.

* **Kernel Cache Release:** Drops PageCache, dentries, and inodes sequentially via /proc/sys/vm/drop_caches.

* **Swap Space Refresh:** Cycling swapoff and swapon forces all active swap pages back into physical RAM and completely empties swap memory.

* **Instant Usage Stats:** Displays a status confirmation alongside human-readable RAM usage statistics (free -h).

# Usages

# Prerequisites

* Root or sudo privileges are required to drop kernel caches and toggle swap space.
* Ensure free physical RAM is higher than current swap usage before running swapoff.

**Option 1: Execute directly as a script**

Clone the repo, set permissions, and run:

```
git clone https://github.com/Th3BlackHol3/RAM-Cleaner-Linux.git
cd RAMCleaner
chmod +x RAMCleaner.sh
sudo ./RAMCleaner.sh
```

**Option 2: Run via curl (No repository clone needed)**

```
curl -sSL https://raw.githubusercontent.com/Th3BlackHol3/RAM-Cleaner-Linux/refs/heads/main/RAMCleaner.sh | sudo bash
```

# ⚠️ Disclaimer

Use at your own risk. This script executes low-level kernel memory management commands with root privileges. The author assumes no responsibility for system freezes, process terminations (OOM kills), or performance drops resulting from its use. Always ensure available physical RAM exceeds used swap before running.

# Thanks
