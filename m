Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C78F9CD4F3C
	for <wireless-regdb@archiver.kernel.org>; Mon, 18 May 2026 07:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PgRtEhM5dbN97kdxBUCH84lfE1fQzr6AjnHubskOcUU=; b=c1xb3toAmKctDl5sPRyUazj40g
	/twqOufovx55Fk4oMq+5GyTor10h6mWdJZ26Sm/B60+pmww2oZpmyqHn/Dalme1J+fQ4Sm1/QNCkx
	FR/YmXKlHlHQMW1tqSL3MwXnG6oMO6wBUkFuHOFg080YwePCxA+wagYsJu3oPQt1kc0YC/u7ORWYp
	wre4QQYjnsjVFOkRKLfrAGvFCcZ2h79eSRVgvSw7mHnfDCgrxWnn0/0KEuT6s5B0te8MnJnet9QB2
	5r+smmF9NMTcmxez1JEgZQlA3CDbcU61O0x8RolqNbtJFfXGNFmnZf6tkpB2x2uZa5V0BoOJhquXZ
	yqfVkeyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsJQ-0000000EZRE-11R6;
	Mon, 18 May 2026 07:22:52 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOsJN-0000000EZPj-0rBr
	for wireless-regdb@lists.infradead.org;
	Mon, 18 May 2026 07:22:51 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-67c9616b4feso3408819a12.1
        for <wireless-regdb@lists.infradead.org>; Mon, 18 May 2026 00:22:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779088967; cv=none;
        d=google.com; s=arc-20240605;
        b=E1GiYiUehZGiBhLl4PgoHFhL+FmTwUbvqKaoy4n9rafXlZOabBbdfYzsB81WVzVFK/
         eWkLuUYZZ5uqYQx7NfuHQrBzp3CbxMyJcTjukUoDDEsPHT8JtmE+BEwS9054gqeFs75I
         IjKHvfIV+Ah6qoydn3UBY5LvbVfFpY7ySDD0m/xKlGx88M3+uP2B1aWKkEonsPOoqUlw
         qC0ImR8eC5F70y4vPTp53t7jaOkiQAGc6C9go6nJrqkENaEi3fcUWQHsEGg4t9N7k7Yl
         HTVmFBDjpO7L/DF3SFAWeG569iF+UNxzR1yHE6jhHQ2dLkyh9uJ1MiwvbgnJTz40Hgn3
         4c7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PgRtEhM5dbN97kdxBUCH84lfE1fQzr6AjnHubskOcUU=;
        fh=XKJwYWh30halb7hk3H+eKvUSJ3luBmsvJZUuPD/Flec=;
        b=BXlYwOQ6osDbhNl9hy8pFh4dqlNnQIRdTgF6NCLgnGxxotYVNwe8rAIq8DO+ZsDZ8k
         SqtSfKEfe4/fK9SIZ0LlBEm/vruTiDAjkyo1nz2AGkSuKyPQpsN79qAaxolyE+WKl+jY
         vCdSKp09PRjZOrG///Oi5xLBCdCVdxcT2z9E4lrrFiW21u4gPsVFISC0OZuBrOi4qnYc
         RPFTrPlfrDAb1VxoXPwFg0ELGrKKdf8AydIuHk43p35R/fQkQNv8Cl80HeGPgz94DiTD
         Ya1GIypglu5rqMJVNrwbRji2MkuYDfH/eNxr8ojzZdyzGBxkod/noSksS9XhZUTzH7Kn
         JHAA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779088967; x=1779693767; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PgRtEhM5dbN97kdxBUCH84lfE1fQzr6AjnHubskOcUU=;
        b=e1GoiVgM60QL2xC+z2Q2MFkAPOob7GtZDcroLgWRoFACbXVAlI4ymoAiC1Pm1wwnx+
         PwZUjcx0ZfaRBKqRmQbSZ8zVQ3FWWa1jc+q2FCVK3/a3yXVmRBFjS0/PDqpsIF6/9Wfs
         JCAtw5HL+dLTHa/bm8b1j6Qi6yTzs3BRfaA9+VGX8SGEsQlp61ElT5VM86AAJbnDJnv2
         YrEqaQqHCz/zciRP8elZS4MxbhH2kLy8SrZpiljaPRqaA5kaxisswkRkEGskQZUt+c5E
         a6F90/rIUuw4NEcK0Mrggv90/eMkaGHHU+Pzz49U5AW4AQen6bDxhNCDGskh/iZc8a9B
         zcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779088967; x=1779693767;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PgRtEhM5dbN97kdxBUCH84lfE1fQzr6AjnHubskOcUU=;
        b=ruEB7Uwm7HiKURFSxBzH2xFZYSnfKShaLpF2mrUL0/W+v83bAhERlX1nmn0henP05j
         j+H8mDDdJQd+63wJEhkA0OAVmXg1sH93XKAprcC7DVrxEIoAZ+zr2oDDVlvvE3PG+T6n
         TmaFoGfSZ/pXc4QDRSD1g0MA65q8YdTb9qUKIIJJImHdhz7cCrzoEGsIIC+M4tLPuc7o
         A+ahtXJMa0MQSqhcECY0RQoLEA2JDIm+GNfhhOEbyAw15L/D4+aeKRVHxT1CoTq+ASHp
         x81lb/WF3wak/ubmBUrtJkapSNBLanBh63fOheZRQhfE8qxaDAO73x+tMBqNaIlCI706
         QAxA==
