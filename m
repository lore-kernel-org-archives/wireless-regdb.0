Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33BACC021AA
	for <wireless-regdb@archiver.kernel.org>; Wed, 19 Feb 2025 02:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dE15IpfuHv5IuYBDpFLLMFa5TpDTNEmOVHVBkWmqALs=; b=f4DBtPDSb4c2ymxKHW5qFlnsCC
	+OFqFsnD8sAN2fOjpk0Cpm2/3UoyI2g1hFkJbedtaHa8tS3ChtDk0vDiPkkpkUXR0Glxa1Gp2WUJi
	5KNw6XQlwJUFCsZJADNSLKCh9MO+fkO0NHLw/Ef1MNbR7RfgY00+jDXsnqp/NHUi/gAJfPd4I5BS6
	JMBFjYJJBKuzPm+dREzJhxVOYvVAhvYRf93cm55gcjnVSmRBCHSkF5QLA54+n6eNd/HQGfYx69XG7
	nzvaujOQt4Pr5S8v/NHvvNpwVCM065qW5em/rjU+qkowGWJQS1ttPUqE6RTU16L1UztdefvudvNH7
	OlxX+mtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkZzg-0000000AgB8-3kBw;
	Wed, 19 Feb 2025 02:39:24 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkZze-0000000AgAP-0pHW
	for wireless-regdb@lists.infradead.org;
	Wed, 19 Feb 2025 02:39:23 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-ab78e6edb99so933853566b.2
        for <wireless-regdb@lists.infradead.org>; Tue, 18 Feb 2025 18:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739932760; x=1740537560; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dE15IpfuHv5IuYBDpFLLMFa5TpDTNEmOVHVBkWmqALs=;
        b=RCmqTo7X2uQCPSjGtNA7W449mnPbLMyvn+RFWCrydaokNzfPA0O30V+kySLonKciac
         G71zWIe/pux4C/4oI8De5D/HFz8bggfWtH1g1o5VQdFTLiCNKy4Z/efAySV4womN7cQg
         3eI6Zu40Q5nZjB1CxOWKjK9Z4vNvKCfjHl75W+2r9u6XfrfrmZY9HE1oCMeF/fJEvJOy
         uP6lyx1dzpvLCoiTV7fv0xoiVJkP69lmX2QnAYWZLJLWW5kW10qJRUljCVYaoD43Fr2V
         uWGIY68OEgRbAXRk7kZ47oanO99Cf4fwOz37YI/4oZIyY7d+YBSNEV5UYMOKo+z+l/tz
         1h9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739932760; x=1740537560;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dE15IpfuHv5IuYBDpFLLMFa5TpDTNEmOVHVBkWmqALs=;
        b=M6DTpuNUeNE4S2Zt+MYDC2ORdc2iI0NvmIQZfOzVd3Xd+tQxSehdPRvRstb1Zhyh9Y
         9pF2pK5+Aj2yXx4ACW2LeDMdTmoNV1mavplTQO9XAYbsCQKOrJYfrWr8KpF6kibQh44m
         UW9+uusR1Kh6M23Vnlz+KnMO+cZbhuOKtKwF7d9TE5Q4hfCpFksKgEs6oWhmGx5awOTZ
         hTQB/qWSqiH9m3Vw4Y5BINBT2+q5+nBZ34Lj3cFxBafwdaPc0ETHKB/pT+lnrFVHVmA1
         h6iMlXY8ep3vREVrpkx3I9IJyyU2eMBcaVBpE2PScec5LkvBu1nLzbnwWXo9o32LjLEz
         Tgaw==
