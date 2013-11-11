Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-x233.google.com ([2a00:1450:400c:c05::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vfypx-0002T4-Bk
 for wireless-regdb@lists.infradead.org; Mon, 11 Nov 2013 21:15:57 +0000
Received: by mail-wi0-f179.google.com with SMTP id fb10so2774424wid.12 for
 <wireless-regdb@lists.infradead.org>; Mon, 11 Nov 2013 13:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=4lORZdrN7v2YH+Y3yAZtSFRidJTEkUeajw8fR2Ynphk=;
 b=Pu1QsJqvZJXuP2j9HSBH3Mk6VH8xUUOhmmQYG9hbYphW/8IZATgMKft4gxh//tJ+1A
 JVnWOdzIdZKn8DEhkgy3dcTncY1heiuGOSshM4kM0biPq4Osxi/wfLYS5kMLiB21fgMF
 +rPJ0YC8ylbvdXSefTtdHG8M99cgCGeKYbDqz6wp8h08U5t4ZQ7DjeMONIxArAGzp++G
 DyQiarSVGqTIp6M1YhHenxsa2z7Nl0WpnKUuESyy9OclUqi8WXbLLuYUk0cpokdHTS2b
 4/Mo5FWSwdlAkNI0PU73cE3ip0BX2x0FN+9wZ9RiEskk8yjQUTF6FRRrie/k0eEXJp0z g1uA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Mon, 11 Nov 2013 22:15:28 +0100
Message-Id: <1384204531-10025-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 0/3] cfg80211: add reguatory flags
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: johannes@sipsolutions.net, linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This series is based on Mihir's unfinished work, it addresses
Johannes' comments. John, Johannes, you guys pick who this
goes through, I've based it on Johannes' mac80211-next as
it touches on regulatory and I had tons of changes already
merged. I've provided SmPL grammar in case of merge
conclicts.

Luis R. Rodriguez (3):
  cfg80211: move regulatory flags to their own variable
  cfg80211: add flags to define country IE processing rules
  cfg80211: add an option to disable processing country IEs

 drivers/net/wireless/ath/regd.c                    |  5 ++-
 .../net/wireless/brcm80211/brcmfmac/wl_cfg80211.c  |  2 +-
 drivers/net/wireless/brcm80211/brcmsmac/channel.c  |  4 +-
 drivers/net/wireless/iwlegacy/3945-mac.c           |  6 +--
 drivers/net/wireless/iwlegacy/4965-mac.c           |  6 +--
 drivers/net/wireless/iwlwifi/dvm/mac80211.c        |  6 +--
 drivers/net/wireless/iwlwifi/mvm/mac80211.c        |  6 +--
 drivers/net/wireless/mac80211_hwsim.c              | 18 ++++----
 drivers/net/wireless/mwifiex/cfg80211.c            |  5 ++-
 drivers/net/wireless/rtlwifi/regd.c                |  6 +--
 include/net/cfg80211.h                             | 33 +++-----------
 include/net/regulatory.h                           | 50 ++++++++++++++++++++++
 net/wireless/core.c                                |  2 +-
 net/wireless/reg.c                                 | 37 ++++++++--------
 14 files changed, 109 insertions(+), 77 deletions(-)

-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

