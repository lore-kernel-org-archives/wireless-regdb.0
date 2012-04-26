Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-f177.google.com ([209.85.214.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNN00-0005Wu-CB
 for wireless-regdb@lists.infradead.org; Thu, 26 Apr 2012 11:36:37 +0000
Received: by obqv19 with SMTP id v19so1766473obq.36 for
 <wireless-regdb@lists.infradead.org>; Thu, 26 Apr 2012 04:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:sender:in-reply-to:references:from:date
 :x-google-sender-auth:message-id:subject:to:cc:content-type;
 bh=GC9acCNBQEgVoTI3JDBICOteEYFJro+7SD3aE+iJH68=;
 b=hztxlu8YI/L1AAa/Pe88Idv3DJVhJl6CiNh8XD418xssoLser03zFzajPHr+Gv3tJd
 ljxiXhslz0K0iu5BKWj2y/Qp9qvjlkWHfl7+0JsJ4QD3swKv1AvR/wxfqr5PT3kEuKLH
 rtwYOIirZws6qkkyj8arI5RDVYFfFw50C80gG7GqZ1kTOlDAFomnhAJjTCTx1eZV4lsq
 t+GXN/53sjXePtbg/WLMyw3cR8pTCNMkgLRAObFyEXmyhxPdCQrO9OZhdrpajrD84L4U
 /yAXkysp3uTec/X8u76IPxPiIlzzG+uAnifwcWxaMaw4JYhOlZVtCoBQn5bAnVvhIg0g sdFA==
MIME-Version: 1.0
In-Reply-To: <1335437414-3421-1-git-send-email-rmanohar@qca.qualcomm.com>
References: <1335437414-3421-1-git-send-email-rmanohar@qca.qualcomm.com>
From: "Luis R. Rodriguez" <mcgrof@frijolero.org>
Date: Thu, 26 Apr 2012 04:36:14 -0700
Message-ID: <CAB=NE6WSaoR+n3JUrZ+XRimHxLQa2ZU3nwKO+gcGFX-=k2o1zw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add Rwanda (RW)
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>
Cc: wireless-regdb@lists.infradead.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Apr 26, 2012 at 3:50 AM, Rajkumar Manoharan
<rmanohar@qca.qualcomm.com> wrote:
> Add support to country Rwanda with APL1_WORLD.
>
> Signed-off-by: Rajkumar Manoharan <rmanohar@qca.qualcomm.com>

We had decided a while ago the requirements of new patches to wireless-regdb:

http://marc.info/?l=linux-wireless&m=128414096127554&w=2

This patch does not provide any regulatory data. The APL1_WORLD name
is only an Atheros reference and provides no data for anyone to
review.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

