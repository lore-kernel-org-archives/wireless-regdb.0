Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=fWMcavowELko8J2Di++Rje4iNzsNiXGro7iDsR+2WB0=;
 b=fOBVjVCl0u+wHO
 TzgNX9/KKBqwoF9wq+VrOghUvST/P+DhxtwAPwrQJ/w6FSyogUOecyVjNpXD9Nrac/0bKFxH+4+Eh
 YmDOMoka7199ZFkkym3Nn1/CO3DVgLyO8ZpgLV5sU8Q8dWSGFBQ5MQlOMx+FuY4Cgj+j95yNKWXeT
 lijVDKDGrwKutU4wDqKZfhDgGIYXTJ8QsA952vr0vaP1Zat03dfNWk8LIwSEUAPZO0IKeW97+JLxs
 YRonbNHciUCuHc0K68I+Yb+Kng80vuMjRDw93oH1+Q01w1uUzGmh6Urz+Q3LUWn9EU+XYZEf+hxHj
 emT02NiMOPguqm7dcr1w==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5tYQ-0004RZ-DR
 for wireless-regdb@lists.infradead.org; Fri, 28 Sep 2018 14:15:40 +0000
Received: from mail-it1-f199.google.com ([209.85.166.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1g5tYC-0002U6-1H
 for wireless-regdb@lists.infradead.org; Fri, 28 Sep 2018 14:15:24 +0000
Received: by mail-it1-f199.google.com with SMTP id o133-v6so2604226ith.7
 for <wireless-regdb@lists.infradead.org>; Fri, 28 Sep 2018 07:15:23 -0700
 (PDT)
Date: Fri, 28 Sep 2018 09:15:20 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180928141520.GS16752@ubuntu-xps13>
References: <20180917074212.6739-1-sven.eckelmann@openmesh.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180917074212.6739-1-sven.eckelmann@openmesh.com>
Subject: Re: [wireless-regdb] [PATCH 1/2] wireless-regdb: Sync FR with ETSI
 EN 301 893 V2.1.1 (2017-05)
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
To: Sven Eckelmann <sven.eckelmann@openmesh.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Simon Wunderlich <simon.wunderlich@openmesh.com>, Shashidhar Lakkavalli <shashidhar.lakkavalli@openmesh.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Sep 17, 2018 at 09:42:11AM +0200, Sven Eckelmann wrote:
> The documents
> https://www.etsi.org/deliver/etsi_en/301800_301899/301893/02.01.01_60/en_301893v020101p.pdf
> and
> https://www.anfr.fr/fileadmin/mediatheque/documents/controle/20171127ANFR_-_ficheRLAN_5GHz.pdf
> show that the limits for the 5GHz bands are out of date:
> 
> * frequencies don't match the official limits
> * 5150 - 5350 MHz is not for outdoor usage
> * 5150 - 5250 MHz only usage is allowed to use up to 23 dBm (200 mW) even
>   without TPC
> 
> Signed-off-by: Sven Eckelmann <sven.eckelmann@openmesh.com>

Applied both patches, thanks!

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

