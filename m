Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=9UwzoaiEFlNWKaQ8VWB7RlqmXEJLLR0Tpy6IVhVZIhs=;
 b=JqJknzTY+sF+Oo
 0V0icZ4KVmJpay8rG2p4k+y0r6mFnzrYtuMpmVNrGU+VJZ0xAu1HmNctvT/SAYeSbyCMGWVZMhZ+A
 6kX8IdHnQAW52tDCi4NXt1PSnm/gPUQjdiRP/wA/QIhGnjntnw0VRJBaW2JUEq/rWvDlYYczVN9Mp
 Dn3xoDw6/DxbcGk4whzz7NSOVkCMW9v0sCftuMqHquC44aRzO+Q7u3CFXzTBERI/badT5v235Dx0/
 +LA8sevvfsLuLuEVGDi4eu+YZb+FTRZlrTva8QfrgtX58rkHtyYduY3uZOHZhhBdasBfuI2lgsOXz
 X+5SSR4NbfQN+Rv969+g==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnMfE-00AA3y-0K
	for wireless-regdb@lists.infradead.org;
	Fri, 14 Apr 2023 16:52:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681491162;
	bh=ymu7g2uaVdfKeqRIR4pB6ksp9kMd/qZYNI8NivqgtVE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OLEP+ZrGMGqLbSXrxc1YvNZHubyLPB1wjKu0YuftUQkHaBTYdiD8UXJYtovaZuoxh
	 FotC1+NYNqz79QDOhquBfI5LDHgOU9TnEYcXEE5ZBC2lzWTWkS13vkpjNYkPKJuUpA
	 uk2P21w5idHAJU9IyUhVEwbn/cWMsydACAdmZAhIbAcWT60uzmO61stHTibuxwWvGr
	 ekHf4R53ISfGoA3Qy0K89xrVsctmQMOyaXHlJFPUnFKGa137Q072Ggw5ac036DArpa
	 ONtPT8VpKi4fEtpqRnW2XHn4oBDngUOPuMU6a4esckMIJhAPj/18iFzLCegSc/KkmI
	 1BgverK7L+u1w==
Date: Fri, 14 Apr 2023 11:52:41 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZDmE2YcOgbSektIE@do-x1extreme>
References: <411a77cb-47f1-2f97-76c6-939c024654b4@16depo.xyz>
 <000cae34-88be-9ac1-84c3-d7d0e6748b18@16depo.xyz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000cae34-88be-9ac1-84c3-d7d0e6748b18@16depo.xyz>
Subject: Re: [wireless-regdb] [PATCH] Update regulatory info for Russia
 (RU) on 6GHz
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
To: Kirill <me@16depo.xyz>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Apr 13, 2023 at 11:25:12PM +0300, Kirill wrote:
> Hello, Seth. Is patch for activation of 6GHz are good? Do i need to provide
> some additional links?

Sorry, I haven't had a chance to review it yet. It's been a busy week
and I have to review patches in my spare time. I'm planning to get
through all of these pending mails this weekend.

Seth

> 
> On 25.03.2023 04:04, Kirill wrote:
> > Update regulatory info for Russia on 6GHz in
> >  accordance with current regulatory rules.
> > 
> > Source: https://docs.cntd.ru/document/1300597464?section=text
> > 
> > Signed-off-by: Kirill Matvienko <me@16depo.xyz>
> > ---
> >  db.txt | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/db.txt b/db.txt
> > index 915a3b9..7f338b2 100644
> > --- a/db.txt
> > +++ b/db.txt
> > @@ -1500,11 +1500,12 @@ country RS: DFS-ETSI
> >      # 60 GHz band channels 1-4, ref: Etsi En 302 567
> >      (57000 - 66000 @ 2160), (40)
> > 
> > -# Source: https://docs.cntd.ru/document/902048009?section=text
> > +# Source: https://docs.cntd.ru/document/1300597464?section=text
> >  country RU: DFS-ETSI
> >      (2400 - 2483.5 @ 40), (20)
> >      (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, DFS
> >      (5650 - 5850 @ 160), (100 mW), NO-OUTDOOR, DFS
> > +    (5925 - 6425 @ 160), (100 mW), NO-OUTDOOR
> >      # 60 GHz band channels 1-4, ref: Changes to NLA 124_Order
> > №129_22042015.pdf
> >      (57000 - 66000 @ 2160), (40), NO-OUTDOOR
> > 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
