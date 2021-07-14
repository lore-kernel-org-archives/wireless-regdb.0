Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=Zque6x0H/yfozFco+qvKm4DgcrubD8kYY6TBi/JY5Fo=;
 b=nhxtpm86RLVQWA
 5yuLVasff+IMoh66U6lH0mFDCYN7F0jC/SANUiK5+YLwl2FQGkHvHz0RvmdlwacpYlirtwbXXo6Ih
 dAL/S9y+vrKXGqUtoOxm7qb5JW7NfzHAd+IIw/E4MhXv/YqPRw+RebfdsR7tRvLjVixvHcrEKlGqG
 zIXIboUi/zzEnGsQY0SslZoUQfNmK3jnk0qKrVxZZ8FTTe752XLp2u5Lp6lwjau9wxmFmal5z7pYz
 cOvH+aKp7U0AT7HflESBnpgZv/6yBHaol+SWqmXJ+bQ3DWcpsXITFslksRc3HijYJXTQveRAO9Q/b
 zoagv1mc7TT7LQDLxQzA==;
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3hzm-00E92i-VS
 for wireless-regdb@lists.infradead.org; Wed, 14 Jul 2021 16:44:28 +0000
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com
 [209.85.210.72]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256
 bits) key-exchange X25519 server-signature RSA-PSS (2048 bits)
 server-digest SHA256) (No client certificate requested) by
 smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 1042C4057E
 for <wireless-regdb@lists.infradead.org>; Wed, 14 Jul 2021 16:44:16 +0000
 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1626281056;
 bh=wRjYvrd1KHmKSfr2gitnCHCVp/Z/z7+UAXkpqhL5poQ=;
 h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
 b=rOpezE1tBX1eNvw+oV6Lnit36N3xKJunaCfBMQi7xRUsy4+XHod3NpmHcXhpNIyJ8
 L3nsA3/EfQjclG/tP4fdJ3CfEa9E8a79mpYrJKY79jbDlsHZNJZ9XqYbsSaiAareug
 +wzLjEZ8aJi2oT+uHXtYV2sRQTUqiB9NvMDo6j9oaNIkPfxy7xL2t4IXpg+TE6jS7U
 vVt+YHQ84fwt9/Si6aX8smZUuboBSkwQbG4Rkwr7bhfNSL5EUix6R3F4uvcrvQNu4r
 KrPZ8bFHs5ORPZh7ERfhRBz/kD1fMBV0ftg36Z3D0gJsqxGoLkVLoK5FXKiG2KdMO6
 5JSyccqpsjvPA==
Received: by mail-ot1-f72.google.com with SMTP id
 g3-20020a9d6c430000b02904b65ff39c8cso2273331otq.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 14 Jul 2021 09:44:16 -0700 (PDT)
Received: from localhost ([2605:a601:ac0f:820:9194:b407:d920:8cb6])
 by smtp.gmail.com with ESMTPSA id j30sm557644otc.43.2021.07.14.09.44.13
 for <wireless-regdb@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 09:44:13 -0700 (PDT)
Date: Wed, 14 Jul 2021 11:44:12 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YO8UXAyCvWqUo7xf@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2021-07-14
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
List-ID: <wireless-regdb@lists.infradead.org>

A new release of wireless-regdb (master-2021-07-14) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2021.07.14.tar.xz

The short log of changes since the master-2021-04-21 release is below.

Thanks,
Seth

---

Seth Forshee (4):
      wireless-regdb: update 5725-5850 MHz rule for GB
      wireless-regdb: remove PTMP-ONLY from 5850-5895 MHz for US
      wireless-regdb: reduce bandwidth for 5730-5850 and 5850-5895 MHz in US
      wireless-regdb: update regulatory database based on preceding changes

bkil (1):
      wireless-regdb: recent FCC report and order allows 5850-5895 immediately

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

