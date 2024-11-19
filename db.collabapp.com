$TTL    604800
@       IN      SOA     collabapp.com. root.collabapp.com. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL

; Nameservers
@       IN      NS      ns.collabapp.com.

; A Record for collabapp.com
collabapp.com.  IN      A       172.18.114.46

; A Record for the nameserver
ns              IN      A       172.18.114.46
