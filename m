Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=IUQRgmG1yDv+CYVw10SrVbecAY+4ZtXP1LjV0jvm5tI=;
 b=KidOffzO0KJTLP
 aQLZADri738MkBnyFMX+pdgfdHHjyhg0EOsBN/0O3a3GKZ6GoG76n5+PylflASBOEXhuzo7tG0igW
 3lMP5JT9eYrpEOg1kdMgEkuCENwlo9iaYsxTQf/izYYYA4L/TbMcN9Zf/pc6FdtpNoY1cqLPFqVBL
 JE55x0HUlqLidEWVDS7wzKnGNzASSekuRdx3VjD3NgGZ1YhT4YUEZ/HbEiQ2hZuyv1+En4OSYSX5Q
 1/3RxoHecrcmyVOb9SJAh47yEPt06JFGEyWI7mtjPdhDoEWNdqVEaXTCrz1bC+AbGIIOgV6NsoOc5
 u8gObPBgQma8XTvK+PGA==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fG4ZU-0002Nc-Il
 for wireless-regdb@lists.infradead.org; Tue, 08 May 2018 15:30:34 +0000
Received: from mail-io0-f197.google.com ([209.85.223.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fG4ZG-0008A6-7r
 for wireless-regdb@lists.infradead.org; Tue, 08 May 2018 15:30:18 +0000
Received: by mail-io0-f197.google.com with SMTP id q8-v6so30625946ioh.7 for
 <wireless-regdb@lists.infradead.org>; Tue, 08 May 2018 08:30:18 -0700 (PDT)
Date: Tue, 8 May 2018 10:30:15 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180508153015.GD29084@ubuntu-xps13>
References: <863d1ab01d8e45b9a16d53e56ec6c5a0@NASANEXM01E.na.qualcomm.com>
 <20180501201600.29126-1-seth.forshee@canonical.com>
 <CADGYwvD_j+mF9afCwUeF9nWHNptX=ngg2+8Wkbwt9-t8Yy-BqA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADGYwvD_j+mF9afCwUeF9nWHNptX=ngg2+8Wkbwt9-t8Yy-BqA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update rules for QA
 and add 5 GHz and 60 GHz rules
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
To: Faisal Wiryasantika <faisal.wiryasantika@gmail.com>
Cc: Michael Green <green@qti.qualcomm.com>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, May 07, 2018 at 07:30:11AM +0300, Faisal Wiryasantika wrote:
> Thanks Seth & Michael.
> 
> Will it be affected immediately in the database? One of the mobile
> device manufacture said to me is not updated yet.

I've only just now applied the patch. I'll do a release soon after I've
finished with the other outstanding patches.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

