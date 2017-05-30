Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
 MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Owner; bh=c1ld/St3QtOOIZVGk7y5tVA3ke7NsaV0M6f79tIZ1zA=;
 b=WYm
 kguJ2hG4MtoL7seK8sGN2RBjW1zqP7qPtUwUVKBerb3seiY5KBceAEdqNDo5x/rHeRXNG3H8bk0zc
 5j0IERa+WJrz69LobnN1Nj0za9/P4MnpPukmza3gUG4UL1i3RpqNXbjQc7fWCGRD4ZTqUtjWYyjDt
 fPZKS34/NO3vqN6ucJQUW5szrVQoB2LiFXpvZMHwj2plH4BRiY8mOZ+gr3naCA7Ky3ns1GDIh1yo8
 ik7vvDdkgth42OZTqCRMySEkGN4lTFJH9oHRHFE325Zi31vChwMc+KPwI2OHB7p8WWJhjnMQ4eLsy
 YYRVSoBgatYl0a8BMDyl/vVyU8fxuoQ==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209;
 h=Content-Transfer-Encoding:Content-Type:
 To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ztW/tvc5iduSMFMlaxCPHm6ryZclN+t7/tNM5p/MzcM=;
 b=SkS0o3b/QKpMUp+HoMsFl+oFLk
 7ZMkaoTdGk29OhRU0kOaJHhCpeT9Ucsfrjmu30ORjhk85Lunerz5bCWHnKGuZG+k3KToaA/jMT3ZO
 uK+ny3tfJVlFp4QH7w5+zlpLxiuYHPJeP9Hwb1Sy0HYLn9HQPc+tMuqkcZJYsI07hZUwXhPwZp/1h
 96velwOM/t0sDocW9b5ATxmSKtn6vANQbYXrQ9XqAY8rcI7hJx8BtD4zRfup+3bsOFTxXGrWgNCwz
 Bd5zmMVhHPs/K0S014a/+kTt05fG6Iggrn4eUlQKaEATvsvKKNF8TGvhrPf98wp645dj4gNPT3LQy
 /m47jRCw==;
Received: from mail-oi0-x22b.google.com ([2607:f8b0:4003:c06::22b])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dFdmh-0000Ff-49
 for wireless-regdb@lists.infradead.org; Tue, 30 May 2017 09:49:52 +0000
Received: by mail-oi0-x22b.google.com with SMTP id b204so104680012oii.1 for
 <wireless-regdb@lists.infradead.org>; Tue, 30 May 2017 02:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hrt-email.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=ztW/tvc5iduSMFMlaxCPHm6ryZclN+t7/tNM5p/MzcM=;
 b=YDw67Yuqbc1Oedc3d+d1N4kj9BVbE5IVZp/NCz2AnmoaV1vueQf1sSjFOxdkH/wXMg
 ECVilonn+imBEpZKYk04vCYKoyVTnkD3mYBlLEnDoeGIuYnYOCHw3YYO86NPE4K8cZmY
 QMSkR4c7qjTMcykR8uMo34Ua2kYw0cGdv1Ze1wzgB5aM6rEK9g0StGUBcqEu1TzvPYYx
 C3fVn3Yu5CoffkGV26V9bffOqoDH1i2W3iwlLzX4//HPTxqTFlvDmbjKYXH3t0ONHHh9
 YEnWUNLbjSdZimi6zklIqMiivhIsG1GwTgN/+nLzyTa/cDv9PA7R23vsdo7snPMHrMej
 Mlaw==
MIME-Version: 1.0
From: Mauro Barbieri <mb@hrt.email>
Date: Tue, 30 May 2017 11:49:27 +0200
Message-ID: <CAOjtFLk8yPzHP2zUhEB=nY636K1NRxT8z8oonv7K3ibSHZ-G9A@mail.gmail.com>
Subject: [wireless-regdb] Official vs latest releases
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
Content-Transfer-Encoding: 8bit
To: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

Hello everybody,

Please excuse me for this newcomer question. I googled around without
finding the answer:

I found the official wireless-regdb
(http://drvbp1.linux-foundation.org/~mcgrof/rel-html/wireless-regdb/)
and many updated releases
(https://git.kernel.org/pub/scm/linux/kernel/git/sforshee/wireless-regdb.git).
Do you know what “official” means ?

Thank you in advance
Mauro

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
