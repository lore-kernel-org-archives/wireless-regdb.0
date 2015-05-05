Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-qk0-f173.google.com ([209.85.220.173])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ypk6O-0004jN-OS
 for wireless-regdb@lists.infradead.org; Tue, 05 May 2015 21:10:06 +0000
Received: by qkgx75 with SMTP id x75so115728475qkg.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 05 May 2015 14:09:42 -0700 (PDT)
Date: Tue, 5 May 2015 16:09:24 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150505210924.GB109672@ubuntu-hedt>
References: <20150505113216.90f7fdbceca7565206599b83@ubnt.com>
 <20150505084821.GA26349@jouni.qca.qualcomm.com>
 <87d22f8f4d.fsf@nemi.mork.no>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d22f8f4d.fsf@nemi.mork.no>
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
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: =?utf-8?B?QmrDuHJu?= Mork <bjorn@mork.no>, Dmitry Ivanov <dmitrijs.ivanovs@ubnt.com>
Cc: wireless-regdb@lists.infradead.org, Peter Gent <Peter.Gent@mbie.govt.nz>, Jouni Malinen <jouni@qca.qualcomm.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 05, 2015 at 12:58:58PM +0200, Bjørn Mork wrote:
> Jouni Malinen <jouni@qca.qualcomm.com> writes:
> > On Tue, May 05, 2015 at 11:32:16AM +0300, Dmitry Ivanov wrote:
> >> Currently, DFS region for Australia is not specified. This prevents starting AP with AU country code on DFS-affected channel in 5 GHz band with latest cfg80211 and hostapd because there is an explicit check for such condition.
> >> 
> >> This patch specifies DFS region for Australia as DFS-ETSI. Alternatively, DFS-FCC can be used.
> >
> > I would have used DFS-FCC here unless you have a clear indication of
> > DFS-ETSI being closer to requirements. In addition, there should be a
> > Signed-off-by: tag in the commit log as described in the CONTRIBUTING
> > file.
> 
> From what I can gather from
> http://www.comlaw.gov.au/Details/F2014L01253
> the details are hidden in the standard "AS/NZS 4268:2012". The scope
> here:
>   http://shop.standards.co.nz/catalog/4268:2012%28AS|NZS%29/scope?
> shows the existence of an appendix "B" titled
> 
>  "DYNAMIC FREQUENCY SELECTION (DFS) AND TRANSMIT POWER CONTROL (TPC)
>   REQUIREMENTS FOR RADIO LOCAL AREA NETWORK (RLAN) TRANSMITTERS
>   OPERATING IN 5250 TO 5350 MHz OR 5470 TO 5725 MHz"
> 
> But I'm afraid you'll have to buy the standard to get the full details...
> 
> Given hysterical raisins, and the general tendency to reference ETSI
> standards and ERC decisions, I'd say that DFS-ETSI is more likely.  Why
> would they use FCC rules?
> 
> But it should probably be kept aligned with the NZ entry, which
> currently is DFS-FCC.  Don't know the source of that, though.  Could
> very well be wrong...  Ref the "EN 301 893 V1.7.1" alternative given
> here:  https://gazette.govt.nz/notice/id/2015-go694

That's the most official-looking (free) source of information I could
trun up as well.

Dmitry, you site AS/NZS 4268 as your source - do you have access to
this, and can you confirm that the requirements are closest to DFS-ETSI?
It would be great if someone else with access to the document could ack
this as well, since at first blush this appears to be in contradiction
to Peter's email.

I agree that it doesn't seem to make any sense for Australia and New
Zealand to be different here. So if Australia is specified to use
DFS-ETSI I think New Zealand should be changed to use it as well.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
