Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=bdWfxC49zTHbf6c4d0EOxcDTwUrhRcwodQsdgl7kzRk=;
 b=tPr
 ld84mASoAwmpsDFDQpAl5kXAzFcTVYp/zFB2ket3hse3IhrSKHOa0/i9IV7LQSJ6Vo/NdLT+HM6pN
 YEI81krwvOs4nVYl3HvfHF/tOtKVTbkw6eDczwcOBcPHkiF9V9BauLGDqRu+YuLPTM6eWzpFJhaAu
 1/NvO3mWGEf8kJpbFUxWo2Mo7jTPyjG2U50T3iY6/0WSOrji4JIvPoSgdTqJduwKCcUf7/rNq+YJ8
 OvgNGBHMZSI5Hxxh0h6Yj7iwlJuwEphmuFo2gGUtv9Grot4UHtLBNxNqzRVdyX+3XWWi1iQELr+fV
 Xxda+JvEjto2sAj97sSnWKOswBCMjKg==;
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngGOD-00FEyC-Rg
 for wireless-regdb@lists.infradead.org; Mon, 18 Apr 2022 01:41:20 +0000
Received: by mail-lj1-x230.google.com with SMTP id q14so15336848ljc.12 for
 <wireless-regdb@lists.infradead.org>; Sun, 17 Apr 2022 18:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dbperformance-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=Ym2pVZ1cLn1R+Q09M3cvGObEjcrMglq08oNtkRaL2Nk=;
 b=jyhey//+25KmDa5F1NoF3oMw44Kb5mJtV/34muRSP/WhjbJ2v64r+EkYtHWIKWqfc5
 hCTSZ1ll64jxT/YDdtu4TbTITczgZXGEeKb8PFV7yfSk7pee/RGCkpNnDxOk+IKyWhOc
 OIdNueFLZGvyxddWz9hFI53wFP6wBlbWg37/mJgwXB1LUf9sInxHj8vcYkc38Cd4eJOA
 fNQz0JtiRmC9Anha8tDl1u4NPbG6HSqjUlod99/3rNHfBoZG+q4DDoxF/cwIph8gdaKu
 guDbY8BkUB+OL5gYmJMBYg5TLMvf7eL/LIrXxGOBRZi9Te0M6U6KCdWZVoNZ7OBW81aO
 Wctw==
MIME-Version: 1.0
From: Dennis Bland <dennis@dbperformance.com>
Date: Sun, 17 Apr 2022 19:41:03 -0600
Message-ID: <CAPRryQo1mJLF0YkQH1j8N4POSyi0QzUJ=r_fedYHun_9fONyBw@mail.gmail.com>
Subject: [wireless-regdb] Regulatory update for 6 GHz operation in Canada
 (CA)
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

The technical/operational requirements have been available since November 2021:

https://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf11750.html

If this request is not already in the submission queue, I can look at
submitting a patch.

Thanks!

Dennis Bland

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

