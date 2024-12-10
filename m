Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFD27E7717D
	for <wireless-regdb@archiver.kernel.org>; Tue, 10 Dec 2024 03:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PuF4KpktRoMjj2LgIzDS0P7FgH2EXyHF2Fregf7Z3v8=; b=KzXEf06GkX68F+J1120bCa8gBw
	Ffc/MxGnx71P71+s5i+vvQbBPv1QDTZm+DEthi72YM/ylPLRuRROo91AU+wDhGMen1fInTFIltgQN
	/Ij26pweszwJsRqMrd3OCyL6A1p64OwIE5ttmo0846GRb7AdfpwDbvU1YLIpvLQmSzP5aTDTwjJdW
	uuJuaAKiFNQiTP2LvS+uKyKiQRSSi6sBreBTXnnIB7YEOedWKJBEhS6Y6YzMnx9G25Ri425fEPLE7
	m0aqjwbxpATr3vFSSnZGdCoc3ZUe/QvTIriGGEzQ6QKwrCskDt3nyjsjiEwB2SP6zBqPXEel0irYq
	iKv11d4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKqV5-0000000A3kT-3n3W;
	Tue, 10 Dec 2024 03:01:27 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKqUV-0000000A3ff-2qB3
	for wireless-regdb@lists.infradead.org;
	Tue, 10 Dec 2024 03:00:53 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-725db141410so1861824b3a.2
        for <wireless-regdb@lists.infradead.org>; Mon, 09 Dec 2024 19:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733799651; x=1734404451; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PuF4KpktRoMjj2LgIzDS0P7FgH2EXyHF2Fregf7Z3v8=;
        b=BZHNCRbs2temSvfAd2MZW4VhYGgyP3Q3/RNlLOboZ+DP2D2xlIO8VNjO+QT5OUV6QH
         Jhuw/zftvHz6PznFZQFpk4CUOoK6Yk5UfFQihcXVaTLYhLEMU86apgJX4nHNOUSI3mJS
         b+S1EKKOrElvElqDsvX/Ovqwr/nJBkC4foTzLGjjljqKbOV7kFyTGX3zaUYp4T7O8+hx
         V6tYj05PqHMyt/3TIZiElr24q3deFfrV4297CkCZkcog6I3wdjx+PnkMEFz190O60aeC
         zuvDg7VN78+JcI2PNZ5NxIcIbHsX6J1sT2xMTYsBvb8jXbAMIGvWIPCxbguacDVmHFOH
         sY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733799651; x=1734404451;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PuF4KpktRoMjj2LgIzDS0P7FgH2EXyHF2Fregf7Z3v8=;
        b=w2OUB3gupbz0tpySQxR0GwKXLUXgHJ4XPJo48d3NCJVXDL0WR+6znXbvbNkpJKZ7OB
         EXwmHUanJq8qmCqzw0cvW75xABmz03UMciIrgW7pxT0Wc5wocpz8ontPUp34X5/3JnQd
         3Hi2ZPzoTzxSlzdl01bDY76zA8uE02bGD1zURTiIzYbbuool11hdmo4qRdNVMMu25yRg
         9ny83XdTXoDGtE4en7PrWqYYymVwAoJWO+Micc+HHamUqN8RSZ0bsJbAfCEEbRnRjSjE
         eq0cSc8MrEoRLNQVXi/XqSjny1yipIvgsnZjOqVKXVHRxtEHLd0YhEDYrrrFqMl4IbOZ
         v2Kg==
X-Forwarded-Encrypted: i=1; AJvYcCXx5t0tc0HUcyzI3ThVfxMUS4FseFp6/bj13wpMsoguVMheq2FZdFSZvM/drX35gIVAxm0MzXlwXI2pZSkG7A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxRR8hmJa1AlMF6SY13USuHGoVWlZ/bFYs/L8Yn1zEBAk5syarx
	saJpdlsgCSmYN4iat5MB/ZwgEdvr1zYBvf3FNjFiM5uKoDy0RxQO
X-Gm-Gg: ASbGncvmpvWI+8XkH7LwwQ3EOTrfkHxCnEs3D/Xvo3HhGibhJ+hXtNSR+XScxGh1d7g
	mnkMAzapHEe9ASExKHkQgke1igqNx2MGHXUmS3bm2K+3mwesNlvepLLFqEl1EHm8qiX96gMpATL
	XGxrPlGTHTaJNOwOhwYEo/BCKIA6obSR3h3pFoQ9/jcZrEMVuLUyp/hWVkfu+nUy8dbHTcfGyIs
	BQyhZaj9B7XE8WE8jokb5u4SpnAlUNMn5siFCHQPRhyW1tc3Ah7EyC+93N86dObQmQZQ++IguAL
	DDVCxvePJgxwZ/xxFjca
