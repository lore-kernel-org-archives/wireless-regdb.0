Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1394E606A321
	for <wireless-regdb@archiver.kernel.org>; Tue, 24 Nov 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=d//cIUq3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=lu3TBw/WM/urq3xDHmNn1XSEBmwlI+PkHSfcimE0uNI=; b=d//cIUq3FAJ/lo
	wHy2e+AHyupJJwHMFpQrx2K34pWeDxqoqzUgZBOcfPAtnAaBhIRzdz1p+D0CPYFBwLIokBkCn8oDm
	Qwkz5YVMxG4y5pKkpVqs6rnHAkjYA59JZCRNykzYA0oMwAcVnkH+t5YbYkKwlm08e64GaKpi7/4aQ
	rTQf0e7vCcPE1GQ1VvfwGv/oFY53/w/W2XzKgXMcB98+KDsXAZFfeYaLOa8sFElFrGVR1+0C4T+Hq
	mEqZHcNJjyMf/0czPQYfbuJVeFKwGquQYMpneySnxQd9QbHzoNDR/pjEte5cc3kArwDuKyJquUWvb
	UeV3uPBA3B02hVyQsfyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVktY-00000005j8Q-1RL0;
	Tue, 24 Nov 2026 07:24:52 +0000
Received: from s24fifth.in-solve.ru ([81.177.160.4])
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVktT-00000005j7j-1Lv7
	for wireless-regdb@lists.infradead.org;
	Tue, 24 Nov 2026 07:24:50 +0000
Received: from Spooler by s24fifth.in-solve.ru (Mercury/32 v4.52) ID MO0006A0;
    24 Nov 2026 10:24:47 +0300
Received: from spooler by mail-aux1.in-solve.hidden (Mercury/32 v4.52); 24 Nov 2026 10:24:27 +0300
Received: from mail-s22 (10.0.1.22) by mail-s24-t.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG00069F;
   24 Nov 2026 10:24:27 +0300
Received: from Spooler by mail-s22 (Mercury/32 v4.52) ID MO000516;
  24 Nov 2026 10:24:05 +0300
Received: from spooler by mail-s22-aux1.in-solve.hidden (Mercury/32 v4.52); 24 Nov 2026 10:24:02 +0300
Received: from ehlo.thunderbird.net (128.204.79.160) by mail-s22.1gb.ru (Mercury/32 v4.52) with ESMTP ID MG000515;
   24 Nov 2026 10:24:00 +0300
Date: Tue, 24 Nov 2026 10:24:21 +0300
From: RFAREAS Support <support@rfareas.com>
To: wens@kernel.org, Chen-Yu Tsai <wens@kernel.org>
CC: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Subject: Re: [PATCH] wireless-regdb: Update 60 GHz rule for Ukraine (UA)
User-Agent: K-9 Mail for Android
In-Reply-To: <CAGb2v64HFxk90gUKbtf-MbZX1dhYrpH5RT_JCWRzpUxOwpnxnQ@mail.gmail.com>
References: <2D65518A-EBD5-4E6C-B4D2-7819D488B374@rfareas.com> <CAGb2v64HFxk90gUKbtf-MbZX1dhYrpH5RT_JCWRzpUxOwpnxnQ@mail.gmail.com>
Message-ID: <C1FBB771-40F4-40A9-AECF-7D1F45088C36@rfareas.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CC-Diagnostic: Header RECEIVED matches "*([0-9]+.[0-9]+.[0-9]+.[0-9]+)*" (0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_232449_032115_2F003860 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> I couldn't open this one, but my LLM agent says it matches=2E

In case zakon=2Erada=2Egov=2Eua does not open from your side, the regulato=
r
publishes the original text of the list as well:
https://nkek=2Egov=2Eua/static-objects/nkek-october-prod/sites/1/%D0%A0%D0=
%9E%20%D1%82%D0%B0%20%D0%92%D0%9F/dodatok-do-postanovy-361-03072024=2Epdf
Item 78 is not changed by the later amendments=2E

> It also noticed that the 2=2E4 GHz indoor-only restriction was removed=
=2E
> Could you check? If that is true, please send a follow-up patch if you
> can=2E

Confirmed=2E Item 53 allows 2=2E4 GHz Wi-Fi access points "inside and
outside premises", with the antenna at most 6 m above ground, and
item 52 (RLAN terminals) has no indoor-only condition=2E Follow-up sent:

  [PATCH] wireless-regdb: Allow outdoor use of 2=2E4 GHz for Ukraine (UA)

Thanks,
Valery


--=20
RFAREAS Support

