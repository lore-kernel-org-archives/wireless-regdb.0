Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WmeZH-0008D2-4B
 for wireless-regdb@lists.infradead.org; Tue, 20 May 2014 07:34:36 +0000
Received: by mail-la0-f49.google.com with SMTP id pv20so54421lab.36 for
 <wireless-regdb@lists.infradead.org>; Tue, 20 May 2014 00:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc:content-type;
 bh=jAKVB7GXAACas7hCSrfmduJo1WNdAFSisklBD439dr4=;
 b=xzRp9OwSgjA4ocaTbCUlaT+UOGLc2CxiGcG2HRlovU8Tt6zOt7VnaWijlGlXJtqHFP
 QXck5lm/tIEfc2RcTF01KdpfA8pr2Fthq8DPeebab14vZy/yYmsrIonJxU/Kpim76WUj
 h3F2LOr0PuhUE65ohhBNeCVG6TfDxuVB+O/8oCZhp7D495P0N3ymdtuim3o5kOPSpOTG
 u1WAhUprt59HSBvw10nJsdpA7lYXWgrtzpTVWeVz4a7PuNmJBKM30Q4nsNmBTFr7vBsh
 p6nIrS52ttMGNhPUi+YMiaAGYdDSbupdIw09RB6t6BkhojcCMfz5Ss/ixUns0a4ZqZLI eZLg==
MIME-Version: 1.0
In-Reply-To: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
References: <1399624824-9204-1-git-send-email-janusz.dziedzic@tieto.com>
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 20 May 2014 00:33:51 -0700
Message-ID: <CAB=NE6UuZFDLdA-KW=ohaFwXjj_3wSY84cj3-KPO7HoKREPHOA@mail.gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: add DFS CAC time
	parameter
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
To: Janusz Dziedzic <janusz.dziedzic@tieto.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Fri, May 9, 2014 at 1:40 AM, Janusz Dziedzic
<janusz.dziedzic@tieto.com> wrote:
> Introduce support for setting DFS CAC time
> in milliseconds.
>
> Eg.
> (5250 - 5330 @ AUTO), (20), (60000), DFS
>
> will setup CAC 60 seconds CAC time.

Can you elaborate whether or not this will require a bump on CRDA  and
issuing of two new wireless-regdb files for the different versions on
the commit log?

 Luis

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

