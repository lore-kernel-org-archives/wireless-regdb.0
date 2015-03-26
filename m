Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f54.google.com ([209.85.218.54])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YbDPu-0003vc-H1
 for wireless-regdb@lists.infradead.org; Thu, 26 Mar 2015 19:26:11 +0000
Received: by oicf142 with SMTP id f142so48977415oic.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 26 Mar 2015 12:25:48 -0700 (PDT)
Date: Thu, 26 Mar 2015 14:25:32 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150326192532.GB61113@ubuntu-hedt>
References: <773DB8A82AB6A046AE0195C68612A319019FF13E@sbs2003.acksys.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <773DB8A82AB6A046AE0195C68612A319019FF13E@sbs2003.acksys.local>
Subject: Re: [wireless-regdb] CAC time syntax in regdb.txt
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
To: Jean-Pierre TOSONI <jp.tosoni@acksys.fr>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Mar 26, 2015 at 06:19:02PM +0100, Jean-Pierre TOSONI wrote:
> Hi list,
> 
> I saw that the library in crda was updated to handle the CAC time.
> AFAICT the format is
>       (freq - freq @ bw), (eirp [mW]), [(CACtime)] [flags...]
> 
> but the conversion of the database from text format to bin format is
> still using a python script that crashes with this format.
> I used the
> https://git.kernel.org/cgit/linux/kernel/git/sforshee/wireless-regdb.git
> repo.
> 
> Is there an updated python script out there? Or a replacement tool? Or
> am I missing a something?

CRDA was updated to understand db.txt files with DFS CAC times, but the
binary format doesn't include them. The best that could be done then is
to make dbparse.py ignore CAC times. But the only purpose for the python
scripts is to convert wireless-regdb's db.txt to binary format, and it
would be a bit misleading to include CAC times in db.txt if they can't
be included in regulatory.bin. So I don't really see much of a point in
updating dbparse.py until the binary format supports CAC times.

Luis - Any thoughts? Are there plans to add DFS CAC times to the binary
format?

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

