Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2C3DF3ED66
	for <wireless-regdb@archiver.kernel.org>; Sat, 11 Apr 2026 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fiAD9b6eenKvVXmduSk8+wSAnH/fvWD+RXAm1BLjX4g=; b=Thrnus+0KFQbRachZWRswaDNE2
	srLM2iwnlfgi7H0Lf3zRk035Emej3qRt0+XO5Tn6MthFIhcVdCtrqLCspjav33O9N5jGEX1H19j9k
	MOy5/P955Clo3DbgbN5rTKA8KqrtNlIqybaTBW7ZtyqWJDJi1KU+72oOvnQrlQ7xfghB4sCcrWbKt
	8aEtR0XcVugYv4p8JScC/5Xz0dht6lEkcTGMn2Ksa9HMzB44Gg56sW6N4yfmqcOTu9QtVcPEZD0CL
	ccrx7Ktkn2p5kgLt4HTuLCfn4ZNdjBt+GJ7yAgqo4YFVKAP2/+LDAq8yAPL2hsmtBvhss9zGpvLOE
	dRzqAPLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgic-0000000Dq0o-0gKr;
	Sat, 11 Apr 2026 22:22:22 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgia-0000000DpzC-2Ikl
	for wireless-regdb@lists.infradead.org;
	Sat, 11 Apr 2026 22:22:21 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-483487335c2so33395545e9.2
        for <wireless-regdb@lists.infradead.org>; Sat, 11 Apr 2026 15:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775946138; x=1776550938; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fiAD9b6eenKvVXmduSk8+wSAnH/fvWD+RXAm1BLjX4g=;
        b=HmIIJjMovIkACHH95eRLGdeJ1r8yc0nTuYtd5vjT4BoaFdYDBcqkOm2DZBguA6r1Sr
         SkWbD+B65n+xa/wfEo/w2YCaZV0wf3sPVkMlaTMtQrbzDvCX5f1nriDQ1k+l0Mef1xzB
         Z2w6qmYwJfF/1jhD/uByL+AHVsEJWuxPXRRo3uC3Iccp5h2EBfBzKLl3NFlXavj3bxMv
         vsUZGht0zybzEgB8Gsj5+ZT1Da+Cp/GDmVRMqALoGjaSY4PrI37e3vWF9CGOQtj9tqwq
         iPEql7re6YkxTiC8JWp+08hoNrcLaS9sJYxiogyi3bCazkxBkPQkC38SEemQL6RQJRS5
         lAfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775946138; x=1776550938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fiAD9b6eenKvVXmduSk8+wSAnH/fvWD+RXAm1BLjX4g=;
        b=gK8mpIj8hkTsAt+yWP6CwOBF74vbqtPznmkswmRgg4y276E42cPpPueKRNb1/z2Cfs
         B88D4gaNgIsCXGRZf4QZ+XhiAinLUvaIEEiDmf+ej7F/pFBZ5kXRGAuENTnCYSYeWjoD
         EEgdINKPNFcJE5oTMYOI9WYD+fEu0ljBXPh2stNaNno6KSMrHmOBzUrFGi8XNp5c9J9h
         NW/ytgZo27cqghBJKS+lsxGrgtFP0HZ2ePrdYio6J/dSpsnRo1BnMKi8E1Vt7XCv6YDw
         E47nG9Qaw2MuiTz5FfmLAzuXQ5Hw1B9nLFn35woq3jyJTYQpUQqmkHUFPnXvQWq0qKu+
         n89A==
X-Gm-Message-State: AOJu0Yws9r3uHIEZbn8OmK7Eoj6yXYEXMhoSdUVgnDXV6y54QPLzKrd7
	Fy6cb+TXgDYDJT9KuRhgAuPDPengtXM3Z3EUpXtml4TFxgrT+UqFlGKhuGbi/sP4
X-Gm-Gg: AeBDietA66GvY5d7CXyvX0he2JsiihXSvAqDRCsbmmFYgIUJPIqstCW0I6nSk9Htc9q
	RlP+4Ju/EIWZHL7a7JS77ASL7Qxk1ueAZBy1gQ9HL1VdDEEb8nY0MiIssDqBeDy5aOq6VvEeqvZ
	FqwRi50NnWBr3PdS9xbhlkqI/JH9ejYE0wgLhiPlwodoFcQa8fXOy1pULnSIzoOVH8s3MlOLj7p
	zUf71u+juWlwVhjbzsxlpRsI5qsbjr1n5MRiTvH5jx32q9WGt5fh2Vq5Nh/JZdRBnZftJ0i4vw8
	ecwlajZ7btgLA7cKwn60egHKvI16F05fU/cALwrUOlGSq5ybhQOCQhnjGcXoleOnVAmG/nKdgDg
	Nu3/ue+BY0o5NJtIM+a2rnXMeLdk+uVlM18YbFRkflJBl+zI2RHV2wkmm2NmXtD1kLPcP38a8Hv
	iOYsWtI4Fv8/M9+W6zVVEAEE5aqA==
X-Received: by 2002:a05:600c:3047:b0:488:d6eb:e635 with SMTP id 5b1f17b1804b1-488d6ebe7ebmr64758165e9.12.1775946138265;
        Sat, 11 Apr 2026 15:22:18 -0700 (PDT)
Received: from bazzite ([102.128.175.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488d689110asm56935965e9.35.2026.04.11.15.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Apr 2026 15:22:17 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org,
	Louis Kotze <loukot@gmail.com>
Subject: [PATCH 5/5] wireless-regdb: Fix 60 GHz power unit for Ukraine (UA)
Date: Sun, 12 Apr 2026 00:21:55 +0200
Message-ID: <20260411222155.299441-6-loukot@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260411222155.299441-1-loukot@gmail.com>
References: <20260411222155.299441-1-loukot@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260411_152220_590300_3D6BC290 
X-CRM114-Status: UNSURE (   9.28  )
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

Commit 90e83fc (December 2020) changed Ukraine's 60 GHz entry from
(40) to (40 mW), likely an accidental addition of the mW suffix
when converting other bands to mW notation. This reduces the power
limit from 40 dBm (10 W) to 40 mW (16 dBm) — a 1000x reduction.

ETSI EN 302 567, referenced in the entry's comment, specifies
40 dBm EIRP for 60 GHz. All other ETSI-based countries in the
database use 40 dBm for this band.

Restore the correct power of 40 dBm.

Reference:
  ETSI EN 302 567
  Ukrainian law zakon.rada.gov.ua/laws/show/z0201-15#n48
Signed-off-by: Louis Kotze <loukot@gmail.com>
---
 db.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/db.txt b/db.txt
index 15b80ee..460e03b 100644
--- a/db.txt
+++ b/db.txt
@@ -2044,7 +2044,7 @@ country UA: DFS-ETSI
 	(5725 - 5850 @ 80), (100 mW), NO-OUTDOOR
 	(5945 - 6425 @ 320), (23), NO-OUTDOOR
 	# 60 GHz band channels 1-4, ref: Etsi En 302 567
-	(57000 - 66000 @ 2160), (40 mW), NO-OUTDOOR
+	(57000 - 66000 @ 2160), (40), NO-OUTDOOR
 
 country UG: DFS-FCC
 	(2402 - 2482 @ 40), (20)
-- 
2.53.0


