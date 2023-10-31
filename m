Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
 List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date
 :From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=xb16dFDNsndZuKwwfTdMlkUB+ygzygFPDygVwa27Xx0=;
 b=Tzd0i1RTJSDU1H
 yxEKmTaShNOkKvzqDbyylB5wpn7CySqEUwj6yEv+xPWV9oVojP8hpexEbYDMdnzjUgNnyUQXoHQQC
 RmSjCN44aP0dUxGmAsEz2sOZGiZMfkTpxfUkxw3dCzBPXvqhG/lwcJquO0AYnjjRJ/dq/G7mqqc7X
 zeXBo/pGadjKQtjNTDUOhT5oTHqrA12w2NpAW4t9qg4rHFFlHMizVhtUmi7RqtRQ0RHpPGulUQmIK
 rAzN1lVw5p78fGQrO+UhhH/usPps3VDE8Vh5XANm8ymJFakLrrVv6AgRKhABHR8K1Q4PNrNHg6Ky0
 vZVWI0c3yqmMgYmQV56Q==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxl6s-004sP7-33
	for wireless-regdb@lists.infradead.org;
	Tue, 31 Oct 2023 09:32:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org
 [100.75.92.58]) by sin.source.kernel.org (Postfix) with ESMTP id
 5223ECE09B4 for <wireless-regdb@lists.infradead.org>; Tue, 31 Oct 2023
 09:32:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88B26C433C9 for
 <wireless-regdb@lists.infradead.org>; Tue, 31 Oct 2023 09:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698744746;
	bh=uFgBPpvtFnSyCFYwY97t4H00HZ5VRzhmUWbnbsuu23U=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=fsjkVXM12nJEGZwqGDBBQjpq5KPqdeBkNmwZha0UVTuJNlNmSV0iMvYk6i2I3qdLs
	 4s9tr/eOjPGoRvODW8LJSJotU1rj+v/xsiyq1Q+/xLrVddkyX7/I+ahNK5U+isaDPu
	 rp4E1zu4nTVNwJFRLOIhmUsg2GvSoiGfR6o7gyb4BW6PwhRdKa9kHQBFJpIchu3W65
	 DbQ9VKjtBXMx9bVdSaEqI5e1B2nFzyYXAPI7lg3gpx0v+V/UJgWf/8LDfcKO/Z4l0m
	 HCTXWbmWY1+GlcH863+vFtA8378z5rMGIzvbFUIG/sWrh/FZJfUAJs/1gMKeQO+CWg
	 GdzYBB+copnDQ==
Received: by mail-pg1-f178.google.com with SMTP id
 41be03b00d2f7-5b9a7357553so1291560a12.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 31 Oct 2023 02:32:26 -0700 (PDT)
MIME-Version: 1.0
References: <ZPJF1/2YA4dP+ggY@ubuntu-x1> <CAGb2v657baNMPKU3QADijx7hZa=GUcSv2LEDdn6N=QQaFX8r-g@mail.gmail.com>
 <ZUAUahZakEvOXpip@do-x1extreme>
In-Reply-To: <ZUAUahZakEvOXpip@do-x1extreme>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 31 Oct 2023 17:32:15 +0800
Message-ID: <CAGb2v66cVj2O89G9qhKCqca+jyBK9ic3866giL=LZX4mQo-eDg@mail.gmail.com>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2023-09-01
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Seth Forshee <sforshee@kernel.org>, Johannes Berg <johannes@sipsolutions.net>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Oct 31, 2023 at 4:39 AM Seth Forshee <sforshee@kernel.org> wrote:
>
> On Tue, Oct 24, 2023 at 02:23:26PM +0800, Chen-Yu Tsai wrote:
> > I'd like to take up maintainership.
>
> Thanks for volunteering! Sorry I didn't get respond sooner, this thread
> was buried kinda deep in my inbox so I didn't notice your message right
> away.
>
> > As far as I know, I would need to:
> >
> > 1. Make a clone of the repository on git.kernel.org under my own namespace.
> > 2. Generate a key pair and certificate
> > 3. Put the certificate into the kernel tree
> > 4. Update the docs to point to the new repository and certificate
> > 5. Review incoming patches and apply them
> > 6. Tag releases timely
> >
> > I'm not sure if I missed anything.
>
> That's the bulk of it. Most of the time is spend validating proposed
> changes against the government documents. There's also maintaining the
> tools to build the database and moderating the mailing list, but neither
> of those are much effort.

I managed to get some support internally for the validation part. I
should be able to lean on our WiFi team or external partners if docs
provided are insufficient.

One thing I forgot to ask. After a release is tagged, is there some
magic bot that produces a tarball and uploads it to kernel.org? Or
is that a manual process?

> Johannes will be the one who needs to accept your key into the kernel,
> so we should wait for a +1 from him at least before we really get the
> ball rolling.

+Johannes for his opinion.

Thanks!
ChenYu

> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
