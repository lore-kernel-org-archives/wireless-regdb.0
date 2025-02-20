Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99D42C021AA
	for <wireless-regdb@archiver.kernel.org>; Thu, 20 Feb 2025 00:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/wVM9iAbMm11U5QAmsHItwzcKVUUL3DYXKcGmr/7SyI=; b=3UXXsNg8GaUx1TQWZXS1PaENg0
	fsLmFyZ64D/yT0HDTZCiMpIRhESRHveFp6cVdy1WtgTPIWgv4ddsMMmHYNoxMopPNnKuVII/V/g1l
	7JcmRKBr1zxJIa9HuznMqXqchLfeuQ5sXYwn8y/kfjyF+gE9+1gVPG9s2SVBcGaHhSgmnrmI2rWKx
	85s+aGvLa8vy5QZECvCst08J1xPEwm/vZpHR7sqwymz6YUsiC4rfckHCuI04ziJTD10PX6yHvYNJq
	uRlFkS3Sr8cnjpA9KoljKuaYZa0HdaG0DyIOgTpRt/v7HgOElh7uyQGD37DRd+AWgLNul9A8N6u1h
	CGDcVkFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkuTk-0000000Fv6e-1sto;
	Thu, 20 Feb 2025 00:31:48 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkuTh-0000000Fv5I-39TT
	for wireless-regdb@lists.infradead.org;
	Thu, 20 Feb 2025 00:31:47 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-220c8cf98bbso6778555ad.1
        for <wireless-regdb@lists.infradead.org>; Wed, 19 Feb 2025 16:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740011504; x=1740616304; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/wVM9iAbMm11U5QAmsHItwzcKVUUL3DYXKcGmr/7SyI=;
        b=D/3deewBaUsTl4H55bBouaUvjy9fUEPxuHjXQikASfS86splkevvMF38P9bzfR/NwU
         ZuGI9g/f+Ym6hskPBDNw+hHavx0yiXC1B2DtlVbkb8DerWLT7fOSrmCrejyif90IubLK
         QshDwmGHDFAJZa33wo8qDb496Hi7bHC20u+nk7vqWZjQRIX47bxGb0j9tvHV3nbCfB4p
         Lb/d0wknRWYgqXzeR8zScaVp7dLEgb4ENGQvU1XuXRsgh/yOD5cCY4nyHiXMRS6EeD2G
         6cu8ObcnsQCP+mK0CxOL9YoB2b6BL5OKFsCKo/ZT4MU09DQQQoMFtBpS0DB5f2B2Ys0S
         /o8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740011504; x=1740616304;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/wVM9iAbMm11U5QAmsHItwzcKVUUL3DYXKcGmr/7SyI=;
        b=PlIncOErKxmmrfxcj7b6u84yQVp221JXXQ+h555k30B3xjfsFBJ4mdYiKgg48nztLh
         Qv88ZPl1O9l9A53Dr7Bhj0Wc0LYItz/BPC9bKMLtsnupEtiZjNZCNXnv7i2yHsk7It8J
         SAzL/Iy+mDyVQM76rRx/u2i0nwjFITPGNZtndN3KOeyD4Q6Z47DJmKLUlaDVnGeav85T
         6AVvSd+No1w1pDMddRNafX3XdKAqenoJItsZQy7KGYbCbVuuOH+PwZckJiIKXkG27yWx
         N7nn0eCqG0tNG45jbJxzp0ql2uJKbdYGgBrx9tT8r3btwe8I2aXBDfPZlrjJPHf/Z3uJ
         rH8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXrABmMR8bPJ6ihaqffIHGcppjJOMnKbNUNTwdFw8zXqETPPMf/OFiLGthtQaBzSGwdNsJsaH6aVOygBMU/dA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9NvALQI84bIktYRh9AkYBYLkb9ylsq7fUEXhNcqEuOZUCHnKj
	7XDtileh8ZG/f49nke9erhAd3Md365fA43h+1a2rrDho7/bp1Oko
X-Gm-Gg: ASbGncv/fZciSXRgQ85DMktIzjqf1Z0CowysgZXV5chYfEJCI9vLKxkDiMywKuh5D2W
	wypqxrzWdkl77/MTSUNK8sIdLEpB+aG+H9Bgnirn2tAx9vYsTLg5gR1cniukNvGIYaIKQAUbkRN
	IVNDcfWZMEP9gCzXBcEwVYzv/EPReBGaz8+KtJMQ/PDI26p8DmqDh9xfppl6JZcyV5o8Z9EGaXy
	2IHYx+PM7hbtYSgtnFA1VTt8l/FalOLpjBPlF3pTiSkf7DkJKXFF1S5NYJ4FiVuZ6YKuJ1Tv37D
	khSzp84s5KuwG0CbHqvuXGbrstSIy8rsu1PN2ouShhSUGugf4Hcr22hJtQ==
X-Google-Smtp-Source: AGHT+IG8s/2SKn5n/jaztt7CLxVpTXSMBCkw8uvHm+S1a+4QXFfJSB9zSUJRG8OSJvxQVW75hCU49Q==
X-Received: by 2002:a17:902:d485:b0:220:ff3f:6cbc with SMTP id d9443c01a7336-221040ab8e5mr352109155ad.34.1740011504519;
        Wed, 19 Feb 2025 16:31:44 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-220d556d6d2sm108857895ad.177.2025.02.19.16.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 16:31:44 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	johannes@sipsolutions.net,
	mobin@mobintestserver.ir
Subject: [PATCH v4 1/3] wireless-regdb: allow NO-INDOOR flag in db.txt
Date: Thu, 20 Feb 2025 08:31:01 +0800
Message-Id: <20250220003103.4484-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_163145_789717_673937F2 
X-CRM114-Status: UNSURE (   8.34  )
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

For certain regulations, frequency range is outdoor only, which flag should
be NO-INDOOR, but db2fw.py doesn't allow this flag.

As suggestion, only fill NO-INDOOR flag in db.txt, but ignore this rule
in parsing to binary.

Suggested-by: Johannes Berg <johannes@sipsolutions.net>
Link: https://lore.kernel.org/linux-wireless/5e433cd8d070682cb6ed31de3a2dd337e6f48b50.camel@sipsolutions.net/T/#t
Signed-off-by: Ping-Ke Shih <pkshih@realtek.com>
---
v4:
 - check NO-INDOOR after checking validity of all flags
v3:
 - new introduction by v3
---
 dbparse.py | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/dbparse.py b/dbparse.py
index cc5012bc05bd..29f422445563 100755
--- a/dbparse.py
+++ b/dbparse.py
@@ -121,6 +121,9 @@ class FlagError(Exception):
     def __init__(self, flag):
         self.flag = flag
 
+class IgnoreRule(Exception):
+    pass
+
 @total_ordering
 class Permission(object):
     def __init__(self, freqband, power, flags, wmmrule):
@@ -135,6 +138,9 @@ class Permission(object):
             if not flag in flag_definitions:
                 raise FlagError(flag)
             self.flags |= flag_definitions[flag]
+        # ignore rule with NO-INDOOR so that kernel doesn't need special deal.
+        if 'NO-INDOOR' in flags:
+            raise IgnoreRule()
         self.textflags = flags
 
     def _as_tuple(self):
@@ -429,6 +435,8 @@ class DBParser(object):
             perm = Permission(b, p, flags, w)
         except FlagError as e:
             self._syntax_error("Invalid flag '%s'" % e.flag)
+        except IgnoreRule:
+            return
         for cname, c in self._current_countries.items():
             if perm in c:
                 self._warn('Rule "%s, %s" added to "%s" twice' % (
-- 
2.25.1


