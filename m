Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=gsrm/ELUyko+tXXvvZlOdWHdlo/IBirh4ESNpKa8rPA=;
 b=JXhYZ+E1arlr2h
 OPuXLuERFh68K+nH8xYeUEYMzw4YFL0+QY0GqxfCvBKKLg7Fx+TAQDNsNzpQbPArD+ue/7FQsbYEn
 /iGdHgOt3sFvUJpQNrrGdaRwNOXtpu9qjI+gShT4/vEcTFZwWRnBh1FvZjuflt00ITtZGcpuyqrr2
 XZXqb80IltrhJg4d5ze131ZT/D1ghdliX4UU7Y+ZJcBP3WXJAA779o3VPJIjN/Flg9LzWH8khkDx5
 gF8dVKwUnGeIJwdGlIbtaBMTg0hCK/Il4StTzckFdY6Ud9/1ly46FGCseVSB+QfShn38508kJL3W5
 SZL6nVxg2r4sb04KuUwg==;
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX4nw-00ESVQ-U4
 for wireless-regdb@lists.infradead.org; Wed, 23 Mar 2022 17:29:54 +0000
Received: by mail-oa1-x33.google.com with SMTP id
 586e51a60fabf-de48295467so2399279fac.2 for
 <wireless-regdb@lists.infradead.org>; Wed, 23 Mar 2022 10:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=forshee.me;
 s=google; h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dc/RTATrvZ4Rkc2f9GX/+xE45DFYGCqbgnN04+Pfpwo=;
 b=hZbo1Tror/VpwMl760Wfb28vrVkO0gvngc7C4mdCVFSN0s3TSohEPYugObo+zwUoNa
 DbLsq2gOGV0I2dPMFV0MgY4z1ArOW7xnYMmMd+7g91MtXoTkRIjKoC0FfuOcNqC23U6e
 qFzg/9vhJjvltEw5GrKSHEsRmAJjvGTQU2ILt2MQpu0fAJODMIJpI4s4AsOpp+gVmxIL
 lP3R5wr3yAI7gfqGzoUc7dhXj4oxV7GlCH0IcDwFXTmhhIgqhP7sMKO4hAyQV371nEKt
 Tj5ZYLC/pDj2OxjLfkdjjpS5QySq4tdnNVEfnKzEdlhBNRoyaPH4/OMA31bk5audvTGe zxAg==
Date: Wed, 23 Mar 2022 12:29:49 -0500
From: Seth Forshee <seth@forshee.me>
Message-ID: <YjtZDaOBpde9uX3v@ubuntu-x1>
References: 
	 <BY5PR15MB4787741965BC6008B3851A35B7189@BY5PR15MB4787.namprd15.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR15MB4787741965BC6008B3851A35B7189@BY5PR15MB4787.namprd15.prod.outlook.com>
Subject: Re: [wireless-regdb] wireless-regdb: master-2022-02-18
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

On Wed, Mar 23, 2022 at 02:56:41PM +0000, Tuck, Lawrence J C (Lawrence) wrote:
> In testing this release, I have encountered an error with the US domain.
> 
> Mar  4 03:55:41 kernel: [ 1269.508101] cfg80211: Invalid regulatory domain detected:
> Mar  4 03:55:41 kernel: [ 1269.508161] cfg80211: Regulatory domain: US
> Mar  4 03:55:41 kernel: [ 1269.508185] cfg80211:   (start_freq - end_freq @ bandwidth), (max_antenna_gain, max_eirp), (dfs_cac_time)
> Mar  4 03:55:41 kernel: [ 1269.508218] cfg80211:   (902000 KHz - 2000 KHz @ 0 KHz), (N/A, 0 mBm), (N/A)
> Mar  4 03:55:41 kernel: [ 1269.508510] cfg80211:   (904000 KHz - 16000 KHz @ 0 KHz), (N/A, 0 mBm), (N/A)
> Mar  4 03:55:41 kernel: [ 1269.508563] cfg80211:   (920000 KHz - 8000 KHz @ 0 KHz), (N/A, 0 mBm), (N/A)
> Mar  4 03:55:41 kernel: [ 1269.508592] cfg80211:   (2400000 KHz - 2472000 KHz @ 40000 KHz), (N/A, 3000 mBm), (N/A)
> 
> It looks like the parsing of the S1G frequencies failed.  Looking at db.txt there are no spaces around the '-' in the S1G channels.  Has anyone else encountered this issue?

I didn't see this in my testing against multiple kernel versions. What
version are you using?

Are you using regulatory.db or regulatory.bin? I only tested
regulatory.bin with regdbdump and not by loading it into a kernel, so
there could be a problem there that I didn't catch.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

