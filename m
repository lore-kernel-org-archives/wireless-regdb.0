Return-path: 
 <wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org>
Received: from shadbolt.e.decadent.org.uk ([88.96.1.126])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtRNd-00046q-Dv
 for wireless-regdb@lists.infradead.org; Sun, 30 Jun 2013 23:50:07 +0000
Message-ID: <1372636171.5155.56.camel@deadeye.wl.decadent.org.uk>
From: Ben Hutchings <ben@decadent.org.uk>
Date: Mon, 01 Jul 2013 00:49:31 +0100
Mime-Version: 1.0
Subject: [wireless-regdb] [PATCH] reglib: Validate all structure and array
	lengths
List-Unsubscribe: 
 <http://lists.infradead.org/mailman/options/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/wireless-regdb/>
List-Post: <mailto:wireless-regdb@lists.infradead.org>
List-Help: <mailto:wireless-regdb-request@lists.infradead.org?subject=help>
List-Subscribe: 
 <http://lists.infradead.org/mailman/listinfo/wireless-regdb>, 
 <mailto:wireless-regdb-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2121621616753855357=="
Sender: "wireless-regdb" <wireless-regdb-bounces@lists.infradead.org>
Errors-To: 
 wireless-regdb-bounces+johannes=sipsolutions.net@lists.infradead.org
To: "Luis R. Rodriguez" <mcgrof@do-not-panic.com>
Cc: wireless-regdb@lists.infradead.org, alexandre@cmu.edu
List-ID: <wireless-regdb@lists.infradead.org>

--===============2121621616753855357==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-PKbvDjeS/9WCRqTDGjPi"


--=-PKbvDjeS/9WCRqTDGjPi
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Add checks that:
- Signature length does not exceed the file length (this was already
  checked, but did not account for signature lengths greater than 2 GB)
- Database length is long enough for all structures we expect in it
- Array length calculations will not overflow

To keep these checks simple, change the types of array length and index
variables to unsigned int (must be at least 32-bit, matching the file
format) and the types of byte-length variables to size_t.

Alexandre Rebert <alexandre@cmu.edu> reported and provided a test case
for the signature length issue; the others I found by inspection.

Signed-off-by: Ben Hutchings <ben@decadent.org.uk>
---
 reglib.c | 58 +++++++++++++++++++++++++++++++++++++++++-----------------
 reglib.h |  5 +++--
 2 files changed, 44 insertions(+), 19 deletions(-)

diff --git a/reglib.c b/reglib.c
index c4d00f8..224821b 100644
--- a/reglib.c
+++ b/reglib.c
@@ -10,6 +10,7 @@
 #include <stdbool.h>
 #include <unistd.h>
 #include <string.h>
+#include <limits.h>
=20
 #include <arpa/inet.h> /* ntohl */
=20
@@ -37,10 +38,16 @@
 #include "keys-gcrypt.c"
 #endif
