Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=v6ga1Z0CUnoS2ocVqZeCOA6RC32E5Kpl41+ogEmFuw8=;
 b=KhpNFDWT/K3iW3
 EHUXfpriq+BqY9uRsEEAcf/eexG/mYYJSsQP2tGNXPlE/O/AVqE3gms2Mfm9VzIYc0VPowvQa1xmH
 btGUbNWtpmpms2PgPpP2AVa6kcLKbmW1NFuZ/2GAGSXDJnXsw1PxmwK761oLsa/CfpZGfLTlU+8t6
 sGF1juQ39y291Gch3y/hz5mSuPCh0wyOcC7notXgAXe5sjlW0v/3AO8hOiQ/xmdhIzbAoNqrlwvVn
 98s9A53szYBKzdzpR57Dkn5N1VcoZeVxih/b/TD9B5wFTXslDBxrTmi0KshXGjzmCYi4BG5nPyv+D
 ydupxRuZRYQbb0Gos3OQ==;
Received: from mail-wr0-x22c.google.com ([2a00:1450:400c:c0c::22c])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpvmz-0004l7-5g
 for wireless-regdb@lists.infradead.org; Thu, 07 Sep 2017 12:20:11 +0000
Received: by mail-wr0-x22c.google.com with SMTP id a43so19094151wrc.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 07 Sep 2017 05:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=3ZRhMsmol22ZqBK2Jv1e7GA1cLN1z5x/T1NChXVF7oM=;
 b=BrRR5qPzqPoZlYzfBDAn8jFWcG5f/HNu5S9k8IZwcA4kQ4RbGsM9TGRCRjVtmLMMrF
 Jdy6RpnQHe9hJTFvtZ+fpbobXp+ULMaBevjWimrCj/h9riyp1ZpCgFTyfdcijizO3gho
 thOMTK72CwTzWTUEIKZhaCdeOVhvwOifvQnsIIZtPE7G0uG3D7XHcMk/uUKVXoY3RQ/C
 cVMuFFmB222ybTGI7FEMRhRWRZXeqcpUUMYW1efX6MXx2z52EWayt8niyG2ax5QyXhuT
 PbHzHkCn/ecwbs8qkf85z5evJqTd/YEvARnQalAICyg2au3gc5aCAfo0rxqjBgj83tCi pIdQ==
Received: from [172.30.1.107] ([84.55.134.130])
 by smtp.gmail.com with ESMTPSA id q140sm328609wmd.17.2017.09.07.05.19.46
 for <wireless-regdb@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Sep 2017 05:19:46 -0700 (PDT)
From: =?UTF-8?Q?Mathieu_Peyr=c3=a9ga?= <mathieu.peyrega@gmail.com>
Message-ID: <442c446a-5ace-9d3e-faf8-4294146cf2d6@gmail.com>
Date: Thu, 7 Sep 2017 14:19:40 +0200
MIME-Version: 1.0
Content-Language: fr
Subject: [wireless-regdb] Question about 5.8 GHz in E.U.
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello,

I'm wondering if the regulatory DB is up to date for France, especially 
regarding channels in band 5725-5875 MHz

in 
https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=HEAD

I can found (07/09/2017) :

country FR: DFS-ETSI
     (2402 - 2482 @ 40), (20)
     (5170 - 5250 @ 80), (20), AUTO-BW
     (5250 - 5330 @ 80), (20), DFS, AUTO-BW
     (5490 - 5710 @ 160), (27), DFS
     # 60 GHz band channels 1-4, ref: Etsi En 302 567
     (57000 - 66000 @ 2160), (40)

which as far as I understands it prevents those frequencies being used.

The European Union have taken the following decision :

http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32013D0752&from=EN 
(or in French : 
http://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32013D0752&from=FR)

where (p14/20, line 61 of the frequencies table) it shoul be allowed in 
E.U. and the last column states that member countries should reflect 
thie E.U. decision at national levels regulations before 2014 July 1st.
I don't know for other countries, but it seems that France as complied 
with this, regarding the document from our national agency (ARCEP) :

https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf

on page 23/35, the table gives the exact same condition as the E.U. 
rules. I believe those frequencies should now be allowed in FR regdomain.

Also, I own a Synology RT2600AC routeur, and the regional settigns pages 
allows to set "European Union" which result in the access point 
broadcastin a "EU" regdom that I can not find in the wireless-regdb

Shouldn't it be added in the database ?

regards,

Mathieu Peyréga
-- 
tel : +33 (0)6 87 30 83 59

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
