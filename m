Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=r8Gj6BBt8coP8x2sF8EoQ7s6gy7z5t8X67b29KyupJM=;
 b=oGEUYC23T1zSjp
 s73L+dhUrY0RV3X/H3/p9XTrfTBtge1xvaerajzzMwvm/tKMb2QTvm0YNZlVP+F/MQvzkHQQdhbaX
 0IODumZLyrVFxk64LpvnY5RuzVPtnPnIG9fY9YyJLxCMEPRMYgGndY1GL1YJJV+yz7oiInn/o4w4/
 Z6VLUvfOuujlG/7SPSA8Zf5RKvdEYd957tBJ8jN9goiUS7weF/OoEayUKnd5u1jg+ecCE0Bx/H6IC
 gafkz0EvMhUWJU3zQA3ZfhijUzlNf4w1lHJYjg6gnxqigHh014orycPRdwttxyQkVPaTQkwE06vPK
 39s5fxYbBoeaQCZBdVFQ==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oan1T-007bXE-Qz
	for wireless-regdb@lists.infradead.org; Tue, 20 Sep 2022 23:51:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663717884;
	bh=m7UKfFboQmNSIazcCyenHKoV2LMBka36TPbLGXyaABM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BweDgZwbwoF2ds/2mbl+1UI7AZu0dZqmQARyExH/rRbp2oia+WNxDHRApRyWEET6y
	 pDknRWJJ9S5N62XXnBdo1d10bCUW4nc6i8BLbZJ86FS1GJU4hnb2SS+iEtqufClPE/
	 VQoOk52vsM3zkLoR9CNiocjzQCc8B3E9VmJTGOtCFCCDKg+o//KW7SphdGzW42JuUw
	 ZKLFuCY7EMmxwrPUMEL9/JLXMZuUejCpw7aIsiZH32+WInwuDTTYJV14ZV2hRoZdv5
	 Vn8yXGDXYfZoBYKmivBR51mh/GQxIvSsUTeipad2ia24PMyxdx36cMk8U6ddacWcHi
	 AWJUxjOU7Vh/g==
Date: Tue, 20 Sep 2022 18:51:23 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YypR+61mc7AAmyxq@ubuntu-x1>
References: <20220909223947.27277-1-cesarb@cesarb.eti.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909223947.27277-1-cesarb@cesarb.eti.br>
Subject: Re: [wireless-regdb] [PATCH v2] wireless-regdb: Update regulatory
 rules for Brazil (BR)
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
To: Cesar Eduardo Barros <cesarb@cesarb.eti.br>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, johannes@sipsolutions.net
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Sep 09, 2022 at 07:39:47PM -0300, Cesar Eduardo Barros wrote:
> The rules for Brazil in wireless-regdb have no comment indicating where
> they came from, and haven't been updated in a long time. There have been
> some changes to the legislation since then, including the addition of
> the 6 GHz and 60 GHz ranges.
> 
> Signed-off-by: Cesar Eduardo Barros <cesarb@cesarb.eti.br>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

