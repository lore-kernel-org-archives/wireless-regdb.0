Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
 :Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=M+4y75xEWCUbFUPsl8OfZosD5O7kawe8KA4tqMZEmrQ=;
 b=S5MEcES7vtqdqK
 Xd1Ea5xIoGDa79U8b906wM0lJ9W9cbQY9e7KdEKw2qsM2+JqzKF6AxVQstd/Xkz1IxrnoTr7Q9w0O
 ct4fFaIuMaGXIw9PP36z5k0wyjaVaILtuFdBlMftejyKAN+w14CD9eAcxPd8e6p9BK09Mh+F3wNzx
 B9YuOvvVYhO6ElKURYqIH7BQqshlNmW4C0ZN3/4fVbXHUUnpxBeY4/v4vCCtkpuSm7rOJamcz/H8u
 Qb9nIR9BznrtFK2cqYwF8PDVmPG9Kuzz0raBeWlk3JkzOj+cm4s25IMVWE5BG7eynNfhwfAW7d2Ti
 5WuQ+71xmM5PvpaFDzpw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gzpr0-00029W-Bf
 for wireless-regdb@lists.infradead.org; Fri, 01 Mar 2019 21:38:04 +0000
Received: from mail-yw1-f71.google.com ([209.85.161.71])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1gzpqw-00011n-Fw
 for wireless-regdb@lists.infradead.org; Fri, 01 Mar 2019 21:37:58 +0000
Received: by mail-yw1-f71.google.com with SMTP id g6so23874178ywa.13 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Mar 2019 13:37:58 -0800 (PST)
Date: Fri, 1 Mar 2019 15:37:54 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190301213754.GH22074@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2019-03-01
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

A new release of wireless-regdb (master-2019-03-01) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2019.03.01.tar.gz

The short log of changes since the 2018-10-24 release is below.

Thanks,
Seth

---

Chaitanya Tata (1):
      wireless-regdb: update 60ghz band rules for us

Felix Fietkau (1):
      wireless-regdb: Sync IN with G.S.R. 1048(E), October 2018

Peter Lundkvist (1):
      wireless-regdb: Update regulatory rules for Sweden (SE) on 2.4/5/60 GHz

Rui Salvaterra (1):
      wireless-regdb: Add 5725-5875 MHz rule for Portugal (PT)

Seth Forshee (1):
      wireless-regdb: update regulatory database based on preceding changes

Xose Vazquez Perez (2):
      wireless-regdb: delete outdated comment for DE
      wireless-regdb: add URLs in README

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

