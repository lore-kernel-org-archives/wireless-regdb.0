Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VbdbW-00087f-Nm
 for wireless-regdb@lists.infradead.org; Wed, 30 Oct 2013 21:47:07 +0000
Received: by mail-la0-f53.google.com with SMTP id eo20so1591573lab.26 for
 <wireless-regdb@lists.infradead.org>; Wed, 30 Oct 2013 14:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=+3HaT1T2G4ZqWMaEBKAJBGEQKXP2HVoxnjJGZJZ2wDk=;
 b=mlk43iOiIEThwMkex29oSdbVc3n5R1zt5kE/kNDYWTHDimJk1spM1zCH7hyLT4WWjz
 agKNHE4P//6D8ol1PfpdDkhArUzcRWz4+E1CmdqmDJt1z2jiaoFauALLfnwvpsaJtiAK
 yUXivY3epGXiU1AjfMCj5c6M6exgXyHalyW8B7bc/NQ9CK2sHqz7PFSIk+l1AYNLaKCE
 xJjegC0GNO/9iwladxD+xSJkg2Gv1Z69ENXW6y2hjUwvsBbXCZWjf+N+6lfLqizkiP+Y
 yOYXvavO811ZgRHApqx/+COqQiT2ODeveIWWJDYd5pN+cMNFr8CiB3OdnRFWFAY7raYQ ssCg==
MIME-Version: 1.0
In-Reply-To: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
References: <1383169509-22619-1-git-send-email-mcgrof@do-not-panic.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed, 30 Oct 2013 22:46:23 +0100
Message-ID: <CAB=NE6W7xpp_zr7a_Dtkbiqe9fo5=Si_GjkAr1wypSPgng64rw@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH 0/7] wireless-regdb: DFS regions and
	optimizations
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
To: "John W. Linville" <linville@tuxdriver.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, linux-wireless <linux-wireless@vger.kernel.org>, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Oct 30, 2013 at 10:45 PM, Luis R. Rodriguez
<mcgrof@do-not-panic.com> wrote:
> This patch series associates a slew of countries
> to DFS regions and then provides updates to 4
> countries based on the new CRDA optimizer. The
> optimizations have no functional changes other
> than reducing the size of the regulatory domain
> data strucutre that would be used to send to
> the kernel.

I should note that this depends on the removal of antenna gain patch.

  Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

