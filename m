Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=K2UKsUDqc3JI4Cy287PdszeECwUsaW+5d4B7p4VYSJY=;
 b=4mZb/1wkSWlk1A
 mLyhC05AOjUyKPRASd1IOleL4gJ0d9/IxPhvsW/+cwGrWrlq7EtjVsMW/ns104b1UvR4U4xarkkFh
 XoKIq1lNXKTQKiD0LLRmCluz28+00DTzJL1SV9lhdIrKID9jueHIMrRMnQZyvgXztjI3XLnn3Huup
 lGcmi3Uimp5lZrKiVPzCN3Pg4jgnb+BClw1ZWQ/VTSfwdYILTh5Io+EEEEPbnkmqkFjFLuv0eq/Qm
 GFFEaWJ3XpHmZUps9gbvRjWx6pE9Hf6cpzrQA/CqJYPH/W28SdeZyRHk8GnvPNDaBGnrLXPOs4x2C
 CPoexiobgdFwT94IyiqA==;
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX6ky-00EjeG-A2
 for wireless-regdb@lists.infradead.org; Wed, 23 Mar 2022 19:34:57 +0000
Received: by mail-oi1-x233.google.com with SMTP id 12so2674600oix.12 for
 <wireless-regdb@lists.infradead.org>; Wed, 23 Mar 2022 12:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forshee.me;
 s=google; h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=UABdQYSTeXNWoTuZND2r1Q46tmf9ZLqbVITnQlsYYfE=;
 b=UVsImrgbUk6JgavjpbeMQP4fsUEUGf9CXe5a/RitHzYJybXyahFhSEQPwZWWMb21iJ
 A4dWD/x2I7ghuH09iugYaYfO5mSJAtpCb2un+DleRazOZ1mz93fKQR46sExo0FK903If
 ighUMBNjNRF8gcPufhSqJRo6jYwFtAD/qdy26TnEzdOp17+CniYY2Ku48GdrfAggtFhM
 Edb2Z0u/+ZjDzKiEsFzoknDh6AX+AO8YdDczDFfV8lZ8PpBHY23Rr19BUpB65mb0Z8+S
 +jzdpL9MG+pWa2rNpUtR17mYpRwOyHsslF/bkgTo9UJZlWY6KCRlkhO7QnYcewL2BO5O K7jw==
Date: Wed, 23 Mar 2022 14:34:53 -0500
From: Seth Forshee <seth@forshee.me>
Message-ID: <Yjt2Xc+JZzXpO4DC@ubuntu-x1>
References: <BY5PR15MB4787741965BC6008B3851A35B7189@BY5PR15MB4787.namprd15.prod.outlook.com>
 <YjtZDaOBpde9uX3v@ubuntu-x1>
 <BY5PR15MB478700543CC8F6976B0BE347B7189@BY5PR15MB4787.namprd15.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR15MB478700543CC8F6976B0BE347B7189@BY5PR15MB4787.namprd15.prod.outlook.com>
Subject: Re: [wireless-regdb] [External]Re: wireless-regdb:
 master-2022-02-18
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
To: "Tuck, Lawrence J C (Lawrence)" <ljctuck@avaya.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Mar 23, 2022 at 06:45:16PM +0000, Tuck, Lawrence J C (Lawrence) wrote:
> I build it into my custom 4.4.11 kernel with Yocto (Morty release).  The regdb.c that was generated with the awk script was incorrect (it matched the output below where the end frequency was replaced by the bandwidth and the bandwidth was 0).  I suspect that the awk script used to process db.txt in the linux build processes it differently than the python scripts.

Ah, that makes sense. I'll add spaces and get a new regdb released soon.

Thanks,
Seth

> 
> Lawrence
> 
> -----Original Message-----
> From: Seth Forshee <seth@forshee.me> 
> Sent: Wednesday, March 23, 2022 1:30 PM
> To: Tuck, Lawrence J C (Lawrence) <ljctuck@avaya.com>
> Cc: wireless-regdb@lists.infradead.org
> Subject: [External]Re: [wireless-regdb] wireless-regdb: master-2022-02-18
> 
> [External Sender]
> 
> On Wed, Mar 23, 2022 at 02:56:41PM +0000, Tuck, Lawrence J C (Lawrence) wrote:
> > In testing this release, I have encountered an error with the US domain.
> >
> > Mar  4 03:55:41 kernel: [ 1269.508101] cfg80211: Invalid regulatory domain detected:
> > Mar  4 03:55:41 kernel: [ 1269.508161] cfg80211: Regulatory domain: US
> > Mar  4 03:55:41 kernel: [ 1269.508185] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp), (dfs_cac_time)
> > Mar  4 03:55:41 kernel: [ 1269.508218] cfg80211:   (902000 KHz - 2000 KHz @ 0 KHz), (N/A, 0 mBm), (N/A)
> > Mar  4 03:55:41 kernel: [ 1269.508510] cfg80211:   (904000 KHz - 16000 KHz @ 0 KHz), (N/A, 0 mBm), (N/A)
> > Mar  4 03:55:41 kernel: [ 1269.508563] cfg80211:   (920000 KHz - 8000 KHz @ 0 KHz), (N/A, 0 mBm), (N/A)
> > Mar  4 03:55:41 kernel: [ 1269.508592] cfg80211:   (2400000 KHz - 2472000 KHz @ 40000 KHz), (N/A, 3000 mBm), (N/A)
> >
> > It looks like the parsing of the S1G frequencies failed.  Looking at db.txt there are no spaces around the '-' in the S1G channels.  Has anyone else encountered this issue?
> 
> I didn't see this in my testing against multiple kernel versions. What version are you using?
> 
> Are you using regulatory.db or regulatory.bin? I only tested regulatory.bin with regdbdump and not by loading it into a kernel, so there could be a problem there that I didn't catch.
> 
> Thanks,
> Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

