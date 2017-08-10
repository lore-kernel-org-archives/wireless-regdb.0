Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=/Oz+pJc8VesbbsHejpCe5kC0vaIBq6zpNA3KRGnUCC0=;
 b=LhTFqfp/CJHDkQ
 6/LwY8mpxF351l1Q2hoWjlFx0w+LduQUnlMgF8PnBpgsA8bu8aMIGYdSclgsF3QDL6mpA+lII3QuP
 kSXmW9ZmPRuk3xp1Xg7XCEKc170PUNfF7A90XI4yVOs+v4nFLK5tbFCWNdJFuO6ctj0E1WYSs2qq8
 oj6SHZtwPIfwetun5kNmmwHAMkenjb6yO1sqo8pefkHIj2oeGlZHxv4COaeBW6EBwNgOc3j/pyWQ3
 DQtA4J9++QWiXZ9M2Ecewo+pe0KA/wEezfRSOH4/c3JUtUf0tXvFh9EeFbIKmDXxRWJz8I4qNj/ez
 KDbrCVoSgVxdS251mtdg==;
Received: from mail-it0-x236.google.com ([2607:f8b0:4001:c0b::236])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfpFP-00041B-JM
 for wireless-regdb@lists.infradead.org; Thu, 10 Aug 2017 15:19:46 +0000
Received: by mail-it0-x236.google.com with SMTP id f16so15711939itb.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 10 Aug 2017 08:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LL9ncHX7pQc49cRcE+3YtiKSw32MVSfsKBjx8ADNNOI=;
 b=yUtwiBdNX55qp5Ig8OZx59R2ds0klIUTp9NWH4s+sP+gudF2iI1mKUPMoPQlrCnRD6
 LzeNaYVv+863NGS29pTTY5jdJyw7GaWkYyvKii6kVgJnk+BYx+4XP4PFsR4fUcfarAeR
 RBSWGVCU/629haC2nysjufGQWEPq5C4knHQuVqWallD4ZzDpZ4xsU7zJOF3M/H/E54ds
 hcXqrTAsPCYDm6DfMdn6HJXvCv7yJeb4dbycQunQWGlwzh3+q4qRUut+Yb/RUKjtuZVe
 oixE/A+3YleeeNWeNmT433nMwZ1L5FVEVrNNuuluentX3NoycVLMenZ5Gg5UIWFiC1Af
 XhSQ==
Date: Thu, 10 Aug 2017 10:19:19 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170810151919.lnsserhjcw2xrgy2@ubuntu-hedt>
References: <CALfe80gmDFDnvT=MvN8891wudBEAmeQpH1X1_wNzQpkhbLSOVQ@mail.gmail.com>
 <20170703175055.tnnweqg2uyyw2rnc@ubuntu-xps13>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170703175055.tnnweqg2uyyw2rnc@ubuntu-xps13>
Subject: Re: [wireless-regdb] Update regulatory rules for Kazakhstan (KZ)
 on 5GHz
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
To: Vasiliy Safronov <vvsprog@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jul 03, 2017 at 12:50:55PM -0500, Seth Forshee wrote:
> On Mon, Jun 26, 2017 at 10:00:13AM +0600, Vasiliy Safronov wrote:
> > Please add support 5ghz for Kazakhstan.
> > In Kazakhstan there are no restrictions up to 100mW
> > country KZ: DFS-ETSI
> >  (2402 - 2482 @ 40), (20)
> >  (5170 - 5250 @ 80), (20), AUTO-BW
> >  (5250 - 5330 @ 80), (20), DFS, AUTO-BW
> >  (5650 - 5730 @ 80), (30), DFS
> >  (5735 - 5835 @ 80), (30)
> > 
> > http://adilet.zan.kz/rus/docs/P000001379_
> > S 5.282 etc
> 
> Thanks for the submission, and apologies for the slow response. I've
> been trying to find some time to validate the changes against the
> document you linked to but haven't managed to get it done yet. I hope to
> be able to take a look at this soon.

Once again sorry for the delay.

I've spent some time trying to look over the document (rather a Google
translation of the document to English). I'm not confident I understand
it completely, and I'm also not entirely confident of the values you
provided. If you could explain how you arrived at those values and
answer some questions it might help.

The document has two tables for each band. The first table seems to be
the ITU regulations for the band in all three regions, and the second is
specific to Kazakhstan. If I rely on the latter then I must conclude
that the 5 GHz band shouldn't be included. Am I misinterpreting
something?

I also haven't been able to determine the basis for your power limits,
can you plese specify where these came from?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

