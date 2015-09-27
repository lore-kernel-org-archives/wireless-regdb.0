Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wi0-f175.google.com ([209.85.212.175])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZgHLd-00034V-KG
 for wireless-regdb@lists.infradead.org; Sun, 27 Sep 2015 19:10:58 +0000
Received: by wiclk2 with SMTP id lk2so75524253wic.1 for
 <wireless-regdb@lists.infradead.org>; Sun, 27 Sep 2015 12:10:35 -0700 (PDT)
From: =?utf-8?Q?Karl_M=C3=B6ller?= <karl@excors.net>
Date: Sun, 27 Sep 2015 21:10:30 +0200
Message-Id: <9BEBB87E-EA6D-4219-ADC5-40C1E19DA5DA@excors.net>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2087\))
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for South
	Africa (ZA) on 5GHz
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
To: seth.forshee@canonical.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi

I hope I am doing this the right way (following the Plain English approach and not a git patch…). 
I don’t think the current frequency bands and power limits for ZA are correct. 

My sources are the following documents published this year:

http://www.ellipsis.co.za/wp-content/uploads/2013/10/Guide-to-commonly-used-licence-exempt-frequency-bands-April-2015.pdf

Specifically page 74 of http://www.ellipsis.co.za/wp-content/uploads/2014/12/Radio-Frequency-Spectrum-Regulations-2015.pdf

The bands don’t quite match up and DFS/TPC is (apparently) not required for 5470 - 5725. More importantly, the max transmitted power
seems to be 1W/30dBm e.i.r.p and not 27dBm.  I would submit a complete patch, but I am not sure if the 5725 - 5875 band should be part of it…


Regards
Karl
_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
