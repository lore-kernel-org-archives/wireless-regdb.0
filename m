Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-we0-x22b.google.com ([2a00:1450:400c:c03::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VcFKM-00015h-1d
 for wireless-regdb@lists.infradead.org; Fri, 01 Nov 2013 14:03:55 +0000
Received: by mail-we0-f171.google.com with SMTP id t60so3977726wes.16 for
 <wireless-regdb@lists.infradead.org>; Fri, 01 Nov 2013 07:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id;
 bh=4ESH1RhY1x8I/RNaJM0TVMsRM/5KAnNim0FcYdI5EIg=;
 b=YlVxqcSJc4xRR+61haWpmZRv+nDWh/le9DoatvIJ/5x0KFmKbQsIPnScmmWEDGPhVs
 ukiZ/noM9rYdUuhJ+WViWGAf7UOivByjagvdjqaYpEBiWdxH7OJYDDUfF+CPhoGOeZyW
 4m5kqdY/ULMYdkVxLFkXW1lmVKWUPdd2Pc4WyCMWDIs9Yemku2IjPOB01LZYSb3GIZoM
 qzchcRl0OzgZ6JPXX+iiJ9SuGEMqkAnBBOiHdEuovLf9tKTPVI6ksWjoIRqC8hPLVEuH
 QeDgrifsnItDob60L69RXhLhLWY7Rov9gY7Y1GYSp6JVAwLPq7lMS5iIHJ2WqM7LD3YI kUCQ==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Fri,  1 Nov 2013 15:02:55 +0100
Message-Id: <1383314598-21240-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 00/23] wireless-regdb: general rules
 updates
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linville@tuxdriver.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

This is my third series, it contains either just changes for
the 5 GHz band or changes to both the 2.4 GHz and 5 GHz band.
This will consist of removal of some frequency ranges so
special attention should be put to this series.

Luis R. Rodriguez (23):
  wireless-regdb: update BN's 5 GHz rules
  wireless-regdb: update CA's 5 GHz rules
  wireless-regdb: update KE's 5 GHz rules
  wireless-regdb: update KP's 5 GHz rules
  wireless-regdb: update MC's 5 GHz rules
  wireless-regdb: update MA's 5 GHz rules
  wireless-regdb: update NP's 5 GHz rules
  wireless-regdb: update OM's 5 GHz rules
  wireless-regdb: update PG's 5 GHz rules
  wireless-regdb: update RU's 5 GHz rules
  wireless-regdb: update RW's 5 GHz rules
  wireless-regdb: update SA's 5 GHz rules
  wireless-regdb: update TT's 5 GHz rules
  wireless-regdb: update ZA's 5 GHz rules
  wireless-regdb: update BG's regulatory rules
  wireless-regdb: update CO's regulatory rules
  wireless-regdb: update GE's regulatory rules
  wireless-regdb: update PR's regulatory rules
  wireless-regdb: update KR's regulatory rules
  wireless-regdb: update MX's regulatory rules
  wireless-regdb: update PA's regulatory rules
  wireless-regdb: update TW's regulatory rules
  wireless-regdb: update US'  regulatory rules

 db.txt | 133 ++++++++++++++++++++++++++++++++++-------------------------------
 1 file changed, 70 insertions(+), 63 deletions(-)

-- 
1.8.4.rc3


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

