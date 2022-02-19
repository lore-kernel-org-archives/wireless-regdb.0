Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Cc:To:
 From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=kWoQBRIaAvUqBwIjyoSUWhz8eQLBBCU2Cn+8oUTJxjI=;
 b=jmrMNZgVFjHva5
 0OaeDRRvJxqumDN9i8unF6TcSiflIyIveR47lvFONYtUqMh7wCr9Ao5+8F0v3qivm5J0hka8goW/b
 mEgoKjqL+DjD0cuhT6okwYUoRmRyZZ7zh/iodPCe5bcRfPznTZahkXJUt2hNX5c3Zkyipdo5TTDVP
 XMQDrlwl74+P7pSAAN3FF7CEYKgxKCZgksWFWc3fMvA0OMcnelUduqw9/gqCejubDkli0BVz4Ml6q
 aCpv9HCo9WPxurYRdf94/fmYHPbnAc0G3V2XD3fK4L/imHQnzr+is/OC6rnM1FYEoZJEkkAE7bVZX
 ZjlZ/2ap7Fr+RDlJqWsg==;
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLEB2-00G3WQ-Al
 for wireless-regdb@lists.infradead.org; Sat, 19 Feb 2022 01:04:45 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id
 i10-20020a4aab0a000000b002fccf890d5fso5639627oon.5 for
 <wireless-regdb@lists.infradead.org>; Fri, 18 Feb 2022 17:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forshee.me;
 s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=hb9uPQRZFUvtjPZXgWgmnBACKAgTl63xKrKFVS6IXIg=;
 b=FlfzBv0phxL6+WOILIfpkjS7z/VYi9wS0grfY7i9rsU5+kSuUAttkqwqD4Yy99ttX2
 Ug/uU1OKMH6ZSSZrYv2zlxdLvCFkDlNX4Bl5GaNV5mdilw7zE0Yv4FTRilxn4DeQR15S
 YwMvbRUZ7VZeRNtikmvExMAZ/eIbauU929VjlDhbrkefDegAgSXJeFJnMSY+MFAk4B/3
 Hp6KDh+WUdtJPetZ6H7YXV0p+ffwMRvRNO6QBbPYrwT3pP/osj/4Pxb6av9MQPsmNG82
 ET5rDCeeIkbqb0DzsvcVZPwAp1mYRKo/wRBK0So8V6DDqQ6zJrVCBKJ6AqqIzC0Afbt7 LF2Q==
Date: Fri, 18 Feb 2022 19:04:41 -0600
From: Seth Forshee <seth@forshee.me>
Message-ID: <YhBCKWNw3IMfGs0L@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2022-02-18
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

A new release of wireless-regdb (master-2022-02-18) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2022.02.18.tar.xz

The short log of changes since the master-2021-08-28 release is below.

Thanks,
Seth

---

Jiaxun Yang (1):
      wireless-regdb: Update regulatory rules for China (CN)

Robert Marko (1):
      wireless-regdb: Update regulatory rules for Croatia (HR) on 6GHz

Romain Izard (1):
      wireless-regdb: Update regulatory rules for France (FR) on 6 and 60 GHz

Seth Forshee (2):
      Revert "wireless-regdb: Update regulatory rules for South Korea (KR)"
      wireless-regdb: update regulatory database based on preceding changes

Sultan Alsawaf (1):
      wireless-regdb: Raise DFS TX power limit to 250 mW (24 dBm) for the US

Sungbo Eo (2):
      wireless-regdb: Update regulatory rules for South Korea (KR)
      wireless-regdb: Update regulatory rules for South Korea (KR)

Thomas Pedersen (2):
      wireless-regdb: add support for US S1G channels
      wireless-regdb: add 802.11ah bands to world regulatory domain

Wilco Baan Hofman (1):
      wireless-regdb: Update regulatory rules for the Netherlands (NL) on 6GHz

Xose Vazquez Perez (1):
      wireless-regdb: Update regulatory rules for Spain (ES) on 6GHz

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

