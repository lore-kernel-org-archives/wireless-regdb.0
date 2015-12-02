Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-x229.google.com ([2607:f8b0:4001:c06::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a49mu-0001y4-AG
 for wireless-regdb@lists.infradead.org; Wed, 02 Dec 2015 15:57:49 +0000
Received: by iofh3 with SMTP id h3so50079943iof.3 for
 <wireless-regdb@lists.infradead.org>; Wed, 02 Dec 2015 07:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=LoTDCuend0sMNtPjEzyZtSwXrgvqVmst/xqAVXMMjqI=;
 b=WdxV3aq0Ad+yAOFf0eURfMNFurkaj6IySr61Oa+sV2sMZ9CsRqnA9uQQDJyPSf0u/5
 YqFzmNYvCwy4V+mwe3Zw/vxojZIbxDlGJTYNNX31H/1LIA+Tbovew5tXs58P1UJ7lI+h
 42x7m9ijy0oreaKycOIzSu36D+jYPTnD/PDQwPnSQM6xdTlKl3/hL5hu1QW0PTD0uVzQ
 X0JYszAWmcLfAUQffQBtnjTksxiPdHiQ1Pz0jxq5K/8PZ8FpC7iuqLQhvPQ+TbuJuKGH
 aO8ZuGTbxZQNMkHMTGpYQzjsGbN2d8C6D8DKKFnlHlVUOMDYF2IDrSrVlnaHr9H+1t24
 vQSQ==
Date: Wed, 2 Dec 2015 09:57:26 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151202155726.GA22529@ubuntu-xps13>
References: <1448479288-27002-1-git-send-email-anssi.hannula@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1448479288-27002-1-git-send-email-anssi.hannula@iki.fi>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
	rules for Finland (FI)
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
To: Anssi Hannula <anssi.hannula@iki.fi>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Nov 25, 2015 at 09:21:28PM +0200, Anssi Hannula wrote:
> Bands in 5150-5350 MHz are limited to indoor use, and band 5150-5250 MHz
> has an increased power limit. The ranges are also slightly expanded to
> match the regulation.
> 
> Regulatory source (6 Feb 2015), Section 13:
> https://www.viestintavirasto.fi/attachments/maaraykset/Viestintavirasto15AH2015_en.pdf
> 
> Verified also from the authoritative Finnish version:
> https://www.viestintavirasto.fi/attachments/maaraykset/Viestintavirasto15AH2015M.pdf
> 
> Signed-off-by: Anssi Hannula <anssi.hannula@iki.fi>

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

