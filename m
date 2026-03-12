Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11F19FED2CC
	for <wireless-regdb@archiver.kernel.org>; Thu, 12 Mar 2026 06:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eHPzRZcbkDUtrbsriUzk/SzaX/8U3ReA672FYbYTHUE=; b=1nCXDqTsB+/CSfmnGAO/vcGSnK
	8d58u6/D7NHvHnCZx1IRx7LEwUWGbTzSWdwMtxhapzBwyC4Mshb/aeYKcYeYhwyobgSOvUtTOfDMU
	RqTABwELjTSKk2um3ot3ULSq0RTOS6Iw5gtoYyV8PhBYMPqGukry2S6cypNyhQhRVTDgQrlr2dki7
	9AyMuqPJtj32uB3Ay2mRxEnXNWITUBMYUz5n8Ng7kfcAVg6ETS5j3GOWflMyqD0aFOf/6/uQkf6hI
	inBFiGamO8lQGPl8QD0xNdULwILHcQyPlfZ5BvrSaTCqmoQu5pgvXSeD2CwvyyvWryVUHNFMi7HMO
	JqJOC1Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ZMr-0000000DRlE-2VfB;
	Thu, 12 Mar 2026 06:17:57 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ZMl-0000000DRkq-2rz7
	for wireless-regdb@lists.infradead.org;
	Thu, 12 Mar 2026 06:17:56 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-b9358bc9c50so73700866b.1
        for <wireless-regdb@lists.infradead.org>; Wed, 11 Mar 2026 23:17:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773296269; cv=none;
        d=google.com; s=arc-20240605;
        b=hxFoGRQTWdlbhuJQHeS0gmPVT9dEjq6bD7h8j/FuqJf2OeWVn9KV3WGh0um+5HAmFZ
         zwLwZpS1c4aoKNLMcBJZJshtfW/HlLA1TXv5ZKBBIP9ELaKJGYqTHumA2vJByhRqUVln
         /UQN4fT2AQCpGlDljHGSqCj/LtAV6qcGN67EH7p89siAniNwDpXGQHmU8ZMJxBikmUEX
         f5096M5XH2pSkEk97toq0oT8Fy1qlSP15dAL29Lq24U7hD57rnC0GO1YI0QxncwMafNi
         8msYPfqD+8v+fjB/0ki3ceBFfo+N5Xoe37sG5zWry60E9PkSa6ynjVS8C6yYNHG1SLuH
         kUjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eHPzRZcbkDUtrbsriUzk/SzaX/8U3ReA672FYbYTHUE=;
        fh=XsnyWytFFAcebCxuu4GEh7S3G4uFBzNuhhssYEG5MAQ=;
        b=T6cvG323xLu8/gG7CXDxGeRXa5DSZhyOG0gFUIjI+Siw0iN9RsY69MzM3JzFOah1yu
         F/UuvjtTLabBtMfPrSV3O0MvC+SEiAEhKOly5flTlmIqnnk4mTvvyITZGztyrGUj9HFr
         tRBP2SIJW43Eg/EJDm+47BjOmd9X+o/Gp0Kvdf/t7nsx35PrjHH+h/vX5tEvs1rNc6ID
         gfO8qJpR5zZ9OLuOfNs5Ychjk67EZE6SsCcnj1hWDiLrO5nbYZdKeeC6xsZwpCYzkQ0+
         C+UrhoaVC6i4o+1uF39hs7U8V0VU+zLIc7CSwmThfkWj+5BpueiaQb2CsTJ3JFr0qqSA
         7NqQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773296269; x=1773901069; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eHPzRZcbkDUtrbsriUzk/SzaX/8U3ReA672FYbYTHUE=;
        b=YKvfyPX4s5Mh2vxnZ8y2T0HJFUF7D0yTlddSBuu3pnY2+m7A8YbjExxbkwqvzFw3eX
         47agxXmzvMqUDsC3gtxoYq6Z1wHI/9Ml3CE3j5/fH2qcqBoA2R9WyUe7KQaEGYBQLXxn
         Gh2sV7P3MDKOZ4+yWsdxoJGUit63968yTGYjAk2kNZzbgw/nvMhH8lvxlJIEiC/WoB/n
         MXCglmroqWWJz0NLFu+3UMmdKMEqz5imRJtRcDsIOOCSntCn1Msj0YrBmyicKrk8nC4C
         7fNq8E4LFll5mpd5hiFvSCoNk8rmegPpdxeFygPboB0pqkELrrX/q0c3nFJ0f7fVAfPb
         HpSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773296269; x=1773901069;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eHPzRZcbkDUtrbsriUzk/SzaX/8U3ReA672FYbYTHUE=;
        b=UOfOBZfD5c6lzSXw4PbJx/Ls9zEaZHHasIixeHhCkzj5Y3kuGDYQzt7l8zkbF8EpGD
         adiHI7UabJvyJ+wTdYtXFKa0STlEd9xwkH3il7goFhc46ryO/qPodweQ1EJoOeNVXjlY
         i9c0w5melq65biroAGg62dwCPhuhwJcjnLgKmWpy730VkgoYjrksNeub+bT0xxLV5qJb
         CDfVZ70PkPpAx5rPhHq9bMb6UyzfjviWZh9EO71kR3BFs6Iwu+gimD9bzVTcmBHAJzu7
         0oH0TQBGkJ27gjC+jlvjgWPRk9a95/fLQLIeh0B0kFLvgsbjIDe1gXIcKOfeBQKU2E8i
         0cLg==
