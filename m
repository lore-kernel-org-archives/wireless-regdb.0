Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=liu+ajJCCke2RR/BySe1ReFYrmhEvFNo38Rv/kwmb1o=;
 b=l4m
 shilDpt/JdNpJsMv8gnDmooiotbXeBatpmkua3fGXWVTB326sB7pmH0+qa0SiQ4K/jgJub9E2taoV
 UYAqNFi7F/EEyhk+9dChfVd2vJRdCZfd3DKeQeeS9X7rZ9FtnCmRzG2bpMTwD1kccWKcJGkXAMuMM
 SO9DSNoTmZVyafW2VRFza6FeOk3CkUYnlWWUdbRBdbfqPQ1M7DsnDoq5IiI9/cZhH7kqC2WGdlhUv
 Rmd7zZI3ZWAyqd369FPKUB5JrPN5uwknnNt8cO9AEiVtEzpmjpVXvebZEOlTPO+9RxgUhbSmA0aiw
 mfH8WuCIs1F4SbnCXkwpIO/Vnt9pL5w==;
Received: from mail-vk0-x232.google.com ([2607:f8b0:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1emllK-0004i6-4i
 for wireless-regdb@lists.infradead.org; Fri, 16 Feb 2018 19:33:55 +0000
Received: by mail-vk0-x232.google.com with SMTP id z190so431827vkg.1 for
 <wireless-regdb@lists.infradead.org>; Fri, 16 Feb 2018 11:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:from:date:message-id:subject:to;
 bh=afflDhwjlgUwng6akmpHrbz0RO4BfiXRp/gl7EKECF8=;
 b=YcypO7tb19v9TorOvSuS77H+bFzzWa+OJgc35EQXUpUY57/9l+DWAzNa9CVIKu4Qjh
 eK6miiVQ2fIQ/Yvks10vJ83CHis7eQJ745vmqSfxKiI5dCBAbFbXVKnVF3kyN5RvVSF2
 QOFkGnJhlQr1XErMoRH3H+QrPaLUQIj6lnXqBWPrDRlNGvvjaaGo7PPiGncaCmM7GVyb
 tLp36yoXZmbxaNwaXxetWTRguAzeJCBDP/EPkRbuK88NyIECMV6nRVGpOO8jay5+vZTi
 9WLjRzd5vbSzzUB7Zm8326VEXhusk1ZLxuU2m0oIx22hiNHTeGLC1MNGRujvxto7NtEO rCuw==
MIME-Version: 1.0
From: Michael Chen <michaelchentejada@gmail.com>
Date: Fri, 16 Feb 2018 14:33:25 -0500
Message-ID: <CAD7otF4u6oyC4+xSZFO_taOiwkHot5MNCECByY89UMdPsjZObg@mail.gmail.com>
Subject: [wireless-regdb] Update regulatory rules for Panama (PA) on 2.4
 and 5 GHz
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

Hi,

I've been researching which frequencies are allowed for WiFi in Panama since I
noticed that WiFi channels 12 and 13 are currently not accesible. After some
research, I found that there are a few discrepancies that can be corrected in
the 2.4ghz and 5 ghz band. Furthermore, the 5470-5725 band and the 57-64 Ghz
band were recently added to the regulation.

Source: http://www.asep.gob.pa/images/telecomunicaciones/Anexos/PNAF-dic2015.pdf

Go to article 11.5 (pages 18, 19, and 20) for the WiFi frequencies.

Allowed frequencies:
2400 - 2483.5 MHz 30dbm - 36dbm EIRP (See article 11.5.1)
5150 - 5250 MHz - 1W transmission - 4W EIRP (See article 11.5.2)
5250 - 5350 MHz - .250W transmission - 1W EIRP
5470 - 5725 MHz - .250W transmission - 1W EIRP
5725 - 5850 MHz - 1W transmission - 4W EIRP
57 - 64 Ghz - 27dbm transmission - 43dbm EIRP (See article 11.5.4)

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

