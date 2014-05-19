Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from charlotte.tuxdriver.com ([70.61.120.58]
 helo=smtp.tuxdriver.com) by bombadil.infradead.org with esmtps (Exim 4.80.1
 #2 (Red Hat Linux)) id 1WmURl-0001ii-V7 for
 wireless-regdb@lists.infradead.org; Mon, 19 May 2014 20:46:10 +0000
Date: Mon, 19 May 2014 16:36:45 -0400
From: "John W. Linville" <linville@tuxdriver.com>
Message-ID: <20140519203644.GL7650@tuxdriver.com>
References: <5367850A.7060600@gmail.com>
 <CALf=PEYzpx_EcqMEGRTHYkmR-92qEzKL2jDM0tRPEkdcpuAz9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALf=PEYzpx_EcqMEGRTHYkmR-92qEzKL2jDM0tRPEkdcpuAz9g@mail.gmail.com>
Subject: Re: [wireless-regdb] KR Country Code Allowed Frequencies
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
To: Daiwei Li <daiweili@suitabletech.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, Xose Vazquez Perez <xose.vazquez@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, May 06, 2014 at 12:31:01AM -0700, Daiwei Li wrote:
> Hi Xose,
> 
> Thanks for correcting my URL. I remember getting it from this page:
> http://wireless.kernel.org/en/developers/Regulatory/wireless-regdb
> although the links there are now the same as what you sent. I
> downloaded the latest release:
> https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2013.11.27.tar.gz
> and am still seeing the same frequencies for country code KR:
> 
> daiweili@jfl: ~/wireless-regdb-2013.11.27 $ regdbdump regulatory.bin |
> less | grep KR  -A 10
> country KR:
> (2402.000 - 2482.000 @ 20.000), (N/A, 20.00)
> (2402.000 - 2482.000 @ 40.000), (N/A, 20.00)
> (5170.000 - 5250.000 @ 80.000), (N/A, 20.00)
> (5250.000 - 5330.000 @ 80.000), (N/A, 20.00), DFS
> (5490.000 - 5710.000 @ 80.000), (N/A, 30.00), DFS
> (5735.000 - 5815.000 @ 80.000), (N/A, 30.00)
> 
> country KW:
> (2402.000 - 2482.000 @ 40.000), (N/A, 20.00)
> (5170.000 - 5250.000 @ 80.000), (N/A, 20.00)
> 
> Should I submit a patch for review, or can I expect someone from this
> mailing list to validate my finding?

Let's have a patch, and maybe we can validate.  Can you identify your
source of information?

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

