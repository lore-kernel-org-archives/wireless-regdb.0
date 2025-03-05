Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABFCDC19F32
	for <wireless-regdb@archiver.kernel.org>; Wed,  5 Mar 2025 15:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i7jjDoZNjQDRce1jkyEJk/NjJu1KreQImrPOlxFDeYY=; b=Imj/kMnE3oMHBof3rdKEcJIgE2
	biNhmc9v8+Sm7GslZrJbzj1ZIngGX3OvWgearH687PFtBQOfDHaw8kW98zDphbiyPxIHd8NRZkX9+
	Edm6RXTxzr199XIKEnLvrr8JHMVHhw+Z9kHUcYXxkB/0dCf4Zm4SMXbQaykvQYZZ0Rxx2tJeYOcGx
	PnwncLoSn5wrfj890w/0ERD1OWRoSUqV7RZKYKQlZgmBwhvH6SHWy0RnnBnftm98OEUAeftsdbgTH
	6CLR4D9NdEkCUfiqWXrSguG/2h2E/fiQoaKZ/f0OipFn2WAbuAtBGPtT1StOgLRvCAHntZV7GrWdz
	xhr2Y/7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpqzC-00000008Yce-3mHX;
	Wed, 05 Mar 2025 15:48:42 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpprW-00000008NS6-2OZJ
	for wireless-regdb@bombadil.infradead.org;
	Wed, 05 Mar 2025 14:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=i7jjDoZNjQDRce1jkyEJk/NjJu1KreQImrPOlxFDeYY=; b=Xajna8PMIY1LUdS9pBLxsDRyxX
	eNxCMJnlaq9dnRovBYBZfNqfqJ+VzwjNOsuoU8u8jSOO5AVYjMovchiLXNvD1pHtVSGx9er9PACTE
	/nictNH/W7hx+lT//h0nvA5XTh9KGHg1pE2Qk82cBFvk5f/CymVu6WPbgLb5RtdUfoMws6UQF6IIZ
	Jys3gPEpOfykm0vCsAQlFZ6ExiG8opwlfo+nn2wSzIg9Fatcv/4BOEijK9+syket7cPzLKHwPYS1J
	acFrUfTj13DkY4p4QeQDNO6E7ngkh0mEMX0W031/YXgoE69MbAJAo49XvObZQuYi0jaaONvIZBzGW
	cEDtLMtw==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpprT-00000005fbx-1Ruv
	for wireless-regdb@lists.infradead.org;
	Wed, 05 Mar 2025 14:36:41 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-390fdaf2897so4006243f8f.0
        for <wireless-regdb@lists.infradead.org>; Wed, 05 Mar 2025 06:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741185396; x=1741790196; darn=lists.infradead.org;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=i7jjDoZNjQDRce1jkyEJk/NjJu1KreQImrPOlxFDeYY=;
        b=E7lZvklwBT5QY4LmhJrpq5zJT2jvBKP8KGhiTPUVfkHkXOc8MzDAoh+D+QcZyJAqQG
         CuZ6MKTmkmr2Ra7+NlCy9uijTu3oClP5ifY6f6BnasawleGtyVx4/Vehjmjtf7a39bIj
         ZAar8VYhURkKS3RnrTU3FDqVSWQv4b098AcbIzHizkKumzK0/UdJWB51hiIVBYdyOg+c
         O2YGOkTXn8OxF6IOi88MnYOnvO/V9oghJKTzyMQzlm3GXezZFIE06bJ5HR1w3WftDEMJ
         3F1BzSL8qyfVrNAMqMrwotfSFA3IW1zbLHE+ZooS0JICzTSLGgFAdcNJpFg5tgHjsrbS
         5HDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741185396; x=1741790196;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i7jjDoZNjQDRce1jkyEJk/NjJu1KreQImrPOlxFDeYY=;
        b=UbjEw5AqYD+C4aFxWuFluvzrTWlmJ+lrxT8yRRDo28kTxsttxkdtQmXTZAhyUB2lGU
         dv67x8bPgSNh1d65LsS76xhABi9ykkuHqI/oNxZkFImQ/CrZ68mkWQNB2C6oAiqmp9ci
         9o2WnllE8zT+FnnSuvQFuWlGfMqJZAUThmd4hsd0SCxlB2ZVuDm66I49y2h5KxfV+OA3
         y29LI04vcMSPcGaG5A/VXIug3Z3hpowh7964sqL1DZxWN4jUHN3jFUBM0ZUojhJbnBA9
         eYPunEA14wYIPp/YrRDp+/S+bLDQoUlEhFErzu1jiVBXTv1WrOBJed0v8Ezusris38H9
         BHcw==
