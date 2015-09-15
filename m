Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZbngN-0001wX-2r
 for wireless-regdb@lists.infradead.org; Tue, 15 Sep 2015 10:41:51 +0000
Received: by lamp12 with SMTP id p12so103309773lam.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 15 Sep 2015 03:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:date:message-id:subject:from:to:content-type;
 bh=cHU22IiAObkgN+DjDdIa359ffAH4y4ZP31uk/tP1k4U=;
 b=mkufV6mciJ9/r25zlVqqqGub43+50IYq2lvw9pfd3RwGOWzUXLZTbrlD4XNby3qfhQ
 G+bNGQCuxmSP6Dlsb/dqn/gJvNZ9q9sk1sUi/h/BEsEgcAYvHV9xnBOtpnQsfI5wndwn
 Sm5nZv6gY0F7rap4JRxq03NDas5V70iKELgT6MILsUN6JUgBVi4id55Y/co4OSwvl8Zo
 iCOHTj39OcbG64SWzPevAEnckn/njiJGnydZ0yO/Qws2fnDS8hx6apucRzzR0lRE1IBA
 V/IhigQ0f5mS3cusJvXEr2u6Fg8vaEjPe7HqS59+g1Auv998NE66VBfEIPXJv+zeP6Oe APzg==
MIME-Version: 1.0
Date: Tue, 15 Sep 2015 16:11:27 +0530
Message-ID: <CAH9F5rkwnYRerb=y2tQudYq-UwBdHcf0nwA9aAugOmBhWhKnzg@mail.gmail.com>
From: Atul Joshi <atul.suresh.joshi@gmail.com>
Subject: [wireless-regdb] Regulatory Domain for Hong Kong
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

Hello,

We are trying to find out which regulatory domain HK falls under.

From db.txt

country HK:

                (2402 - 2482 @ 40), (20)

                (5170 - 5250 @ 80), (17)

                (5250 - 5330 @ 80), (24), DFS

                (5490 - 5710 @ 80), (24), DFS

                (5735 - 5835 @ 80), (30)



So the DFS regulatory domain is not specified hence We will not be
able to start the AP on the DFS channel.

Can somebody please clarify?

In other cases e.g. GB

country GB: DFS-ETSI

                (2402 - 2482 @ 40), (20)

                (5170 - 5250 @ 80), (20)

                (5250 - 5330 @ 80), (20), DFS, NO-OUTDOOR

                (5490 - 5710 @ 80), (27), DFS

                # 60 gHz band channels 1-4, ref: Etsi En 302 567

                (57240 - 65880 @ 2160), (40), NO-OUTDOOR



The regulatory domain is specified.

So does HK fall under DFS-FCC or DFS-ETSI?

Thanks

atul

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

