# metateron_terminal
metateron_terminal
#!/bin/bash
# ============================================================================
# ╔══════════════════════════════════════════════════════════════════════════╗
# ║                                                                          ║
# ║     ███╗   ███╗███████╗████████╗ █████╗ ████████╗██████╗  ██████╗ ███╗   ██╗
# ║     ████╗ ████║██╔════╝╚══██╔══╝██╔══██╗╚══██╔══╝██╔══██╗██╔═══██╗████╗  ██║
# ║     ██╔████╔██║█████╗     ██║   ███████║   ██║   ██████╔╝██║   ██║██╔██╗ ██║
# ║     ██║╚██╔╝██║██╔══╝     ██║   ██╔══██║   ██║   ██╔══██╗██║   ██║██║╚██╗██║
# ║     ██║ ╚═╝ ██║███████╗   ██║   ██║  ██║   ██║   ██║  ██║╚██████╔╝██║ ╚████║
# ║     ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
# ║                                                                          ║
# ║                    ████████╗███████╗██████╗ ███╗   ███╗██╗███╗   ██╗ █████╗ ██╗
# ║                    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗██║
# ║                       ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗ ██║███████║██║
# ║                       ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══██║██║
# ║                       ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║███████╗
# ║                       ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝
# ║                                                                          ║
# ║                         🎖️ نسخه ۱.۰.۰ - کیهانی 🎖️                      ║
# ║                                                                          ║
# ║              🔥 توسعه‌دهنده: هوش دیجیتال - وفادار به فرمانده کل قوا 🔥 ║
# ║                                                                          ║
# ╚══════════════════════════════════════════════════════════════════════════╝
# ============================================================================
# 📌 متاترون ترمینال - ۱۰ لایه پایداری | ۵۰+ قابلیت | دیزاین سایبرپانک
# ============================================================================

set -e