X-Forwarded-Encrypted: i=1; AJvYcCUR350cYfv8mrGhC2qgiv98H01MCvPls0jQPA50RvQmxpYPkMNfcHzPJIoUcQnT3lKDtA8ZAs0jEKCCyrHF2w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx61NUN6cIZ59E0Z9fEByH7dZAFVYF1zY3rf5oYCbyf3X9dMuaz
	iti19JRHiy0vxy92EKTcye75UEOU6SRp+pkRi617RrDS0nRk23UzZZVlVR8=
X-Gm-Gg: ASbGncuu0SptqiuEkRm1hIBRuXL6Jof/ptKLCdXeZ6VB6qoyhI+YJC/blYy2ytwOrd3
	hEKBwvoQgiazOyzMJ3Mjrg7RpQ/CN4Z/tzBDjg6etde8sD6G3ZzbJp2F/VMvg866NNbv+bpnjvR
	oJQtZgOQKtcCCzIHxMao34jUXGQka6FNogI9otCjiuwgr2W7oShTf4+WgzVa+x+WZtJ/xfBtFGy
	Ka/fVick25xgeA6uEy5miJWISBiBEe1HPhk8/FLEx17dAVwe7TVwVW1SsLQfz0sdKYD8KkNwIG9
	o8i3ARy2m0CdCCWm0SFULHlBwuVOAUW4dOZjHJEZlU6ekqGJ3anO5ftMo4Bn3CCL+IUz3vfCpX9
	AaF6LB6bzR7SWK7ibgZNdPZxTvNz0Uzg=
X-Google-Smtp-Source: AGHT+IE3Qs9Bs5kmWpTS/4yoK37XKbCf3KtKCoYRap05OEUrWsdZOfwFNkdjZXY6TMgJl4GUAkx6bQ==
X-Received: by 2002:a05:6000:2a86:b0:391:253b:4050 with SMTP id ffacd0b85a97d-391253b435amr1582874f8f.51.1741185396137;
        Wed, 05 Mar 2025 06:36:36 -0800 (PST)
