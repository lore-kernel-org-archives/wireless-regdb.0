Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x231.google.com ([2607:f8b0:400e:c02::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6r0d-0003OA-VP
 for wireless-regdb@lists.infradead.org; Sat, 25 Jan 2014 00:22:04 +0000
Received: by mail-pd0-f177.google.com with SMTP id x10so3689559pdj.36 for
 <wireless-regdb@lists.infradead.org>; Fri, 24 Jan 2014 16:21:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=XPUGpT/NhRHdtBiCCxbFtHRyv2rYvNP6w1r059cmuwA=;
 b=UdzE8gmjPzmpnnUBRqINndCEth3BZ2rwdY49N0ub4O7yPmRkNWPISx9XFZL6FnyPzH
 /URJ26v4yK6OfYHC7q59eS0L4UPo2bfPNn3Gr4j3uvSW8xOWJDVSzoyvTRY/wjynTNe3
 UgZOPAynTeoEiOyz9rqvDnjZBgALl9ab14Q6lcIF9hJZmgWtOS7aHZELk9d/ULDGA7ur
 GBAq4HyuBnc1g3Nq7LyZjgu2Eow68nurqEe780oXnE2AlIqnV60GYAtU6zYt0ajXvoZb
 jRuu2+0ml+A0XBwAtgn+OKeGDtccqHYKnGOlfLEOq+CP6PNDf4Ffeormv3nJFLyl3rpp yA0Q==
Date: Fri, 24 Jan 2014 16:21:36 -0800
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Message-ID: <20140125002134.GC28512@garbanzo.do-not-panic.com>
References: <1389801162-14488-1-git-send-email-ilan.peer@intel.com>
 <1389801162-14488-7-git-send-email-ilan.peer@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1389801162-14488-7-git-send-email-ilan.peer@intel.com>
Subject: Re: [wireless-regdb] [PATCH v2 6/6] mac80211: Enable initiating
 radiation on indoor channels
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
To: Ilan Peer <ilan.peer@intel.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Jan 15, 2014 at 05:52:42PM +0200, Ilan Peer wrote:
> +		if (!regulatory_ir_allowed(req->channels[0]) ||

Please keep in mind that the feature flag on the wiphy would
be used in your regulatory_ir_allowed() routine.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

