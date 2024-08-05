Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2D2BC3DA64
	for <wireless-regdb@archiver.kernel.org>; Tue,  6 Aug 2024 04:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:From:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HHYJLOblerfTESYd1f7gtqU72eY7daGBvO9xKa/hYSY=; b=mZ5sYevYGGIF4Nj0+YT2csrZqi
	Gr53PP7iBI4rQK6fH5xeIXxJawVnfVW+zEFXyIryODBO6hGQwGzDOV7al04OTX65gBqnQ8dVF0MdR
	jmrGgUSZcOYf96mRYf8WjWRy5EKaUffv9H8JRyub0EE9cODo9VjfzFt8ejQoA3euMRmaoen8vfpUo
	nyMrJozfJpBPq26yMkt/Rno7bXzw63t9xESmlKmCIlz/hDD3jcbBDSmQ/52E0Zrk4MtbFkcnyM08/
	64g2vWo8RB9G+EZ0OpQGp9GtOdbgMTeTmOSgiKz3jTX9f3XoZvFyro5LV8PZsBoyHYNyDw9R2PoBX
	AkkNiAgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbCA1-00000000VUj-1miq;
	Tue, 06 Aug 2024 04:51:01 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb2Gk-0000000GqC0-0iLo
	for wireless-regdb@lists.infradead.org;
	Mon, 05 Aug 2024 18:17:19 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-70d199fb3dfso9066654b3a.3
        for <wireless-regdb@lists.infradead.org>; Mon, 05 Aug 2024 11:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722881837; x=1723486637; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HHYJLOblerfTESYd1f7gtqU72eY7daGBvO9xKa/hYSY=;
        b=FtGZjF+pb14hnvyMlzJWAhNsorn/OF9nYP9rnEVocZdT2JGQ1AOYafq9XazfbnST+X
         GjZ5lDDxPvS81HIPCoq1Sv1m5jK7e5/kJSWN67nSQQa4Cq0S2QFHgwSQg+hsFOmkKqRa
         B5v1Ta1cgFT02GiDELjOZpk9SqY3J56AWRdFvu+pALJUSHyPZdMXb/Uce9pKQyMYmadE
         hlbqZxrDXqGP486Jh5O0fCy0Ah5fDzoLC9hYKCu0cFkuVo5SQfT0juRGMrzSaDf9pRXu
         uxaFgXM7z2jveqjRqWnnvlSPZT1pB2By5IfJXwpYadgzUMHZXzUrDdeSYk46hpjg1uLz
         DK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722881837; x=1723486637;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HHYJLOblerfTESYd1f7gtqU72eY7daGBvO9xKa/hYSY=;
        b=OFxaohgHJ8sJZLwoiTn2S8LR7PQEu2YHf6ANusmSTz4BsrFNMm3dIsyTO/P7RhQRuc
         nGRIYn9fe8fz1VGawY0d+sAUajpu7aCLVn9caVGzYBJ0ly+sp0zU2IXS75o11CPNYheT
         8n+80s70FE/R4PgolMcia+cLAdwfsoqS2DHyVnA6rJcA+SV4RW1RXt0cWlBPVVp1GhQQ
         g0bPqmK7rDdTRm6QYjXUhCaX08FfQ75bhLkRsNaM3ievCyjdDiQrECrHiyk3oCRw9dCz
         /o8q2JNnqaK1A7Y4vVCdTI5Z52Nxq8iHENgUU2tqmRIj6BJtMT7E66hdvVnE4Dr29RLf
         Y8Zw==
X-Gm-Message-State: AOJu0YyMhCIjEHqWjvhaaaAwvQxvaB602o9jsmJjqE0PRtOdzstKSaCS
	SAmen3Lm1lz5+SE1ooqldNCafGs33UUFnS2Qy+73hg3KQmOVqJha77+Lsg==
X-Google-Smtp-Source: AGHT+IGjK5ooJ8zst3ebgeb2sW6OukNwIC2IbDXIIP0mLmm6/uF5yWVSunV3IjIAl5O2BbBLNpKSzg==
X-Received: by 2002:a05:6a00:4b04:b0:706:6b4e:64c7 with SMTP id d2e1a72fcca58-7106cf9cf2dmr14966222b3a.9.1722881836644;
        Mon, 05 Aug 2024 11:17:16 -0700 (PDT)
Received: from [172.16.40.166] ([103.78.35.70])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ec439f1sm5691803b3a.78.2024.08.05.11.17.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Aug 2024 11:17:16 -0700 (PDT)
Message-ID: <45213523-32f6-4e82-958b-6271e8b7e366@gmail.com>
Date: Tue, 6 Aug 2024 02:17:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nathaniel Chin <thegamingorangutans@gmail.com>
Subject: wireless-regdb: Inaccurate regulatory rules for Brunei (BN)
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Content-Language: en-GB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_111718_244369_8E6E5339 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 05 Aug 2024 21:51:00 -0700
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

Hi,

I've noticed that the current values in the regdb for Brunei do not 
match with the Brunei Darussalam Radio Spectrum Plan (2014-2015 version) 
<https://www.aiti.gov.bn/media/voqau1jw/brunei-darussalam-radio-spectrum-plan-2014-2015.pdf> 
and the Telecommunications (Exemption from Sections 33,34(1)(b) and 35) 
Notification, 2018 
<https://www.agc.gov.bn/AGC%20Images/LAWS/Gazette_PDF/2018/S039.pdf>.

Which both state that the authorised bands are: 2.4000 - 2.4835 GHz at a 
max of 200 mW; 5.150-5.350 GHz at a max of 1000 mW (2018 document); and 
5.725 - 5.850 GHz at a max of 1000/4000 mW (with the latter requiring a 
license).

Additionally the 2015 document refers to FCC and ETSI regulations and I 
don't see any mention of Japanese regulations?

Best regards,
Nathaniel Chin

P.S I've had to resend this email because initially it was sent as HTML 
instead of plain text so if you've received two copies: sorry.

