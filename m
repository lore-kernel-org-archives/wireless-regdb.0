Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-pd0-x229.google.com ([2607:f8b0:400e:c02::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzHKk-0005qM-QX
 for wireless-regdb@lists.infradead.org; Wed, 17 Jul 2013 02:19:15 +0000
Received: by mail-pd0-f169.google.com with SMTP id y10so1315150pdj.28 for
 <wireless-regdb@lists.infradead.org>; Tue, 16 Jul 2013 19:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=sender:from:to:cc:subject:date:message-id:x-mailer;
 bh=1oPKELetyzkXoMc8zZcsRP7BSZ5Rob7ZNJ+hXkUWN50=;
 b=DZdWhoOkKtXIeQjMGqdC3Wk528RymnZE0lfsvH2RGFuDzkuAGWcb1V5/3k2nPIMPN7
 RbVIp4sl3pM4Vf7Ob05KifUSQOYJATh2WnuEFPlT4DyGGKl8fIpPSxgeuLqekBnk1aoQ
 IyOlAJzx51L3dhV8+6Iur0cn0VCAMSM9e/ISdXznbNKmf9u6IaPqunkZiyd2IQ+p5zK2
 7Pj/a3ldkvpcVhvnjPJc4FpkugBahvef+c6W2nK9JnwxXUTiklNZOdHCQKD99luefxuU
 qxU6EnPrft5p94OhSp3GG3vEYhD8GVNvr5Pu0SUxRFBrQNZe8Pz4e5ISY16Wbea7ulJX UEIA==
From: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Date: Tue, 16 Jul 2013 19:17:49 -0700
Message-Id: <1374027522-18488-1-git-send-email-mcgrof@do-not-panic.com>
Subject: [wireless-regdb] [PATCH 00/53] wireless-regdb: latest updates
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

I saw one comment posted about the Indonesia patch, I fixed that.
I also then ran some sanity tests with a new reglib addition
wich I recently posted. This helped find two cases which
required disabling VHT80 for two countries on a specific band.
One was for US for 5690 and another for TW for 5290. In both cases
the reason is due to the fact that the only way to use VHT80 is
to combine two frequency ranges together that are contiguous and
apply the most restrictive band rules for that range. We don't support
this yet so just disable VHT80 in both cases. In the US case this
also seems to be the preferred ruling.

This now goes out in patch form.

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

 db.txt |  316 +++++++++++++++++++++++++++++++++++-----------------------------
 1 file changed, 173 insertions(+), 143 deletions(-)

-- 
1.7.10.4


_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

