Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsoZv-0002lt-2X
 for wireless-regdb@lists.infradead.org; Tue, 17 Dec 2013 06:56:27 +0000
Received: by mail-wg0-f42.google.com with SMTP id a1so2816478wgh.3 for
 <wireless-regdb@lists.infradead.org>; Mon, 16 Dec 2013 22:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com;
 s=20120113; h=mime-version:from:date:message-id:subject:to:cc:content-type;
 bh=rHcsNg9Ix975558QAiMpY2pvxM/mMAD312DmAlTXGpY=;
 b=WUykfAKfDczdtXd8s4HBlxvnIowtO4gKvpj+CRGN7T7LvaOAbmsh1GZxCKqYCOFpFK
 pHL80DAbd+ml+XkBOdJqm107QBrUBwECmg76uyedMCaWx0DL3bpLCsjQojDYU2tQ/3OO
 Z1onUsdaNi/ahmYUPbi9KFBXUHmaQgZzuj8ZNkoLFg4oglSXSjJ7gvxyoeJkV/1PRCOH
 rVFhkdQWr7JAsm8UpNODNEGltIjRoDlxml1T0w9WG2XDstbOp47rUut9EC8Sn3SXYKxQ
 IilxLLR1GwvU8FyOSe4HgchGKH6RDbtjLXPTYpU+WUt1tIhb8iQxQOM+TqAvyFkciAWW Y17g==
MIME-Version: 1.0
From: Krishna Chaitanya <chaitanya.mgit@gmail.com>
Date: Tue, 17 Dec 2013 12:20:37 +0530
Message-ID: <CABPxzYJSBagxbz4nd8=Qt_HbG4ecqe=-cbzi0N4JDPCwDE42Mg@mail.gmail.com>
Subject: [wireless-regdb] CRDA: Build Fail: Database signature verification
	failed
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
To: John Linville <linville@tuxdriver.com>, Luis Rodriguez <mcgrof@do-not-panic.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hi,

With the latest git source, i am seeing a build failure with the below error.

  LD   crda
  CC   intersect.o
  LD   intersect
  CC   regdbdump.o
  LD   regdbdump
  CC   db2rd.o
  LD   db2rd
  CC   optimize.o
  LD   optimize
  CHK  /usr/lib/crda/regulatory.bin
Database signature verification failed.
Invalid or empty regulatory file, note: a binary regulatory file should be used.
make: *** [verify] Error 234

Is there something wrong with the certificate?

-- 
Thanks,
Regards,
Chaitanya T K.

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

