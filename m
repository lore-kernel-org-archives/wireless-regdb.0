Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-qc0-f174.google.com ([209.85.216.174])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq1hy-0004Xs-R7
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 15:58:03 +0000
Received: by qcbgu10 with SMTP id gu10so6883078qcb.2 for
 <wireless-regdb@lists.infradead.org>; Wed, 06 May 2015 08:57:41 -0700 (PDT)
Date: Wed, 6 May 2015 10:57:21 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150506155721.GA125350@ubuntu-hedt>
References: <20150505113216.90f7fdbceca7565206599b83@ubnt.com>
 <20150505084821.GA26349@jouni.qca.qualcomm.com>
 <87d22f8f4d.fsf@nemi.mork.no> <20150505210924.GB109672@ubuntu-hedt>
 <CAFSVvReN4DwSsk4Q9Bz+WEw5zaKm+ODB=kWhdPj1L7=Qe1ORPA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFSVvReN4DwSsk4Q9Bz+WEw5zaKm+ODB=kWhdPj1L7=Qe1ORPA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] Specify Australian DFS region as
 DFS-ETSI
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
To: Dmitrijs Ivanovs <dmitrijs.ivanovs@ubnt.com>
Cc: wireless-regdb@lists.infradead.org, Peter Gent <Peter.Gent@mbie.govt.nz>, Jouni Malinen <jouni@qca.qualcomm.com>, =?utf-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, May 06, 2015 at 11:16:22AM +0300, Dmitrijs Ivanovs wrote:
> Hi!
> 
> I only can access an electronic copy of a previous version of AS/NZS
> 4268 issued in 2008. Yes, there is an Appendix B which states: use
> European standard, or _alternatively_ FCC rules.
> It is unlikely that this clause has changed in 2012 so that ETSI is
> not allowed anymore.

Great, thanks. It would be nice to be sure what the most recent version
says, but all the unofficial information I found online either agrees
with this or else mentions only ETSI. Still, DFS-FCC for New Zealand was
added in 2013, but as part of a large group of countries and no
reference was given.

Again though it seems that if Austrailia is to be DFS-ETSI then New
Zealand should be changed to match as well. Could you send an updated
patch which includes that change?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

