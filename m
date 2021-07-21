Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=a+xkwB6V2N3Gwl+qrExg/3/jNnftOIB4IRaWQHykQII=;
 b=Wsc+2o6fD93kTU
 ykF0FDFvgHGgm0sY4h3CcVJkkX8Je77yYsBR5eAz33RJNRZKTbYODMDXXUjSaBCOD0rgglccbcuRl
 THiXpoKV74K9EfTyFLUPJQVJ5y7haOaFqpxb0M2W2K2EsEWM9N23uOI2pm/giPgN09W4dhUjDj/xh
 hr8mopGbtJ53nONRXdnmumwNwuSDtKZXbLrfUWaZ+HD+aHXaCYP0mKoTsepwcFllb9pK+gh1gyVWW
 +ttWtG+tR59EB67P3mrhtCdbPw28z9kv1RWsz3AXm8+NftqkSvnAmQKa19/s3jL6lXjvp907tMzZT
 hb94Oz06tqiR1KvwPamg==;
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6Det-00G7ul-6P
 for wireless-regdb@lists.infradead.org; Wed, 21 Jul 2021 14:57:17 +0000
Received: by mail-yb1-xb35.google.com with SMTP id x192so3650198ybe.6 for
 <wireless-regdb@lists.infradead.org>; Wed, 21 Jul 2021 07:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8dnBbcqLM6HFKu6k8qAqy2NQB4jOc43AcKD5Q4tuTwU=;
 b=qtul2um0szTmZOrPf5ZtuQbmcQZtU3yRmrBHzN+qQXo33H0NRsvh8PdsZKhUDw9UWJ
 wFWvM6r0OS4Uy4TxtvZCVkmqvomMeViBkYJSSFgEcF06qbV6sq6YV/r3+L3SejEREHBd
 MKT4K5i/AV/sor77UmWPivsB9NxJ8nKB4FCu7F47Ho6cZJVN8pCC+buyZVx5v632jUHT
 m2mrFTwNgXjWj389tZSgKwDBtNXXIYfsLh8tMV88kxfl5aqYMsND8ND2e9s9n33fgiEy
 LVoN0RSCjv6jBxPkLVOvM1M+aQa11lIe0+4JJ/AeUzKoeS98dhY7ztzESlFsPcvxeQF4 IkaA==
MIME-Version: 1.0
References: <CANB4YXTf0DhJfL6kPa26ZCzj8FRwwdw_enGROzL-zXuWGyrwOQ@mail.gmail.com>
 <CANB4YXRtyvgu946rL=gxaRqhXja1qfBQ+DSYfiMvYcax7o45EQ@mail.gmail.com>
 <YPgvMph+3vRbrol3@ubuntu-x1>
In-Reply-To: <YPgvMph+3vRbrol3@ubuntu-x1>
From: Timo Witte <timo.witte@gmail.com>
Date: Wed, 21 Jul 2021 16:57:03 +0200
Message-ID: <CANB4YXSDuYndC26KPkV+XqPkowbN54MMceuj7MNaxh+EwLN4kw@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Germany (DE) on 6GHz
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
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

From f9a99269b00f961e40024632c7b831c615bfa392 Mon Sep 17 00:00:00 2001
From: Timo Witte <timo.witte@gmail.com>
Date: Wed, 21 Jul 2021 16:51:40 +0200
Subject: [PATCH] add wifi6e for germany

Signed-off-by: Timo Witte <timo.witte@gmail.com>
---
 db.txt | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/db.txt b/db.txt
index 1e5ed03..411b7ac 100644
--- a/db.txt
+++ b/db.txt
@@ -448,6 +448,12 @@ country CZ: DFS-ETSI
 # Bereich 57 GHz - 66 GHz für Funkanwendungen für weitbandige
 # Datenübertragungssysteme; „Multiple Gigabit WAS/RLAN Systems (MGWS)“).
 # https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/2011_08_MGWS_pdf.pdf
+#
+# Allocation for the WiFi 6E Band (Allgemeinzuteilung von Frequenzen im
+# Bereich 5945 MHz - 6425 MHz für drahtlose Zugangssysteme,
+# einschließlich lokaler Funknetze WAS/WLAN („Wireless Access Systems
+# including Wireless Local Area Networks“))
+# https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/MobilfunkDectWlanCBFunk/vfg552021WLAN6GHz.pdf
 country DE: DFS-ETSI
        (2400 - 2483.5 @ 40), (100 mW)
        (5150 - 5250 @ 80), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
@@ -455,6 +461,10 @@ country DE: DFS-ETSI
        (5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
        # short range devices (ETSI EN 300 440-1)
        (5725 - 5875 @ 80), (25 mW)
+       # WiFi 6E
+       (5945 - 6425 @ 160), (200 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
+       # WiFi 6E Short range (Outdoor allowed)
+       (5945 - 6425 @ 160), (25 mW), AUTO-BW, wmmrule=ETSI
        # 60 GHz band channels 1-4 (ETSI EN 302 567)
        (57000 - 66000 @ 2160), (40)

-- 
2.31.1

On Wed, Jul 21, 2021 at 4:29 PM Seth Forshee <sforshee@kernel.org> wrote:
>
> On Mon, Jul 19, 2021 at 02:20:34AM +0200, Timo Witte wrote:
> > The bundesnetzagentur has assigned WiFi 6E frequencies for germany you
> > this is the
> > publication of that change:
> > https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/MobilfunkDectWlanCBFunk/vfg552021WLAN6GHz.pdf?__blob=publicationFile&v=3
> >
> > Following frequencies have been assigned for general use:
> > 5945 - 6425 Mhz
> > maximum (200 mW)
> > No outdoor usage is allowed for 200mW
> >
> > For "very low power devices" outdoor usage
> > is allowed, but only with (25 mW)
> > same frequency range 5945 - 6425
> >
> > There is no DFS requirement.
>
> This all matches with my reading of a translated version of the
> document. Do you plan to send a patch to add this range? If not, I can
> send one.
>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
