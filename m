Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309;
 h=Sender:List-Subscribe:List-Help
 :List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=56SaOvOTeWoeDVoxiI5JlTkTR3yIL5A8HrAAjVV0kIw=;
 b=YcpOUfWI/GxfOseZ+cz8XS7wTa
 nCyJCEuk/zz/IfgrkTiiiznso/vL8RYLHNo7ltbqCWIW4mjiAZKVI84LY3UCBBlo5bZfCDRB+Guxs
 dXWCpFSSksl7H4ncamhul77Bzkea+fn3KNieXqdgOvJT/vjqoP8liOxbaeKgNyGlTVX9ZYlz/U3pa
 8PO27CjmaO8xQDieq/hvvqla1qQHDyGA5wA9ws4GSbRpCn+dhFNIwKB5HxCge7wqNohw6LVE003gS
 +DXOdTRJ3Kl5pfTmjqKVefoWaG6NgCZ8OQ39gIV0jSZW8eR17zKBT6ZDVaezhquZBPKZnxlFR2zoc
 eVOd6f/Q==;
Received: from w1.tutanota.de ([81.3.6.162])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOjOR-00DQvo-O2
 for wireless-regdb@lists.infradead.org; Mon, 28 Feb 2022 17:01:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 t=1646067656;  s=s1; d=tutanota.com;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:In-Reply-To:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:References:Sender;
 bh=/wrr2DK2kmwRFT2iS1De/ar2EVEa7HBwLwoXwFD6Lgw=;
 b=sFzNBO24DOVy1APb01ABMGThzoIYUXm3uA51RjWjdHgzwrN/U9HdWLbGMZrmiruX
 z6eNamcwItsVboWgX2DFiWI8rJUnG1qO9OPhKze3+I3ou2A4kpa4CKFwG08bg8k6qlU
 ETePDPi4ACkQ/PogGfwm+gbsw1c4UgL3nYk6Rk9PV8WeN8tOKLmYVoF0/5LJzcxevYm
 u4KsFhqhKVKyVeEYAsz05VmC7+nlOahlUzZObL3jxn5LIlYEcpM9YweEfOb4yC10rYm
 QugcuhsOZ5GYA9BBoKqTtcLWhrKdXmhOTRSxab3oTC5ygUpykFkTEy3kgoneMgrIGCX
 4pgKrR3Q9w==
Date: Mon, 28 Feb 2022 18:00:56 +0100 (CET)
From: roman.kunz@tutanota.com
Message-ID: <Mx0Glb---F-2@tutanota.com>
In-Reply-To: <YhuJ/PsGjRQ2XvSR@ubuntu-x1>
References: <MwMNV0b--7-2@tutanota.com> <YhuJ/PsGjRQ2XvSR@ubuntu-x1>
MIME-Version: 1.0
Content-Type: multipart/mixed; 
 boundary="----=_Part_438970_553080809.1646067656368"
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Israel (IL) on 5GHz
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
To: Seth Forshee <seth@forshee.me>
Cc: Wireless Regdb <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

------=_Part_438970_553080809.1646067656368
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

It's a problem with my mailer, I'm re-sending as an attachment.
Answers inline:
Feb 27, 2022, 14:26 by seth@forshee.me:

