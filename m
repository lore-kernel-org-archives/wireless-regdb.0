Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=B0GSTyDjt7qKRyzAiTq1CXzkDTmnw6+UQGAVCFeQBL4=;
 b=1shWwTl0m3IYuUhfPecdETueLu
 Kr8JncKKOViauJCP6def1XLVnyuyhhwgSdMstgSfWiA6N3VpKXe7V0DlPyImXmP9MsFtbqc/mlWvF
 fU7hpK1Yya2L0V4XdRznrMwpGa5iuXMylvSn7yrggiMzptc4rH3oeL0ls7Tq3xuhq0P6ueBeQqfvt
 4AmYdDNDOZUh2KQbJeJKgkC6AzQgeCCEEOcvyL2Ldf9OVEbYoxXFhMkvEPzIgeY4YwFGHi/RkUjMU
 rNFM4X3JaQbT3RKMv+EklQscBJvRQbkcmr2ZAU5aALTBQV6UPuCLgJ8q4q4RqSQ61aHQD1we66CZj
 LwrgD8OA==;
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPQ7Q-00064G-Eh
 for wireless-regdb@lists.infradead.org; Mon, 05 Oct 2020 13:01:33 +0000
Received: by mail-ed1-x530.google.com with SMTP id k14so9221555edo.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 05 Oct 2020 06:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+L2aZyvxl4W8khmOuNAlUi/cVzcrgmy9s9w3VWgBV8I=;
 b=AxhWCAo09E6pqESoPistNy4SDg2FO9APYl38SqOCh5AV0H9XuOvenVZfsrreNQy8q+
 /Ux6VVOlE8d8LOn193QsvYski1+pdBxIe+pcD3/93MCLZ+QMOvMfi+Dqnm9U0LOqEggq
 NOR3b5902hm9+AlyFYXZT5zX845k4f92AA3W4vcG4Nf7PNv46HjZsoM56vHmzxyRESUq
 eUbCpKPPWwypL+dWPM6hlsv27SSupPasGUjTZF59nKTURjsneXS8XCK6mlAM3akdB6jz
 Yb8AMPaJrgpzusSwNTt9gDOxQ8SRZJHhGHvhhTpyD5UxBMJ6jk7dm8Gg2LdWRQosNCQ6 Xjjg==
From: bkil <b.K.il.h.u+tigbuh@gmail.com>
Date: Mon,  5 Oct 2020 15:01:22 +0200
Message-Id: <840438bf70c72d2ab933aee9ae5aa6985b6c1531.1601902881.git.b.K.il.h.u+tigbuh@gmail.com>
MIME-Version: 1.0
Subject: [wireless-regdb] [PATCH] wireless-regdb: restore channel 12 & 13
 limitation in the US
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <seth.forshee@canonical.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

The precisely allowed transmission power on channel 12 & 13 is not clear.

I did some fact checking and document reviews in the past, but still
failed to come up with an exact reference or calculation regarding what TX
power should be allowed in general to reduce interference in the
neighboring restricted band 2483.5-2500 MHz and whether indoor vs. outdoor
and b/g/n modulation would make a difference (probably yes).

Existing documents that discuss this are vague and pretty much out of date:
https://en.wikipedia.org/wiki/List_of_WLAN_channels#endnote_B

Following these guidelines, I failed to come up with an approximate
formula that would prohibit usage of channel 12 & 13, but still allow
usage of channel 11 with full power, hence at least part of the argument
for prohibiting channel 12 & 13 needs to be refined.

Until further research, just to stay safe, I propose that we restore the
previous limitation of disabling channel 12 & 13 as before. We should
work towards finding a safe transmission power to use on both and specify
that (like 50mW on channel 13 and 100mW on channel 12?).

I've also started a discussion for investigation on Wikipedia:
https://en.wikipedia.org/wiki/Talk:List_of_WLAN_channels#Should_the_2.4GHz_channel_12_and_13_in_the_USA_need_updating?

Signed-off-by: bkil <b.K.il.h.u+tigbuh@gmail.com>
---
 db.txt | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index ac32483..68613cf 100644
--- a/db.txt
+++ b/db.txt
@@ -1568,8 +1568,12 @@ country UG: DFS-FCC
 
 # https://www.ecfr.gov/cgi-bin/text-idx?SID=eed706a2c49fd9271106c3228b0615f3&mc=true&node=pt47.1.15&rgn=div5
 # Title 47 Part 15 - Radio Frequency Devices, April 2, 2020
+# Channels 12 and 13 are not forbidden, but are not normally used with full
+# power in order to avoid any potential interference in the adjacent restricted
+# frequency band, 2,483.5–2,500 MHz which is subject to strict emission limits
+# set out in 47 CFR § 15.205. TODO: reenable and specify a safe TX power here.
 country US: DFS-FCC
-	(2400 - 2483.5 @ 40), (30)
+	(2400 - 2472 @ 40), (30)
 	# 5.15 ~ 5.25 GHz: 30 dBm for master mode, 23 dBm for clients
 	(5150 - 5250 @ 80), (23), AUTO-BW
 	(5250 - 5350 @ 80), (23), DFS, AUTO-BW

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
