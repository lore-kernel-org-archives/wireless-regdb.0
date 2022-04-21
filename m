Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=JNMpkzPyXLeRq+2Kw90rLLQbF0tjDroXlJpgVT+zUWQ=;
 b=3/sb7zjpptn9Oq
 xD+N7VL/QF3+CVSRMIxA90mvLdWJgwb4+h+PHw4S/CGc8DWRILO8k3TqoZtaLIRTDF5XnYlmY5PQF
 7zs15Mo0x1bbtgA3/hnh/SOsTEZ4VT6xGu8Ctzh5PLEm4a5P8cuiDNIeQxKtk7q6eEng7kW/9j6ub
 Q99tYOYxJuk2Euu068TfYxXl1EEYfson51+CQZbEsPwnQBPt4cRDA2NIVAK4n1OD05pEwPEouN9Vi
 hCN28WYJW+mYkrm7ZFOkm1O/oXJCt1YilWQlDPSuEWxnOus5ucwuFKewQv1DPB/3jJFOgthmuA6zI
 SIkHF8AQwYHAnCk2Da5g==;
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhMzz-00BFMX-N0
 for wireless-regdb@lists.infradead.org; Thu, 21 Apr 2022 02:56:53 +0000
Received: by mail-lf1-x130.google.com with SMTP id p12so737868lfs.5 for
 <wireless-regdb@lists.infradead.org>; Wed, 20 Apr 2022 19:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dbperformance-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AxwD7r4LQacGjoeosdi/CJD24TN6CZbTiTjoOB49kLc=;
 b=r2uDMa8pDWk3xKSvzuVMNlmyU0NK/m99fwh4rSRo0jJXPaJCzeuNcD7s+CY8zE3B+q
 ePknicwI7VRe1vPD/TJFSn9jmRfH4+fNwPQw6Y6KsQt+XhG9xmEdPD9EEV97+3gHCRpz
 kV6XXVNshNEuLzSz3pvJGP/KlvMhbgv4Q1wjOs3k6EMWzDNIZM67znVuMxdfMA4R4LG6
 qNMkrUCfZOwV/aV/U+vJ79t9mSfyk8YLeZntiEmp4rGFcec8YFDJYsTNes+QOoUlIfuq
 8fvIrazeaqy0UigGm9i+EOs5w7IqfhjNA8qRSm37pHudrmp+Mi+49jvdedZbHRvPqNlo
 TKZQ==
MIME-Version: 1.0
References: <CAPRryQrHC2kC-dcokJyqSMiAFUjNJp2z6T9TCb=J+s0TvDzF8w@mail.gmail.com>
 <Yl8UjXhg695+Ts+5@ubuntu-x1>
In-Reply-To: <Yl8UjXhg695+Ts+5@ubuntu-x1>
From: Dennis Bland <dennis@dbperformance.com>
Date: Wed, 20 Apr 2022 20:56:38 -0600
Message-ID: <CAPRryQp6j4UKvLZCkMAuQdaxepMBETQUJ1eNULJSh3ZWXC0f5Q@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Regulatory update for 6 GHz operation
 in United States (US)
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

With the 6 GHz band (U-NII-5, U-NII-6, U-NII-7, U-NII-8) in USA, the FCC
introduces the concept of a fixed PSD (Power Spectral Density) for all
supported 6 GHz channel widths for LPI (Low Power Indoor) environments.
Wider channel widths have a higher noise floor, therefore specifying a
fixed PSD allows wider channels to operate at a higher EIRP to maintain
the same S/N ratio as smaller channel widths.

While the 6 GHz specification also allows a "Standard" power mode with
higher EIRP and PSD limits, these devices are also required to employ
AFC (Automatic Frequency Coordination) which normally requires GNSS.
Currently there is no way to specify different EIRP and PSD levels for
APC and non-APC devices.  Therefore, only LPI mode is considered here.

LPI requires non-client (AP) devices to have a maximum PSD of 5 dBm/MHz
and a maximum EIRP of 30 dBm.  LPI requires client (STA) devices to have
a maximum PSD of -1 dBm/MHz.  The maximum channel width is 320 MHz.

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

6 GHz operation on oil platforms, vehicles, boats, trains, and drones is
prohibited except on commercial aircraft above 10,000 feet altitude.
An IR (Initiate Radiation) restriction is mentioned in the 6 GHz
specification.

signed-off-by: Dennis Bland <dennis@dbperformance.com>
---

diff -up a/db.txt b/db.txt
--- a/db.txt 2022-04-08 09:54:37.000000000 -0600
+++ b/db.txt 2022-04-20 19:02:17.000000000 -0600
@@ -1647,6 +1647,9 @@ country US: DFS-FCC
        # https://www.federalregister.gov/documents/2021/05/03/2021-08802/use-of-the-5850-5925-ghz-band
        # max. 33 dBm AP @ 20MHz, 36 dBm AP @ 40Mhz+, 6 dB less for clients
        (5850 - 5895 @ 40), (27), NO-OUTDOOR, AUTO-BW, NO-IR
+      # 6g band
+       # https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicensed-use-of-the-6ghz-band
+       (5925 - 7125 @ 320), (12), NO-OUTDOOR, NO-IR
        # 60g band
        # reference: section IV-D
https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
        # channels 1-6 EIRP=40dBm(43dBm peak)


On Tue, Apr 19, 2022 at 1:59 PM Seth Forshee <sforshee@kernel.org> wrote:
>
> On Sun, Apr 17, 2022 at 11:15:55PM -0600, Dennis Bland wrote:
> > It seems there was an earlier request on another forum to add the 6
> > GHz band for country code US:
> >
> > https://lkml.kernel.org/linux-wireless/Yb0HabN+Js2iWnOH@ubuntu-x1/T/#t
> >
> > Not sure if a variation of this patch was already applied?  If not, I
> > can take a look.
>
> Nope, nothing was ever applied. Patches welcome :)
>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

