# Extract Nmap Ports

Filter open ports from an Nmap "grepable" output file and copy the resulting port list to the clipboard.

---

### Requirements

* [xsel](http://www.kfish.org/software/xsel/)

```
apt-get install xsel
```

---

### Use

Generate a grepable Nmap output file and pass it to the script:

```
nmap 10.129.159.114 -oG Output

# Nmap 7.94SVN scan initiated Sat Oct 11 20:54:03 2025 as: nmap -oG Output 10.129.159.114
# Ports scanned: TCP(65535;1-65535) UDP(0;) SCTP(0;) PROTOCOLS(0;)
Host: 10.129.159.114 ()	Status: Up
Host: 10.129.159.114 ()	Ports: 53/open/tcp//domain///, 80/open/tcp//http///, 88/open/tcp//kerberos-sec///, 135/open/tcp//msrpc///, 139/open/tcp//netbios-ssn///, 389/open/tcp//ldap///, 443/open/tcp//https///, 445/open/tcp//microsoft-ds///, 464/open/tcp//kpasswd5///, 593/open/tcp//http-rpc-epmap///, 636/open/tcp//ldapssl///, 3268/open/tcp//globalcatLDAP///, 3269/open/tcp//globalcatLDAPssl///, 5986/open/tcp//wsmans///, 9389/open/tcp//adws///, 49664/open/tcp/////, 49667/open/tcp/////, 62675/open/tcp/////, 62681/open/tcp/////, 63438/open/tcp/////, 64828/open/tcp/////, 64843/open/tcp/////	Ignored State: filtered (65513)
# Nmap done at Sat Oct 11 20:54:45 2025 -- 1 IP address (1 host up) scanned in 41.71 seconds
```

```
./extract_ports.sh Output

[+] Extracting information...
	[+] IP Address: 10.129.159.114
	[+] Open ports: 53,80,88,135,139,389,443,445,464,593,636,3268,3269,5986,9389,49664,49667,62675,62681,63438,64828,64843
[*] Ports copied to clipboard successfully
```

