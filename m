Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-it0-f46.google.com ([209.85.214.46])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cap9h-00021B-AP
 for wireless-regdb@lists.infradead.org; Mon, 06 Feb 2017 19:40:55 +0000
Received: by mail-it0-f46.google.com with SMTP id 203so61998640ith.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 06 Feb 2017 11:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DQbkhV5FmeQe6qm3wHk3Q028SOXhWIlqEd3COzrtYuU=;
 b=lNb2fpt+s9x5BWsJueftTDBaHLMQrNDUhnGCgYUqg1ccC9tKtUaBoMS1rBoL1y69BL
 yU71f88sbSNYJLss/4wtrVJGUDlPFUlliHPHT8K7AKc59p0muxzH+iWuNWWNAZxEqZfY
 GGj2f6L+7mttUu6wQIgY95U+Ae651OmD/Qd6VzV/1msml/SS+jufhAru2F5svqvnS2tH
 SXDv+n6kcjVQfiYGjBqsoIRNoq9TxdAexbmnuKaueVzvRb1sV5fvWLq2TPgaLXeZo934
 0f9T7LbXED8cqSPu2qfTFndtZyWhAK+CJG89owAbHJ3KWV3IxdRtjq1nZUw2Gc7GhyXi
 aZNg==
Date: Mon, 6 Feb 2017 13:39:31 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170206193931.GC4004@ubuntu-hedt>
References: <CAPw1JcdLDkW9xEUfh-764kuC643DAJ+qWNf4RxmoyUXbpc-D5w@mail.gmail.com>
 <CAPw1Jcfg3r9ezm2b9cpXfouxzjPY1hDnWYO4J6Gm8yf6xWKweg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPw1Jcfg3r9ezm2b9cpXfouxzjPY1hDnWYO4J6Gm8yf6xWKweg@mail.gmail.com>
Subject: Re: [wireless-regdb] Fwd: possible mismatch Canadian regulatory
 info
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
To: cory novak <cory.novak@gmail.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Feb 06, 2017 at 11:12:45AM -0800, cory novak wrote:
> (sorry if this is a duplicate, got a 'we don't accept html mails' error back)
> ---------- Forwarded message ----------
> From: cory novak <cory.novak@gmail.com>
> Date: Mon, Feb 6, 2017 at 11:07 AM
> Subject: possible mismatch Canadian regulatory info
> To: wireless-regdb@lists.infradead.org
> 
> 
> I really tried to use alternate mediums before bothering this list
> with info that appears to me to be mismatched, but, could easily
> simply be a result of my lack of knowledge.  Here's my info:
> 
> 
> Canada values from this source:
> http://git.kernel.org/cgit/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=HEAD
> 
> For Canada (5170 - 5250 is where I'm focusing):
> 
> country CA: DFS-FCC
> (2402 - 2472 @ 40), (30)
> (5170 - 5250 @ 80), (17), AUTO-BW
> (5250 - 5330 @ 80), (24), DFS, AUTO-BW
> (5490 - 5600 @ 80), (24), DFS
> (5650 - 5730 @ 80), (24), DFS
> (5735 - 5835 @ 80), (30)
> 
> *SEEM* to differ to my completely amateur eye vs industry canada
> section 6.2 here:
> http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2
> 
> This is the applicable text for that band:
> 
> "The maximum e.i.r.p. shall not exceed 200 mW or 10 + 10 log10B, dBm,
> whichever power is less. B is the 99% emission bandwidth in megahertz.
> The e.i.r.p. spectral density shall not exceed 10 dBm in any 1.0 MHz
> band."
> 
> An easier source to parse for the IC data :
> http://www.semfionetworks.com/blog/industry-canada-new-5ghz-band-regulations
> 
> This is the output from my Archer C2600:    * 5180 MHz [36] (17.0 dBm)
>                         * 5200 MHz [40] (17.0 dBm)
>                         * 5220 MHz [44] (17.0 dBm)
>                         * 5240 MHz [48] (17.0 dBm)
> 
> 
> It appears that the 5170-5250 band is way under spec at 17dbm instead of 23dbm.

It looks to me like you are correct. Would you like to send a patch? Or
if you aren't familiar with patching the regulatory db I can generate
one.

Thanks,
Seth


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