X-Forwarded-Encrypted: i=1; AJvYcCUewO4FKDMm0iozFUARIJmF7OlCVSCDdRK3J8Zij4FsO0LMdbBkUR3z847BeKWR2hcIFPmjQk5wRcWiSp+qlA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyD46yz6XxAf4HgWEB9x8WO4sB+sUpcPa4hQRgvVDrc6oe7Ejrx
	51xHzOFEdaEuoGNA+wB5saOcV9EDeS5DStdDdliFM/+epGKfbB1X7+psqYHndiz5rCDVgHFvk7j
	3ik+dSm0NzPYilcFkmIc4YvMMeaRagg0=
X-Gm-Gg: ATEYQzxReobAZo2h1L6DIV9ga5CqjJJMYcNkOv04NCpWU4VpjCLw4//eLUUWcqFasCC
	LdyogMElxeyakAmXa/X74BewDUqPYNSm6LnIMfnK3WMeSWdguqarE0LjLqwCgVP4nNE59/AKjze
	TiSSj9s5CvMBklZmGiMTLngHh+MRWd8LtvfMKTFtC0JxtSGNlaOtNuHx4oRdEs47iMorIX3xwln
	9ghL8G7CXw914LkGhTlJO5JwsgKdRCvx5keg6M0bW5e37RKRGJbRGOLG/CwHxW5C9XVPJgX5DFL
	sH1+BLTPqWXXfDcqcygd
X-Received: by 2002:a17:907:9403:b0:b94:ec:4b42 with SMTP id
 a640c23a62f3a-b972e4f9f49mr285831566b.26.1773296268420; Wed, 11 Mar 2026
 23:17:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260311085141.1634383-1-wens@kernel.org>
In-Reply-To: <20260311085141.1634383-1-wens@kernel.org>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Thu, 12 Mar 2026 14:17:37 +0800
X-Gm-Features: AaiRm50RQXmz4783YruXgbC2HTQFlCfjVKqyAmpl438m2_53WCuMHw0xi3TNFpo
Message-ID: <CAHrRpunHZhCfBwueaXQS46SA5JzAbbW5DVL2MF+m2tKvKyMZAQ@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for India (IN) on 6GHz
To: Chen-Yu Tsai <wens@kernel.org>
Cc: druth@google.com, Ping-Ke Shih <pkshih@realtek.com>, 
	wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, 
	Johannes Berg <johannes@sipsolutions.net>, Gaurav Kansal <gaurav.kansal@nic.gov.in>, 
	Degrader Snehil <degradersnehil@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_231751_758823_DE5A6E10 
X-CRM114-Status: GOOD (  17.68  )
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

Chen-Yu Tsai <wens@kernel.org> wrote:
>
> The Government of India has officially opened this band for licence-exemp=
t
> use via Gazette Notification G.S.R. 47(E), dated January 20, 2026,
> published January 21, 2026, issued by the Ministry of Communications
> under the Indian Telegraph Act, 1885 and the Indian Wireless Telegraphy
> Act, 1933.
>
> Gazette details:
>   Title   : Use of Low Power and Very Low Power Wireless Access System
>             including Radio Local Area Network in Lower 6 GHz Band
>             (Exemption from Licensing Requirement) Rules, 2026
>   File No : 24-04/2025-UBB
>   Gazette : No. 47, CG-DL-E-21012026-269488
>   Signed  : Devendra Kumar Rai, Joint Secretary, Ministry of Communicatio=
ns
>   URL : https://www.dot.gov.in/static/uploads/2026/02/88f0ac8c74eb6f69079=
34d17d0015ab5.pdf
>
> The Gazette defines two device classes for 5925=E2=80=936425 MHz:
>
>   1. Low power indoor
>      - Max EIRP         : 30 dBm
>      - Max PSD          : 11 dBm/MHz
>      - Max bandwidth    : 320 MHz
>      - Restriction      : Indoor use only (Rule 5)
>
>   2. Very low power outdoor
>      - Max EIRP         : 14 dBm
>      - Max PSD          : 1 dBm/MHz
>      - Max bandwidth    : 320 MHz
>      - Restriction      : None
>
> Additional operational restrictions per Rule 5 of the Gazette:
>   - Band is prohibited on oil platforms
>   - Indoor use prohibited on land vehicles, boats and aircraft below 10,0=
00 ft
>   - Communication with and control of drones/UAS is prohibited
>   - Contention-based protocol is mandatory for all devices (Rule 4)
>
> Out-of-band emission limit: -27 dBm/MHz outside 5925=E2=80=936425 MHz (Ru=
le 6)
>
> For now, add a rule for 6 GHz LPI. As the database does not support PSD
> information, the EIRP needs to be limited so that transmissions over a
> 20 MHz channel does not exceed the PSD requirements. This limits the
> max EIRP to just 24 dBm.
>
> Reported-by: Gaurav Kansal <gaurav.kansal@nic.gov.in>
> Reported-by: Degrader Snehil <degradersnehil@gmail.com>
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Listed regulation in this patch matches official URL page (translated
by Google translation).

Reviewed-by: Ping-Ke Shih <pkshih@realtek.com>

> ---
>  db.txt | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/db.txt b/db.txt
> index e2842db..d54ef78 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -985,6 +985,7 @@ country IN:
>         (5250 - 5350 @ 80), (24), DFS
>         (5470 - 5725 @ 160), (24), DFS
>         (5725 - 5875 @ 80), (30)
> +       (5925 - 6425 @ 320), (24), NO-OUTDOOR
>
>  # Source:
>  # https://asnad.cra.ir/fa/Public/Documents/Details/73af8590-f065-eb11-96=
8f-0050569b0899
> --
> 2.47.3
>
>

