Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=bjtrNLpRFu/1GKydj41UsQlIxDD1jFDoY7fCcP5Hdi4=;
 b=QrS6WkulcRo+EL
 iZTXM3wMa8p6igDZMy9BZRgsUihNabsDuEIuoHC15XEK9kuzROMrUSEjxC21SZXC5lj4XULs/qEko
 I+qUY13NuV/iiCiggfJLE5KQAZulP9ICxzeQQZELeV2DcbzYl/2J88UCsIvd940girLFHW+op2E4d
 Udzbi5tuWMzIfrt3fpsmS/ZET2tF9ph/pneTzf08Dl8L9dILaEuzeLeXQ/YET1meEKEXOm2ZLX5fh
 AOmbpzBoR3aUE87w4Z9DqrvaVTDYiWoTxRDyNQYuZNgS1V6MCm7rVOFTBOwKCDQgCM46VAo8G/k0I
 4f/2BSseCqb8YYcqK0Ng==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngu0H-00622R-ML
 for wireless-regdb@lists.infradead.org; Tue, 19 Apr 2022 19:59:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650398350;
 bh=ps25Y9YBoQMTo51Yk/ikIyDI3NR0xlSP2IBMb9AXZN8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VD6nOKEkrsmmltIygDLGTU+vXztijWN8lrAWaLf3BFAFPJeIZ1woXjAP1VeeyD+jz
 ravdkZ/ZbQCS39XayhIrHQaOp+c+oEEQ0jR4YWCWD9p6z7RbtCAcf+SHYnuBQwWhE3
 9PT/PiiI/2D1TrxUqW+Ewu4yVJ1eIAcOiTWRY2YpL3V1KHvW+UcqwLutGu0RNR5fPU
 4iL/tq1uf6mZDxsIp03daGX9ajkkVDG9rkvWqY7B1AqSh+wlPPWjeque9QDsoBaqvs
 cfdJuaWd7YNuWF0eqIftsr1REgYJ9ysOJUghTjVYGgNEyKI7dFb2W27BVySmOXV1qo
 DEHpb4bSKFn0w==
Date: Tue, 19 Apr 2022 14:59:09 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Yl8UjXhg695+Ts+5@ubuntu-x1>
References: 
	 <CAPRryQrHC2kC-dcokJyqSMiAFUjNJp2z6T9TCb=J+s0TvDzF8w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPRryQrHC2kC-dcokJyqSMiAFUjNJp2z6T9TCb=J+s0TvDzF8w@mail.gmail.com>
Subject: Re: [wireless-regdb] Regulatory update for 6 GHz operation in
 United States (US)
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
To: Dennis Bland <dennis@dbperformance.com>
Cc: wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Sun, Apr 17, 2022 at 11:15:55PM -0600, Dennis Bland wrote:
> It seems there was an earlier request on another forum to add the 6
> GHz band for country code US:
> 
> https://lkml.kernel.org/linux-wireless/Yb0HabN+Js2iWnOH@ubuntu-x1/T/#t
> 
> Not sure if a variation of this patch was already applied?  If not, I
> can take a look.

Nope, nothing was ever applied. Patches welcome :)

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

