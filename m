Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vsorx-0003CV-Gc
 for wireless-regdb@lists.infradead.org; Tue, 17 Dec 2013 07:15:06 +0000
Received: by mail-we0-f173.google.com with SMTP id u57so5730384wes.32 for
 <wireless-regdb@lists.infradead.org>; Mon, 16 Dec 2013 23:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-type; bh=tHOirP1ChTFe9bKGpsNss9WBn/uBWI3gz6c1YkCKZMo=;
 b=oD09M24/ycgY/Wt4CFbXkERtNsTqlXBC45Nzen3uJ3NgyVuD+HXuYpdkywUue7ZdM3
 OwZM/oHYgl6NCIFWMv9279UuaykUHKJV0ivkOWtLuou3XL/bpCvfIinLn20/U6zNJD9Y
 kkcj/iBD52rX9PRM7ZGxTlvfiyswJyQLvTBNxB/0wJDQLmJk+Z73OAoNFx1wQbnXrKWg
 fz5axbufRBJbf9c4PqGM7sIDHT4k5kaYiN8VVd7HeWXAb8x70tWJ8/YEu1sfw8ZAT7fN
 odfrBuTJ5kRcowDHHwu57NsYgrMaIM2PoncxvhcVR3KCOEjYw+ugRMWTBQIdKTnCSOgd I7jQ==
MIME-Version: 1.0
In-Reply-To: <CABPxzYJSBagxbz4nd8=Qt_HbG4ecqe=-cbzi0N4JDPCwDE42Mg@mail.gmail.com>
References: 
	 <CABPxzYJSBagxbz4nd8=Qt_HbG4ecqe=-cbzi0N4JDPCwDE42Mg@mail.gmail.com>
From: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Date: Tue, 17 Dec 2013 12:44:22 +0530
Message-ID: <CABPxzYLu+yjkfsi13BXG8sKoySu_CwtN+uSgwwYdiXdEq8sGMw@mail.gmail.com>
Subject: Re: [wireless-regdb] CRDA: Build Fail: Database signature
	verification failed
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
To: John Linville <linville@tuxdriver.com>, Luis Rodriguez <mcgrof@do-not-panic.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Dec 17, 2013 at 12:20 PM, Krishna Chaitanya
<chaitanya.mgit@gmail.com> wrote:
> Hi,
>
> With the latest git source, i am seeing a build failure with the below error.
>
>   LD   crda
>   CC   intersect.o
>   LD   intersect
>   CC   regdbdump.o
>   LD   regdbdump
>   CC   db2rd.o
>   LD   db2rd
>   CC   optimize.o
>   LD   optimize
>   CHK  /usr/lib/crda/regulatory.bin
> Database signature verification failed.
> Invalid or empty regulatory file, note: a binary regulatory file should be used.
> make: *** [verify] Error 234
>
> Is there something wrong with the certificate?
>
Additional info:

# regdbdump /usr/lib/crda/regulatory.bin
Database signature verification failed.
#  ls -l /usr/lib/crda/regulatory.bin
-rw-r--r-- 1 root root 3344 Dec 16 17:34 /usr/lib/crda/regulatory.bin

regualtory.bin copied from wireless-regdb latest git.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

