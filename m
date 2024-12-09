Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3A44E77180
	for <wireless-regdb@archiver.kernel.org>; Mon,  9 Dec 2024 15:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
	Content-Type:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q2lhX00dDGxDBus5dwOcsdhnuIvGqR7dxXB5yO8ZEP0=; b=fyrtCxuzjZm0+3B3WzUiGuZcGj
	2pRMt2MtAFTf3eWsbDQmZAyEJ+pS+us7ayQvjN56qxUXdk6zhILxR8fRHjHxZaZUfBfn0PKFdnWHu
	1qFXw+Hr0qqzTizjtv65ffOEcDNGQIABKFl7FQxs0sVBgfVPG3V6BIMYURsB8YEySk0JEhDqfjHVt
	82ksIbeVw1x5ahjN89v88ZeGzczlAQfQOAUp+lhQFSWQwGATu/OFxd1BEJYAAinAptLCXCnLzozQG
	d0t8zQM8LXeOoXS5QWXuzARTsk2lhOHIYCsEWLT1hdQ3r7OOXC+KH5+BK3E1cEtE4DO1RcEZ8wBwf
	2PCbm0Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKg4e-00000008Rm0-0do3;
	Mon, 09 Dec 2024 15:53:28 +0000
Received: from qs51p00im-qukt01072502.me.com ([17.57.155.15])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKg2M-00000008RZd-159R
	for wireless-regdb@lists.infradead.org;
	Mon, 09 Dec 2024 15:51:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dipier.ro; s=sig1;
	t=1733759465; bh=Q2lhX00dDGxDBus5dwOcsdhnuIvGqR7dxXB5yO8ZEP0=;
	h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To:
	 x-icloud-hme;
	b=ix3vMrLlqiaOPhshjrdLipw26cAWYRjWnPrGLPxnpQCItsQA3+usU6azSlnsYnCb0
	 oCuzd1oRqOBlBZPJPv18EGdhNDjgZj7IMKsIzmflIM+236mnfokzbMnA0yHLIBv2r3
	 98xdnoZ3JVdvZGwDuM0Y0wjG8iYsaYAROtQwsFkfH1SPNGiW8j5fFrPYyP1Fdr8VbY
	 mUDi2ANZ+ERFsoUYbIBzEMrG0CHHmDGFQR5c59ibJkLFXaB84nfxY1QnmZ+/VcHHN2
	 eIaWx9i/EEvxrTfjg+DkV34UccLhJDuT02kb+e1C9WYLR3luASY8zJMeBo8fdS9W5K
	 LC6D0WCG/lbjA==
Received: from smtpclient.apple (qs51p00im-dlb-asmtp-mailmevip.me.com [17.57.155.28])
	by qs51p00im-qukt01072502.me.com (Postfix) with ESMTPSA id 0D2976EC0462;
	Mon,  9 Dec 2024 15:51:02 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.2\))
Subject: Re: wireless-regdb: Update regulatory rules for Armenia (AM) on 2.4
 and 5 GHz
From: Avgustina DiPierro <tina@dipier.ro>
In-Reply-To: <274D81C2-56C7-4042-96F9-A04A92BEAEFD@dipier.ro>
Date: Mon, 9 Dec 2024 19:50:49 +0400
Cc: wireless-regdb@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <239E2B05-207C-469E-8145-BBFAE151ECA7@dipier.ro>
References: <274D81C2-56C7-4042-96F9-A04A92BEAEFD@dipier.ro>
To: linux-wireless@vger.kernel.org
X-Mailer: Apple Mail (2.3826.300.87.4.2)
X-Proofpoint-ORIG-GUID: aXkWUxGJf4D59HNGWBGSzwHG8PAl-tkg
X-Proofpoint-GUID: aXkWUxGJf4D59HNGWBGSzwHG8PAl-tkg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-09_12,2024-12-09_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 spamscore=0
 suspectscore=0 malwarescore=0 mlxscore=0 clxscore=1030 bulkscore=0
 phishscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412090124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_075106_418265_C1795520 
X-CRM114-Status: GOOD (  14.68  )
X-Mailman-Approved-At: Mon, 09 Dec 2024 07:53:04 -0800
X-BeenThere: wireless-regdb@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <wireless-regdb.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/wireless-regdb>,
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org

For some reason, my FROM field was not populated correctly.

If you decide to merge this patch, please use this:

