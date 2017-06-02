Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=NDtWKTiw9L2XWaV6moEJa81RH2Cn8fadBoXvp4AS9dU=;
 b=jbZSaK3jqTcQUP
 ZsZsQ33hN/FaTkU2kmxJX/rrNE+K0f67qQASqs4qqTKIXk4/jtnZnS1vc1/+r/xtWRiBV7m6DOkKT
 vSbCG8Ho5/ME9N2/tw9RKhxyOoarUX6lTu7eQf3p/NqiZaciwYorAozztStyQAC2iXowa+IQkG976
 jIul7ohw9R3VAGfjw6v2BoLGE0mEuIJh460UmvMDqDCrLBNhnlLbL0QPORrSFIzs58DJvNJN3aHuj
 /Bow314L+eE5O9rNLMYN6V7/bA+814XwbicU8Dt/QG+Bz5QyO8U+yeCP/c5/oGAEtVYazRMI17q+n
 /TrFTDCEx82ljYUZSkxA==;
Received: from mail-it0-x22c.google.com ([2607:f8b0:4001:c0b::22c])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGpfK-0007VV-D0
 for wireless-regdb@lists.infradead.org; Fri, 02 Jun 2017 16:43:12 +0000
Received: by mail-it0-x22c.google.com with SMTP id w68so9403537itc.0 for
 <wireless-regdb@lists.infradead.org>; Fri, 02 Jun 2017 09:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=qxaI2b5tngi+AL3H0PiWE/NR2xynl3umN1cPNkZlS9A=;
 b=bVvx+yzlWgrdPy7M/0+PQXm6AHxTtrkt6rzPuq1KCt5n2GyH+zZTGXEYbrUh56mp7S
 gM9Fq24QNqAdXjgBSBzRgzntANdVgdrLV/OuKI1iuZc8N/lFU3OeoM0+bPHR9cPNITtX
 fIVNKL9SSXJyJf2IkjH2oEkx+5EK0HoIn2qRlMycsz6SIkwS8ugtoev4ZmdvtozpPwpT
 QCP19ess+evjeErXMUWF5SeI5X5tfWcxVBqFQn97qdyjSTOtVqEownVu8AuXB9PCCBVe
 rHZ9KlXfL+/IhWVBsNktH5uaRtVbywDsQt6Ew2+bAZ3xgTw2QaCSmCNiZJ73YUJWEna2
 pgBA==
Date: Fri, 2 Jun 2017 11:42:46 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170602164246.5fqimhbu5wdkrfur@ubuntu-xps13>
References: 
	 <263AD8850614FC4380385C9D709C29D71C4E5307@DGGEMA503-MBS.china.huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <263AD8850614FC4380385C9D709C29D71C4E5307@DGGEMA503-MBS.china.huawei.com>
Subject: Re: [wireless-regdb] Some questions for country code with their
 bandwidth.
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: liruide <liruide@huawei.com>
Cc: "linux-wireless@vger.kernel.or" <linux-wireless@vger.kernel.or>, "Huyufeng (A)" <wolf.huyufeng@huawei.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "ankang (A)" <ankang.an@huawei.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Jun 01, 2017 at 11:11:24AM +0000, liruide wrote:
> Hello
> 
> There are some questions about country code with their bandwidth.
> Like this:
> [cid:image001.png@01D2DB0A.DB092050]
> [cid:image002.png@01D2DB0A.DB092050]
> I want to why the BH or CR and some other countries with 5G channel are only 20M bandwidth. They don’t have 40M or 80M bandwidth.

I guess some countries could have bandwidth restrictions, or it's
possible that they just need to be updated.

> Can you give me all the country code with their bandwidth and channels?

The best I can offer is this.

https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
