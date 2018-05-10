Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=34iXi3GobiV60sK1X/6HuiQakUP/dIOVad7qCsObMb4=;
 b=RtkrMlKvAwS2yvhmXCeESduCD
 +Ub44oqr6PV8oOWJMrCRQaU3nOLR1Pb60RaPyyBxsGrgM0KI0FDkcCZD72+XSnKDcIuqT6/m3KBYt
 4mnhK5yYMlQdmgzWP12h6xZT0d/0Za2jpCYBHTOyJdfAYSXSK9Cj6qUUk3+Rj4c8qwvNNMilZKTLh
 R0yuWAVYZz27vTrxKkfQaVVSQ8QIL47c+oi7l1JcfgL7IWQJaP7oi/sIvzKW970KaZi3H7e4Vq7Aw
 NjyIS8rjvDO8iLSgkYBtXhccJBQ9mxDvztiZvsMXpbLm/lvx/ajvz+2coWPUj/tevuBNCSxljEEMf
 fyp1iwL6g==;
Received: from mail-wr0-x22c.google.com ([2a00:1450:400c:c0c::22c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGoVX-00010N-C1
 for wireless-regdb@lists.infradead.org; Thu, 10 May 2018 16:33:33 +0000
Received: by mail-wr0-x22c.google.com with SMTP id h5-v6so2628880wrm.4 for
 <wireless-regdb@lists.infradead.org>; Thu, 10 May 2018 09:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=glzrKKucDN2th9FcPJ79WiSMQVX/lBtaRq2kaIl6ds4=;
 b=dSqRTba8fBDZhsjixzU9ou0r0QEZBIvw6N1s0UKZyb7GcaX27DFL61mSAIGXNVTLXM
 ZMh7y5qk/s65Z343gXk4CnxcLQRBSta746TmHkSbxiHsrkzApEh0+fnOCi2/OW97FMOY
 15QmAtYGfweTDSWmtL/wYbEG6JdspCtgQH/j/fsIM6oKj8jgYlB38crOAlDaTZQeGsmU
 tmoxlLf34pibRLiIEzjqJN4+GputLk1FT2qheoBEWGaCwC56vVVWtu7Hx4uaF5x055R2
 4RDAf0U5whCGQosseAY/mbTbyvsSaXc0K2eAd9irrJRdPkfizQpUdtYoivekumjjy0wP q2Tw==
Received: from [192.168.1.18] ([92.184.100.226])
 by smtp.gmail.com with ESMTPSA id 137-v6sm2068070wmk.38.2018.05.10.09.33.17
 for <wireless-regdb@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 May 2018 09:33:17 -0700 (PDT)
References: <20180509142022.GB3375@ubuntu-xps13>
From: =?UTF-8?Q?Mathieu_Peyr=c3=a9ga?= <mathieu.peyrega@gmail.com>
Message-ID: <e44ee7f1-e2fd-01e2-a0cf-1404010e13fd@gmail.com>
Date: Thu, 10 May 2018 18:33:16 +0200
MIME-Version: 1.0
In-Reply-To: <20180509142022.GB3375@ubuntu-xps13>
Content-Language: fr
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2018-05-09
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

I can find :

|country FR: DFS-ETSI (2402 - 2482 @ 40), (20) (5170 - 5250 @ 80), (20), 
AUTO-BW, wmmrule=ETSI (5250 - 5330 @ 80), (20), DFS, AUTO-BW, 
wmmrule=ETSI (5490 - 5710 @ 160), (27), DFS, wmmrule=ETSI # 60 GHz band 
channels 1-4, ref: Etsi En 302 567 (57000 - 66000 @ 2160), (40)|

which as far as I understands it prevents top of 5.8GHz band channels from being used.

The European Union have taken the following decision :

http://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32013D0752&from=EN
(or in French :
http://eur-lex.europa.eu/legal-content/FR/TXT/PDF/?uri=CELEX:32013D0752&from=FR)

where (p14/20, line 61 of the frequencies table) it should be allowed in E.U.
and the last column states that member countries should reflect thie E.U.
decision at national levels regulations before 2014 July 1st.
I don't know for other countries, but it seems that France as complied with
this, regarding the document from our national agency (ARCEP) :

https://www.arcep.fr/uploads/tx_gsavis/14-1263.pdf

on page 23/35, the table gives the exact same condition as the E.U. rules. I
believe those frequencies should now be allowed in FR regdomain.

Also, I own a Synology RT2600AC routeur, and the regional settigns pages
allows to set "European Union" which result in the access point broadcastin
a "EU" regdom that I can not find in the wireless-regdb

Shouldn't it be added in the database ?

regards,

Mathieu Peyréga
--
tel : +33 (0)6 87 30 83 59


Le 09/05/2018 à 16:20, Seth Forshee a écrit :
> A new release of wireless-regdb (master-2018-05-09) is available at:
>
> https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2018.05.09.tar.gz
>
> The short log of changes since the 2017-12-23 release is below.
>
> Thanks,
> Seth
>
> ---
>
> Haim Dreyfuss (2):
>        wireless-regdb: Add wmm rule for EEA and EFTA countries
>        wireless-regdb: Parse wmm rule data
>
> Matthias Schiffer (2):
>        wireless-regdb: do not rely on sorting of dict keys in conversion scripts
>        wireless-regdb: make scripts compatible with Python 3
>
> Seth Forshee (2):
>        wireless-regdb: Update rules for QA and add 5 GHz and 60 GHz rules
>        wireless-regdb: update regulatory database based on preceding changes
>
>
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb
>

-- 
tel : +33 (0)6 87 30 83 59


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
