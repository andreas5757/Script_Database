use sql_mgp_report;

DROP EVENT IF EXISTS report_sceduler;

CREATE EVENT report_sceduler
ON SCHEDULE
EVERY 5 minute
DO
call BackupDB();

            
            
            
            
            
            