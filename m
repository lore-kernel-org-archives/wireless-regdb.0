Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-qc0-x234.google.com ([2607:f8b0:400d:c01::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpuVX-0004XP-OU
 for wireless-regdb@lists.infradead.org; Wed, 06 May 2015 08:16:44 +0000
Received: by qcbgy10 with SMTP id gy10so963793qcb.3 for
 <wireless-regdb@lists.infradead.org>; Wed, 06 May 2015 01:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ubnt.com; s=google;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :cc:content-type;
 bh=VOnLi0+jn3T1/RPOPlQFy2WCNvIznMuR5KryGJeNTH4=;
 b=x9+q312A8fb7v1EAtptyvRcF7q+OGM4SETwaDXpRuORyJDtVIC+72ktZih/kjLtvZf
 ZdtZardUZVgLUqqJ1k1ue06Ca5qgWQgsehoxomVdCRncjy0YQyv7oDwzkq7zSU+0DqPM
 Xz32u1ZUBImtrOOEcGDxVgrSpRV4KtmU3TPOE=
MIME-Version: 1.0
In-Reply-To: <20150505210924.GB109672@ubuntu-hedt>
References: <20150505113216.90f7fdbceca7565206599b83@ubnt.com>
 <20150505084821.GA26349@jouni.qca.qualcomm.com>
 <87d22f8f4d.fsf@nemi.mork.no> <20150505210924.GB109672@ubuntu-hedt>
Date: Wed, 6 May 2015 11:16:22 +0300
Message-ID: <CAFSVvReN4DwSsk4Q9Bz+WEw5zaKm+ODB=kWhdPj1L7=Qe1ORPA@mail.gmail.com>
From: Dmitrijs Ivanovs <dmitrijs.ivanovs@ubnt.com>
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, Peter Gent <Peter.Gent@mbie.govt.nz>, Jouni Malinen <jouni@qca.qualcomm.com>, =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
List-ID: <wireless-regdb@lists.infradead.org>

Hi!

I only can access an electronic copy of a previous version of AS/NZS
4268 issued in 2008. Yes, there is an Appendix B which states: use
European standard, or _alternatively_ FCC rules.
It is unlikely that this clause has changed in 2012 so that ETSI is
not allowed anymore.

On Wed, May 6, 2015 at 12:09 AM, Seth Forshee
<seth.forshee@canonical.com> wrote:
> Dmitry, you site AS/NZS 4268 as your source - do you have access to
> this, and can you confirm that the requirements are closest to DFS-ETSI?
> It would be great if someone else with access to the document could ack
> this as well, since at first blush this appears to be in contradiction
> to Peter's email.
>
> I agree that it doesn't seem to make any sense for Australia and New
> Zealand to be different here. So if Australia is specified to use
> DFS-ETSI I think New Zealand should be changed to use it as well.
>
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

