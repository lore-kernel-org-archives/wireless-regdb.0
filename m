Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DA4DCAC5B0
	for <wireless-regdb@archiver.kernel.org>; Sat,  4 Oct 2025 15:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UkC3AELOpWV0/BiWqfTHXOtItCby386HiwylDrzY5Xw=; b=LWw5yasjiHMblgO+9kX49Mmrnw
	PZqrPa5+vqM1w+mwhh8jcV8jnuNgF6cdlyBOinwqpgDaW/XnnTQO6zgrEK4xdLLYv0XZKWo13Tw1d
	4B8iOUCD9L2CHycchi0znh9NRruLYOcHRI8qxt+GlGdjrUHmIm+paErOqZ+mzr1YtuCmIej4Wvya1
	6CQzfcDQBtJWnKU3Di+XUwvbBenD7dHvsWqfeYf7anu6EXJ2RRlr9/71KUXMvkH5Zw4x7DYAgcVVj
	JQmoKnpvG5hKoJ9xzQgthBCpjTdmG6BbCLSxEuNVCPlMel1bUE1+hi39DlWxx+nHZ+Kxc2VYVAOnS
	myYVFGfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v54dO-0000000DqBP-2Q1f;
	Sat, 04 Oct 2025 15:57:22 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v54dL-0000000DqB4-44wx
	for wireless-regdb@lists.infradead.org;
	Sat, 04 Oct 2025 15:57:21 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-58984c363ceso4083463e87.0
        for <wireless-regdb@lists.infradead.org>; Sat, 04 Oct 2025 08:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759593437; x=1760198237; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UkC3AELOpWV0/BiWqfTHXOtItCby386HiwylDrzY5Xw=;
        b=e5rC2wRZ/Qpp0Mx9+Tj4wh/DlQzuZ8Pz57Pu/Zh61/E/v8zhopVvVb+llB6snn2FnQ
         pEM1WlkmkhXT6q1Uxi5eu69mAR34MvvBPc3ybT6tEc+ChvU0AHPQsQNVKWE+UrHhN0qo
         +IUirab2fOpQf/ZITwqYmOiS8n3gEb5qP5u4/i/WV5IbYvtGiqNt4NTh9QBIac6LD2fB
         N7g3N4u0rosFcG0VmJ61rXsUo0gVFFwVPq5id6guuKnhJERrQmsYy3lwdRK+1xr0afe9
         CEhBaaHp56vQG7RSSZpyLnIhrrQO1XSYXkfJgqO1CIzVONHQeRnezN14GZQcdwTzydyD
         xyoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759593437; x=1760198237;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:user-agent:mime-version:date:message-id:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UkC3AELOpWV0/BiWqfTHXOtItCby386HiwylDrzY5Xw=;
        b=CcVfz1+bHR4Z6Grzj6Vy3849nJTLHA0bhL155DH4TgQlvXA6CIrdWZnUXJKt7f+EbN
         gZ5yfn9Z5itS7kQtXC2B+26HayzcDLMLFvzDiQZ+DBmncBRuuOeXnBo/QCOjAoMsPeOm
         q2eh2u3fUADjhg7Eiak3AA5qTaRXHid0sXaXGfAtYYmGkdf6hZSomUY8kRWdGYyoovOi
         rF/oroiHe+/XLoC4IewP/LutvkHd2jW9AQJF6bj36MLJIx+nXf7+gVaEohMzx82Q1BKf
         YBeC5RmNPG5yluKRHokuRtUxu5D4YStNR6heq7W3Gz0xXlq5+SCbRWT9Bdjm9WctuNU6
         QwWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWg+h6tpaWuhBJNEy2JvIhr5zLE3o6w+Qbcp4A7BXPV0jcx3yDDe15Kxh6MTiTnVwVkiJLiHWr6n5JquaPUuA==@lists.infradead.org
X-Gm-Message-State: AOJu0YycpKcUgA0E2MjW3Mlbk8qBFg1rMppIrse0xKsRHipwmuho3hIT
	ntKrMCKqzQlZcmggJLvYsK587Dh7JvDy8+2e+ejdFZGfaWX9KcNJD15g8q2tlO5QTFs=
