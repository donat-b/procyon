## Procyon overlay
Personal overlay for Gentoo GNU/Linux.

Contains experimental ebuilds and more recent versions of packages from the
main repository I'm interested in.

Use at your own risk.

## Installing

Install layman, if you didn't already:
`emerge -a layman`

Add the overlay:
`layman -a procyon`

## Licence

GNU General Public License v2

## Atoms

#### app-misc/tmuxinator [0.6.11]
Tmux session manager.

https://github.com/tmuxinator/tmuxinator


#### app-misc/vdmfec
Vandermonde Forward Error Correction
VDMFEC's primary application is intended to be in recovering data from
unreliable media such as diskettes. With appropriate parameters, files may be
recovered even with many read errors.

http://freecode.com/projects/vdmfec


#### app-text/base91 [0.6.0]
basE91 is an advanced method for encoding binary data as ASCII characters. It
is similar to UUencode or base64, but is more efficient. The overhead produced
by basE91 depends on the input data. It amounts at most to 23% (versus 33% for
base64) and can range down to 14%, which typically occurs on 0-byte blocks.

http://base91.sourceforge.net


#### app-portage/layman [2.3.0-r2]
Gentoo overlay manager that allows to integrate experimental software packages
into the main distribution. It can also be used as a manager for version
control repositories.

_Integrated the patch that fixes enable/disable function._

https://github.com/gentoo/layman


#### net-analyzer/scapy [2.3.2]
Scapy is a powerful Python-based interactive packet manipulation program and library.

It is able to forge or decode packets of a wide number of protocols, send them on the wire, capture them, match requests and replies, and much more.

http://www.secdev.org/projects/scapy/


#### net-mail/trysterobiff
Trysterobiff is a cross-plattform non-polling IMAP new-mail systray notifier.
Instead of polling it uses the IDLE extension of IMAP. With the IDLE extension
an IMAP server immediately sends mailbox status updates to the client. Using
this mechanism you really get notified of new mail as fast as possible.

https://bitbucket.org/gsauthof/trysterobiff/overview


#### net-fs/btfs [2.8]
Mount any .torrent file or magnet link and then use it as any read-only directory in your file tree.

https://github.com/johang/btfs


#### net-misc/cortex
An ncurses application to keep track and browse reddit article list.

https://github.com/GGLucas/cortex


#### sys-fs/lvm2 [2.02.136-r2]
User-land utilities for LVM2 (device-mapper) software.
Added an init.d script for snapshot automation.

https://www.sourceware.org/lvm2/
