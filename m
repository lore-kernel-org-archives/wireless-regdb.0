Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-x229.google.com ([2607:f8b0:4001:c06::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpKwr-0001bc-T5
 for wireless-regdb@lists.infradead.org; Thu, 22 Oct 2015 18:50:50 +0000
Received: by ioll68 with SMTP id l68so101933325iol.3 for
 <wireless-regdb@lists.infradead.org>; Thu, 22 Oct 2015 11:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical_com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=sHPW/ZL8ci1PIZQjWvUL77OGbJyDZbqwNf4dCx2iBks=;
 b=AysHgTN7uUt1Qhs7RMpLkWXLDdbbfRbVHAHnRMbdxrNbDcBDjBBd1sLdKoaccvf+B7
 EY8TIsbo83bTinDneU1RFi1aIymsZg8gHk+Tx3teK9g3fa20yRRDZjz+BX+oaSvzM82l
 TAsmsdaICo/i4Zip5IJMtcWTNigShn1nlYAXPzkL+LeeHhEIORDxFnOvulZlAAMwOB8Y
 VqEOlMsnJblYWK9M0GaR3egWBipNKplVCUvq2htQe72Fywq9Srq9DeI7LE2dretR0SWN
 zNNWG16ThFCt03ZwufmepyJO7wz2DHBZGSFZ3dAV4VnPFl5Q66HKmbaNyi0N2e8SOLof
 Boxg==
Date: Thu, 22 Oct 2015 13:50:06 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20151022185006.GC116932@ubuntu-hedt>
References: <20151022152316.GA6944@ubuntu-xps13> <562915D0.1050506@gmail.com>
 <20151022181104.GB116932@ubuntu-hedt> <56292BE6.80908@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56292BE6.80908@gmail.com>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2015-10-22
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
To: Rick Farina <sidhayn@gmail.com>
Cc: wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Oct 22, 2015 at 02:33:10PM -0400, Rick Farina wrote:
> On 10/22/2015 02:11 PM, Seth Forshee wrote:
> > On Thu, Oct 22, 2015 at 12:58:56PM -0400, Rick Farina wrote:
> >> For automated testing, is there a way to test read the database to make
> >> sure the key works and the db isn't corrupt? I read the docs but I don't
> >> see anything like this.
> > 
> > I always sanity check that using regdbdump from CRDA.
> 
> Thanks.  Unfortunately the format doesn't at all match db.txt, and
> regdbdump exits 0 for every file I run it on.  Do you think it might be
> worth fixing regdbdump to exit 1 if the file parsed isn't a regdb, as
> well as exit 1 on error?

+Cc Luis Rodriguez, he maintains CRDA.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

