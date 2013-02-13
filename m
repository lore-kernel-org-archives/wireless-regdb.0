Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from we-in-x022c.1e100.net ([2a00:1450:400c:c03::22c]
 helo=mail-we0-x22c.google.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5l9z-0002cO-2N
 for wireless-regdb@lists.infradead.org; Wed, 13 Feb 2013 22:50:40 +0000
Received: by mail-we0-f172.google.com with SMTP id x10so1476446wey.3 for
 <wireless-regdb@lists.infradead.org>; Wed, 13 Feb 2013 14:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=x-received:message-id:date:from:user-agent:mime-version:to:subject
 :references:in-reply-to:content-type:content-transfer-encoding;
 bh=WWCAC3MmraApykQPM8vEbmG5FIYFd5OuvjnzNGSX7YA=;
 b=aXbvaG6mdR7aItDKkZxn9EC32A1idATvsxjDxWe1z0HCTab7wgUsfyRKgMI/yt068w
 +IptzYasP206JRUGADsv4pHrsI7SRr+UU7a5CQhRNvnW/T07WsjESMlpWcuvaFzAix0d
 ANcBgox1cb04RJIeLhPp/tnbyxM0GM5NpllvRD0p9LQIxPlFntCEMnvSE0cVjO5Gv6gX
 WH27sO8k6nj3wGbKwzRZ57Eyr05kh3PwK5hTq0BwP0tQAt5UoMGc1OrsdT5L8VRLOEA4
 x+cY8KAgWe47pc9FhOT91/0KHMoCkl6wJ/t7OHoio4XUqNssVKVDge2BScuWcJR7p51t lqmA==
Message-ID: <511C1745.4000502@gmail.com>
Date: Wed, 13 Feb 2013 23:44:21 +0100
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
References: <CAL1G+-HfPJnwvisiE5Vr0ihenwKzL3_QL40DLPP_PsPyv+nveQ@mail.gmail.com>
 <20130206192544.GH2148@tuxdriver.com>
In-Reply-To: <20130206192544.GH2148@tuxdriver.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Serbia (RS) on 2.4 and 5GHz
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
Sender: wireless-regdb-bounces@lists.infradead.org
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org, "John W. Linville" <linville@tuxdriver.com>
List-ID: <wireless-regdb@lists.infradead.org>

On 02/06/2013 08:25 PM, John W. Linville wrote:

> Thank you so much for this timely message!  I apologize for having
> overlooked it so far.
> 
> I don't suppose that you could translate the information you have
> provided into the format used within the regulatory database file?
> Also, could you provide a link to the original regulatory document
> (even if it is in Serbian)?

Serbia is under ETSI/CEPT rules( ECC/DEC/(04)08 ), see summary[1]:

5 GHz current rules are too much liberal and incomplete:

country RS:
	(2400 - 2483.5 @ 40), (N/A, 100 mW)
	(5150 - 5350 @ 40), (N/A, 200 mW), NO-OUTDOOR
	(5470 - 5725 @ 20), (3, 1000 mW), DFS
	# 60 gHz band channels 1-4, ref: Etsi En 302 567
	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR

They should be changed to "standard" ETSI rules:
	(2400 - 2483.5 @ 40), (N/A, 100 mW)
	(5150 - 5250 @ 40), (N/A, 100 mW), NO-OUTDOOR
	(5250 - 5350 @ 40), (N/A, 100 mW), NO-OUTDOOR, DFS
	(5470 - 5725 @ 40), (N/A, 500 mW), DFS
	# 60 gHz band channels 1-4, ref: Etsi En 302 567
	(57240 - 65880 @ 2160), (N/A, 40), NO-OUTDOOR

http://www.erodocdb.dk/doks/implement_doc_adm.aspx?docid=2033
http://www.erodocdb.dk/doks/implement_adm_doc.aspx?ITUID=48&ITUSHORT=RS&ITULONG=Serbia

Contact point for implementation status:
Ms Jelena Surculija <jelena.surculija@mtid.gov.rs>
Dr Milan Jankovic <milan.jankovic@ratel.org.rs>


[1] http://lists.infradead.org/pipermail/wireless-regdb/2012-June/000058.html

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

