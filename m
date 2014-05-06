Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ve0-f176.google.com ([209.85.128.176])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WhZqY-0001zI-EO
 for wireless-regdb@lists.infradead.org; Tue, 06 May 2014 07:31:27 +0000
Received: by mail-ve0-f176.google.com with SMTP id jz11so6425774veb.35 for
 <wireless-regdb@lists.infradead.org>; Tue, 06 May 2014 00:31:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5367850A.7060600@gmail.com>
References: <5367850A.7060600@gmail.com>
Date: Tue, 6 May 2014 00:31:01 -0700
Message-ID: <CALf=PEYzpx_EcqMEGRTHYkmR-92qEzKL2jDM0tRPEkdcpuAz9g@mail.gmail.com>
From: Daiwei Li <daiweili@suitabletech.com>
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
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

Hi Xose,

Thanks for correcting my URL. I remember getting it from this page:
http://wireless.kernel.org/en/developers/Regulatory/wireless-regdb
although the links there are now the same as what you sent. I
downloaded the latest release:
https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2013.11.27.tar.gz
and am still seeing the same frequencies for country code KR:

daiweili@jfl: ~/wireless-regdb-2013.11.27 $ regdbdump regulatory.bin |
less | grep KR  -A 10
country KR:
(2402.000 - 2482.000 @ 20.000), (N/A, 20.00)
(2402.000 - 2482.000 @ 40.000), (N/A, 20.00)
(5170.000 - 5250.000 @ 80.000), (N/A, 20.00)
(5250.000 - 5330.000 @ 80.000), (N/A, 20.00), DFS
(5490.000 - 5710.000 @ 80.000), (N/A, 30.00), DFS
(5735.000 - 5815.000 @ 80.000), (N/A, 30.00)

country KW:
(2402.000 - 2482.000 @ 40.000), (N/A, 20.00)
(5170.000 - 5250.000 @ 80.000), (N/A, 20.00)

Should I submit a patch for review, or can I expect someone from this
mailing list to validate my finding?

Thanks,
Daiwei

On Mon, May 5, 2014 at 5:33 AM, Xose Vazquez Perez
<xose.vazquez@gmail.com> wrote:
> Daiwei Li wrote:
>
>> I've checked the latest database from
>> http://wireless.kernel.org/download/wireless-regdb/regulatory.bins/
>> and it appears to be the same.
>
> That URL is deprecated.
> git tree at http://git.kernel.org/cgit/linux/kernel/git/linville/wireless-regdb.git
> releases: http://www.kernel.org/pub/software/network/wireless-regdb/

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

