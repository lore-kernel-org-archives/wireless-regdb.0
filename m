Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-ob0-f178.google.com ([209.85.214.178])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZHBqL-00014q-L1
 for wireless-regdb@lists.infradead.org; Mon, 20 Jul 2015 14:14:58 +0000
Received: by obre1 with SMTP id e1so102373815obr.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 20 Jul 2015 07:14:35 -0700 (PDT)
Date: Mon, 20 Jul 2015 09:13:24 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150720141324.GA41548@ubuntu-hedt>
References: <1436202593-12701-1-git-send-email-wzhong@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436202593-12701-1-git-send-email-wzhong@google.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: update CA rules for
	5600 - 5650 mHz
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
To: Wei Zhong <wzhong@google.com>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Jul 06, 2015 at 10:09:53AM -0700, Wei Zhong wrote:
> Related regulation:
> http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2.3
> 
> Frequency Bands 5470-5600 MHz and 5650-5725 MHz
> Until further notice, devices subject to this section [i.e. Wifi device
> supporting 5 GHz bands] shall not be capable of transmitting in the band
> 5600-5650 MHz. This restriction is for the protection of Environment
> Canada’s weather radars operating in this band.
> 
> Signed-off-by: Wei Zhong <wzhong@google.com>

Applied. I went ahead and bumped the 5490-5590 MHz range back up to 5600
MHz as per the subsequent discussion on the first patch. Thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
