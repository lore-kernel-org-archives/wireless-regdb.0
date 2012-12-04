Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from sabertooth02.qualcomm.com ([65.197.215.38])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfu1R-0001dm-NE
 for wireless-regdb@lists.infradead.org; Tue, 04 Dec 2012 15:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qca.qualcomm.com; i=@qca.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1354631806; x=1386167806;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=nBS9yERzZaaOqKt0n2BthjGCl1gQ2qCRhkBQtWoipZE=;
 b=pjh/CqBU9i9/RdPNdQmS3pXeHS3psfLmKxwnZdBIPoFaqfeT+0KrMNUA
 afojkhcS7NtPG4hbB6qO8aWbhK+zVH33b1V0lwWbLkzHowvtVbPdIjZvb
 VsRJRF70nBCAqy12sGrpF7/IQs4T2YPZ/SOglPQbXldnMr27J8j1ya2j0 c=;
From: "Green, Michael" <green@qca.qualcomm.com>
Date: Tue, 4 Dec 2012 15:02:53 +0000
Message-ID: <237CF5B631AA3446BAC55A2F73815CEB014F2380@NASANEXD02D.na.qualcomm.com>
Content-Language: en-US
MIME-Version: 1.0
Subject: [wireless-regdb] regdb: allow 40 MHz on world roaming channels
 12/13
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
To: Johannes Berg <johannes@sipsolutions.net>
Cc: "mcgrof@gmail.com" <mcgrof@gmail.com>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

To confirm...you mean enable highest HT40 channel  as ch 9/13 (center of the 40MHz channel is 2462MHz) for all countries that have ch. 12 & 13 allowed?
This should apply to STA and AP.

Michael Green
green@qualcomm.com

Qualcomm Atheros, Inc.
781-400-1491 (office)
508-380-4921 (cell)

-----Original Message-----
From: wireless-regdb-bounces@lists.infradead.org [mailto:wireless-regdb-bounces@lists.infradead.org] On Behalf Of Johannes Berg
Sent: Tuesday, December 04, 2012 2:53 PM
To: wireless-regdb@lists.infradead.org
Cc: mcgrof@gmail.com
Subject: Re: [wireless-regdb] [PATCH] regdb: allow 40 MHz on world roaming channels 12/13

On Mon, 2012-11-12 at 10:51 +0100, Johannes Berg wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> When in world roaming mode, allow 40 MHz to be used on channels 12 and 
> 13 so that an AP that is, e.g., using HT40+ on channel 9 (in the UK) 
> can be used.

Ping?
johannes


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

