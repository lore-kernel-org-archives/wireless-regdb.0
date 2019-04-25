Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
 From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=aSHseOFDQHjoNFQa02AfP4ilKOx88T4AcEfWrfALReg=;
 b=uq7UHeBTbDoj8wuPfBi6POsev
 3H5ZkhMT4aN6rcAPJIemF6FQ9D37Z8bLkdMRyv24SXBoqep5Bp3blar3WLHo5EtemsOVgYkk7snU0
 XAHzdfyg7NaHJFFi9/pxh7S60LZa5LhqP9axWekA8VWwqRf4aJBjCKgOEjcSX8xBiICpoB0M+nLxi
 xdRuAwljYqUL5xxbAd6nKbvQ1u8ezUvsJ0Gk/TIx9o0qdmg8nJkdMUNvfZlU7k038C8V2UEXu2oHG
 aLslyqg+u/CaaLKeWv5xxiT2mIqTq59e1bbH3v3inBTMHmZ0TYxiUmbPcwE35PFy/8RvFLV5+6zWr
 WHzzK5feA==;
Received: from mout.gmx.com ([74.208.4.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJmja-0000Fg-9I
 for wireless-regdb@lists.infradead.org; Thu, 25 Apr 2019 22:20:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.com;
 s=dbd5af2cbaf7; t=1556230845;
 bh=+SI11wnLl7wQa28QWLnwNAuDB0hB4CRpYmVssQzrp4I=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=aFj+cNijTyhWsJMpx1WNRU7Eb5SeOhjidGJyidxvmmNcxFqLfSTjj5MciQw4zGXV1
 hFzXuYCLnTgX145dToV5jtvFgf1DX2w1Kw3VpnvMDmsGdJiekFLfDC5R1NLBrrgtqV
 HVrUvQoXQXpSvQZximuELw5E3gx2sfDRY9ebbVQ4=
Received: from [192.168.1.245] ([119.192.35.241]) by mail.gmx.com
 (mrgmxus002 [74.208.5.15]) with ESMTPSA (Nemesis) id
 0Me8AS-1h9OkN0FXa-00Px8D for <wireless-regdb@lists.infradead.org>; Fri, 26
 Apr 2019 00:20:45 +0200
References: <1553711659-27600-1-git-send-email-peter.oh@bowerswilkins.com>
 <20190408124159.GC15126@ubuntu-xps13>
 <af4d49d9-fc9e-ebe3-20ab-edef6c12a2eb@bowerswilkins.com>
 <CAPuHQ=Grm6fEdP95jfj4zEXCr8be0PMOb9iv3oeYUt0y2Oeshw@mail.gmail.com>
 <b7af6387-a8bf-dfa0-b347-e58133d7298d@bowerswilkins.com>
 <CAPuHQ=EMmq7M7HHAO8iMrOgsgn9dAg=siUWXQMc0sA_8t_kBAg@mail.gmail.com>
 <6438cda3-169c-be2a-26f7-2ab0780040ea@bowerswilkins.com>
From: suchan <abnoeh@mail.com>
Message-ID: <aed0df90-66cb-c0e9-a3de-95fb19d70960@mail.com>
Date: Fri, 26 Apr 2019 07:20:41 +0900
MIME-Version: 1.0
In-Reply-To: <6438cda3-169c-be2a-26f7-2ab0780040ea@bowerswilkins.com>
Content-Language: ko
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for South Korea
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EC%8B%A0%EA%B3%A0%ED%95%98%EC%A7%80%EC%95%84%EB%8B%88%ED%95%98%EA%B3%A0%EA%B0%9C%EC%84%A4%ED%95%A0%EC%88%98%EC%9E%88%EB%8A%94%EB%AC%B4%EC%84%A0%EA%B5%AD%EC%9A%A9%EB%AC%B4%EC%84%A0%EA%B8%B0%EA%B8%B0/(2018-89,20181227)

there is newer version(2018-89) available, and it's copyable by web.

disket button on right top prints the page in one of (hwp,pdf,doc) format

> On 04/25/2019 01:37 PM, b.K.il.h.u+tigbuh@gmail.com wrote:
>> Note that a link to the 2016-124 document is specified as reference in
>> the above code (conversion also attached), not to 2016-125. Should we
>> update the link? Although some of the numbers seem to match, the
>> documents differ in structure and -125 seems to handle more bands.
> I don't know where you downloaded 2016-124, but there is no link to
> 2016-124 one RAA website.
> https://www.rra.go.kr/ko/reference/lawList_view.do?lw_seq=55&lw_type=3&searchCon=&lw_select=ALL&lw_model=&searchTxt=
> Even though 2016-124 exist, we should refer 2016-125 since it's later
> version than -124.
>
> Thanks,
> Peter
> _______________________________________________
> wireless-regdb mailing list
> wireless-regdb@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/wireless-regdb

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

