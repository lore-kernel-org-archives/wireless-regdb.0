Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from cantor2.suse.de ([195.135.220.15] helo=mx2.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YbEc0-0003YX-Uh
 for wireless-regdb@lists.infradead.org; Thu, 26 Mar 2015 20:42:45 +0000
Date: Thu, 26 Mar 2015 21:42:21 +0100
From: "Luis R. Rodriguez" <mcgrof@suse.com>
Message-ID: <20150326204221.GD5622@wotan.suse.de>
References: <773DB8A82AB6A046AE0195C68612A319019FF13E@sbs2003.acksys.local>
 <20150326192532.GB61113@ubuntu-hedt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150326192532.GB61113@ubuntu-hedt>
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: Jean-Pierre TOSONI <jp.tosoni@acksys.fr>, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Mar 26, 2015 at 02:25:32PM -0500, Seth Forshee wrote:
> On Thu, Mar 26, 2015 at 06:19:02PM +0100, Jean-Pierre TOSONI wrote:
> > Hi list,
> > 
> > I saw that the library in crda was updated to handle the CAC time.
> > AFAICT the format is
> >       (freq - freq @ bw), (eirp [mW]), [(CACtime)] [flags...]
> > 
> > but the conversion of the database from text format to bin format is
> > still using a python script that crashes with this format.
> > I used the
> > https://git.kernel.org/cgit/linux/kernel/git/sforshee/wireless-regdb.git
> > repo.
> > 
> > Is there an updated python script out there? Or a replacement tool? Or
> > am I missing a something?
> 
> CRDA was updated to understand db.txt files with DFS CAC times, but the
> binary format doesn't include them. The best that could be done then is
> to make dbparse.py ignore CAC times. But the only purpose for the python
> scripts is to convert wireless-regdb's db.txt to binary format, and it
> would be a bit misleading to include CAC times in db.txt if they can't
> be included in regulatory.bin. So I don't really see much of a point in
> updating dbparse.py until the binary format supports CAC times.
> 
> Luis - Any thoughts? Are there plans to add DFS CAC times to the binary
> format?

This would require generating two binary files and supporting that.  This was
never done. We could also try to somehow mesh both versions together with one
larger file that has both and try to remain compatible. That's the ideal
solution IMHO.

Instead of sticking to CRDA updates to rely on this for support what we really
need to do is mesh in CRDA support upstream into the kernel since the kernel
now supports the cryptographic needs that CRDA had. I was planning on doing
this during the upcoming Hackweek at SUSE but if anyone else wants to try that
before please feel free.

We should address both of these. In the meantime if folks want CAC support it
seems the internal regdb form supports it. An awk script is used currently
in-kernel to generate the binary file, that awk script is obviously fragile,
its yet-another reason to move away from it and instead have the binary parser
in-kernel as we do within CRDA. The work required to mesh CRDA support into the
kernel is to generalize the cryptographic needs of a file request into
request_file_req(), adding a requirements structure which defines the
requirements for the file, then aliasing request_firmware() to use this API
where the req is NULL, request_file() instead of request_firmware() would be
used by the regulatory core to request the regulatory file, and if
cryptographic support was added that would be passed as a requirement.

Since most of the code for parsing the binary file is already in place in
CRDA that would just need to be tossed into the kernel and kernel'afied.

That's all.

 Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

