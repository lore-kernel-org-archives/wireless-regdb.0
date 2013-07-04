Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x235.google.com ([2607:f8b0:400e:c02::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuXz3-0002el-JT
 for wireless-regdb@lists.infradead.org; Thu, 04 Jul 2013 01:05:18 +0000
Received: by mail-pd0-f181.google.com with SMTP id 14so578377pdj.40 for
 <wireless-regdb@lists.infradead.org>; Wed, 03 Jul 2013 18:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id:x-mailer;
 bh=eYtVymk98kIOUHslPmGPN11+d5xmVzTkXWKKCqEluFk=;
 b=NCAI4G9kMkKeDgSDCHAJsZZZ7vSgvd6gO9LJ0ZHEZhLBZp2aAIkYXTYIFotc7M3VuV
 fDMCI3L5z+ARuuzPQKyZzE0fDFuyd5dGzRtaXnuMocG/xFSX0Qe8zL+lByLqMW/KFsWK
 Aly3jq2beH792PgFhbFZ3OF6UvVQVaamQwhaq5RMcoGSVi7OtE3+PoyVj1xxZXcOhHYY
 XSnmt0etD7UXt1TM6FnerBy6iZ/b1Cuge4nFpC02aKDBigvEuN1LxUh5lqYeDZXkgqR1
 Kp/vBg5jcQ19dsyT3oKu96CktGTLyauhcjS6Y8BgYfRLr9qzlt6C7m9naYc5S3FDc/5D X3hg==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Wed,  3 Jul 2013 18:03:56 -0700
Message-Id: <1372899889-19183-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [RFC 00/53] wireless-regdb: mostly VHT80 updates
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: linville@tuxdriver.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org, "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
List-ID: <wireless-regdb@lists.infradead.org>

From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>

Here's a series of updates for wireless-regdb. Most of this is
to just enable VHT80 support to enable support for 802.11ac
where this has been verified to be usable. I cannot meet the
criteria of providing full documentation for sources for all
patches, only a few ones so what I recommend for the rest is
to let this sit on the list for a bit and I'd hope after
review if no one spots any issues I'd hope we can merge this.

I reviewed the idea of vendor namespaces on wireless-regdb
and at least through review with pkgadd on IRC we concluded
its best to try to take this approach instead of encouraging
divergence due to any lack of full source documentation or
inability to provide such documentation for whatever reason.
This seems to be better than not getting any updates at all
and keeps vendors hopefully encouraged to push changes upstream.

Luis R. Rodriguez (53):
  wireless-regdb: AU, Australia - enable VHT80
  wireless-regdb: BR, Brazil - enable VHT80
  wireless-regdb: CA, Canada - enable VHT80
  wireless-regdb: HK, Hong Kong - enable VHT80
  wireless-regdb: NZ, New Zealand - enable VHT80
  wireless-regdb: AR, Argentina - enable VHT80
  wireless-regdb: CO, Colombia - enable VHT80
  wireless-regdb: GU, Guam - enable VHT80
  wireless-regdb: MX, Mexico - enable VHT80
  wireless-regdb: PE, Peru - enable VHT80
  wireless-regdb: PH, Philippines - enable VHT80
  wireless-regdb: PR, Puerto Rico - enable VHT80
  wireless-regdb: SA, Saudi Arabia - enable VHT80
  wireless-regdb: SG, Singapore - enable VHT80
  wireless-regdb: ZA, South Africa - enable VHT80
  wireless-regdb: TH, Thailand - enable VHT80
  wireless-regdb: AE, United Arab Emirates - enable VHT80
  wireless-regdb: VN, Vietnam - enable VHT80
  wireless-regdb: AT, Austria - enable VHT80
  wireless-regdb: FR, France - enable VHT80
  wireless-regdb: DE, Germany - enable VHT80
  wireless-regdb: GB, United Kingdom - enable VHT80
  wireless-regdb: BE, Belgium - enable VHT80
  wireless-regdb: CZ, Czech Republic - enable VHT80
  wireless-regdb: DK, Denmark - enable VHT80
  wireless-regdb: FI, Finland - enable VHT80
  wireless-regdb: GR, Greece- enable VHT80
  wireless-regdb: IE, Ireland - enable VHT80
  wireless-regdb: IT, Italy - enable VHT80
  wireless-regdb: LU, Luxembourg - enable VHT80
  wireless-regdb: NL, Netherlands - enable VHT80
  wireless-regdb: PL, Poland - enable VHT80
  wireless-regdb: PT, Portugal - enable VHT80
  wireless-regdb: SK, Slovakia - enable VHT80
  wireless-regdb: ES, Spain - enable VHT80
  wireless-regdb: SE, Sweden - enable VHT80
  wireless-regdb: CH, Switzerland - enable VHT80
  wireless-regdb: TR, Turkey - enable VHT80
  wireless-regdb: CN, China - enable VHT80
  wireless-regdb: enable VHT80 and VHT160 for JP
  wireless-regdb: US, United States - enable VHT80
  wireless-regdb: ID, Indonesia - enable 5 GHz and VHT80
  wireless-regdb: IL, Isreal - enable VHT80
  wireless-regdb: KW, Kuwait - enable VHT80
  wireless-regdb: MY, Malaysia - enable VHT80
  wireless-regdb: MA, Morocco - enable 5 GHz and VHT80
  wireless-regdb: enable HT40 in RU - Russian Federation
  wireless-regdb: KR, Republic of Korea - enable VHT80
  wireless-regdb: TW, Taiwan - enable VHT80
  wireless-regdb: enable VHT80 when world roaming
  wireless-regdb: add 802.11ad 60 GHz channels 1..3 to world regdom
  wireless-regdb: CR, Costa Rica - enable VHT80
  wireless-regdb: EC, Ecauador - enable VHT80

 db.txt |  318 +++++++++++++++++++++++++++++++++++-----------------------------
 1 file changed, 174 insertions(+), 144 deletions(-)

-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

