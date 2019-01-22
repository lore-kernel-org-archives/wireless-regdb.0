Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=4ZQqd1pcd5YXyBWMcPPGSqO3PeagmeCVf3j3wH3+Hp8=;
 b=CKfqs1YRF77nfc
 +vsiwyHA6JBtBTAN5Gi2T5g1ugT5T6/S9O8f8LkOFbSsSOBge6oGY5rUOtcqhnJudF9E/qnTL2Xap
 KRfu+vL7d83sPySdwGg2Ev7dXPdYfEfURb2jq+PaoYAt0vy3veB5bRRJIa9kCrTl884ZzkLqTAzxK
 xb9Wmwgs4PVX/TLWQS5c9u8IZYae4Xi3WiIGx2+vzDa/Iv4YogCovvnBCjEYhPUCTOFg7hHlTXW9s
 Vz4YThMGFFcDdUVuK1N1nvGe+9gpTjhllLg2nFcdqreegQi8kggzO+GK4klFiDBCTxjOAnVT51CwZ
 NQxCf36smEHHCO4zmCYQ==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm2a4-0003CM-19
 for wireless-regdb@lists.infradead.org; Tue, 22 Jan 2019 20:23:33 +0000
Received: from mail-yw1-f69.google.com ([209.85.161.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1gm2Zz-00010t-1n
 for wireless-regdb@lists.infradead.org; Tue, 22 Jan 2019 20:23:27 +0000
Received: by mail-yw1-f69.google.com with SMTP id h3so13640981ywc.20 for
 <wireless-regdb@lists.infradead.org>; Tue, 22 Jan 2019 12:23:27 -0800 (PST)
Date: Tue, 22 Jan 2019 14:23:17 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20190122202317.GV7206@ubuntu-xps13>
References: <20181218080815.19395-1-chaitanya.mgit@gmail.com>
 <CABPxzYK+Tu678C=84i3+67gA1EBw_pG3cJ1y1ZvWZobU6iS8Dg@mail.gmail.com>
 <87lg3j6aly.fsf@purkki.adurom.net>
 <CABPxzYKHMUQyM+gi5-u-PVmD-viCxAaweeGUGWQ7jkjqG==amQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABPxzYKHMUQyM+gi5-u-PVmD-viCxAaweeGUGWQ7jkjqG==amQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update 60ghz band
 rules for us
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
To: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Jan 18, 2019 at 01:17:31AM +0530, Krishna Chaitanya wrote:
> On Thu, Jan 17, 2019 at 12:20 PM Kalle Valo <kvalo@codeaurora.org> wrote:
> >
> > Krishna Chaitanya <chaitanya.mgit@gmail.com> writes:
> >
> > > On Tue, Dec 18, 2018 at 1:38 PM <chaitanya.mgit@gmail.com> wrote:
> > >>
> > >> From: Chaitanya Tata <Chaitanya.Mgit@gmail.com>
> > >>
> > >> Include channels 4, 5 & 6 for US in 60GHz band. FCC extended the
> > >> 57-64GHz band till 71GHz with almost same rules.
> > >> ---
> > >>  db.txt | 6 +++---
> > >>  1 file changed, 3 insertions(+), 3 deletions(-)
> > >>
> > >> diff --git a/db.txt b/db.txt
> > >> index fa5c0e0..ae650dd 100644
> > >> --- a/db.txt
> > >> +++ b/db.txt
> > >> @@ -1280,9 +1280,9 @@ country US: DFS-FCC
> > >>         (5490 - 5730 @ 160), (23), DFS
> > >>         (5735 - 5835 @ 80), (30)
> > >>         # 60g band
> > >> -       # reference: http://cfr.regstoday.com/47cfr15.aspx#47_CFR_15p255
> > >> -       # channels 1,2,3, EIRP=40dBm(43dBm peak)
> > >> -       (57240 - 63720 @ 2160), (40)
> > >> +       # reference: section IV-D https://docs.fcc.gov/public/attachments/FCC-16-89A1.pdf
> > >> +       # channels 1-6 EIRP=40dBm(43dBm peak)
> > >> +       (57240 - 71000 @ 2160), (40)
> > >>
> > >>  country UY: DFS-FCC
> > >>         (2402 - 2482 @ 40), (20)
> > >>
> > > Kalle/Seth,
> > >
> > > Any update on this? Patchwork shows its delegated to you(may be by default).
> >
> > Seth doesn't use patchwork so I just delegate regdb patches to myself
> > and then mark them as 'Not Applicaple'.
> >
> Ah okay, Thanks. Will wait for Seth to comment on this.

Sorry, I had an extended time off around the holidays and just haven't
gotten to applying patches from this list yet. I'm getting started on it
now so patches should be applied soon.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

