Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzqsL-0007QE-8k
 for wireless-regdb@lists.infradead.org; Wed, 25 Jun 2014 17:20:49 +0000
Received: by mail-lb0-f177.google.com with SMTP id u10so2052754lbd.22 for
 <wireless-regdb@lists.infradead.org>; Wed, 25 Jun 2014 10:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=ZLQWszY9sLnpZLFnzaIVxs2cX3PbYwOe5BHx8fw0N5w=;
 b=SwMI7Yz6fmO5XhrQttq3vNIS9v0S9FohWjzAfPLL34W7uKtAy9T4ODIU3GyXo0VCEh
 usPWu/qZEwFgt6PhzCejdruwJxSBw0DKLGoovOtE8MGg1chrXfYFkjVspELRBr15eMy6
 vz227X0bJveHdzNy7qNZpSTdblx6lpmCsCsfi8JNPm6JydcBEpVeD2ie8AiJJlHzNW4u
 pePGT0i6KDrG1dTQ/g2wsor4jVQCR9q0QiW6Yi6ywz96fWcDdR1DzA/vh/UrpRtKv7us
 FkvfsYxXGoq2etVN5kJ1FFuXR1Dt7doM79QnzCHzY7daSJpxqrQ1qk2GG8RHrF6ZywID ukHw==
MIME-Version: 1.0
In-Reply-To: <53AAFD75.7090603@candelatech.com>
References: <1402517314-20110-1-git-send-email-greearb@candelatech.com>
 <20140623191504.GD1390@garbanzo.do-not-panic.com>
 <53A89011.1010806@candelatech.com>
 <20140623205451.GG1390@garbanzo.do-not-panic.com>
 <53A89A0F.9090509@candelatech.com>
 <20140624004442.GH1390@garbanzo.do-not-panic.com>
 <53A8E3F9.7000001@candelatech.com>
 <CAB=NE6XJaHNAL17mN7Ghw9GnatOwaOacikv5XupK7xKjUe=m_Q@mail.gmail.com>
 <53AAFD75.7090603@candelatech.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 25 Jun 2014 10:20:05 -0700
Message-ID: <CAB=NE6WY978KkB6KL3MLDJOekgwBk4r--vjQ-+Qke6SLJn9EGg@mail.gmail.com>
Subject: Re: [wireless-regdb] [RFC] wireless: improve dfs-region
	intersection.
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
To: Ben Greear <greearb@candelatech.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Kalle Valo <kvalo@qca.qualcomm.com>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jun 25, 2014 at 9:48 AM, Ben Greear <greearb@candelatech.com> wrote:
> I started trying to do some more DFS testing on a 3.14.8+ kernel,
> and from what I can tell, the US region is configured for
> DFS-Unset.  I was assuming this should be set to DFS_FCC.
>
> I tried installing the latest regulatory.bin.  crda is whatever
> is standard on Fedora 19.
>
> Do you know if DFS is supposed to work at all in the 3.14 kernel?

DFS region support was added upstream via 8b60b07805

mcgrof@ergon ~/linux (git::master)$ git describe --contains 8b60b07805
v3.3-rc1~182^2~44^2~384

Now, that doesn't mean a driver will have DFS support of course. I'm
not going to treasure hunt that for you.

> I'm certain I had this working earlier on this machine,
> but I was on a somewhat patched linux.ath tree at the
> time it seems....

There's an issue Krishna reported about internal db now parsing the
new db.txt format properly after the antenna gain removal but a patch
is supposed to be on the way.  You don't seem to be using that though
so you may want to debug things a bit further.

 Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

