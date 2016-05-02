Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-oi0-x231.google.com ([2607:f8b0:4003:c06::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axE7e-0005hw-8p
 for wireless-regdb@lists.infradead.org; Mon, 02 May 2016 13:42:50 +0000
Received: by mail-oi0-x231.google.com with SMTP id k142so189614314oib.1 for
 <wireless-regdb@lists.infradead.org>; Mon, 02 May 2016 06:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ELp0qdi2Q8EYCYprjX8VTd4BjiqTddBOG5R0ZVB80fc=;
 b=WzP+5YcJ19svD8fVYihSxDEMXBJF73qMcKh8oHuvg2AlVN9vuEuRqwgzYKEPluCxjD
 49rOhMHL0eC2iNQYQBj5DNlwmuDI5Cb9glG1nxgNGHqO1Kcod0eRSoRElR29m15d+Tr/
 nioSE7CuncydshG20XQYw4vvL/2HzDCor+u/zSC46YM55K0HStXSiMEbjxbo+Y0RewXM
 0bIee+cUw1QWHzu8isxdjlGChtYVBB52NAMjw/E/HZxkx9eZviKO5fJLsFLBVkuIyCH/
 jolLEgs29XDqX69I1p5H3sX2e5dkqzcclhCOodxSKlXGeD926tvkFumcbwqoqEERXa0X
 LDOA==
Date: Mon, 2 May 2016 08:42:26 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20160502134226.GA2714@ubuntu-hedt>
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
> 
> I can affirm I did check this carefully with the official documents of the 
> German administration for radio equipment (Bundesnetzagentur für Elektrizität, 
> Gas, Telekommunikation, Post und Eisenbahnen).
> 
> I noticed that the links to the other entries for Germany are broken, as the 
> website design was changed and thus all old link became non functional. I can 
> provide a patch fixing this if it is something that's considered useful.
> 
> 
> The comments to my initial mail indicated that the statement in the ERC 
> recommendation I linked are alone not enough to add this frequency ranges for 
> other countries. Unfortunately I don't have the possibility to do these checks 
> for countries other than Germany.
> 
> If there is anything I can do to help adding the SRD entries for more 
> countries please let me know.
> 
> Thanks,
> Maxi
> 
> 
> Signed-off-by: Maximilian Engelhardt <engelhardt@perisens.de>

Applied, thanks.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
