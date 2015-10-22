Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-yk0-x229.google.com ([2607:f8b0:4002:c07::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpJCY-0006Bw-Vy
 for wireless-regdb@lists.infradead.org; Thu, 22 Oct 2015 16:58:55 +0000
Received: by ykdr3 with SMTP id r3so89021837ykd.1 for
 <wireless-regdb@lists.infradead.org>; Thu, 22 Oct 2015 09:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-type:content-transfer-encoding;
 bh=qRDhbmduD4jvjW9aO8UUy1mWMBUwO+yl1qHzjzOabMs=;
 b=ZExmXKLJRVwsBU/WSqdUz5JK8Uac8azPADHiAeM18ca17t7ao/eKW6C6wCMNEDFukf
 U3+jSUuQB4VRDBbcjURs7/eK2Mz8G8YlRLcGN/vhoI+an7nOM53+mY7ZDSrvhcebZ37g
 sICp4nQgHxFyAY5x4KY3TprevNsXic9KSfEFfRiRDP23tjE4gnVtlLeqEPyG5eEI1P/s
 p+E0NxMr3ZvvweZ1It6v7h1bqjqBn92htxsb+WB/m4kEo4haKSv/pL06PTeVkQuK5AWH
 ZYksTzudJYiRB/32/T2kUlmGF2yAWLuvIzwjKzMgqXg/qA5sU5b+8FIzI2ReqHnW3+eg XrfA==
Received: from [192.168.1.250] (pool-72-95-142-247.pitbpa.fios.verizon.net.
 [72.95.142.247]) by smtp.googlemail.com with ESMTPSA id
 y185sm8436887ywc.44.2015.10.22.09.58.32 for
 <wireless-regdb@lists.infradead.org> (version=TLSv1.2
 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128); Thu, 22 Oct 2015 09:58:32
 -0700 (PDT)
References: <20151022152316.GA6944@ubuntu-xps13>
From: Rick Farina <sidhayn@gmail.com>
Message-ID: <562915D0.1050506@gmail.com>
Date: Thu, 22 Oct 2015 12:58:56 -0400
MIME-Version: 1.0
In-Reply-To: <20151022152316.GA6944@ubuntu-xps13>
Subject: Re: [wireless-regdb] [ANN] wireless-regdb: master-2015-10-22
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
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

For automated testing, is there a way to test read the database to make
sure the key works and the db isn't corrupt? I read the docs but I don't
see anything like this.

Thank,
Zero_Chaos

On 10/22/2015 11:23 AM, Seth Forshee wrote:
> A new release of wireless-regdb (master-2015-10-22) is available at:
> 
> https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2015.10.22.tar.gz
> 
> The short log of changes since the 2015-10-13 release is below.
> 
> Thanks,
> Seth
> 
> ---
> 
> Andrej Vlasic (1):
>       wireless-regdb: Update regulatory rules for Croatia (HR)
> 
> Johannes Berg (1):
>       wireless-regdb: fix gHz to GHz
> 
> Jouni Malinen (1):
>       wireless-regdb: Add 160 MHz channel bandwidth for Greenland (GL)
> 
> Seth Forshee (1):
>       wireless-regdb: update regulatory.bin based on preceding changes
> 
> 
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb
> 

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

