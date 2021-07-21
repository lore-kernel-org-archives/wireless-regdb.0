Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=7QdKBqN482/irna9zuOmS5PLhS5d+PILAwONS18XKUk=;
 b=T6R7eGhXGTxgeV
 nUdJGSsyJ6xn6sVEsfcgdwvnePKQ/8W5IS8lR15YnpRU42ZYydTzdasc0sY7hUDPRvwgKTHZ50NHO
 opg1APFQaU3DL2ZYpxQo/W2R8VgUpOUi7YkORvk7cz7HFEIEq6NfkxgmvaTgIoKywlfHJWIKW7Ge8
 ZKKJeaTJZJJMNxlJxY8RMSkkrVyTBJrCQbWyapRhcX2F0xWxOIKFgAKu2vZQ9JZIbOMViZhyrdIk0
 IAgwrkQ6du9+AKNscjeECplYO047nRgwaPvvIoPedEl0nR6TSiI50pziqfumwUdoymvFf+MMTpjL1
 J2tjeKRnHDLcbSn8enSA==;
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6DdC-00G7Lu-KN
 for wireless-regdb@lists.infradead.org; Wed, 21 Jul 2021 14:55:32 +0000
Received: by mail-yb1-xb33.google.com with SMTP id g5so3620477ybu.10 for
 <wireless-regdb@lists.infradead.org>; Wed, 21 Jul 2021 07:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UmsZjPxH8FFxWnaoHfCAeuJj3SPZVHDgTz7Y67PjsJw=;
 b=qXF6UC97hj/Wdh0m7Ge7VrRo7v5oDgIagVPIcGwkl6aYfGtlUBoH0bjq5p0rab6BHV
 O0oIHlRv2xsyWiv5e1xtyHCI3oLvjsY21U12zc5hyt3fda8T/DOCh1MPb8YaiEjR16PC
 1TbcahEnGdE4ZQm5gXEKtaTeDdGTcvKdqKT84/muCwiNPeXTGjWSWcCSodfo4V2Sk9Ou
 6AsvUrGseF8ehUL9LCRrbMrkg5+kfp/1zqWon2vd1LZjKB2/hZoWc7anhyY/ymuRDKGf
 PwlHRWyWNACm5bQEl0yuWNR09FG9VXQf9H3lDdpPhTWqDF2bt2RFIYQKNPb8QcbupQz/ AnaA==
MIME-Version: 1.0
References: <CANB4YXTf0DhJfL6kPa26ZCzj8FRwwdw_enGROzL-zXuWGyrwOQ@mail.gmail.com>
 <CANB4YXRtyvgu946rL=gxaRqhXja1qfBQ+DSYfiMvYcax7o45EQ@mail.gmail.com>
 <YPgvMph+3vRbrol3@ubuntu-x1>
In-Reply-To: <YPgvMph+3vRbrol3@ubuntu-x1>
From: Timo Witte <timo.witte@gmail.com>
Date: Wed, 21 Jul 2021 16:55:17 +0200
Message-ID: <CANB4YXRcr=XM00r_mz2ejAfuYwHMibffOcxNiDP=acpmFUchMA@mail.gmail.com>
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
+# https://www.bundesnetzagentur.de/SharedDocs/Downloads/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/Allgemeinzuteilungen/MobilfunkDectWlanCBFunk/v>
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
