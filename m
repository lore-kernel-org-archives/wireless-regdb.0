Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=7cbHUjAGrPTZbqr3XE/m7K0oy9//iRGEYiy5Ir56T1A=;
 b=R1auB/Cj9TgQob
 5dcxW3iHoQovEjMhgHrm70cxlxp6j0I9pUzyFJD4jBIZh2LWge23M02G1GJKUnjSikEwkK5T4t/ll
 j1qMMe6JGN1ni5WIPCNP15X73aE0YkNm4nZsH9XBSMLpmNqgyB3TW4RPJjRq31EswApuVerVhtWZc
 Ls3akckIJzOo8eTdw26JFcXHJcQ2UwJcJNbJT/zAGT9VhQbK4GJ5qyyO8n7RZyk+4amhANsygcs+/
 UknK+khWnyzqJQsnEXcJXGQEa9r2k3cMwTioeX6BvnVkwEIPLaemgsetpsjkuvWEXv9hKU2yuDYwo
 AlDJ9qstO5bOzp6de/5w==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nonaX-007IBE-EC
 for wireless-regdb@lists.infradead.org; Wed, 11 May 2022 14:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652280314;
 bh=4emqUvocU097sO9W+zS/fxWNl/kZXPaTxF/+/3aijwA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=amrvuSWON3+2a+7/nCgU7vtimYV3QJFfkUJS/dO15nhEznOHZHLXcl3rbrBkR4e2n
 77KM1yBJEk7ETqNXRPWoYTQ6VoQ9iIv8kkAwb8D+4hDFh7CC/1N2Sly+vhrw22jXwx
 kKiENPOIqgJpgJ0uOtvNMWH4rY8nxSk/qfIV9fu2T/MHLJY4M7J5QiPO8aDExb6uoA
 udZiOxh1Q3iaqAp+/rGx+tqhqAkHBonTQsWu0SGNJHZdUm7ra9Bxz29b9/sZFVNDIy
 KPJICGmFlITRVynUeujo46hCkcstwdi/JR+0H6udpeQeNuNXMhEtvqdCvxmxRI6c8v
 3AaRnCx+25FwA==
Date: Wed, 11 May 2022 09:45:13 -0500
From: "sforshee@kernel.org" <sforshee@kernel.org>
Message-ID: <YnvL+XqurmpV3HyN@ubuntu-x1>
References: 
	 <DM4PR12MB524525E824BA0B505B4E48E1BCF59@DM4PR12MB5245.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM4PR12MB524525E824BA0B505B4E48E1BCF59@DM4PR12MB5245.namprd12.prod.outlook.com>
Subject: Re: [wireless-regdb] wireless-regdb: Update regulatory rules for
 Canada (CA) on 6GHz
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
To: Claudio Menendez <cmenendez@openleanux.ca>
Cc: "wireless-regdb@lists.infradead.org" <wireless-regdb@lists.infradead.org>, "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
List-ID: <wireless-regdb@lists.infradead.org>

On Wed, Apr 20, 2022 at 05:56:43PM +0000, Claudio Menendez wrote:
> Hi Seth,
> 
> I tried to commit diff to add the 6Ghz band for Canada on the db.txt, but I believe I did it wrong - sorry, I am a newbie at git.
> 
> Anyway, below you can see the resolution from ISED to allow indoor use on the 6 GHz band to a max channel of 320 with a max e.i.r.p of 24 dBm. The radio standard specification (RSS-248) is dated last November, and I did not see it in the latest version of the DB.txt.
> 
> Please advise if you need any clarification.

Thanks for the messages, and sorry about the delay in responding. I just
applied a patch to enable 6GHz in Canada. Note though that it has a
power limit of 12 dBm as a result of the PSD limits, which are not
currently supported directly in Linux or wireless-regdb. This is
described in detail in the patch description.

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

