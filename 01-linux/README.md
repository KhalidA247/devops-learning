# OverTheWire Bandit — Learning Journal

## About
This documents my progress through the OverTheWire Bandit wargame 
as part of my journey into DevOps/SRE engineering. Each level taught 
me practical Linux, networking, and security skills that directly apply 
to real world infrastructure work.

**Current progress:** Levels 0 → 20 complete
**Key skills gained:** SSH, networking, file permissions, 
SSL/TLS, port scanning, privilege escalation.

A personal log of challenges, commands, and concepts learned working through the Bandit wargame.

---

| Level | Challenge | Command / Solution | Explanation |
|-------|-----------|-------------------|-------------|
| 0 → 1 | Log into the game server via SSH | `ssh bandit0@bandit.labs.overthewire.org -p 2220` | SSH (Secure Shell) lets you remotely connect to another machine. `-p` specifies the port number. |
| 1 → 2 | Read a file named `-` (dash) | `cat ./-` | Files starting with `-` are mistaken for flags. Prefix with `./` to tell the shell it's a path, not an option. |
| 2 → 3 | Read a file with spaces in the filename | `cat "spaces in this filename"` | Wrap filenames with spaces in quotes, or escape each space with a backslash `\ `. |
| 3 → 4 | Find a hidden file inside a directory | `ls -la inhere/` | `-a` flag shows hidden files (those starting with `.`) that `ls` normally skips. |
| 4 → 5 | Find the only human-readable file in a directory | `file inhere/-file0*` | The `file` command identifies file types. Human-readable files are listed as ASCII text. |
| 5 → 6 | Find a file with specific properties (size, permissions) | `find inhere/ -size 1033c -not -executable` | `find` searches by attributes. `-size 1033c` means 1033 bytes, `-not -executable` filters out executable files. |
| 6 → 7 | Find a file owned by a specific user and group anywhere on the server | `find / -user bandit7 -group bandit6 -size 33c 2>/dev/null` | `2>/dev/null` silences permission errors so only valid results are shown. |
| 7 → 8 | Find the password next to the word "millionth" in a large file | `grep millionth data.txt` | `grep` searches for a pattern inside a file and returns matching lines. |
| 8 → 9 | Find the one line that appears only once in a file | `sort data.txt \| uniq -u` | `sort` orders lines so duplicates are adjacent, then `uniq -u` filters to lines that appear exactly once. |
| 9 → 10 | Find a human-readable string preceded by `=` signs | `strings data.txt \| grep ===` | `strings` extracts readable text from binary files. Piped to `grep` to find the relevant line. |
| 10 → 11 | Decode a base64 encoded file | `base64 -d data.txt` | Base64 is a way of encoding binary data as text. `-d` decodes it back to the original. |
| 11 → 12 | Decode a ROT13 encoded file | `cat data.txt \| tr 'A-Za-z' 'N-ZA-Mn-za-m'` | ROT13 rotates letters by 13 places. `tr` translates characters using a mapping — the same command both encodes and decodes ROT13. |
| 12 → 13 | Decompress a file that has been compressed multiple times | `file data`, `mv data data.gz`, `gzip -d data.gz`, `bzip2 -d`, `tar -xf` (repeated) | Use `file` to identify the compression format each time, rename with the correct extension, then decompress. Repeat until you reach plain text. |
| 13 → 14 | Use a private SSH key to log in instead of a password | `ssh -i sshkey.private bandit14@localhost -p 2220` | `-i` tells SSH to use a private key file for authentication instead of a password. |
| 14 → 15 | Submit the current password to a port on localhost | `nc localhost 30000` | `nc` (netcat) opens a raw TCP connection to a host and port. Once connected, type the password and hit Enter to receive the next one. |
| 15 → 16 | Submit the password over an SSL encrypted connection | `openssl s_client -connect localhost:30001` | `openssl s_client` connects like netcat but over SSL/TLS encryption. The wall of certificate text is normal — wait for it then paste the password. |
| 16 → 17 | Find the one port in a range that speaks SSL and returns credentials | `nmap -p 31000-32000 localhost` then `openssl s_client -connect localhost:[port] -ign_eof` | `nmap` scans a port range to find open ports. `-ign_eof` prevents the connection closing when the server sends a KEYUPDATE signal. The correct port returns an RSA private key instead of echoing your input. |
| 17 → 18 | Find the one line that changed between two password files | `diff passwords.old passwords.new` | `diff` compares two files line by line. `<` marks lines from the first file, `>` from the second. The new password is the line only present in `passwords.new`. |
| 18 → 19 | Read a file when `.bashrc` logs you out on login | `ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme` | SSH can run a single command remotely without opening an interactive shell. By appending the command, `.bashrc` never gets a chance to kick you out. |
| 19 → 20 | Use a setuid binary to read a file you don't have permission to access | `./bandit20-do cat /etc/bandit_pass/bandit20` | A setuid binary runs as its owner (bandit20) regardless of who executes it. This temporarily elevates your privileges — the same concept behind `sudo`. The `s` in `rws` permissions and its highlighted colour in `ls` indicate the setuid bit is set. |

---

## Key Concepts Learned

- **SSH** — remote login, key-based auth, running remote commands inline
- **File permissions** — read/write/execute, ownership, setuid bit
- **Networking** — TCP connections with `nc`, SSL with `openssl`, port scanning with `nmap`
- **Text processing** — `grep`, `sort`, `uniq`, `strings`, `diff`, `tr`
- **Compression** — identifying and decompressing `gzip`, `bzip2`, `tar` formats
- **Encoding** — base64 decoding, ROT13 translation
- **Privilege escalation** — understanding how setuid binaries work and why they matter in security

---

*Completed as part of my linux module at CoderCo.