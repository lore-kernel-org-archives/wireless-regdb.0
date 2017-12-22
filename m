Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
 List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
 In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=IX7Am4I3U6DINErxsTaPV84kxMtL6IY0bY9LoZVLehE=;
 b=poHBxXfouOM5tm
 TNiHjMJOBumVogxdUADK5/prFeQ9b6Km5cOU5ThpW8KrmRCzwvNcZnPjHffuVjC/Nm1MfSqEpTf4Z
 Pujj7mHsmFXJHCWVlr6sZ7xUJK42jzY9npC/21yv24PRkmVGGD3rTOAJcKEwYpNLiajYDmEzpr8sw
 Fj4fAIOvZICb9JARgADxZZyaZBCsh1feLwiACk+F/ze4/ilL2RtnSE6tDZDBu9bKFmzMApIWbPLZz
 t7vm7h2mOd4nQm/r9JYBM3Xyaa1fOCh34mchdk2Xhp8yPb46WTQR0wH1lkqQzjFpZLBNwWx7WVvOS
 Woo+7Kpk8Me6LYOiL/CQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eSGQR-0005qk-J2
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:21 +0000
Received: from mail-io0-f200.google.com ([209.85.223.200])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1eSGQK-0002eE-6g
 for wireless-regdb@lists.infradead.org; Fri, 22 Dec 2017 06:03:12 +0000
Received: by mail-io0-f200.google.com with SMTP id x62so11539711ioe.8 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Dec 2017 22:03:12 -0800 (PST)
From: Seth Forshee <seth.forshee@canonical.com>
Date: Fri, 22 Dec 2017 00:03:00 -0600
Message-Id: <20171222060303.14478-4-seth.forshee@canonical.com>
In-Reply-To: <20171222060303.14478-1-seth.forshee@canonical.com>
References: <20171222060303.14478-1-seth.forshee@canonical.com>
Subject: [wireless-regdb] [PATCH 3/6] wireless-regdb: Add sforshee's x509
 certificate
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Cc: Johannes Berg <johannes@sipsolutions.net>
List-ID: <wireless-regdb@lists.infradead.org>

Add a x509 certificate for sforshee.key.pub.pem. This is the same
certificate which is shipped in the kernel for validating
regulatory database files.

Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
---
 sforshee.x509.pem | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 sforshee.x509.pem

diff --git a/sforshee.x509.pem b/sforshee.x509.pem
new file mode 100644
index 000000000000..ebd01606d057
--- /dev/null
+++ b/sforshee.x509.pem
@@ -0,0 +1,17 @@
+-----BEGIN CERTIFICATE-----
+MIICpDCCAYwCCQCyjd9HrvnOpzANBgkqhkiG9w0BAQsFADATMREwDwYDVQQDDAhz
+Zm9yc2hlZTAgFw0xNzEwMDYxOTQwMzVaGA8yMTE3MDkxMjE5NDAzNVowEzERMA8G
+A1UEAwwIc2ZvcnNoZWUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC1
+QOOcKIQ5A/I512YsQTgVrH6lg3ElfpB8aN1vP9nXWTiffGpSwgMqLX5m9B6zEnAg
+W9SXMj1xizsbCBcUa2HEV4uWFhz9JNULCfloEYT7ylEM0UUZ2hBEitn+dqn9YC0Y
+CyiVsi3qiJi40VYh8FMf8QJv6Uabk18okA+sNvpoI3FXVvbM0999Ktkbc0XruieF
+73p/pcuAxzA20lPu7Kwe5zHxNqKcY8ZlW38ldWih6tN+AFyaXtggGDJ3BykSZh42
+c+eXBEE3sbFyK/ShKSB8lnkLK9DY3shsP5P7xe54UhEVG3r24miZ5/tGFoTjx6Hm
+4NJG1eHEX6Bm9NrE/5UdAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAIcD2vKCwt2v
+fEQvhtNfTJNIuf4HF7sh9yUjTqoiDBa5c66dRnx12cNJV0e/M7eX7PVAdcBGIvCg
+XZx5E6H/uKMve44GP8i25Goo8jRcIz8ywOatD6zPVXRHc9MBhbcLIlYkfZ8JqQ6G
+njdbnG0C2YzIUGriWfMWBuqyQrVY/rrRgVca77I4iFj2qsQui1on5KXopMpnXKxy
+Z8NvE8MtNXnXiuf11CEwStX2o9l5VvIPEPd90FGTL0f4fUsKhFUSCn1OOx8rL/wo
+s2k04YCAu+KvudYw8R1UhyOZn1EDTEV9AmVzq/3PlMwNOmD9PBQvFjOpIR/LULGP
+A+6gZqkWeRQ=
+-----END CERTIFICATE-----
-- 
2.14.1


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

