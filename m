Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-f47.google.com ([209.85.218.47])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YheGb-0007kZ-TG
 for wireless-regdb@lists.infradead.org; Mon, 13 Apr 2015 13:19:10 +0000
Received: by oiko83 with SMTP id o83so3488188oik.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 13 Apr 2015 06:18:47 -0700 (PDT)
Date: Mon, 13 Apr 2015 08:18:46 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20150413131846.GA4743@ubuntu-xps13>
References: <1428499085-142267-1-git-send-email-seth.forshee@canonical.com>
 <004b01d075c3$f240a620$d6c1f260$@acksys.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004b01d075c3$f240a620$d6c1f260$@acksys.fr>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Support db.txt files
 with DFS CAC times
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
To: Jean-Pierre Tosoni <jp.tosoni@acksys.fr>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Apr 13, 2015 at 10:29:23AM +0200, Jean-Pierre Tosoni wrote:
> Hi Seth,
> 
> From my testing the syntax accepted by reglib.c needs a comma after the CAC,
> so you should skip that comma. Below is your patch with two lines added.

Ah, okay, I based it off of what you said in your email, which shows no
comma:

  (freq - freq @ bw), (eirp [mW]), [(CACtime)] [flags...]

I thought it was weird that there was no comma, should have double
checked against CRDA. Thanks for testing and the update, I can't try it
out right this moment but will do so soon.

Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

