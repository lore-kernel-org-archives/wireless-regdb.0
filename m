Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ascpO1ScTdwXKXu/24uKc2cDY092ihz5KLv3EXdVQek=;
 b=bamFZ6M7MIluWh
 +p+PW4DbJg29fiM190TQgMJ1Hl1hCTfp8z5tHm+3pWQX9kFCX2GbKLp/v4w++t3Hudlt9K2zOoSZX
 k6ak2BRzssAtQE66duEpktvHPiiDJ9HCm94ybFQ1bXHgwrFlDV7G45pxnD5yoBD2Wryi8kwq/ZQEV
 eW9Ge/2BpTcNBHFrBRlP2aKt+tu/4hFB6FOqL+TjRvBUqYA7evZKjV+EF2pXWEi3RL+NW1jJrC3Db
 4VAvqk9ihPV2ZiNvNGbn6miSpYnjZInjarQ7xiC8tcfUV0JTy7t4phNPPV+W+Z1aHrutkV7zJN4TA
 PufLFcFNxBU6GR5LPIWg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fyLPV-0002Jv-TF
 for wireless-regdb@lists.infradead.org; Fri, 07 Sep 2018 18:23:16 +0000
Received: from mail-yw1-f69.google.com ([209.85.161.69])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <seth.forshee@canonical.com>)
 id 1fyLPH-0001P3-F7
 for wireless-regdb@lists.infradead.org; Fri, 07 Sep 2018 18:22:59 +0000
Received: by mail-yw1-f69.google.com with SMTP id y137-v6so9347927ywy.0 for
 <wireless-regdb@lists.infradead.org>; Fri, 07 Sep 2018 11:22:59 -0700 (PDT)
Date: Fri, 7 Sep 2018 13:22:56 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20180907182256.GL4251@ubuntu-xps13>
References: <2441d0ea-b862-9675-9342-356606d9228d@laxhuber.com>
 <20180907123256.GJ4251@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180907123256.GJ4251@ubuntu-xps13>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update regulatory
 rules for Switzerland (CH), and Liechtenstein (LI) on 5GHz
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
To: Henrik Laxhuber <henrik@laxhuber.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Sep 07, 2018 at 07:32:56AM -0500, Seth Forshee wrote:
> On Thu, Sep 06, 2018 at 04:13:22PM +0200, Henrik Laxhuber wrote:
> > Update to reflect the current data published in the 'National Frequency
> > Allocation Strategy Table' [0] for Switzerland and Liechtenstein, which
> > at the time of writing points to the documents [1] and [2].
> > 
> > [0] https://www.ofcomnet.ch/#/fatTable
> > [1] https://www.ofcomnet.ch/api/rir/1010/05
> > [2] https://www.ofcomnet.ch/api/rir/1010/04
> > 
> > Signed-off-by: Henrik Laxhuber <henrik@laxhuber.com>
> > ---
> >  db.txt | 19 +++++++++++++++----
> >  1 file changed, 15 insertions(+), 4 deletions(-)
> > 
> > diff --git a/db.txt b/db.txt
> > index 8cf7dee..69cea85 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -265,10 +265,14 @@ country CF: DFS-FCC
> >      (5490 - 5730 @ 40), (24), DFS
> >      (5735 - 5835 @ 40), (30)
> > 
> > +# Source:
> > +# https://www.ofcomnet.ch/#/fatTable
> > +# Note that the maximum transmitter power can be doubled for 5250-5710MHz
> > if
> > +# transmitter power control is in use: 5250-5330@23db, 5490-5710@30db
> >  country CH: DFS-ETSI
> >      (2402 - 2482 @ 40), (20)
> > -    (5170 - 5250 @ 80), (20), AUTO-BW, wmmrule=ETSI
> > -    (5250 - 5330 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
> > +    (5170 - 5250 @ 80), (23), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> 
> Maybe you missed this in my last reply, I had suggested this range can
> be 5150-5250 as in the document you linked to. If you agree with this
> change I can make it when I apply the patch.

Applied with this change here and in the rules for Liechtenstein.
Thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
