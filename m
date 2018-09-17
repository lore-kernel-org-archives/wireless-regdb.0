Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
 List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
 Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
 bh=8cyZDVRGgHPrCPjbW055TNTcDOV4OdmKJCtxhci9SBY=;
 b=tCil3bC14WKTpdqEFJseaLNM2
 nwYerEMasMVHf+CJkkgvoxdsl8512gy6klCVXIUeqysrgLhoBw28YndtizFBLGOYmtHoEhSxOV9TU
 zwlM/HIle2R/wQ3FXLdp7AEKRPdPFWa2Lw7Znruol9CYxTqRGfb965JfsKXwcznV2PPgHW4mQFeO6
 BmOAv1SIJmBq+c0gHevIM2KLl4VrCYKR0F5b6xvxXxhNv+KH7j8AAZAc6LxyYRkZItgTQ8IKPFu+2
 me5WBsF30eFQT/VK6Q8gCvGlTla62NtUEh6YOY9Xen7WqaqRAZmOypulUw3PtLAi5sFwjgzWLZklz
 b6zDrORIQ==;
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g1oCk-0005VJ-F8
 for wireless-regdb@lists.infradead.org; Mon, 17 Sep 2018 07:44:23 +0000
Received: by mail-qk1-x742.google.com with SMTP id g13-v6so8502809qki.9 for
 <wireless-regdb@lists.infradead.org>; Mon, 17 Sep 2018 00:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=openmesh-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
 :references:mime-version;
 bh=suYQdzXPlHhc74YPQqMshuE3uN4Qx26zpOQjQfMnGcY=;
 b=oGduJnp0vpevXAiV7QNxM2NS+oQAKlcAXJJil2wzRi2MEDrEPbM6My8nLzIYT/TxL6
 OCZsQlrTYT7OXbRbnKFabTtrzkMG5gY/F3E8qK+lvWAvnX6toruWPRzwaqqdexz+dP6t
 3udnQKVLh/gBkASbgHxEGwk63IK9sAp6JNDge6hpqPWW+zK9Zl0lYsU+mcdh11qGcTMm
 QxUU37IVNfnV0s5MFbAWXvHgt78tXHG/XFDBMi4J6R96MW3lKs5rr58Ynfy8lDpwky/8
 N2YRVPAenmqlvVtZXKBht7mHJsR/Uc1RaiksKH3WDJ3IP6B7J39G8b3tJZUlmjeR/P2d
 33Mg==
From: Sven Eckelmann <sven.eckelmann@openmesh.com>
Date: Mon, 17 Sep 2018 09:44:05 +0200
Message-ID: <1800591.rykpzNG4et@bentobox>
In-Reply-To: <20180917074212.6739-2-sven.eckelmann@openmesh.com>
References: <20180917074212.6739-1-sven.eckelmann@openmesh.com>
 <20180917074212.6739-2-sven.eckelmann@openmesh.com>
MIME-Version: 1.0
Subject: Re: [wireless-regdb] [PATCH 2/2] wireless-regdb: Sync DE with ETSI
 EN 301 893 V2.1.1 (2017-05)
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1372671235460599880=="
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: seth.forshee@canonical.com
Cc: wireless-regdb@lists.infradead.org, linux-wireless@vger.kernel.org, Simon Wunderlich <simon.wunderlich@openmesh.com>, Shashidhar Lakkavalli <shashidhar.lakkavalli@openmesh.com>
List-ID: <wireless-regdb@lists.infradead.org>

--===============1372671235460599880==
Content-Type: multipart/signed; boundary="nextPart6461430.fRXuHVCLLc"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart6461430.fRXuHVCLLc
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Montag, 17. September 2018 09:42:12 CEST Sven Eckelmann wrote:
[...]
> diff --git a/db.txt b/db.txt
> index 7f978e1..f406ac0 100644
> --- a/db.txt
> +++ b/db.txt
> @@ -379,7 +379,7 @@ country CZ: DFS-ETSI
>  country DE: DFS-ETSI
>  	(2400 - 2483.5 @ 40), (100 mW)
>  	(5150 - 5250 @ 80), (100 mW), NO-OUTDOOR, AUTO-BW, wmmrule=ETSI
> -	(5250 - 5350 @ 80), (100 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
> +	(5250 - 5350 @ 80), (200 mW), NO-OUTDOOR, DFS, AUTO-BW, wmmrule=ETSI
>  	(5470 - 5725 @ 160), (500 mW), DFS, wmmrule=ETSI
>  	# short range devices (ETSI EN 300 440-1)
>  	(5725 - 5875 @ 80), (25 mW)

Grml, I had only one task.... still copied it to the wrong line

Kind regards,
	Sven
--nextPart6461430.fRXuHVCLLc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlufW0UACgkQXYcKB8Em
e0ZB4A//dEdwTK2Jpa+lIuiup4LNIh3yf9inmr+AB5ueTfdiWScjoomuKu6xHaKw
nFBg4Q1pr1lLYxR+GjZafLTvCdniMUPwnBwjJRKyeTFlK8dCu4tsOq9QPRRsGaQf
xeroN8IY8l6umyHIOWJ+qEY+rdWWeUB+nQjbjyx9zPTIs+CUROgjn4wB0joRgesL
BZJmcYVPGJCBGJwSrf2DVj2YnHVuLSuV77PFVhToZ8maAx/vEmYoj3AlNyYbfXwm
BE0BQq66tCPCnyStSdwY9Xyojy4cm5JoXfYECGphmaSdfaAW/t5LWd2AK82tmtPN
fSG25gKDIW+d4sJ3CafwL/XnQ2HQDYD+Cgkf+ZBjT7w64GlX/NXQ+omwOVfO9Edb
ehnrB0W7EUF5VowyAeqk/YWg1qgre16ao2THGU5/KFlap/L1NjPLaqGH+w7yBDe/
HOWMX3oaSOtgd785p8pN8TDM+vn00kAM7zut76pWZSPmT44W53Q5yMtkJKE2Zho/
TcIsiwCUJFrWm1J7WrQ2GDcAE5IrWnm+6fbx1xXy7fFsdfAjFw0bUMKsX82lZR7U
regpS7xhJO4SgjHMQBPAJ/VHEqgGtQAdWsFpsjAH78ZDAo6udfmCduDLBKM/hTkO
xrYd6Ubgk1K9HXeMFOyJERqtVJfkzsiXngq7yYvmT+bzDadOqIo=
=5m2m
-----END PGP SIGNATURE-----

--nextPart6461430.fRXuHVCLLc--



--===============1372671235460599880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============1372671235460599880==--



