Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from canardo.mork.no ([2001:4620:9::1])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9CXp-00049a-Q2
 for wireless-regdb@lists.infradead.org; Tue, 13 Aug 2013 11:13:47 +0000
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
References: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Date: Tue, 13 Aug 2013 13:13:08 +0200
In-Reply-To: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com> (Luis
 R. Rodriguez's message of "Tue, 16 Jul 2013 19:17:49 -0700")
Message-ID: <87mwolc08r.fsf@nemi.mork.no>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH 00/53] wireless-regdb: latest updates
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

"Luis R. Rodriguez" <mcgrof@do-not-panic.com> writes:

> From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
>
> I saw one comment posted about the Indonesia patch, I fixed that.
> I also then ran some sanity tests with a new reglib addition
> wich I recently posted. This helped find two cases which
> required disabling VHT80 for two countries on a specific band.
> One was for US for 5690 and another for TW for 5290. In both cases
> the reason is due to the fact that the only way to use VHT80 is
> to combine two frequency ranges together that are contiguous and
> apply the most restrictive band rules for that range. We don't support
> this yet so just disable VHT80 in both cases. In the US case this
> also seems to be the preferred ruling.

Hello,

Out of personal interest I'm wondering why you excluded Norway and
Iceland from this series?  As EEA [1] members they pretty much follow
all relevant EU regulations, like for example the R&TTE directive.  And
the CEPT documents should also be pretty clear wrt VHT80 support.


[1] http://en.wikipedia.org/wiki/European_Economic_Area



Bjørn

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
