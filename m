Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:From:References:To:MIME-Version:
 Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=bLM4iN6LLUb9KnJRViPVvIowiiBWo0PyBNkirG6WPBw=;
 b=1SsVDvCkFrbMdsrASito857Fam
 FyQqRhR2Zpl97wTveJ/ZHlAVIabyCs69gX1dQ6cJ+TtYirv2dv6O5WvPZXwDsBRivuuoLfZfnELuv
 wOyYwFyJlcc4vO4Y+jRF2iACRuABc6jsyM46Es0/tlFPyC92x4R3bKDcKtA2feasf8iqZ8OxYX9DA
 dw8ABv80QhVDtxsr/6yfmaLzwdYAbFNeopXasGsF/VSBAcDVyzdbzMQjz2SQfXP7mXhBgtmGSRRC+
 MC0ykGkgCQv+/fzEoax1vO4rF4MEQ0q+aKxCIS/n6uPAErH5fCOZVgaTBSkTzJspZVsB+AdD+FBzq
 3WoCdTuA==;
Received: from mail.as201155.net ([185.84.6.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMAhZ-001ifc-Kf
	for wireless-regdb@lists.infradead.org; Sun, 29 Jan 2023 16:38:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID;
 bh=EDuGK5DRPV6olilbrnUjkFBePslkJenv16XEfIKygL0=;
 b=JXsEnExx30obKYc1OH5whi8cTAFrf/nMUmq8f5bogDBiO5cXZlFjmhg/c2JkI2grrM1rRbvAduqxC8XyQfh+LFl/ee+bdVFUoQ+XEqFxh9CH4MjG+1fdGLTHkFJJi01hahHsvVjNwx5oFKwJR907gSjkNJlW7irG7ZDPGmueJQk=;
Message-ID: <2efd8b66-9e0e-f907-7daa-93bed9f2a723@newmedia-net.de>
Date: Sun, 29 Jan 2023 17:38:31 +0100
MIME-Version: 1.0
References: 
	 <CAO7DJoDCV_NnKqR==GYmtFnMdJrbEvz7UzTQjydWPs4RnaCkpQ@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
In-Reply-To: <CAO7DJoDCV_NnKqR==GYmtFnMdJrbEvz7UzTQjydWPs4RnaCkpQ@mail.gmail.com>
Subject: Re: [wireless-regdb] wireless-regdb: Regulatory rules for Russia
 (RU) on 5GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Eugene Konev <uejikov@gmail.com>, wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

russia is ETSI. yes and TPC is always combined with DFS

Am 29.01.2023 um 11:16 schrieb Eugene Konev:
> Current regulatory rules for using 5GHz bands in Russia are the following:
> 5150-5350 MHz: Max EIRP spectral density 20 mW/MHz, max EIRP 200 mWt,
> indoor use only, automatic transmit power control.
> 5650-5850 MHz: Max EIRP spectral density 20 mW/MHz, max EIRP 200 mW,
> indoor use only, automatic transmit power control.
> (rules in russian: https://docs.cntd.ru/document/902048009?section=text)
>
> Does automatic transmit power control requirement means that DFS
> should be enabled on both bands? If so, which DFS region should be
> assigned? DFS-ETSI?
>

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

