Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lists.infradead.org; s=bombadil.20210309; h=Sender:
 Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
 List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
 References:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Owner; bh=alsjwrj0jcD5uYyfeKNBfMAW2sI2/5DRtzrQ8rxZgbU=;
 b=380j2R/FSoeQyr
 OSbc7VfhC3+g9fh0z/c4hjCZ+16X0qllAz7SsvMfx0RhYvyg8ctcTHsNlResRaft6XDLexWVSKa71
 EZX2nXT6ZrT4Wd1UzV/Z6SiISwiBHwwgMYJYCiHEw2t9/5WtheyxtaaszIm+IAf5V27b19UoQ6yWG
 ShregyCb35E3kuNrFLQlKVTrNN/Z+R9wv4yLMUOTiyGaS022dLFjDtOFt1Ii15ZwghOyR4/IcsXb2
 ll9ntPP23J3QXsy8yc95JPF4IKonOCAc7+gUHJTCgIQO8zatvlzknHRQ9MTQVJrKO0gtvsXiUfGgB
 7fJiFS0rzpUUl1JFT2Rw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npc5p-00Ha2Q-4y
 for wireless-regdb@lists.infradead.org; Fri, 13 May 2022 20:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1652474455;
 bh=n2cNjxJ7/Qn8xtC5FCBWKXsdJNNy6VKkCzFMLps+yIA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OdV4YZjkerNhTTWEQLyf8IShh1eb2jaUtPv83IWv/Ii6iT8VFmHwnDfZ9RrkOYHRo
 LMoniONAweYq424emVWeH0aL0cXQoJ8eqEJlR6jMYrXzeAzJTFTF8goK3bzJYhFguu
 blDBQdcDvMgiXL9d8YcobclB443ZB10OKbYhSGUMtN/O/eYhhbsQvnske0SJLlZOVI
 y0MZrOGivg+5lvK4iBOUGZ1dtJJMAgxYQdB2zQBW0AbY3YMg6uhTpPhKL7WGzWWi5p
 0+eBinCz/rwNvR1S4I4XjAgeZpvBsWR8ct8dI3JjN4ZOWFWHNN+AbQYX2Yj5Z59DS1
 69ACHVXA7dUXQ==
Date: Fri, 13 May 2022 15:40:53 -0500
From: Seth Forshee <sforshee@kernel.org>
Message-ID: <Yn7CVWzQ38CyyOw7@ubuntu-x1>
References: 
	 <CAPRryQpwcb2B=4qbUqG8mXF_Cz3tUpESYYxvZbR60kBSbw2vsg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPRryQpwcb2B=4qbUqG8mXF_Cz3tUpESYYxvZbR60kBSbw2vsg@mail.gmail.com>
Subject: Re: [wireless-regdb] EU/CEPT Decision for 6 GHz usage
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

On Fri, Apr 22, 2022 at 08:28:50AM -0600, Dennis Bland wrote:
> All EU/CEPT member countries ratifying 6 GHz operation should include
> this reference:
> 
> https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:32021D1067&from=EN
> 
> DE, ES, FR, HR, NL, NO already have 6 GHz band entries and local
> country approval references, and should include the above reference
> for completeness.  Note that the EU regulation specifies 23 dBm
> instead of 200 mW, and also includes a VLP (Very Low Power) mode that
> is permitted for outdoor and most mobile applications.

Unifying the rules for countries which have adopted the directive seems
like a good idea. I'm curious, are you inferring the countries which
have approved the directive from the rules in the database, or is there
some resource which shows the countries that have approved it?

Thanks,
Seth

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

