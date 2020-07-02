Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=NT7jDJ9yHuX+NCQUVtbOKtcPNOI8fmdXS4AbcULevv0=;
 b=jl5Pk+i3j2ZB5x
 OJaR55RRoGarRr1PYiMhpZqiVKGUZoORjZdC2jv94Mp8ajXJpocZblhHC6XkHQ90YqmVrBlVJR5cQ
 pfHZEBIb4x2lzYcFLhk3jfTH6/BXmVq9EkqcCNIshLLSGAaY2s5YLkRs1h4saiEWWuqO80M/wfLs6
 d+V8buscRMt2YE3nztLYlQB2aYaylgdeHl20Spt6T1kLmNxGMl2wS87eKrCXQQ+v+qjWOg11+11RU
 Q2LNt44IGX9+LeZ0C3uJdXRfHFrAmLbCc4bLPKT91BhqUZCwRLW0loBTtMPZl5d5Rb9dXkRvwUdFe
 HUwJebu4zHkun2YodDcQ==;
Received: from mail1.nippynetworks.com ([91.220.24.129])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jr5EK-0002gw-2o
 for wireless-regdb@lists.infradead.org; Thu, 02 Jul 2020 19:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wildgooses.com;
 s=dkim; t=1593719441;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ka76Ba7LX/kNZZOMIvz3Uze8lwfFYiBWcKWYSVrMX2w=;
 b=ChdaYaWPbX7yAXkYhYYxSQxkzK+rbwulO7X1pkvUr2KWLU2nri+jMW9gRmAttsTybkxD1C
 lEgChbnE0lRvI49kcYLhd7uS1BpDlRVQZxeO8O/R4ARGJsScoveZpcHKwlYX9qRNubA+Tk
 wci5SBMVaBvqSEQ6upuRnIZc+/R5ELY=
From: Ed W <lists@wildgooses.com>
Message-ID: <4d07581c-a3be-a3c6-bf32-7007eb45d541@wildgooses.com>
Date: Thu, 2 Jul 2020 20:50:41 +0100
MIME-Version: 1.0
Content-Language: en-GB
Subject: [wireless-regdb] Correction of wireless-regdb for GB
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi, I think that the wireless regdb for GB domain can be corrected:

According to Ofcom, in 2017 the rules were updated for the 5725-5850Ghz 
range to allow a power output of 200mW (the max power output is much 
higher still for fixed wireless where a £50 licence is purchased)

Reference to the latest Ofcom document is here (IR-2030):

https://www.ofcom.org.uk/__data/assets/pdf_file/0028/84970/ir-2030.pdf


My reading of this is that DFS is currently required and I *assume* also 
the wmm would be the same as the rest of the range. I'm not sure if this 
rule needs an AUTO-BW?

(Note also that Ofcom opened a proposal to remove the DFS requirement on 
this frequency band (and to add new 5Ghz bands). Results of this are due 
later in 2020.)


Therefore I think that the db.txt should say:


|

country GB: DFS-ETSI
...

	# Reference (IR-2030)
	(5725 - 5875 @ 80), (200 mW), DFS, AUTO-BW, wmmrule=ETSI

|

|Could someone appropriate please check this and update upstream.|

|
|

|Thanks|

|Ed W
|

||


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
