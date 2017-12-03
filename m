Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=S4XiDmHqPF5CeN18+9qA63ODo6bzDJln+HEJMxCj8B0=;
 b=NJJtYEvXNfXxWS
 Othy5qTcuLHFtv2l4x69rJf3HD0LdkdinK+9vqBLcCDgkQE4FXuJmeNqgCEWUOUiPS0HdBVVCflQa
 R4NFAfPB1vSLMxTqd7XGgMGjDWfTOnqQG1Pm65u6Tz9tBKA57WjjaHaqakadsHp7J3DoK/7OejYqa
 cGfFBzq6rmI9eEgQGP9/lPfCkEkVS1GegzPDQ3AaWU24Grf4FBf5Ug4JX3o+7L0GMk8LzTbsmGWUo
 8od8KmCoApIaZUO5h30tNXt4k3EnzDf+GdY9V19HmpU/C7Aw00hxXm5s8clQZv+2J8M8+ZSpXhELc
 VeszMkzipnKc0gydo4CA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLXUp-00070k-76
 for wireless-regdb@lists.infradead.org; Sun, 03 Dec 2017 16:52:05 +0000
Received: from mail-it0-f69.google.com ([209.85.214.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eLXUR-0002sP-Ih
 for wireless-regdb@lists.infradead.org; Sun, 03 Dec 2017 16:51:39 +0000
Received: by mail-it0-f69.google.com with SMTP id g202so7039430ita.4 for
 <wireless-regdb@lists.infradead.org>; Sun, 03 Dec 2017 08:51:39 -0800 (PST)
Date: Sun, 3 Dec 2017 10:51:35 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20171203165135.GA31669@ubuntu-xps13>
References: <a2e41843-e5a5-25c6-fd02-47716563155a@its.aau.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2e41843-e5a5-25c6-fd02-47716563155a@its.aau.dk>
Subject: Re: [wireless-regdb] Update regulatory rules for Denmark (DK) on
 2.4 and 5GHz
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
To: Per Mejdal Rasmussen <pmr@its.aau.dk>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Oct 31, 2017 at 10:53:18PM +0100, Per Mejdal Rasmussen wrote:
> Hi
> 
> I have taken the time research which frequencies and power levels are
> allowed for WiFi in Denmark. So db.txt for wireless-regdb can be updated.

Thanks for this information, and apologies for taking so long to review
this. A few comments.

> Allowed WiFi frequencies in Denmark for WiFi:
> ---------------------------------------------
> 2400,0-2483,5 MHz
> 5150,0-5350,0 MHz
> 5470,0-5725,0 MHz
> 5725,0-5875,0 MHz
> 57-66 GHz
> 
> Source: https://www.retsinformation.dk/Forms/R0710.aspx?id=189932
> Search for "RLAN". The website is owned by the Danish government.
> 
> 
> Maximum transmission strength and usage
> ---------------------------------------
> 2400-2483,5 MHz  ? mW/MHz   100 mW EIRP
> 5150-5250 MHz   10 mW/MHz   200 mW EIRP    Both in/outdoor allowed
> 5470-5725 MHz   50 mW/MHz     1 W EIRP     Both in/outdoor allowed
> 5725-5875 MHz  200 mW/MHz     4 W EIRP     BFWA only, 5795-5815 excluded
> 5725-5875 MHz    ? mW/MHz    25 mW EIRP    Short range devices
> 57-66 GHz       20 mW/MHz    10 W EIRP     No fixed outdoor install
> 
> DFS is required for 5250-5350, 5470-5725 and because of ETSI EN 301 893
> DFS is required for 5725-5875 for BFWA, because of ETSI EN 302 502
> 
> Sources:
> 5GHz: https://erhvervsstyrelsen.dk/sites/default/files/007_interface-datanet_5-6_ghz.pdf.pdf
> 60GHz:
> https://erhvervsstyrelsen.dk/sites/default/files/radiograenseflader-63.pdf
> The website is owned by the Danish government.
> 
> 
> Outdated content of db.txt:
> ---------------------------
> country DK: DFS-ETSI
>     (2402 - 2482 @ 40), (20)
>     (5170 - 5250 @ 80), (20), AUTO-BW
>     (5250 - 5330 @ 80), (20), DFS, AUTO-BW
>     (5490 - 5710 @ 160), (27), DFS
>     # 60 GHz band channels 1-4, ref: Etsi En 302 567
>     (57000 - 66000 @ 2160), (40)
> 
> 
> Suggested fix:
> --------------
> country DK: DFS-ETSI
>     (2400 - 2483.5 @ 40), (20)
>     (5150 - 5250 @ 80), (23), AUTO-BW

Based on the translation of the document, I think this is fine.

>     (5250 - 5350 @ 80), (23), DFS, AUTO-BW

I believe this range requires TPC, which we don't support. So based on
ETSI EN 301 893 the maximum allowed without TPC is 20 dBm, i.e. what's
is what's currently in the database.

>     (5470 - 5725 @ 160), (30), DFS

Again this requires TPC, so based on ETSI EN 301 893 this has to remain
at 27 dBm.

>     # Short Range Devices (ETSI EN 300 440-1)
>     (5725 - 5875 @ 80), (14)

The document you linked to only specifies this range being usable for
fixed wireless access, so I don't think it belongs in the database.

>     # Broadband Fixed Wireless Access (ETSI EN 302 502)
>     (5725 - 5795 @ 40), (36), PTP_ONLY, DFS
>     (5815 - 5875 @ 40), (36), PTP_ONLY, DFS

I'm not sure we should add this ... on the one hand I'm not certain
whether or not it's meant to apply to fixed wireless access or other P2P
sorts of connections, and on the other hand the kernel doesn't appear to
do anything different if this flag is set. So I think it's not going to
be safe to add these rules.

>     # 60 GHz band channels 1-4 (ETSI EN 302 567)
>     (57000 - 66000 @ 2160), (40), NO-OUTDOOR

This one looks okay.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

