Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50E00C5DF81
	for <wireless-regdb@archiver.kernel.org>; Thu, 20 Aug 2026 21:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Md7Ohm8q+KS+t9CsvSVQtn/fUQQjLUK4uPrrCZpnjjQ=; b=TDHEsASSBI72Cvly3GkgTG4BbA
	YGCIQ6niQls4F4ThmOeJAZpGDDTHBbj9XSh9pNN3v62ZrNrN5+/V19uZ8mjeO+V0GmRzDQjQm6IAM
	naKpH+4YiC52TFvSaYxrqEXaBCKN4h98H6mMEycVKg/KnlUoK1wNeCzLfWrmcr9GvjdCpuweB9nwL
	MI1W7Q/rAnzDymr/ucH7sEoKQfCk7eU0kPRmCVsInInqPC41WNE8R5hh+wFjldSsfSM9PJckJUfDH
	CNeo7RV/LeQxkDOvw604RTQmIcWOF+6sPMyHFK29x7WhjX5Eu7lPXPH41vkcKwUuVNn61snqUZD4O
	7VkHx0vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx9zv-0000000CC4N-1ZGD;
	Thu, 20 Aug 2026 21:08:27 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx9zq-0000000CC3p-10sK
	for wireless-regdb@lists.infradead.org;
	Thu, 20 Aug 2026 21:08:25 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-38dfe7eb825so225330a91.0
        for <wireless-regdb@lists.infradead.org>; Thu, 20 Aug 2026 14:08:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787260101; cv=none;
        d=google.com; s=arc-20260327;
        b=IqtyULSI5CFQj4oHVVIQFcvRIT63QdJvozN5phhUlrexgd71FrvAbSQ7uJPa450MOd
         PCiN+Eo1g+qwnljxHHkaLFyDuL/x5PnC0otLvULT/tIdOwJxus10UvWVYNyFhvBNUsU3
         qxoI0J/7ztybyECgnWLOGBFqEWZbN7FZcqdnclhxMiyrlxebuGOXUMnyMHsNJYZENtG7
         xxyOzswnGsCg/0ZzzK9K91gKiiL+SIPy9iHNXhwMCujlbdnjtKiJ4gtH6WRWNKJ//FYP
         3JVK86C15sky2YX2DGFK5Slt240QsBAatm5xBRdCleTy8uSddcT8f7+9SqcdXPwfKZIB
         3GKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Md7Ohm8q+KS+t9CsvSVQtn/fUQQjLUK4uPrrCZpnjjQ=;
        fh=YQcdSoS2gNAjSMDMKZXDavKcJlSMWh2KqatN77wl8b8=;
        b=WDxTavP7j++XQyvwe3uyzCXy34SbXj/k3FATHQNxR4NxOglM3arW8ym36MRRUKRHG8
         Lx+DMdW7E9wlsT6NpfDeKyRgFuCMfX+JaQprQUtafa6WHYrIhNQwWeVCLtfh5YNmq0fP
         6ZGstBe7kWJvtDiSiFdhtbwTtq9FVFhe67UQFQG5hkF7bAsyWtLL6BSUOmnEAaw/KCmi
         dMs73r23BAC5V6H6JjLSViePLhwdCDBgdRyu6MkPuQ3PaC38/4Q7NhAFnGIUqiYlFSxh
         N6vGurC85kjsdZERJAkqmPRbKun871+Y1oEwo/4Ta3wCbMErlQMEuYvTHbaNJn8qmC8I
         abLg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787260101; x=1787864901; darn=lists.infradead.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=Md7Ohm8q+KS+t9CsvSVQtn/fUQQjLUK4uPrrCZpnjjQ=;
        b=jo67nVLE45Gk569YDcedYIxciI+G2Eh7QIjm6GG9WYO4/HY2ExYUdVw0ruvpX/c1V/
         Wx0cAdRS0/yZzeBTxBs6V/JV8LaUMdEgWhGfp4sjO7+DnK/QPQM+E+7lzLv54UBtEi0U
         OfLRSXiqwMOAueV+/byeiGZ3IlzrFhk162vkzDn/FqyFNwfVdQESBMIh31N4EgFkOw2z
         qbQzKImvFZpDNkzuBqFcZhj/LVlxCFhiVKtbHsTlpnK792gJXlMmZpp70tK9CguP1N5M
         39YlIcGl6vM84zM2rjy9xWrYRIRDgDt7XgCyFvaRFCZZTyAJ4Q8la9q3guNFAGipOdb+
         aaqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787260101; x=1787864901;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Md7Ohm8q+KS+t9CsvSVQtn/fUQQjLUK4uPrrCZpnjjQ=;
        b=by10uz+bj4R/jLdEYzG2mpotpMPopmtrouyl0H5HuR0N205BzndN3WQ53lJu/OwQsX
         0Tg12Zwd7MlGcIqGxFzIdiyzl9+b5byrzGlSpxjhKYXeff9hxXPmDmKLKFZwsZ6vH7Qp
         DsS4yXvHx20i3KWpaMFi6cr/eMvBKqH61waD3GSvbHPlB/ZLKd3jYC09HDZ8UNGJhgNO
         Zb0R5NPB3R7CKFzsK34vKKjk5PpIlVGJGdjeodQ5qO7iOSmaNY5Dah0/YJL6AP+h2yfV
         +vb31v94YitTbKYUcalOpOLn6xAKLIL3/cs8dZBEzIEbUiEriLSrHlAV/cZqlvZ7kgVQ
         DRfw==
