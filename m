Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=TCEShem9XXAkpUmb0UU1ATBh5B2HJ5nQ47wFKTOwrcA=;
 b=I59ucwbgwqZhwk
 AmhJB8Le0Pt4wlMDG2KJEbr0Irs14D+/o2/9DHMc/LmPdhGUom5B6+j6Z1grWJVnPMK1h0bha2jkJ
 EYoLSqi2fg4IPS9+rzIW/zXmqnMRGiZwsK1UNO67F5zJJky1EuKY5eiFUaW3v8NXu5hHamqYaAG5k
 tWaUgtcNdf0v9gl/7p+QaLIRTlA3v60og6tcLxvUChinycyWCFH8JwdCjOkVfPp1U9bKsJQ640lzg
 tHDidgIefq5U6+Pm3inPYcQLkJezz5nyGbWSwrWLyiABFs895FkIoT8t5JNXOPKwb8r7tf+4zAp5Z
 5FjArU+4KgAG9Z+4E5pw==;
Received: from mail-io0-x22a.google.com ([2607:f8b0:4001:c06::22a])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dkcpy-0000KY-OA
 for wireless-regdb@lists.infradead.org; Wed, 23 Aug 2017 21:05:20 +0000
Received: by mail-io0-x22a.google.com with SMTP id y4so4596317iod.4 for
 <wireless-regdb@lists.infradead.org>; Wed, 23 Aug 2017 14:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YK2nR6uO27iB2qMsofcP+w7yW889meljQz4q5ROv5mw=;
 b=rvpaCHbpWj5qZXCsKZHr66gOHC2QzjdcHZD3MZmA69xDneGMa3X2CJQvtmJPutzEQJ
 4AOvqVcIwuGuLhSfbiQjex9eicc5NMYxKR6eFWefqqk5TUooM/VIWTIr3jfjJub7WgJk
 uRqsFwIF6KIXxoyX/Um4vkR+vb9TPC2ftRejprr6P+zCbqg1QDnOxNfqjjM3eAxQfckt
 8KtqmZicYwXjHAVz8V3WAFwzaIu2G78Tsz6QiBbs5MPVnF0euip1rFHb2zwPbtdoRhgU
 qazj+UpT28R4ENSPh330yrRfIXBr4Db1IuWaJIyIwmXd2Mv3bAdXRWJs8ikEOI5TATiQ
 TBEg==
Date: Wed, 23 Aug 2017 16:04:55 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170823210455.3pxj4pzuuvshtsnn@ubuntu-xps13>
References: <20170808033804.6053-1-wens@csie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170808033804.6053-1-wens@csie.org>
Subject: Re: [wireless-regdb] [PATCH 1/2] wireless-regdb: Update regulatory
 document references for Taiwan (TW)
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
To: Chen-Yu Tsai <wens@csie.org>
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Tue, Aug 08, 2017 at 11:38:03AM +0800, Chen-Yu Tsai wrote:
> Taiwan's Ministry of Transportation and Communications updated its
> frequency allocation rules again on 2017/02/22. The amended articles
> are not related to this database, but the link should be kept up to
> date, as the old one is no longer accessible.
> 
> Taiwan's regulatory body, NCC, published its updated technical
> regulatory standard for low-power radio frequency devices, LP0002.
> The URL has not changed. The new standard opens up more bandwidth
> for 5g U-NII WiFi and 60g WiGig devices. Transmission power for
> 5.25 ~ 5.35 GHz is also increased, but this was already covered
> in commit 9a618d9b5fb2 ("wireless-regdb: Update 5 GHz rules for
> Taiwan (TW) to follow US").
> 
> This patch updates the link and comments for the rules and standards,
> and also adds inline comments referencing the governing section of the
> LP0002 standard for each band.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied both patches, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

