Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=6LasqNrEbTBvmVL26xALk8pkgqAhSR/YduyPoXIxy58=;
 b=u9yZ1TS97QiJ0u
 FK59q8rijaZSGVBV7Xqse89KxMVxcwnVX4s3liwl331qFu/cj6KHmYJJ60wgO6cjvmsTZEjd6bJhb
 o3uliAVFzZXwzJV1gejVd7/Hrd/vWZE6m+X40wQEuSQAy7rSo55vSBXyndCzVKOiv1LPHAIz99JX/
 /TBmK3eRP7U8DztieVRkBx4TE4pfFblvc5mIuP9BeGozWHDFC0VzNo7VTGGBEFeyf+BxuEwmqO2sf
 Znsocfs00Sm4JK7r40msEmMTrZ/oULBLCO7YNohlhL46/gsTT4BBmSGVDiVyX0AvN9GUPW/0vcWp8
 fRkFRjYGmKtzzPICAchA==;
Received: from mail-io0-x232.google.com ([2607:f8b0:4001:c06::232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj6WD-00075Z-9R
 for wireless-regdb@lists.infradead.org; Wed, 01 Mar 2017 15:50:23 +0000
Received: by mail-io0-x232.google.com with SMTP id j18so33676656ioe.2 for
 <wireless-regdb@lists.infradead.org>; Wed, 01 Mar 2017 07:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TXQrvOLgq/KvFc41Rb8imtpWep33mfuypGq7EWSnMCI=;
 b=HI58E9RU5ffvi5Z2GTAwnjkCECMzh7FjXEelW5GSU5HIu51CQgF5nziGXYDaX3Dc2N
 VTVNfebpVj422huUO9C3t6QUXu2peKzVFvgE/KfvxDoJEEPLYZdeFBuRrxZ4nJdHuGaI
 3eS6MNSoq0W0L64PqO89Wgj6II++TTsCvW0kMOTTdVVuIu7q4PirT4q8334zEqZV1Xxd
 SmI92il1PsglOVrIg3NF3mhq2aJHEt32R5gjeKT82Hd+pzdOSZNZHQkr6J2GfpJw/C4R
 aVutLhqVY7lnnwfogjnriKjza6X1Gzy+UeHOhhe7dktHrHMil2y0lcQVJ7A20B9trsta
 4g3Q==
Date: Wed, 1 Mar 2017 09:49:56 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20170301154956.GM122517@ubuntu-hedt>
References: <CAPw1Jcc1X+K7nr1Om=+uQZ7M0H1pfoFbX4H65sMN0wLgmUnfFA@mail.gmail.com>
 <1486414234-63497-1-git-send-email-seth.forshee@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1486414234-63497-1-git-send-email-seth.forshee@canonical.com>
Subject: Re: [wireless-regdb] [RFC] wireless-regdb: Update 5 GHz rules for
 Canada
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
Cc: cory novak <cory.novak@gmail.com>
List-ID: <wireless-regdb@lists.infradead.org>

On Mon, Feb 06, 2017 at 02:50:34PM -0600, Seth Forshee wrote:
> Based on the information from [1] the power limit for 5150-5250
> MHz can be increased to 23 dBm. Also update some rules to match
> exact frequency ranges given in that document.
> 
> [1] http://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html
> 
> Signed-off-by: Seth Forshee <seth.forshee@canonical.com>

Applied.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

