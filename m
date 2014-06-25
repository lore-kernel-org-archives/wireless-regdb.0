Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wzr9J-0000e9-Ns
 for wireless-regdb@lists.infradead.org; Wed, 25 Jun 2014 17:38:23 +0000
Received: by mail-lb0-f172.google.com with SMTP id c11so2107221lbj.31 for
 <wireless-regdb@lists.infradead.org>; Wed, 25 Jun 2014 10:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=Wcrzv+mD79UTDcEAK6sMkKmetyTLhxF4CFzMaEJFPmY=;
 b=sYpDrCRhPu+g4SMfnj2BGHiISd6iIu2LrF732EH8CzxkqMst4rabC0YmA8xi2VDCB/
 RxokZsz0FVY5aj/ttBHVyVQ6za9iL8qz4T2+6n0VWngtaS55RjgXTDdnNORoVnX+ec9Z
 ttLkvxcecbAcf3LVOIgLmjC+PRsrpLviFbLmnlTtq22JoD6wyj2kSbI/pWO5IKjFhix/
 jgGwm7r6c+Q2RQqYB9NrFYuHrm4eNYRh/aePzs40XsyKYTPVd0dzpa6199w/tGSDKw3I
 yOt5AfAiLQOwy6QGwKrHTOCP2Az4lrwh9pQNxwdVNYbBP3MvS9xYsLYHeONcRgZpuMCe papA==
MIME-Version: 1.0
In-Reply-To: <53AB0828.8060207@candelatech.com>
References: <1402517314-20110-1-git-send-email-greearb@candelatech.com>
 <20140623191504.GD1390@garbanzo.do-not-panic.com>
 <53A89011.1010806@candelatech.com>
 <20140623205451.GG1390@garbanzo.do-not-panic.com>
 <53A89A0F.9090509@candelatech.com>
 <20140624004442.GH1390@garbanzo.do-not-panic.com>
 <53A8E3F9.7000001@candelatech.com>
 <CAB=NE6XJaHNAL17mN7Ghw9GnatOwaOacikv5XupK7xKjUe=m_Q@mail.gmail.com>
 <53AAFD75.7090603@candelatech.com>
 <CAB=NE6WY978KkB6KL3MLDJOekgwBk4r--vjQ-+Qke6SLJn9EGg@mail.gmail.com>
 <53AB0828.8060207@candelatech.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 25 Jun 2014 10:37:39 -0700
Message-ID: <CAB=NE6UJ5XbvsTBUtHUma3rkq7QpZZ4Lxooo-QX3-8se8zcdXg@mail.gmail.com>
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
To: Ben Greear <greearb@candelatech.com>, "John W. Linville" <linville@tuxdriver.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Kalle Valo <kvalo@qca.qualcomm.com>, linux-wireless <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jun 25, 2014 at 10:34 AM, Ben Greear <greearb@candelatech.com> wrote:
> Is the 'regulatory.bin' from today's wireless-regdb repository
> correct?  I did not try regenerating it..I just did a git pull...

John?

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