X-Forwarded-Encrypted: i=1; AJvYcCU9nSaMF8PanC+MtNSRTuRb/tB3fpIGVyCWFhFrwy6GsEKQWE2W/F1Epr2yXAaRGmrSZLqc8roAKMr3ZVSzug==@lists.infradead.org
X-Gm-Message-State: AOJu0YxRRsXTQVhfMKDhGcYqMD6XUcmpxsK/944TP0Xwt+DKEOmj2PYh
	AQpsCq1Jd+8uk56LS2a+MCPm9B9bGE08ek0eKKoq9vDHwyCrbYQB3P+61C8AwC5qcj0Zf0rDzW9
	oBmqO29CXO6lXFwvmhaNAJfMzsbU=
X-Gm-Gg: ASbGncslFjJlLaDtVpxZovxTBNqRKMYCNbiKSo0iSecAdsgRTH6Bqc4ASdv58fGvZU/
	vw9KqZjYOYjYBQJSEoCTgqFi+szjrzthotkatpzhHAcWCjRNvgWt3yiej22TYfZh41mGXyY8p
X-Google-Smtp-Source: AGHT+IFAMtRvtWqh/vKVXJ0C3N26mL4l+whHbvP/7hglm/5ls52mTVj6N9Vwe7twFE+NyfhW5yb3nIxMdhLLnQWmcRE=
X-Received: by 2002:a17:906:32d4:b0:ab7:c1d5:14f9 with SMTP id
 a640c23a62f3a-abbccccb76fmr201348266b.10.1739932760221; Tue, 18 Feb 2025
 18:39:20 -0800 (PST)
MIME-Version: 1.0
References: <20250218025957.13818-1-pkshih@gmail.com> <CAGb2v66Qev8nQvt54dKDC+Q+rJ5m6+erWO2L4_vSMVqrTe_DRQ@mail.gmail.com>
 <5e433cd8d070682cb6ed31de3a2dd337e6f48b50.camel@sipsolutions.net>
In-Reply-To: <5e433cd8d070682cb6ed31de3a2dd337e6f48b50.camel@sipsolutions.net>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Wed, 19 Feb 2025 10:39:09 +0800
X-Gm-Features: AWEUYZlZEUhW_0dF1fc1R8zNVyB4pmlUp86nXh0nT2GzQ83jBdO776ipx-OdRbU
Message-ID: <CAHrRpums5Czf8S0QmabsP+CTdeRwhfC49J5Qq_6v5Wgt8dKahg@mail.gmail.com>
Subject: Re: [PATCH] wireless-regdb: Update regulatory rules for Iran (IR) on
 both 2.4 and 5Ghz for 2019
To: Johannes Berg <johannes@sipsolutions.net>
Cc: wens@kernel.org, linux-wireless@vger.kernel.org, 
	wireless-regdb@lists.infradead.org, mobin@mobintestserver.ir
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_183922_235108_42978B5B 
X-CRM114-Status: GOOD (  20.91  )
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

Johannes Berg <johannes@sipsolutions.net> wrote:
>
> On Tue, 2025-02-18 at 13:29 +0800, Chen-Yu Tsai wrote:
> > There are NO-INDOOR and NO-OUTDOOR flags for the database. The kernel
> > doesn't have a matching IEEE80211_CHAN_OUTDOOR_ONLY flag though.
> > Maybe that should be added?
> >
> > Johannes, what do you think?
>
> Good question. I guess we could have it, though I'm not sure we'd have
> any mechanics to actually _use_ such a thing right now? Something, say
> hostapd (?) would have to promise it's actually outdoors?
>
> More information doesn't hurt and I don't mind adding it at all, but I
> do think we'd probably not be able to use it at this time.
>
> Or we could add it to the db.txt file but ignore it in parsing now and
> skip the band for the binary for now?
>
> The thing is I don't think we have a good way to say "older kernel skips
> this range" - or perhaps we set the NO_IR flag so older kernel cannot
> use it but then allow OUTDOOR_ONLY to override that given some
> conditions?
>

Thanks for the suggestion. I have made a patch to allow NO-INDOOR flag, but
not parse into binary.

Since I'm very not familiar with Python, please review the patch carefully.
Thank you.

