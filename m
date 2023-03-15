Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:From:To
 :Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=C8wuIYW4jNwrxkFIrTn34Y6jQeyVzP0Y48k8nYak97c=;
 b=0TXnCmb0ot5xBa
 XRdYpgy38xncFAx6lTY9JT8ru2xhhGhg3A2JShuFcffxfFE+iIQxgg0kWks537yb1OKEJXQ16qmTW
 xq4oLXFrirkdioQXEsR2xyJlfUcw3OwMDrUMQWMEs6bnYIVASO9EPbrxCkWh5dH6repNck1UPKc1i
 l0ZqCTCuAzX8gZ8HohEs0E7xH42GzjQDXD76R5VUYo9itf31PA58ENj15qYgsbLGkEq8Hal/hrG+p
 a6UxhRPuTk30sZqnufCzJ6ValEh5Qge2/yESynRKivKrcUK02od95IHsbA4QWJH4isQ3kMQVXZdLi
 XH1cX06Kx1Sy04ADCRdg==;
Received: from mail-40141.protonmail.ch ([185.70.40.141])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcSFu-00DdLo-2j
	for wireless-regdb@lists.infradead.org;
	Wed, 15 Mar 2023 14:37:32 +0000
Date: Wed, 15 Mar 2023 14:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1678891045; x=1679150245;
	bh=eaqZDiUQPcVaVRwGInFeXtM/vbGUBa2dI1gQ+cKvEnk=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=CihPDe1hVhpk4tn4HGkIOSED3w3DZqYs5+anHk0cRE5MDHxoQLhHvKOM9IBX7fwHh
	 ZaRZZE4A3irun9eNb5JW6DU0xIz48Cp/Yl48tFC7y0Ja5kDgDPF4tkwkialTMMo2Yo
	 d/SQy0tL1GS+GeGQyLIM9RtgRbQqBC0fCnhei6QlIpeysyL3GozH68llGc3sIVmKVT
	 po9TT4T9/uwt0hknFeu8GD+eMOEtnUly63YlIcQemPPMTdZbMmbcVV0dy7IToEF1eL
	 RoN85jEOqKobL07b2QJh+wiAw9p7aVE19KqFUSuFLL6vVjaUN0/BcCMExYKJe1lJf5
	 MwpP5CtFqdyWA==
From: "tavio.wong" <tavio.wong@proton.me>
Message-ID: <oiVeDD95tMcpWN4ynhZfWbX0idjaGq3ibft2obzq-RSMVptQ3TncwBf_kcekWctED_IGNRx3BmIACchzsrEcSwH1tcfr3jMRP2S1egcTCpY=@proton.me>
MIME-Version: 1.0
Subject: [wireless-regdb] wireless-regdb: Regulatory rules for Hong Kong
 (HK)
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
To: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Hello,

According to section 2.1(b) of [1], the allowed peak output power in different bands is higher than currently defined in db.txt. I see that the rules for HK have not been updated since 2014. Since I don't understand sections 2.2 and 2.3, is there any reason for limiting the output power other than that the information is outdated?

If not, I propose the rules for HK be updated as follows [section 2.1(a) also requires that 5.15-5.35 GHz be restricted to indoor use]:

country HK: DFS-ETSI
	(2402 - 2482 @ 40), (36)
	(5170 - 5250 @ 80), (23), AUTO-BW, NO-OUTDOOR
	(5250 - 5330 @ 80), (23), DFS, AUTO-BW, NO-OUTDOOR
	(5490 - 5710 @ 160), (30), DFS
	(5735 - 5835 @ 80), (36)

Thank you for your consideration.

[1] https://www.ofca.gov.hk/filemanager/ofca/en/content_401/hkca1039.pdf

[2] https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=7f7a9f7bc6011b072b5427eced1ff19261764e95#n751

Best regards,
Tavio

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
