Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=4uqiBAmP1fBmWB0yp86TgT4QbPI8dMWQH80vz/rj7TE=;
 b=NbPOtCfGrQn9a6
 cQcnOM9gbdwSUyMQsnF7zeJ3oyT0SwKkaUpxk9/RhkA4yEks0m6KamIq+4EQcfr/j6l7zKyO3J+TB
 rh24HDJLdrTaFWpZhe0E8gK7isLgz+H4hBLLD+Y4YTp6ipyrO4q99ZkRuIistTKxfZvKljXXPPI9+
 L+fkkHdf09MZDzgE7NcZdAqQlns33PI9XV9gRoAt2KKXjMEQ/EWERQoie7JZN2TdEEa+vTlZxWJlA
 y45EUUBZCUTyMxjZkkunfu3PWuzb/NoeTWzglzhatKP5oou8sFyRWnpn66a5h1cRKsQ9lTZMgjmx9
 RppOVm2aut3LW8JjOMRA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4iFJ-003fZy-0v
	for wireless-regdb@lists.infradead.org;
	Thu, 01 Jun 2023 13:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685625700;
	bh=RqjrPYnvUJzRVywrJOrTYUsyPyv1BqLehdpXFxXeWv4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ewBtFp2rRzMe6WlmOU+McDv+7ilTktozcVAZKKsv1VraFly1hPrA0QAQk24rcdjDe
	 g8z6EhK8jS4Ge/DZNt6fZGugURrB6V7ndFX6w8li2ddbzJ7yUOHPQxebRPVsVlGXk6
	 1uAXYk59fvZx2Dc/IMcqd73e9xPHkBGxBOqyUIQZLazhh3UuBS7A59m/b64WNzxuOJ
	 iWWvII7/8njibuEhdmjex0t+u0MaZY7xySvXITT+BQjtT93aTDN4vzr0Ti65uiKCo/
	 e63cPXBjxJ2hUbt19zkEUtLYYKUeXfyEevREbEdd7G4YdnESA6byZfrCz6WLCj8Rae
	 owec4JRFE8D+Q==
Date: Thu, 1 Jun 2023 08:21:39 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <ZHibY/SqV02YuEWL@ubuntu-x1>
References: 
	 <CAKOr0YRiWtywH_hggMn0jFivS7GOp9huw+ib5Lz43BxWo5M7CA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKOr0YRiWtywH_hggMn0jFivS7GOp9huw+ib5Lz43BxWo5M7CA@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Egypt (EG) on 5GHz
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
To: Mohammed Ismail <m.ismael@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, May 25, 2023 at 12:04:00PM +0300, Mohammed Ismail wrote:
> Hi
> Current rules are
> 
> country EG: DFS-ETSI
>         (2402 - 2483 @ 40), (N/A, 20), (N/A)
>         (5150 - 5250 @ 80), (N/A, 23), (N/A), NO-OUTDOOR, AUTO-BW
>         (5250 - 5330 @ 80), (N/A, 20), (0 ms), NO-OUTDOOR, DFS, AUTO-BW
> 
> it is outdated , here are the updated information
> 
> https://www.tra.gov.eg/wp-content/uploads/2021/11/EGY-NTRA-June21-NFAT.pdf
> 
> https://www.tra.gov.eg/wp-content/uploads/2021/11/EGY-NTRA-June21-Chart.pdf

Thanks for the links, however they don't seem to contain the information
about power limits, etc. that we need to update the database. I found
this document:

https://www.tra.gov.eg/wp-content/uploads/2022/03/EGY-NTRA-March-2022-SRD_English_Final.pdf

From this I think the correct rules are:

country EG: DFS-ETSI
        (2402 - 2483.5 @ 40), (20)
        (5150 - 5250 @ 80), (23), AUTO-BW, wmmrule=ETSI
        (5250 - 5350 @ 80), (20), DFS, AUTO-BW, wmmrule=ETSI
        (57000 - 66000 @ 2160), (40)

If this looks correct to you, I'll send a patch.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