X-Forwarded-Encrypted: i=1; AFNElJ8anOuIciqOrn1rC2RS94Daxmt8DMD/H1HkmQZ6Zbg4KEzTiUxhvDFjZ0B7DM/FuzxBUFmyHNZpT1UihyREFg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzeg8NmL0UdUWSRYTRUbLNUTHHEaizLmVNPdrQlqIo4lWSIFh/+
	3urdxf5SL1BMgU+227hY0GiWBPxSdGSCp0RaUspUbtB7DZYhLoGZkviieyXVgyR4w/DSYk2LNaD
	A6dzOgZ1bpZOWgGicR4Qg35ovtkE0NgEGbw==
X-Gm-Gg: Acq92OFNQZtCcnHNp3XDHOgp3j4Choao9fiWiBtf29mspK+K6EGYqeQpCju4E9K3Et7
	7w1+eo8ilh4SP50wb2j4rJPL0KZN8gnHuU/86VUTMBEoT06rz75HJ5XJ7A8JQzb0yBTxs+NFc/m
	F1XJzUEekVgoI+zEX5d33ZK70KrMPrvlc7S0TShAT2Yhi7eUiIByrurX3C0nhkXzu5YDSjHGYxV
	96yT3QDZ7ISCFxrh2X+4vJY23+9FgGmpDehThe+D2VxgXdZGBw9ra4r1njTEEZ2r0YupKfmSTcM
	Xne8uA==
X-Received: by 2002:aa7:d14f:0:b0:674:7363:3e91 with SMTP id
 4fb4d7f45d1cf-683bce9cec6mr4697754a12.12.1779088966628; Mon, 18 May 2026
 00:22:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAHrRpu=Ku=cK2Hd8xzJr82iPkj4Jzp57ch9wEE1KsoCiExbhbA@mail.gmail.com>
 <20260516100024.103241-1-maashif011@gmail.com>
In-Reply-To: <20260516100024.103241-1-maashif011@gmail.com>
From: Ping-Ke Shih <pkshih@gmail.com>
Date: Mon, 18 May 2026 15:22:34 +0800
X-Gm-Features: AVHnY4LwBv78b-ixqlZgkLa_y0xQ2eEDERvG_Vpnm1Cp2zq8B-H79guKvrWBXgM
Message-ID: <CAHrRpu=-ngPpe2MsmWz0gQq1VVxbr9L0+jUos3o62wPUY-wXqQ@mail.gmail.com>
Subject: Re: [PATCH v2] wireless-regdb: Update regulatory rules for Sri Lanka (LK)
To: Mohamed Aashif <maashif011@gmail.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_002249_260850_8A5F0821 
X-CRM114-Status: UNSURE (   7.64  )
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

Mohamed Aashif <maashif011@gmail.com> wrote=EF=BC=9A
>
> Update Sri Lanka regulatory domain based on the RTTE Type Approval
> Rules 2020 from the Telecommunications Regulatory Commission of
> Sri Lanka (TRC).
>
> Source: https://www.trc.gov.lk/content/files/licensing/RTTE_GAZETTE-Engli=
sh.pdf
>
> Key changes:
> - Change DFS region from FCC to ETSI (document references ETSI
>   standards EN 300 328 and EN 301 893 as the applicable radio
>   interface standards)
> - 2.4 GHz: expand to 2400-2483.5 MHz at 23 dBm
> - 5150-5250 MHz: 23 dBm with DFS

This range doesn't need DFS.
Otherwise, looks good to me.

> - 5250-5350 MHz: 20 dBm with DFS (no TPC, 3 dB reduction per EN 301 893)
> - 5470-5725 MHz: 27 dBm with DFS (no TPC, per EN 301 893)
> - 5725-5875 MHz: 24 dBm with DFS (per ETSI EN 302 502)
>
> Note: The TRC gazette conflicts internally by allowing 30 dBm for
> 5725-5875 MHz while citing EN 301 893 (which doesn't cover this band).
> Lacking TRC clarification, we conservatively default to the ETSI
> EN 302 502 limits (24 dBm).
>
> Signed-off-by: Mohamed Aashif <maashif011@gmail.com>

