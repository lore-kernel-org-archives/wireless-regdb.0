Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
 From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=puKvgUe8f55maRIUO+nSM/qAF/KeQYO8HYhFg+8PhOI=;
 b=aAHNOuRnEATdlX
 yTSONkwBWQBFbs1o3EkpmGvUmEbRkyrNQi73tNyMwPGKRDslYL0T+dBP0pCaa/HGeHMwJgeQ+ml7W
 QN0suXX9N4kblOrJlcaDIp9QKWF4FiBMnF5pcAPhIhrP0/MH6PzMV1ZTuHZ5UAKDCHH8gODIjYAMV
 r1/5ARuTG6gWbztn3YwcBSMt2ZzOZKXdnYmCMleL77tDFejcxl3sRtoOZl8u/8UVZsenp4svrY8M4
 O4lAJhrHIeICa02rXLrtNzrrW/0h+tSDtdhGF3JtSiuAK6ZCJ21jZlkwZ7RXmxpwHbGtYE2i+mEyV
 R6O138nXtl6xTRUNFMTQ==;
Received: from smtp15.mail.ru ([94.100.176.133])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1eyQ3b-00044N-C7
 for wireless-regdb@lists.infradead.org; Tue, 20 Mar 2018 22:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
 s=mail2; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Subject:From:To;
 bh=OZNM4CVo+zB3OPNQ54awGdqNJQj0Ri8g1v34MBmz+Qo=; 
 b=RaFeo8t9ZtU01nbVxz1/vtSrjbLWKHE3b4w8pfP0ITd68fqZOFPwf5GyYjk26JQW8kT08+qqvIcDQfkMjVhNtLhipi9SjRarWLXVX8RTgL4+1iJe04TlW6Y9oFt5iyMKnIoJ+ncY+vZgbcDjmt/vvwOTp9raMiF9en97wsAS9L0=;
Received: by smtp15.mail.ru with esmtpa (envelope-from
 <niccokunzmann@mail.ru>) id 1eyQ3J-0000Cp-Rv for
 wireless-regdb@lists.infradead.org; Wed, 21 Mar 2018 01:48:22 +0300
From: "Nicco Kunzmann (mail.ru)" <niccokunzmann@mail.ru>
Message-ID: <052a981b-c150-61f3-318a-0546b33192a9@mail.ru>
Date: Tue, 20 Mar 2018 23:48:17 +0100
MIME-Version: 1.0
Content-Language: en-US
Subject: [wireless-regdb] EU Regulation on CAC time
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
To: Wireless RegDB <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Dear list subscribers,

I was reading through the  db.txt file.
I did not see the CAC time for the country I live in, Germany.
According to [1], DFS frequencies are described.
However, I also read EN301893 [2] which is referenced by [1].
EN301893, page 104, Table D.1 describes the CAC times and handles the
range 5600MHz to 5650MHz specially with extended CAC times.
Now, I read the db.txt file [3], section DE.
There, I can not find the 5600MHz to 5650MHz range specified. Nor am I
able to locate information about the DFS-ETSI region.
I guess, the information can be inherited from somewhere.

Could you help me understand where the information for EN301893/ the
dfs_region "DFS-ETSI" is described?

I checked "wireless-regdb"[4] and "crda"[5] and could not find it.

Best regards,
Nicco


[1]:
https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/2010_07_WLAN_5GHz_pdf.pdf?__blob=publicationFile&v=3
English Version?
https://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=OJ:L:2005:187:0022:0024:EN:PDF
[2]:
http://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.00.07_20/en_301893v020007a.pdf
[3]:
https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=HEAD#n364
[4]:
https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git
[5]: https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/crda.git/


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
