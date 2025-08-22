# 🖥️ RAM Monitor Script

This is a simple **Bash script** that monitors system RAM usage and logs it to a file.  
It helps in keeping track of memory consumption and alerts when usage crosses a specified threshold.

---

## 📌 Use Case
- Track **RAM usage** on Linux systems
- Detect **high memory usage** conditions
- Log usage data for **system analysis**
- Acts as a **lightweight monitoring tool** (no need for heavy software)

---

## 📂 Project Structure
├── ram-monitor-script.sh  # Main script\
└── log_ram_usage.log  # Log file (auto-created when script runs)

---

## 🚀 How to Use
1. Clone or download this repository.
2. Make the script executable:
   ```bash
   chmod +x ram_monitor.sh
3. Run it:
   ```bash
   ./ram_monitor.sh

---

## 📢 Possible Enhancements
- Send msg or mail to notify when RAM usage is above threshold.
- Use **Cron Jobs** for automation
  ```bash
  */5 * * * * /path/to/ram-monitor-script.sh
---

## 📜 License


Free to use and modify.
