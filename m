Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=61sJpKOGax2E0QkzjjQKGU40dBIJj7OZxllpjPDnmac=;
 b=3QVjHlEPEdukmT
 nr8E4yMvwQgUMkMxDtJ4Dprof3GoJxhxYGnF/3uuAcTKijc4XtPSta1oOZGwpkMm0Jp5FRjXv1FTL
 lo2tTvI0F99UFE/WoSJlMtNKOJDu2E+Gou5384DMOMeVomTd+zERgX2TGT1fqnUgYL4ELARo+4Q5D
 WdnQjlyy9MBJw2RZpYWriVlZxzNE1oHR9k8O1YYTZqzrP/Q3+sbBmWb4plVXTVHCHiWZncJySrqYK
 uw/vCjc9beSDTNJ2zd6mMD1VIbGKcSkldKjjfVzODnLDvoRYUUiQGFmeRvxoQEUujrUs90oR4i3O0
 hwYanLtZ3iKXayXJ+qeg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRa7i-00F2Ko-G8
	for wireless-regdb@lists.infradead.org; Mon, 13 Feb 2023 14:48:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676299684;
	bh=HNfv647gJT0dBNkG5c5F9MxLCVJD5r7S65m8Jrvhha8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ObUKh++mgcsqxusn5wFzMgUPpHrNKCQ9WdJDSUa5DSu6iahRKWaRqGXKw5zybcDfS
	 jh4Acl3FytHalXFgdgaLfDY8leelVWVJKXGEUStdnywm3dVMPe0g7y9nPn+9DU1Zip
	 22WiTz5Gm79z9HZei6COlF6JXbNJdl5NJJKE3C5xnrCoJZRg1xrcoR9pKbcvCMll6p
	 U7hgPiMjqA3MTIPXr0TEVfUlxeZLI/8ra0UEZHm7yCCTElZ2nsyuWbtyJumf4m6lo5
	 8xiTEmkBik41Xvq0N+guckAdWz0OKu8v179XM/Ht3Ynkq7kDz05SbWLMbdiTKvzmuF
	 n5gvJ3vXq0fVQ==
Date: Mon, 13 Feb 2023 08:48:03 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Y+pNo9jQqmMIt2QV@ubuntu-x1>
References: 
	 <CAO7DJoCeUdHzRYkXg-HXTQqYpBPijR-ZbUy_C6Lx35s-wYR-mQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO7DJoCeUdHzRYkXg-HXTQqYpBPijR-ZbUy_C6Lx35s-wYR-mQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 info for Russia (RU) on 5GHz
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
To: Eugene Konev <uejikov@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Jan 31, 2023 at 07:49:09PM +0700, Eugene Konev wrote:
> Update regulatory info for Russia on 5GHz in accordance with
> current regulatory rules.
> 
> Source: https://docs.cntd.ru/document/902048009?section=text
> 
> Signed-off-by: Eugene Konev <uejikov@gmail.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

