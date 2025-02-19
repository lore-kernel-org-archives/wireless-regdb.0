Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4CFFC021AF
	for <wireless-regdb@archiver.kernel.org>; Wed, 19 Feb 2025 02:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=R04HbjsN0O8oNVWfF9dMnHHroywF9MmsNCZD/04NKBY=; b=1Yf4DIGepM7ki0bY4Uy1gemyE4
	+5IqB4CINtu7w/Gu4EA/swBK+lbeC937HfYPPvJD4JPHdChCZAqgz54Eg908FnKEXLKKbjuJtDVZm
	4hv+OTQFtoOrIv031J6vMNkpzqulN3vgiO4T95FcoGy+9oEHI0Gu1o/ti5ves+AkE3jQ0vd4wgQOd
	07ppeaK1zuldT7lO3We5VoNGtFGiLb/UpNtjlPvKwusK9mSm8OrEMHAnq6J7R7qCh7uJcfssRaPoP
	7Pg7IATDltevqiOdiIWIStlt5F54XsX3a3C1eVkrPRibX0POVVOWKt5b/OPPGEnDbKsITxNkM8O5O
	IPwsowGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkZvP-0000000AfUu-396v;
	Wed, 19 Feb 2025 02:34:59 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkZvN-0000000AfSv-0RYB
	for wireless-regdb@lists.infradead.org;
	Wed, 19 Feb 2025 02:34:58 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-21f2339dcfdso6139495ad.1
        for <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2025 18:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739932496; x=1740537296; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R04HbjsN0O8oNVWfF9dMnHHroywF9MmsNCZD/04NKBY=;
        b=akU53QJjco/Ru8WIUpFoGXSDW3b5lOeLW87840OAeKfrjxBcLmqiOa8+l2jkNFumg6
         97b5YiMHm1SPpeUFHpJzlG1tkfonm9Hi5IMxm+fxegfAOx8FfGmSXPzYFSCdAHu5BPpP
         gVpEPidDeYgSwsZxdCO40smna//1TU0Dl7e/QEMI2WcIngR2a5MSKtZ6p0q2U2iyzrSg
         hzPLee7BSKd26gi7zj2/97U6IkWIUusSwmoC+qTneO8Ixmo2BQiDo1TGNG+sjJy2E4D9
         H8Exvs/vAdDQ67FLBO5yemb3toSG3JA/euomu1kYIY21R76kq4lvr1hKmNwPKhdTgc4k
         OXoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739932496; x=1740537296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R04HbjsN0O8oNVWfF9dMnHHroywF9MmsNCZD/04NKBY=;
        b=a4EJPnRr7VP+EKrTJr175egtLVGMD9hrfB1Mn6P/fa9UFa4OEqaz2BGij5cCErt500
         ZEzz8Si4jA04sv2+ia1fmWuGCJ7CKhqej/5MEyCvYXb2pC68TAKRSiveQ6vc5tMBbvhK
         BEYQdK2m64Xaax8fSWEUdEgpUrhRgBVuO2nPzh/5hd4XH8wYkk+qR3nuRct1Duv5XzU7
         0hqPlFL37Uto2NvnjfXIZIBI29MfP3e6ALqrPwz6Qf9lD53zySoCDdMvzxOh7NlK5kK1
         6ZStXvxCEJH9LPItT4+tMEXpiDlSTqYDsXM1KZaOmG7kU/IITUqHCquyxwQHs+f4nQ8G
         daog==
X-Forwarded-Encrypted: i=1; AJvYcCWau4TXCP8kWkP95HdnKasZrfeCXRVF8/WYQxl/xdd2XpJtDk61SZk6Q8JmfuYOygN4DtaIPah9qNU1f12gVA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+tEbGq5GTzdW64T1JkmHH5s2Ii99O9ekfFRybh6eKVxW0np23
	OheyybdUxMiJfhdjhHS0M9dqh56EAH3rZsdNFJpft160F6kbpetGUhxflGTm
X-Gm-Gg: ASbGncvNeySSG/3cQg/mP8DKefYTMfAMyBV29hQ76Q6rPMfnpx+yMLbdaJZP7DmoPPv
	58j1J7pqZ0iyTFRZHZwQB3G7PUkJTjEgk42tApbPb7L0+fcwzACi1AFv+2B4krqqs4Pt4qx6fez
	PerCUV63aYY7m85XdcFKy6xOe7/eP2mS9LIj9xEPqqjj15HnsauBknQFPVnV+dRZMyPrt3OsOSj
	BUH/mrPnkkObH4pNBa8Rra/avwVkFicRnPfhPUq/nX40VzouuNmf59Q7hi/FTselcWmg2caksxe
	rSGAtc7XHxuqcAf7aeYJnNUMocWUjwhla6eSbzaMXLf6RHAohQG0OWRnzA==
X-Google-Smtp-Source: AGHT+IHBWu2zNx2ZlrggZ0xLhsQ8WBxnnw96NQe2O8w6INoGz6Pif8fopNl0K3piu9ZyZbDJXE8fMw==
X-Received: by 2002:a17:902:f541:b0:21f:5063:d3ca with SMTP id d9443c01a7336-2216ef0c858mr35681335ad.16.1739932496085;
        Tue, 18 Feb 2025 18:34:56 -0800 (PST)
Received: from localhost.localdomain (59-124-166-19.hinet-ip.hinet.net. [59.124.166.19])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-220d536671asm96837625ad.88.2025.02.18.18.34.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2025 18:34:55 -0800 (PST)
From: Ping-Ke Shih <pkshih@gmail.com>
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org,
	wireless-regdb@lists.infradead.org,
	johannes@sipsolutions.net,
	mobin@mobintestserver.ir
Subject: [PATCH v3 1/3] wireless-regdb: allow NO-INDOOR flag in db.txt
Date: Wed, 19 Feb 2025 10:34:13 +0800
Message-Id: <20250219023415.14229-1-pkshih@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_183457_160494_AB66B023 
X-CRM114-Status: UNSURE (   8.66  )
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
v3:
 - new introduction by v3
---
 dbparse.py | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/dbparse.py b/dbparse.py
index cc5012bc05bd..450406ff1b34 100755
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
@@ -134,6 +137,9 @@ class Permission(object):
         for flag in flags:
             if not flag in flag_definitions:
                 raise FlagError(flag)
+            # skip rule with NO-INDOOR so that kernel doesn't need special deal.
+            if flag == 'NO-INDOOR':
+                raise IgnoreRule()
             self.flags |= flag_definitions[flag]
         self.textflags = flags
 
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


