Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309;
 h=Sender:List-Subscribe:List-Help
 :List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:From:
 References:To:MIME-Version:Date:Message-ID:Content-Type:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=/Y/WcFlb7StTHCVgNqc523eyMmRuHhbTogMQrSMSLJQ=;
 b=gC9igCSGaGFEPLQALlb93qBqfY
 hQJ6GNs5X1F+dVXJzGNK8/YNSaStnq4oRO7PLcBogXx0AV2OMxvhTP/Dg2kKN6sIxM7LiMu3Dd2o0
 d1VWRMIlHCD+a/8jPoFTqwbxYBQJEsD6dUxKK9JU9RY9XQyWZ87fVReaLn1O/RJ+xAlkKWBsqRFUj
 HXyp7pAD6vXOKJ2HzPbVsn6m7NteMUeI62SweuVNCpRcseUyN+9GUdW6QMpwhaeR9mP1cS1naNokQ
 +w5OIvlbwDSiC/up5hCJfe0RiF2LYQap6lzv1P9SLtZkmR36uGgUvKpv5jCa2yXATCUma0t20FVNl
 D1Jl3S8Q==;
Received: from mta.synnack.net ([2001:470:7b66:0:5054:ff:fe28:5f39])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJXe4-00EEVl-C5
 for wireless-regdb@lists.infradead.org; Mon, 14 Feb 2022 09:27:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=baanhofman.nl; s=exim; h=In-Reply-To:Subject:From:References:To:
 MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XOJsCiLjc1iZupZ3XJxeUQIGQOlYIhF8z7XTcSQCL+4=;
 b=EzxOBFksBHQhDIgbmeXF6K1Bq/
 ZxG7A7tVMuvsTngGJRpIkp1xSpUI2NR4Wtx02kynwjEfGP7IKGRczwAuhgz4E4zbdwb/1NTy0fjdd
 KV2fHAK+q3ZZuNosJXZNCQQbgc+2GUXri0e1ZG3sI9bEixveXx6ptmWk4AfxXofTAmdo=;
Content-Type: multipart/mixed; boundary="------------0hbp0KwlZOs578M4QKbGOptI"
Message-ID: <701919cc-6ea6-1778-0a48-c24f7bdcab82@baanhofman.nl>
Date: Mon, 14 Feb 2022 10:27:35 +0100
MIME-Version: 1.0
Content-Language: en-US
References: <f05ace72-4ac3-4035-1cff-0ae12ebbf995@baanhofman.nl>
 <YgfdaR+/fxM/+1Im@ubuntu-x1>
From: Wilco Baan Hofman <wilco@baanhofman.nl>
In-Reply-To: <YgfdaR+/fxM/+1Im@ubuntu-x1>
Subject: [wireless-regdb] [PATCH][v2] wireless-regdb: Update for the
 Netherlands
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: Seth Forshee <sforshee@kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

This is a multi-part message in MIME format.
--------------0hbp0KwlZOs578M4QKbGOptI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 12/02/2022 17:16, Seth Forshee wrote:
> On Thu, Feb 03, 2022 at 11:30:36AM +0100, Wilco Baan Hofman wrote:
>> Hi all,
>>
>> I noticed the regulatory DB entry for the Netherlands has not been updated
>> to match the rest of ETSI, despite the government opening up this spectrum
>> in december 2021.
>>
>> I have attached a patch, based on the announcement and law in the
>> Netherlands.
>>
>> NL official announcement:
>> https://zoek.officielebekendmakingen.nl/stcrt-2021-49492.pdf
>> NL effective law: https://wetten.overheid.nl/BWBR0036378/2021-12-15
>>
>> Unfortunately only Dutch, but it matches 2021/1067/EU. (Indoor, 23dBm, only
>> lower part of 6GHz)
> Thanks for the patch! The content looks good. The indentation on the
> description is a bit weird, but I can fix that up. In the future please
> use 'git format-patch' as this should format the patch correctly for
> application.
>
> One thing I do need from you is a Signed-off-by tag. Please have a look
> at the CONTRIBUTING file in the wireless-regdb source, and if you are in
> agreement respond with your Signed-off-by tag.

Sorry for the indent weirdness, apparently it's an artificact of copying 
a template from a git log (indented).

I did actually use git format-patch. I have amended the last commit to 
include the Signed-off-by tag.

I have now attached v2.

Kind regards,

Wilco Baan Hofman

--------------0hbp0KwlZOs578M4QKbGOptI
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-wireless-regdb-Update-regulatory-rules-for-the-Nethe.patch"
Content-Disposition: attachment;
 filename*0="0001-wireless-regdb-Update-regulatory-rules-for-the-Nethe.pa";
 filename*1="tch"
Content-Transfer-Encoding: 8bit

From 726c422c6ac3cbdec0b37512eb4eff1d2aef0804 Mon Sep 17 00:00:00 2001
From: Wilco Baan Hofman <wilco@baanhofman.nl>
Date: Thu, 3 Feb 2022 11:21:28 +0100
Subject: [PATCH] wireless-regdb: Update regulatory rules for the Netherlands
 (NL) on 6GHz

In accordance with the EU Commision decision 2021/1067/EU the
Dutch Ministry of Economic Affairs and Climate Policy has opened
the use of the lower 6GHz spectrum, for indoor use, up to 23dBM (200mW).

NL Announcement https://zoek.officielebekendmakingen.nl/stcrt-2021-49492.pdf
NL Law: https://wetten.overheid.nl/BWBR0036378/2021-12-15

Unfortunately, only available in dutch.

Signed-off-by: Wilco Baan Hofman <wilco@baanhofman.nl>
---
 db.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/db.txt b/db.txt
index 6dbda3c..2fb4b97 100644
--- a/db.txt
+++ b/db.txt
@@ -1178,6 +1178,10 @@ country NI: DFS-FCC
 #  EU decision 2006/771/EC: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02008D0432-20080611
 # Harmonized CEPT countries (July 2019): https://www.ecodocdb.dk/download/25c41779-cd6e/Rec7003e.pdf
 # NL: http://wetten.overheid.nl/BWBR0036378/2015-03-05
+# Updated 14 december 2021 to allow the lower part of the 6GHz spectrum for WiFi 6E
+# mobile short distance equipment, broadband transmission equipment, license free, from day after publication
+# NL announcement: https://zoek.officielebekendmakingen.nl/stcrt-2021-49492.pdf
+# NL law: https://wetten.overheid.nl/BWBR0036378/2021-12-15
 country NL: DFS-ETSI
 	(2400 - 2483.5 @ 40), (100 mW)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -1185,6 +1189,8 @@ country NL: DFS-ETSI
 	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
 	# short range devices (ETSI EN 300 440-1)
 	(5725 - 5875 @ 80), (25 mW)
+	# WiFi 6E
+	(5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
-- 
2.31.1


--------------0hbp0KwlZOs578M4QKbGOptI
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--------------0hbp0KwlZOs578M4QKbGOptI--


