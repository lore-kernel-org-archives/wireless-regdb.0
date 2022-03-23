Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
 References:Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=A1xHGN+hyYXk44k84UbzVKAEmCvBGBeCQhmOybZSCew=;
 b=pq4KZFNWUngpqb
 ZXEglcY4R3gpAUV3KJPgG0Bmz4QTsBsw99eB1Mpfu/9amoxrWUsJOBxFnE5Gg23dFB9jIcWYoDKGa
 oCqYTlxQ0IdO/zDco67n1uwaS0UZAk9LXgitjey0husE+QPQvXhkU5xTFwm/ElVgHbkfKl4z9AjHE
 yKgPdaNin/D+r8M8yKn5a36xACePl57imerDoaSbdVoxkkG0ChvXp9EwkBZF6bTMkOc0sNhcyQh1H
 RFbCj5Aaclz9CvQeghWrYlglgmgtSEKwwZXVOU/oae/QwMLkrRF06o6NsNOcZXxS1GXaIpwbhrG5P
 gtFKXaE0ZUj+g9niUixQ==;
Received: from mx0a-00186901.pphosted.com ([148.163.133.181])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX5yx-00Ecp2-NB
 for wireless-regdb@lists.infradead.org; Wed, 23 Mar 2022 18:45:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=avaya.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=dk201908;
 bh=AkdN2hdz0s6kT1ZUS5hqYY/lgoIKB9AqsvtF0797vnU=;
 b=nDhqRngOxuV7B8IMqmIJEm5lgr+P/nZfWas9Mi4kNzI/LRoQ15NmsKCl1Pdf/Xraktbu
 lgbFrfBRhscaPIF7YRwFxmGG4rqjTMaJ1xAU64PP+TNKCoQSkgm7L7LiW/Nct/Ev+dqv
 B0/x+55MwMJZFN/yFoLn4fgezzts1TfLPHQPY1yrhwIxPC0OqLS5moi6JzXC5k2wo4dA
 vx5flqk/+jkyqTbXQ/UOy6MdG+mRW4u6Gb+9meN8J5s6gamYF1kmnXX+mYybGNvG6hvG
 VMO7kYdYEkl75aqXi3tMb7zJ8BqaVvmoNdFfoXLkAPKLKQ4BYqViT6TY31R3zuoGGpTe Pw== 
From: "Tuck, Lawrence J C (Lawrence)" <ljctuck@avaya.com>
Date: Wed, 23 Mar 2022 18:45:16 +0000
Message-ID: <BY5PR15MB478700543CC8F6976B0BE347B7189@BY5PR15MB4787.namprd15.prod.outlook.com>
References: <BY5PR15MB4787741965BC6008B3851A35B7189@BY5PR15MB4787.namprd15.prod.outlook.com>
 <YjtZDaOBpde9uX3v@ubuntu-x1>
In-Reply-To: <YjtZDaOBpde9uX3v@ubuntu-x1>
Content-Language: en-US
MIME-Version: 1.0
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
To: Seth Forshee <seth@forshee.me>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

I build it into my custom 4.4.11 kernel with Yocto (Morty release).  The regdb.c that was generated with the awk script was incorrect (it matched the output below where the end frequency was replaced by the bandwidth and the bandwidth was 0).  I suspect that the awk script used to process db.txt in the linux build processes it differently than the python scripts.

Lawrence

-----Original Message-----
From: Seth Forshee <seth@forshee.me> 
Sent: Wednesday, March 23, 2022 1:30 PM
To: Tuck, Lawrence J C (Lawrence) <ljctuck@avaya.com>
Cc: wireless-regdb@lists.infradead.org
Subject: [External]Re: [wireless-regdb] wireless-regdb: master-2022-02-18

[External Sender]

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

I didn't see this in my testing against multiple kernel versions. What version are you using?

Are you using regulatory.db or regulatory.bin? I only tested regulatory.bin with regdbdump and not by loading it into a kernel, so there could be a problem there that I didn't catch.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