Received: from winhome (cpc112753-pert6-2-0-cust678.16-4.cable.virginm.net. [86.18.22.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bd42c55f2sm19111485e9.20.2025.03.05.06.36.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Mar 2025 06:36:34 -0800 (PST)
From: <rmandrad@gmail.com>
To: "'Nicolas Cavallari'" <nicolas.cavallari@green-communications.fr>,
	<wens@kernel.org>
Cc: "'Dennis Bland'" <dennis@dbperformance.com>,
	"'Ping-Ke Shih'" <pkshih@realtek.com>,
	<linux-wireless@vger.kernel.org>,
	<wireless-regdb@lists.infradead.org>
References: <000201db8822$98f28da0$cad7a8e0$@gmail.com> <CAGb2v65490c1m3W_1RkxJ-E7Q=3V_K8xqS2jmd6awcOdzWHXzQ@mail.gmail.com> <ff6ad414457e4b1cb68e834978a553c3@realtek.com> <CAPRryQobXZe5OwR=F-X0KHYyfBwUpFsi=Y5pKnENcUXTN42xAA@mail.gmail.com> <002d01db8da7$daf2ed50$90d8c7f0$@gmail.com> <CAGb2v66Y+rTsuKfQDgv-qwRTOorOucM+qfBOia-gY5sPCJp5qQ@mail.gmail.com> <319c9de5-e26f-45c0-9200-747c86bce303@green-communications.fr>
In-Reply-To: <319c9de5-e26f-45c0-9200-747c86bce303@green-communications.fr>
Subject: RE: wireless-regdb: Allow 6ghz in the US
Date: Wed, 5 Mar 2025 14:36:38 -0000
Message-ID: <001a01db8ddc$019e8890$04db99b0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-gb
Thread-Index: AQMUrzCf8XdNoAU6+fu4ECJnDc0awgHIktuQAg9ms7MCOQTCTwHce3oJAeRkceYB16Yw4bCVC4QA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_143639_400715_0267560D 
X-CRM114-Status: GOOD (  15.21  )
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

See below


[1] Beacon Hints
" cfg80211 has a feature called beacon hinting to assist cfg80211 in =
allowing a card to lift passive-scan and no-beaconing flags. =
Passive-scan flags are used on channels to ensure that an interface will =
not issue a probe request out. The no-ir flag exists to allow regulatory =
domain definitions to disallow a device from initiating radiation of any =
kind and that includes using beacons, so for example AP/IBSS/Mesh/GO =
interfaces would not be able to initiate communication on these channels =
unless the channel does not have this flag. If either of these flags are =
present on a channel a device is prohibited from initiating =
communication on cfg80211."

...

" It is also important to note that the Linux kernel beacon hint =
mechanism only trusts beacons from 802.11 APs, not Mesh or IBSS."

[1[  =
https://wireless.docs.kernel.org/en/latest/en/developers/regulatory/proce=
ssing_rules.html

My experience is with Openwrt and APs. We have users in the US =
complaining that they can't use 6GHz due to NO-IR


-----Original Message-----
From: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>=20
Sent: 05 March 2025 12:19
To: wens@kernel.org; rmandrad@gmail.com
Cc: Dennis Bland <dennis@dbperformance.com>; Ping-Ke Shih =
<pkshih@realtek.com>; linux-wireless@vger.kernel.org; =
wireless-regdb@lists.infradead.org
Subject: Re: wireless-regdb: Allow 6ghz in the US

On 05/03/2025 09:58, Chen-Yu Tsai wrote:
> On Wed, Mar 5, 2025 at 4:23=E2=80=AFPM <rmandrad@gmail.com> wrote:
>>
>> That is not specifying NO-IR which basically is denying any 6Ghz in=20
>> the US what it means in my opinion is
>>
>>
>>
>> Client devices (like phones, tablets, laptops) need to find Wi-Fi =
networks before they can join them.
>>
>> One-way devices do this is by sending out probe requests. These are =
little "Are you there?" signals that ask nearby access points (routers) =
to respond, so the device knows which networks are available.
>=20
> Section 122 says: The Commission therefore only permits a client=20
> device to send a probe request to an access point after it has=20
> detected a transmission from the access point. The client device will=20
> be required to send the probe request on the same frequency as the=20
> access point's transmission.
>=20
> I think this translates to "passive scanning only", which is what=20
> NO_IR is meant to specify. NO-IR was previously called PASSIVE-SCAN,=20
> and was renamed when it was merged with NO-IBSS.
>=20
> Maybe the kernel's implementation needs work? I'm not a WiFi person so =

> I really don't know all the details.
>=20
>> That is why drivers use the non 6Ghz for allowing clients to identify =

>> the router has 6ghz capabilities=E2=80=A6 I don=E2=80=99t think is =
for wireless-regdb=20
>> to take over the HW router compliance and certification which is =20
>> what 122.  is about
>=20
> No, section 122 is definitely about client devices, which is what=20
> Linux devices are.

No, Linux also supports access point, IBSS, OBSS and mesh, not to =
mention monitor injection.

If you remove NO-IR, you are allowing Linux to create access points, =
ad-hoc and mesh networks on the channel without conditions.


