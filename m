Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-yk0-x231.google.com ([2607:f8b0:4002:c07::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpKfn-0007fk-Bu
 for wireless-regdb@lists.infradead.org; Thu, 22 Oct 2015 18:33:11 +0000
Received: by yknn9 with SMTP id n9so91751391ykn.0 for
 <wireless-regdb@lists.infradead.org>; Thu, 22 Oct 2015 11:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-type:content-transfer-encoding;
 bh=/AExfVrZTn6uHg6f6vtxfKIjnbuN1VLgEqFta3wz9lc=;
 b=zTytl2WHBspDUWoFZqDweS4W6WHTrRYyPmmRSQ6GzXhNHGMj5pwcKhg1cbBDrsbbzH
 YbiCdKFiYM7Vbn2CMFFDyYtcJg7cU1aa4m3YzFCf/AwdIE9JZFwNn+sM6kkMVXqh/oLv
 A7fY/9OSM4v5/4mSU7O7yu0us8/l5RFQk33cFZ4AvEHeZk6MntcIyiMPVCXLqRiOgoe+
 xB1QVJbM2De0YmHeSKSY18c2dFr+x6wg1OXu7Glh4A7CtdJuVsFVjJPvzRWDFYjtazrT
 nfZ5B7B6Q99iczYA6cdKzuWB77sjuSVsczTDjNDZ8epClxWp44C1SncsF5a2jIgR6Rhu PE+w==
References: <20151022152316.GA6944@ubuntu-xps13> <562915D0.1050506@gmail.com>
 <20151022181104.GB116932@ubuntu-hedt>
From: Rick Farina <sidhayn@gmail.com>
Message-ID: <56292BE6.80908@gmail.com>
Date: Thu, 22 Oct 2015 14:33:10 -0400
MIME-Version: 1.0
In-Reply-To: <20151022181104.GB116932@ubuntu-hedt>
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On 10/22/2015 02:11 PM, Seth Forshee wrote:
> On Thu, Oct 22, 2015 at 12:58:56PM -0400, Rick Farina wrote:
>> For automated testing, is there a way to test read the database to make
>> sure the key works and the db isn't corrupt? I read the docs but I don't
>> see anything like this.
> 
> I always sanity check that using regdbdump from CRDA.

Thanks.  Unfortunately the format doesn't at all match db.txt, and
regdbdump exits 0 for every file I run it on.  Do you think it might be
worth fixing regdbdump to exit 1 if the file parsed isn't a regdb, as
well as exit 1 on error?

Thanks,
Zero

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

