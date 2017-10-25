Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
 In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=x9Xd+vlsM129KVOiyKLaODuzC/voOZbKarQ5JqI7ubw=;
 b=iOKoFGHy9KZUl4
 WhZs52cU7nhff9R9u+NiwIgf96POBg0+bao/pQ1zAJTJQ0p16Vw2aQEku9GuZ4/sP4+QXWoZfOBXV
 BNAMq9Y4fs9esSMkmY0UBKu84ecwGdqpDwGLdGXvJb95QYgjstp74J9k2vIIZaLsKPzySE5dZS8v8
 9+1/3BnSrXlSkmBE4t7XesQdiZXihvb2FRiaxVIqW4FAnkFG3HglZ4pKCbQS0ABMU0YGZtrmQlVwx
 Zf2Pf/t2bY4s79rLCBXAGL4cZ6vTSPagJZZ+VaqakkFS6xem5vFrGY+Sp2I5x3d3TLNY4CKgFaXOm
 5L5uOL9epiEI3OUuWIkw==;
Received: from s3.sipsolutions.net ([2a01:4f8:191:72ef::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e7FxD-0000ya-OP
 for wireless-regdb@lists.infradead.org; Wed, 25 Oct 2017 07:18:38 +0000
Message-ID: <1508915874.2421.0.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
Date: Wed, 25 Oct 2017 09:17:54 +0200
In-Reply-To: <20171025044539.17877-1-ryan@mounce.com.au>
References: <20171025044539.17877-1-ryan@mounce.com.au>
Mime-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: convert remaining
 values in mW to equivalent dBm
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
To: Ryan Mounce <ryan@mounce.com.au>, seth.forshee@canonical.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, 2017-10-25 at 15:15 +1030, Ryan Mounce wrote:
> This patch converts the few remaining rules specified in mW to directly
> equivalent rules in dBm, to improve consistency of the regdb.

I don't know if this is the case for all cases here, but IMHO
consistency with the source documents (which are actually listed in
many of the entries you're changing), is more important than
consistency within the file.

johannes

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

