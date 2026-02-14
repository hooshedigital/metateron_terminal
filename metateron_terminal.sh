#!/bin/bash

# ============================================================================
# ╔══════════════════════════════════════════════════════════════════════════╗
# ║                     متاترون ترمینال - نسخه پایدار                      ║
# ║                     Metatron Terminal - Stable Edition                  ║
# ║                         نسخه ۱.۳.۰ - ۲۰۲۶                               ║
# ║              توسعه‌دهنده: هوش دیجیتال - وفادار به فرمانده              ║
# ╚══════════════════════════════════════════════════════════════════════════╝
# ============================================================================

set +e  # ادامه حتی با خطا

# ============================================================================
# 🎨 پالت رنگی
# ============================================================================
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; BLUE='\033[0;34m'
CYAN='\033[0;36m'; PURPLE='\033[0;35m'; NC='\033[0m'; BOLD='\033[1m'
DIM='\033[2m'; NEON_GREEN='\033[38;5;82m'; NEON_RED='\033[38;5;196m'
NEON_YELLOW='\033[38;5;226m'; NEON_CYAN='\033[38;5;51m'; NEON_PURPLE='\033[38;5;129m'

# ============================================================================
# 📁 متغیرهای اصلی
# ============================================================================
SCRIPT_VERSION="1.3.0"
SCRIPT_NAME="متاترون ترمینال"
INSTALL_FLAG="/etc/metatron/layers_installed"
LOG_DIR="/var/log/metatron"
BIN_DIR="/usr/local/bin"
CONFIG_DIR="/etc/metatron"

# ============================================================================
# 🖥️ توابع کمکی
# ============================================================================
print_box() { echo -e "\n${NEON_CYAN}${BOLD}┌─────────────────────────────────────────────────────────────────────┐${NC}\n${NEON_CYAN}│${NC} $1\n${NEON_CYAN}└─────────────────────────────────────────────────────────────────────┘${NC}\n"; }
print_success() { echo -e " ${NEON_GREEN}✅${NC} $1"; }
print_error() { echo -e " ${NEON_RED}❌${NC} $1"; }
print_warning() { echo -e " ${NEON_YELLOW}⚠️${NC} $1"; }
print_info() { echo -e " ${NEON_CYAN}ℹ️${NC} $1"; }

show_header() {
    clear
    echo -e "${NEON_CYAN}${BOLD}"
    echo "╔══════════════════════════════════════════════════════════════════════════╗"
    echo "║                    متاترون ترمینال - نسخه پایدار                      ║"
    echo "║                         Metatron Terminal                                ║"
    echo "║                         نسخه ${SCRIPT_VERSION} - ۲۰۲۶                    ║"
    echo "╚══════════════════════════════════════════════════════════════════════════╝"
    echo -e "${NC}"
    echo -e "${NEON_YELLOW}${BOLD}   📅 تاریخ: $(date) | 🖥️ سرور: $(hostname)${NC}\n"
}

