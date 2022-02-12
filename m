Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=B3bhlURV0AdrwwIMLPSh68VipIsVm4aZDgc/sVropVo=;
 b=q8YSkph6djQoVM
 9txB8jT9jIWCrj6LeZsStR5c5+vgDuIlborSp7rLR82yv25UI2IDIXRflKNYPxxgpesNcdyKpNLKZ
 j2rJzvYM2ovoMUwHYSUNoNxp70RVYWr28NAoxCoyx6wNN1f64ux4AvJzriwciSamjoSPv7UCWc0n7
 h1sHNH5HpswHys3/QNsXyDc7gWmVfpWVTFJEl754Az8DDtbrdxzhVBr1Q02opoMc0zNBogZMoYr00
 TxNYccrCHOs2k8SdYuAouyGaK1V5WVLEw6d0d6LSaHoZ293ALDKU29XEpil5Vk2OJNPYk8VXtquNq
 WEaQXBYZXS0UEEcmw+uw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIuzP-00A8M4-1a
 for wireless-regdb@lists.infradead.org; Sat, 12 Feb 2022 16:11:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644682268;
 bh=S+J3OYPkNVUKura8Xz5Q42vkvZ472WVCdeIPO5pUKIA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eeOcxT7CDGAwQHP4OIb/+vh7tK5caLiJ5JPLSO0F+T66Fv838cTN1SCb6v3GQA103
 nghI9s5REB4L2QUTJGHjoqDx56PAHPoh6w59UZkBEMmcBDaioeUn+mS2KdtSPAEsZE
 CSc7j6QsEAzIkGqiZR5pf+2+Ajn7pgP650v3sWE5oxyD+LF7TtILuhc/75/RECxgrn
 wWe16KeBQBzdBxIGrJhhsAl9hIEwFCBgVBEwl/d+tuql+vSV6ninaFS6Ft2kOOLn/g
 AC1kagq/QUKATkuzLAfc2IthgLZ3SKUs9d3XLbbDCAa0T03tcDQZI2Q9j1qz8/Y2x5
 3//ZNObOT2x5w==
Date: Sat, 12 Feb 2022 10:11:07 -0600
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <YgfcG607RHL28pOP@ubuntu-x1>
References: <20220202225157.91989-1-xose.vazquez@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220202225157.91989-1-xose.vazquez@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] wireless-regdb: Update regulatory
 rules for Spain (ES) on 6GHz
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
To: Xose Vazquez Perez <xose.vazquez@gmail.com>
Cc: WIRELESS ML <linux-wireless@vger.kernel.org>, REGDB ML <wireless-regdb@lists.infradead.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Feb 02, 2022 at 11:51:57PM +0100, Xose Vazquez Perez wrote:
> Add WiFi 6E frequency band.
> 
> Sources:
> (EU) 2021/1067: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32021D1067
> BOE numero 308, de 24/12/202: Orden ETD/1449/2021: CNAF-2021 (page 302): https://www.boe.es/buscar/pdf/2021/BOE-A-2021-21346-consolidado.pdf
> 
> UN-167 RLANs en 6 GHz
> 
> Aplicaciones de uso común en la banda de 5945-6425 MHz.
> 
> De conformidad con la Decisión de Ejecución (UE) 2021/1067 de la Comisión, sobre el uso
> armonizado de la banda 5945-6425 MHz para sistemas de acceso inalámbrico, incluidas las
> redes de área local (WAS/RLAN), se permiten estas aplicaciones en la citada banda de
> frecuencias bajo la consideración de uso común con arreglo a las condiciones técnicas
> indicadas en el anexo a la citada Decisión.
> 
> Los dispositivos de baja potencia para uso en interiores (LPI), tendrán una potencia máxima
> de 23 dBm (p.i.r.e.), con una densidad de potencia p.i.r.e. media máxima de 10 dBm/MHz
> para las emisiones en banda y de -22 dBm/MHz para emisiones fuera de banda.
> 
> Los dispositivos de muy baja potencia para uso en interiores y en exteriores (VLP), tendrán
> una potencia máxima de 14 dBm (p.i.r.e.), con una densidad de potencia p.i.r.e. media
> máxima de 1 dBm/MHz para emisiones en banda, o hasta 10 dBm/MHz si funcionan con
> canalización que no supere los 20 MHz, y de -45 dBm/MHz para emisiones fuera de banda.
> 
> En cualquier caso, estos dispositivos deberán utilizar técnicas de acceso al espectro y
> mitigación de interferencias que garanticen los requisitos esenciales de la Directiva
> 2014/53/UE.
> 
> Cc: Seth Forshee <sforshee@kernel.org>
> Cc: WIRELESS ML <linux-wireless@vger.kernel.org>
> Cc: REGDB ML <wireless-regdb@lists.infradead.org>
> Signed-off-by: Xose Vazquez Perez <xose.vazquez@gmail.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb
