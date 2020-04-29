Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20170209; h=Sender:
 Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=9NGqGBq2hoI8ZtQWGQGm7RSPMw2hq1X4ILbTP6OxmwY=;
 b=X1jXUjCv2RwI2l
 5Xg04Cevac2mVpTqPoqS+NN1VTVvK2AdyJDu75W+hkzHIhCXwnqcMimhXkdtD2ADaLjSoNku/Kolj
 KSDlyq0PXFeLXBSVkfasccSh6gOeJ2Wrv1CvX6Yn8I8NComelAEtvdgh0LbXwVoqCXTG0mvjINEy2
 cUZZE6JdCisNbhy5baL7mJJjIAcWothoj/kfwDh7fZYNvd97o/tXsElQDZv3qLkzFSvLiIHZEdQF6
 v3pmQfUjZGR+W81GGU9UsnDCBrq/zMjdMXwf5Jo1FhDOs6QcABo+0Vrb3yLDlR9YzxNV90jeDINFA
 CGwjjMO8KFRT2FfLF7vw==;
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqCE-0000Ck-5d
 for wireless-regdb@lists.infradead.org; Wed, 29 Apr 2020 17:08:31 +0000
Received: from mail-qk1-f198.google.com ([209.85.222.198])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <seth.forshee@canonical.com>) id 1jTqCC-0004j1-N4
 for wireless-regdb@lists.infradead.org; Wed, 29 Apr 2020 17:08:28 +0000
Received: by mail-qk1-f198.google.com with SMTP id z8so3362760qki.13 for
 <wireless-regdb@lists.infradead.org>; Wed, 29 Apr 2020 10:08:28 -0700 (PDT)
Date: Wed, 29 Apr 2020 12:08:25 -0500
From: Seth Forshee <seth.forshee@canonical.com>
Message-ID: <20200429170825.GS3158@ubuntu-x1>
References: <20200326114506.943-1-chaitanya.mgit@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326114506.943-1-chaitanya.mgit@gmail.com>
Subject: Re: [wireless-regdb] [PATCH] GB: Extend to cover DMG channels 5 & 6
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
To: chaitanya.mgit@gmail.com
Cc: linux-wireless@vger.kernel.org, wireless-regdb@lists.infradead.org
List-ID: <wireless-regdb@lists.infradead.org>

On Thu, Mar 26, 2020 at 05:15:06PM +0530, chaitanya.mgit@gmail.com wrote:
> From: Chaitanya Tata <chaitanya.mgit@gmail.com>
> 
> OFCOM extended the DMG band to include till 71GHz.
> 
> Signed-off-by: Chaitanya Tata <chaitanya.mgit@gmail.com>

Applied, thanks!

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