> On Sun, Feb 20, 2022 at 02:46:13PM +0100, roman.kunz@tutanota.com wrote:
>
>> The Israeli Ministry of Communications has published an updated
>> revision of the normative radio band allocation table on 2021-03-29.
>> Notable change is the expansion of the range of allowed frequencies
>> in the 5GHz band.
>>
>> Signed-off-by: Roman Kunzman <roman.kunz at tutanota.com>
>>
>
> Thanks for the patch! Unfortunately there's a formatting problem, and it
> won't apply as-is. Did you generate the patch with git-format-patch? If
> so, it may be a problem with your mailer; in that case you could try
> sending it as an attachment.
>
> I also have a couple of comments/questions, below.
>
>> ---
>> db.txt | 9 +++++++++
>> 1 file changed, 9 insertions(+)
>>
>> diff --git a/db.txt b/db.txt
>> index d45ec08..e107933 100644
>> --- a/db.txt
>> +++ b/db.txt
>> @@ -777,10 +777,19 @@ country IE: DFS-ETSI
>> # 60 GHz band channels 1-4 (ETSI EN 302 567)
>> (57000 - 66000 @ 2160), (40)
>>
>> +# IL: Wireless Telegraph Regulations (type approval) (2021)
>> +# IL: published on 29 March 2021 in KOVETS HATAKANOT No. 9301.
>> +# IL: https://www.gov.il/he/departments/legalInfo/telegraph_law
>> +# IL: official document (pdf): https://rfa.justice.gov.il/SearchPredefinedApi/Documents/IdngyMn~ojdQSrkxuAqfZqiM8c1foi3TSZQhp7OMszo=
>> +# IL: also available as unofficial word doc: https://www.nevo.co.il/Handlers/LawOpenDoc.ashx?id=199708
>> country IL: DFS-ETSI
>> (2402 - 2482 @ 40), (20)
>> (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
>> (5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
>> +	# Table B List of conditions, row 63, indoor short range device without TPC (ETSI EN 301 893)
>> +	(5470 - 5725 @ 80), (500 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
>> +	# Table B List of conditions, row 68, wireless device using 802.11a/n/ac protocol
>> +	(5725 - 5875 @ 80), (200 mW), AUTO-BW
>>
>
> Machine translation isn't working well for the document, so I'll have to
> rely on your reading of it. Is there some limitation behind the 80 MHz
> max bandwidth restriction for 5470-5725 MHz instead of 160 MHz? 
>
I couldn't find any limitation on bandwidth in the regulations. The power density limits are way above the actual density for 80/160 so are irrelevant. I used the current existing reg-db value of 80MHz out of an abundance of caution.


> We don't have AUTO-BW elsewhere between these ranges, and I'm trying to
> remember why. Having it would obviously allow use of channel 144, and I
> can't recall a reason for not having it. In some cases we've fudged the
> boundaries where 5470-5725 is the more restrictive rule, and GB has an
> exception carved out for 5725-5730. Neither of these is true for ETSI EN
> 301 893 though. Maybe someone else will remember a reason for not having
> AUTO-BW, but if not then it seems okay to me.
>
I don't know. It would be good to support channel 144 if possible.



------=_Part_438970_553080809.1646067656368
Content-Type: text/x-patch; charset=us-ascii; 
	name=0001-wireless-regdb-Update-regulatory-rules-for-Israel-IL.patch
Content-Disposition: attachment; 
	filename=0001-wireless-regdb-Update-regulatory-rules-for-Israel-IL.patch
Content-Transfer-Encoding: 8bit

From 84ba49ba0ae2da981d06f439691d6c93964f8f45 Mon Sep 17 00:00:00 2001
From: Roman Kunzman <roman.kunz@tutanota.com>
Date: Sun, 20 Feb 2022 13:34:03 +0000
Subject: [PATCH] wireless-regdb: Update regulatory rules for Israel (IL) on 5GHz

The Israeli Ministry of Communications has published an updated
revision of the normative radio band allocation table on 2021-03-29.
Notable change is the expansion of the range of allowed frequencies
in the 5GHz band.

Signed-off-by: Roman Kunzman <roman.kunz@tutanota.com>
---
 db.txt | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/db.txt b/db.txt
index d45ec08..e107933 100644
--- a/db.txt
+++ b/db.txt
@@ -777,10 +777,19 @@ country IE: DFS-ETSI
 	# 60 GHz band channels 1-4 (ETSI EN 302 567)
 	(57000 - 66000 @ 2160), (40)
 
+# IL: Wireless Telegraph Regulations (type approval) (2021)
+# IL: published on 29 March 2021 in KOVETS HATAKANOT No. 9301.
+# IL: https://www.gov.il/he/departments/legalInfo/telegraph_law
+# IL: official document (pdf): https://rfa.justice.gov.il/SearchPredefinedApi/Documents/IdngyMn~ojdQSrkxuAqfZqiM8c1foi3TSZQhp7OMszo=
+# IL: also available as unofficial word doc: https://www.nevo.co.il/Handlers/LawOpenDoc.ashx?id=199708
 country IL: DFS-ETSI
 	(2402 - 2482 @ 40), (20)
 	(5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW
 	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW
+	# Table B List of conditions, row 63, indoor short range device without TPC (ETSI EN 301 893)
+	(5470 - 5725 @ 80), (500 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
+	# Table B List of conditions, row 68, wireless device using 802.11a/n/ac protocol
+	(5725 - 5875 @ 80), (200 mW), AUTO-BW
 
 country IN:
 	(2402 - 2482 @ 40), (20)
-- 
2.25.1


------=_Part_438970_553080809.1646067656368
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

------=_Part_438970_553080809.1646067656368--


