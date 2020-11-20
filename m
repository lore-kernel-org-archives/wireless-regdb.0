Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=merlin.20170209;
 h=Sender:Content-Transfer-Encoding:
 Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
 List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
 bh=v+vOY60uk15Pfcf4rjmSOXscnWSjuHhhAaMkpJz1Emg=;
 b=AAfvXRRXe0h4arbYp+2N95ipkp
 fN9HBOLagL5b/W9jg6CKHhsZU2VV1CzHWNReHI8uFJh77nqMYQGin/KiQKXAImoffFVm1vLu6SLLn
 LDUbJZ6tq1Ixo73BnefuKeKibQ/LY23cRqG2rA6W0L5DEVqHMLuaNwSLqyTjHmndsT0qPN5rIUkvn
 PdNP7rltVD3Ol/ml5JUgZzBG7QdIOBuxSx62QbgXKE43XdxAMl3NALFbv3Lv1Iu/M87dXxqlrINJG
 6w9+PXo/FkxcTNJ589r2GbjXndAS9jEFmwDonm6j6vzQXLZCJYx66V6CDANx7QjCl5TExMv3NbkwP
 7h7cDFMg==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kgC7l-0004zf-2r
 for wireless-regdb@lists.infradead.org; Fri, 20 Nov 2020 19:31:14 +0000
Received: from mail-ot1-f71.google.com ([209.85.210.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1kgC7j-0002lb-Vw
 for wireless-regdb@lists.infradead.org; Fri, 20 Nov 2020 19:31:12 +0000
Received: by mail-ot1-f71.google.com with SMTP id e59so4022836otb.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 20 Nov 2020 11:31:11 -0800 (PST)
Date: Fri, 20 Nov 2020 13:31:09 -0600
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20201120193109.GP5439@ubuntu-x1>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [wireless-regdb] [ANN] wireless-regdb: master-2020-11-20
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
To: wireless-regdb@lists.infradead.org
Cc: linux-wireless@vger.kernel.org
List-ID: <wireless-regdb@lists.infradead.org>

A new release of wireless-regdb (master-2020-11-20) is available at:

https://www.kernel.org/pub/software/network/wireless-regdb/wireless-regdb-2020.11.20.tar.xz

The short log of changes since the master-2020-04-29 release is below.

Thanks,
Seth

---

Abdul Rauf (1):
      wireless-regdb: Update regulatory rules for Pakistan (PK) on 5GHz

Pavel Starosek (1):
      wireless-regdb: Update regulatory rules for Kazakhstan (KZ)

Robert Marko (1):
      wireless-regdb: Update regulatory rules for Croatia (HR)

Seth Forshee (3):
      wireless-regdb: update regulatory rules for Egypt (EG)
      wireless-regdb: update 5.8 GHz regulatory rule for GB
      wireless-regdb: update regulatory database based on preceding changes

bkil (1):
      wireless-regdb: restore channel 12 & 13 limitation in the US

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

