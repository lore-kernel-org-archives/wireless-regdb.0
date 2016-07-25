Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-yw0-x242.google.com ([2607:f8b0:4002:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bRaI9-0005O6-Vf
 for wireless-regdb@lists.infradead.org; Mon, 25 Jul 2016 07:27:10 +0000
Received: by mail-yw0-x242.google.com with SMTP id u134so11584414ywg.3 for
 <wireless-regdb@lists.infradead.org>; Mon, 25 Jul 2016 00:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:from:date:message-id:subject:to;
 bh=FvcTB5m2aVqjHN1c+uelUqQzPEQ6RWGgup+6t5oh+nw=;
 b=RcSpZpmlbCfOz2Ny6gkMKWdo7DNmpk8eVSaOEn309cyJvMbjwz9BpmzD4RsXl7ozh4
 RropBCkAZDO4HATHwHbg9uFljVC8CJzOPEVSx0CrnNaXVrMgY79PVe4jg6tkfJeffscB
 h0Ag/B8Ob+LDb1xJzXhDox9raCBkLc7iEb8hSgIuRiPo6CpfWazaHuPSpWMULN4T4PvL
 vgT4AketgshegWDKAZVMsqm2UGdERjCP82kwAmMhbLK1cDXor5UJOHP2BG2jelv6zVHm
 0vZVxoFkbggnF2Og5mFKVUpAdaEQDgjUEcHUvvNMA2zHJp5hdhwJ3YGkET8nFl3IlCzk Zcbw==
MIME-Version: 1.0
From: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Date: Mon, 25 Jul 2016 12:56:28 +0530
Message-ID: <CABPxzY+na77=379E2tRDnbDzE=LOrz9ObahLTLoBTg+hhd8DBw@mail.gmail.com>
Subject: [wireless-regdb] [RFD] mac80211: Handling local operating class in
	(E)CSA
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
To: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

Some AP's use local operating class in (E)CSA IE's. Currently
mac80211 fails the parsing of those IE's and results in a
disconnection.

What is the best way to add support for local operating classes?

a) Maintaining a per country operating class table in cfg80211

b) Embed operating class info in regdb.txt (crda)

c) Remove the usage of band to calculate frequency? I dont know
of a generic formula to calculate this across bands. So not possible.


-- 
Thanks,
Regards,
Chaitanya T K.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

