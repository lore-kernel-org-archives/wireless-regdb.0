Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E0DDC25B74
	for <wireless-regdb@archiver.kernel.org>; Sun,  2 Jun 2024 17:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/ZDB+F+j85mnK0lU0M3skpX54GlvMP+ivAN3er2aWmQ=; b=P0OvM93odovALyIjS0g8JERX9e
	vTsr6G07oSeMj93MkgRAHGVnFbdPhgzdBaq0E5PSzEq5AAUgOwa4+EL+AiFZMdM/TjrKCKHU8uU/l
	M3XxGc69IYe4ZseEDoibwynI406JMcjGcX7RlYpiwgyjIUJY6Xf2NPY20dMvhbFxyn/0vAj7Wn2bt
	B0lsE+a8OSCRRWhhmZidn9+OU52mB/FzdysgQ7pK1LxbGRE7dUT4LtBL0m00EtZKJ+PCfziME4ZfV
	7RfReomAq8riGsMd0jWBaDUnNV6ViQ96ibwNAz9tlxxihlxR+cIAsEF9gh+5TAo9VggHe/Kw2BqCb
	s1esmBQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDomA-0000000EeAY-0s3z;
	Sun, 02 Jun 2024 17:13:46 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDom6-0000000Ee9t-3EEg
	for wireless-regdb@lists.infradead.org;
	Sun, 02 Jun 2024 17:13:44 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-57a4ea8058bso1095595a12.1
        for <wireless-regdb@lists.infradead.org>; Sun, 02 Jun 2024 10:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717348417; x=1717953217; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/ZDB+F+j85mnK0lU0M3skpX54GlvMP+ivAN3er2aWmQ=;
        b=k0g2iZd8qkWRMGIU+dXNgrx/aQlNzkZTDUllGrNokgGXaEGUchz2pLCObB0VIp+T8O
         OfZvWMnysitBAGhJkk7DW9e5bUJD+CxU+yiMRIO58bdBEzrODEpi3cVjRrCnai2O9EJc
         nat1o736aZ6HyT0Hr4uO0jbgVfaF/8Wc+SBWQ3Xy7gR0jCmzWVUVosZS5mJ7AsRBrX6W
         BpKtWDBgki5FoMoXnjhYsSzakqKWz4yhi2G6cBEMnF2gGKC8ArpzsKr+5GDMgSXNTBo2
         END76Cweh+9GeGw+pjo0ey1x5rtGjM8R8HJLUYe7XvsnV2zHaWfdYn0CWyobFZ2URSKf
         nzQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717348417; x=1717953217;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ZDB+F+j85mnK0lU0M3skpX54GlvMP+ivAN3er2aWmQ=;
        b=UAOoLoOMz+Bx+HK0E48YuaKrzjQI054HYxWQt5cZExDtU6f3CislfkEWqAHuLSFRRz
         c9RUk9ROfPiJWXpKkVpNZZA04apJi2Akv5r4bK4N5K4TUSDMLcBrG3l5Ym9H3xfyWIMU
         F91zFbkPVRMdytwv5owM8EVpl4d/8cEdv3IKQEyBygy2H4R0igLAixY0QiP7CpWvQ1+l
         JZ+S+j0bHb+Mz+oTnHERdbkfSlJWyabJML9xRmtZi3L1iE9JaYVa7AgQYiZZMmagRarX
         159lqesR3/vO1Ryh170q3eKP8FWPMKB6FqnZFynCDeHAnWCQlKAMl07rgAXFv7vPdR3S
         RUpQ==
X-Gm-Message-State: AOJu0Yz661SZoSyEKU4td+Bz9exiZ8Sh8dO0W+J887XjOrbjUGTT9LIn
	3ka7VP3Z1jTXBezH/7sNtNW/RcoA1pGiRHi6Q0UzZnjTk5hVv9bnMqhl0s8cl6hK8Muh0RVmjx5
	o46dQIb/yN0QcrPEDeQ/ePyTXghe/FHGC
X-Google-Smtp-Source: AGHT+IFy522oKZwlZBT2+jhqvW8soq8pqqLgzzR5GXE0sHU4uLZ+3vaKj0e3VKnO+B/d8I440yxadNtv0PCmn4mJuX0=
X-Received: by 2002:a50:d794:0:b0:578:676e:324 with SMTP id
 4fb4d7f45d1cf-57a36393dc7mr4029820a12.17.1717348416512; Sun, 02 Jun 2024
 10:13:36 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?VGFhdmkgRW9tw6Rl?= <taavieomae@gmail.com>
Date: Sun, 2 Jun 2024 20:13:00 +0300
Message-ID: <CALfTr+pXU_=ORh2w3GE+YiU9igh61uWZS-zdG1GyKFb5Qs6fTg@mail.gmail.com>
Subject: S1G and 6GHz channels in Estonia (and EU)
To: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240602_101342_836233_481E4322 
X-CRM114-Status: UNSURE (   5.61  )
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

Hi!

I have a few questions about the current regdb values for Estonia/EE and EU:

1) There are no allowed S1G/HaLow/802.11ah EE (or EU) bands:

Based on resources online and Estonian law
(https://www.riigiteataja.ee/akt/117052024018?leiaKehtiv - Extra 6)
these two additions should be correct:

+ (863 - 868 @ 1), (25 mW)
+ (915.8 - 919.4 @ 1), (25 mW)

(Note: I don't see a way to define duty-cycle limitations, but that
should be okay?)

2) There's seems to be a missing 160MHz channel (50):

This combines the restrictions of the two existing defined bands it
overlaps with (https://ttja.ee/eraklient/side-ja-meediateenused/raadioside/wifi-seadmete-kasutus):

+ (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI

3) The 6GHz band should also have an outdoor limit and probably also
allow 320MHz channels (at least in EE):

- (5945 - 6425 @ 160), (23), NO-OUTDOOR, wmmrule=ETSI
+ (5945 - 6425 @ 320), (25 mW), wmmrule=ETSI
+ (5945 - 6425 @ 320), (200 mW), NO-OUTDOOR, wmmrule=ETSI

Would a patch for these be accepted? Should I update all EU countries
(considering it seems harmonized within the EU)?

Best Regards,
Taavi