X-Google-Smtp-Source: AGHT+IEBvEnR+R0mttxHfe0ZTZil1rWtAnX5H72IFzLjxPlNGuvhgYO8YxBZUPBMPLbHrp3Zz2p9gw==
X-Received: by 2002:a05:6a00:b91:b0:725:b347:c3cc with SMTP id d2e1a72fcca58-7273cba78b1mr3966391b3a.23.1733799650593;
        Mon, 09 Dec 2024 19:00:50 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-725eab24e05sm3062234b3a.133.2024.12.09.19.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 19:00:50 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org
Subject: [PATCH] wireless-regdb: Update regulatory info for Cayman Islands (KY) for 2024
Date: Tue, 10 Dec 2024 11:00:37 +0800
Message-Id: <20241210030037.6380-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_190052_355486_31CEBD23 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

From: Ping-Ke Shih <pkshih@realtek.com>

Utility Regulation and Competition Office, Cayman Islands, released
Operating Parameters for Wireless Data Transmission (including WiFi)
Services On 18th November 2024 [1].

Both FCC and EU reference are permitted. Adopt FCC reference.

* 2400 - 2483.5 MHz
  - Part 15.247
    * 1 Watt
      For systems using digital modulation in the 902 - 928 MHz,
      2400-2483.5 MHz, and 5725 - 5850 MHz bands: 1 Watt.

* 5150 - 5350 MHz
  - Part 15.407
    * 250 mW
      For client devices in the 5.15-5.25 GHz band, the maximum conducted
      output power over the frequency band of operation shall not exceed
      250 mW provided the maximum antenna gain does not exceed 6 dBi.
      In addition, the maximum power spectral density shall not exceed
      11 dBm in any 1 megahertz band.

      For the 5.25-5.35 GHz and 5.47-5.725 GHz bands, the maximum conducted
      output power over the frequency bands of operation shall not exceed
      the lesser of 250 mW or 11 dBm + 10 log B, where B is the 26 dB
      emission bandwidth in megahertz. In addition, the maximum power
      spectral density shall not exceed 11 dBm in any 1 megahertz band.
    * DFS: 5.25-5.35 GHz

* 5470 - 5725 MHz
  - Part 15.407
    * 250 mW
      For the 5.25-5.35 GHz and 5.47-5.725 GHz bands, the maximum conducted
      output power over the frequency bands of operation shall not exceed
      the lesser of 250 mW or 11 dBm + 10 log B, where B is the 26 dB
      emission bandwidth in megahertz. In addition, the maximum power
      spectral density shall not exceed 11 dBm in any 1 megahertz band.
    * DFS: 5.47-5.725 GHz

* 5725 - 5875
  - Part 15.407
    * 1 W
      For the band 5.725-5.85 GHz, the maximum conducted output power over
      the frequency band of operation shall not exceed 1 W.

* 5925 - 6425 MHz
  - Part 15.407 (but no description; reference [2])
    * -1 / MHz (12 dBm is adopted)
      Accordingly, the Commission concludes that the appropriate maximum
      power spectral density for low power indoor client devices in this
      band is 6 dB below the limit for access points (or -1 dBm/MHz based
      on the adopted PSD limit).
    * NO-OUTDOOR

* 57 - 71 GHz
  - Part 15.255 (but no power value; reference [3])
    * 40 dBm
      The average power of any emission shall not exceed 40 dBm and the
      peak power of any emission shall not exceed 43 dBm.

[1] https://www.ofreg.ky/viewPDF/documents/2024-11-19-16-28-50-OfReg-WiFi-Permitted-Parameters-V2.pdf
[2] https://www.federalregister.gov/documents/2020/05/26/2020-11236/unlicensed-use-of-the-6-ghz-band
[3] https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf

Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
 db.txt | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/db.txt b/db.txt
index 24195fcac004..37597f9add41 100644
--- a/db.txt
+++ b/db.txt
@@ -1066,12 +1066,15 @@ country KW: DFS-ETSI
 	(5470 - 5825 @ 160), (24), DFS
 	(5925 - 6425 @ 320), (200 mW), NO-OUTDOOR
 
+# Source: https://www.ofreg.ky/viewPDF/documents/2024-11-19-16-28-50-OfReg-WiFi-Permitted-Parameters-V2.pdf
 country KY: DFS-FCC
-	(2402 - 2482 @ 40), (20)
-	(5170 - 5250 @ 80), (24), AUTO-BW
-	(5250 - 5330 @ 80), (24), DFS, AUTO-BW
-	(5490 - 5730 @ 160), (24), DFS
-	(5735 - 5835 @ 80), (30)
+	(2400 - 2483.5 @ 40), (1000 mW)
+	(5150 - 5250 @ 80), (250 mW), AUTO-BW
+	(5250 - 5350 @ 80), (250 mW), DFS, AUTO-BW
+	(5470 - 5725 @ 160), (250 mW), DFS, AUTO-BW
+	(5725 - 5875 @ 80), (1000 mW), AUTO-BW
+	(5925 - 6425 @ 320), (12), NO-OUTDOOR
+	(57000 - 71000 @ 2160), (40)
 
 # Source:
 # http://adilet.zan.kz/rus/docs/V1500010730
-- 
2.25.1


