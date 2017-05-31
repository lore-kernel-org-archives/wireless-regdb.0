Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=ULNq0NcoFMIXjZn9emvxk93NVEO18IXiXAvbFGefLys=;
 b=MrA5xBmfkZIF7D
 YJcWGgmgZphefgkptezUTLUs+MmoHTCK5xewttdDzf8E7sLIwfkjbVmnp27u86OKZPC6Tdhk6H3UE
 IS/jBURHcjy8H3rq2LgloPiNwGuaMIlcT6pkurTdCEoGV621uaG+nKXYoX7iXnLn4yo6AD3U8A+dq
 HFaKpUBkdSAeB4vSn+69sci0hzXfFuTqB/kpzAGytmmQBOut0ee+XdJKLyJ0YmAvhUIjIAfAXq7q/
 eK9l/UNpx18X3vEEPwAxvofpR/fSqhSuriHAxbAXkawCRQKs1IvQQ91bocVRD3RjPY9XSNP9rkeFQ
 rb0Zt3wR3E+gjCd77zZQ==;
Received: from mail-it0-x235.google.com ([2607:f8b0:4001:c0b::235])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dG2Ng-0003fV-Dn
 for wireless-regdb@lists.infradead.org; Wed, 31 May 2017 12:05:43 +0000
Received: by mail-it0-x235.google.com with SMTP id r63so9963771itc.1 for
 <wireless-regdb@lists.infradead.org>; Wed, 31 May 2017 05:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LFsMIQJ72PQnEGQtYMBbH/RnISfqwBIBxsKqI73Q9t4=;
 b=ejEbhLAnsNGtziNNWAmkLHdLX/5wIMRZfT256UYPB7HyccjEwVIApgtj31FHKJqeNj
 NO/NlJCBcQO0GPwK8nAkX6VKSXuydMCUlUkh6gc41SXe6gnjhe1Zbgs6smra+8bUff7t
 huNgB/yZigshQTB2cAHctjyaw/PyGU2LYzLNroUCNKrS6jRm0TrJLKmIZSnyqMUcmWXW
 FV633JldzQGFkNGwI0paqfKPD8GpvWNOM7A4+jCATK52YKAbMslvs/CtijLz0wmAGSPd
 vcc5Z9y03cNNTgU+2L0SACjEE0EzQf48uPq+9N2XqdxK3D8vkjEvaHtrDDcn7oqcPwDQ
 2tnA==
Date: Wed, 31 May 2017 07:05:16 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170531120516.kry537c6al2fwuxl@ubuntu-xps13>
References: <98d8dfe4-a683-d6d7-229f-bce7accec556@hrt.email>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98d8dfe4-a683-d6d7-229f-bce7accec556@hrt.email>
Subject: Re: [wireless-regdb] Regulatory customization
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
To: Ivan Golob <ig@hrt.email>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, May 31, 2017 at 10:30:01AM +0200, Ivan Golob wrote:
> Hello to everybody,
> 
> just a question about the "regulatory.bin" customization.
> 
> I've recompiled the "regulatory.bin" and copied it on my system, together
> with the new public key. It seems to work well, but I'm wondering if I have
> to recompile also the "crda". As far as I understand, with the "crda"
> recompilation, I can include the new public key in the binary, but I don't
> think this is necessary, right? (I'm using Ubuntu 14.04).

Correct. It's not necessary to rebuild crda as it will use a regdb
signed with any of the keys in the crda pubkeys directory, which on
Ubuntu is /lib/crda/pubkeys.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

