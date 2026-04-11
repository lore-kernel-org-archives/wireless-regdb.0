Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC7EFF3ED6A
	for <wireless-regdb@archiver.kernel.org>; Sat, 11 Apr 2026 22:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3uMD9+IKPeAJqpuvErKlWwpJ7W6XguU1pzR+pgq3EMg=; b=irohd6fxZFhAHXFOr/0+qikgOE
	rg3/1oTFG1vzy49KyIw0AonvbBhFn6Sdw9fOd7E0q5swZ8sPnSg4ExCNO6RG4pd1u1ch9wXYiNHDr
	V/vddlgJZ47tzxERavAIEAv5C+7JQhzCwJ0ukyRaaMZxkzRN89EctvjpsNHISwK41BzMInaLEL+MD
	/6s5OnvJq+8ZNuCrZ3W22CqMNERveDfu3PMueq3vXy0N3JqkGrapwxO32b899uofMqRv62jFkjr9O
	57KWMeVFkfwikBCZa6XTgHC7UQ7Ct6q8sqaWJRWjEmPg8ZIyAkmOcThugk4RjnTXusNOJucFeeiC5
	4lloSOww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgyg-0000000DqbJ-26et;
	Sat, 11 Apr 2026 22:38:58 +0000
Received: from mail-yx1-xb12e.google.com ([2607:f8b0:4864:20::b12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBgye-0000000Dqaz-1mS4
	for wireless-regdb@lists.infradead.org;
	Sat, 11 Apr 2026 22:38:57 +0000
Received: by mail-yx1-xb12e.google.com with SMTP id 956f58d0204a3-64eb84d1e37so2446622d50.2
        for <wireless-regdb@lists.infradead.org>; Sat, 11 Apr 2026 15:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775947135; cv=none;
        d=google.com; s=arc-20240605;
        b=Fpw9kEoxwIvQnmf/tLAzA7AyTpwZ8i7wmXdh8XT2h5eR/wg19JIzsiaFt/O95uHL5y
         sdZCmKyYCsnTHSsTRfwK/8DDwNFG3Smg8bJQaGrGlNy2buPG5kGqUCMabFCpSIkyTUw2
         E4sZORj/hBj3L3ROxDqED1YtT7kk9s3lGeSBseFHhsZ5UFtPNSbrYR3DpP1ct2s/heuc
         Psz74B83plb7aspuJOfjQePdiLYcv8tW1l7HQ0Tn17W4ZeB+9G9L6hSm/DzdfCecNrYC
         o6wwzIP9HaL17Y6gJ36KN6OxqaBGQpR8joG9lfqmn6f0Lkmyh44Vi5IxRaD2N8h8/fAQ
         2B0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3uMD9+IKPeAJqpuvErKlWwpJ7W6XguU1pzR+pgq3EMg=;
        fh=PPKQIUTjC7lK7+J3GthuV0w1yR5vkNQdfuv7BwbfMjo=;
        b=jiC7FqSDm6znoHC8l7vDPyLFPLa2+uVnf37Ih9k6lIHg1bFbna+tZA4oGwpFrVgaJ5
         1B47toiQiRz8TKiQ0lQV6gctAeGxV9pxzNb0KZ53xP2AxbLyrMaRNjA2zg1SfTvziD61
         87K5VxpsgNVlYartdWaC914Z5m4mhPDai40+kjwS7m/ltlVYjLwGsWG7qaFuTlpYzoO6
         a9KNZct+OdaMgsyyCwZUlai/HXdgSGUxb99WkTzaxLoh8GP1kS6sK05ryQo5DmwgG2e8
         AVlH7bLY6MdrrwmlKhuV3qEYQB/P3CickqSS5UGEYPRTYS7Qa/7zR69x5abmB0Sh3sXd
         //VQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775947135; x=1776551935; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3uMD9+IKPeAJqpuvErKlWwpJ7W6XguU1pzR+pgq3EMg=;
        b=Mbz4b0rM9r7Y2luf5LDzU/YjkBd2B9eZ5OZSqrU+ZUDugYwaRfyHxKZLfZI2LTAQ6X
         K4S/4NxRXyplAg9W2og6TQloyFyPtpFGvqJapXjfQ/zWbQLf9C4oUJx6tTk6Wa+LnV9e
         Z3T0KzhRVBd56gDU8juyIIHaLuA6TGBZk9hd96nqn6BrCSr+IpIb5CQiT+8LhIbkoKhp
         umzv1esyQU4O1vC9CHQMuzylBrx/Cby5aOJh0dugwcIS7lJlb4qtAui4h1Df3DwFnX6N
         PhN5N60t33GvYXLDxL5GwHKVGIK6uJZ5CAVIsUpgXJoJz3WKZ9YPaoMuGDKGT9QmFUzb
         yKJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775947135; x=1776551935;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3uMD9+IKPeAJqpuvErKlWwpJ7W6XguU1pzR+pgq3EMg=;
        b=FMbosfs41bs4KvrlWPOMskkUCz2F9Gi16ioshBrvP2liAi5Z5ZGtzzQKWbe9KNzNrR
         L7LAVtgLMToShJeQqNEhJrvOhupLpicvXm8ZIqK5aGP9T/GlvhNL6bBuULOUWQ2tVY/D
         lIv3pVPRi4j5rW/YOaewh1L2J7tLwkalK6vq0u8Nf8a7ZeMfSxDEl+WtLvREsfs2Mcrk
         KO7RbdvSYWjaz46OhIccfGtq+5BxdhyTTVolIPlAa/bxueCH9Jr1Yqw9i6kPYaVTOFsY
         tSyFXtDrySxYDw/iErJPuqmExLjPRUziq1paOFdIXHGluM7hhb88BbAOzr09ITeJzBLF
         Fc/w==
X-Gm-Message-State: AOJu0Yzo9DsRxZ2/oIzV1yZpy9WQni8NaWJYt3TLEgfzi5C6umohTXQu
	enCO9dlnak199ascJ0cTxEMz/FrLqykZ6tE/Wb23X1Kd50hchEtQJ8zKMlwlwip0isnAOrir/5/
	3x/YsF29b9KWlrpHyM+QnP9+CeTGilC01yZtx
X-Gm-Gg: AeBDiev8yuxm62QzJBn2nenVgFPLqeA9zlmik78/+B59sj2AL4JUdNTXWGzZoYJ4Teu
	7f9i7DJ9eyt9GDplWjZ5uQU/FTLJbramaBoleHgZKENScWqySpAmaq0co+xRpxHdezV8t0ODyE2
	lO6IsOMj15W/2TQUgoIVwdO+eElyvsItqqug2n9K7hne3TMpNjwt51VNdYKbPZnXYqtxA04J9Dq
	5/IlHRYhjL1aU4UFHBxX4XiFJ1m+bWQf2E7T1YnnKMlIPyCz4VHeSIzhPJ+t4esSIttChop6k8X
	GecHOvygT9wpR84Siki44IUBAGkgwk5RPHyPmLnD2g==
X-Received: by 2002:a05:690e:160f:b0:650:895a:19c6 with SMTP id
 956f58d0204a3-65198b87eafmr5124798d50.33.1775947134860; Sat, 11 Apr 2026
 15:38:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAMcSec+mFSUDm+M=0YaNDe26Z2nup2VzzJqz9psxh2-wkT=7Zw@mail.gmail.com>
In-Reply-To: <CAMcSec+mFSUDm+M=0YaNDe26Z2nup2VzzJqz9psxh2-wkT=7Zw@mail.gmail.com>
From: Louis Kotze <loukot@gmail.com>
Date: Sun, 12 Apr 2026 00:38:42 +0200
X-Gm-Features: AQROBzADaxiYZ3hX76MspTw26BNZ7Mfq6skHSTTaKJL2yW-8xXLeFp5D6gSTtgA
Message-ID: <CAMcSecKaRR1_cqHneKGDOnD9o=CJgqdGXnPeaRM3QjCEn6Lykg@mail.gmail.com>
Subject: Re: Question: Should FCC-region 6 GHz entries use the India PSD methodology?
To: wireless-regdb@lists.infradead.org
Cc: wens@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260411_153856_496646_F85329CB 
X-CRM114-Status: UNSURE (   7.61  )
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

Hi Chen-Yu,

Following the patch series I just submitted, I have a question about
the FCC-region 6 GHz entries.

Currently 12 countries (US, CA, BR, AR, CO, PE, SV, MX, CL, KY, HN,
PY) use 12 dBm for 6 GHz LPI. I understand this was chosen as the
absolute minimum across all device types and channel widths.

However, the India (IN) entry (commit 5db6ce73) uses a different
methodology =E2=80=94 PSD at 20 MHz minimum channel width:

  India: 11 dBm/MHz =C3=97 20 MHz =3D 24 dBm

Applying the same approach to FCC (5 dBm/MHz PSD):

  FCC: 5 dBm/MHz =C3=97 20 MHz =3D 18 dBm

18 dBm is compliant at every standard WiFi channel width (>=3D20 MHz)
for both AP and client devices:

  Width   PSD limit   FCC client max   18 dBm   Legal?
  20 MHz    18 dBm       24 dBm        18 dBm   Yes
  40 MHz    21 dBm       24 dBm        18 dBm   Yes
  80 MHz    24 dBm       24 dBm        18 dBm   Yes
  160 MHz   27 dBm       24 dBm        18 dBm   Yes
  320 MHz   30 dBm       24 dBm        18 dBm   Yes

The reason I ask: during my work on the South Africa (ZA) fix, the
9 dBm gap between the regdb (14 dBm) and the AP's advertised power
(23 dBm) caused repeated "regulatory prevented using AP config,
downgraded" errors and complete 6 GHz association failure. The FCC
gap is 18 dBm (12 vs 30), which would cause the same or worse
symptoms for any Linux user connecting to a standard FCC LPI access
point on 6 GHz.

Would the India PSD-at-20-MHz methodology be appropriate for FCC
countries as well?

Thanks,
Louis

