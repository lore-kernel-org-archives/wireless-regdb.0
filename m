Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=w0Qg9GELpGuudz+0/Hde16DD9zUQ5Xmts95CoM+I9Mc=;
 b=umkEMx5T7smhxe
 UGk1BtN43eFw9PDp2W4tJZdNGacJFKxlcGoauCDyXDbXlXJiJhPSquRx3ihLSrnCFzKiDcVXY1+5Z
 7mZ+ing5xPMTKrnI7qOgMjVQrRlaCe/UfYHVqJHlFRMUGFuA8FOL2kb0/dYWqyqo1lLcxONkNEJXB
 A+kBOyDqkQ/Bgn6hs1Lx/ke1UVYKaZ5vr4ycLf2h0U7bkD6/zrYnuz9MhlzeMr000rUSYDRbnWY5e
 SiIDqD0AkYzZ9bFsklGuRPLjI1bqWQYqer7VDW7cWTmsGtJfSg2ZaihlAEeA6SAXVZrwE+0e+QG1p
 pDYhqn8KU7E2tW8S/USA==;
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhMkj-00BBRq-Vg
 for wireless-regdb@lists.infradead.org; Thu, 21 Apr 2022 02:41:07 +0000
Received: by mail-lf1-x12e.google.com with SMTP id bu29so6310773lfb.0 for
 <wireless-regdb@lists.infradead.org>; Wed, 20 Apr 2022 19:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dbperformance-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WPnYtzDFjaSLq9gEVI0Mfd5v/Xj1fVA/HLQ1Cx8tnDs=;
 b=YMcoRiWUOWIvOciikNlqb53+DuihYwqICIS9ziTSBmrbwXYnihBCGtAgVjBTujyW5p
 pT/ZSISM0iM8kaoLu9Su5ezrEFmtG2HSJ91klNRGxl/30d7H8+LUUcKgR1hDJ6NYoA4X
 U7WrJ45HdmZuIc+jLrq87iZXNg3u0s1dhbMHiQ9qmfbJSSsccovK2qWvywNxJYAgdPIe
 KP5c6SBWg91j9SZ08btgyazfdmz8JgNsEW9APrp3GkT7GkNFXW8bWH1rQ07/IdRge+RK
 3RSk8C7/qGnS/dfNiSJM5lj+F1i4MWAggES8WRnvYW/shYl8HT7Vpa6s+IbJfV48X21b
 5oJA==
MIME-Version: 1.0
References: <CAPRryQo1mJLF0YkQH1j8N4POSyi0QzUJ=r_fedYHun_9fONyBw@mail.gmail.com>
 <Yl8TLoePjb7eERvp@ubuntu-x1>
In-Reply-To: <Yl8TLoePjb7eERvp@ubuntu-x1>
From: Dennis Bland <dennis@dbperformance.com>
Date: Wed, 20 Apr 2022 20:40:51 -0600
Message-ID: <CAPRryQoEAf+RUZh76tdb-_bLhc2VZpBNSp=9cd8mz8AQiB6iKg@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Regulatory update for 6 GHz operation
 in Canada (CA)
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
To: Seth Forshee <sforshee@kernel.org>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

With the 6 GHz band (U-NII-5, U-NII-6, U-NII-7, U-NII-8) in Canada, ISED
introduces the concept of a fixed PSD (Power Spectral Density) for all
supported 6 GHz channel widths.  Wider channel widths have a higher noise
floor, therefore specifying a fixed PSD allows wider channels to
operate at a higher EIRP to maintain the same S/N ratio as smaller
channel widths.

Clause 4.6.2 requires non-client (AP devices to have a maximum PSD of 5
dBm/MHz and a maximum EIRP of 30 dBm.  Clause 4.6.3 requires client (STA)
devices to have a maximum PSD of -1 dBm/MHz.  Clause 4.4 specifies a
maximum channel width of 320 MHz.  Clause 4.9 specifies indoor use only.
Operation on oil platforms, vehicles, boats, trains, and drones is
prohibited except on commercial aircraft above 10,000 feet altitude.
There is no IR (Initiate Radiation) restriction mentioned in the 6 GHz
specification.

The following equation is used to calculate the EIRP from the PSD and
channel width:

EIRP = PSD + 10*log(channel width in MHz)

Using the maximum PSD values of 5 and -1 for APs and STAs respectively,
the EIRP in dBm for a given channel width can be calculated:

Channel Width (MHz)     AP            STA
------------------------------------------------
20                      18            12
40                      21            15
80                      24            18
160                     27            21
320                     31 (max 30)   25 (max 24)

For channel widths up to 160 MHz, the maximum PSD is the limiting factor.
For the 320 MHz channel width, the maximum EIRP is the limiting factor.

Unfortunately, because there is currently no mechanism to specify
different power levels for AP and STA modes, and for different channel
widths, the smallest value has to be selected, which is 12 dBm.  This
will likely cause connectivity problems with larger channel widths until
these additional parameters can be added.

signed-off-by: Dennis Bland <dennis@dbperformance.com>
---

diff -up a/db.txt b/db.txt
--- a/db.txt 2022-04-08 09:54:37.000000000 -0600
+++ b/db.txt 2022-04-20 18:55:30.000000000 -0600
@@ -298,8 +298,9 @@ country BZ: DFS-JP
        (2402 - 2482 @ 40), (30)
        (5735 - 5835 @ 80), (30)

-# Source:
+# Sources:
 # https://www.ic.gc.ca/eic/site/smt-gst.nsf/vwapj/rss-247-i2-e.pdf/$file/rss-247-i2-e.pdf
+# https://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf11750.html (6 GHz operation)
 country CA: DFS-FCC
        (2402 - 2472 @ 40), (30)
        (5150 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW
@@ -307,6 +308,7 @@ country CA: DFS-FCC
        (5470 - 5600 @ 80), (24), DFS
        (5650 - 5730 @ 80), (24), DFS
        (5735 - 5835 @ 80), (30)
      + (5925 - 7125 @ 320), (12), NO-OUTDOOR

 # Source:
 # http://www.art-rca.org

On Tue, Apr 19, 2022 at 1:53 PM Seth Forshee <sforshee@kernel.org> wrote:
>
> On Sun, Apr 17, 2022 at 07:41:03PM -0600, Dennis Bland wrote:
> > The technical/operational requirements have been available since November 2021:
> >
> > https://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf11750.html
> >
> > If this request is not already in the submission queue, I can look at
> > submitting a patch.
>
> We don't have any patches pending for this, so feel free to send one!
>
> Thanks,
> Seth
>

On Tue, Apr 19, 2022 at 1:53 PM Seth Forshee <sforshee@kernel.org> wrote:
>
> On Sun, Apr 17, 2022 at 07:41:03PM -0600, Dennis Bland wrote:
> > The technical/operational requirements have been available since November 2021:
> >
> > https://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf11750.html
> >
> > If this request is not already in the submission queue, I can look at
> > submitting a patch.
>
> We don't have any patches pending for this, so feel free to send one!
>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

