Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
 Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
 Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=hmYX/g5VSZ2vSlYRoDXQtsg0rQ42sQ8BVtri+nIZSxs=;
 b=SUz2wzQ+E1cmMa
 R8LmDK1tUcdA4Cpk6zCSRJ8AjAXBsG4N3tyLxm0+NjX5H+xGLTT57G7p1gRJlDNmzmNq0xMrldLMN
 F0bfYsOELxXSfWHLZ4dqLMJk0PkgYvn/PjRgWNJK2RTyZ2zf+Fp8YSx/l7BVrpNaf0uK6Uwq1wNF/
 mRY+O0Gv4+Z4YPtqvkNfOK2bZFywmJ7MskYEzNWP8BklCcFiDNva5gixSOpbiWqZSo3lf+J9iRgGf
 trUBBtz7a6Xa48KCc1PUpmAB9K4QWXD5O67+6mJBNwHVGCGgAdbnME2xAn9gaTwCce/7hZRMcARTr
 k675O97QdrnET2pJACAA==;
Received: from mout.gmx.com ([74.208.4.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hH5wh-0005M2-K0
 for wireless-regdb@lists.infradead.org; Thu, 18 Apr 2019 12:15:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.com;
 s=dbd5af2cbaf7; t=1555589712;
 bh=YgKOuCe/PzUy+r5hw5151mYDrPJ8qZM5oPzGuGWXkzg=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=BZDoQ4ocXBYGCNUaY8LU9KwF/EaZUq2h/OCaAV3H6ngDJJAgO38HuDk67+z+yuQsy
 F5ouGt8Bc7eLDjsR/VJohC3SVG0F0mkgBDv6PAEVCVBts56ckgWPuaWzoU7oCOTAml
 jQf5NMowZ2Ulb/wZ8EHWVHm4nINBwA0UbPw6J+Xo=
Received: from [192.168.1.245] ([119.192.35.241]) by mail.gmx.com
 (mrgmxus002 [74.208.5.15]) with ESMTPSA (Nemesis) id
 0LcSm0-1gaqz004da-00joc9 for <wireless-regdb@lists.infradead.org>; Thu, 18
 Apr 2019 14:15:12 +0200
From: suchan <abnoeh@mail.com>
Message-ID: <5fc9805a-9b80-d8ee-3ab6-fd6c3eee87c7@mail.com>
Date: Thu, 18 Apr 2019 21:15:10 +0900
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"; format="flowed"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

webpage version (newest at 20181227)would be in

http://www.law.go.kr/%ED%96%89%EC%A0%95%EA%B7%9C%EC%B9%99/%EC%8B%A0%EA%B3%A0%ED%95%98%EC%A7%80%EC%95%84%EB%8B%88%ED%95%98%EA%B3%A0%EA%B0%9C%EC%84%A4%ED%95%A0%EC%88%98%EC%9E%88%EB%8A%94%EB%AC%B4%EC%84%A0%EA%B5%AD%EC%9A%A9%EB%AC%B4%EC%84%A0%EA%B8%B0%EA%B8%B0/(2018-89,20181227) 


at 제4조(특정소출력 무선기기) splited in 5. 무선랜을 포함한 무선접속시스템용 
무선기기(5GHz) and 8. 무선데이터통신시스템용 무선기기 (2.4GHz)


as I read

5. 무선랜을 포함한 무선접속시스템용 무선기기

5150～5350,5470～5850, 17705～17715 17725～17735, 19265～19275, 19285～19295 
(all MHz)

          안테나공급전력밀도(Antenna power density?)   10㎽/㎒ 이하

and
8. 무선데이터통신시스템용 무선기기

2,400～2,483.5㎒ {and 5,725～5,850㎒ , but it's overlaped by (5.)}     10㎽ 
이하 또는 10㎽/㎒ 이하

I think None of This range needs DFS. It never mentioned.


Its tables are image so translator won't work.

2019-04-08 오후 9:41에 Seth Forshee 이(가) 쓴 글:

On Wed, Mar 27, 2019 at 06:34:29PM +0000, Peter Oh wrote:

> From: Peter Oh<peter.oh@bowerswilkins.com>
>
> Update power limit as documented in:
> https://www.rra.go.kr/FileDownSvl?file_type=LAWKR&file_parentseq=54&file_seq=27
> which revised on November 30, 2016.
>
> Signed-off-by: Peter Oh<peter.oh@bowerswilkins.com>

I usually try to check the changes against the documents, but in this
case I haven't been able to get any English tranlation for the document
(or even view the contents it in any meaningful way). I don't suppose
you know where to find an English version of the document?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
