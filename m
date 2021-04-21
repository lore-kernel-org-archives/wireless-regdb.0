Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=desiato.20200630;
 h=Sender:Content-Transfer-Encoding
 :Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:To:From:Date:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=2ErGev4AP/4hvWH02kHZPqWiUK3qMsg1B25PZDAEdMw=;
 b=lN3D57fQgkX7xSlSAWVqDtUK2v
 WisrHMUBeLM5020orJM23uT47s7bcZL819UnjriGb5MRlhk5AOy3I8CX3BFbYyNiLfXRwQ0/RPgpN
 s/32L2BoAgTBiuQt644GOnNaK52q4T0n1eQ1Vc1gR07DNDHj71mpWgp4BCLauB9Tlh5uL6pUs8CGv
 HLGUxf8h/heUxTdvJp/cvFtGbl4qYWGTq8joF1okMMW1GBkUsEZ5vKtMo7Dk+VPBXKqfEwsHuhjBm
 AFAoa7lg5rGBXdRRK0ncabx7M2+OVD06YyVHsUC2QBWMyyUAImUlRgrGJu1OpCSFaoVTxbkoNQXmy
 KHUImcng==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309;
 h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=NmgIzF+TdTto4V1xcKQTFBB+DXxgoKnXwHwB6ybu5P4=;
 b=DFeLqQQVOeq5Jlf9YncLjIQyO9
 0oFUfv+eCmfDzT8mZftonYKEX/dg6aAH7gAceV/Nd8uNfeup6BUwetpIOYUMA6NWz+95P/RG0ShxY
 yiCXf9CYztNHmWgnxMNKwbCayz1NBu3gg8RqobbUFL5Bq0pGPXu6hsyYYXYOqLcDn7jmRieuB+vss
 FBwJMn0k9/QN62mAf7Si2TgzqY5ga4kAp4vEga0tc3gB/xRh+07HlHiqR2zmp47O76B765dMoaIqi
 ivp7LnLz0d9DX9kS2twqgQiMiIKGccTO4SyWjma35eC11JdxWIkWKpIEke6hpu71YADTV2SOrjzo3
 7lEtStOg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZFWj-00D1Og-7T
 for wireless-regdb@lists.infradead.org; Wed, 21 Apr 2021 16:16:34 +0000
Received: from mail-ot1-f70.google.com ([209.85.210.70])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1lZFWg-0002NN-LT
 for wireless-regdb@lists.infradead.org; Wed, 21 Apr 2021 16:16:30 +0000
Received: by mail-ot1-f70.google.com with SMTP id
 r18-20020a0568301352b0290297f563c5adso7128662otq.9 for
 <wireless-regdb@lists.infradead.org>; Wed, 21 Apr 2021 09:16:30 -0700 (PDT)
Date: Wed, 21 Apr 2021 11:16:28 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YIBP3GZr4MoVRFWo@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2021-04-21
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

A new release of wireless-regdb (master-2021-04-21) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2021.04.21.tar.xz

The short log of changes since the master-2020-11-20 release is below.

Thanks,
Seth

---

Illia Volochii (1):
      wireless-regdb: Update regulatory rules for Ukraine (UA)

Jose Daniel Rodriguez (1):
      wireless-regdb: Update regulatory rules for Cuba (CU) on 5GHz

Nicolas Cavallari (1):
      wireless-regdb: Do not hardcode 'sforshee' in the certificate commonName

Seth Forshee (1):
      wireless-regdb: update regulatory database based on preceding changes

Xose Vazquez Perez (2):
      wireless-regdb: update CNAF regulation url for ES
      wireless-regdb: re-add source url and info for CU


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

