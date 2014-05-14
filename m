Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkVu4-0008Kz-2R
 for wireless-regdb@lists.infradead.org; Wed, 14 May 2014 09:55:12 +0000
Received: by mail-wg0-f46.google.com with SMTP id n12so1619291wgh.17 for
 <wireless-regdb@lists.infradead.org>; Wed, 14 May 2014 02:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-type:content-transfer-encoding;
 bh=Emnh5BVmwdbXPKL6NzvbLwiAiGyKWieDFv1ytfBMsXw=;
 b=LTfB08PAzrOYwwdEILzLmrAUJgFqvfsBGYoPrXhz2WZVC2TpJl77IPcgNzWWanE6h3
 CILgA9lP9m0fGW6cTD5Wt/7hUiycuuRjy/PBZ2o4O3LHfOW/ErsKm6MJfziyPRMPP6wM
 XyzVs4x3kPoxL6HxsZAtdgr3FPcJnAjWF1Z1NJUDTONovNfM5CWVzGNXhs048jghvH+r
 KG0IbcIf+WL0pPSbIy6jOlijS9bgvpwhLdfTocDTbfC0ohkV+j13CTzUzLyLFa6z/8JE
 EXsWbewYiBLS5hp7+0BZ5RSVTHTVQ+OolA+t1/uzaZLT/yNct4c/fp0icHzBDeG1XaGx Oemw==
Message-ID: <53733D65.3090908@gmail.com>
Date: Wed, 14 May 2014 11:54:45 +0200
From: Xose Vazquez Perez <xose.vazquez@gmail.com>
MIME-Version: 1.0
References: <5367850A.7060600@gmail.com>
 <CALf=PEYzpx_EcqMEGRTHYkmR-92qEzKL2jDM0tRPEkdcpuAz9g@mail.gmail.com>
In-Reply-To: <CALf=PEYzpx_EcqMEGRTHYkmR-92qEzKL2jDM0tRPEkdcpuAz9g@mail.gmail.com>
Subject: Re: [wireless-regdb] KR Country Code Allowed Frequencies
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
To: Daiwei Li <daiweili@suitabletech.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On 05/06/2014 09:31 AM, Daiwei Li wrote:

> Thanks for correcting my URL. I remember getting it from this page:
> http://wireless.kernel.org/en/developers/Regulatory/wireless-regdb
> although the links there are now the same as what you sent.

Because I changed the urls of that page :-)

> downloaded the latest release:
> https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2013.11.27.tar.gz
> and am still seeing the same frequencies for country code KR:
>
> Should I submit a patch for review, or can I expect someone from this
> mailing list to validate my finding?

You should send a patch against the git tree: http://git.kernel.org/cgit/linux/kernel/git/linville/wireless-regdb.git
And if it were possible, a link to the official documents
in local language and english.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

