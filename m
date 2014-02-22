Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WHJ6s-0004hJ-6x
 for wireless-regdb@lists.infradead.org; Sat, 22 Feb 2014 20:23:44 +0000
Received: by mail-la0-f54.google.com with SMTP id mc6so314461lab.27 for
 <wireless-regdb@lists.infradead.org>; Sat, 22 Feb 2014 12:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=J8qLRl+k+nYkd2qtjl9k+kRWbia1QcmrRCSUjBNcVkk=;
 b=pLZwl0rW9UNCUX+3bj86lWi373CrEQmt29r/Tlar50HCoycAbTcCUYpQgWeRe2+VpO
 99KcnKV0TtqZgdjO7Ce2Iej/DW0qc8R7VUS5y5U8D05tKL9cLMMlyvI7jsWXOvyQ8XX/
 sxKp8EFHiQ5wFeOK1J4vR7pTebY6CAZ9+4KDvXapIiUKyzeWtX0L1vt8xh+W/F+FFCo9
 eVsLWhGl1sYgd0SvU0lK9I33PANm/i/KEfVFcMOEHYG+8+CP5fdZ0mZPMimOQuSSfQ1c
 RruKnoGiOvMCHJFyRFYYmyDgYKxn9ZZSGRHPBoSmxdQvaZps6+SMiAM8RTD0x4dNXNAp vSHQ==
MIME-Version: 1.0
In-Reply-To: <CB3B3D4774441E42AA3EA0E1BA8230A033385C8E@HASMSX106.ger.corp.intel.com>
References: <1390818118-27261-1-git-send-email-ilan.peer@intel.com>
 <1390818118-27261-7-git-send-email-ilan.peer@intel.com>
 <20140219001458.GF14296@garbanzo.do-not-panic.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A03338353E@HASMSX106.ger.corp.intel.com>
 <20140219160301.GH14296@garbanzo.do-not-panic.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A033383EED@HASMSX106.ger.corp.intel.com>
 <CAB=NE6WD93GCtsKpXUJB8pZ-+9wOcF1E4QxNX4rRyed26JCHoQ@mail.gmail.com>
 <CB3B3D4774441E42AA3EA0E1BA8230A033385C8E@HASMSX106.ger.corp.intel.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Sat, 22 Feb 2014 12:22:56 -0800
Message-ID: <CAB=NE6VHVuRkxK0GbTNfkz2Cn+Bv19hO7cKe35KQhPVbUCB_bQ@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH v3 6/6] mac80211: Enable initiating
	radiation on indoor channels
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
To: "Peer, Ilan" <ilan.peer@intel.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Feb 22, 2014 at 10:55 AM, Peer, Ilan <ilan.peer@intel.com> wrote:
> AFAIK, one of the options they are considering is to allow such relaxation if beacon from several (>1) different BSS was received.

This can just go upstream, ie the existing implementation can be
modified to account for this for FCC only.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

