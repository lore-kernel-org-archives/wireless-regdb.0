Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
 List-Owner; bh=SzbjW9oHxAhW0kq6cJR4y4zxddFezTmNUuNWE8NTgK4=;
 b=U72itdRN4ruWqr
 Ig9gLiKwP5LkD6bLe4Ds5STRlzh820Y09IxKpWUhh9+PU8W9SYl4rWn5wKSQEUdSGNzd9M0IVSaH0
 GbtrGTnVz/863Q6jqRn1fY2F8ss+fnJl9XmgY61UntbBGa/s5kiSuj0kPG4U3iKN7okyLi5dgfF/h
 EHLJ7jWPcnhkq7dyxTKJyVoWusCOOXEVf7hNffOYY174wjW+Togq91jP6C5aP0J0S58jzYMMABwwJ
 qg+gPiNySVISfOz2fk0kR1GiCuJNnv8oLNtGc8/nc64BQ4eToTkpTvE2KzY+ck1spZOqpyhnoGafR
 +BAPaPVQCIO8Hv806ofw==;
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qz1Ky-00CABp-03
	for wireless-regdb@lists.infradead.org;
	Fri, 03 Nov 2023 21:04:18 +0000
Received: by mail-yw1-x1136.google.com with SMTP id
 00721157ae682-5a7b3d33663so30252377b3.3 for
 <wireless-regdb@lists.infradead.org>; Fri, 03 Nov 2023 14:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20230601; t=1699045454; x=1699650254; darn=lists.infradead.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to; bh=qy3OuAgfwsXLCV1yZj84+HeyH48ULIPhiiEV5yyrxBc=;
 b=N7G9aQgCJTWboB1eRxPhG0kwgO3GZJDCM4EU9zX+nz0i0Vd6SD9ZXJ+iCyuMhdSNwi
 qTv+AzS1giLtGzM5enYDMosigSEn44327l+XY1WW6jZCz4rB3xm9P6LST27P6JjBLVrz
 FagDNF72LodpmQ1cODr4Cs3ZOsRlHfcypyH5SeGQm8mQ7evswk4+0/BUiQdQpbZwqz3Y
 KS9C76Vkas0zfVFsqWyLLTDbKnqkVbvlQhQC3iYDzB/1IgEZmRM1IKRFYnE6mxgkRscS
 2YqztTxJDuj9ni8qEy8fBDRdT/0v3FfNNO7e0XhEt4A53d5rgsVan/i1rHWPmgA76ZEn iExw==
MIME-Version: 1.0
From: Diego Garcia del Rio <garci66@gmail.com>
Date: Fri, 3 Nov 2023 18:04:03 -0300
Message-ID: <CAL4zwzyGT2YdMWU3iOpE6q8kd=TKb4=cSFZud_vPpoid2A-SSw@mail.gmail.com>
Subject: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Argentina (AR) on 6GHz
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
To: linux-wireless@vger.kernel.org
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Dear wireless-regdb / linux-wireless list members,

Argentina approved, in may 2023, the use of the 6GHz band for indoor
use. The specific decree can be consulted here :
https://www.boletinoficial.gob.ar/detalleAviso/primera/287126/20230524
but the specific technical addendum can be read at the link "Anexo 1"
at the end of that document.

The main changes are that operation on the band  5925-7125 MHz is
allowed at an EIRP of 30dBm for APs and 24dBm for clients. The APs
must also follow a maximum Power Spectral Density 5dBm/MHz  and
clients must restrict themselves to -1 dBm/MHz EIRP PSD.

I wasn't sure how to express the PSD requirements in the txt file nor
how (or if its possible at all) to distinguish APs from clients.

The given PSD limits would mean 18dBm for an AP at 20MHz, and 3dBm for
each doubling in frequency, so a max of 27dBm for 160MHz APs)  while
for clients, it would be 12dBm for a 20MHz channel and again, 3dBm
plus for each doubling in channel width  (maximum of 21 dBm for a
160MHz channel).

I believe that basically copying the FCC restrictions for the 6GHz
band would probably be enough, but I was not 100% sure.

Thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