From: Avgustina DiPierro <tina@dipier.ro <mailto:tina@dipier.ro>>

Thank you.

> On 9 Dec 2024, at 19:47, tina@dipier.ro wrote:
>=20
> Public Services Regulatory Commission of the Republic of Armenia has =
released two amendments to its 2011 Decision =E2=84=96169=D5=86 on =
Approval of the Procedure for Issuing Permits for the Use of Radio =
Frequencies.
>=20
> 1. Amendment =E2=84=96159=D5=86, on permit of usage of radio frequency =
ranges without permit, released on May 11, 2012, available at =
https://www.psrc.am/contents/document/4749 (choose language =E2=86=92 =
HY)
>=20
> <=E2=80=A6> Based on Article 5, Part 1, Point 1(d) and Point 2(b), =
Article 6, Part 1 and Part 2, Point 1, and Article 17, Part 5 of the Law =
of the Republic of Armenia "On Electronic Communication," as well as =
Article 70, Part 1 of the Law of the Republic of Armenia "On Legal =
Acts," the Public Services Regulatory Commission of the Republic of =
Armenia decides:
> To amend Points 4 and 5 of the annex to the decision =E2=84=96169N of =
April 13, 2011, by the Public Services Regulatory Commission of the =
Republic of Armenia titled "Approval of the Procedure for Granting =
Permissions for the Use of Radio Frequencies," by restating them with a =
new wording. <=E2=80=A6>
> "4. No permission is required for:
> <=E2=80=A6>
> 9) The use of broadband wireless access equipment operating in the =
2400=E2=80=932483.5 MHz radio frequency band with a power of up to 100 =
mW.
> <=E2=80=A6>=E2=80=9D
>=20
>=20
> 2. Amendment =E2=84=96295-=D5=86, on permit of usage of radio =
frequency ranges without permit, released on August 23, 2023, available =
at https://www.psrc.am/contents/document/11375 (choose language =E2=86=92 =
HY)
>=20
> <=E2=80=A6> Based on Articles 33 and 34 of the Law "On Normative Legal =
Acts," the Public Services Regulatory Commission of the Republic of =
Armenia decides:
> To amend Subpoint 10 of Point 4 of the annex to Decision =E2=84=96169-N =
of April 13, 2011, of the Public Services Regulatory Commission of the =
Republic of Armenia, titled "Approval of the Procedure for Granting =
Permissions for the Use of Radio Frequencies," as follows:
> "10) For the use of local network equipment operating in the 5150-5350 =
MHz and 5470-5875 MHz radio frequency bands with an effective radiated =
power (e.r.p.) of up to 100 mW (only indoors, as well as in airplanes =
during all phases of flight), utilizing dynamic frequency selection =
(DFS) and transmitter power control (TPC).=E2=80=9D <=E2=80=A6>
>=20
>=20
> Essentially, this two documents define this frequencies as permitted:
> - 2400 - 2483.5 MHz @ 100 mW
> - 5150 - 5350 MHz @ 100 mW with DFS, outdoor usage forbidden
> - 5470 - 5875 MHz @ 100 mW) with DFS, outdoor usage forbidden
>=20
> However, I am not sure if AUTO-BW option here is required. As far as I =
know, there is currently no limitation on bandwidth usage in IEEE 802.11 =
set of protocols in Armenia.
>=20
> ---
> db.txt | 10 +++++++---
> 1 file changed, 7 insertions(+), 3 deletions(-)
>=20
> diff --git a/db.txt b/db.txt
> index e282e3b..5d5ba22 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -81,10 +81,14 @@ country AL: DFS-ETSI
> # short range devices (ETSI EN 300 440-1)
> (5725 - 5875 @ 80), (25 mW)
>=20
> +# Source (in Armenian):
> +# 2.4 GHz https://www.psrc.am/contents/document/4749
> +# 5 GHz https://www.psrc.am/contents/document/11375
> +
> country AM: DFS-ETSI
> - (2402 - 2482 @ 40), (20)
> - (5170 - 5250 @ 20), (18)
> - (5250 - 5330 @ 20), (18), DFS
> + (2400 - 2483.5 @ 40), (100 mW)
> + (5150 - 5350 @ 160), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
> + (5470 - 5875 @ 160), (100 mW), NO-OUTDOOR, AUTO-BW, DFS
>=20
> country AN: DFS-ETSI
> (2402 - 2482 @ 40), (20)
> --=20
> 2.45.2



