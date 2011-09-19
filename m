Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by canuck.infradead.org with esmtps (Exim 4.76 #1
 (Red Hat Linux)) id 1R5edP-0004cU-W6 for
 wireless-regdb@lists.infradead.org; Mon, 19 Sep 2011 14:15:48 +0000
Date: Mon, 19 Sep 2011 10:13:40 -0400
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20110919141340.GB2608@tuxdriver.com>
References: <4E73F3FA.502@iopen.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E73F3FA.502@iopen.net>
Subject: Re: [wireless-regdb] Update regulatory rules for New Zealand (NZ)
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
To: Linux Wireless Stuff for IOPEN <linwir-list@iopen.net>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Sep 17, 2011 at 01:12:26PM +1200, Linux Wireless Stuff for IOPEN wrote:
> From Fedora 14 :
> ==============
> 
> > country NZ:
> >         (2402 - 2482 @ 40), (N/A, 30)
> >         (5170 - 5250 @ 20), (3, 23)
> >         (5250 - 5330 @ 20), (3, 23), DFS
> >         (5735 - 5835 @ 20), (3, 30)
> 
> Updates for 2.4 GHz :
> ===================
> 
>   Frequency range is 2400 to 2483.5 (Ref 1)
>   Maximum EIRP is 36 dBm (4 W)      (Ref 1)
> 
> Updates for 5 GHz :
> =================
> 
>   5150 - 5250  23 dBm (200 mW) indoor only            (Ref 1,3)
>   5250 - 5350  23 dBm (200 mW) indoor/outdoor,DFS+TPC (Ref 1,3)
>   5725 - 5875  36 dBm (  4  W) PtMP/PtP               (Ref 1,3)
>   5725 - 5825  53 dBm (200  W) PtP fixed              (Ref 1,2,3)
> 
>   And possibly this via the Spread Spectrum Device provision
> 
>   5470 - 5725  30 dBm (  1  W) requires DFS+TPC       (Ref 3)
> 
>   Maximum power density is specified for some chunks.
> 
> References :
> ==========
> 1 :
> > http://www.rsm.govt.nz/cms/licensees/types-of-licence/general-user-licences/fixed-radio-link-devices/information-on-the-operation-of-wireless-lan-and-related-systems-in-the-2-ghz-and-5-ghz-bands
> 2 :
> > http://www.rsm.govt.nz/cms/licensees/types-of-licence/general-user-licences/fixed-radio-link-devices
> 3 :
> > http://www.rsm.govt.nz/cms/licensees/types-of-licence/general-user-licences/short-range-devices
> 
> Cheers
> The IOPEN wireless deployers

Thanks for the info.  Any chance you could propose this in the form
of a patch?

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