X-Gm-Message-State: AFuF++mJb2JpkyXMLU4NobTpXgBkfpJ9gDKCFTC6uSjldJJqRu9r0fR3
	3jjKVgQv2L47u2wgyBAwooFTlBdrCfvaH08AdUMUcH7EZKx0Qt3WxkEyzGpxycOjhnloKZ7qknk
	Tf/O8rb6lXh++u97vhLbWEbd6W1FPsbOX2WQMKmE=
X-Gm-Gg: AR+sD11EpEK6cw1sWD3DxKTpLQOrJO30pLIYlEWwqKYiFsvAxBh0XiGgUCNLmaovBSF
	FDsNFgWhkc3SbFVcAeYj36Kui5kEOkNSLO0M3WlR8nYCex7PXdGHVgjZDjMUfj4u9cTixr2Q+Ii
	VlG+VOzx3Fp5VBxI1d67wtbDc+EJduD9DDAD/EjZyWhhLzQsJ50MPs5CQbVzAvLzgm+XsTziTS1
	toxfJ1YBQclWWu8GufMYktPa8giYGN9e69S1899hDrWg8OpzN85ojV3KJz+n+h1c+X9cfvQbYq4
	d3kUOBHDB/JHt++j5EsBa5EXxKbnaM5vKKPIRJUGFHhzpBBMJmq+kw==
X-Received: by 2002:a17:90b:5646:b0:381:28e0:6259 with SMTP id
 98e67ed59e1d1-395c36fb278mr2399078a91.9.1787260100795; Thu, 20 Aug 2026
 14:08:20 -0700 (PDT)
MIME-Version: 1.0
From: Nahid Hasan <nahidhasan12391@gmail.com>
Date: Fri, 21 Aug 2026 03:07:43 +0600
X-Gm-Features: AcwNN1UaqXr6PZP10FgXlXXnDeTy2LDiSgrI1gkxPtSW4DuxERhtsfEHxOOZpkY
Message-ID: <CAPsebg5EyxQjqQVm0KQHtx=0f8-mvhPSdsvJFOGEPCFU3H=Y0g@mail.gmail.com>
Subject: country BD (Bangladesh) entry: update to current BTRC allocations
 (2.4/5/6 GHz)
To: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_140822_290798_945FC12F 
X-CRM114-Status: UNSURE (   9.04  )
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

Hello,

I would like to propose an update to the "country BD" entry in the
wireless-regdb database. The current entry only allows 2.4 GHz and a
narrow slice of the 5.7 GHz band, while the regulator (BTRC, Bangladesh
Telecommunication Regulatory Commission) has since approved much wider
allocations. This outdated entry means that smartphones sold in
Bangladesh (SIM MCC 470) cannot see or use 5 GHz channels 36-144 or any
6 GHz channel, even though these are officially permitted.