X-Gm-Gg: ASbGncs/LPQaqMwU90PaZPtvCv3wbF395SkBOFMWHd1Oxr+PgfmTylYC/Evi9KCr0LB
	OmaBle0TohY2ZAuNyBEr9G4S5Zxws1DpqJrcBoExlC3LAw2WZ6D2YI1eJZM+CssScwC6umVjTcb
	FhYq+aQU77+uLrsgu76+VoSh6Bxyew2YB+rA2AEYFcNpRqYdwwsU12Wuxn8IPfa6bIPpMzz4scs
	FoYzoJZC33U2guILRK1P+KC3v7xYzT+CFxDnP940ltlBpmXQ0MYhCPnsj/7l58XH+kr7rkqB523
	jtF8DOZCK+9ZCVMCAopY6B7LUKj0OT7w+kFetqSarc5bn6vo4XHMgNPG0b//+9BQq6/XJ/KBYOS
	14fErT4gYU4FJysEiaPFh2y43CoZwBODYWPFuKeF0cae6h9qukY055M9S7xNnO0t/ZmxqEAHikd
	FawRNvA03o
X-Google-Smtp-Source: AGHT+IEW6ue7arntffLYPBvQdvDm4i/Rx9L7t7Ilj4bMr+VVLstc58I1e4MQn6+ygtjps1rUSjp9sA==
X-Received: by 2002:a05:6512:138d:b0:58b:75:8fc6 with SMTP id 2adb3069b0e04-58b00b9fcb4mr3307530e87.19.1759593436920;
        Sat, 04 Oct 2025 08:57:16 -0700 (PDT)
Received: from troynas (host-176-37-53-238.b025.la.net.ua. [176.37.53.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118dd2esm2963313e87.80.2025.10.04.08.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Oct 2025 08:57:16 -0700 (PDT)
From: Dmitry Geurkov <d.geurkov@gmail.com>
X-Google-Original-From: Dmitry Geurkov <d.geurkov@gmai.com>
Received: from [192.168.1.116] ([192.168.1.1])
	by troynas with ESMTPSA
	id wuF0AtxD4WieDQAAVAQQrQ
	(envelope-from <d.geurkov@gmai.com>); Sat, 04 Oct 2025 15:57:16 +0000
Message-ID: <252f428e-8903-4d3f-8337-d42e6a2ad4a4@gmai.com>
Date: Sat, 4 Oct 2025 18:57:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: wireless-regdb: Update regulatory rules for Ukraine (UA) on 6GHz
To: wens@kernel.org
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
References: <d2e09391-d2fd-4456-ae45-103239dbac74@gmai.com>
 <CAGb2v66VXhx0ymHGOdS33W2QxUMxew1xW--+hrs+jy48u6MfoA@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAGb2v66VXhx0ymHGOdS33W2QxUMxew1xW--+hrs+jy48u6MfoA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251004_085720_032264_099A3931 
X-CRM114-Status: GOOD (  14.57  )
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

Hi ChenYu,

Here is official website with text of amendment that was approved and 
became a law as of 13 August 2025

https://zakon.rada.gov.ua/laws/show/976-2025-%D0%BF#Text

The text is in Ukrainian language but you can use google translate and 
translation is pretty much accurate

If you have any questions feel free to ask, thanks in advance


On 10/4/2025 5:38 PM, Chen-Yu Tsai wrote:
> Hi,
>
> On Sat, Oct 4, 2025 at 10:36 PM Dmitry Geurkov <d.geurkov@gmail.com> wrote:
>> Hi,
>>
>> 6GHz wireless band was recently allowed by Ukraine government for WiFi
>> 6e standard indoor use.
>>
>> Could you please add the appropriate setting to wireless-regdb
>>
>> I'm not familiar with wireless-regdb format nor an expert on wireless
>> technology to create PR myself
>>
>> You can find all needed information here
>>
>> https://eba.com.ua/en/v-ukrayini-dozvoleno-vykorystannya-novitnoyi-radiotehnologiyi-wi-fi-6e/
>> <https://eba.com.ua/en/v-ukrayini-dozvoleno-vykorystannya-novitnoyi-radiotehnologiyi-wi-fi-6e/>
>>
>>
>> https://mrt-cert.com/en/gjxw/4323.html
>> <https://mrt-cert.com/en/gjxw/4323.html>
>>
>>
>> Best regards from Ukraine
> Thank you for the notice.
>
> Would it be possible to provide a link to an official document or web page
> that describes the change? Something from a government ministry or office.
> We prefer those as reference over second hand sources.
>
>
> Thanks
> ChenYu

