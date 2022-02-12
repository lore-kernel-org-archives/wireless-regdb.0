Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=iUWLUztgpvbX8qbheaVqeBJ0O7LzIUMxZer9mHyWLe0=;
 b=ZHun6JM7NVFmiN
 o75hxFgJUCevaNfFmH6ytl/evzNroDAAHldpvhUSWtnIvB01+JvBkUBAKWqI/lywwkfmHdj2/5PCE
 /rFocUvuMM9bqhJXukXS34XslO6IPcpKbeyZYAdA50QGa4A6LCrCOzYrxqg8j08xf3Ge98ifGi3Ur
 vg2Jhev5h8dzEYdIwl5JxA3rmzYyIfzrDxmexRBlrQuMGL35DRPcwAUf63KTYW9I5mawb9NqsWcXu
 q78n3B5M0T0Kg1JzD4t/Ca2i55N9qDE6AUfkV0HaG51gYc+P6dVe+VOV5cCmAy/umbZJ1qgNCLWkc
 v3GU8dID3Ix1s8zv36eA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nItZO-00A3PP-DT
 for wireless-regdb@lists.infradead.org; Sat, 12 Feb 2022 14:40:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644676811;
 bh=/eFNnjWFqd1MNt+vKE4rxblGE4LU4hHpUrutMVowgQk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xp42/MhRrTo9QgGkmslq+ZX1kZKGgGIrYkuT2pniQNKG6UxtS5rZ1ikFMJLf9J8kx
 WaWKyg9AKiTXbIS4Y6GoyXW8fB2+TyPaD19KGBbHAxVQMaikorKicLEDd5HPpkX1Bg
 cVyGx7NGnvnlMJYqajHwIhq8Lal2JuhrJmNy5e84/x1Bhs7B6aE+Nj4Y0KhC+BMxXm
 ekR5Ot91LhMypiDafsH9ypSn+oOVG0GsCOSDJOHzc3F/3QF2bZDhHtpbbrDhkBe7cW
 ewdFRkJOTImRCnMgENZlizs3psHnuLZ71b9EG4AQ9O2L03plYuhtLk2/8IvCx/6Qz1
 5s+RWwh8SQ5ZA==
Date: Sat, 12 Feb 2022 08:40:10 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YgfGynKgHRb2rhMW@ubuntu-x1>
References: <20220123204346.14588-1-romain.izard.pro@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220123204346.14588-1-romain.izard.pro@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for France (FR) on 6 and 60 GHz
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
To: Romain Izard <romain.izard.pro@gmail.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Jan 23, 2022 at 09:43:46PM +0100, Romain Izard wrote:
> The French national agency for radio frequencies (ANFR) has published an updated
> revision of the normative radio band allocation table on 2021-12-14. It includes
> the authorization for the lower 6 GHz band for 802.11ax as prescribed by the EU
> 2021/1067 decision, as well as the authorization for channels 5 and 6 in the 60
> GHz band for 802.11ay.
> 
> The declaration for the 6 GHz band follows the Low Power Indoor constraints.
> 
> https://www.anfr.fr/fileadmin/mediatheque/documents/tnrbf/TNRBF_2021-12-14.pdf
> 
> Signed-off-by: Romain Izard <romain.izard.pro@gmail.com>

Applied, thanks!


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

