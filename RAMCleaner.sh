cat << 'EOF'

 _____           __  __         _____ _                        
|  __ \         /\  |  \/  |       / ____| |                       
| |__) |   /  \ | \  / |______| |    | | ___  __ _ _ __   ___ _ __ 
|  _  /   / /\ \| |\/| |______| |    | |/ _ \/ _` | '_ \ / _ \ '__|
| | \ \  / ____ \| |  | |      | |____| |  __/ (_| | | | |  __/ |  
|_|  \_\/_/    \_\_|  |_|       \_____|_|\___|\__,_|_| |_|\___|_|  
                                                                   
RAM-Cleaner-Linux | Th3BlackHol3

Developed by Th3BlackHol3
https://twitter.com/Th3BlackHol3_
https://www.linkedin.com/in/th3blackhol3/

Disclaimer: Use at your own risk. This script executes low-level kernel memory management commands with root privileges. The author assumes no responsibility for system freezes, process terminations (OOM kills), or performance drops resulting from its use. Always ensure available physical RAM exceeds used swap before running.

EOF

sudo sync && sudo sync && echo 1 | sudo tee /proc/sys/vm/drop_caches && sudo sync && echo 2 | sudo tee /proc/sys/vm/drop_caches && sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf 'Ram-cache and Swap Cleared!' && free -h
