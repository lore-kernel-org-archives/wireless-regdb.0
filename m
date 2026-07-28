Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1184DC53219
	for <wireless-regdb@archiver.kernel.org>; Tue, 28 Jul 2026 11:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kp7MGIokMoBuZKuViNZKUaUCbVyIgCGzZnPG7ZF34kw=; b=FOOah9JmbJlStBRUDBRbJ6z2aT
	sMJW7CC9zVVgD3nS84QysYAPZJKSRnciDrseKKEmdsX7mYJQqQSsblK0I0Zb9VFm02FUQCo0fnDbF
	XK9UAPCw+lzpaIk4MUiC1xGJZPeLWYZgyax8fnhQVkAOld8o6dfWntmv1AdRf2+by+2NAXw73SVrR
	jIESx32dokV/VFlngejlTfg8/7R7YGtvddOvQo1UKJTQRRef0MNv8BlqQ+b8q1ngEh8Ngc1+DnVqT
	FZPMjV2Fpmezjofnuog1YPXpEHj+NNXGNxhWj2MBlMjR0fTyPS/7UOFEGU9zEVlNqdUGQEikVn+h2
	QLIFTNMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wofbs-000000051rE-1m3D;
	Tue, 28 Jul 2026 11:04:32 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wofbp-000000051qo-40Vo
	for wireless-regdb@lists.infradead.org;
	Tue, 28 Jul 2026 11:04:31 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-47f7854678cso2133456f8f.1
        for <wireless-regdb@lists.infradead.org>; Tue, 28 Jul 2026 04:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785236668; x=1785841468; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Kp7MGIokMoBuZKuViNZKUaUCbVyIgCGzZnPG7ZF34kw=;
        b=YFqHOjb39R83tbRKF8p1GioZ0Ze7hOkaIk+jy3HB+tErUXOZR97Ipdz8j9vvVp3OIC
         EiG+tKJRiDAwjK5msw/1rB/vq3CMaMcg28rYUhRM/gYZlU5dZq3/oaI0e5J8ogC2dBcw
         n/dkRLBJIz6CgWy6NpH7h9Gp+5Q4PS8QxXVUp+ZrQaaMU3S/u2PAfUKEf5vpEJ1BwS+h
         W0TL5xbnoPCExcGZmvDvn+iD5tfV6M5E2yskuoVG4JCKTwxmEG8W2S3/PtQEC9HVRu/s
         UoQEro65GkXAs2tarIBSH1rIy2oKw5gEf0xEPVil4m9S3nc6qTe9iZA81lmIkEUqnNng
         IFZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785236668; x=1785841468;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Kp7MGIokMoBuZKuViNZKUaUCbVyIgCGzZnPG7ZF34kw=;
        b=I+ohnc7JczZchN+8TWtA4X6nKswHVQ9xKW62WWc1vTUpS9ocvjzh3SupBicdjXf2jS
         GkprnsGl4O6+V5gySraoAvz5AZyr/kFCy1Q3lvoXEPcOs/A481j4LjMCIBC6RpVX3Him
         uim4IcLJpfAdevMbP3NQQvFiLTxZdG5IFirqP2nQ4/906H+dbFFwCqMay5DrhhuP33TW
         XYnIc7q5OTvHoJX3eMbkQ+8BUt3CgJzLKn4Dq+tZ+Kiml5VKDd2igVML8MZhOpCDOpkD
         Wv+Um/zWkMqVOnpk6yaX+A1y1PBGt49yNhoMhzWwgh964W5XyF7J+pm2aDmLGGm4rJGj
         ySkw==
X-Gm-Message-State: AOJu0YxkbsZT996Y38mKjdH0Zic2YwzbzwO47ubepKSNb6JZA/PgBRMw
	xIT0730tO6bm027IRDzyt6o4YSCAm2nf4BNukz6pXtKYVqyvWBj8PVoA
X-Gm-Gg: AR+sD138XB9tATsnCv0OuOFPBMuqXzK/do0i+AvgZQAMRjTDQUHAYC1GXVEiZ8DEzb6
	cJXJulV0Q5BXKnSYXZmoYf7cMKcXlG4hT5viYKWB8FgVu+DROFd9jZ4bUHrmAZF+5bg0h+7VFVf
	gqXqg/ZpJx+6+clQYwnkmQD5IfYZ2NpqSkvGQSW+lR7xJz0qhVKbJCeoH8Q1xRnzbRCvbMMjTGo
	R7XJiIUKhtpQc1qKZuwrW6AE+pxGw7Yai/qUezx4BCKlhoxF6wYnBIbrLvweB5kDF/6m+Vld+Av
	ygdokDj6AwS+HeWl1haf10EFTTqjqsK9tI6k9sMPh05HV4upgCilaPlF22hOHwQbVHb9aW2U/Xj
	gL0YUPFkxYdrGSbG9AQU/zwdprhwzOtRAu+z6UCF+ijsFijgo72oFU+oHT+z8lIEBJF8z7cP6e4
	X7nRNtpS4saGtqeUYULBRZ/EI1FE2mE+wHYEqY
X-Received: by 2002:a05:6000:4283:b0:47f:51bc:efe2 with SMTP id ffacd0b85a97d-47fb1e5ff9emr2133387f8f.11.1785236667892;
        Tue, 28 Jul 2026 04:04:27 -0700 (PDT)
Received: from localhost ([102.128.173.0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f85c6e9a2sm59851104f8f.35.2026.07.28.04.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 04:04:26 -0700 (PDT)
From: Louis Kotze <loukot@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: wireless-regdb@lists.infradead.org
Subject: Re: [PATCH v2] wireless-regdb: Update 2.4 and 5 GHz rules for South
 Africa (ZA)
Date: Tue, 28 Jul 2026 13:04:10 +0200
Message-ID: <178523665098.59334.5474064633213292568@gmail.com>
In-Reply-To: <CAGb2v65dYMo7euDHdWbf15MoY-wP5PmR0+_UgTHfHYGXVm_csQ@mail.gmail.com>
References: <20260728094534.3749420-1-loukot@gmail.com>
 <CAGb2v65dYMo7euDHdWbf15MoY-wP5PmR0+_UgTHfHYGXVm_csQ@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_040430_033903_8CD5486C 
X-CRM114-Status: GOOD (  10.07  )
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

On Tue, Jul 28, 2026 at 5:53 PM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> Ah, we actually want the limit numbers and units to match the
> reference, unless they were adjusted for some reason, such as TPC
> restrictions.
>
> Since the 2.4 GHz range is the only one that doesn't match, I will
> just fix the commit message and diff when applying, unless you want
> to send another version.

Please go ahead and fix it on apply, thanks. 100 mW is right. I wrote
the dBm equivalent out of habit; the gazetted row states 100 mW
e.i.r.p. and there is no TPC adjustment on that band.

Thanks
Louis

