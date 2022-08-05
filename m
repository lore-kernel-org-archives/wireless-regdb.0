Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=1Nql+EO2MAUhyxl9orE9rSpgWpYwz9oVuG/YZyCcxZ4=;
 b=oruYmQcWpGXJM6
 FAFjaEdKsQ0mGQojnWvUJWL5b7AGAcxZLiVReauoYXk0a1f3j9urP+dqpqqX0THlEEIFLi99JYW0G
 kAuRMEN7baE3ZcdWzdD+Z/6UjFreDFGSqRSw3Ar2DnLKLOKGOBy+Uqc4Z2rHCMAs29vH1ESb35WXK
 hYgKB3DdPWBVZLWcV3GlaEv9CQiU32MlwXn6OLv0/Q2QjsLdTOyWrbg3snkpdlhdTDoWG8XH5/za2
 pa/hAloS8f0aOHIzqljObaG4/hcDNwsbAlPqxpF54uu+GuMl9+kd0UhM1u8Ve6/eyuEnkCdUMxqC2
 x01hklhNZpnKfcFKeAVg==;
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwxp-00FFOC-KK
	for wireless-regdb@lists.infradead.org; Fri, 05 Aug 2022 13:02:07 +0000
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-3246910dac3so23176327b3.12 for
 <wireless-regdb@lists.infradead.org>; Fri, 05 Aug 2022 06:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20210112; h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=ofw0jvZ2/7KI6aHiBQB9FHRJE/XXpHMbSTZ5ybaT/g0=;
 b=fZSgKezadn3PxH17YIepYTNaQr6h8tSIJlVr8DLMjk4seY3iAraSH+qlt0CgEqIZvI
 Mqfb04ByJlYLKPxOs33CPqSYCHXD4KbC0wlkCbhXPCY5VXbHv6ONTjupZAC8COapWpbD
 LW/6cT4UdwdnGrG+TwWgXTVkkFBSKwOb1EFkpFLX5yf0z4NM2DCpZvtQvy1Yas9Vodnq
 ttjQMEb11zhonxorCklIVAeRtTUewbDhHUWwJtm50llYcyuigFX3pZskxvLNMpSs9EeC
 IDmybJSoBgzQ1/PG8IsHDj85V+fZXpU3Gw8yfYgwybsVLxQ2YzWtdKnPeqkUM3j2rUOX cerw==
MIME-Version: 1.0
From: Murtaza Saeed <mnk.saeed@gmail.com>
Date: Fri, 5 Aug 2022 18:01:43 +0500
Message-ID: <CAATNLbwMFDj0UrG1PBNh-dj7GT+GJ2Ud38TzHL=FmMG7wgNNbQ@mail.gmail.com>
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Pakistan (PK) on 5GHz
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
To: sforshee@kernel.org, wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

The current regulatory rules for Pakistan (PK) for 5 GHz channels in
wireless-regdb are out of date and have been recently updated by the
Pakistan Telecommunication Authority (PTA) in June 2022.

PTA has allowed the use of additional 5 GHz channels which were
previously restricted for use in Pakistan.

(5150 - 5350) at ≤ 200 mW EIRP (23 dBm)
(5470 - 5725) at ≤ 200 mW EIRP (23 dBm)

The current channels (5725 - 5875) remain allowed at a higher power of 1W.

(5725 - 5875) at ≤ 1W EIRP (30 dBm)

The updated regulatory framework from PTA can be found at the link
below and the relevant information is available on Page 10.

https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf

If I am correct, the listing for PK in the database should show as follows:

country PK: DFS-JP
# https://fab.gov.pk/type-approval/
# https://pta.gov.pk/media/Pakistan_Table_of_Frequency_Allocations.pdf
# https://www.pta.gov.pk/assets/media/iot_srd_regulatory_framework_01-06-2022.pdf
(2402 - 2482 @ 40), (20)
(5150 - 5350 @ 80), (23)
(5470 - 5725 @ 80), (23)
(5725 - 5875 @ 80), (30)

I hope I have provided sufficient information, and in the correct
format for the database to be updated.

Regards,
Murtaza Saeed

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
