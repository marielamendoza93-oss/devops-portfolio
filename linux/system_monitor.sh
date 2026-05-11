
#!/bin/bash

LOG_FILE="system_report.log"

echo "===== SYSTEM MONITOR REPORT =====" | tee -a $LOG_FILE
echo "Date: $(date)" | tee -a $LOG_FILE
echo "" | tee -a $LOG_FILE

echo "CPU Usage:" | tee -a $LOG_FILE
top -bn1 | grep "Cpu(s)" | tee -a $LOG_FILE

echo "" | tee -a $LOG_FILE

echo "Memory Usage:" | tee -a $LOG_FILE
free -h | tee -a $LOG_FILE

echo "" | tee -a $LOG_FILE

echo "Disk Usage:" | tee -a $LOG_FILE
df -h | tee -a $LOG_FILE

echo "" | tee -a $LOG_FILE

echo "System Uptime:" | tee -a $LOG_FILE
uptime | tee -a $LOG_FILE

echo "" | tee -a $LOG_FILE
echo "===== END REPORT =====" | tee -a $LOG_FILE