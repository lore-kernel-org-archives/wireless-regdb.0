Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=lHToVofQAHTZLXKjK9xvdbFXW4bbnYw/1eUwF5nG+28=;
 b=BUj8kxBzJEQVvt
 IEGLcSZlGNr2f6fBw5kEv7UIJHFrzxng5D52s2BF3f4YZDNe+ViIBECPu7ggt9yezSB1cJvottPRp
 ALQGEFO0nny8FSEemGB+OLuDxmrc5GGg+qoCs6O8ie6vVfT3nSCE6CF9pCXm8E/wtb03nwdzumvz0
 LVEApI6H2M+sR9xYiYaPbvTB3xHoeMGScsSDZ/59sXS1TsYmHyZsZLNX37e1/LKdejj8QWf6WZBzb
 qdJSw4UqMSwIpMdJEOBGGBGud72XePjhvmUKwybwS7wFmHGneDNtLE7vpQNNmNJsn4jiPYfqoRSOJ
 hZeZxGW31WCMcGdupVjw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mCBQP-00DzOQ-5m
 for wireless-regdb@lists.infradead.org; Sat, 07 Aug 2021 01:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628300816;
 bh=mtPrcZcxj6ZQ/cTyJmc6jpqxFDXO16rqxGcvLl7bi8U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z46+4Js3BU7bYpyWel3NfMI4FV37b/wmU+K395oOtuqz7PLjjHS9OdVQHtJvcPItw
 M/6IpGADBYLhRf+jgXtMM5H+3/WQ9dW5A6qEQnXcHFl+pwxUMF4oye/y6yKr+Mg3DJ
 JgGOMiq4/59KX6T6LJZWFxV7gqcX4wDkdzU90au+O8SRcyE6RYCRYRCAAhDovi4FsC
 2I0KkHEuA74oFPJsQPlBMSxWw/34sLXe5L41hSVyHxnxVg3W1tjbaaIjysYxeApXbn
 ANjvArB4pTFxz2wCb6akNsjIswOVFe49wdIjCPD/H7OixDKFkW3pg/9hNo72wJ/IUN
 hxkrNsTId1FxA==
Date: Fri, 6 Aug 2021 20:46:55 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YQ3mD2SZhQdv7ZCg@ubuntu-x1>
References: <20210804083337.8833-1-bjorn@mork.no>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210804083337.8833-1-bjorn@mork.no>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Norway (NO) on 6 and 60 GHz
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
To: =?utf-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Aug 04, 2021 at 10:33:37AM +0200, Bjørn Mork wrote:
> The Norwegian regulatory authority (NKOM) has updated the existing
> regulations.
> 
> WiFi 6E is now allowed with the same restrictions as in many/most
> EU/EEA countries - i.e 200 mW indoor and 25 mW outdoor, Using the
> DE entry as a template for now, until this dual entry can be
> described in the database.
> 
> The update also extended the 60 GHz band to 71 GHz.
> 
> The official announcement of the regulation changes:
> https://lovdata.no/dokument/LTI/forskrift/2021-06-29-2312
> 
> The existing reference in the database has been updated with these
> changes, so no new reference is needed.
> 
> Signed-off-by: Bjørn Mork <bjorn@mork.no>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
