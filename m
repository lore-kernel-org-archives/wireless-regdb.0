Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mms2.broadcom.com ([216.31.210.18])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuoCH-00076I-Iy
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 18:24:03 +0000
Message-ID: <51D5BD9D.5020604@broadcom.com>
Date: Thu, 4 Jul 2013 20:23:25 +0200
From: "Arend van Spriel" <arend@broadcom.com>
MIME-Version: 1.0
References: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
 <1372899889-19183-43-git-send-email-mcgrof@do-not-panic.com>
In-Reply-To: <1372899889-19183-43-git-send-email-mcgrof@do-not-panic.com>
Subject: Re: [wireless-regdb] [RFC 42/53] wireless-regdb: ID,
 Indonesia - enable 5 GHz and VHT80
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, linville@tuxdriver.com
List-ID: <wireless-regdb@lists.infradead.org>

On 07/04/2013 03:04 AM, Luis R. Rodriguez wrote:
> From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
>
> Pursuant to:
>
> http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf,
>
> provide a 5GHz rule for Indonesian regulatory domain. QCA has
> also verified VHT80 can be enabled. Patch originally posted by
> Paul Stewart <pstew@chromium.org>, I just modified to enable 80 MHz
> bandwidth.

Hi Luis,

Is it just me or did you make a typo. Should '@ 20' be '@ 80' ?

Gr. AvS

> Signed-off-by: Luis R. Rodriguez <mcgrof@do-not-panic.com>
> ---
>   db.txt |    2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/db.txt b/db.txt
> index 0ebb934..a101b1e 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -380,7 +380,9 @@ country HU: DFS-ETSI
>   	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR
>
>   country ID:
> +	# ref: http://www.postel.go.id/content/ID/regulasi/standardisasi/kepdir/bwa%205,8%20ghz.pdf
>   	(2402 - 2482 @ 40), (N/A, 20)
> +	(5735 - 5815 @ 20), (N/A, 20)
>
>   country IE: DFS-ETSI
>   	(2402 - 2482 @ 40), (N/A, 20)
>



_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

