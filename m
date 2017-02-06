Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-io0-f196.google.com ([209.85.223.196])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1capEM-00054t-Gi
 for wireless-regdb@lists.infradead.org; Mon, 06 Feb 2017 19:45:45 +0000
Received: by mail-io0-f196.google.com with SMTP id 101so10563886iom.0 for
 <wireless-regdb@lists.infradead.org>; Mon, 06 Feb 2017 11:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
 bh=LouECJhrN5+JEjcK1sZG14pqvxHPj0xq4Pnr1GlkjKY=;
 b=PxsKFWDwP45UWlhP/H/W+CayWtLTTW9GJNcIGTwY89ue6PBStBdfH14Xq2VN91UFif
 ncAkqiBbKuUY30OJFfAXX4s4vudlGqjbHrwQgkrNao4s/TAjvgnYBE3m9PTpIXCImYUa
 zO7FYpwVPB1uP2rBsSPX5OYwJrCh6A9lrKc3DQ7MnFNMOmVlIygI+U2Suuz3OzozYyvv
 Nl4OwyQjtH0GwIcdCeF1Ugu6pPi6jgwicWAwRg92eWrue+i2folNsMygQVu7N0Cv7tVD
 JYDc32ROZKyFQikvRNeLsyNuirpCjbKonv4VC3jsSds4HO3LUf8H9/yMDYgoKZ9o494/ 1gVA==
MIME-Version: 1.0
In-Reply-To: <20170206193931.GC4004@ubuntu-hedt>
References: <CAPw1JcdLDkW9xEUfh-764kuC643DAJ+qWNf4RxmoyUXbpc-D5w@mail.gmail.com>
 <CAPw1Jcfg3r9ezm2b9cpXfouxzjPY1hDnWYO4J6Gm8yf6xWKweg@mail.gmail.com>
 <20170206193931.GC4004@ubuntu-hedt>
From: cory novak <cory.novak@gmail.com>
Date: Mon, 6 Feb 2017 11:44:21 -0800
Message-ID: <CAPw1Jcc1X+K7nr1Om=+uQZ7M0H1pfoFbX4H65sMN0wLgmUnfFA@mail.gmail.com>
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Feb 6, 2017 at 11:39 AM, Seth Forshee
<seth.forshee@canonical.com> wrote:
> On Mon, Feb 06, 2017 at 11:12:45AM -0800, cory novak wrote:
>> (sorry if this is a duplicate, got a 'we don't accept html mails' error back)
>> ---------- Forwarded message ----------
>> From: cory novak <cory.novak@gmail.com>
>> Date: Mon, Feb 6, 2017 at 11:07 AM
>> Subject: possible mismatch Canadian regulatory info
>> To: wireless-regdb@lists.infradead.org
>>
>>
>> I really tried to use alternate mediums before bothering this list
>> with info that appears to me to be mismatched, but, could easily
>> simply be a result of my lack of knowledge.  Here's my info:
>>
>>
>> Canada values from this source:
>> http://git.kernel.org/cgit/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt?id=HEAD
>>
>> For Canada (5170 - 5250 is where I'm focusing):
>>
>> country CA: DFS-FCC
>> (2402 - 2472 @ 40), (30)
>> (5170 - 5250 @ 80), (17), AUTO-BW
>> (5250 - 5330 @ 80), (24), DFS, AUTO-BW
>> (5490 - 5600 @ 80), (24), DFS
>> (5650 - 5730 @ 80), (24), DFS
>> (5735 - 5835 @ 80), (30)
>>
>> *SEEM* to differ to my completely amateur eye vs industry canada
>> section 6.2 here:
>> http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6.2
>>
>> This is the applicable text for that band:
>>
>> "The maximum e.i.r.p. shall not exceed 200 mW or 10 + 10 log10B, dBm,
>> whichever power is less. B is the 99% emission bandwidth in megahertz.
>> The e.i.r.p. spectral density shall not exceed 10 dBm in any 1.0 MHz
>> band."
>>
>> An easier source to parse for the IC data :
>> http://www.semfionetworks.com/blog/industry-canada-new-5ghz-band-regulations
>>
>> This is the output from my Archer C2600:    * 5180 MHz [36] (17.0 dBm)
>>                         * 5200 MHz [40] (17.0 dBm)
>>                         * 5220 MHz [44] (17.0 dBm)
>>                         * 5240 MHz [48] (17.0 dBm)
>>
>>
>> It appears that the 5170-5250 band is way under spec at 17dbm instead of 23dbm.
>
> It looks to me like you are correct. Would you like to send a patch? Or
> if you aren't familiar with patching the regulatory db I can generate
> one.
>
> Thanks,
> Seth
>

Hi Seth

Just a dumb user here, I'd appreciate it if you'd go ahead.
thanks :)

Cory

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

