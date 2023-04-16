Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=4T88+HJGCPITTqI25f1FzSDQmQ2rEuiZWxa0Biashyc=;
 b=0HYF27qDxyG4p0
 QrNVTv6Xr2zLxxnqR+ySJ2jfA/SVY83zweFPKpaeMIoKWMA0W4BZSjBXTijNcETRozf9/CAAb6Ks2
 oLsO/vauo21kIR93tid4IDpW7hB6EBQ2t55LfAd76EjNSt4J5Pa4dORImo6o0jZiTV8PUYjbhxakK
 sffz8KoNAdX6o5+vAR/ZFAYlMyWo4Lan9FHkh7/itynjDvVR/QImwuOcKnjZ+AJcQe/WHzezO86s5
 xmTMV1nVYEizfRYrmhOWmlzwpDTCZ2HLsdlZV34TB6ARo4N6aVC3i6CVOM2CMCIqG61USiXGEXTF+
 kD3z/9lMfM9FGWfd+u9Q==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1po2CJ-00DqQy-2F
	for wireless-regdb@lists.infradead.org;
	Sun, 16 Apr 2023 13:13:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681650816;
	bh=Hv8eudMtXGgOxhIT1Cq3LG4BJ96JJeFHXsL8KtcptdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R2/UsQGlhyrKOvpiVYJesW08nFlnRRMhyuzXcTJ9teJXtM2taS9yCchYYeh8ufoHA
	 QvCmLDn/ve3dHlqqurqgARg/VDxFn47unBQl1OC4ZoUyoj5tAe8tHml/iBlraOFj/d
	 Qu2hMoFMvkDYNMRla7fIJIlTDv4gx/+I/OKYYP+ZA/qd8DfR1Sp3OJwm9f1OnFBKn/
	 vnseQgA67bojjp52DVl6LPTwMAN6KAmKMVK3lC84qZ6JRTxvzZw7UaTiBbLpcOlEIX
	 Hhv8poAtpZWDP8+MtMtcp1fA1zHgCcpJWsYc2gEOqs257jA7PINQHkR/CBHWrZOXw5
	 EZDjsC7HkHQUg==
Date: Sun, 16 Apr 2023 08:13:34 -0500
From: "sforshee@kernel.org" <sforshee@kernel.org>
Message-ID: <ZDv0fuvSK0x/I4ci@ubuntu-x1>
References: 
	 <SJ0PR22MB249501047C8F6F51CCB9D06A8F8C9@SJ0PR22MB2495.namprd22.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SJ0PR22MB249501047C8F6F51CCB9D06A8F8C9@SJ0PR22MB2495.namprd22.prod.outlook.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Canada on 5GHz
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
To: Eric Sellman <GAK_ACTION@live.com>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Sat, Apr 01, 2023 at 08:26:51AM +0000, Eric Sellman wrote:
> My apologies but I have made a mistake.
> 
> My previous submission about Canada is invalid. The weather frequency range has already been avoided.
> 
> Here is the correct information I meant to share with you.
> 
> https://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf10971.html#s6
> 
> "Devices with occupied bandwidths which overlap different bands shall comply with all operational requirements for each band."
> 
> https://semfionetworks.com/blog/5ghz-regulations-in-canada-2018-update/
> 
> Canada still permits the lower 5ghz frequencies to be used for VHT 160. But it's missing according to the information for the Canadian profile in line 326

Just for the record, as we discussed for the US rules, we can't set the
max bandwidth for a range to a value larger than the range itself or the
kernel will reject the database. However, it looks like with AUTO_BW the
kernel will allow larger bandwidths with adjacent channels.

> 
> https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git/tree/db.txt#n326.
> 
> And I wanted to mention that for 5150 - 5250 on line 328, the transmit power has been increased to 1 watt or "30 dBm" according to this document here.
> 
> https://www.ic.gc.ca/eic/site/smt-gst.nsf/eng/sf11294.html

I see a limit of 200 mW for 5150-5250 MHz. If I'm missing it, can you
please tell me which section specifies a max EIRP of 30 dBm?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

