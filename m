Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=lU0yTTGaSNlXjog/bg/SyyOvF8hX1hZ0FUDLfq4nAEA=;
 b=dZw
 hW4EYTCIrWGgEK87jz64nhZWk0k+/1yMyx8IbMcKzETNnQv9djN4Xa9/4bQvR6UL3x7tED/NajDp2
 aNfE398tpHi4dYBM/64jzJtPKqHyx8y7XtnWwj/2eKLMAQSS+mtdysm1r7kLH48uYrA2/mS1SWAoF
 TrfIIiBytQElP40cXxK0FyjQfnFHZTM2NNBL0pHXs6UY0s0l8vMPRzBgMfcpVLmBGHlqiMB7iLVqp
 Sw4OJUtqyp5vzVafgB8bzIpImYV/tK/bPg5pB4Q0fb6zQuNWQY24QIXFMZOOanmxNS+JldZ9VqfS8
 5awo2Qwq+92zeact2T132Y+b3kF3g7A==;
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHEnS-00CKDA-TJ
 for wireless-regdb@lists.infradead.org; Sat, 21 Aug 2021 00:23:42 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id
 h7-20020a4ab4470000b0290263c143bcb2so3406538ooo.7 for
 <wireless-regdb@lists.infradead.org>; Fri, 20 Aug 2021 17:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=sXAyv4Dmx/KrwA77wdgByYeG+O3VgKQ5FYz93nbcR4s=;
 b=cJuba6Yjv38FfIFgQZx1/JtFp4rP5NqdADzlknmBlBn8jNS58GNNuc8X5rj+0YxXhO
 PBEZXUT2PJdwajqkxZJSBkcipgCxknfx8p5nWCdYYsrvFQfjRP8x6FV32JYygU76dR73
 fKxxaQWEC8S60szYgHdFqMSpJclEjj+0aYYzI+GOCqP8rFrqa21H4FUoJ0lYzg2FNWd/
 7zcqmfNM2+zXP0Dz4m58RWcZE18endSwtuUGE3cv23+Vh32rke6ws/pM/c1luzzk+K28
 DECvxzCupq7C1LcRqb7l3lItgAEbH9SVCInJnoift0Z0/rsAq3N96Rc2QOd+w9N/R6JN aoAQ==
MIME-Version: 1.0
From: Victor Bayas <victorsbayas@gmail.com>
Date: Fri, 20 Aug 2021 19:23:26 -0500
Message-ID: <CAD+f0790FnHQ-=a4qO7m5Y-oD=6c=NcjHk0Fv=iF61FJJ8mhdQ@mail.gmail.com>
Subject: [wireless-regdb] Incorrect regulatory data for Ecuador (EC)
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi All,

The regulatory data for my country (Ecuador) is wrong because it is
limiting the 5GHz WLAN operation to only 20MHz, there are no bandwidth
limitations according to the ARCOTEL (Agencia de Regulación y Control
de las Telecomunicaciones) which is the ecuadorian government entity
in charge of regulating the radiofrequency spectrum and
telecommunication services.

The 2.4GHz, 5GHz and 60GHz spectrum fall under the Uso Determinado en
Bandas Libres (Determined Use in Free Bands) disposition which can be
found here:

https://www.arcotel.gob.ec/wp-content/uploads/2018/04/NORMA-ESPECTRO-DE-USO-LIBRE-Y-ESPECTRO-PARA-USO-DETERMINADO-EN-BANDAS-LIBRES.pdf

(there is a table starting from page 19 which explains the maximum
transmission power in mW for each frequency range)

Additional information about the radiofrequency spectrum in Ecuador is
available from the ARCOTEL website:

http://www.arcotel.gob.ec/espectro-radioelectrico-3/

Greetings,
Victor Bayas.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
