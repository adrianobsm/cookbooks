# DHCP

## With isc-dchpd

```
This install of dhcpd expects config files to be in /usr/local/etc.
All state files (leases and pids) are stored in /usr/local/var/dhcpd.

Dhcpd needs to run as root since it listens on privileged ports.

There are two plists because a single dhcpd process may do either
DHCPv4 or DHCPv6 but not both. Use one or both as needed.

Note that you must create the appropriate config files before starting
the services or dhcpd will refuse to run.
  DHCPv4: /usr/local/etc/dhcpd.conf
  DHCPv6: /usr/local/etc/dhcpd6.conf

Sample config files may be found in /usr/local/etc.

To have launchd start isc-dhcp at startup:
  sudo cp -fv /usr/local/opt/isc-dhcp/*.plist /Library/LaunchDaemons
  sudo chown root /Library/LaunchDaemons/homebrew.mxcl.isc-dhcp.plist
Then to load isc-dhcp now:
  sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.isc-dhcp.plist
```

```sh
brew install isc-dhcp
```

```sh
sudo vim /usr/local/etc/dhcpd.conf
```

```conf
option domain-name-servers 8.8.8.8;

default-lease-time 600;
max-lease-time 7200;

subnet 192.168.33.0 netmask 255.255.255.0 {
  range 192.168.33.150 192.168.33.200;
}
```

```sh
sudo /usr/local/sbin/dhcpd -f -d -cf /usr/local/etc/dhcpd.conf
```

## With built-in bootpd (OS X Server)

```sh
sudo vim /etc/bootpd.plist
```

```plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>bootp_enabled</key>
    <false/>
    <key>detect_other_dhcp_server</key>
    <integer>1</integer>
    <key>dhcp_enabled</key>
    <array>
        <string>en0</string>
    </array>
    <key>reply_threshold_seconds</key>
    <integer>0</integer>
    <key>Subnets</key>
    <array>
        <dict>
            <key>allocate</key>
            <true/>
            <key>lease_max</key>
            <integer>86400</integer>
            <key>lease_min</key>
            <integer>86400</integer>
            <key>name</key>
            <string>192.168.33</string>
            <key>net_address</key>
            <string>192.168.33.0</string>
            <key>net_mask</key>
            <string>255.255.255.0</string>
            <key>net_range</key>
            <array>
                <string>192.168.33.2</string>
                <string>192.168.33.254</string>
            </array>
        </dict>
    </array>
</dict>
</plist>
```

```sh
sudo vim /etc/bootptab
```

```ini
%%
# machine entries have the following format:
#
# hostname      hwtype  hwaddr              ipaddr          bootfile
cliente1         1       00:01:02:03:04:05   192.168.33.20
cliente2         1       00:a0:b2:ef:ff:0a   192.168.33.21
```

```sh
sudo /bin/launchctl load -w /System/Library/LaunchDaemons/bootps.plist
```

```sh
sudo /bin/launchctl unload -w /System/Library/LaunchDaemons/bootps.plist
```