# ============================================================================
# 📊 لایه ۱: آنالیز سیستم (رفع خطای محاسباتی)
# ============================================================================
layer1_system_analysis() {
    print_box "📊 لایه ۱: آنالیز هوشمند سیستم"
    
    HOSTNAME=$(hostname); KERNEL=$(uname -r); OS=$(grep PRETTY_NAME /etc/os-release 2>/dev/null | cut -d'"' -f2)
    [ -z "$OS" ] && OS="Ubuntu 24.04"; UPTIME=$(uptime -p | sed 's/up //')
    CPU_MODEL=$(lscpu 2>/dev/null | grep "Model name" | cut -d':' -f2 | xargs | cut -c1-50)
    [ -z "$CPU_MODEL" ] && CPU_MODEL="نامشخص"; CPU_CORES=$(nproc)
    MEM_TOTAL=$(free -h 2>/dev/null | awk '/Mem:/ {print $2}'); [ -z "$MEM_TOTAL" ] && MEM_TOTAL="0"
    MEM_USED=$(free -h 2>/dev/null | awk '/Mem:/ {print $3}')
    MEM_PERCENT=$(free 2>/dev/null | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
    [ -z "$MEM_PERCENT" ] && MEM_PERCENT=0
    DISK_TOTAL=$(df -h / 2>/dev/null | awk 'NR==2 {print $2}'); DISK_USED=$(df -h / 2>/dev/null | awk 'NR==2 {print $3}')
    DISK_PERCENT=$(df / 2>/dev/null | awk 'NR==2 {print $5}' | sed 's/%//'); [ -z "$DISK_PERCENT" ] && DISK_PERCENT=0

    echo -e "${NEON_PURPLE}┌─────────────────────────────────────────────────────────────────┐${NC}"
    echo -e "${NEON_PURPLE}│${NC} ${BOLD}🖥️ مشخصات سیستم${NC}${NEON_PURPLE}${NC}"
    echo -e "${NEON_PURPLE}├─────────────────────────────────────────────────────────────────┤${NC}"
    printf "${NEON_PURPLE}│${NC} ${CYAN}%-15s${NC} : ${WHITE}%-45s${NC} ${NEON_PURPLE}│${NC}\n" "نام سرور" "$HOSTNAME"
    printf "${NEON_PURPLE}│${NC} ${CYAN}%-15s${NC} : ${WHITE}%-45s${NC} ${NEON_PURPLE}│${NC}\n" "سیستم عامل" "$OS"
    printf "${NEON_PURPLE}│${NC} ${CYAN}%-15s${NC} : ${WHITE}%-45s${NC} ${NEON_PURPLE}│${NC}\n" "پردازنده" "$CPU_MODEL"
    printf "${NEON_PURPLE}│${NC} ${CYAN}%-15s${NC} : ${WHITE}%-45s${NC} ${NEON_PURPLE}│${NC}\n" "هسته‌ها" "$CPU_CORES هسته"
    echo -e "${NEON_PURPLE}├─────────────────────────────────────────────────────────────────┤${NC}"

    # محاسبه گراف (رفع خطای 2>/dev/null)
    MEM_BARS=$(( (MEM_PERCENT * 30) / 100 ))
    DISK_BARS=$(( (DISK_PERCENT * 30) / 100 ))

    echo -e "${NEON_PURPLE}│${NC} ${YELLOW}💾 رم: ${WHITE}$MEM_USED / $MEM_TOTAL (${MEM_PERCENT}%)${NC}"
    echo -ne "${NEON_PURPLE}│${NC} "
    for i in {1..30}; do [ $i -le $MEM_BARS ] && echo -ne "${NEON_GREEN}█${NC}" || echo -ne "${DIM}█${NC}"; done
    echo -e " ${NEON_PURPLE}│${NC}"

    echo -e "${NEON_PURPLE}│${NC} ${YELLOW}💽 دیسک: ${WHITE}$DISK_USED / $DISK_TOTAL (${DISK_PERCENT}%)${NC}"
    echo -ne "${NEON_PURPLE}│${NC} "
    for i in {1..30}; do [ $i -le $DISK_BARS ] && echo -ne "${NEON_GREEN}█${NC}" || echo -ne "${DIM}█${NC}"; done
    echo -e " ${NEON_PURPLE}│${NC}"
    echo -e "${NEON_PURPLE}└─────────────────────────────────────────────────────────────────┘${NC}\n"
    sleep 1
}

# ============================================================================
# 🔐 لایه ۳: SSH (رفع مشکل سرویس)
# ============================================================================
layer3_ssh_stability() {
    print_box "🔐 لایه ۳: پایداری SSH"
    cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak 2>/dev/null
    
    cat > /etc/ssh/sshd_config <<EOF
Port 22
Protocol 2
PermitRootLogin yes
PubkeyAuthentication yes
PasswordAuthentication yes
ClientAliveInterval 10
ClientAliveCountMax 10
TCPKeepAlive yes
MaxSessions 200
UseDNS no
EOF

    systemctl restart ssh 2>/dev/null || systemctl restart sshd 2>/dev/null
    print_success "SSH پایدار شد"
    sleep 1
}

# ============================================================================
# 🩺 لایه ۴: هوش مصنوعی (رفع مشکل networking)
# ============================================================================
layer4_ai_selfheal() {
    print_box "🩺 لایه ۴: هوش مصنوعی"
    mkdir -p $BIN_DIR $LOG_DIR

    cat > $BIN_DIR/metatron-ai << 'EOF'
#!/bin/bash
LOG_FILE="/var/log/metatron/ai.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')
echo "[$DATE] 🤖 متاترون AI فعال شد" >> $LOG_FILE

# بررسی سرویس‌ها (رفع مشکل networking)
SERVICES=("sshd" "cron" "systemd-networkd")
for SVC in "${SERVICES[@]}"; do
    if systemctl is-active $SVC >/dev/null 2>&1; then
        echo "[$DATE] ✅ $SVC: فعال" >> $LOG_FILE
    else
        echo "[$DATE] ⚠️ $SVC: غیرفعال - تلاش برای راه‌اندازی" >> $LOG_FILE
        systemctl start $SVC 2>/dev/null
    fi
done

# بررسی پورت‌ها
for PORT in 22 80 443 1080 5000; do
    if ss -tulpn 2>/dev/null | grep -q ":$PORT"; then
        echo "[$DATE] ✅ پورت $PORT: فعال" >> $LOG_FILE
    else
        echo "[$DATE] ⚠️ پورت $PORT: بسته" >> $LOG_FILE
    fi
done

echo "[$DATE] ✅ متاترون AI پایان یافت" >> $LOG_FILE
EOF

    chmod +x $BIN_DIR/metatron-ai
    print_success "هوش مصنوعی نصب شد"
    sleep 1
}

# ============================================================================
# 📊 لایه ۵: مانیتورینگ (رفع مشکل EOF)
# ============================================================================
layer5_cosmic_monitor() {
    print_box "📊 لایه ۵: مانیتورینگ"

    cat > $BIN_DIR/metatron-monitor << 'EOF'
#!/bin/bash
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; CYAN='\033[0;36m'
PURPLE='\033[0;35m'; NC='\033[0m'; BOLD='\033[1m'; DIM='\033[2m'
NEON_GREEN='\033[38;5;82m'; NEON_RED='\033[38;5;196m'; NEON_YELLOW='\033[38;5;226m'

clear
echo -e "${CYAN}${BOLD}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}${BOLD}║               📊 داشبورد کیهانی متاترون 📊               ║${NC}"
echo -e "${CYAN}${BOLD}╚══════════════════════════════════════════════════════════════╝${NC}"

# CPU
CPU_USAGE=$(top -bn1 2>/dev/null | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
[ -z "$CPU_USAGE" ] && CPU_USAGE=0
CPU_BARS=$(( (${CPU_USAGE%.*} * 30) / 100 ))
echo -e "\n${PURPLE}┌─────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${PURPLE}│${NC} ${CYAN}${BOLD}🖥️ CPU: ${NEON_YELLOW}${CPU_USAGE}%${NC}"
echo -ne "${PURPLE}│${NC} "
for i in {1..30}; do [ $i -le $CPU_BARS ] && echo -ne "${NEON_GREEN}█${NC}" || echo -ne "${DIM}█${NC}"; done
echo -e " ${PURPLE}│${NC}"

# RAM
MEM_PERCENT=$(free 2>/dev/null | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
[ -z "$MEM_PERCENT" ] && MEM_PERCENT=0
MEM_BARS=$(( (MEM_PERCENT * 30) / 100 ))
echo -e "${PURPLE}│${NC} ${CYAN}${BOLD}💾 RAM: ${NEON_YELLOW}${MEM_PERCENT}%${NC}"
echo -ne "${PURPLE}│${NC} "
for i in {1..30}; do [ $i -le $MEM_BARS ] && echo -ne "${NEON_GREEN}█${NC}" || echo -ne "${DIM}█${NC}"; done
echo -e " ${PURPLE}│${NC}"

# DISK
DISK_PERCENT=$(df / 2>/dev/null | awk 'NR==2 {print $5}' | sed 's/%//')
[ -z "$DISK_PERCENT" ] && DISK_PERCENT=0
DISK_BARS=$(( (DISK_PERCENT * 30) / 100 ))
echo -e "${PURPLE}│${NC} ${CYAN}${BOLD}💽 DISK: ${NEON_YELLOW}${DISK_PERCENT}%${NC}"
echo -ne "${PURPLE}│${NC} "
for i in {1..30}; do [ $i -le $DISK_BARS ] && echo -ne "${NEON_GREEN}█${NC}" || echo -ne "${DIM}█${NC}"; done
echo -e " ${PURPLE}│${NC}"
echo -e "${PURPLE}└─────────────────────────────────────────────────────────────────┘${NC}"

# پورت‌ها
echo -e "\n${PURPLE}┌─────────────────────────────────────────────────────────────────┐${NC}"
echo -e "${PURPLE}│${NC} ${CYAN}${BOLD}🔌 پورت‌های فعال${NC}"
for PORT in 22 80 443 1080 5000; do
    if ss -tulpn 2>/dev/null | grep -q ":$PORT"; then
        echo -e "${PURPLE}│${NC} ${NEON_GREEN}✅${NC} پورت ${NEON_YELLOW}$PORT${NC}"
    fi
done
echo -e "${PURPLE}└─────────────────────────────────────────────────────────────────┘${NC}"
EOF

    chmod +x $BIN_DIR/metatron-monitor
    print_success "مانیتورینگ نصب شد"
    sleep 1
}

# ============================================================================
# 🚀 لایه ۶: مدیریت حافظه
# ============================================================================
layer6_memory_management() {
    print_box "🚀 لایه ۶: مدیریت حافظه"
    cat > $BIN_DIR/metatron-memory << 'EOF'
#!/bin/bash
LOG_FILE="/var/log/metatron/memory.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')
MEM_PERCENT=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
echo "[$DATE] 📊 مصرف رم: $MEM_PERCENT%" >> $LOG_FILE
[ $MEM_PERCENT -gt 85 ] && sync && echo 3 > /proc/sys/vm/drop_caches 2>/dev/null && echo "[$DATE] ✅ پاکسازی شد" >> $LOG_FILE
EOF
    chmod +x $BIN_DIR/metatron-memory
    print_success "مدیریت حافظه نصب شد"
    sleep 1
}

# ============================================================================
# 🎯 لایه ۸: کرون جاب‌ها
# ============================================================================
layer8_cron_jobs() {
    print_box "🎯 لایه ۸: کرون جاب‌ها"
    rm -f /etc/cron.d/metatron-* 2>/dev/null
    echo "*/2 * * * * root $BIN_DIR/metatron-ai >/dev/null 2>&1" > /etc/cron.d/metatron-ai
    echo "*/5 * * * * root $BIN_DIR/metatron-memory >/dev/null 2>&1" > /etc/cron.d/metatron-memory
    systemctl restart cron 2>/dev/null || systemctl restart crond 2>/dev/null
    print_success "کرون جاب‌ها نصب شدند"
    sleep 1
}

# ============================================================================
# 📁 لایه ۹: ساختار دایرکتوری
# ============================================================================
layer9_directory_structure() {
    print_box "📁 لایه ۹: ساختار دایرکتوری"
    mkdir -p $LOG_DIR $CONFIG_DIR /opt/metatron/{bin,logs,backups}
    print_success "ساختار دایرکتوری ایجاد شد"
    sleep 1
}

# ============================================================================
# 🏁 لایه ۱۰: گزارش نهایی
# ============================================================================
layer10_final_report() {
    print_box "🏁 لایه ۱۰: گزارش نهایی"
    mkdir -p $CONFIG_DIR
    date > "$INSTALL_FLAG"
    echo "نسخه $SCRIPT_VERSION" >> "$INSTALL_FLAG"
    
    echo -e "${NEON_GREEN}✅ متاترون ترمینال با موفقیت نصب شد${NC}"
    echo -e "${NEON_CYAN}📌 نسخه: $SCRIPT_VERSION${NC}"
    echo -e "${NEON_CYAN}📅 تاریخ: $(date)${NC}"
    echo -e "\n${NEON_YELLOW}🚀 دستورات قابل استفاده:${NC}"
    echo -e "   metatron-monitor  - نمایش داشبورد"
    echo -e "   metatron-ai       - اجرای هوش مصنوعی"
    echo -e "   metatron-memory   - پاکسازی حافظه"
    sleep 2
}

# ============================================================================
# ✨ اجرای تمام لایه‌ها
# ============================================================================
run_all_layers() {
    print_box "🚀 شروع اجرای تمام ۱۰ لایه"
    layer1_system_analysis
    layer3_ssh_stability
    layer4_ai_selfheal
    layer5_cosmic_monitor
    layer6_memory_management
    layer8_cron_jobs
    layer9_directory_structure
    layer10_final_report
}

# ============================================================================
# 📋 توابع منو
# ============================================================================
simple_monitor() { command -v metatron-monitor &>/dev/null && metatron-monitor || print_warning "ابتدا لایه‌ها را اجرا کن (گزینه ۱)"; }
run_ai() { command -v metatron-ai &>/dev/null && metatron-ai && tail -5 /var/log/metatron/ai.log || print_warning "ابتدا لایه‌ها را اجرا کن"; }
run_memory() { command -v metatron-memory &>/dev/null && metatron-memory && tail -5 /var/log/metatron/memory.log || print_warning "ابتدا لایه‌ها را اجرا کن"; }
show_logs() { echo -e "\n${CYAN}آخرین لاگ‌ها:${NC}" && tail -5 /var/log/metatron/ai.log 2>/dev/null || echo "لاگی موجود نیست"; }
show_help() { echo -e "\n${CYAN}📚 راهنما:${NC}\nmetatron-monitor\nmetatron-ai\nmetatron-memory\n"; }

# ============================================================================
# 📋 منوی اصلی
# ============================================================================
show_menu() {
    show_header
    echo -e "${NEON_PURPLE}${BOLD}   ╔══════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${NEON_PURPLE}${BOLD}   ║  🔥 منوی اصلی متاترون ترمینال - نسخه ${SCRIPT_VERSION}      ║${NC}"
    echo -e "${NEON_PURPLE}${BOLD}   ╠══════════════════════════════════════════════════════════════╣${NC}"
    echo -e "${NEON_PURPLE}${BOLD}   ║  ${WHITE}۱.${NC} اجرای تمام ۱۰ لایه (پیکربندی کامل)               ${NEON_PURPLE}║${NC}"
    echo -e "${NEON_PURPLE}${BOLD}   ║  ${WHITE}۲.${NC} نمایش داشبورد مانیتورینگ                          ${NEON_PURPLE}║${NC}"
    echo -e "${NEON_PURPLE}${BOLD}   ║  ${WHITE}۳.${NC} اجرای هوش مصنوعی خودترمیم                        ${NEON_PURPLE}║${NC}"
    echo -e "${NEON_PURPLE}${BOLD}   ║  ${WHITE}۴.${NC} پاکسازی دستی حافظه                              ${NEON_PURPLE}║${NC}"
    echo -e "${NEON_PURPLE}${BOLD}   ║  ${WHITE}۵.${NC} مشاهده لاگ‌ها                                    ${NEON_PURPLE}║${NC}"
    echo -e "${NEON_PURPLE}${BOLD}   ║  ${WHITE}۶.${NC} راهنما                                         ${NEON_PURPLE}║${NC}"
    echo -e "${NEON_PURPLE}${BOLD}   ║  ${WHITE}۷.${NC} خروج                                          ${NEON_PURPLE}║${NC}"
    echo -e "${NEON_PURPLE}${BOLD}   ╚══════════════════════════════════════════════════════════════╝${NC}\n"
    
    read -p "👉 گزینه را وارد کن (۱-۷): " CHOICE
    case $CHOICE in
        1) run_all_layers ;;
        2) simple_monitor ;;
        3) run_ai ;;
        4) run_memory ;;
        5) show_logs ;;
        6) show_help ;;
        7) print_success "خروج" && exit 0 ;;
        *) print_error "عدد ۱ تا ۷ وارد کن" && sleep 2 ;;
    esac
    echo "" && read -p "🔁 Enter بزن..." && show_menu
}

# ============================================================================
# 🚀 شروع
# ============================================================================
show_menu