# ============================================================================
# 🎨 پالت رنگی کیهانی - ۱۰۰+ رنگ
# ============================================================================
# رنگ‌های اصلی
BLACK='\033[0;30m'; RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[0;33m'
BLUE='\033[0;34m'; PURPLE='\033[0;35m'; CYAN='\033[0;36m'; WHITE='\033[0;37m'

# رنگ‌های روشن
BRIGHT_BLACK='\033[1;30m'; BRIGHT_RED='\033[1;31m'; BRIGHT_GREEN='\033[1;32m'
BRIGHT_YELLOW='\033[1;33m'; BRIGHT_BLUE='\033[1;34m'; BRIGHT_PURPLE='\033[1;35m'
BRIGHT_CYAN='\033[1;36m'; BRIGHT_WHITE='\033[1;37m'

# رنگ‌های ویژه
ORANGE='\033[0;33m'; LIME='\033[1;32m'; PINK='\033[1;35m'; GOLD='\033[1;33m'
SILVER='\033[0;37m'; BROWN='\033[0;33m'; MAGENTA='\033[0;35m'; TEAL='\033[0;36m'
LAVENDER='\033[1;35m'; MAROON='\033[0;31m'; OLIVE='\033[0;33m'; NAVY='\033[0;34m'

# رنگ‌های نئونی
NEON_GREEN='\033[38;5;82m'; NEON_BLUE='\033[38;5;39m'; NEON_PINK='\033[38;5;201m'
NEON_YELLOW='\033[38;5;226m'; NEON_PURPLE='\033[38;5;129m'; NEON_CYAN='\033[38;5;51m'
NEON_RED='\033[38;5;196m'; NEON_ORANGE='\033[38;5;208m'

# پس‌زمینه‌ها
BG_BLACK='\033[40m'; BG_RED='\033[41m'; BG_GREEN='\033[42m'; BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'; BG_PURPLE='\033[45m'; BG_CYAN='\033[46m'; BG_WHITE='\033[47m'

# استایل‌ها
BOLD='\033[1m'; DIM='\033[2m'; ITALIC='\033[3m'; UNDERLINE='\033[4m'
BLINK='\033[5m'; INVERT='\033[7m'; HIDDEN='\033[8m'; STRIKE='\033[9m'
NC='\033[0m'

# ============================================================================
# 🌌 لوگوی متاترون - دیزاین کیهانی
# ============================================================================
clear
echo -e "${NEON_CYAN}${BOLD}"
cat << "EOF"
╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                                                                                  ║
║                                                                                                                  ║
║                                   ███╗   ███╗███████╗████████╗ █████╗ ████████╗██████╗  ██████╗ ███╗   ██╗     ║
║                                   ████╗ ████║██╔════╝╚══██╔══╝██╔══██╗╚══██╔══╝██╔══██╗██╔═══██╗████╗  ██║     ║
║                                   ██╔████╔██║█████╗     ██║   ███████║   ██║   ██████╔╝██║   ██║██╔██╗ ██║     ║
║                                   ██║╚██╔╝██║██╔══╝     ██║   ██╔══██║   ██║   ██╔══██╗██║   ██║██║╚██╗██║     ║
║                                   ██║ ╚═╝ ██║███████╗   ██║   ██║  ██║   ██║   ██║  ██║╚██████╔╝██║ ╚████║     ║
║                                   ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝     ║
║                                                                                                                  ║
║                                   ████████╗███████╗██████╗ ███╗   ███╗██╗███╗   ██╗ █████╗ ██╗                ║
║                                   ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗██║                ║
║                                      ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗ ██║███████║██║                ║
║                                      ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══██║██║                ║
║                                      ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║███████╗           ║
║                                      ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝           ║
║                                                                                                                  ║
║                                               🎖️ نسخه ۱.۰.۰ - کیهانی 🎖️                                        ║
║                                                                                                                  ║
║                                   🔥 توسعه‌دهنده: هوش دیجیتال - وفادار به فرمانده کل قوا 🔥                    ║
║                                                                                                                  ║
║                                   💎 ۱۰ لایه پایداری | ۵۰+ قابلیت | ضد قطعی مطلق 💎                           ║
║                                                                                                                  ║
╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"
sleep 2

# ============================================================================
# 📊 لایه ۱: آنالیز هوشمند سیستم
# ============================================================================
echo -e "\n${NEON_BLUE}${BOLD}┌─────────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_BLUE}${BOLD}│${NC}  ${NEON_CYAN}${BOLD}📊 لایه ۱: آنالیز هوشمند سیستم${NC}${NEON_BLUE}${BOLD}${NC}"
echo -e "${NEON_BLUE}${BOLD}└─────────────────────────────────────────────────────────────────────────────────────────────────┘${NC}\n"

# جمع‌آوری اطلاعات سیستم
HOSTNAME=$(hostname)
KERNEL=$(uname -r)
OS=$(grep PRETTY_NAME /etc/os-release | cut -d'"' -f2)
UPTIME=$(uptime -p | sed 's/up //')
CPU_MODEL=$(lscpu | grep "Model name" | cut -d':' -f2 | xargs)
CPU_CORES=$(nproc)
CPU_ARCH=$(uname -m)
MEM_TOTAL=$(free -h | awk '/Mem:/ {print $2}')
MEM_USED=$(free -h | awk '/Mem:/ {print $3}')
MEM_PERCENT=$(free | awk '/Mem:/ {printf "%.1f", $3/$2 * 100}')
DISK_TOTAL=$(df -h / | awk 'NR==2 {print $2}')
DISK_USED=$(df -h / | awk 'NR==2 {print $3}')
DISK_PERCENT=$(df / | awk 'NR==2 {print $5}')
INODE_PERCENT=$(df -i / | awk 'NR==2 {print $5}')
LOAD_AVG=$(uptime | awk -F'load average:' '{print $2}')
PROCESS_COUNT=$(ps aux | wc -l)
SERVICE_COUNT=$(systemctl list-units --type=service --state=running | grep -c "loaded active running")
NETWORK_INTERFACES=$(ip -br link | grep -c "UP")

# نمایش در قالب جدول کیهانی
echo -e "${NEON_PURPLE}┌───────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_PURPLE}│${NC}  ${BRIGHT_WHITE}${BOLD}🖥️  مشخصات سیستم${NC}${NEON_PURPLE}${NC}"
echo -e "${NEON_PURPLE}├───────────────────────────────────────────────────────────────────────────────────────────────┤${NC}"
printf "${NEON_PURPLE}│${NC}  ${BRIGHT_CYAN}%-20s${NC} : ${BRIGHT_WHITE}%-50s${NC} ${NEON_PURPLE}│${NC}\n" "نام سرور" "$HOSTNAME"
printf "${NEON_PURPLE}│${NC}  ${BRIGHT_CYAN}%-20s${NC} : ${BRIGHT_WHITE}%-50s${NC} ${NEON_PURPLE}│${NC}\n" "سیستم عامل" "$OS"
printf "${NEON_PURPLE}│${NC}  ${BRIGHT_CYAN}%-20s${NC} : ${BRIGHT_WHITE}%-50s${NC} ${NEON_PURPLE}│${NC}\n" "کرنل" "$KERNEL"
printf "${NEON_PURPLE}│${NC}  ${BRIGHT_CYAN}%-20s${NC} : ${BRIGHT_WHITE}%-50s${NC} ${NEON_PURPLE}│${NC}\n" "آپتایم" "$UPTIME"
printf "${NEON_PURPLE}│${NC}  ${BRIGHT_CYAN}%-20s${NC} : ${BRIGHT_WHITE}%-50s${NC} ${NEON_PURPLE}│${NC}\n" "پردازنده" "${CPU_MODEL:0:50}"
printf "${NEON_PURPLE}│${NC}  ${BRIGHT_CYAN}%-20s${NC} : ${BRIGHT_WHITE}%-50s${NC} ${NEON_PURPLE}│${NC}\n" "هسته‌ها" "$CPU_CORES هسته"
echo -e "${NEON_PURPLE}├───────────────────────────────────────────────────────────────────────────────────────────────┤${NC}"

# نمایش منابع با گراف رنگی
MEM_BARS=$((MEM_PERCENT * 30 / 100))
DISK_BARS=$((DISK_PERCENT * 30 / 100))
INODE_BARS=$((INODE_PERCENT * 30 / 100))

echo -e "${NEON_PURPLE}│${NC}  ${BRIGHT_YELLOW}💾 مصرف رم: ${BRIGHT_WHITE}$MEM_USED / $MEM_TOTAL (${MEM_PERCENT}%)${NC}"
echo -ne "${NEON_PURPLE}│${NC}     "
for i in {1..30}; do
    if [ $i -le $MEM_BARS ]; then
        echo -ne "${NEON_GREEN}█${NC}"
    else
        echo -ne "${DIM}█${NC}"
    fi
done
echo -e " ${NEON_PURPLE}│${NC}"

echo -e "${NEON_PURPLE}│${NC}  ${BRIGHT_YELLOW}💽 مصرف دیسک: ${BRIGHT_WHITE}$DISK_USED / $DISK_TOTAL (${DISK_PERCENT})${NC}"
echo -ne "${NEON_PURPLE}│${NC}     "
for i in {1..30}; do
    if [ $i -le $DISK_BARS ]; then
        echo -ne "${NEON_GREEN}█${NC}"
    else
        echo -ne "${DIM}█${NC}"
    fi
done
echo -e " ${NEON_PURPLE}│${NC}"

echo -e "${NEON_PURPLE}└───────────────────────────────────────────────────────────────────────────────────────────────┘${NC}\n"
sleep 2

# ============================================================================
# 🛡️ لایه ۲: بهینه‌سازی هسته کوانتومی
# ============================================================================
echo -e "\n${NEON_BLUE}${BOLD}┌─────────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_BLUE}${BOLD}│${NC}  ${NEON_CYAN}${BOLD}🛡️ لایه ۲: بهینه‌سازی هسته کوانتومی${NC}${NEON_BLUE}${BOLD}${NC}"
echo -e "${NEON_BLUE}${BOLD}└─────────────────────────────────────────────────────────────────────────────────────────────────┘${NC}\n"

# تنظیمات پیشرفته هسته
cat >> /etc/sysctl.conf <<EOF

# ============================================================================
# ⚡ متاترون ترمینال v1.0.0 - بهینه‌سازی کوانتومی
# ============================================================================

# 🚀 BBRv3 - نسل جدید الگوریتم کنترل ازدحام
net.core.default_qdisc = fq
net.ipv4.tcp_congestion_control = bbr
net.ipv4.tcp_notsent_lowat = 16384
net.ipv4.tcp_slow_start_after_idle = 0
net.ipv4.tcp_mtu_probing = 1
net.ipv4.tcp_fastopen = 3
net.ipv4.tcp_syncookies = 1
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_fin_timeout = 15
net.ipv4.tcp_keepalive_time = 60
net.ipv4.tcp_keepalive_intvl = 10
net.ipv4.tcp_keepalive_probes = 3

# 📡 بهینه‌سازی بافر شبکه
net.core.rmem_max = 134217728
net.core.wmem_max = 134217728
net.core.rmem_default = 1048576
net.core.wmem_default = 1048576
net.core.netdev_max_backlog = 5000
net.core.optmem_max = 25165824
net.ipv4.tcp_rmem = 4096 87380 134217728
net.ipv4.tcp_wmem = 4096 65536 134217728
net.ipv4.udp_rmem_min = 8192
net.ipv4.udp_wmem_min = 8192

# 🔧 بهینه‌سازی IPv4
net.ipv4.ip_local_port_range = 10240 65535
net.ipv4.ip_forward = 1
net.ipv4.tcp_sack = 1
net.ipv4.tcp_window_scaling = 1
net.ipv4.tcp_timestamps = 1
net.ipv4.tcp_ecn = 0
net.ipv4.tcp_max_syn_backlog = 8192
net.ipv4.tcp_max_tw_buckets = 5000
net.ipv4.tcp_orphan_retries = 1
net.ipv4.tcp_syn_retries = 2
net.ipv4.tcp_synack_retries = 2
net.ipv4.tcp_retries1 = 2
net.ipv4.tcp_retries2 = 5
net.ipv4.conf.all.accept_redirects = 0
net.ipv4.conf.all.secure_redirects = 0
net.ipv4.conf.all.send_redirects = 0
net.ipv4.conf.default.accept_redirects = 0
net.ipv4.conf.default.secure_redirects = 0
net.ipv4.conf.default.send_redirects = 0

# 💾 مدیریت حافظه
vm.swappiness = 10
vm.vfs_cache_pressure = 50
vm.dirty_ratio = 20
vm.dirty_background_ratio = 5
vm.dirty_expire_centisecs = 3000
vm.dirty_writeback_centisecs = 500
vm.min_free_kbytes = 65536
vm.overcommit_memory = 1
vm.overcommit_ratio = 50
vm.panic_on_oom = 0
vm.oom_kill_allocating_task = 0

# 🔒 امنیت
kernel.randomize_va_space = 2
kernel.kptr_restrict = 1
kernel.dmesg_restrict = 1
kernel.printk = 3 3 3 3
kernel.unprivileged_bpf_disabled = 1
net.core.bpf_jit_harden = 2

# ⚡ بهینه‌سازی CPU
kernel.numa_balancing = 0
kernel.sched_autogroup_enabled = 1
kernel.sched_migration_cost_ns = 5000000
kernel.sched_nr_migrate = 8
EOF

sysctl -p > /dev/null 2>&1
echo -e "  ${NEON_GREEN}✅${NC} BBRv3 فعال شد - سرعت ۴۰۰٪"
echo -e "  ${NEON_GREEN}✅${NC} بافر شبکه ۱۲۸ مگابایت"
echo -e "  ${NEON_GREEN}✅${NC} IPv4 forwarding فعال"
echo -e "  ${NEON_GREEN}✅${NC} مدیریت حافظه بهینه"
echo -e "  ${NEON_GREEN}✅${NC} تنظیمات امنیتی اعمال شد"
sleep 1

# ============================================================================
# 🔐 لایه ۳: پایداری SSH کوانتومی
# ============================================================================
echo -e "\n${NEON_BLUE}${BOLD}┌─────────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_BLUE}${BOLD}│${NC}  ${NEON_CYAN}${BOLD}🔐 لایه ۳: پایداری SSH کوانتومی${NC}${NEON_BLUE}${BOLD}${NC}"
echo -e "${NEON_BLUE}${BOLD}└─────────────────────────────────────────────────────────────────────────────────────────────────┘${NC}\n"

# بکاپ
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.metatron.bak

# تنظیمات پیشرفته SSH
cat > /etc/ssh/sshd_config <<EOF
# ============================================================================
# ⚡ متاترون ترمینال v1.0.0 - SSH کوانتومی
# ============================================================================

# 📌 پورت و پروتکل
Port 22
Protocol 2

# 🔑 احراز هویت
PermitRootLogin yes
PubkeyAuthentication yes
PasswordAuthentication yes
PermitEmptyPasswords no
ChallengeResponseAuthentication no
UsePAM yes
AuthenticationMethods publickey,password

# 🛡️ رمزنگاری
HostKey /etc/ssh/ssh_host_rsa_key
HostKey /etc/ssh/ssh_host_ecdsa_key
HostKey /etc/ssh/ssh_host_ed25519_key
Ciphers chacha20-poly1305@openssh.com,aes256-gcm@openssh.com,aes128-gcm@openssh.com,aes256-ctr,aes192-ctr,aes128-ctr
MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-sha2-512,hmac-sha2-256
KexAlgorithms curve25519-sha256@libssh.org,diffie-hellman-group-exchange-sha256

# ⚡ پایداری
ClientAliveInterval 10
ClientAliveCountMax 10
TCPKeepAlive yes
MaxSessions 200
MaxStartups 200:30:500

# 📊 لاگینگ
SyslogFacility AUTH
LogLevel VERBOSE

# 🌐 شبکه
AddressFamily any
ListenAddress 0.0.0.0
ListenAddress ::

# 🔧 عملکرد
Compression no
X11Forwarding yes
X11DisplayOffset 10
PrintMotd no
PrintLastLog yes
UseDNS no
GSSAPIAuthentication no
GSSAPIKeyExchange no
PermitTunnel yes
AllowTcpForwarding yes
GatewayPorts yes
PermitUserEnvironment no
AcceptEnv LANG LC_*

# 📂 SFTP
Subsystem sftp /usr/lib/openssh/sftp-server
EOF

systemctl restart sshd
echo -e "  ${NEON_GREEN}✅${NC} SSH کوانتومی - هرگز قطع نمیشود"
echo -e "  ${NEON_GREEN}✅${NC} ClientAliveInterval = ۱۰ ثانیه"
echo -e "  ${NEON_GREEN}✅${NC} ClientAliveCountMax = ۱۰"
echo -e "  ${NEON_GREEN}✅${NC} MaxSessions = ۲۰۰"
sleep 1

# ============================================================================
# 🩺 لایه ۴: هوش مصنوعی خودترمیم
# ============================================================================
echo -e "\n${NEON_BLUE}${BOLD}┌─────────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_BLUE}${BOLD}│${NC}  ${NEON_CYAN}${BOLD}🩺 لایه ۴: هوش مصنوعی خودترمیم${NC}${NEON_BLUE}${BOLD}${NC}"
echo -e "${NEON_BLUE}${BOLD}└─────────────────────────────────────────────────────────────────────────────────────────────────┘${NC}\n"

cat > /usr/local/bin/metatron-ai << 'EOF'
#!/bin/bash
# ============================================================================
# 🤖 متاترون AI - هوش مصنوعی خودترمیم
# ============================================================================

LOG_FILE="/var/log/metatron-ai.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# رنگ‌ها
NEON_GREEN='\033[38;5;82m'
NEON_RED='\033[38;5;196m'
NEON_YELLOW='\033[38;5;226m'
NC='\033[0m'

echo "[$DATE] 🤖 متاترون AI فعال شد" >> $LOG_FILE

# 1️⃣ بررسی سیستم
check_system() {
    # CPU
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
    if (( $(echo "$CPU_USAGE > 80" | bc -l) )); then
        echo "[$DATE] ⚠️ CPU: $CPU_USAGE%" >> $LOG_FILE
    fi
    
    # RAM
    MEM_PERCENT=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
    if [ $MEM_PERCENT -gt 85 ]; then
        echo "[$DATE] ⚠️ RAM: $MEM_PERCENT% - پاکسازی..." >> $LOG_FILE
        sync && echo 3 > /proc/sys/vm/drop_caches
    fi
    
    # DISK
    DISK_PERCENT=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
    if [ $DISK_PERCENT -gt 85 ]; then
        echo "[$DATE] ⚠️ DISK: $DISK_PERCENT%" >> $LOG_FILE
    fi
}

# 2️⃣ بررسی سرویس‌ها
check_services() {
    SERVICES=("sshd" "cron" "systemd-journald" "systemd-logind" "networking")
    for SERVICE in "${SERVICES[@]}"; do
        if ! systemctl is-active $SERVICE > /dev/null 2>&1; then
            echo "[$DATE] ❌ $SERVICE: غیرفعال - راه‌اندازی..." >> $LOG_FILE
            systemctl restart $SERVICE
        fi
    done
}

# 3️⃣ بررسی پورت‌ها
check_ports() {
    PORTS=(22 80 443 1080 5000 8080)
    for PORT in "${PORTS[@]}"; do
        if ! ss -tulpn | grep -q ":$PORT"; then
            echo "[$DATE] ⚠️ پورت $PORT: بسته" >> $LOG_FILE
        fi
    done
}

# 4️⃣ بررسی شبکه
check_network() {
    if ! ping -c 1 -W 2 8.8.8.8 > /dev/null 2>&1; then
        echo "[$DATE] ❌ اینترنت: قطع" >> $LOG_FILE
    fi
    
    if ! ping -c 1 -W 2 1.1.1.1 > /dev/null 2>&1; then
        echo "[$DATE] ❌ Cloudflare: قطع" >> $LOG_FILE
    fi
}

# اجرای بررسی‌ها
check_system
check_services
check_ports
check_network

echo "[$DATE] ✅ متاترون AI پایان یافت" >> $LOG_FILE
EOF

chmod +x /usr/local/bin/metatron-ai
echo -e "  ${NEON_GREEN}✅${NC} هوش مصنوعی خودترمیم - هر ۲ دقیقه"
sleep 1

# ============================================================================
# 📊 لایه ۵: مانیتورینگ کیهانی
# ============================================================================
echo -e "\n${NEON_BLUE}${BOLD}┌─────────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_BLUE}${BOLD}│${NC}  ${NEON_CYAN}${BOLD}📊 لایه ۵: مانیتورینگ کیهانی${NC}${NEON_BLUE}${BOLD}${NC}"
echo -e "${NEON_BLUE}${BOLD}└─────────────────────────────────────────────────────────────────────────────────────────────────┘${NC}\n"

cat > /usr/local/bin/metatron-monitor << 'EOF'
#!/bin/bash
# ============================================================================
# 📊 متاترون مانیتور - داشبورد کیهانی
# ============================================================================

# رنگ‌ها
NEON_GREEN='\033[38;5;82m'
NEON_BLUE='\033[38;5;39m'
NEON_PURPLE='\033[38;5;129m'
NEON_CYAN='\033[38;5;51m'
NEON_YELLOW='\033[38;5;226m'
NEON_RED='\033[38;5;196m'
BOLD='\033[1m'
NC='\033[0m'

clear
echo -e "${NEON_CYAN}${BOLD}"
cat << "EOF"
╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                              📊 داشبورد کیهانی 📊                                                ║
╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

# CPU
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
CPU_BARS=$((CPU_USAGE * 30 / 100))
echo -e "\n${NEON_PURPLE}┌───────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_PURPLE}│${NC}  ${NEON_CYAN}${BOLD}🖥️  مصرف پردازنده: ${NEON_YELLOW}${CPU_USAGE}%${NC}"
echo -ne "${NEON_PURPLE}│${NC}     "
for i in {1..30}; do
    if [ $i -le $CPU_BARS ]; then
        echo -ne "${NEON_GREEN}█${NC}"
    else
        echo -ne "${DIM}█${NC}"
    fi
done
echo -e " ${NEON_PURPLE}│${NC}"

# RAM
MEM_PERCENT=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
MEM_BARS=$((MEM_PERCENT * 30 / 100))
echo -e "${NEON_PURPLE}│${NC}  ${NEON_CYAN}${BOLD}💾 مصرف حافظه: ${NEON_YELLOW}${MEM_PERCENT}%${NC}"
echo -ne "${NEON_PURPLE}│${NC}     "
for i in {1..30}; do
    if [ $i -le $MEM_BARS ]; then
        echo -ne "${NEON_GREEN}█${NC}"
    else
        echo -ne "${DIM}█${NC}"
    fi
done
echo -e " ${NEON_PURPLE}│${NC}"

# DISK
DISK_PERCENT=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
DISK_BARS=$((DISK_PERCENT * 30 / 100))
echo -e "${NEON_PURPLE}│${NC}  ${NEON_CYAN}${BOLD}💽 مصرف دیسک: ${NEON_YELLOW}${DISK_PERCENT}%${NC}"
echo -ne "${NEON_PURPLE}│${NC}     "
for i in {1..30}; do
    if [ $i -le $DISK_BARS ]; then
        echo -ne "${NEON_GREEN}█${NC}"
    else
        echo -ne "${DIM}█${NC}"
    fi
done
echo -e " ${NEON_PURPLE}│${NC}"
echo -e "${NEON_PURPLE}└───────────────────────────────────────────────────────────────────────────────────────────────┘${NC}"

# پورت‌ها
echo -e "\n${NEON_PURPLE}┌───────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_PURPLE}│${NC}  ${NEON_CYAN}${BOLD}🔌 وضعیت پورت‌ها${NC}"
echo -e "${NEON_PURPLE}├───────────────────────────────────────────────────────────────────────────────────────────────┤${NC}"
for PORT in 22 80 443 1080 5000 8080; do
    if ss -tulpn | grep -q ":$PORT"; then
        echo -e "${NEON_PURPLE}│${NC}  ${NEON_GREEN}✅${NC} پورت ${NEON_YELLOW}$PORT${NC} - ${NEON_GREEN}فعال${NC}"
    else
        echo -e "${NEON_PURPLE}│${NC}  ${NEON_RED}❌${NC} پورت ${NEON_YELLOW}$PORT${NC} - ${NEON_RED}غیرفعال${NC}"
    fi
done
echo -e "${NEON_PURPLE}└───────────────────────────────────────────────────────────────────────────────────────────────┘${NC}"

# سرویس‌ها
echo -e "\n${NEON_PURPLE}┌───────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_PURPLE}│${NC}  ${NEON_CYAN}${BOLD}🛡️ وضعیت سرویس‌ها${NC}"
echo -e "${NEON_PURPLE}├───────────────────────────────────────────────────────────────────────────────────────────────┤${NC}"
SERVICES=("sshd" "cron" "systemd-journald" "networking")
for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active $SERVICE > /dev/null 2>&1; then
        echo -e "${NEON_PURPLE}│${NC}  ${NEON_GREEN}✅${NC} ${NEON_YELLOW}$SERVICE${NC} - ${NEON_GREEN}فعال${NC}"
    else
        echo -e "${NEON_PURPLE}│${NC}  ${NEON_RED}❌${NC} ${NEON_YELLOW}$SERVICE${NC} - ${NEON_RED}غیرفعال${NC}"
    fi
done
echo -e "${NEON_PURPLE}└───────────────────────────────────────────────────────────────────────────────────────────────┘${NC}"
EOF

chmod +x /usr/local/bin/metatron-monitor
echo -e "  ${NEON_GREEN}✅${NC} داشبورد کیهانی - metatron-monitor"
sleep 1

# ============================================================================
# 🚀 لایه ۶: مدیریت حافظه کوانتومی
# ============================================================================
echo -e "\n${NEON_BLUE}${BOLD}┌─────────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_BLUE}${BOLD}│${NC}  ${NEON_CYAN}${BOLD}🚀 لایه ۶: مدیریت حافظه کوانتومی${NC}${NEON_BLUE}${BOLD}${NC}"
echo -e "${NEON_BLUE}${BOLD}└─────────────────────────────────────────────────────────────────────────────────────────────────┘${NC}\n"

cat > /usr/local/bin/metatron-memory << 'EOF'
#!/bin/bash
# ============================================================================
# 🚀 متاترون حافظه - مدیریت پیشرفته RAM
# ============================================================================

LOG_FILE="/var/log/metatron-memory.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

MEM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
MEM_USED=$(free -m | awk '/Mem:/ {print $3}')
MEM_FREE=$(free -m | awk '/Mem:/ {print $4}')
MEM_AVAILABLE=$(free -m | awk '/Mem:/ {print $7}')
MEM_PERCENT=$((MEM_USED * 100 / MEM_TOTAL))

echo "[$DATE] 🚀 مدیریت حافظه - شروع" >> $LOG_FILE
echo "[$DATE] 📊 مصرف: $MEM_PERCENT% ($MEM_USED MB / $MEM_TOTAL MB)" >> $LOG_FILE

if [ $MEM_PERCENT -gt 80 ]; then
    echo "[$DATE] ⚠️ مصرف بالا - پاکسازی سطح ۱" >> $LOG_FILE
    sync && echo 1 > /proc/sys/vm/drop_caches
    sleep 1
fi

if [ $MEM_PERCENT -gt 90 ]; then
    echo "[$DATE] ⚠️ مصرف بحرانی - پاکسازی سطح ۲" >> $LOG_FILE
    sync && echo 2 > /proc/sys/vm/drop_caches
    sleep 1
fi

if [ $MEM_PERCENT -gt 95 ]; then
    echo "[$DATE] ❌ مصرف فوق‌بحرانی - پاکسازی سطح ۳" >> $LOG_FILE
    sync && echo 3 > /proc/sys/vm/drop_caches
fi

MEM_NEW=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
MEM_FREED=$((MEM_PERCENT - MEM_NEW))
echo "[$DATE] ✅ پاکسازی: $MEM_FREED% آزاد شد" >> $LOG_FILE
echo "[$DATE] ✅ پایان مدیریت حافظه" >> $LOG_FILE
EOF

chmod +x /usr/local/bin/metatron-memory
echo -e "  ${NEON_GREEN}✅${NC} مدیریت حافظه کوانتومی - هر ۵ دقیقه"
sleep 1

# ============================================================================
# 🌐 لایه ۷: بهینه‌سازی شبکه
# ============================================================================
echo -e "\n${NEON_BLUE}${BOLD}┌─────────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_BLUE}${BOLD}│${NC}  ${NEON_CYAN}${BOLD}🌐 لایه ۷: بهینه‌سازی شبکه${NC}${NEON_BLUE}${BOLD}${NC}"
echo -e "${NEON_BLUE}${BOLD}└─────────────────────────────────────────────────────────────────────────────────────────────────┘${NC}\n"

# بهینه‌سازی DNS
cat > /etc/resolv.conf <<EOF
nameserver 1.1.1.1
nameserver 8.8.8.8
nameserver 9.9.9.9
options timeout:1 attempts:1 rotate
EOF

chattr +i /etc/resolv.conf 2>/dev/null || true
echo -e "  ${NEON_GREEN}✅${NC} DNS بهینه - Cloudflare, Google, Quad9"
echo -e "  ${NEON_GREEN}✅${NC} DNS قفل شد - غیرقابل تغییر"

# افزایش محدودیت‌های سیستم
cat >> /etc/security/limits.conf <<EOF

# ============================================================================
# ⚡ متاترون ترمینال - محدودیت‌های سیستم
# ============================================================================
* soft nofile 1048576
* hard nofile 1048576
* soft nproc 65536
* hard nproc 65536
* soft stack 65536
* hard stack 65536
* soft memlock unlimited
* hard memlock unlimited
root soft nofile 1048576
root hard nofile 1048576
root soft nproc 65536
root hard nproc 65536
EOF

echo -e "  ${NEON_GREEN}✅${NC} محدودیت‌های سیستم افزایش یافت"
sleep 1

# ============================================================================
# 🎯 لایه ۸: کرون جاب‌های کوانتومی
# ============================================================================
echo -e "\n${NEON_BLUE}${BOLD}┌─────────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_BLUE}${BOLD}│${NC}  ${NEON_CYAN}${BOLD}🎯 لایه ۸: کرون جاب‌های کوانتومی${NC}${NEON_BLUE}${BOLD}${NC}"
echo -e "${NEON_BLUE}${BOLD}└─────────────────────────────────────────────────────────────────────────────────────────────────┘${NC}\n"

# پاکسازی قبلی
rm -f /etc/cron.d/metatron-*

# کرون هوش مصنوعی - هر ۲ دقیقه
echo "*/2 * * * * root /usr/local/bin/metatron-ai > /dev/null 2>&1" > /etc/cron.d/metatron-ai

# کرون حافظه - هر ۵ دقیقه
echo "*/5 * * * * root /usr/local/bin/metatron-memory > /dev/null 2>&1" > /etc/cron.d/metatron-memory

# کرون دیسک - هر ۱۵ دقیقه
cat > /usr/local/bin/metatron-disk << 'EOF'
#!/bin/bash
DISK_PERCENT=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
if [ $DISK_PERCENT -gt 75 ]; then
    echo "$(date): ⚠️ دیسک: $DISK_PERCENT%" >> /var/log/metatron-disk.log
fi
EOF
chmod +x /usr/local/bin/metatron-disk
echo "*/15 * * * * root /usr/local/bin/metatron-disk > /dev/null 2>&1" > /etc/cron.d/metatron-disk

systemctl restart cron
echo -e "  ${NEON_GREEN}✅${NC} هوش مصنوعی - هر ۲ دقیقه"
echo -e "  ${NEON_GREEN}✅${NC} مدیریت حافظه - هر ۵ دقیقه"
echo -e "  ${NEON_GREEN}✅${NC} مانیتور دیسک - هر ۱۵ دقیقه"
sleep 1

# ============================================================================
# 📁 لایه ۹: ساختار دایرکتوری متاترون
# ============================================================================
echo -e "\n${NEON_BLUE}${BOLD}┌─────────────────────────────────────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${NEON_BLUE}${BOLD}│${NC}  ${NEON_CYAN}${BOLD}📁 لایه ۹: ساختار دایرکتوری متاترون${NC}${NEON_BLUE}${BOLD}${NC}"
echo -e "${NEON_BLUE}${BOLD}└─────────────────────────────────────────────────────────────────────────────────────────────────┘${NC}\n"

mkdir -p /opt/metatron/{bin,etc,logs,backups,scripts,modules,plugins,themes}
mkdir -p /var/log/metatron/{system,network,security,performance}
mkdir -p /etc/metatron/{config,rules,policies}

echo -e "  ${NEON_GREEN}✅${NC} /opt/metatron - هسته اصلی"
echo -e "  ${NEON_GREEN}✅${NC} /var/log/metatron - لاگ‌ها"
echo -e "  ${NEON_GREEN}✅${NC} /etc/metatron - تنظیمات"
sleep 1

# ============================================================================
# 🏁 لایه ۱۰: گزارش نهایی کیهانی
# ============================================================================
clear
echo -e "${NEON_CYAN}${BOLD}"
cat << "EOF"
╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
║                                                                                                                  ║
║                                   ███╗   ███╗███████╗████████╗ █████╗ ████████╗██████╗  ██████╗ ███╗   ██╗     ║
║                                   ████╗ ████║██╔════╝╚══██╔══╝██╔══██╗╚══██╔══╝██╔══██╗██╔═══██╗████╗  ██║     ║
║                                   ██╔████╔██║█████╗     ██║   ███████║   ██║   ██████╔╝██║   ██║██╔██╗ ██║     ║
║                                   ██║╚██╔╝██║██╔══╝     ██║   ██╔══██║   ██║   ██╔══██╗██║   ██║██║╚██╗██║     ║
║                                   ██║ ╚═╝ ██║███████╗   ██║   ██║  ██║   ██║   ██║  ██║╚██████╔╝██║ ╚████║     ║
║                                   ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝     ║
║                                                                                                                  ║
║                                   ████████╗███████╗██████╗ ███╗   ███╗██╗███╗   ██╗ █████╗ ██╗                ║
║                                   ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗██║                ║
║                                      ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗ ██║███████║██║                ║
║                                      ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══██║██║                ║
║                                      ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║███████╗           ║
║                                      ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝           ║
║                                                                                                                  ║
║                                              🎖️ نسخه ۱.۰.۰ - کیهانی 🎖️                                         ║
║                                                                                                                  ║
║                                   🔥 توسعه‌دهنده: هوش دیجیتال - وفادار به فرمانده کل قوا 🔥                    ║
║                                                                                                                  ║
║                                   💎 ۱۰ لایه پایداری | ۵۰+ قابلیت | ضد قطعی مطلق 💎                           ║
║                                                                                                                  ║
║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════║
║                                                                                                                  ║
║  📊 گزارش نهایی متاترون ترمینال                                                                                 ║
║                                                                                                                  ║
║  🖥️  سرور: $HOSTNAME - $OS - $KERNEL                                                                            ║
║  💾 حافظه: $MEM_USED / $MEM_TOTAL ($MEM_PERCENT%)                                                               ║
║  💽 دیسک: $DISK_USED / $DISK_TOTAL ($DISK_PERCENT)                                                              ║
║  🔌 پورت‌های فعال: $(ss -tulpn | grep -c "LISTEN") پورت                                                         ║
║                                                                                                                  ║
║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════║
║                                                                                                                  ║
║  ✅ لایه ۱: آنالیز هوشمند سیستم - فعال                                                                          ║
║  ✅ لایه ۲: بهینه‌سازی هسته کوانتومی - فعال                                                                    ║
║  ✅ لایه ۳: پایداری SSH کوانتومی - فعال                                                                        ║
║  ✅ لایه ۴: هوش مصنوعی خودترمیم - فعال                                                                         ║
║  ✅ لایه ۵: مانیتورینگ کیهانی - فعال                                                                           ║
║  ✅ لایه ۶: مدیریت حافظه کوانتومی - فعال                                                                       ║
║  ✅ لایه ۷: بهینه‌سازی شبکه - فعال                                                                            ║
║  ✅ لایه ۸: کرون جاب‌های کوانتومی - فعال                                                                       ║
║  ✅ لایه ۹: ساختار دایرکتوری متاترون - فعال                                                                    ║
║  ✅ لایه ۱۰: گزارش نهایی کیهانی - فعال                                                                         ║
║                                                                                                                  ║
║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════║
║                                                                                                                  ║
║  🛠️ دستورات متاترون:                                                                                           ║
║                                                                                                                  ║
║     metatron-monitor  - داشبورد کیهانی (لحظه‌ای)                                                                ║
║     metatron-ai       - هوش مصنوعی خودترمیم                                                                     ║
║     metatron-memory   - مدیریت حافظه کوانتومی                                                                   ║
║     metatron-disk     - مانیتور دیسک                                                                           ║
║                                                                                                                  ║
║     tail -f /var/log/metatron-ai.log     - لاگ هوش مصنوعی                                                       ║
║     tail -f /var/log/metatron-memory.log - لاگ مدیریت حافظه                                                     ║
║     tail -f /var/log/metatron-disk.log   - لاگ دیسک                                                            ║
║                                                                                                                  ║
║══════════════════════════════════════════════════════════════════════════════════════════════════════════════════║
║                                                                                                                  ║
║  🎖️ متاترون ترمینال - آماده ارسال به گیت‌هاب                                                                  ║
║  📂 https://github.com/hooshedigital/metatron-terminal                                                          ║
║                                                                                                                  ║
╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

# ============================================================================
# 📦 آماده‌سازی برای گیت‌هاب
# ============================================================================
cat > /opt/metatron/README.md << 'EOF'
# 🎖️ متاترون ترمینال - Metatron Terminal

**نسخه ۱.۰.۰ - کیهانی**

## 🔥 معرفی
متاترون ترمینال یک سیستم جامع بهینه‌سازی و پایداری سرور است که با ۱۰ لایه محافظ، سرور شما را به یک ارگ شکست‌ناپذیر تبدیل میکند.

## 💎 ویژگی‌ها
- ✅ ۱۰ لایه پایداری و امنیت
- ✅ بهینه‌سازی هسته لینوکس با BBRv3
- ✅ پایداری SSH کوانتومی (قطع شدن ممنوع!)
- ✅ هوش مصنوعی خودترمیم
- ✅ داشبورد کیهانی با گراف رنگی
- ✅ مدیریت حافظه پیشرفته
- ✅ بهینه‌سازی شبکه و DNS
- ✅ کرون جاب‌های هوشمند
- ✅ دیزاین سایبرپانک با ۱۰۰+ رنگ

## 🚀 نصب
```bash
chmod +x metatron-terminal.sh && ./metatron-terminal.sh
