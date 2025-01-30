# **Networking Basics**

- OSI & TCP/IP Models
- Common Protocols & Ports

---

## **OSI & TCP/IP Models**
### OSI Model (7 Layers)
The OSI (Open Systems Interconnection) model has seven layers, each with a specific function in networking:

| Layer  | Example |
|--------|---------|
| **Application** (Layer 7) | HTTP, SMTP, DNS |
| **Presentation** (Layer 6) | SSL/TLS, SSH |
| **Session** (Layer 5) | Zoom, Skype, API's |
| **Transport** (Layer 4) | TCP, UDP |
| **Network** (Layer 3) | IP Routing |
| **Data Link** (Layer 2) | MAC, LLC, Ethernet |
| **Physical**   (Layer 1)| Cables, Wi-Fi, Fiber |

#### OSI Model Explained:
- **Application Layer**: Interfaces with applications like web browsers and email clients, instant messaging, file transfer, browser.

- **Presentation Layer**: Handles data encryption, decryption, compression, and format translation through network.

- **Session Layer**: Manages communication sessions between devices with a specific begning to end

- **Transport Layer**: It deals with sending and delivering data from one device to another and ensures data is transmitted accurately and reliably.

- **Network Layer**: Routes data packets between different networks.

- **Data Link Layer**: Manages how data frames are transmitted over a network.

- **Physical Layer**: Deals with the actual hardware and transmission medium by physical connection between device in a network.

### TCP/IP Model (4 Layers)
The TCP/IP model is a simplified, real-world model used for modern networking:

| Layer  | Example |
|--------|---------|
| **Application** | HTTP, FTP |
| **Transport** | TCP, UDP |
| **Internet** | IP, ICMP |
| **Network Access** | Ethernet, Wi-Fi |

#### TCP/IP Model Explained:
- **Application Layer**: Combines OSI’s top three layers, handling application protocols like HTTP and FTP.
- **Transport Layer**: Manages data flow and error correction (TCP for reliability, UDP for speed).
- **Internet Layer**: Defines IP addressing and routes data across networks.
- **Network Access Layer**: Manages physical data transmission over wired and wireless media.

---

## **Common Protocols & Ports**
| Protocol | Purpose | Port |
|----------|---------|------|
| **HTTP** | Web Traffic | 80 |
| **HTTPS** | Secure Web | 443 |
| **SSH** | Remote Access | 22 |
| **FTP** | File Transfer | 21 |
| **DNS** | Name Resolution | 53 |
| **SMTP** | Email Sending | 25 |
| **IMAP/POP3** | Email Retrieval | 143 / 110 |
| **DHCP** | Assign IPs | 67 / 68 |
| **SNMP** | Network Mgmt | 161 |
| **Telnet** | Remote Login | 23 |

---
 
