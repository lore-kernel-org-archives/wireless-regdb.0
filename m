Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmDUO-0002pC-LC
 for wireless-regdb@lists.infradead.org; Wed, 04 Jul 2012 00:30:41 +0000
Received: by wibhq4 with SMTP id hq4so3733261wib.0 for
 <wireless-regdb@lists.infradead.org>; Tue, 03 Jul 2012 17:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-type:content-transfer-encoding;
 bh=JnMQeSlih1QhN126StCW+ARTHUS8ZrRoNETeSKPkbSg=;
 b=noKG4vdJ/3esDNCfV8xUKdGB2rshkeqC9/byJ2lKJCmesPiXomsevfd/EOKjMMzCk7
 PnB/P7czxNyxhSLBBf7kfLDGzlmxLO72hy/Tcrct/nOpOs1nEwLfCNrkfK6JtnqTvC9u
 9HmvvYzw6IoPRX82SMe63sp2/KKaBM2+bGT0omx4+GHKogXThMAPr5cFSFlXjr+TUW70
 HKh5vjBjUQbOLnoG0KK2rvQ732QCMeVvoitgrwCQtMaMJwAZRflgntFuB41uOs8kd8Y9
 DtuZUxh1PO0UmjrjYFFf2q1Mh0KO+yk6rXVsioedq8yqJfgHfrZcI5WRlaMGYE6zgMbL OMaQ==
Message-ID: <4FF38EA9.8000709@gmail.com>
Date: Wed, 04 Jul 2012 02:30:33 +0200
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
References: <1341350730-11037-1-git-send-email-xose.vazquez@gmail.com>
 <4FF38492.20003@gmail.com>
 <CAB=NE6VpCUr1v400bNa1R3Ns4S4QVUt-cjq8=XtoJY=U533Cig@mail.gmail.com>
In-Reply-To: <CAB=NE6VpCUr1v400bNa1R3Ns4S4QVUt-cjq8=XtoJY=U533Cig@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for ES (Spain) on 5GHz and 2.4GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "Luis R. Rodriguez" <mcgrof@frijolero.org>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On 07/04/2012 01:59 AM, Luis R. Rodriguez wrote:

> Please send a new patch and if you are going to convert something form
> dBm to mW then please do that in *one* single patch so that it can
> easily be read what changes you are *actually* making. That is one
> patch to make a conversion in units that will not make any actual
> changes, and then send another patch with all the verbiage you can use
> to explain *why* you want the change you are making. You want the
> commit log to have enough language so that if I forward the patch to a
> regulatory person who has never read a patch they can read it.

There was only one patch.

The second mail was only a "Signed-off-by:", just in case.

> The agreed upon "bar" for quality of regulatory patches was agreed
> upon a while ago, for details see:
>
> http://marc.info/?l=linux-wireless&m=128414096127554&w=2

Thank youuuuu http://wireless.kernel.org/en/developers/Regulatory#Mailing_list_for_regulatory_updates
:-P

> The more information you can provide the better.

I believe  I sent enough.

-thanks-

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

