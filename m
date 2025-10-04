Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10BA9CAC5BB
	for <wireless-regdb@archiver.kernel.org>; Sat,  4 Oct 2025 13:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:Cc:To:MIME-Version:Date:Message-ID:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xhmW8jJYdppFzGWtIB5Vpr6Pj6ixAp4KG5I9YLNLeEA=; b=tNx7QTsWyYFAFc/1dFStdMrxwf
	WYDjW+l9t8Hvjd6u3g80EXMipCqf9lfNos2dKRetdHry9znmCx+qyWwU8/WxkzcvKgjWa8O67t0/n
	TOAu2IPY/UC654iv1ZvYT8J1Vyh2z/vLqZS0UksxZb9BYo3GMprIaPdFIIT9/aecmOix92UAfgunK
	ir8eSrM/o8bo2WQSX9iLP6tGPZOV2bpLCkmiXMb2vb9XpnOzw/1GCgZ4GXrnFqxCqOF9rnAG2r43R
	wyzbIyPIKwSVwrxGlGLGqy5WduWRkP3kPB0BfwkhnNl9DpTAk+wJBn8LzuPmaaJq6dOBj5AKKJGaz
	taT/gplA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v52Qb-0000000DkaZ-17T7;
	Sat, 04 Oct 2025 13:36:01 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4zgz-0000000Deid-0tfo
	for wireless-regdb@lists.infradead.org;
	Sat, 04 Oct 2025 10:40:46 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-58affa66f2bso3955251e87.1
        for <wireless-regdb@lists.infradead.org>; Sat, 04 Oct 2025 03:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759574443; x=1760179243; darn=lists.infradead.org;
        h=content-transfer-encoding:subject:cc:to:content-language:user-agent
         :mime-version:date:message-id:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhmW8jJYdppFzGWtIB5Vpr6Pj6ixAp4KG5I9YLNLeEA=;
        b=kePnq6XrYBWR+J727ulrTfRwkC9DKi90wBwfu8mBxJNs+XMWopWKzeTF8XDE0d54K9
         MsXMxfCS296uj9Yi+y+Uxo/D+MHO1v5TMYRqKgYDK9GwtxA/mWs2Oep2i0npFkUVb9ra
         /UfLHZRccpnBHH1xbnzfAAn1OorA6+nwgopH7zjYUuo/9UWbAubcCv5AC9ZqtBMGks/D
         v/9Cyrc9TZbnVOhRRsD78ULcT6S3ralK4QAriZaoBKMBhHIORk29pPm7SN/553KktzuX
         zknN9svOM84pOrd44QXTpJj5B8jnZuU2zOY+pcJb4prVyS8c0o7iSeu9sFGf/PchR/Tz
         RDGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759574443; x=1760179243;
        h=content-transfer-encoding:subject:cc:to:content-language:user-agent
         :mime-version:date:message-id:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhmW8jJYdppFzGWtIB5Vpr6Pj6ixAp4KG5I9YLNLeEA=;
        b=pJM7VDynSdcQiEjSMXbi9N0cXnJUK/3hMs85/S5Mx3xC2qtertOjDSEZNEEZl6jVqC
         swH6ZCQ3N9TNASuW31xReUvs8Qi/r8Zj4+fWiTx09y5IX8Ksih9IPpklF1ZoMQzizZwi
         X/SzrxsDZ3v01B7BR0njNxE6vxzvnMrdX6zdbqWWN6ygTW3XhQUXQRXZA8mUcC4IkRkJ
         AQaYsTq2mjGTsbeecn1JgYt04lxeIRvang5rhY3HrQ8r+O8yGIt8YnSboytVYKQkXws2
         aSKpHV1NUlyduaCyeE/zu3RxQ6ZfXhXuLEpGCOH+eoTZA4J6AZ7lu3KMdMvxdBCVPAtt
         jq0Q==
X-Gm-Message-State: AOJu0YxnU/EZK8dbWkE0kbcNqGW5EJ1zB1c4aawindPhjlOK5YHXzQ5J
	B8VSscxbGA5h58WOVbOvD/IwiBWsJfFxp5bq4qKtleiAcXcZ1FirDeUcaaXkkw==
X-Gm-Gg: ASbGncs913qxY4M2drlb4ozAoJq8x/kD1wkY7rCRZc7JHS6UhWw4k4Yx9IXMNZzxj9Z
	ZaI8ot5Cm0hXU9/+NMEaULiiJRZwKp7VfPafp2na15Zj/72/DAxl7J+NEZwFNZ5hj3rv679Uc6S
	tl8kH1bVAfJ5VSDgWCe3+0Lj6hpuu3ZL/H7VMtJQEF/i+NpNSo5ruKqUgVwohJ8c7QHbmloFz69
	FbYocwKbdnGpelMYANsceLbLE+6TyHaUl/1Y/tCsLw1pdIeyZ87dWsq+opMA3X3GdG5vB9VKLl5
	vC+nClWScffcDdsYtEXujCAiPHQI5PW04Q8OtF4cI0zZvouBdvB5EI/wzp2NpTS+CGCKWv8WgVa
	pJjZKyTP3edP/K8la4cXNq1/QCeGMcovQ0XG0kcsdRpV2e27Z/n1795m1KUNgMaeUiXs9AJBcWw
	bsCgWVmA0k
X-Google-Smtp-Source: AGHT+IG6bzm/OFjWWDzzJQnAznCc1Tnlid+nL82BR83SlJTbSGElwP5jc2lsB7objpYqr3fvB9wIig==
X-Received: by 2002:a05:6512:3f23:b0:58b:189:871b with SMTP id 2adb3069b0e04-58cb9473319mr1806236e87.5.1759574443046;
        Sat, 04 Oct 2025 03:40:43 -0700 (PDT)
Received: from troynas (host-176-37-53-238.b025.la.net.ua. [176.37.53.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0114033dsm2709143e87.53.2025.10.04.03.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Oct 2025 03:40:42 -0700 (PDT)
From: Dmitry Geurkov <d.geurkov@gmail.com>
X-Google-Original-From: Dmitry Geurkov <d.geurkov@gmai.com>
Received: from [192.168.1.116] ([192.168.1.1])
	by troynas with ESMTPSA
	id XwptGKr54GgICwAAVAQQrQ
	(envelope-from <d.geurkov@gmai.com>); Sat, 04 Oct 2025 10:40:42 +0000
Message-ID: <d2e09391-d2fd-4456-ae45-103239dbac74@gmai.com>
Date: Sat, 4 Oct 2025 13:40:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
Subject: wireless-regdb: Update regulatory rules for Ukraine (UA) on 6GHz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251004_034045_268007_DDF16626 
X-CRM114-Status: UNSURE (   3.57  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Sat, 04 Oct 2025 06:35:59 -0700
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

6GHz wireless band was recently allowed by Ukraine government for WiFi 
6e standard indoor use.

Could you please add the appropriate setting to wireless-regdb

I'm not familiar with wireless-regdb format nor an expert on wireless 
technology to create PR myself

You can find all needed information here

https://eba.com.ua/en/v-ukrayini-dozvoleno-vykorystannya-novitnoyi-radiotehnologiyi-wi-fi-6e/ 
<https://eba.com.ua/en/v-ukrayini-dozvoleno-vykorystannya-novitnoyi-radiotehnologiyi-wi-fi-6e/> 


https://mrt-cert.com/en/gjxw/4323.html 
<https://mrt-cert.com/en/gjxw/4323.html>


Best regards from Ukraine

Dmitry Geurkov