Current entry (db.txt, line 224 as of wireless-regdb 2026-xx-xx):

country BD: DFS-JP
(2402 - 2482 @ 40), (20)
(5735 - 5835 @ 80), (30)

Proposed replacement, based on the regulator's National Frequency
Allocation Plan and the BTRC circular dated 15 September 2024 which
approved 5925-6425 MHz for unlicensed Wi-Fi/IoT/WLAN use:

country BD: DFS-JP
(2402 - 2482 @ 40), (20)
(5150 - 5350 @ 80), (20), NO-OUTDOOR, AUTO-BW
(5470 - 5725 @ 160), (20), DFS, AUTO-BW
(5725 - 5850 @ 80), (30)
(5925 - 6425 @ 160), (23)

Justification for each block:

1) 2.4 GHz (2402 - 2482 @ 40), (20)
No change; matches the long-standing SRD/ISM allocation of 2400-2483.5
MHz.

2) 5150 - 5350 MHz (channels 36-64), (20) dBm, NO-OUTDOOR, AUTO-BW
Allocated in the Bangladesh NFAP. Indoor-only with 20 dBm EIRP follows
the ETSI-style practice already used in the region (as in DFS-JP).

3) 5470 - 5725 MHz (channels 100-144), (20) dBm, DFS, AUTO-BW
Allocated in the NFAP with radar-detection (DFS) requirement. A 60
second CAC (Japan-style DFS, already selected for BD) is consistent.

4) 5725 - 5850 MHz (channels 149-165), (30) dBm
No change to the current entry, only extended from 5835 to 5850 MHz to
match the NFAP allocation of 5725-5875 MHz (the upper part, 5850-5875,
is omitted conservatively since it requires pre-authorization for
commercial equipment; can be added once the regulator clarifies).

5) 5925 - 6425 MHz (6 GHz channels 1-97, up to 160 MHz), (23) dBm
BTRC circular dated 15 September 2024 approved 5925-6425 MHz for
Wi-Fi/IoT/WLAN on a shared basis. (23) dBm EIRP follows the conservative
indoor-oriented approach used by neighboring regulators. 320 MHz
(802.11be) is NOT included since the circular does not explicitly
authorize the 320 MHz channel width.

References:

- BTRC circular approving 5925-6425 MHz for Wi-Fi/IoT/WLAN (15 Sep 2024):
  https://btrc.gov.bd/site/notices/939916e8-a89a-4e3b-aa75-35a0a2172f59/
- Bangladesh National Frequency Allocation Plan (ITU-published
  Spectrum Master Plan):
  https://www.itu.int/en/ITU-D/Regional-Presence/AsiaPacific/Documents/Publications-Reports/Spectrum%20Master-plans/Bangladesh%20Spectrum%20master%20plan%20-%20Published.pdf
- Wi-Fi Alliance, regulations enabling 6 GHz Wi-Fi (BD entry):
  https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi
- Current BD entry in db.txt (kernel.org):
  https://git.kernel.org/pub/scm/linux/kernel/git/wens/wireless-regdb.git/plain/db.txt

Practical impact: With SIM MCC 470, Android and iOS devices apply the
BD regulatory domain. The current narrow entry hides all 6 GHz
channels and 5 GHz channels 36-144 from these devices in Bangladesh,
even on Wi-Fi 6/6E/7 routers, forcing fallback to 802.11ac on
5 GHz. Updating this entry would restore access to the channels the
regulator already permits.

I am not a BTRC official; the regulator has not submitted this update
itself, so I am proposing it on behalf of affected users, citing the
regulator's published circular and allocation plan above. Please let me
know if an official letter from BTRC is required before merging, and I
will forward this request to the commission.

Thank you for your time and work on this database.

Best regards,
Nahid Hasan
Dhaka, Bangladesh
nahidhasan12391@gmail.com

