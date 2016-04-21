Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x22a.google.com ([2607:f8b0:4003:c06::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1atJhq-0000vK-8k
 for wireless-regdb@lists.infradead.org; Thu, 21 Apr 2016 18:52:03 +0000
Received: by mail-oi0-x22a.google.com with SMTP id p188so109171757oih.2 for
 <wireless-regdb@lists.infradead.org>; Thu, 21 Apr 2016 11:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=pG7oOBdO5UoZ17HMfsiodeZsw576s0viXY98RGyYU6k=;
 b=n5kJcpExhXx9ftGVv1x00G+3H1O8s59Wj8M6srPntCG0THJpG5+hdAi8V0WX0EKNug
 7xiozIzRk1ixhkbRI9avwBOE8ooTYMEc9aNcPYOf+CzkOUPIh1NsmnU9Iqc8ERyFcTAM
 hc8oFUJx68JFgmOvi6EiSMWNicuOkHUrQApOwXvZ2pbVwVz5M/syzALr/03pEBGmYSrm
 uA1r7I2zmQy14pNU5/99c1rmzHio6y9l9cyem5CaMEPcBPO6ZzAYYVuoVcZZBxhQ6Gvq
 a5sEhhpiqNIxidyoIw1qQ4baHKYcql3FXDYjZ3uQEz8cnPFlJTgFvZxozsYH52bkr7wJ
 gTFg==
Date: Thu, 21 Apr 2016 13:51:34 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160421185134.GD95003@ubuntu-hedt>
References: <1958820.LBuzOElZFT@perisens15>
 <20160421131938.GA95003@ubuntu-hedt>
 <2919568.ssjlN6KUVX@perisens15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2919568.ssjlN6KUVX@perisens15>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
	Germany (DE) on 5GHz
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: Maximilian Engelhardt <engelhardt@perisens.de>
Cc: linux-wireless@vger.kernel.org, maxi@daemonizer.de, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Apr 21, 2016 at 08:08:46PM +0200, Maximilian Engelhardt wrote:
> On Thursday 21 April 2016 08:19:38 Seth Forshee wrote:
> > On Tue, Apr 19, 2016 at 08:03:16PM +0200, Maximilian Engelhardt wrote:
> > > Hi,
> > > 
> > > In Europe ETSI standardized the used for short range devices (SRD) [1] in
> > > ETSI EN 300 440-1 [2].
> > > According to this standard generic use equipment is allowed to transmit in
> > > the frequency range form 5725 MHz to 5875 MHz with a maximum output power
> > > of 25 mW e.i.r.p. This generic allocation also allows transmission of
> > > 802.11 devices.
> > > 
> > > [3] has a list of countries and their status about the implementation of
> > > the SRD frequency bands. For the 5 GHz band this can be seen on page 38
> > > in the paragraph ANNEX 1 and the entry Annex j.
> > > 
> > > Attached is a patch that adds the 5 GHz SRD band to db.txt for Germany.
> > > 
> > > If it is acceptable I can provide a patch adding the 5 GHz SRD band for
> > > the
> > > other countries listed in [3].
> > 
> > The changes seem okay as far as I can tell. You do need to include your
> > signed-off-by tag on the patch however, see
> > https://git.kernel.org/cgit/linux/kernel/git/sforshee/wireless-regdb.git/tre
> > e/CONTRIBUTING.
> > 
> > Thanks,
> > Seth
> 
> Hi Seth,
> 
> Thanks for your reply. You can find my signed-off-by tag below together with 
> the unchanged patch.

Thanks, that will work. I'll leave it for a few days and see if anyone
else has comments.

> I can affirm I did check this carefully with the official documents of the 
> German administration for radio equipment (Bundesnetzagentur für Elektrizität, 
> Gas, Telekommunikation, Post und Eisenbahnen).
> 
> I noticed that the links to the other entries for Germany are broken, as the 
> website design was changed and thus all old link became non functional. I can 
> provide a patch fixing this if it is something that's considered useful.

Yes, that would be useful, so please do.

> The comments to my initial mail indicated that the statement in the ERC 
> recommendation I linked are alone not enough to add this frequency ranges for 
> other countries. Unfortunately I don't have the possibility to do these checks 
> for countries other than Germany.

Yep, I understand and am in agreement. I know how challenging it can be
to try to track down this information.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