=20
-void *reglib_get_file_ptr(uint8_t *db, int dblen, int structlen, uint32_t =
ptr)
+void *
+reglib_get_file_ptr(uint8_t *db, size_t dblen, size_t structlen, uint32_t =
ptr)
 {
 	uint32_t p =3D ntohl(ptr);
=20
+	if (structlen > dblen) {
+		fprintf(stderr, "Invalid database file, too short!\n");
+		exit(3);
+	}
+
 	if (p > dblen - structlen) {
 		fprintf(stderr, "Invalid database file, bad pointer!\n");
 		exit(3);
@@ -49,6 +56,17 @@ void *reglib_get_file_ptr(uint8_t *db, int dblen, int st=
ructlen, uint32_t ptr)
 	return (void *)(db + p);
 }
=20
+static size_t
+reglib_array_len(size_t baselen, unsigned int elemcount, size_t elemlen)
+{
+	if (elemcount > (SIZE_MAX - baselen) / elemlen) {
+		fprintf(stderr, "Invalid database file, count too large!\n");
+		exit(3);
+	}
+
+	return baselen + elemcount * elemlen;
+}
+
 /*
  * reglib_verify_db_signature():
  *
@@ -59,7 +77,7 @@ void *reglib_get_file_ptr(uint8_t *db, int dblen, int str=
uctlen, uint32_t ptr)
  */
=20
 #ifdef USE_OPENSSL
-int reglib_verify_db_signature(uint8_t *db, int dblen, int siglen)
+int reglib_verify_db_signature(uint8_t *db, size_t dblen, size_t siglen)
 {
 	RSA *rsa;
 	uint8_t hash[SHA_DIGEST_LENGTH];
@@ -118,7 +136,7 @@ out:
 #endif /* USE_OPENSSL */
=20
 #ifdef USE_GCRYPT
-int reglib_verify_db_signature(uint8_t *db, int dblen, int siglen)
+int reglib_verify_db_signature(uint8_t *db, size_t dblen, size_t siglen)
 {
 	gcry_mpi_t mpi_e, mpi_n;
 	gcry_sexp_t rsa, signature, data;
@@ -180,7 +198,7 @@ out:
 #endif /* USE_GCRYPT */
=20
 #if !defined(USE_OPENSSL) && !defined(USE_GCRYPT)
-int reglib_verify_db_signature(uint8_t *db, int dblen, int siglen)
+int reglib_verify_db_signature(uint8_t *db, size_t dblen, size_t siglen)
 {
 	return 1;
 }
@@ -220,7 +238,7 @@ const struct reglib_regdb_ctx *reglib_malloc_regdb_ctx(=
const char *regdb_file)
 		return NULL;
 	}
=20
-	ctx->header =3D reglib_get_file_ptr(ctx->db, ctx->dblen,
+	ctx->header =3D reglib_get_file_ptr(ctx->db, ctx->real_dblen,
 					  sizeof(struct regdb_file_header),
 					  0);
 	header =3D ctx->header;
@@ -232,12 +250,13 @@ const struct reglib_regdb_ctx *reglib_malloc_regdb_ct=
x(const char *regdb_file)
 		goto err_out;
=20
 	ctx->siglen =3D ntohl(header->signature_length);
-	/* The actual dblen does not take into account the signature */
-	ctx->dblen =3D ctx->real_dblen - ctx->siglen;
=20
-	if (ctx->dblen <=3D sizeof(*header))
+	if (ctx->siglen > ctx->real_dblen - sizeof(*header))
 		goto err_out;
=20
+	/* The actual dblen does not take into account the signature */
+	ctx->dblen =3D ctx->real_dblen - ctx->siglen;
+
 	/* verify signature */
 	if (!reglib_verify_db_signature(ctx->db, ctx->dblen, ctx->siglen))
 		goto err_out;
@@ -272,7 +291,7 @@ void reglib_free_regdb_ctx(const struct reglib_regdb_ct=
x *regdb_ctx)
 	free(ctx);
 }
=20
-static void reg_rule2rd(uint8_t *db, int dblen,
+static void reg_rule2rd(uint8_t *db, size_t dblen,
 	uint32_t ruleptr, struct ieee80211_reg_rule *rd_reg_rule)
 {
 	struct regdb_file_reg_rule *rule;
@@ -303,18 +322,21 @@ country2rd(const struct reglib_regdb_ctx *ctx,
 {
 	struct regdb_file_reg_rules_collection *rcoll;
 	struct ieee80211_regdomain *rd;
-	int i, num_rules, size_of_rd;
+	unsigned int i, num_rules;
+	size_t size_of_rd;
=20
 	rcoll =3D reglib_get_file_ptr(ctx->db, ctx->dblen, sizeof(*rcoll),
 				    country->reg_collection_ptr);
 	num_rules =3D ntohl(rcoll->reg_rule_num);
 	/* re-get pointer with sanity checking for num_rules */
 	rcoll =3D reglib_get_file_ptr(ctx->db, ctx->dblen,
-			sizeof(*rcoll) + num_rules * sizeof(uint32_t),
-			country->reg_collection_ptr);
+				    reglib_array_len(sizeof(*rcoll), num_rules,
+						     sizeof(uint32_t)),
+				    country->reg_collection_ptr);
=20
-	size_of_rd =3D sizeof(struct ieee80211_regdomain) +
-		num_rules * sizeof(struct ieee80211_reg_rule);
+	size_of_rd =3D reglib_array_len(sizeof(struct ieee80211_regdomain),
+				      num_rules,
+				      sizeof(struct ieee80211_reg_rule));
=20
 	rd =3D malloc(size_of_rd);
 	if (!rd)
@@ -468,7 +490,8 @@ struct ieee80211_regdomain *
 reglib_intersect_rds(const struct ieee80211_regdomain *rd1,
 		     const struct ieee80211_regdomain *rd2)
 {
-	int r, size_of_regd;
+	int r;
+	size_t size_of_regd;
 	unsigned int x, y;
 	unsigned int num_rules =3D 0, rule_idx =3D 0;
 	const struct ieee80211_reg_rule *rule1, *rule2;
@@ -506,8 +529,9 @@ reglib_intersect_rds(const struct ieee80211_regdomain *=
rd1,
 	if (!num_rules)
 		return NULL;
=20
-	size_of_regd =3D sizeof(struct ieee80211_regdomain) +
-		((num_rules + 1) * sizeof(struct ieee80211_reg_rule));
+	size_of_regd =3D reglib_array_len(sizeof(struct ieee80211_regdomain),
+					num_rules + 1,
+					sizeof(struct ieee80211_reg_rule));
=20
 	rd =3D malloc(size_of_regd);
 	if (!rd)
diff --git a/reglib.h b/reglib.h
index 86087e3..57082fe 100644
--- a/reglib.h
+++ b/reglib.h
@@ -112,8 +112,9 @@ static inline uint32_t reglib_min(uint32_t a, uint32_t =
b)
 	return (a > b) ? b : a;
 }
=20
-void *reglib_get_file_ptr(uint8_t *db, int dblen, int structlen, uint32_t =
ptr);
-int reglib_verify_db_signature(uint8_t *db, int dblen, int siglen);
+void *
+reglib_get_file_ptr(uint8_t *db, size_t dblen, size_t structlen, uint32_t =
ptr);
+int reglib_verify_db_signature(uint8_t *db, size_t dblen, size_t siglen);
=20
 /**
  * reglib_malloc_regdb_ctx - create a regdb context for usage with reglib


--=-PKbvDjeS/9WCRqTDGjPi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIVAwUAUdDEC+e/yOyVhhEJAQrpsQ/+OJmTeb77TA+qxLHM2qZMDc+7tHMxOIYG
BQ+9xpAajLcip1kHjQgtMvm5MSH+DEZQk5McnTK86OYCPXdyxQrVA8ok8oeuLBpq
U2FxUthT1XAM+aXS/RbnLf3ySIKRSeV0O3SFzktgxy8wvR5P6b9KTPgHin5smjVN
zCEUqxtexsmrtqofGtuxci0OXDlVN5erX5Ne4rqNiT6HzJDG2e6YdhF69Nfus+NQ
bk3Wtr//YyWgioKyAWLDCiIw3AX5gZZwLdmG+doUG25tcGmqk3/Eryh/cwbnNjmD
T2IS2q6CNq0kqMxqq55rw1jfix8em9GFlyLi8Dn+WaR2oFJx5vqlz17Oj+3y6Yph
GEpwwjnk2Oq0DfmTg33ZHrcAr5kNA0QjcTDq0wlZvAKQh58y+qlWL72de1Dl5Dg1
Cqqy/RqspAaOq4GWF+zHmsylPqtD84+RmmTB+W8Z/V2EqC8+4oOEMrEImB63BQdB
nGfLlrOMkP6KQBlctalBbJOoGZqydqFvldw8qIP3CytMXWd4RfKo2HjnSMyfQKZB
PriQH+PdhabtiAofw+d4kc8sPmzk8wtdlu43VzBjpOQUxqB+AYQ7nyzfJnqmbNHn
FvsD0vN6+Hn1hSB6pa4ipZMNOUl0tGXR5C4g3q3aZsmDKgBNpc6kfXQbs1eboVwm
odrj2mXBZNA=
=Czpy
-----END PGP SIGNATURE-----

--=-PKbvDjeS/9WCRqTDGjPi--


--===============2121621616753855357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

_______________________________________________
wireless-regdb mailing list
wireless-regdb@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/wireless-regdb

--===============2121621616753855357==--


