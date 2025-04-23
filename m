Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E9EDC369CB
	for <wireless-regdb@archiver.kernel.org>; Wed, 23 Apr 2025 06:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D4BIwnznthiv+D6IfZakyHyA3dCAn7tDKaxeei3iHn4=; b=z3mPGdXWdeoU8cd8HMNhIEp0Dw
	wx96x5P3S3YBe0SXojeH8BkWDcf5Ud0auwmLjDUq3ZNXMNt+ieVlllOMs5ITGLQBoodVpeXL7sfO7
	z6dB4YCUodT7JRfr9Ct36VxUZ+QEQAUNBxMfMAYaY8wLQlSNpNfshTYm0j5+JuBTGfO3HQ9xTEa23
	+ZXVWtd5E4hLucQPFIsqvup7xls2tXZc9P1EsnT2OkeTJbZOyAopkQdZEZo3vqT2rl7kJXvNjgaDH
	UsHXDVg6Z0UIcfPS98e0d+zfAtXG+M02Gn7twcG5tXue9Jplmux6QhwEVGSeOW1vYdGa1QqxA/9BC
	EuW0UhhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7U13-00000009PQ0-445i;
	Wed, 23 Apr 2025 06:55:29 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7T99-00000009HMS-1V2N
	for wireless-regdb@lists.infradead.org;
	Wed, 23 Apr 2025 05:59:48 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5f624291db6so8547291a12.3
        for <wireless-regdb@lists.infradead.org>; Tue, 22 Apr 2025 22:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ekahau.com; s=google; t=1745387984; x=1745992784; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=D4BIwnznthiv+D6IfZakyHyA3dCAn7tDKaxeei3iHn4=;
        b=di65QDhiVGdZ/Q4g/N48MUMEDPIKSVgy07PmmRaJ0lUQIjf5HD4+dbi5iUTDnakJBz
         /T64RGGFT98u6CtJVg1HElr//Xmpgvb4k+pL+qIrcivQkZclsq7pHs69Jc+JNp7Nh9VN
         QBaHNqDxx1XN5L+LuJL9asu5cpPK6YNUjxwlJnvvlGt9eXiw0f2KULVtgPjQz6Y2jc82
         lgBEmBocR+ukeNFpZjhSXm4MrV1Pj+6GGvr2h+GiRJG1wY3m5/+aGgi/Yj5rQT9stv68
         A7HFmDRQvZuFzLnqAoisF5MomrQXyDNUk0Dp/j4705Sxd+LA3nye4ZzcCm6QsT4+q1Ik
         d5Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745387984; x=1745992784;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D4BIwnznthiv+D6IfZakyHyA3dCAn7tDKaxeei3iHn4=;
        b=f20A/QLMYRJPXTqf2ihwiP0Q+NcrYqbBNxXtg6I18QHXMGErMmMOEmygh78M2TGDDo
         Jku/x8l2+Y3yGlpCo3Jy2s9kFamGNRTzB8e6TRlMusjufByZwF96pSMxf19HkZlGuItu
         2WX6oVd+SZMgsCtiuKvECUNveXjWpPnyo8f1gztJXoNzMLjyPFD/W6gyDckJOgnTIujO
         /ZCsZ/sLtG5BLJF4ebWqV3s87/FejZWsNQkqsE39efJk9+iD7QzThxv03FHBx8+6ciHd
         zw9rW7qbPgvJT5jZPXoGwFGb1JGhKY5Ep12wl6V338GmrRYE16F3Tl8NlxiZVxbkzUZK
         SJRw==
X-Gm-Message-State: AOJu0YzdYP3kuEzV5oXFRTRJI6fD+kaBOInBqOFDAul4Dbx8Ug3JmO52
	eSLHkD02d+j6FUL4p48CjlqC/YriWhiU3CW8/HCK/rc1VcVY4oBUeYmUjiuvTN8nB8GzU3gxIa0
	XrFtSzzTFHGSR+UR0/F8PwcTsyF2mwO0MeZJTwMy7k3w7SjGyN2tirNFBv45sHOe4e2iS9DnSqD
	3KvBh0QusMjSD2TrDl9P2sEWKiW0wtvHQqNn0BQ8jIEAGNd6nreA==
X-Gm-Gg: ASbGncsVckx5Xy9axRFxYyI+kc0FlOsU6obMn8NvdT29gik8a2rokpbupyrMDrYM84K
	zI3kLCErj+z7jRpJWZLQIl6uJpzGHX/df0JL5PexGu6ytpGmRYip3HZIytbw4PbysmSYLepJvIN
	9vobsIfnO/FlX/Ju+/6Y3E5PQWFOG9YZv5
X-Google-Smtp-Source: AGHT+IEPoovxa9aaowxPB79IP/72N5PnEPST6jlg1TJs7B6WmK2qaXObc81TJ03IddBhOowdJsVc6FkO5Je95+zhv5E=
X-Received: by 2002:a05:6402:90d:b0:5f6:ace4:9fa6 with SMTP id
 4fb4d7f45d1cf-5f6ace4a062mr8089378a12.16.1745387984302; Tue, 22 Apr 2025
 22:59:44 -0700 (PDT)
MIME-Version: 1.0
From: Olli Alanen <olli.alanen@ekahau.com>
Date: Wed, 23 Apr 2025 08:59:33 +0300
X-Gm-Features: ATxdqUEiZ7RYpH_szQmCeEGQOiZwqigU5VQ5zl0y9I9Vp1_QCJmFaMTh0Cjkseo
Message-ID: <CAAKnb7=8R3RFWHWDksjvjX8QDGidpMoe10OgmOJbuVXuq+fvPw@mail.gmail.com>
Subject: 6ghz missing from some countries according to Wi-Fi Alliance
To: wireless-regdb@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_225947_407278_566A5AE3 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Tue, 22 Apr 2025 23:29:43 -0700
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

and thanks for maintaining this database. We find it a very useful
source of information. We were recently comparing your regulatory
domain data to Wi-Fi alliance documents at:
https://www.wi-fi.org/regulations-enabling-6-ghz-wi-fi and noticed
some inconsistencies in the 6ghz band. I believe the following
countries might require an update as according to WFA 6ghz is allowed
at there, but in your database it is not:
- Bangladesh
- Syria
- Tunisia
- Vietnam
- Andorra
- Egypt
- Monaco

The latest thread in this mailing list seems to propose a fix for
Vietnam, but similar should be likely applied for other countries in
my list too. I do not unfortunately have the original documents to
which to refer, but I trust that the information in the Wi-Fi Alliance
website should be correct.

BR,

Olli Alanen

-- 


This email, its contents and attachments contain information from Ziff 
Davis, Inc. and/or its affiliates which may be privileged, confidential or 
otherwise protected from disclosure. The information is intended to be for 
the addressee(s) only. If you are not an addressee, any disclosure, copy, 
distribution or use of the contents of this message is prohibited. If you 
have received this email in error, please notify the sender by reply email 
and delete the original message and any copies.


