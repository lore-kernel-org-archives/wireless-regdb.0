Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=desiato.20200630;
 h=Sender:Content-Transfer-Encoding
 :Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
 Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=NUUnXcT04JIGgeeZLaZ6oMcZmx5xvms6jlr3wxcLkWg=;
 b=a15nWRS+p82qNK
 7zh1IHpnehizN+zN3DMWIlA7KUAwF5OPJHtpA2Z8gjo7C74zZFUqdccnBlwcTl/3mS5LAeKSl5g3X
 90zUKOZRdywb0A5UASzFpDAx++Gyi6DPu00fCZDmt7lJ+8q4KCaMOgEbLlz12L4mMiK2oLQ9fzmi1
 jUPlOCN/u/z3UxcARKR10k4cUWR696VJtyiLWp76RadjHGm59jAjZgJ7kwk8wYpiVVixxwanXoUXY
 70CTXmItF42ZHKVd16baxhNgb4CoFdqKme7pCRz5tevzvE6fcoqj+sbx+shlCqV92SM61OmYgliwC
 FfGqTEbsf9LXoL+ltuvg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMXwn-003QoN-Qf
 for wireless-regdb@lists.infradead.org; Wed, 17 Mar 2021 15:18:59 +0000
Received: from mail-ot1-f70.google.com ([209.85.210.70])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1lMXwm-00078H-1L
 for wireless-regdb@lists.infradead.org; Wed, 17 Mar 2021 15:18:56 +0000
Received: by mail-ot1-f70.google.com with SMTP id 8so886936otj.11 for
 <wireless-regdb@lists.infradead.org>; Wed, 17 Mar 2021 08:18:55 -0700 (PDT)
Date: Wed, 17 Mar 2021 10:18:49 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <YFId2V808BExp/TH@ubuntu-x1>
References: 
	 <20210205180054.1031-1-nicolas.cavallari@green-communications.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210205180054.1031-1-nicolas.cavallari@green-communications.fr>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Do not hardcode
 'sforshee' in the certificate commonName
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
To: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, Feb 05, 2021 at 07:00:54PM +0100, Nicolas Cavallari wrote:
> gen-pubcert.sh hardcodes the 'sforshee' common name when generating the
> certificate.  Make it depend on REGDB_AUTHOR instead, which defaults to
> $(whoami).
> 
> Signed-off-by: Nicolas Cavallari <nicolas.cavallari@green-communications.fr>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

