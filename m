Return-Path: <wireless-regdb-bounces+wireless-regdb=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 363F6C47258
	for <wireless-regdb@archiver.kernel.org>; Tue, 23 Jan 2024 08:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P6ZIPVZ3rkzWdjvuaeLmtoqe3oZ8np35vNf1vOtsM1k=; b=UKpL7K+/WvClDd6iG2RAPRuBoP
	RC79wGesQ5Ow1wFFbd/gkK9nuZegK2neM1HmGgvbDxhI1v4PWhCWFprJPOd7cvTNKx7wg4a6E90W4
	VQR6z9dgtzir3Z7zJFU+lbu1z/vCV9hEBqbYlhN00NOZ63OFkUtL7Ag3FkgiG3Hec473kqxngEDOf
	VCoBE6EPcrwbzGk2QhY+dxf7fPaxVHgMFYxVdsi0t+ONMAoQS3pcaQ+RDTTecKvICmIsuKnnx6Vlg
	hyVXpKlZ0ubo6jVwdI8tylQYBGpJkLYrgnDFMyKYlHHjI/RpKlgnfIRdVxvdRIrg2cutGxfMkuA6/
	Yp/0rq0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSBlB-00FTQ2-01;
	Tue, 23 Jan 2024 08:03:53 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:242:246e::2] helo=sipsolutions.net)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSBl8-00FTP7-1r
	for wireless-regdb@lists.infradead.org;
	Tue, 23 Jan 2024 08:03:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:To:From:Subject:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=P6ZIPVZ3rkzWdjvuaeLmtoqe3oZ8np35vNf1vOtsM1k=;
	t=1705997030; x=1707206630; b=I+olkzlxnG+G5fUFzR3pf/3KUOSc64euh/9bDr/yIe6mI2w
	uKxvs+tYB1h4ZmfcicPp+ej0I4UacnPFBP8BnYZIN2ehwg41mdN4YaukyLK0o25cJeY6ztFjh5SrE
	WVGYAbVYXFadv/ZaiznR1OUgT5AEt2XX5lvRcuAubFxc77qM0IwUghveEQ45s5dFbaj+WFO01ItZ0
	sg59/tV2yaAnh1H2+H0/QIF887i1HHeMya1dkgs9hhB5fVXGKBWSk1fk3FZoyrO3+FqFg8rEnorx1
	1lpJQgmqV9mCJJv0CaWDg6IOCgUpQB5rE/ekvIKKpr1BuTmZ9y073euUiH63F3Gw==;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.97)
	(envelope-from <johannes@sipsolutions.net>)
	id 1rSBl5-0000000EuiA-3PQK;
	Tue, 23 Jan 2024 09:03:48 +0100
Message-ID: <daa219cf533d7ccf09bd8991ac174086b908a860.camel@sipsolutions.net>
Subject: Re: [PATCH] wireless-regdb: Correct format of AU definitions for
 genregdb.awk
From: Johannes Berg <johannes@sipsolutions.net>
To: "Tuck, Lawrence J C (Lawrence)" <ljctuck@avaya.com>, 
	"wireless-regdb@lists.infradead.org"
	 <wireless-regdb@lists.infradead.org>
Date: Tue, 23 Jan 2024 09:03:46 +0100
In-Reply-To: <e5aefc295fbb78bc464be939e50a1b47ca6b2cb4.camel@sipsolutions.net>
References: <20240112040217.24356-1-me@ndoo.sg>
	 <BY5PR15MB478732869CAB0F4914C1E34FB7742@BY5PR15MB4787.namprd15.prod.outlook.com>
	 <e5aefc295fbb78bc464be939e50a1b47ca6b2cb4.camel@sipsolutions.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_000350_615202_A353AF16 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
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

On Tue, 2024-01-23 at 08:59 +0100, Johannes Berg wrote:
> Hi,
>=20
> > in the genregdb.awk code generator.
>=20
> Bit confused, where is that generator? And why not just fix the issue
> there?

Oh, you're thinking of the *ancient* kernel thing? That got removed in
kernel 4.15, and even the old 4.14 longterm is now EOL...

I'd say we don't really need to support that upstream this many years
later.

johannes

