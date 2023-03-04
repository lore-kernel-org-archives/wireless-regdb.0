Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=Y+wRnDwUeKFQIvwLxOxiiiWBmMTM5nAbCY1m6JKLHRw=;
 b=FHghB8vInac8T5
 HwnWs1OecUzz/gWnOLu1fm/SyVTid2cMX7giUNQZFgACDHWH/d0SHPK8XPa7nULBV2lUR3etN3/sy
 i8Kx4hY4saxhPj1PgzZXCMtu2H5qiSxYWGLs5wg61Z7SIzG89bZHtoELh+UR8WMrcOvrpD0Dcp/j6
 ECqtdjfSk6rVwa9kwi4MysHH7JXVR3uO1ij4kAEisst0EZAKvdlcy6UK059LNaUPsCF0fesPAGHhl
 rttDerxtECTkzTWlnoq1VIVutbLvNKyuS/TGFssK2j4/BKE3r21Cu668vcWEAPMzB5WU7/KseaS45
 AbcV83ypGXmiudM+vG1g==;
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYb4n-009eG9-Pt
	for wireless-regdb@lists.infradead.org; Sat, 04 Mar 2023 23:14:09 +0000
Received: by mail-pf1-x42a.google.com with SMTP id ay18so3638270pfb.2 for
 <wireless-regdb@lists.infradead.org>; Sat, 04 Mar 2023 15:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112; t=1677971635;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=YO4ZU9CMdBkS7EHwVUMi6utYEYLEsZRr5G63eg+uzH0=;
 b=M74wV7sG65kZ9BZBoWWVPkDYgTONkGqjNnly73h1whoz9X5IyJinhvq0HQy2IO64Uv
 mw66yAa2Jn0/48ekL6PulmuDaLpk+wkStidFLEmRuo+0H3YFT0RnIfMRLIdJJ4c8mdm4
 n0Kkfg5wK4RxKJ9lW0WDHPmxfr/ScSx1wFbeN4MkVOrQoMtD4sAArLfr1DCTXlyiyHQ3
 pUdFsfrR6dwUvgDe5MoL0FgwhOio8dqZeQzcIdX3DJmB6EQFYrJ0YMibtftLUgqamq1C
 m3dTk+LXCZ4ncmMhS2BUTEvK8pVlW6Vhu6a9V7NNgTZIDVK8RQmHKRfwSolc3DYsywVA e/dw==
MIME-Version: 1.0
References: 
	 <CAMPnHXye6EBTix6125NzPrQSitwKikK6b77g=K5t-ihmU11JHg@mail.gmail.com>
In-Reply-To: <CAMPnHXye6EBTix6125NzPrQSitwKikK6b77g=K5t-ihmU11JHg@mail.gmail.com>
From: Keshav <the.ridikulus.rat@gmail.com>
Date: Sat, 4 Mar 2023 17:13:44 -0600
Message-ID: <CAMPnHXy49dSKdiCzeEZ86q3YEEWW=PrfPYwPevA4A2bFBe_sbg@mail.gmail.com>
Subject: [wireless-regdb] wireless-regdb: Please correct the regulatory
 rules for India (IN) on 2.4 GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: sforshee@kernel.org
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello,

I noticed that wireless-regdb db.txt [1] has restricted India's 2.4
GHz maximum power to only 20 dBm:

country IN:
        (2402 - 2482 @ 40), (20)

However the Official Gazette of Government of India (PDF [3] linked in
URL [2]) mentions that upto 30 dBm is allowed in the 2.4 GHz band.

2.4 GHz Rules for India (IN): Pages 87 to 88 of PDF [3]

I would like to mention that I am not an expert in this topic. I am
not sure if there's any other reason to restrict 2.4 GHz for India to
20 dBm in the db.txt. I also couldn't find any other official
Government of India document that restricts the maximum power to 20
dBm (due to some other reason). Please look into this and correct the
regulatory rules for India if needed. Thank you.

Although not the topic of this email, you can also find the 5 GHz
Rules for India in the same PDF [3] (pages 94 to 97) if interested.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=7f7a9f7bc6011b072b5427eced1ff19261764e95#n853

[2] https://dot.gov.in/spectrummanagement/gazette-notifications-delicensed-band

[3] https://dot.gov.in/sites/default/files/Gazette_Notifications.pdf

With Best Regards,

Keshav A.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

