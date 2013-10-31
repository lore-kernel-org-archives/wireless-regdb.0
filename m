Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbyQd-0001Kf-Rg
 for wireless-regdb@lists.infradead.org; Thu, 31 Oct 2013 20:01:16 +0000
Received: by mail-la0-f48.google.com with SMTP id er20so2174696lab.21 for
 <wireless-regdb@lists.infradead.org>; Thu, 31 Oct 2013 13:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=9FJbK/K1q1M5BI+tvDE0ktOWIP/YDyXNPZiCXO0qE3M=;
 b=SvHmaIAsYsl7ztgxCMzMvY9Bp65c6WHICyAOPclT/y+OjhbFVKGbmQhzD0MSJ4NGq5
 R4YGwKZNOaeUK5B4SQuv1+5o0wZO5V4GIIH3hK3iCISnKCgXVQaH+uSq+IBaPDsjo2SM
 m5W9tI0qtrQZsL7uEkrZYbt5XlPVBnE7qMernCN3so5F7IWVdpvlddbb8oG1qOKX9RJR
 vvmi/clJshwSXdNu4pIRDfSQLnWff3LsPSwe3fBqwALw3d4rCyzkAvM31IvaB7lbdaLM
 +PLRtoePPnBvObs/HaJ/5BTBsLj6nlq6D8jOM4bAAkxEJaSvZVPRSPI6LyhjUXV1KOp+ 27cA==
MIME-Version: 1.0
In-Reply-To: <5272723B.4090006@gmail.com>
References: <5272723B.4090006@gmail.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Thu, 31 Oct 2013 21:00:32 +0100
Message-ID: <CAB=NE6X7LJnCBVQ5bXiXs-F8MgNoRDGzzdubkVAVmoyd3EaQZw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 5/7] wireless-regdb: optimize two of
	ES's rules
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

2013/10/31 Xose Vazquez Perez <xose.vazquez@gmail.com>:
> hi Luis,
>
> This patch is incompatible with my ("pending")patch:
> http://lists.infradead.org/pipermail/wireless-regdb/2013-February/000136.html
>
> thanks,

I'd like Michael to review this one, in the meantime I'll drop this
one from my patch set. I have a new set of patches I'll post soon.

 Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

