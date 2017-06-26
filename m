Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=3ltGY2WQEIzV7Ay6uUUu66og0OossiFl69BRNfrhvg8=;
 b=MJZ5FiyK8pLOgT
 nVA9/Y03eKZDsnnGad2rFvKMkvwz7tk59NXLMmakQfri3/106G5BKHz4Ar7lrSG9bT5wlsGTBEosr
 l/KwJ/BpzD+cNVNEGoFItNbg9ys/7XgVkkboQ6ph8r5qtrrNgbV34rX4AUhFNfL70a2G1zz400s94
 HSJD6QypNYGu97c9v8/vp87gr6KlU8YL3fJZ0txTmevbVIBIyXjeJlunwdfZKCLd+1r8sc92KpxCw
 X+GLE6/sxH3B2MCtg/UgCmUZhZrJFSqc/jdrTELWUrYVdkIbvKEq8LMDyxp2OSWKLswor4nA91kus
 nKf6ZvCjDAe5+obZ1FLQ==;
Received: from mail-qt0-x229.google.com ([2607:f8b0:400d:c0d::229])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dPLCV-0002LF-FW
 for wireless-regdb@lists.infradead.org; Mon, 26 Jun 2017 04:00:37 +0000
Received: by mail-qt0-x229.google.com with SMTP id i2so67258268qta.3 for
 <wireless-regdb@lists.infradead.org>; Sun, 25 Jun 2017 21:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20161025; h=mime-version:from:date:message-id:subject:to:cc;
 bh=ET2ArHRi6wwzaysSKa5dTllCwW7ZBapGjV/NLRh6oBU=;
 b=cNRHfW8dFrEBMLAC/guJqjz9k7L7dQn5kJPCExnsicmk0WnCb/28t41hYyfv9Ijr4L
 ZliPQDv8lKPNUVXf0mBR5RE8G49u/N+CPp16uKB+I8eMx8A81kl80RhNJcVnFLyU9BPq
 T2SIC9cXiN7wxECubn3AYUkmBHJcXjFo0sQQHyW+CQU/+TjclgC/XuqsVK3hWplJkkIA
 Kj/IDmrK+S3F0fMKN4p+RSx6WkfYESiXRkESxUhp555FFL40Z79XfKLdiX+GYUtarKFD
 /3mHGzUeMolUuShYrOfk/Nut3nPyqWC/YPAzSM0Aby4Yh3+7bo4kI17ifhTAItRR2+M9 K6Yg==
MIME-Version: 1.0
From: Vasiliy Safronov <vvsprog@gmail.com>
Date: Mon, 26 Jun 2017 10:00:13 +0600
Message-ID: <CALfe80gmDFDnvT=MvN8891wudBEAmeQpH1X1_wNzQpkhbLSOVQ@mail.gmail.com>
Subject: [wireless-regdb] Update regulatory rules for Kazakhstan (KZ) on
 5GHz
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
To: Seth Forshee <seth.forshee@canonical.com>
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

Please add support 5ghz for Kazakhstan.
In Kazakhstan there are no restrictions up to 100mW
country KZ: DFS-ETSI
 (2402 - 2482 @ 40), (20)
 (5170 - 5250 @ 80), (20), AUTO-BW
 (5250 - 5330 @ 80), (20), DFS, AUTO-BW
 (5650 - 5730 @ 80), (30), DFS
 (5735 - 5835 @ 80), (30)

http://adilet.zan.kz/rus/docs/P000001379_
S 5.282 etc

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

