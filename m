Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:Mime-Version
 :From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=6PupoiuYQraA+fDWDrWbbeYSD75PWL+EDbFu8PjWc+Y=;
 b=esZySjDVPN15wM
 PDLXJTb/VcDu9V/6UfiuAR/hw6kgHizy7iYPpMRm02PJEbEEl9x2P73HPICCUTM+F6AwU3hBZBcTn
 kMNLQIEpYzrP7W4R403DTLpm4XsPPX8DlOuZChOk2FmGpQSbdNK+jjsBSHNUnl0tPzwtQDYEOMQWa
 P6peARCptwanL2bbTOiCAinLP9/zz4IiAQ8RxKll5u9cYNQWxY3tuLwLDGbOS+1ZVzOpBrvZoDKz3
 FckeT0SRCwSsYsW0C5f0M88h+wRqtOTWDN+ocZv7ZFpP7TsAyVaefJJtaim1Cfx4SQP2NwHoPf38D
 wRd4UC1QxvPOZSnFzl+A==;
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i26x1-0000aJ-85
 for wireless-regdb@lists.infradead.org; Mon, 26 Aug 2019 04:49:56 +0000
Received: by mail-pf1-x434.google.com with SMTP id q139so10927939pfc.13 for
 <wireless-regdb@lists.infradead.org>; Sun, 25 Aug 2019 21:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:message-id:date :to;
 bh=05W865XPT0RQlQKduPFmRwfvzRuN/ZBRqbRU2ELIGMo=;
 b=rAAYBUSf/d/dxJOFjZSU9tUys30SV72U98HOsjM2ceqh9cRwyrrEMGi4DdN2eXmX3z
 ONj+ePzb8pqdHymDD4RUDNZrfKW+ccexGZWmyYpLky8RCy+Cg3NQftx2N2FAmxDJxEyQ
 5MRDsDtF8RJT8+oyrHNoWZ2OC0DHjcKV6rn7qUqUnwrVmM7N4dESUFxPmktjFrwrJqPa
 w1xtx+Qpgr1AXv0M4o27HBPLor8+z5C54NMUZgwh0Q6pLZJ06fTBILXhK6TDBCcBfAHG
 /2azdNjFY6HKlzKFzHDlK9S8ZB3FgdeO2ILbedMzPhIFr23Sn693jy6CMniwlTqydPeQ OLhg==
Received: from [10.128.5.75] ([117.20.41.9])
 by smtp.gmail.com with ESMTPSA id e6sm11277743pfl.37.2019.08.25.21.49.52
 for <wireless-regdb@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 25 Aug 2019 21:49:52 -0700 (PDT)
From: Pandu Gunawan <pandu.gunawan@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <F2D43387-B3E7-4A9A-A8A9-857978571C03@gmail.com>
Date: Mon, 26 Aug 2019 11:49:50 +0700
Subject: [wireless-regdb] Update on Indonesia Regulations
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

Hi, I subscribe to this mailing list as apparently Eero is using your database to update the frequency in their device. I notice from the db.txt that for Indonesia, it refers to the old regulation of 2010. I understand that earlier this year Indonesia Government just issued a new regulations on WLAN.

WLAN devices can now operate under one of two roles:

	• Outdoor Systems in the bands:
		• 2400-2483.5 MHz (Max EIRP 4 watt and max bandwidth 20Mhz), and
		• 5725-5825 MHz (Max EIRP 4 watt and max bandwidth 20Mhz)
	• Indoor systems in the bands:
		• 2400-2483.5 MHz (Max EIRP 500mW and max bandwidth 40Mhz),
		• 5150-5250 MHz (Max EIRP 200mW and max bandwidth 80Mhz),
		• 5250-5350 MHz (Max EIRP 200mW and max bandwidth 80Mhz), and
		• 5725-5825 MHz (Max EIRP 200mW and max bandwidth 80Mhz).

link of the news: https://nuzeal.com/index.php/2019/05/29/indonesia-changes-for-short-range-devices/ 
link of the regulation: https://jdih.kominfo.go.id/produk-hukum/view/676  

Appreciate if you help in updating this in the database. thank you.

Regards,
Pandu
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
