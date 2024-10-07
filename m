Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D59DBCFB43C
	for <wireless-regdb@archiver.kernel.org>; Mon,  7 Oct 2024 03:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xj+Vz9ZW7EnE7HBGgMOYaqfOkBM5Bs1a5VwavHuKagI=; b=Zr/EM6was2uU0vi5CAtWaKd0Vq
	JY0iigdKBqD6NIVoGzxMdFGEtkswNnha/j5Xa4qnIk4KDCi1d+3/Mn0/VNcku2zJtoCaAY1GIO9t3
	fN91+8/4YVkzALg0D8ZJer1+6KNUwmHUePO8D6fhITPL6bMnne7sLe2rMQhAG206lB0QnS67OvIb6
	Hq90QosF2Ed4zwmQB+fJpR8eQy5lJCDAoFcXf7+Eb4mqB1iYDEmmi4UKkMCV8CekeNwe4bLI7tRct
	Cj3bcgEhwR8+VTdxueLAFnib+z+XkUG4696rEYs+8JotnINxUj/kKm7vsWIt4Ause65zSzGSrLWhU
	9RUYA0yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxePd-000000019Fu-20Zq;
	Mon, 07 Oct 2024 03:27:57 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxePZ-000000019Eg-3TzQ
	for wireless-regdb@lists.infradead.org;
	Mon, 07 Oct 2024 03:27:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 11CE0A414E3;
	Mon,  7 Oct 2024 03:27:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 220CAC4CECF;
	Mon,  7 Oct 2024 03:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728271672;
	bh=qgA/3jdhECS8vtzuX2ovSKREmuAY6NvzTJCan9Pwcyk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=RiWtr4fTZu0KUh32gTEckgB9tXIxZWrvQkFD1fdJm5eVzyuQJNiFSHckG7XoGoVHY
	 UA/k86WvOB5AhP86E2lgxOvtBexKG56IaUH0zoTZ+UzZzBLt7osfhv0F9iKHiFrU2s
	 0WJMY06Q5erxrbXbrWQ0dZ6LBHgJzclZ4zPPnD1ASu72YfQlC9vO28tmwkFVfv/84h
	 GE9Ka6z3KBuXnWwvBX4OlpXRp/XALZ51k9WXb1SiC3oe6c3UcvT23OqKPeGTLvClRJ
	 gTq19WRPhQMUbdOUYlf5VR+5/rVXdkZvo6dv5wbf0gsvq1patEuB7G3AjwOheTZIKH
	 HXsA/r8C96wJw==
Received: from wens.tw (localhost [127.0.0.1])
	by wens.tw (Postfix) with ESMTP id 61C5B5FD7F;
	Mon,  7 Oct 2024 11:27:49 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Ping-Ke Shih <pkshih@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
In-Reply-To: <20241001063430.8347-1-pkshih@gmail.com>
References: <20241001063430.8347-1-pkshih@gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory info for Pakistan
 (PK) for 2024
Message-Id: <172827166939.1242641.9655444804404520136.b4-ty@kernel.org>
Date: Mon, 07 Oct 2024 11:27:49 +0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_202753_970241_5DF0C270 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

On Tue, 01 Oct 2024 14:34:30 +0800, Ping-Ke Shih wrote:
> The Pakistan Telecommunication Authority released FRAMEWORK FOR WIRELESS
> LOCAL AREA NETWORK - 2024 [1]
> 
> * 2.40-2.50 GHz
>   - 30 dBm EIRP
> * 5.725-5.875 GHz
>   - 30 dBm EIRP
> * 5.925- 6.425 GHz
>   - Indoor use Only
>     * 23 dBm Maximum mean EIRP
>     * Power Spectral Density of WLAN operating under this provision shall
>       not exceed 10 dBm/MHz.
>   - Outdoor use
>     * 14 dBm Maximum mean EIRP
>     * Power Spectral Density of WLAN operating under this provision shall:
>       - not exceed 1 dBm/MHz.
>       - not exceed 10 dBm/MHz for narrowband operations on BWs below 20 MHz
> 
> [...]

Applied to master in wens/wireless-regdb.git, thanks!

[1/1] wireless-regdb: Update regulatory info for Pakistan (PK) for 2024
      https://git.kernel.org/wens/wireless-regdb/c/29633a689bbb

Best regards,
-- 
Chen-Yu Tsai <wens@kernel.org>


