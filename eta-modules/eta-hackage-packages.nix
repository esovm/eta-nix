/* eta-hackage-packages.nix is an auto-generated file -- DO NOT EDIT! */
{ pkgs, stdenv, callPackage }:

self: {

  "aeson" = callPackage
    ({ mkDerivation, attoparsec, base, base-compat, base-orphans
     , base16-bytestring, bytestring, containers, deepseq, directory
     , dlist, fail, filepath, generic-deriving, ghc-prim, hashable
     , hashable-time, integer-logarithms, QuickCheck
     , quickcheck-instances, scientific, semigroups, stdenv, tagged
     , tasty, tasty-hunit, tasty-quickcheck, template-haskell, text
     , th-abstraction, time, time-locale-compat, transformers
     , transformers-compat, unordered-containers, uuid-types, vector
     }:
     mkDerivation {
       pname = "aeson";
       version = "1.4.0.0";
       sha256 = "042phqkabjrlrl3azr3ba9q7naz4c2cjl5nplbfz8iidpf6j0sli";
       libraryHaskellDepends = [
         attoparsec base base-compat bytestring containers deepseq dlist
         fail ghc-prim hashable scientific semigroups tagged
         template-haskell text th-abstraction time time-locale-compat
         transformers transformers-compat unordered-containers uuid-types
         vector
       ];
       testHaskellDepends = [
         attoparsec base base-compat base-orphans base16-bytestring
         bytestring containers directory dlist filepath generic-deriving
         ghc-prim hashable hashable-time integer-logarithms QuickCheck
         quickcheck-instances scientific semigroups tagged tasty tasty-hunit
         tasty-quickcheck template-haskell text time time-locale-compat
         transformers transformers-compat unordered-containers uuid-types
         vector
       ];
       homepage = "https://github.com/bos/aeson";
       description = "Fast JSON parsing and encoding";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "aeson-pretty" = callPackage
    ({ mkDerivation, aeson, base, base-compat, bytestring, scientific
     , stdenv, text, unordered-containers, vector
     }:
     mkDerivation {
       pname = "aeson-pretty";
       version = "0.8.5";
       sha256 = "1yd98972srlbkn0f2jhrb3f443j9wnq2fnw5gbxjxzmkcinfh5yx";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         aeson base base-compat bytestring scientific text
         unordered-containers vector
       ];
       homepage = "http://github.com/informatikr/aeson-pretty";
       description = "JSON pretty-printing library and command-line tool";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "affine" = callPackage
    ({ mkDerivation, alg, base, stdenv }:
     mkDerivation {
       pname = "affine";
       version = "0.1.1.0";
       sha256 = "094h5b5l755sm79mr47dm5brp2jvfd2g0mdz23mcw1pz57lm0c8i";
       libraryHaskellDepends = [ alg base ];
       description = "Affine spaces (generalized)";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "Agda" = callPackage
    ({ mkDerivation, alex, array, async, base, binary, blaze-html, boxes
     , bytestring, Cabal, containers, cpphs, data-hash, deepseq
     , directory, EdisonCore, edit-distance, emacs, equivalence, fail
     , filemanip, filepath, geniplate-mirror, gitrev, happy, hashable
     , hashtables, haskeline, ieee754, mtl, murmur-hash, pretty, process
     , regex-tdfa, semigroups, stdenv, stm, strict, template-haskell
     , text, time, transformers, unordered-containers, uri-encode, zlib
     }:
     mkDerivation {
       pname = "Agda";
       version = "2.5.4.1";
       sha256 = "0bxpibsk98n9xp42d92ma5vj2fam8rsnl61fbhr3askfjdvalnbp";
       isLibrary = true;
       isExecutable = true;
       enableSeparateDataOutput = true;
       setupHaskellDepends = [ base Cabal filemanip filepath process ];
       libraryHaskellDepends = [
         array async base binary blaze-html boxes bytestring containers
         data-hash deepseq directory EdisonCore edit-distance equivalence
         fail filepath geniplate-mirror gitrev hashable hashtables haskeline
         ieee754 mtl murmur-hash pretty process regex-tdfa semigroups stm
         strict template-haskell text time transformers unordered-containers
         uri-encode zlib
       ];
       libraryToolDepends = [ alex cpphs happy ];
       executableHaskellDepends = [ base directory filepath process ];
       executableToolDepends = [ emacs ];
       postInstall = ''
         files=("$data/share/ghc-"*"/"*"-ghc-"*"/Agda-"*"/lib/prim/Agda/"{Primitive.agda,Builtin"/"*.agda})
         for f in "''${files[@]}" ; do
           $out/bin/agda $f
         done
         for f in "''${files[@]}" ; do
           $out/bin/agda -c --no-main $f
         done
         $out/bin/agda-mode compile
       '';
       homepage = "http://wiki.portal.chalmers.se/agda/";
       description = "A dependently typed functional programming language and proof assistant";
       license = "unknown";
     }) {};

  "alex" = callPackage
    ({ mkDerivation, array, base, containers, directory, file-embed
     , happy, process, stdenv
     }:
     mkDerivation {
       pname = "alex";
       version = "3.2.4";
       sha256 = "0cpjixgsr0b2x4s6hz4aa6gnmjw9i7xd9nlfi8m37zqlidq4v3nm";
       isLibrary = false;
       isExecutable = true;
       enableSeparateDataOutput = true;
       executableHaskellDepends = [
         array base containers directory file-embed
       ];
       executableToolDepends = [ happy ];
       testHaskellDepends = [ base process ];
       homepage = "http://www.haskell.org/alex/";
       description = "Alex is a tool for generating lexical analysers in Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "alternators" = callPackage
    ({ mkDerivation, base, lens, mmorph, mtl, newtype-generics, stdenv
     , stm, transformers
     }:
     mkDerivation {
       pname = "alternators";
       version = "1.0.0.0";
       sha256 = "0ffk7xhx7n7h5mhb43ss6kprm9mzc0jzdnagz5wdsgqr8a5mnfa4";
       libraryHaskellDepends = [
         base lens mmorph mtl newtype-generics stm transformers
       ];
       homepage = "https://github.com/louispan/alternators#readme";
       description = "Handy functions when using transformers";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "amazonka-core" = callPackage
    ({ mkDerivation, aeson, attoparsec, base, bifunctors, bytestring
     , case-insensitive, conduit, conduit-extra, cryptonite
     , data-ordlist, deepseq, exceptions, hashable, http-client
     , http-conduit, http-types, lens, memory, mtl, QuickCheck
     , quickcheck-unicode, resourcet, scientific, semigroups, stdenv
     , tagged, tasty, tasty-hunit, tasty-quickcheck, template-haskell
     , text, time, transformers, transformers-compat
     , unordered-containers, xml-conduit, xml-types
     }:
     mkDerivation {
       pname = "amazonka-core";
       version = "1.6.0";
       sha256 = "1j9x17zhyxrg4ds5pdxfjdb4z7hpzn42cydx34j25h5d9avwbqdg";
       libraryHaskellDepends = [
         aeson attoparsec base bifunctors bytestring case-insensitive
         conduit conduit-extra cryptonite deepseq exceptions hashable
         http-client http-conduit http-types lens memory mtl resourcet
         scientific semigroups tagged text time transformers
         transformers-compat unordered-containers xml-conduit xml-types
       ];
       testHaskellDepends = [
         aeson base bytestring case-insensitive conduit data-ordlist
         http-conduit http-types lens QuickCheck quickcheck-unicode tasty
         tasty-hunit tasty-quickcheck template-haskell text time
       ];
       homepage = "https://github.com/brendanhay/amazonka";
       description = "Core data types and functionality for Amazonka libraries";
       license = stdenv.lib.licenses.mpl20;
     }) {};

  "ansi-terminal" = callPackage
    ({ mkDerivation, base, colour, stdenv }:
     mkDerivation {
       pname = "ansi-terminal";
       version = "0.8.0.4";
       sha256 = "0428gq8m3fdnb7ldcsyk97qcch76hcxbgh2666p6f76fs2qbhg7b";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [ base colour ];
       homepage = "https://github.com/feuerbach/ansi-terminal";
       description = "Simple ANSI terminal support, with Windows compatibility";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "api-builder" = callPackage
    ({ mkDerivation, aeson, base, bifunctors, bytestring, Cabal
     , containers, hspec, HTTP, http-client, http-client-tls, http-types
     , stdenv, text, tls, transformers
     }:
     mkDerivation {
       pname = "api-builder";
       version = "0.15.0.0";
       sha256 = "1bjqg484z9si3pyfwpvcakm0y71gca80bh6j1njc0qnjf2ddd3ad";
       libraryHaskellDepends = [
         aeson base bifunctors bytestring HTTP http-client http-client-tls
         http-types text tls transformers
       ];
       testHaskellDepends = [
         aeson base bytestring Cabal containers hspec http-client text
         transformers
       ];
       homepage = "https://github.com/intolerable/api-builder";
       description = "Library for easily building REST API wrappers in Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "array" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "array";
       version = "0.5.2.0";
       sha256 = "12v83s2imxb3p2crnlzrpjh0nk6lpysw9bdk9yahs6f37csa5jaj";
       libraryHaskellDepends = [ base ];
       description = "Mutable and immutable arrays";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "attoparsec" = callPackage
    ({ mkDerivation, array, base, bytestring, case-insensitive
     , containers, criterion, deepseq, directory, fail, filepath
     , ghc-prim, http-types, parsec, QuickCheck, quickcheck-unicode
     , scientific, semigroups, stdenv, tasty, tasty-quickcheck, text
     , transformers, unordered-containers, vector
     }:
     mkDerivation {
       pname = "attoparsec";
       version = "0.13.2.0";
       sha256 = "1wrwj359r0kgrcc2kw1yl9cpvkihhq0qm3i12kw39707s6m2x0pd";
       libraryHaskellDepends = [
         array base bytestring containers deepseq fail scientific semigroups
         text transformers
       ];
       testHaskellDepends = [
         array base bytestring deepseq fail QuickCheck quickcheck-unicode
         scientific semigroups tasty tasty-quickcheck text transformers
         vector
       ];
       benchmarkHaskellDepends = [
         array base bytestring case-insensitive containers criterion deepseq
         directory fail filepath ghc-prim http-types parsec scientific
         semigroups text transformers unordered-containers vector
       ];
       homepage = "https://github.com/bos/attoparsec";
       description = "Fast combinator parsing for bytestrings and text";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "avro" = callPackage
    ({ mkDerivation, aeson, array, base, base16-bytestring, binary
     , bytestring, containers, data-binary-ieee754, directory, entropy
     , extra, fail, hashable, hspec, lens, lens-aeson, mtl, pure-zlib
     , QuickCheck, scientific, semigroups, stdenv, tagged
     , template-haskell, text, transformers, unordered-containers
     , vector
     }:
     mkDerivation {
       pname = "avro";
       version = "0.3.2.0";
       sha256 = "046nlq75p2ng5fm4nd4zv6lna1qvivfmcxq7kypw7hra60bkj1a0";
       libraryHaskellDepends = [
         aeson array base base16-bytestring binary bytestring containers
         data-binary-ieee754 entropy fail hashable mtl pure-zlib scientific
         semigroups tagged template-haskell text unordered-containers vector
       ];
       testHaskellDepends = [
         aeson array base base16-bytestring binary bytestring containers
         directory entropy extra fail hashable hspec lens lens-aeson mtl
         pure-zlib QuickCheck scientific semigroups tagged template-haskell
         text transformers unordered-containers vector
       ];
       homepage = "https://github.com/GaloisInc/avro.git#readme";
       description = "Avro serialization support for Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "base16-bytestring" = callPackage
    ({ mkDerivation, base, bytestring, ghc-prim, stdenv }:
     mkDerivation {
       pname = "base16-bytestring";
       version = "0.1.1.6";
       sha256 = "0jf40m3yijqw6wd1rwwvviww46fasphaay9m9rgqyhf5aahnbzjs";
       libraryHaskellDepends = [ base bytestring ghc-prim ];
       homepage = "http://github.com/bos/base16-bytestring";
       description = "Fast base16 (hex) encoding and decoding for ByteStrings";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "base-compat" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "base-compat";
       version = "0.10.4";
       sha256 = "0ksp990gxs731mq19rzbxrbs43nazfljjc8krlx5bjqblw3kfs8d";
       libraryHaskellDepends = [ base ];
       description = "A compatibility layer for base";
       license = stdenv.lib.licenses.mit;
     }) {};

  "basement" = callPackage
    ({ mkDerivation, base, ghc-prim, stdenv }:
     mkDerivation {
       pname = "basement";
       version = "0.0.6";
       sha256 = "1xszp4nf55hr6iglqf1dx1yb9pgm3gpw81wwpjkwdn0602a3p8lw";
       libraryHaskellDepends = [ base ghc-prim ];
       homepage = "https://github.com/haskell-foundation/foundation";
       description = "Foundation scrap box of array & string";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "base-orphans" = callPackage
    ({ mkDerivation, base, ghc-prim, hspec, hspec-discover, QuickCheck
     , stdenv
     }:
     mkDerivation {
       pname = "base-orphans";
       version = "0.8";
       sha256 = "05s8s9zbnvcwnnd8z23jbdcjpd1h07c8fgaw0g9jl8mlpxbcdvmc";
       libraryHaskellDepends = [ base ghc-prim ];
       testHaskellDepends = [ base hspec QuickCheck ];
       testToolDepends = [ hspec-discover ];
       homepage = "https://github.com/haskell-compat/base-orphans#readme";
       description = "Backwards-compatible orphan instances for base";
       license = stdenv.lib.licenses.mit;
     }) {};

  "base-prelude" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "base-prelude";
       version = "1.2.0.1";
       sha256 = "811a494f5996ff1012be15a1236cc4afb6a67fc2a9f54fdb53f4e94a8fde119e";
       libraryHaskellDepends = [ base ];
       homepage = "https://github.com/nikita-volkov/base-prelude";
       description = "The most complete prelude formed solely from the \"base\" package";
       license = stdenv.lib.licenses.mit;
     }) {};

  "basic-prelude" = callPackage
    ({ mkDerivation, base, bytestring, containers, filepath, hashable
     , stdenv, text, transformers, unordered-containers, vector
     }:
     mkDerivation {
       pname = "basic-prelude";
       version = "0.7.0";
       sha256 = "0yckmnvm6i4vw0mykj4fzl4ldsf67v8d2h0vp1bakyj84n4myx8h";
       libraryHaskellDepends = [
         base bytestring containers filepath hashable text transformers
         unordered-containers vector
       ];
       homepage = "https://github.com/snoyberg/basic-prelude#readme";
       description = "An enhanced core prelude; a common foundation for alternate preludes";
       license = stdenv.lib.licenses.mit;
     }) {};

  "bifunctors" = callPackage
    ({ mkDerivation, base, base-orphans, comonad, containers, hspec
     , hspec-discover, QuickCheck, semigroups, stdenv, tagged
     , template-haskell, th-abstraction, transformers
     , transformers-compat
     }:
     mkDerivation {
       pname = "bifunctors";
       version = "5.5.3";
       sha256 = "1jn9rxg643xnlhrknmjz88nblcpsr45xwjkwwnn5nxpasa7m4d6l";
       libraryHaskellDepends = [
         base base-orphans comonad containers semigroups tagged
         template-haskell th-abstraction transformers transformers-compat
       ];
       testHaskellDepends = [
         base hspec QuickCheck template-haskell transformers
         transformers-compat
       ];
       testToolDepends = [ hspec-discover ];
       homepage = "http://github.com/ekmett/bifunctors/";
       description = "Bifunctors";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "binary" = callPackage
    ({ mkDerivation, array, attoparsec, base, bytestring, Cabal, cereal
     , containers, criterion, deepseq, directory, filepath, HUnit, mtl
     , QuickCheck, random, stdenv, tar, test-framework
     , test-framework-quickcheck2, unordered-containers, zlib
     }:
     mkDerivation {
       pname = "binary";
       version = "0.8.5.1";
       sha256 = "15h5zqfw7xmcimvlq6bs8f20vxlfvz7g411fns5z7212crlimffy";
       libraryHaskellDepends = [ array base bytestring containers ];
       testHaskellDepends = [
         array base bytestring Cabal containers directory filepath HUnit
         QuickCheck random test-framework test-framework-quickcheck2
       ];
       benchmarkHaskellDepends = [
         array attoparsec base bytestring Cabal cereal containers criterion
         deepseq directory filepath mtl tar unordered-containers zlib
       ];
       homepage = "https://github.com/kolmodin/binary";
       description = "Binary serialisation for Haskell values using lazy ByteStrings";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "blaze-builder" = callPackage
    ({ mkDerivation, base, bytestring, stdenv, text }:
     mkDerivation {
       pname = "blaze-builder";
       version = "0.3.3.4";
       sha256 = "12xgmi8bc3h3cfk31rrfaklmwvyxgdwzwmxzw22yxd0dd8g11hg5";
       libraryHaskellDepends = [ base bytestring text ];
       homepage = "http://github.com/meiersi/blaze-builder";
       description = "Efficient buffered output";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "blaze-textual" = callPackage
    ({ mkDerivation, base, blaze-builder, bytestring, double-conversion
     , ghc-prim, integer, old-locale, QuickCheck, stdenv, test-framework
     , test-framework-quickcheck2, text, time, vector
     }:
     mkDerivation {
       pname = "blaze-textual";
       version = "0.2.1.0";
       sha256 = "0bbcykkrlgdb6jaz72njriq9if6bzsx52jn26k093f5sn1d7jhhh";
       libraryHaskellDepends = [
         base blaze-builder bytestring ghc-prim integer old-locale text time
         vector
       ];
       testHaskellDepends = [
         base blaze-builder bytestring double-conversion QuickCheck
         test-framework test-framework-quickcheck2
       ];
       homepage = "http://github.com/bos/blaze-textual";
       description = "Fast rendering of common datatypes";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "blockchain" = callPackage
    ({ mkDerivation, aeson, async, base, byteable, bytestring
     , cryptonite, deepseq, either, errors, hashable, hspec, memory, mtl
     , QuickCheck, quickcheck-instances, stdenv, text, time
     , transformers, unordered-containers
     }:
     mkDerivation {
       pname = "blockchain";
       version = "0.0.3";
       sha256 = "0hyyg4gpp8wijisvh176pjkjzrvb3v8v0gaws7j6cpirkpjgi895";
       libraryHaskellDepends = [
         aeson base byteable bytestring cryptonite either errors hashable
         memory mtl text time transformers unordered-containers
       ];
       testHaskellDepends = [
         aeson async base byteable bytestring cryptonite deepseq either
         errors hashable hspec memory mtl QuickCheck quickcheck-instances
         text time transformers unordered-containers
       ];
       homepage = "https://github.com/TGOlson/blockchain";
       description = "Generic blockchain implementation";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "bytes" = callPackage
    ({ mkDerivation, base, binary, bytestring, cereal, containers
     , directory, doctest, filepath, hashable, mtl, scientific, stdenv
     , text, time, transformers, transformers-compat
     , unordered-containers, void
     }:
     mkDerivation {
       pname = "bytes";
       version = "0.15.3";
       sha256 = "0kfdw1c13y3kxc1s9nzyavrv1ccipzrmqlwmigj3gnwjcjvddp6q";
       libraryHaskellDepends = [
         base binary bytestring cereal containers hashable mtl scientific
         text time transformers transformers-compat unordered-containers
         void
       ];
       testHaskellDepends = [ base directory doctest filepath ];
       homepage = "https://github.com/ekmett/bytes";
       description = "Sharing code for serialization between binary and cereal";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "bytestring" = callPackage
    ({ mkDerivation, base, byteorder, deepseq, directory, dlist
     , ghc-prim, HUnit, mtl, QuickCheck, random, stdenv, test-framework
     , test-framework-hunit, test-framework-quickcheck2
     }:
     mkDerivation {
       pname = "bytestring";
       version = "0.10.8.2";
       sha256 = "0fjc5ybxx67l0kh27l6vq4saf88hp1wnssj5ka90ii588y76cvys";
       libraryHaskellDepends = [ base deepseq ghc-prim ];
       testHaskellDepends = [
         base byteorder deepseq directory dlist ghc-prim HUnit mtl
         QuickCheck random test-framework test-framework-hunit
         test-framework-quickcheck2
       ];
       homepage = "https://github.com/haskell/bytestring";
       description = "Fast, compact, strict and lazy byte strings with a list interface";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "bytestring-show" = callPackage
    ({ mkDerivation, array, base, binary, bytestring, containers
     , integer, stdenv
     }:
     mkDerivation {
       pname = "bytestring-show";
       version = "0.3.5.6";
       sha256 = "04h81a0bh2fvnkby1qafnydb29gzk6d4d311i2lbn7lm2vyjw919";
       revision = "1";
       editedCabalFile = "024nmlp38kfa2dzwv00g6yp1pqadb8mxqgdr3v943pphrspvizgh";
       libraryHaskellDepends = [
         array base binary bytestring containers integer
       ];
       homepage = "http://code.haskell.org/~dolio/";
       description = "Efficient conversion of values into readable byte strings";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "bytestring-trie" = callPackage
    ({ mkDerivation, base, binary, bytestring, stdenv }:
     mkDerivation {
       pname = "bytestring-trie";
       version = "0.2.4.1";
       sha256 = "0qqklrvdcprchnl4bxr6w7zf6k5gncincl3kysm34gd04sszxr1g";
       libraryHaskellDepends = [ base binary bytestring ];
       homepage = "http://code.haskell.org/~wren/";
       description = "An efficient finite map from (byte)strings to values";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "cassava" = callPackage
    ({ mkDerivation, array, attoparsec, base, bytestring, containers
     , deepseq, fail, hashable, HUnit, Only, QuickCheck
     , quickcheck-instances, scientific, semigroups, stdenv
     , test-framework, test-framework-hunit, test-framework-quickcheck2
     , text, text-short, unordered-containers, vector
     }:
     mkDerivation {
       pname = "cassava";
       version = "0.5.1.0";
       sha256 = "0xs2c5lpy0g5lsmp2cx0dm5lnxij7cgry6xd5gsn3bfdlap8lb3n";
       configureFlags = [ "-f-bytestring--lt-0_10_4" ];
       libraryHaskellDepends = [
         array attoparsec base bytestring containers deepseq fail hashable
         Only scientific semigroups text text-short unordered-containers
         vector
       ];
       testHaskellDepends = [
         attoparsec base bytestring fail hashable HUnit QuickCheck
         quickcheck-instances scientific semigroups test-framework
         test-framework-hunit test-framework-quickcheck2 text
         unordered-containers vector
       ];
       homepage = "https://github.com/hvr/cassava";
       description = "A CSV parsing and encoding library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "cborg" = callPackage
    ({ mkDerivation, array, base, bytestring, containers, fail, ghc-prim
     , half, integer, primitive, semigroups, stdenv, text
     }:
     mkDerivation {
       pname = "cborg";
       version = "0.2.0.0";
       sha256 = "1dvzqzk68ym1v1gxrx8kc59hj4jd2l0c8f2bqf67jgm5ld0bv340";
       libraryHaskellDepends = [
         array base bytestring containers fail ghc-prim half integer
         primitive semigroups text
       ];
       description = "Concise Binary Object Representation";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "cipher-aes" = callPackage
    ({ mkDerivation, base, byteable, bytestring, criterion
     , crypto-cipher-benchmarks, crypto-cipher-tests
     , crypto-cipher-types, mtl, QuickCheck, securemem, stdenv
     , test-framework, test-framework-quickcheck2
     }:
     mkDerivation {
       pname = "cipher-aes";
       version = "0.2.11";
       sha256 = "05ahz6kjq0fl1w66gpiqy0vndli5yx1pbsbw9ni3viwqas4p3cfk";
       libraryHaskellDepends = [
         base byteable bytestring crypto-cipher-types securemem
       ];
       testHaskellDepends = [
         base byteable bytestring crypto-cipher-tests crypto-cipher-types
         QuickCheck test-framework test-framework-quickcheck2
       ];
       benchmarkHaskellDepends = [
         base bytestring criterion crypto-cipher-benchmarks
         crypto-cipher-types mtl
       ];
       homepage = "https://github.com/vincenthz/hs-cipher-aes";
       description = "Fast AES cipher implementation with advanced mode of operations";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "clock" = callPackage
    ({ mkDerivation, base, stdenv, tasty, tasty-quickcheck }:
     mkDerivation {
       pname = "clock";
       version = "0.7.2";
       sha256 = "07v91s20halsqjmziqb1sqjp2sjpckl9by7y28aaklwqi2bh2rl8";
       libraryHaskellDepends = [ base ];
       testHaskellDepends = [ base tasty tasty-quickcheck ];
       homepage = "https://github.com/corsis/clock";
       description = "High-resolution clock functions: monotonic, realtime, cputime";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "cmdargs" = callPackage
    ({ mkDerivation, base, filepath, process, semigroups, stdenv
     , transformers
     }:
     mkDerivation {
       pname = "cmdargs";
       version = "0.10.20";
       sha256 = "0cbkmgrcnwgigg6z88y3c09gm7g6dwm7gzbgr53h8k1xik29s9hf";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         base filepath process semigroups transformers
       ];
       homepage = "https://github.com/ndmitchell/cmdargs#readme";
       description = "Command line argument processing";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "code-page" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "code-page";
       version = "0.1.3";
       sha256 = "1491frk4jx6dlhifky9dvcxbsbcfssrz979a5hp5zn061rh8cp76";
       libraryHaskellDepends = [ base ];
       testHaskellDepends = [ base ];
       homepage = "https://github.com/RyanGlScott/code-page";
       description = "Windows code page library for Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "comonad" = callPackage
    ({ mkDerivation, base, containers, contravariant, distributive
     , doctest, semigroups, stdenv, tagged, transformers
     , transformers-compat
     }:
     mkDerivation {
       pname = "comonad";
       version = "5.0.2";
       sha256 = "115pai560rllsmym76bj787kwz5xx19y8bl6262005nddqwzxc0v";
       libraryHaskellDepends = [
         base containers contravariant distributive semigroups tagged
         transformers transformers-compat
       ];
       testHaskellDepends = [ base doctest ];
       homepage = "http://github.com/ekmett/comonad/";
       description = "Comonads";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "concurrent-output" = callPackage
    ({ mkDerivation, ansi-terminal, async, base, directory, exceptions
     , process, stdenv, stm, terminal-size, text, transformers
     }:
     mkDerivation {
       pname = "concurrent-output";
       version = "1.10.6";
       sha256 = "1qlp1vij4qgcrkw8ym5xdc0pgfwklbhsfh56sgayy3cvpvcac093";
       libraryHaskellDepends = [
         ansi-terminal async base directory exceptions process stm
         terminal-size text transformers
       ];
       description = "Ungarble output from several threads or commands";
       license = stdenv.lib.licenses.bsd2;
     }) {};

  "conduit" = callPackage
    ({ mkDerivation, base, bytestring, containers, deepseq, directory
     , exceptions, filepath, gauge, hspec, kan-extensions
     , mono-traversable, mtl, mwc-random, primitive, QuickCheck
     , resourcet, safe, silently, split, stdenv, text, transformers
     , unliftio, unliftio-core, vector
     }:
     mkDerivation {
       pname = "conduit";
       version = "1.3.0.3";
       sha256 = "1sangm0qqi9dzlq95746a3kl14k8b09592a423shxjf2a0b1yx5v";
       libraryHaskellDepends = [
         base bytestring directory exceptions filepath mono-traversable mtl
         primitive resourcet text transformers unliftio-core vector
       ];
       testHaskellDepends = [
         base bytestring containers directory exceptions filepath hspec
         mono-traversable mtl QuickCheck resourcet safe silently split text
         transformers unliftio vector
       ];
       benchmarkHaskellDepends = [
         base containers deepseq gauge hspec kan-extensions mwc-random
         transformers vector
       ];
       homepage = "http://github.com/snoyberg/conduit";
       description = "Streaming data processing library";
       license = stdenv.lib.licenses.mit;
     }) {};

  "conduit-combinators" = callPackage
    ({ mkDerivation, base, base16-bytestring, base64-bytestring
     , bytestring, chunked-data, conduit, conduit-extra, containers
     , directory, filepath, hspec, monad-control, mono-traversable, mtl
     , mwc-random, primitive, QuickCheck, resourcet, safe, silently
     , stdenv, text, transformers, transformers-base, vector, void
     }:
     mkDerivation {
       pname = "conduit-combinators";
       version = "1.1.2";
       sha256 = "0f31iphdi31m7cfd2szq06x3xdag1kkv2vbxh6bm2ax37k9sw2w4";
       libraryHaskellDepends = [
         base base16-bytestring base64-bytestring bytestring chunked-data
         conduit conduit-extra filepath monad-control mono-traversable
         mwc-random primitive resourcet text transformers transformers-base
         vector void
       ];
       testHaskellDepends = [
         base base16-bytestring base64-bytestring bytestring chunked-data
         conduit containers directory filepath hspec mono-traversable mtl
         mwc-random QuickCheck safe silently text transformers vector
       ];
       homepage = "https://github.com/snoyberg/mono-traversable#readme";
       description = "Commonly used conduit functions, for both chunked and unchunked data";
       license = stdenv.lib.licenses.mit;
     }) {};

  "containers" = callPackage
    ({ mkDerivation, array, base, ChasingBottoms, criterion, deepseq
     , ghc-prim, HUnit, QuickCheck, random, stdenv, test-framework
     , test-framework-hunit, test-framework-quickcheck2, transformers
     }:
     mkDerivation {
       pname = "containers";
       version = "0.5.10.2";
       sha256 = "08wc6asnyjdvabqyp15lsbccqwbjy77zjdhwrbg2q9xyj3rgwkm0";
       libraryHaskellDepends = [ array base deepseq ghc-prim ];
       testHaskellDepends = [
         array base ChasingBottoms deepseq ghc-prim HUnit QuickCheck
         test-framework test-framework-hunit test-framework-quickcheck2
         transformers
       ];
       benchmarkHaskellDepends = [
         base criterion deepseq ghc-prim random transformers
       ];
       description = "Assorted concrete container types";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "contravariant" = callPackage
    ({ mkDerivation, base, semigroups, StateVar, stdenv, transformers
     , transformers-compat, void
     }:
     mkDerivation {
       pname = "contravariant";
       version = "1.4";
       sha256 = "e1666df1373ed784baa7d1e8e963bbc2d1f3c391578ac550ae74e7399173ee84";
       revision = "1";
       editedCabalFile = "0pki1z2aqqgb126wdia6fcsr2ccslvyxxs6s1fc4dxvg6qskpj9d";
       libraryHaskellDepends = [
         base semigroups StateVar transformers transformers-compat void
       ];
       homepage = "http://github.com/ekmett/contravariant/";
       description = "Contravariant functors";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "cql-io" = callPackage
    ({ mkDerivation, async, auto-update, base, bytestring, containers
     , cql, cryptohash, data-default-class, Decimal, exceptions
     , hashable, iproute, lens, monad-control, mtl, mwc-random, network
     , raw-strings-qq, retry, semigroups, stdenv, stm, tasty
     , tasty-hunit, text, time, tinylog, transformers, transformers-base
     , unordered-containers, uuid, vector
     }:
     mkDerivation {
       pname = "cql-io";
       version = "1.0.1.1";
       sha256 = "1kdv00fv21s8vbb3dfgzlgsrr0xxl4p2h655ga3q5cg47by564xc";
       libraryHaskellDepends = [
         async auto-update base bytestring containers cql cryptohash
         data-default-class exceptions hashable iproute lens monad-control
         mtl mwc-random network retry semigroups stm text time tinylog
         transformers transformers-base unordered-containers uuid vector
       ];
       testHaskellDepends = [
         base containers cql Decimal iproute mtl raw-strings-qq tasty
         tasty-hunit text time tinylog uuid
       ];
       homepage = "https://gitlab.com/twittner/cql-io/";
       description = "Cassandra CQL client";
       license = stdenv.lib.licenses.mpl20;
     }) {};

  "crdt" = callPackage
    ({ mkDerivation, base, binary, bytestring, containers, Diff, fail
     , hashable, mtl, safe, semigroups, stdenv, stm, time, transformers
     , vector
     }:
     mkDerivation {
       pname = "crdt";
       version = "10.0";
       sha256 = "10wg1s47r70gxgl9bfg3cxhj8w74k7wn0c3lh418mxypb2p3ffww";
       libraryHaskellDepends = [
         base binary bytestring containers Diff fail hashable mtl safe
         semigroups stm time transformers vector
       ];
       homepage = "https://github.com/cblp/crdt#readme";
       description = "Conflict-free replicated data types";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "criterion" = callPackage
    ({ mkDerivation, aeson, ansi-wl-pprint, base, base-compat
     , base-compat-batteries, binary, bytestring, cassava, code-page
     , containers, criterion-measurement, deepseq, directory, exceptions
     , fail, file-embed, filepath, Glob, HUnit, js-flot, js-jquery
     , microstache, mtl, mwc-random, optparse-applicative, parsec
     , QuickCheck, semigroups, statistics, stdenv, tasty, tasty-hunit
     , tasty-quickcheck, template-haskell, text, time, transformers
     , transformers-compat, vector, vector-algorithms
     }:
     mkDerivation {
       pname = "criterion";
       version = "1.5.1.0";
       sha256 = "1ixmr1mjid3yds5lzhcrjmvvlpgsn579wns96x5n1rkba14srxcq";
       isLibrary = true;
       isExecutable = true;
       enableSeparateDataOutput = true;
       libraryHaskellDepends = [
         aeson ansi-wl-pprint base base-compat-batteries binary bytestring
         cassava code-page containers criterion-measurement deepseq
         directory exceptions fail file-embed filepath Glob js-flot
         js-jquery microstache mtl mwc-random optparse-applicative parsec
         semigroups statistics template-haskell text time transformers
         transformers-compat vector vector-algorithms
       ];
       executableHaskellDepends = [
         base base-compat-batteries optparse-applicative semigroups
       ];
       testHaskellDepends = [
         aeson base base-compat base-compat-batteries bytestring deepseq
         directory HUnit QuickCheck statistics tasty tasty-hunit
         tasty-quickcheck vector
       ];
       homepage = "http://www.serpentine.com/criterion";
       description = "Robust, reliable performance measurement and analysis";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "criterion-measurement" = callPackage
    ({ mkDerivation, aeson, base, base-compat, binary, containers
     , deepseq, stdenv, vector
     }:
     mkDerivation {
       pname = "criterion-measurement";
       version = "0.1.1.0";
       sha256 = "0mmbhajphlg32gqxr1lf0w12jkw0qrpjabvx92zpv4ka71lpgy7m";
       libraryHaskellDepends = [
         aeson base base-compat binary containers deepseq vector
       ];
       homepage = "https://github.com/bos/criterion";
       description = "Criterion measurement functionality and associated types";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "crypto-api" = callPackage
    ({ mkDerivation, base, bytestring, cereal, entropy, stdenv, tagged
     , transformers
     }:
     mkDerivation {
       pname = "crypto-api";
       version = "0.13.2";
       sha256 = "1vc27qcgbg7hf50rkqhlrs58zn1888ilh4b6wrrm07bnm48xacak";
       libraryHaskellDepends = [
         base bytestring cereal entropy tagged transformers
       ];
       homepage = "https://github.com/TomMD/crypto-api";
       description = "A generic interface for cryptographic operations";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "crypto-cipher-tests" = callPackage
    ({ mkDerivation, base, byteable, bytestring, crypto-cipher-types
     , HUnit, mtl, QuickCheck, securemem, stdenv, test-framework
     , test-framework-hunit, test-framework-quickcheck2
     }:
     mkDerivation {
       pname = "crypto-cipher-tests";
       version = "0.0.11";
       sha256 = "19wqignlq90qwpam01hnmmrxaxh5lkax9l1l6rlbi4a07nvp1dnz";
       libraryHaskellDepends = [
         base byteable bytestring crypto-cipher-types HUnit mtl QuickCheck
         securemem test-framework test-framework-hunit
         test-framework-quickcheck2
       ];
       testHaskellDepends = [
         base byteable bytestring crypto-cipher-types HUnit mtl QuickCheck
         test-framework test-framework-hunit test-framework-quickcheck2
       ];
       homepage = "http://github.com/vincenthz/hs-crypto-cipher";
       description = "Generic cryptography cipher tests";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "cryptohash" = callPackage
    ({ mkDerivation, base, byteable, bytestring, criterion, cryptonite
     , ghc-prim, HUnit, memory, QuickCheck, stdenv, tasty, tasty-hunit
     , tasty-quickcheck
     }:
     mkDerivation {
       pname = "cryptohash";
       version = "0.11.9";
       sha256 = "1yr2iyb779znj79j3fq4ky8l1y8a600a2x1fx9p5pmpwq5zq93y2";
       libraryHaskellDepends = [
         base byteable bytestring cryptonite ghc-prim memory
       ];
       testHaskellDepends = [
         base byteable bytestring HUnit QuickCheck tasty tasty-hunit
         tasty-quickcheck
       ];
       benchmarkHaskellDepends = [ base byteable bytestring criterion ];
       homepage = "http://github.com/vincenthz/hs-cryptohash";
       description = "collection of crypto hashes, fast, pure and practical";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "cryptohash-md5" = callPackage
    ({ mkDerivation, base, base16-bytestring, bytestring, criterion
     , pureMD5, stdenv, tasty, tasty-hunit, tasty-quickcheck
     }:
     mkDerivation {
       pname = "cryptohash-md5";
       version = "0.11.100.1";
       sha256 = "1y8q7s2bn4gdknw1wjikdnar2b5pgz3nv3220lxrlgpsf23x82vi";
       libraryHaskellDepends = [ base bytestring ];
       testHaskellDepends = [
         base base16-bytestring bytestring pureMD5 tasty tasty-hunit
         tasty-quickcheck
       ];
       benchmarkHaskellDepends = [ base bytestring criterion ];
       homepage = "https://github.com/hvr/cryptohash-md5";
       description = "Fast, pure and practical MD5 implementation";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "cryptohash-sha1" = callPackage
    ({ mkDerivation, base, base16-bytestring, bytestring, criterion, SHA
     , stdenv, tasty, tasty-hunit, tasty-quickcheck
     }:
     mkDerivation {
       pname = "cryptohash-sha1";
       version = "0.11.100.1";
       sha256 = "1aqdxdhxhl9jldh951djpwxx8z7gzaqspxl7iwpl84i5ahrsyy9w";
       libraryHaskellDepends = [ base bytestring ];
       testHaskellDepends = [
         base base16-bytestring bytestring SHA tasty tasty-hunit
         tasty-quickcheck
       ];
       benchmarkHaskellDepends = [ base bytestring criterion ];
       homepage = "https://github.com/hvr/cryptohash-sha1";
       description = "Fast, pure and practical SHA-1 implementation";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "cryptohash-sha256" = callPackage
    ({ mkDerivation, base, base16-bytestring, bytestring, criterion, SHA
     , stdenv, tasty, tasty-hunit, tasty-quickcheck
     }:
     mkDerivation {
       pname = "cryptohash-sha256";
       version = "0.11.101.0";
       sha256 = "1p85vajcgw9hmq8zsz9krzx0vxh7aggwbg5w9ws8w97avcsn8xaj";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [ base bytestring ];
       testHaskellDepends = [
         base base16-bytestring bytestring SHA tasty tasty-hunit
         tasty-quickcheck
       ];
       benchmarkHaskellDepends = [ base bytestring criterion ];
       homepage = "https://github.com/hvr/cryptohash-sha256";
       description = "Fast, pure and practical SHA-256 implementation";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "cryptonite" = callPackage
    ({ mkDerivation, base, bytestring, criterion, deepseq, foundation
     , ghc-prim, integer, memory, random, stdenv, tasty, tasty-hunit
     , tasty-kat, tasty-quickcheck
     }:
     mkDerivation {
       pname = "cryptonite";
       version = "0.24";
       sha256 = "11js3fg1rbrgy17i0nq19v9w4w28s80zglb6fnlbz6zg8cik3hqp";
       libraryHaskellDepends = [
         base bytestring deepseq foundation ghc-prim integer memory
       ];
       testHaskellDepends = [
         base bytestring memory tasty tasty-hunit tasty-kat tasty-quickcheck
       ];
       benchmarkHaskellDepends = [
         base bytestring criterion memory random
       ];
       homepage = "https://github.com/haskell-crypto/cryptonite";
       description = "Cryptography Primitives sink";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "crypto-random" = callPackage
    ({ mkDerivation, base, bytestring, securemem, stdenv, vector }:
     mkDerivation {
       pname = "crypto-random";
       version = "0.0.9";
       sha256 = "0139kbbb2h7vshf68y3fvjda29lhj7jjwl4vq78w4y8k8hc7l2hp";
       libraryHaskellDepends = [ base bytestring securemem vector ];
       homepage = "http://github.com/vincenthz/hs-crypto-random";
       description = "Simple cryptographic random related types";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "deepseq" = callPackage
    ({ mkDerivation, array, base, ghc-prim, HUnit, stdenv
     , test-framework, test-framework-hunit
     }:
     mkDerivation {
       pname = "deepseq";
       version = "1.4.3.0";
       sha256 = "0fjdmsd8fqqv78m7111m10pdfswnxmn02zx1fsv2k26b5jckb0bd";
       libraryHaskellDepends = [ array base ];
       testHaskellDepends = [
         array base ghc-prim HUnit test-framework test-framework-hunit
       ];
       description = "Deep evaluation of data structures";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "dhall" = callPackage
    ({ mkDerivation, ansi-terminal, base, bytestring, case-insensitive
     , cborg, containers, contravariant, criterion, cryptonite, deepseq
     , Diff, directory, doctest, exceptions, filepath, hashable
     , haskeline, http-client, http-client-tls
     , insert-ordered-containers, lens-family-core, megaparsec, memory
     , mockery, mtl, optparse-applicative, parsers, prettyprinter
     , prettyprinter-ansi-terminal, QuickCheck, quickcheck-instances
     , repline, scientific, semigroups, serialise, stdenv, tasty
     , tasty-hunit, tasty-quickcheck, template-haskell, text
     , transformers, unordered-containers, vector
     }:
     mkDerivation {
       pname = "dhall";
       version = "1.17.0";
       sha256 = "14a74zqsnv00hbv19lhmv78xzl36qnsznmncnzq7jji2aslgwad0";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         ansi-terminal base bytestring case-insensitive cborg containers
         contravariant cryptonite Diff directory exceptions filepath
         hashable haskeline http-client http-client-tls
         insert-ordered-containers lens-family-core megaparsec memory mtl
         optparse-applicative parsers prettyprinter
         prettyprinter-ansi-terminal repline scientific semigroups serialise
         template-haskell text transformers unordered-containers vector
       ];
       executableHaskellDepends = [ base ];
       testHaskellDepends = [
         base containers deepseq directory doctest filepath hashable
         insert-ordered-containers mockery prettyprinter QuickCheck
         quickcheck-instances serialise tasty tasty-hunit tasty-quickcheck
         text transformers vector
       ];
       benchmarkHaskellDepends = [
         base bytestring containers criterion directory serialise text
       ];
       description = "A configuration language guaranteed to terminate";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "dhall-json" = callPackage
    ({ mkDerivation, aeson, aeson-pretty, base, bytestring, dhall
     , insert-ordered-containers, optparse-applicative, stdenv, text
     , unordered-containers, utf8-string
     }:
     mkDerivation {
       pname = "dhall-json";
       version = "1.2.1";
       sha256 = "0zf88py0hfrzsa3jq5i8nz0wv8m1b753bdakvykmkj6r0dgd574r";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         aeson base dhall insert-ordered-containers optparse-applicative
         text unordered-containers
       ];
       executableHaskellDepends = [
         aeson aeson-pretty base bytestring dhall optparse-applicative text
         utf8-string
       ];
       description = "Compile Dhall to JSON or YAML";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "digest" = callPackage
    ({ mkDerivation, base, bytestring, stdenv }:
     mkDerivation {
       pname = "digest";
       version = "0.0.1.2";
       sha256 = "04gy2zp8yzvv7j9bdfvmfzcz3sqyqa6rwslqcn4vyair2vmif5v4";
       libraryHaskellDepends = [ base bytestring ];
       description = "Various cryptographic hashes for bytestrings; CRC32 and Adler32 for now";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "directory" = callPackage
    ({ mkDerivation, base, filepath, stdenv, time, unix }:
     mkDerivation {
       pname = "directory";
       version = "1.3.1.0";
       sha256 = "1wm738bqz8b8mpkviv0y6v6dypxjsm50silfvjwy64c3p9md1c4l";
       libraryHaskellDepends = [ base filepath time ];
       testHaskellDepends = [ base filepath time unix ];
       description = "Platform-agnostic library for filesystem operations";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "distributed-process-p2p" = callPackage
    ({ mkDerivation, base, binary, bytestring, containers
     , distributed-process, mtl, network, network-transport
     , network-transport-tcp, stdenv
     }:
     mkDerivation {
       pname = "distributed-process-p2p";
       version = "0.1.3.2";
       sha256 = "13m283cwlas0xzqxlrmnwmwimwy29hbvymavyqffd1b0k2m6ag31";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         base binary bytestring containers distributed-process mtl network
         network-transport network-transport-tcp
       ];
       homepage = "https://bitbucket.org/dpwiz/distributed-process-p2p/";
       description = "Peer-to-peer node discovery for Cloud Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "distributive" = callPackage
    ({ mkDerivation, base, base-orphans, doctest, generic-deriving
     , hspec, semigroups, stdenv, tagged, transformers
     , transformers-compat
     }:
     mkDerivation {
       pname = "distributive";
       version = "0.5.3";
       sha256 = "0y566r97sfyvhsmd4yxiz4ns2mqgwf5bdbp56wgxl6wlkidq0wwi";
       libraryHaskellDepends = [
         base base-orphans semigroups tagged transformers
         transformers-compat
       ];
       testHaskellDepends = [ base doctest generic-deriving hspec ];
       homepage = "http://github.com/ekmett/distributive/";
       description = "Distributive functors -- Dual to Traversable";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "dlist" = callPackage
    ({ mkDerivation, base, Cabal, deepseq, QuickCheck, stdenv }:
     mkDerivation {
       pname = "dlist";
       version = "0.7.1.2";
       sha256 = "10rp96rryij7d8gz5kv8ygc6chm1624ck5mbnqs2a3fkdzqj2b9k";
       libraryHaskellDepends = [ base deepseq ];
       testHaskellDepends = [ base Cabal QuickCheck ];
       homepage = "https://github.com/spl/dlist";
       description = "Difference lists";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "double-conversion" = callPackage
    ({ mkDerivation, base, bytestring, ghc-prim, HUnit, stdenv
     , test-framework, test-framework-hunit, test-framework-quickcheck2
     , text
     }:
     mkDerivation {
       pname = "double-conversion";
       version = "2.0.2.0";
       sha256 = "0sx2kc1gw72mjvd8vph8bbjw5whfxfv92rsdhjg1c0al75rf3ka4";
       libraryHaskellDepends = [ base bytestring ghc-prim text ];
       testHaskellDepends = [
         base bytestring HUnit test-framework test-framework-hunit
         test-framework-quickcheck2 text
       ];
       homepage = "https://github.com/bos/double-conversion";
       description = "Fast conversion between double precision floating point and text";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "easy-file" = callPackage
    ({ mkDerivation, base, directory, filepath, stdenv, time }:
     mkDerivation {
       pname = "easy-file";
       version = "0.2.1";
       sha256 = "0v75081bx4qzlqy29hh639nzlr7dncwza3qxbzm9njc4jarf31pz";
       libraryHaskellDepends = [ base directory filepath time ];
       homepage = "http://github.com/kazu-yamamoto/easy-file";
       description = "Cross-platform File handling";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "Elm" = callPackage
    ({ mkDerivation, aeson, aeson-pretty, base, binary, blaze-html
     , blaze-markup, bytestring, cheapskate, cmdargs, containers
     , directory, filemanip, filepath, highlighting-kate, HUnit, indents
     , language-ecmascript, language-glsl, mtl, parsec, pretty, process
     , QuickCheck, stdenv, test-framework, test-framework-hunit
     , test-framework-quickcheck2, text, transformers, union-find
     , unordered-containers
     }:
     mkDerivation {
       pname = "Elm";
       version = "0.13";
       sha256 = "1l6p00h0717blwvia0gvqpsakq8jy44fxc6brr4qxs5g4yjcjnmh";
       isLibrary = true;
       isExecutable = true;
       enableSeparateDataOutput = true;
       libraryHaskellDepends = [
         aeson aeson-pretty base binary blaze-html blaze-markup bytestring
         cheapskate cmdargs containers directory filepath highlighting-kate
         indents language-ecmascript language-glsl mtl parsec pretty text
         transformers union-find unordered-containers
       ];
       executableHaskellDepends = [
         aeson aeson-pretty base binary blaze-html blaze-markup bytestring
         cheapskate cmdargs containers directory filepath highlighting-kate
         indents language-ecmascript language-glsl mtl parsec pretty text
         transformers union-find unordered-containers
       ];
       testHaskellDepends = [
         aeson aeson-pretty base binary blaze-html blaze-markup bytestring
         cheapskate cmdargs containers directory filemanip filepath
         highlighting-kate HUnit indents language-ecmascript language-glsl
         mtl parsec pretty process QuickCheck test-framework
         test-framework-hunit test-framework-quickcheck2 text transformers
         union-find unordered-containers
       ];
       homepage = "http://elm-lang.org";
       description = "The Elm language module";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "entropy" = callPackage
    ({ mkDerivation, base, bytestring, Cabal, directory, filepath
     , process, stdenv
     }:
     mkDerivation {
       pname = "entropy";
       version = "0.4";
       sha256 = "0h8icprikafidq4x88crz5phfgp6zgmxq4awam2dhs0z2fswd9wc";
       setupHaskellDepends = [ base Cabal directory filepath process ];
       libraryHaskellDepends = [ base bytestring ];
       homepage = "https://github.com/TomMD/entropy";
       description = "A platform independent entropy source";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "erf" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "erf";
       version = "2.0.0.0";
       sha256 = "0dxk2r32ajmmc05vaxcp0yw6vgv4lkbmh8jcshncn98xgsfbgw14";
       libraryHaskellDepends = [ base ];
       description = "The error function, erf, and related functions";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "extra" = callPackage
    ({ mkDerivation, base, clock, directory, filepath, process
     , QuickCheck, stdenv, time, unix
     }:
     mkDerivation {
       pname = "extra";
       version = "1.6.3";
       sha256 = "06ds0jlx6sljwdf63l154qbzia9mnsri79i9qm3xikky3nj9ia1m";
       libraryHaskellDepends = [
         base clock directory filepath process time
       ];
       testHaskellDepends = [ base directory filepath QuickCheck unix ];
       homepage = "https://github.com/ndmitchell/extra#readme";
       description = "Extra functions I use";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "fail" = callPackage
    ({ mkDerivation, stdenv }:
     mkDerivation {
       pname = "fail";
       version = "4.9.0.0";
       sha256 = "18nlj6xvnggy61gwbyrpmvbdkq928wv0wx2zcsljb52kbhddnp3d";
       homepage = "https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail";
       description = "Forward-compatible MonadFail class";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "fast-logger" = callPackage
    ({ mkDerivation, array, auto-update, base, bytestring, directory
     , easy-file, filepath, hspec, stdenv, text, time
     }:
     mkDerivation {
       pname = "fast-logger";
       version = "2.4.11";
       sha256 = "1ad2vq4nifdxshqk9yrmghqizhkgybfz134kpr6padglb2mxxrdv";
       libraryHaskellDepends = [
         array auto-update base bytestring directory easy-file filepath text
         time
       ];
       testHaskellDepends = [ base bytestring directory hspec ];
       homepage = "https://github.com/kazu-yamamoto/logger";
       description = "A fast logging system";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "file-embed" = callPackage
    ({ mkDerivation, base, bytestring, directory, filepath, stdenv
     , template-haskell
     }:
     mkDerivation {
       pname = "file-embed";
       version = "0.0.11";
       sha256 = "0l6dkwccbzzyx8rcav03lya2334dgi3vfwk96h7l93l0fc4x19gf";
       libraryHaskellDepends = [
         base bytestring directory filepath template-haskell
       ];
       testHaskellDepends = [ base filepath ];
       homepage = "https://github.com/snoyberg/file-embed";
       description = "Use Template Haskell to embed file contents directly";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "filepath" = callPackage
    ({ mkDerivation, base, QuickCheck, stdenv }:
     mkDerivation {
       pname = "filepath";
       version = "1.4.1.2";
       sha256 = "1hrbi7ckrkqzw73ziqiyh00xp28c79pk0jrj1vqiq5nwfs3hryvv";
       libraryHaskellDepends = [ base ];
       testHaskellDepends = [ base QuickCheck ];
       homepage = "https://github.com/haskell/filepath#readme";
       description = "Library for manipulating FilePaths in a cross platform way";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "foldl" = callPackage
    ({ mkDerivation, base, bytestring, comonad, containers
     , contravariant, criterion, hashable, mwc-random, primitive
     , profunctors, stdenv, text, transformers, unordered-containers
     , vector
     }:
     mkDerivation {
       pname = "foldl";
       version = "1.2.5";
       sha256 = "0jzc00dqwkr3kvy40f8f9klh24s8zvhfk2flrlyichc6zcy5qbda";
       libraryHaskellDepends = [
         base bytestring comonad containers contravariant hashable
         mwc-random primitive profunctors text transformers
         unordered-containers vector
       ];
       benchmarkHaskellDepends = [ base criterion ];
       description = "Composable, streaming, and efficient left folds";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "FontyFruity" = callPackage
    ({ mkDerivation, base, binary, bytestring, containers, deepseq
     , directory, filepath, stdenv, text, vector, xml
     }:
     mkDerivation {
       pname = "FontyFruity";
       version = "0.5.3.3";
       sha256 = "0p02w0v93y11f7rzsc1im2rvld6h0pgrhmd827ypzamibry6xl5h";
       libraryHaskellDepends = [
         base binary bytestring containers deepseq directory filepath text
         vector xml
       ];
       description = "A true type file format loader";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "foreign-store" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "foreign-store";
       version = "0.2";
       sha256 = "1p436dn6l5zjzizcsj0hn10s2n907gr7c8y89i4sm3h69lhqlw86";
       libraryHaskellDepends = [ base ];
       homepage = "https://github.com/chrisdone/foreign-store";
       description = "Store a stable pointer in a foreign context to be retrieved later";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "formatting" = callPackage
    ({ mkDerivation, array, base, bytestring, clock, ghc-prim, hspec
     , integer, old-locale, scientific, semigroups, stdenv, text, time
     , transformers
     }:
     mkDerivation {
       pname = "formatting";
       version = "6.3.4";
       sha256 = "1rcnnzbn1671lcwllpppgh3yv99k83y2n40r8mgsk08hsk1qs0wx";
       libraryHaskellDepends = [
         array base bytestring clock ghc-prim integer old-locale scientific
         semigroups text time transformers
       ];
       testHaskellDepends = [ base hspec semigroups ];
       description = "Combinator-based type-safe formatting (like printf() or FORMAT)";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "foundation" = callPackage
    ({ mkDerivation, base, basement, gauge, ghc-prim, stdenv }:
     mkDerivation {
       pname = "foundation";
       version = "0.0.19";
       sha256 = "053g5fdg9p74irvdh3g19hkb6g28h0sngkh2zqwplbxwy59dhfxq";
       libraryHaskellDepends = [ base basement ghc-prim ];
       testHaskellDepends = [ base basement ];
       benchmarkHaskellDepends = [ base basement gauge ];
       homepage = "https://github.com/haskell-foundation/foundation";
       description = "Alternative prelude with batteries and no dependencies";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "free" = callPackage
    ({ mkDerivation, base, bifunctors, comonad, containers, distributive
     , exceptions, mtl, prelude-extras, profunctors, semigroupoids
     , semigroups, stdenv, template-haskell, transformers
     , transformers-compat
     }:
     mkDerivation {
       pname = "free";
       version = "4.12.4";
       sha256 = "1147s393442xf4gkpbq0rd1p286vmykgx85mxhk5d1c7wfm4bzn9";
       libraryHaskellDepends = [
         base bifunctors comonad containers distributive exceptions mtl
         prelude-extras profunctors semigroupoids semigroups
         template-haskell transformers transformers-compat
       ];
       homepage = "http://github.com/ekmett/free/";
       description = "Monads for free";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "fsnotify" = callPackage
    ({ mkDerivation, async, base, bytestring, containers, directory
     , filepath, random, stdenv, tasty, tasty-hunit, temporary, text
     , time
     }:
     mkDerivation {
       pname = "fsnotify";
       version = "0.3.0.1";
       sha256 = "19bdbz9wb9jvln6yg6qm0hz0w84bypvkxf0wjhgrgd52f9gidlny";
       libraryHaskellDepends = [
         async base bytestring containers directory filepath text time
       ];
       testHaskellDepends = [
         async base directory filepath random tasty tasty-hunit temporary
       ];
       homepage = "https://github.com/haskell-fswatch/hfsnotify";
       description = "Cross platform library for file change notification";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "generic-deriving" = callPackage
    ({ mkDerivation, base, containers, ghc-prim, hspec, stdenv
     , template-haskell
     }:
     mkDerivation {
       pname = "generic-deriving";
       version = "1.11.2";
       sha256 = "1y92q4dmbyc24hjjvq02474s9grwabxffn16y31gzaqhm0m0z5i9";
       libraryHaskellDepends = [
         base containers ghc-prim template-haskell
       ];
       testHaskellDepends = [ base hspec template-haskell ];
       homepage = "https://github.com/dreixel/generic-deriving";
       description = "Generic programming library for generalised deriving";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "generics-sop" = callPackage
    ({ mkDerivation, base, deepseq, ghc-prim, stdenv, template-haskell
     , transformers, transformers-compat
     }:
     mkDerivation {
       pname = "generics-sop";
       version = "0.3.2.0";
       sha256 = "168v62i845jh9jbfaz3ldz8svz4wmzq9mf2vhb7pxlnbkk8fqq1h";
       libraryHaskellDepends = [
         base deepseq ghc-prim template-haskell transformers
         transformers-compat
       ];
       testHaskellDepends = [ base ];
       description = "Generic Programming using True Sums of Products";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "geniplate-mirror" = callPackage
    ({ mkDerivation, base, mtl, stdenv, template-haskell }:
     mkDerivation {
       pname = "geniplate-mirror";
       version = "0.7.6";
       sha256 = "1y0m0bw5zpm1y1y6d9qmxj3swl8j8hlw1shxbr5awycf6k884ssb";
       libraryHaskellDepends = [ base mtl template-haskell ];
       homepage = "https://github.com/danr/geniplate";
       description = "Use Template Haskell to generate Uniplate-like functions";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "genvalidity" = callPackage
    ({ mkDerivation, base, hspec, QuickCheck, stdenv, validity }:
     mkDerivation {
       pname = "genvalidity";
       version = "0.5.1.0";
       sha256 = "17ykq38j9a2lzir6dqz5jgy6ndaafrpkhqhcg96c5ppg7wcxaaj0";
       libraryHaskellDepends = [ base QuickCheck validity ];
       testHaskellDepends = [ base hspec QuickCheck ];
       homepage = "https://github.com/NorfairKing/validity#readme";
       description = "Testing utilities for the validity library";
       license = stdenv.lib.licenses.mit;
     }) {};

  "Glob" = callPackage
    ({ mkDerivation, base, containers, directory, dlist, filepath, HUnit
     , QuickCheck, semigroups, stdenv, test-framework
     , test-framework-hunit, test-framework-quickcheck2, transformers
     , transformers-compat
     }:
     mkDerivation {
       pname = "Glob";
       version = "0.9.2";
       sha256 = "1rbwcq9w9951qsnp13vqcm9r01yax2yh1wk8s4zxa3ckk9717iwg";
       libraryHaskellDepends = [
         base containers directory dlist filepath semigroups transformers
         transformers-compat
       ];
       testHaskellDepends = [
         base containers directory dlist filepath HUnit QuickCheck
         semigroups test-framework test-framework-hunit
         test-framework-quickcheck2 transformers transformers-compat
       ];
       homepage = "http://iki.fi/matti.niemenmaa/glob/";
       description = "Globbing library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "half" = callPackage
    ({ mkDerivation, base, deepseq, hspec, QuickCheck, stdenv
     , template-haskell
     }:
     mkDerivation {
       pname = "half";
       version = "0.3";
       sha256 = "14r0nx8hm5fic9gz0ybjjw4kyc758zfgvhhwvzsshpx5caq6zch6";
       libraryHaskellDepends = [ base deepseq template-haskell ];
       testHaskellDepends = [ base hspec QuickCheck ];
       homepage = "http://github.com/ekmett/half";
       description = "Half-precision floating-point";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "happy" = callPackage
    ({ mkDerivation, array, base, containers, file-embed, mtl, process
     , stdenv
     }:
     mkDerivation {
       pname = "happy";
       version = "1.19.9";
       sha256 = "138xpxdb7x62lpmgmb6b3v3vgdqqvqn4273jaap3mjmc2gla709y";
       isLibrary = false;
       isExecutable = true;
       executableHaskellDepends = [
         array base containers file-embed mtl
       ];
       testHaskellDepends = [ base process ];
       homepage = "https://www.haskell.org/happy/";
       description = "Happy is a parser generator for Haskell";
       license = stdenv.lib.licenses.bsd2;
     }) {};

  "hashable" = callPackage
    ({ mkDerivation, base, bytestring, criterion, deepseq, ghc-prim
     , HUnit, integer, QuickCheck, random, siphash, stdenv
     , test-framework, test-framework-hunit, test-framework-quickcheck2
     , text, unix
     }:
     mkDerivation {
       pname = "hashable";
       version = "1.2.7.0";
       sha256 = "1gra8gq3kb7b2sd845h55yxlrfqx3ii004c6vjhga8v0b30fzdgc";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         base bytestring deepseq ghc-prim integer text
       ];
       testHaskellDepends = [
         base bytestring ghc-prim HUnit QuickCheck random test-framework
         test-framework-hunit test-framework-quickcheck2 text unix
       ];
       benchmarkHaskellDepends = [
         base bytestring criterion ghc-prim integer siphash text
       ];
       homepage = "http://github.com/tibbe/hashable";
       description = "A class for types that can be converted to a hash value";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "hashtables" = callPackage
    ({ mkDerivation, base, hashable, primitive, stdenv, vector }:
     mkDerivation {
       pname = "hashtables";
       version = "1.2.3.1";
       sha256 = "1giw9caajr07slf09j7zry9b0kvm4yj9q78zy1mawzi6gk3wglcg";
       libraryHaskellDepends = [ base hashable primitive vector ];
       homepage = "http://github.com/gregorycollins/hashtables";
       description = "Mutable hash tables in the ST monad";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "haskeline" = callPackage
    ({ mkDerivation, base, bytestring, containers, directory, filepath
     , process, stdenv, stm, transformers
     }:
     mkDerivation {
       pname = "haskeline";
       version = "0.7.4.3";
       sha256 = "0ydnsr1nhh7mfgvbpclidcfbgzf7j8g5vnwxrnkmgg1dphq0jv84";
       configureFlags = [ "-fterminfo" ];
       libraryHaskellDepends = [
         base bytestring containers directory filepath process stm
         transformers
       ];
       homepage = "https://github.com/judah/haskeline";
       description = "A command-line interface for user input, written in Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "haste-prim" = callPackage
    ({ mkDerivation, base, ghc-prim, integer, stdenv }:
     mkDerivation {
       pname = "haste-prim";
       version = "0.6.0.0";
       sha256 = "1gmvvqy0xy396r3jnfmdhh70j7k73qs38cw9znwgl8jjywpzrmw5";
       libraryHaskellDepends = [ base ghc-prim integer ];
       homepage = "http://haste-lang.org";
       description = "Low level primitives for the Haste compiler";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "haxl" = callPackage
    ({ mkDerivation, aeson, base, binary, bytestring, containers
     , deepseq, exceptions, filepath, ghc-prim, hashable, HUnit, pretty
     , semigroups, stdenv, stm, test-framework, test-framework-hunit
     , text, time, transformers, unordered-containers, vector
     }:
     mkDerivation {
       pname = "haxl";
       version = "2.0.1.0";
       sha256 = "07s3jxqvdcla3qj8jjxd5088kp7h015i2q20kjhs4n73swa9h9fd";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         aeson base binary bytestring containers deepseq exceptions filepath
         ghc-prim hashable pretty semigroups stm text time transformers
         unordered-containers vector
       ];
       testHaskellDepends = [
         aeson base binary bytestring containers deepseq filepath hashable
         HUnit test-framework test-framework-hunit text time
         unordered-containers
       ];
       homepage = "https://github.com/facebook/Haxl";
       description = "A Haskell library for efficient, concurrent, and concise data access";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "HaXml" = callPackage
    ({ mkDerivation, base, bytestring, containers, directory, filepath
     , polyparse, pretty, random, stdenv
     }:
     mkDerivation {
       pname = "HaXml";
       version = "1.25.4";
       sha256 = "1d8xq37h627im5harybhsn08qjdaf6vskldm03cqbfjmr2w6fx6p";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         base bytestring containers filepath polyparse pretty random
       ];
       executableHaskellDepends = [ base directory polyparse pretty ];
       homepage = "http://projects.haskell.org/HaXml/";
       description = "Utilities for manipulating XML documents";
       license = "LGPL";
     }) {};

  "hedgehog" = callPackage
    ({ mkDerivation, ansi-terminal, async, base, bytestring
     , concurrent-output, containers, directory, exceptions
     , lifted-async, mmorph, monad-control, mtl, pretty-show, primitive
     , random, resourcet, semigroups, stdenv, stm, template-haskell
     , text, th-lift, time, transformers, transformers-base
     , wl-pprint-annotated
     }:
     mkDerivation {
       pname = "hedgehog";
       version = "0.6";
       sha256 = "0c3y4gvl1i2r54ayha2kw5i2gdpd8nfzfzjly5vhxm13ylygwvxq";
       libraryHaskellDepends = [
         ansi-terminal async base bytestring concurrent-output containers
         directory exceptions lifted-async mmorph monad-control mtl
         pretty-show primitive random resourcet semigroups stm
         template-haskell text th-lift time transformers transformers-base
         wl-pprint-annotated
       ];
       testHaskellDepends = [
         base containers pretty-show semigroups text transformers
       ];
       homepage = "https://hedgehog.qa";
       description = "Hedgehog will eat all your bugs";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "highlighting-kate" = callPackage
    ({ mkDerivation, base, blaze-html, bytestring, containers, Diff
     , directory, filepath, mtl, parsec, pcre-light, process, stdenv
     , utf8-string
     }:
     mkDerivation {
       pname = "highlighting-kate";
       version = "0.6.4";
       sha256 = "1bqv00gfmrsf0jjr4qf3lhshvfkyzmhbi3pjb6mafbnsyn2k7f6q";
       configureFlags = [ "-fpcre-light" ];
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         base blaze-html bytestring containers mtl parsec pcre-light
         utf8-string
       ];
       testHaskellDepends = [
         base blaze-html containers Diff directory filepath process
       ];
       homepage = "http://github.com/jgm/highlighting-kate";
       description = "Syntax highlighting";
       license = "GPL";
     }) {};

  "hmatrix" = callPackage
    ({ mkDerivation, array, base, binary, bytestring, deepseq, random
     , semigroups, split, stdenv, storable-complex, vector
     }:
     mkDerivation {
       pname = "hmatrix";
       version = "0.19.0.0";
       sha256 = "10jd69nby29dggghcyjk6ykyr5wrn97nrv1dkpyrp0y5xm12xssj";
       configureFlags = [ "-fdisable-default-paths" "-fopenblas" ];
       libraryHaskellDepends = [
         array base binary bytestring deepseq random semigroups split
         storable-complex vector
       ];
       homepage = "https://github.com/albertoruiz/hmatrix";
       description = "Numeric Linear Algebra";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "hostname" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "hostname";
       version = "1.0";
       sha256 = "0p6gm4328946qxc295zb6vhwhf07l1fma82vd0siylnsnsqxlhwv";
       libraryHaskellDepends = [ base ];
       description = "A very simple package providing a cross-platform means of determining the hostname";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "hourglass" = callPackage
    ({ mkDerivation, base, bytestring, deepseq, gauge, mtl, old-locale
     , stdenv, tasty, tasty-hunit, tasty-quickcheck, time
     }:
     mkDerivation {
       pname = "hourglass";
       version = "0.2.11";
       sha256 = "0lag9sgj7ndrbfmab6jhszlv413agg0zzaj5r9f2fmf07wqbp9hq";
       libraryHaskellDepends = [ base deepseq ];
       testHaskellDepends = [
         base deepseq mtl old-locale tasty tasty-hunit tasty-quickcheck time
       ];
       benchmarkHaskellDepends = [
         base bytestring deepseq gauge mtl old-locale time
       ];
       homepage = "https://github.com/vincenthz/hs-hourglass";
       description = "simple performant time related library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "hslogger" = callPackage
    ({ mkDerivation, base, containers, directory, mtl, network
     , old-locale, process, stdenv, time
     }:
     mkDerivation {
       pname = "hslogger";
       version = "1.2.10";
       sha256 = "0as5gvlh6pi2gflakp695qnlizyyp059dqrhvjl4gjxalja6xjnp";
       libraryHaskellDepends = [
         base containers directory mtl network old-locale process time
       ];
       homepage = "http://software.complete.org/hslogger";
       description = "Versatile logging framework";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "hspec-core" = callPackage
    ({ mkDerivation, ansi-terminal, array, base, call-stack, clock
     , deepseq, directory, filepath, hspec-expectations, hspec-meta
     , HUnit, process, QuickCheck, quickcheck-io, random, setenv
     , silently, stdenv, stm, temporary, tf-random, transformers
     }:
     mkDerivation {
       pname = "hspec-core";
       version = "2.5.5";
       sha256 = "1vfrqlpn32s9wiykmkxbnrnd5p56yznw20pf8fwzw78ar4wpz55x";
       libraryHaskellDepends = [
         ansi-terminal array base call-stack clock deepseq directory
         filepath hspec-expectations HUnit QuickCheck quickcheck-io random
         setenv stm tf-random transformers
       ];
       testHaskellDepends = [
         ansi-terminal array base call-stack clock deepseq directory
         filepath hspec-expectations hspec-meta HUnit process QuickCheck
         quickcheck-io random setenv silently stm temporary tf-random
         transformers
       ];
       testTarget = "--test-option=--skip --test-option='Test.Hspec.Core.Runner.hspecResult runs specs in parallel'";
       homepage = "http://hspec.github.io/";
       description = "A Testing Framework for Haskell";
       license = stdenv.lib.licenses.mit;
     }) {};

  "html" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "html";
       version = "1.0.1.2";
       sha256 = "0q9hmfii62kc82ijlg238fxrzxhsivn42x5wd6ffcr9xldg4jd8c";
       libraryHaskellDepends = [ base ];
       description = "HTML combinator library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "http2" = callPackage
    ({ mkDerivation, aeson, aeson-pretty, array, base, bytestring
     , bytestring-builder, case-insensitive, containers, criterion
     , directory, doctest, filepath, Glob, hashtables, heaps, hex, hspec
     , mwc-random, psqueues, stdenv, stm, text, unordered-containers
     , vector, word8
     }:
     mkDerivation {
       pname = "http2";
       version = "1.6.3";
       sha256 = "0hww0rfsv6lqx62qzycbcqy5q6rh9k09qkyjkdm5m1sp1z50wqk1";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         array base bytestring bytestring-builder case-insensitive
         containers psqueues stm
       ];
       testHaskellDepends = [
         aeson aeson-pretty array base bytestring bytestring-builder
         case-insensitive containers directory doctest filepath Glob hex
         hspec psqueues stm text unordered-containers vector word8
       ];
       benchmarkHaskellDepends = [
         array base bytestring case-insensitive containers criterion
         hashtables heaps mwc-random psqueues stm
       ];
       homepage = "https://github.com/kazu-yamamoto/http2";
       description = "HTTP/2 library including frames, priority queues and HPACK";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "http-api-data" = callPackage
    ({ mkDerivation, attoparsec, attoparsec-iso8601, base, bytestring
     , containers, directory, doctest, filepath, hashable, hspec
     , http-types, HUnit, QuickCheck, quickcheck-instances, stdenv, text
     , time, time-locale-compat, unordered-containers, uri-bytestring
     , uuid, uuid-types
     }:
     mkDerivation {
       pname = "http-api-data";
       version = "0.3.7.1";
       sha256 = "1zbmf0kkfsw7pfznisi205gh7jd284gfarxsyiavd2iw26akwqwc";
       libraryHaskellDepends = [
         attoparsec attoparsec-iso8601 base bytestring containers hashable
         http-types text time time-locale-compat unordered-containers
         uri-bytestring uuid-types
       ];
       testHaskellDepends = [
         base bytestring directory doctest filepath hspec HUnit QuickCheck
         quickcheck-instances text time unordered-containers uuid
       ];
       homepage = "http://github.com/fizruk/http-api-data";
       description = "Converting to/from HTTP API data like URL pieces, headers and query parameters";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "http-client" = callPackage
    ({ mkDerivation, array, async, base, blaze-builder, bytestring
     , case-insensitive, containers, cookie, deepseq, directory
     , exceptions, filepath, ghc-prim, hspec, http-types, memory
     , mime-types, monad-control, network, network-uri, random
     , semigroups, stdenv, stm, streaming-commons, text, time
     , transformers, zlib
     }:
     mkDerivation {
       pname = "http-client";
       version = "0.5.13.1";
       sha256 = "0szwbgvkkdz56lgi91armkagmb7nnfwbpp4j7cm9zhmffv3ba8g1";
       libraryHaskellDepends = [
         array base blaze-builder bytestring case-insensitive containers
         cookie deepseq exceptions filepath ghc-prim http-types memory
         mime-types network network-uri random semigroups stm
         streaming-commons text time transformers
       ];
       testHaskellDepends = [
         async base blaze-builder bytestring case-insensitive containers
         deepseq directory hspec http-types monad-control network
         network-uri streaming-commons text time transformers zlib
       ];
       doCheck = false;
       homepage = "https://github.com/snoyberg/http-client";
       description = "An HTTP client engine";
       license = stdenv.lib.licenses.mit;
     }) {};

  "http-conduit" = callPackage
    ({ mkDerivation, aeson, base, blaze-builder, bytestring
     , case-insensitive, conduit, conduit-extra, connection, cookie
     , data-default-class, hspec, http-client, http-client-tls
     , http-types, HUnit, mtl, network, resourcet, stdenv
     , streaming-commons, temporary, text, time, transformers, unliftio
     , unliftio-core, utf8-string, wai, wai-conduit, warp, warp-tls
     }:
     mkDerivation {
       pname = "http-conduit";
       version = "2.3.2";
       sha256 = "1iay4hr0mj8brkxvgkv1liqa8irl9axfc3qhn8qsvcyq4n1l95km";
       libraryHaskellDepends = [
         aeson base bytestring conduit conduit-extra http-client
         http-client-tls http-types mtl resourcet transformers unliftio-core
       ];
       testHaskellDepends = [
         aeson base blaze-builder bytestring case-insensitive conduit
         conduit-extra connection cookie data-default-class hspec
         http-client http-types HUnit network resourcet streaming-commons
         temporary text time transformers unliftio utf8-string wai
         wai-conduit warp warp-tls
       ];
       doCheck = false;
       homepage = "http://www.yesodweb.com/book/http-conduit";
       description = "HTTP client package with conduit interface and HTTPS support";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "idris" = callPackage
    ({ mkDerivation, aeson, annotated-wl-pprint, ansi-terminal
     , ansi-wl-pprint, array, async, base, base64-bytestring, binary
     , blaze-html, blaze-markup, bytestring, Cabal, cheapskate
     , code-page, containers, deepseq, directory, filepath, fingertree
     , fsnotify, gmp, haskeline, ieee754, libffi, megaparsec, mtl
     , network, optparse-applicative, pretty, process, regex-tdfa, safe
     , semigroups, split, stdenv, tagged, tasty, tasty-golden
     , tasty-rerun, terminal-size, text, time, transformers, uniplate
     , unordered-containers, utf8-string, vector
     , vector-binary-instances, zip-archive
     }:
     mkDerivation {
       pname = "idris";
       version = "1.3.0";
       sha256 = "1w5i2z88li4niykwc6yrgxgfp25ll6ih95cip0ri7d8i7ik03c48";
       configureFlags = [ "-fcurses" "-fexeconly" "-fffi" "-fgmp" ];
       isLibrary = true;
       isExecutable = true;
       enableSeparateDataOutput = true;
       setupHaskellDepends = [ base Cabal directory filepath process ];
       libraryHaskellDepends = [
         aeson annotated-wl-pprint ansi-terminal ansi-wl-pprint array async
         base base64-bytestring binary blaze-html blaze-markup bytestring
         cheapskate code-page containers deepseq directory filepath
         fingertree fsnotify haskeline ieee754 libffi megaparsec mtl network
         optparse-applicative pretty process regex-tdfa safe semigroups
         split terminal-size text time transformers uniplate
         unordered-containers utf8-string vector vector-binary-instances
         zip-archive
       ];
       librarySystemDepends = [ gmp ];
       executableHaskellDepends = [
         base directory filepath haskeline transformers
       ];
       testHaskellDepends = [
         base bytestring containers directory filepath haskeline
         optparse-applicative process tagged tasty tasty-golden tasty-rerun
         time transformers
       ];
       homepage = "http://www.idris-lang.org/";
       description = "Functional Programming Language with Dependent Types";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "ieee754" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "ieee754";
       version = "0.8.0";
       sha256 = "1lcs521g9lzy9d7337vg4w7q7s8500rfqy7rcifcz6pm6yfgyb8f";
       libraryHaskellDepends = [ base ];
       homepage = "http://github.com/patperry/hs-ieee754";
       description = "Utilities for dealing with IEEE floating point numbers";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "integer-logarithms" = callPackage
    ({ mkDerivation, array, base, ghc-prim, integer, QuickCheck
     , smallcheck, stdenv, tasty, tasty-hunit, tasty-quickcheck
     , tasty-smallcheck
     }:
     mkDerivation {
       pname = "integer-logarithms";
       version = "1.0.2";
       sha256 = "0w5mhak181zi6qr5h2zbcs9ymaqacisp9jwk99naz6s8zz5rq1ii";
       libraryHaskellDepends = [ array base ghc-prim integer ];
       testHaskellDepends = [
         base QuickCheck smallcheck tasty tasty-hunit tasty-quickcheck
         tasty-smallcheck
       ];
       homepage = "https://github.com/phadej/integer-logarithms";
       description = "Integer logarithms";
       license = stdenv.lib.licenses.mit;
     }) {};

  "io-streams-haproxy" = callPackage
    ({ mkDerivation, attoparsec, base, bytestring, HUnit, io-streams
     , network, stdenv, test-framework, test-framework-hunit
     , transformers
     }:
     mkDerivation {
       pname = "io-streams-haproxy";
       version = "1.0.0.2";
       sha256 = "11nh9q158mgnvvb23s5ffg87lkhl5smk039yl43jghxmb214z0bp";
       libraryHaskellDepends = [
         attoparsec base bytestring io-streams network transformers
       ];
       testHaskellDepends = [
         attoparsec base bytestring HUnit io-streams network test-framework
         test-framework-hunit transformers
       ];
       homepage = "http://snapframework.com/";
       description = "HAProxy protocol 1.5 support for io-streams";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "JuicyPixels" = callPackage
    ({ mkDerivation, base, binary, bytestring, containers, deepseq, mtl
     , primitive, stdenv, transformers, vector, zlib
     }:
     mkDerivation {
       pname = "JuicyPixels";
       version = "3.3";
       sha256 = "1v2xfqi65qcw31021fjpdbaixp2ijq4kmixy5zzkykwc6ap53ln4";
       libraryHaskellDepends = [
         base binary bytestring containers deepseq mtl primitive
         transformers vector zlib
       ];
       homepage = "https://github.com/Twinside/Juicy.Pixels";
       description = "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "language-glsl" = callPackage
    ({ mkDerivation, base, HUnit, parsec, prettyclass, stdenv
     , test-framework, test-framework-hunit
     }:
     mkDerivation {
       pname = "language-glsl";
       version = "0.2.1";
       sha256 = "08hrl9s8640a61npdshjrw5q3j3b2gvms846cf832j0n19mi24h0";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [ base parsec prettyclass ];
       executableHaskellDepends = [ base parsec prettyclass ];
       testHaskellDepends = [
         base HUnit parsec prettyclass test-framework test-framework-hunit
       ];
       description = "GLSL abstract syntax tree, parser, and pretty-printer";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "language-javascript" = callPackage
    ({ mkDerivation, alex, array, base, blaze-builder, bytestring, Cabal
     , containers, happy, hspec, mtl, QuickCheck, semigroups, stdenv
     , text, utf8-light, utf8-string
     }:
     mkDerivation {
       pname = "language-javascript";
       version = "0.6.0.11";
       sha256 = "0hv1rj3yarv035mpnnnbqys4sgd0awqlm5hyf29wp051r6dnwxfl";
       libraryHaskellDepends = [
         array base blaze-builder bytestring containers mtl semigroups text
         utf8-string
       ];
       libraryToolDepends = [ alex happy ];
       testHaskellDepends = [
         array base blaze-builder bytestring Cabal containers hspec mtl
         QuickCheck utf8-light utf8-string
       ];
       homepage = "https://github.com/erikd/language-javascript";
       description = "Parser for JavaScript";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "lens" = callPackage
    ({ mkDerivation, array, base, base-orphans, bifunctors, bytestring
     , call-stack, comonad, containers, contravariant, criterion
     , deepseq, directory, distributive, doctest, exceptions, filepath
     , free, generic-deriving, ghc-prim, hashable, HUnit, kan-extensions
     , mtl, nats, parallel, profunctors, QuickCheck, reflection
     , semigroupoids, semigroups, simple-reflect, stdenv, tagged
     , template-haskell, test-framework, test-framework-hunit
     , test-framework-quickcheck2, test-framework-th, text
     , th-abstraction, transformers, transformers-compat
     , unordered-containers, vector, void
     }:
     mkDerivation {
       pname = "lens";
       version = "4.17";
       sha256 = "1k087zfy10rijr3cikalj8p58d8ypfmhb4d29bsbw8qhakg68dj7";
       libraryHaskellDepends = [
         array base base-orphans bifunctors bytestring call-stack comonad
         containers contravariant distributive exceptions filepath free
         generic-deriving ghc-prim hashable kan-extensions mtl parallel
         profunctors reflection semigroupoids semigroups tagged
         template-haskell text th-abstraction transformers
         transformers-compat unordered-containers vector void
       ];
       testHaskellDepends = [
         base bytestring containers deepseq directory doctest filepath
         generic-deriving HUnit mtl nats parallel QuickCheck semigroups
         simple-reflect test-framework test-framework-hunit
         test-framework-quickcheck2 test-framework-th text transformers
         unordered-containers vector
       ];
       benchmarkHaskellDepends = [
         base bytestring comonad containers criterion deepseq
         generic-deriving transformers unordered-containers vector
       ];
       homepage = "http://github.com/ekmett/lens/";
       description = "Lenses, Folds and Traversals";
       license = stdenv.lib.licenses.bsd2;
     }) {};

  "lens-aeson" = callPackage
    ({ mkDerivation, aeson, attoparsec, base, bytestring, doctest
     , generic-deriving, lens, scientific, semigroups, simple-reflect
     , stdenv, text, unordered-containers, vector
     }:
     mkDerivation {
       pname = "lens-aeson";
       version = "1.0.2";
       sha256 = "1k028ycmhz7mnjlrap88fqix4nmmpyy6b88m16kv77d3r8sz04a3";
       libraryHaskellDepends = [
         aeson attoparsec base bytestring lens scientific text
         unordered-containers vector
       ];
       testHaskellDepends = [
         base doctest generic-deriving semigroups simple-reflect
       ];
       homepage = "http://github.com/lens/lens-aeson/";
       description = "Law-abiding lenses for aeson";
       license = stdenv.lib.licenses.mit;
     }) {};

  "lens-labels" = callPackage
    ({ mkDerivation, base, ghc-prim, profunctors, stdenv, tagged }:
     mkDerivation {
       pname = "lens-labels";
       version = "0.2.0.1";
       sha256 = "1nn0qp0xl65wc5axy68jlmif1k97af8v5r09sf02fw3iww7ym7wj";
       libraryHaskellDepends = [ base ghc-prim profunctors tagged ];
       homepage = "https://github.com/google/proto-lens#readme";
       description = "Integration of lenses with OverloadedLabels";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "lifted-base" = callPackage
    ({ mkDerivation, base, criterion, HUnit, monad-control, monad-peel
     , stdenv, test-framework, test-framework-hunit, transformers
     , transformers-base, transformers-compat
     }:
     mkDerivation {
       pname = "lifted-base";
       version = "0.2.3.11";
       sha256 = "8ec47a9fce7cf5913766a5c53e1b2cf254be733fa9d62e6e2f3f24e538005aab";
       revision = "1";
       editedCabalFile = "0vrik0j1xv2yp759ffa7jb7q838z4wglnbgsrja97mx0dwsbavnx";
       libraryHaskellDepends = [ base monad-control transformers-base ];
       testHaskellDepends = [
         base HUnit monad-control test-framework test-framework-hunit
         transformers transformers-base transformers-compat
       ];
       benchmarkHaskellDepends = [
         base criterion monad-control monad-peel transformers
       ];
       homepage = "https://github.com/basvandijk/lifted-base";
       description = "lifted IO operations from the base library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "linear" = callPackage
    ({ mkDerivation, adjunctions, base, base-orphans, binary, bytes
     , bytestring, cereal, containers, deepseq, distributive, doctest
     , ghc-prim, hashable, HUnit, lens, reflection, semigroupoids
     , semigroups, simple-reflect, stdenv, tagged, test-framework
     , test-framework-hunit, transformers, transformers-compat
     , unordered-containers, vector, void
     }:
     mkDerivation {
       pname = "linear";
       version = "1.20.7";
       sha256 = "1dna0zf4qwqwvslz0nkkfclvbflfvf10qydnjsi20wijilkbd22b";
       revision = "1";
       editedCabalFile = "1l8q2nd4bl4w3q643wpsng5mds5paqxz4zi5wk9vr0pl822q5v2m";
       libraryHaskellDepends = [
         adjunctions base base-orphans binary bytes cereal containers
         deepseq distributive ghc-prim hashable lens reflection
         semigroupoids semigroups tagged transformers transformers-compat
         unordered-containers vector void
       ];
       testHaskellDepends = [
         base binary bytestring deepseq doctest HUnit lens reflection
         simple-reflect test-framework test-framework-hunit vector
       ];
       homepage = "http://github.com/ekmett/linear/";
       description = "Linear Algebra";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "log-domain" = callPackage
    ({ mkDerivation, base, binary, bytes, Cabal, cabal-doctest, cereal
     , comonad, deepseq, distributive, doctest, generic-deriving
     , hashable, semigroupoids, semigroups, simple-reflect, stdenv
     , vector
     }:
     mkDerivation {
       pname = "log-domain";
       version = "0.12";
       sha256 = "0zin3zgxrx8v69blqzkd5gjk0nmpmg58caqz2xa8qd4v1fjcp4bi";
       setupHaskellDepends = [ base Cabal cabal-doctest ];
       libraryHaskellDepends = [
         base binary bytes cereal comonad deepseq distributive hashable
         semigroupoids semigroups vector
       ];
       testHaskellDepends = [
         base doctest generic-deriving semigroups simple-reflect
       ];
       homepage = "http://github.com/ekmett/log-domain/";
       description = "Log-domain arithmetic";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "machines" = callPackage
    ({ mkDerivation, adjunctions, base, comonad, conduit
     , conduit-combinators, containers, criterion, distributive, doctest
     , fail, mtl, pipes, pointed, profunctors, semigroupoids, semigroups
     , stdenv, transformers, transformers-compat, void
     }:
     mkDerivation {
       pname = "machines";
       version = "0.6.3";
       sha256 = "1kxypm26xxd30979yrg94pnaaj3yfn180ri3y4z2xsm2m5iyiliz";
       revision = "1";
       editedCabalFile = "0j7s29ys4p4v2mg8m6s948rkx6gz02jiriaxl8mirmv96qyna57l";
       libraryHaskellDepends = [
         adjunctions base comonad containers distributive fail mtl pointed
         profunctors semigroupoids semigroups transformers
         transformers-compat void
       ];
       testHaskellDepends = [ base doctest ];
       benchmarkHaskellDepends = [
         base conduit conduit-combinators criterion mtl pipes
       ];
       homepage = "http://github.com/ekmett/machines/";
       description = "Networked stream transducers";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "math-functions" = callPackage
    ({ mkDerivation, base, deepseq, erf, HUnit, primitive, QuickCheck
     , stdenv, test-framework, test-framework-hunit
     , test-framework-quickcheck2, vector, vector-th-unbox
     }:
     mkDerivation {
       pname = "math-functions";
       version = "0.2.1.0";
       sha256 = "1sv5vabsx332v1lpb6v3jv4zrzvpx1n7yprzd8wlcda5vsc5a6zp";
       libraryHaskellDepends = [
         base deepseq primitive vector vector-th-unbox
       ];
       testHaskellDepends = [
         base deepseq erf HUnit primitive QuickCheck test-framework
         test-framework-hunit test-framework-quickcheck2 vector
         vector-th-unbox
       ];
       homepage = "https://github.com/bos/math-functions";
       description = "Special functions and Chebyshev polynomials";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "megaparsec" = callPackage
    ({ mkDerivation, base, bytestring, case-insensitive, containers
     , criterion, deepseq, fail, hspec, hspec-discover
     , hspec-expectations, mtl, parser-combinators, QuickCheck
     , scientific, semigroups, stdenv, text, transformers, weigh
     }:
     mkDerivation {
       pname = "megaparsec";
       version = "6.5.0";
       sha256 = "12iggy7qpf8x93jm64zf0g215xwy779bqyfyjk2bhmxqqr1yzgdy";
       libraryHaskellDepends = [
         base bytestring case-insensitive containers deepseq fail mtl
         parser-combinators scientific semigroups text transformers
       ];
       testHaskellDepends = [
         base bytestring containers hspec hspec-expectations mtl QuickCheck
         scientific semigroups text transformers
       ];
       testToolDepends = [ hspec-discover ];
       benchmarkHaskellDepends = [
         base criterion deepseq semigroups text weigh
       ];
       homepage = "https://github.com/mrkkrp/megaparsec";
       description = "Monadic parser combinators";
       license = stdenv.lib.licenses.bsd2;
     }) {};

  "memory" = callPackage
    ({ mkDerivation, base, basement, bytestring, deepseq, foundation
     , ghc-prim, stdenv, tasty, tasty-hunit, tasty-quickcheck
     }:
     mkDerivation {
       pname = "memory";
       version = "0.14.14";
       sha256 = "03lnb7nqshddiwqbz1vpba7mb6l80nav896rr77vlp8m41b9h6qx";
       libraryHaskellDepends = [
         base basement bytestring deepseq foundation ghc-prim
       ];
       testHaskellDepends = [
         base basement bytestring foundation tasty tasty-hunit
         tasty-quickcheck
       ];
       homepage = "https://github.com/vincenthz/hs-memory";
       description = "memory and related abstraction stuff";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "microlens-th" = callPackage
    ({ mkDerivation, base, containers, microlens, stdenv
     , template-haskell
     }:
     mkDerivation {
       pname = "microlens-th";
       version = "0.4.1.1";
       sha256 = "5b1a400db8577805d80fb83963ef2a41cf43023b38300fdeaacb01a4fb526a7b";
       libraryHaskellDepends = [
         base containers microlens template-haskell
       ];
       homepage = "http://github.com/aelve/microlens";
       description = "Automatic generation of record lenses for microlens";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "MissingH" = callPackage
    ({ mkDerivation, array, base, containers, directory
     , errorcall-eq-instance, filepath, hslogger, HUnit, mtl, network
     , old-locale, old-time, parsec, process, QuickCheck, random
     , regex-compat, stdenv, testpack, time
     }:
     mkDerivation {
       pname = "MissingH";
       version = "1.4.0.1";
       sha256 = "0wcvgrmav480w7nf4bl14yi0jq2yzanysxwzwas9hpb28vyjlgr8";
       libraryHaskellDepends = [
         array base containers directory filepath hslogger HUnit mtl network
         old-locale old-time parsec process random regex-compat time
       ];
       testHaskellDepends = [
         array base containers directory errorcall-eq-instance filepath
         hslogger HUnit mtl network old-locale old-time parsec process
         QuickCheck random regex-compat testpack time
       ];
       homepage = "http://software.complete.org/missingh";
       description = "Large utility library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "mwc-random" = callPackage
    ({ mkDerivation, base, math-functions, primitive, stdenv, time
     , vector
     }:
     mkDerivation {
       pname = "mwc-random";
       version = "0.13.6.0";
       sha256 = "065f334fc13c057eb03ef0b6aa3665ff193609d9bfcad8068bdd260801f44716";
       libraryHaskellDepends = [
         base math-functions primitive time vector
       ];
       doCheck = false;
       homepage = "https://github.com/bos/mwc-random";
       description = "Fast, high quality pseudo random number generation";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "named" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "named";
       version = "0.2.0.0";
       sha256 = "17ldvxypf099wj5phzh2aymzfwmyiyzhz24h1aj2s21nrys5n6n0";
       libraryHaskellDepends = [ base ];
       testHaskellDepends = [ base ];
       description = "Named parameters (keyword arguments) for Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "network" = callPackage
    ({ mkDerivation, base, bytestring, doctest, HUnit, stdenv
     , test-framework, test-framework-hunit
     }:
     mkDerivation {
       pname = "network";
       version = "2.6.3.2";
       sha256 = "1dn092zfqmxfbzln6d0khka4gizzjivf2yja9w9hwb5g9q3pfi1m";
       libraryHaskellDepends = [ base bytestring ];
       testHaskellDepends = [
         base bytestring doctest HUnit test-framework test-framework-hunit
       ];
       homepage = "https://github.com/haskell/network";
       description = "Low-level networking interface";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "network-info" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "network-info";
       version = "0.2.0.10";
       sha256 = "0anmgzcpnz7nw3n6vq0r25m1s9l2svpwi83wza0lzkrlbnbzd02n";
       libraryHaskellDepends = [ base ];
       homepage = "http://github.com/jystic/network-info";
       description = "Access the local computer's basic network configuration";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "network-multicast" = callPackage
    ({ mkDerivation, base, network, stdenv }:
     mkDerivation {
       pname = "network-multicast";
       version = "0.2.0";
       sha256 = "1wkmx5gic0zqghxxdyyrcysfaj1aknj53v50qq6c40d4qfmm0fqg";
       libraryHaskellDepends = [ base network ];
       description = "Simple multicast library";
       license = stdenv.lib.licenses.publicDomain;
     }) {};

  "network-transport" = callPackage
    ({ mkDerivation, base, binary, bytestring, deepseq, hashable, stdenv
     , transformers
     }:
     mkDerivation {
       pname = "network-transport";
       version = "0.5.2";
       sha256 = "0m4hixari440lymj43l9q4485gz6i9a768g7mnzwfynn8cmng5g7";
       libraryHaskellDepends = [
         base binary bytestring deepseq hashable transformers
       ];
       homepage = "http://haskell-distributed.github.com";
       description = "Network abstraction layer";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "network-uri" = callPackage
    ({ mkDerivation, base, deepseq, HUnit, parsec, stdenv
     , test-framework, test-framework-hunit, test-framework-quickcheck2
     }:
     mkDerivation {
       pname = "network-uri";
       version = "2.6.1.0";
       sha256 = "423e0a2351236f3fcfd24e39cdbc38050ec2910f82245e69ca72a661f7fc47f0";
       revision = "1";
       editedCabalFile = "141nj7q0p9wkn5gr41ayc63cgaanr9m59yym47wpxqr3c334bk32";
       libraryHaskellDepends = [ base deepseq parsec ];
       testHaskellDepends = [
         base HUnit test-framework test-framework-hunit
         test-framework-quickcheck2
       ];
       homepage = "https://github.com/haskell/network-uri";
       description = "URI manipulation";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "old-time" = callPackage
    ({ mkDerivation, base, old-locale, stdenv }:
     mkDerivation {
       pname = "old-time";
       version = "1.1.0.3";
       sha256 = "1h9b26s3kfh2k0ih4383w90ibji6n0iwamxp6rfp2lbq1y5ibjqw";
       revision = "1";
       editedCabalFile = "0zrhh57pzq7zms5j3gxjlsiy5nazphyy8kif6kbcm846qlnkpqqn";
       libraryHaskellDepends = [ base old-locale ];
       description = "Time library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "OneTuple" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "OneTuple";
       version = "0.2.1";
       sha256 = "1x52b68zh3k9lnps5s87kzan7dzvqp6mrwgayjq15w9dv6v78vsb";
       libraryHaskellDepends = [ base ];
       description = "Singleton Tuple";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "optparse-applicative" = callPackage
    ({ mkDerivation, ansi-wl-pprint, base, bytestring, fail, QuickCheck
     , semigroups, stdenv, transformers, transformers-compat
     }:
     mkDerivation {
       pname = "optparse-applicative";
       version = "0.14.2.0";
       sha256 = "0c3z1mvynlyv1garjbdmdd3npm40dabgm75js4r07cf766c1wd71";
       libraryHaskellDepends = [
         ansi-wl-pprint base fail semigroups transformers
         transformers-compat
       ];
       testHaskellDepends = [ base bytestring QuickCheck semigroups ];
       homepage = "https://github.com/pcapriotti/optparse-applicative";
       description = "Utilities and combinators for parsing command line options";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "parsec" = callPackage
    ({ mkDerivation, base, bytestring, fail, HUnit, mtl, semigroups
     , stdenv, test-framework, test-framework-hunit, text
     }:
     mkDerivation {
       pname = "parsec";
       version = "3.1.13.0";
       sha256 = "1wc09pyn70p8z6llink10c8pqbh6ikyk554911yfwxv1g91swqbq";
       libraryHaskellDepends = [
         base bytestring fail mtl semigroups text
       ];
       testHaskellDepends = [
         base HUnit mtl semigroups test-framework test-framework-hunit
       ];
       homepage = "https://github.com/hvr/parsec";
       description = "Monadic parser combinators";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "path-io" = callPackage
    ({ mkDerivation, base, containers, directory, dlist, exceptions
     , filepath, hspec, path, stdenv, temporary, time, transformers
     }:
     mkDerivation {
       pname = "path-io";
       version = "1.4.0";
       sha256 = "0pffdxzn59qm3ifk746sp2g3h2gip2ijs39gwi0k0xn1rkid6ph5";
       libraryHaskellDepends = [
         base containers directory dlist exceptions filepath path temporary
         time transformers
       ];
       testHaskellDepends = [
         base directory exceptions hspec path transformers
       ];
       homepage = "https://github.com/mrkkrp/path-io";
       description = "Interface to ‘directory’ package for users of ‘path’";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "pretty" = callPackage
    ({ mkDerivation, base, criterion, deepseq, ghc-prim, QuickCheck
     , stdenv
     }:
     mkDerivation {
       pname = "pretty";
       version = "1.1.3.6";
       sha256 = "1s363nax6zxqs4bnciddsfc2sanv1lp4x02y58z3yzdgrciwq4pb";
       libraryHaskellDepends = [ base deepseq ghc-prim ];
       testHaskellDepends = [ base deepseq ghc-prim QuickCheck ];
       benchmarkHaskellDepends = [ base criterion ];
       homepage = "http://github.com/haskell/pretty";
       description = "Pretty-printing library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "pretty-show" = callPackage
    ({ mkDerivation, array, base, filepath, ghc-prim, happy
     , haskell-lexer, pretty, stdenv, text
     }:
     mkDerivation {
       pname = "pretty-show";
       version = "1.8.1";
       sha256 = "0s8bj7ymbc9pz91kls2blrpip7pphcc683wd5ig8kywjmix1ibsg";
       isLibrary = true;
       isExecutable = true;
       enableSeparateDataOutput = true;
       libraryHaskellDepends = [
         array base filepath ghc-prim haskell-lexer pretty text
       ];
       libraryToolDepends = [ happy ];
       executableHaskellDepends = [ base ];
       homepage = "http://wiki.github.com/yav/pretty-show";
       description = "Tools for working with derived `Show` instances and generic inspection of values";
       license = stdenv.lib.licenses.mit;
     }) {};

  "primitive" = callPackage
    ({ mkDerivation, base, ghc-prim, stdenv, transformers }:
     mkDerivation {
       pname = "primitive";
       version = "0.6.4.0";
       sha256 = "0r0cda7acvplgwaxy69kviv4jp7kkfi038by68gj4yfx4iwszgjc";
       libraryHaskellDepends = [ base ghc-prim transformers ];
       homepage = "https://github.com/haskell/primitive";
       description = "Primitive memory-related operations";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "process" = callPackage
    ({ mkDerivation, base, bytestring, deepseq, directory, filepath
     , stdenv
     }:
     mkDerivation {
       pname = "process";
       version = "1.6.2.0";
       sha256 = "0gsyzwvid2w1z5m0w492sqb8q8c86q9wa7iqjadcdhbv8ag9z6xm";
       libraryHaskellDepends = [ base deepseq directory filepath ];
       testHaskellDepends = [ base bytestring directory ];
       description = "Process libraries";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "proto-lens" = callPackage
    ({ mkDerivation, attoparsec, base, bytestring, containers
     , data-default-class, deepseq, lens-family, lens-labels, parsec
     , pretty, semigroups, stdenv, text, transformers, void
     }:
     mkDerivation {
       pname = "proto-lens";
       version = "0.3.1.0";
       sha256 = "1awlp7101vhqf2hhz3h93mf38lyyfx5ay3gvrdna0k3msykimgw7";
       enableSeparateDataOutput = true;
       libraryHaskellDepends = [
         attoparsec base bytestring containers data-default-class deepseq
         lens-family lens-labels parsec pretty semigroups text transformers
         void
       ];
       homepage = "https://github.com/google/proto-lens#readme";
       description = "A lens-based implementation of protocol buffers in Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "protolude" = callPackage
    ({ mkDerivation, array, async, base, bytestring, containers, deepseq
     , ghc-prim, hashable, mtl, mtl-compat, stdenv, stm, text
     , transformers, transformers-compat
     }:
     mkDerivation {
       pname = "protolude";
       version = "0.2.2";
       sha256 = "0z251xxv8rhds981acdf6dr34ac2kc062mbq9gl2nj339grhqpb8";
       libraryHaskellDepends = [
         array async base bytestring containers deepseq ghc-prim hashable
         mtl mtl-compat stm text transformers transformers-compat
       ];
       homepage = "https://github.com/sdiehl/protolude";
       description = "A small prelude";
       license = stdenv.lib.licenses.mit;
     }) {};

  "purescript" = callPackage
    ({ mkDerivation, aeson, aeson-better-errors, ansi-terminal
     , ansi-wl-pprint, base, base-compat, blaze-html, bower-json, boxes
     , bytestring, cheapskate, clock, containers, data-ordlist, deepseq
     , directory, dlist, edit-distance, file-embed, filepath, fsnotify
     , gitrev, Glob, haskeline, hspec, hspec-discover, http-types, HUnit
     , language-javascript, lens, lifted-base, monad-control
     , monad-logger, mtl, network, optparse-applicative, parallel
     , parsec, pattern-arrows, process, protolude, regex-tdfa, safe
     , scientific, semigroups, sourcemap, spdx, split, stdenv, stm
     , stringsearch, syb, tasty, tasty-hspec, text, time, transformers
     , transformers-base, transformers-compat, unordered-containers
     , utf8-string, vector, wai, wai-websockets, warp, websockets
     }:
     mkDerivation {
       pname = "purescript";
       version = "0.12.0";
       sha256 = "0lkrlry4rr1l1c5ncy7wlbv1ll6n0dkw7j1gjpxn3706gan921rb";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         aeson aeson-better-errors ansi-terminal base base-compat blaze-html
         bower-json boxes bytestring cheapskate clock containers
         data-ordlist deepseq directory dlist edit-distance file-embed
         filepath fsnotify Glob haskeline language-javascript lens
         lifted-base monad-control monad-logger mtl parallel parsec
         pattern-arrows process protolude regex-tdfa safe scientific
         semigroups sourcemap spdx split stm stringsearch syb text time
         transformers transformers-base transformers-compat
         unordered-containers utf8-string vector
       ];
       executableHaskellDepends = [
         aeson aeson-better-errors ansi-terminal ansi-wl-pprint base
         base-compat blaze-html bower-json boxes bytestring cheapskate clock
         containers data-ordlist deepseq directory dlist edit-distance
         file-embed filepath fsnotify gitrev Glob haskeline http-types
         language-javascript lens lifted-base monad-control monad-logger mtl
         network optparse-applicative parallel parsec pattern-arrows process
         protolude regex-tdfa safe scientific semigroups sourcemap spdx
         split stm stringsearch syb text time transformers transformers-base
         transformers-compat unordered-containers utf8-string vector wai
         wai-websockets warp websockets
       ];
       testHaskellDepends = [
         aeson aeson-better-errors ansi-terminal base base-compat blaze-html
         bower-json boxes bytestring cheapskate clock containers
         data-ordlist deepseq directory dlist edit-distance file-embed
         filepath fsnotify Glob haskeline hspec hspec-discover HUnit
         language-javascript lens lifted-base monad-control monad-logger mtl
         parallel parsec pattern-arrows process protolude regex-tdfa safe
         scientific semigroups sourcemap spdx split stm stringsearch syb
         tasty tasty-hspec text time transformers transformers-base
         transformers-compat unordered-containers utf8-string vector
       ];
       doCheck = false;
       homepage = "http://www.purescript.org/";
       description = "PureScript Programming Language Compiler";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "QuickCheck" = callPackage
    ({ mkDerivation, base, containers, deepseq, random, stdenv
     , tf-random, transformers
     }:
     mkDerivation {
       pname = "QuickCheck";
       version = "2.10.1";
       sha256 = "1rfmns3lj3hl93k1jws85ajkkw7z9ll8cw292n9m7zald1w5dfqx";
       libraryHaskellDepends = [
         base containers deepseq random tf-random transformers
       ];
       testHaskellDepends = [ base ];
       homepage = "https://github.com/nick8325/quickcheck";
       description = "Automatic testing of Haskell programs";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "reflection" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "reflection";
       version = "2.1.2";
       sha256 = "0f9w0akbm6p8h7kzgcd2f6nnpw1wy84pqn45vfz1ch5j0hn8h2d9";
       libraryHaskellDepends = [ base ];
       homepage = "http://github.com/ekmett/reflection";
       description = "Reifies arbitrary terms into types that can be reflected back into terms";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "regex-pcre-builtin" = callPackage
    ({ mkDerivation, array, base, bytestring, containers, regex-base
     , stdenv
     }:
     mkDerivation {
       pname = "regex-pcre-builtin";
       version = "0.94.4.8.8.35";
       sha256 = "0y7as9wqlkykpipka2cfdhmcnin345q01pp0wsva8fwmvsavdl8b";
       libraryHaskellDepends = [
         array base bytestring containers regex-base
       ];
       homepage = "http://hackage.haskell.org/package/regex-pcre";
       description = "Replaces/Enhances Text.Regex";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "regex-posix" = callPackage
    ({ mkDerivation, array, base, bytestring, containers, regex-base
     , stdenv
     }:
     mkDerivation {
       pname = "regex-posix";
       version = "0.95.2";
       sha256 = "0gkhzhj8nvfn1ija31c7xnl6p0gadwii9ihyp219ck2arlhrj0an";
       libraryHaskellDepends = [
         array base bytestring containers regex-base
       ];
       homepage = "http://sourceforge.net/projects/lazy-regex";
       description = "Replaces/Enhances Text.Regex";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "regex-tdfa" = callPackage
    ({ mkDerivation, array, base, bytestring, containers, ghc-prim, mtl
     , parsec, regex-base, semigroups, stdenv
     }:
     mkDerivation {
       pname = "regex-tdfa";
       version = "1.2.3.1";
       sha256 = "0l7ajnh4hpgggf2a1r9dg0hx2fy679vd2kada5y7r02hy3nfxala";
       libraryHaskellDepends = [
         array base bytestring containers ghc-prim mtl parsec regex-base
         semigroups
       ];
       homepage = "https://github.com/ChrisKuklewicz/regex-tdfa";
       description = "Replaces/Enhances Text.Regex";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "repa" = callPackage
    ({ mkDerivation, base, bytestring, ghc-prim, QuickCheck, stdenv
     , template-haskell, vector
     }:
     mkDerivation {
       pname = "repa";
       version = "3.4.1.3";
       sha256 = "3e32d7b2964994d6edd3eabcce38f0c08ff474b3d4acb0d9b3f3b75c76e67a70";
       revision = "2";
       editedCabalFile = "0kmypfnpzjszdzhpd1lskp0plja8zyr8r2y9xyscx4g5md9hh0zp";
       libraryHaskellDepends = [
         base bytestring ghc-prim QuickCheck template-haskell vector
       ];
       homepage = "http://repa.ouroborus.net";
       description = "High performance, regular, shape polymorphic parallel arrays";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "resourcet" = callPackage
    ({ mkDerivation, base, containers, exceptions, hspec, lifted-base
     , mmorph, monad-control, mtl, stdenv, transformers
     , transformers-base, transformers-compat, unliftio-core
     }:
     mkDerivation {
       pname = "resourcet";
       version = "1.1.11";
       sha256 = "1n94m2c7rxk2bgm8wywrkp9pmqlnv2dl35yaylninzm8xk1xavil";
       libraryHaskellDepends = [
         base containers exceptions lifted-base mmorph monad-control mtl
         transformers transformers-base transformers-compat unliftio-core
       ];
       testHaskellDepends = [ base hspec lifted-base transformers ];
       homepage = "http://github.com/snoyberg/conduit";
       description = "Deterministic allocation and freeing of scarce resources";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "rio" = callPackage
    ({ mkDerivation, base, bytestring, containers, deepseq, directory
     , exceptions, filepath, hashable, hspec, microlens, mtl, primitive
     , process, stdenv, text, time, typed-process, unliftio
     , unordered-containers, vector
     }:
     mkDerivation {
       pname = "rio";
       version = "0.1.5.0";
       sha256 = "064h8a4hp53a479d3ak0vmqbx8hi0cpg7zn4wp23rjy26dka8p7g";
       libraryHaskellDepends = [
         base bytestring containers deepseq directory exceptions filepath
         hashable microlens mtl primitive process text time typed-process
         unliftio unordered-containers vector
       ];
       testHaskellDepends = [
         base bytestring containers deepseq directory exceptions filepath
         hashable hspec microlens mtl primitive process text time
         typed-process unliftio unordered-containers vector
       ];
       homepage = "https://github.com/commercialhaskell/rio#readme";
       description = "A standard library for Haskell";
       license = stdenv.lib.licenses.mit;
     }) {};

  "sandi" = callPackage
    ({ mkDerivation, base, bytestring, conduit, criterion, exceptions
     , HUnit, stdenv, stringsearch, tasty, tasty-hunit, tasty-quickcheck
     , tasty-th
     }:
     mkDerivation {
       pname = "sandi";
       version = "0.4.2";
       sha256 = "0dvkpk91n9kz2ha04rvp231ra9sgd1ilyc1qkzf9l03iir7zrh9b";
       libraryHaskellDepends = [
         base bytestring conduit exceptions stringsearch
       ];
       testHaskellDepends = [
         base bytestring HUnit tasty tasty-hunit tasty-quickcheck tasty-th
       ];
       benchmarkHaskellDepends = [ base bytestring criterion ];
       homepage = "http://hackage.haskell.org/package/sandi";
       description = "Data encoding library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "sbv" = callPackage
    ({ mkDerivation, array, async, base, base-compat, containers
     , crackNum, data-binary-ieee754, deepseq, directory, filepath
     , HUnit, mtl, old-time, pretty, process, QuickCheck, random, stdenv
     , syb
     }:
     mkDerivation {
       pname = "sbv";
       version = "6.1";
       sha256 = "1a8wa2pgzd6z5bnndb6adzxcxyq1b6qlxwh8apjynqzbrhhjspn5";
       isLibrary = true;
       isExecutable = true;
       enableSeparateDataOutput = true;
       libraryHaskellDepends = [
         array async base base-compat containers crackNum
         data-binary-ieee754 deepseq directory filepath mtl old-time pretty
         process QuickCheck random syb
       ];
       testHaskellDepends = [
         base data-binary-ieee754 directory filepath HUnit syb
       ];
       homepage = "http://leventerkok.github.com/sbv/";
       description = "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "scientific" = callPackage
    ({ mkDerivation, base, binary, bytestring, containers, criterion
     , deepseq, ghc-prim, hashable, integer, integer-logarithms
     , primitive, QuickCheck, smallcheck, stdenv, tasty, tasty-ant-xml
     , tasty-hunit, tasty-quickcheck, tasty-smallcheck, text
     }:
     mkDerivation {
       pname = "scientific";
       version = "0.3.5.1";
       sha256 = "19hvcqrrm375inqmci516xk32vir7dgw7ini8ij5rkdnrf1fd9jv";
       libraryHaskellDepends = [
         base binary bytestring containers deepseq ghc-prim hashable integer
         integer-logarithms primitive text
       ];
       testHaskellDepends = [
         base binary bytestring QuickCheck smallcheck tasty tasty-ant-xml
         tasty-hunit tasty-quickcheck tasty-smallcheck text
       ];
       benchmarkHaskellDepends = [ base criterion ];
       homepage = "https://github.com/basvandijk/scientific";
       description = "Numbers represented using scientific notation";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "semigroupoids" = callPackage
    ({ mkDerivation, base, base-orphans, bifunctors, Cabal
     , cabal-doctest, comonad, containers, contravariant, distributive
     , doctest, hashable, semigroups, stdenv, tagged, template-haskell
     , transformers, transformers-compat, unordered-containers
     }:
     mkDerivation {
       pname = "semigroupoids";
       version = "5.3.1";
       sha256 = "13iqjckq3jzp6rxldrf3bcvk3061ssvsr6y0g5y9jq32z1hyr2fd";
       setupHaskellDepends = [ base Cabal cabal-doctest ];
       libraryHaskellDepends = [
         base base-orphans bifunctors comonad containers contravariant
         distributive hashable semigroups tagged template-haskell
         transformers transformers-compat unordered-containers
       ];
       testHaskellDepends = [ base doctest ];
       homepage = "http://github.com/ekmett/semigroupoids";
       description = "Semigroupoids: Category sans id";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "semigroups" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "semigroups";
       version = "0.18.5";
       sha256 = "17g29h62g1k51ghhvzkw72zksjgi6vs6bfipkj81pqw1dsprcamb";
       libraryHaskellDepends = [ base ];
       homepage = "http://github.com/ekmett/semigroups/";
       description = "Anything that associates";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "serialise" = callPackage
    ({ mkDerivation, aeson, array, base, base16-bytestring
     , base64-bytestring, binary, bytestring, cborg, cereal
     , cereal-vector, containers, criterion, deepseq, directory
     , filepath, ghc-prim, half, hashable, pretty, primitive, QuickCheck
     , quickcheck-instances, scientific, stdenv, store, tar, tasty
     , tasty-hunit, tasty-quickcheck, text, time, unordered-containers
     , vector, zlib
     }:
     mkDerivation {
       pname = "serialise";
       version = "0.2.0.0";
       sha256 = "1iqkawxy946dhldam30cc1k9h4g2w4cp34fg57ln9k7507mvcns0";
       libraryHaskellDepends = [
         array base bytestring cborg containers ghc-prim half hashable
         primitive text time unordered-containers vector
       ];
       testHaskellDepends = [
         aeson array base base16-bytestring base64-bytestring binary
         bytestring cborg containers deepseq directory filepath ghc-prim
         half hashable primitive QuickCheck quickcheck-instances scientific
         tasty tasty-hunit tasty-quickcheck text time unordered-containers
         vector
       ];
       benchmarkHaskellDepends = [
         aeson array base binary bytestring cborg cereal cereal-vector
         containers criterion deepseq directory filepath ghc-prim half
         pretty store tar text time vector zlib
       ];
       homepage = "https://github.com/well-typed/cborg";
       description = "A binary serialisation library for Haskell values";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "servant" = callPackage
    ({ mkDerivation, aeson, aeson-compat, attoparsec, base, base-compat
     , bytestring, case-insensitive, directory, doctest, filemanip
     , filepath, hspec, http-api-data, http-media, http-types, mmorph
     , mtl, natural-transformation, network-uri, QuickCheck
     , quickcheck-instances, semigroups, stdenv, string-conversions
     , tagged, text, url, vault
     }:
     mkDerivation {
       pname = "servant";
       version = "0.11";
       sha256 = "00vbhijdxb00n8ha068zdwvqlfqv1iradkkdchzzvnhg2jpzgcy5";
       libraryHaskellDepends = [
         aeson attoparsec base base-compat bytestring case-insensitive
         http-api-data http-media http-types mmorph mtl
         natural-transformation network-uri semigroups string-conversions
         tagged text vault
       ];
       testHaskellDepends = [
         aeson aeson-compat attoparsec base base-compat bytestring directory
         doctest filemanip filepath hspec QuickCheck quickcheck-instances
         semigroups string-conversions text url
       ];
       homepage = "http://haskell-servant.readthedocs.org/";
       description = "A family of combinators for defining webservices APIs";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "servant-docs" = callPackage
    ({ mkDerivation, aeson, aeson-pretty, base, base-compat, bytestring
     , case-insensitive, control-monad-omega, hashable, hspec
     , http-media, http-types, lens, semigroups, servant, stdenv
     , string-conversions, text, unordered-containers
     }:
     mkDerivation {
       pname = "servant-docs";
       version = "0.11";
       sha256 = "02bzp1bcvc54cx0kcnnsqqiva7rwbrn46a7gdxzqqiqrmm0a0fm0";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         aeson aeson-pretty base base-compat bytestring case-insensitive
         control-monad-omega hashable http-media http-types lens semigroups
         servant string-conversions text unordered-containers
       ];
       executableHaskellDepends = [
         aeson base lens servant string-conversions text
       ];
       testHaskellDepends = [
         aeson base hspec lens servant string-conversions
       ];
       homepage = "http://haskell-servant.readthedocs.org/";
       description = "generate API docs for your servant webservice";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "servant-server" = callPackage
    ({ mkDerivation, aeson, attoparsec, base, base-compat
     , base64-bytestring, bytestring, containers, directory, doctest
     , exceptions, filemanip, filepath, hspec, hspec-discover, hspec-wai
     , http-api-data, http-types, mime-types, monad-control, mtl
     , network, network-uri, parsec, QuickCheck, resourcet, safe
     , servant, should-not-typecheck, split, stdenv, string-conversions
     , system-filepath, tagged, temporary, text, transformers
     , transformers-base, transformers-compat, wai, wai-extra, warp
     , word8
     }:
     mkDerivation {
       pname = "servant-server";
       version = "0.12";
       sha256 = "1iiwk4d945z4xkxm3hn4d9ybi04n1ig4niip7vk3xp0wzikk7wk5";
       libraryHaskellDepends = [
         aeson attoparsec base base-compat base64-bytestring bytestring
         containers directory exceptions filepath http-api-data http-types
         mime-types monad-control mtl network network-uri resourcet safe
         servant split string-conversions system-filepath tagged text
         transformers transformers-base transformers-compat wai word8
       ];
       testHaskellDepends = [
         aeson base base-compat base64-bytestring bytestring directory
         doctest exceptions filemanip filepath hspec hspec-wai http-types
         mtl network parsec QuickCheck resourcet safe servant
         should-not-typecheck string-conversions temporary text transformers
         transformers-compat wai wai-extra warp
       ];
       testToolDepends = [ hspec-discover ];
       homepage = "http://haskell-servant.readthedocs.org/";
       description = "A family of combinators for defining webservices APIs and serving them";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "setenv" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "setenv";
       version = "0.1.1.3";
       sha256 = "0cnbgrvb9byyahb37zlqrj05rj25v190crgcw8wmlgf0mwwxyn73";
       revision = "1";
       editedCabalFile = "1xygqg3qrn9wiqh1v4z296dwg4vgg6qn5mg6j3zgx2w5rfj7fzzz";
       libraryHaskellDepends = [ base ];
       description = "A cross-platform library for setting environment variables";
       license = stdenv.lib.licenses.mit;
     }) {};

  "shake" = callPackage
    ({ mkDerivation, base, binary, bytestring, deepseq, directory, extra
     , filepath, hashable, js-flot, js-jquery, primitive, process
     , QuickCheck, random, semigroups, stdenv, time, transformers, unix
     , unordered-containers, utf8-string
     }:
     mkDerivation {
       pname = "shake";
       version = "0.16.4";
       sha256 = "0dhlkcn1zsg1w97vzs1yrpkn6iwhlzh36dwclx2lafzbdjja6cmp";
       isLibrary = true;
       isExecutable = true;
       enableSeparateDataOutput = true;
       libraryHaskellDepends = [
         base binary bytestring deepseq directory extra filepath hashable
         js-flot js-jquery primitive process random semigroups time
         transformers unordered-containers utf8-string
       ];
       executableHaskellDepends = [
         base binary bytestring deepseq directory extra filepath hashable
         js-flot js-jquery primitive process random semigroups time
         transformers unordered-containers utf8-string
       ];
       testHaskellDepends = [
         base binary bytestring deepseq directory extra filepath hashable
         js-flot js-jquery primitive process QuickCheck random semigroups
         time transformers unix unordered-containers utf8-string
       ];
       homepage = "https://shakebuild.com";
       description = "Build system library, like Make, but more accurate dependencies";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "singletons" = callPackage
    ({ mkDerivation, base, Cabal, containers, directory, filepath, mtl
     , process, stdenv, syb, tasty, tasty-golden, template-haskell
     }:
     mkDerivation {
       pname = "singletons";
       version = "2.0.1";
       sha256 = "0hds218jc2vcxmx1nqfxrnriifqqkww62ylafa0vxvk7lcyrs57x";
       libraryHaskellDepends = [
         base containers mtl syb template-haskell
       ];
       testHaskellDepends = [
         base Cabal directory filepath process tasty tasty-golden
       ];
       homepage = "http://www.github.com/goldfirere/singletons";
       description = "A framework for generating singleton types";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "skein" = callPackage
    ({ mkDerivation, base, bytestring, cereal, crypto-api, filepath
     , hspec, stdenv, tagged
     }:
     mkDerivation {
       pname = "skein";
       version = "1.0.9.4";
       sha256 = "1jdqdk0rz2wnvw735clnj8jh0a9rkrbqjg7vk3w6wczdql6cm0pq";
       libraryHaskellDepends = [
         base bytestring cereal crypto-api tagged
       ];
       testHaskellDepends = [
         base bytestring cereal crypto-api filepath hspec tagged
       ];
       homepage = "https://github.com/meteficha/skein";
       description = "Skein, a family of cryptographic hash functions. Includes Skein-MAC as well.";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "statistics" = callPackage
    ({ mkDerivation, aeson, base, base-orphans, binary, deepseq, erf
     , HUnit, ieee754, math-functions, monad-par, mwc-random, primitive
     , QuickCheck, stdenv, test-framework, test-framework-hunit
     , test-framework-quickcheck2, vector, vector-algorithms
     , vector-binary-instances, vector-th-unbox
     }:
     mkDerivation {
       pname = "statistics";
       version = "0.14.0.2";
       sha256 = "3495df2da42c9fcc5b594b97f16c02353bfd6616d6e134ac031dac389d7a4778";
       revision = "2";
       editedCabalFile = "1bx70yqkn62ii17fjv3pig4hklrzkqd09zj67zzjiyjzmn04fir3";
       libraryHaskellDepends = [
         aeson base base-orphans binary deepseq erf math-functions monad-par
         mwc-random primitive vector vector-algorithms
         vector-binary-instances vector-th-unbox
       ];
       testHaskellDepends = [
         aeson base binary erf HUnit ieee754 math-functions mwc-random
         primitive QuickCheck test-framework test-framework-hunit
         test-framework-quickcheck2 vector vector-algorithms
       ];
       homepage = "https://github.com/bos/statistics";
       description = "A library of statistical types, data, and functions";
       license = stdenv.lib.licenses.bsd2;
     }) {};

  "stm-chans" = callPackage
    ({ mkDerivation, base, stdenv, stm }:
     mkDerivation {
       pname = "stm-chans";
       version = "3.0.0.4";
       sha256 = "0f27sp09yha43xk9q55sc185jyjs5h7gq2dhsyx6bm9kz9dzqi13";
       libraryHaskellDepends = [ base stm ];
       homepage = "http://code.haskell.org/~wren/";
       description = "Additional types of channels for STM";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "streaming-bytestring" = callPackage
    ({ mkDerivation, base, bytestring, deepseq, exceptions, mmorph, mtl
     , resourcet, semigroups, smallcheck, stdenv, streaming, tasty
     , tasty-smallcheck, transformers, transformers-base
     }:
     mkDerivation {
       pname = "streaming-bytestring";
       version = "0.1.6";
       sha256 = "1lsklavhk6wcsgjr2rcwkkv827gnd9spv4zwz5i5zf3njvy27my1";
       libraryHaskellDepends = [
         base bytestring deepseq exceptions mmorph mtl resourcet semigroups
         streaming transformers transformers-base
       ];
       testHaskellDepends = [
         base bytestring smallcheck streaming tasty tasty-smallcheck
         transformers
       ];
       homepage = "https://github.com/haskell-streaming/streaming-bytestring";
       description = "effectful byte steams, or: bytestring io done right";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "streaming-commons" = callPackage
    ({ mkDerivation, array, async, base, blaze-builder, bytestring
     , deepseq, directory, gauge, hspec, network, process, QuickCheck
     , random, stdenv, stm, text, transformers, zlib
     }:
     mkDerivation {
       pname = "streaming-commons";
       version = "0.1.19";
       sha256 = "19qp8bnnfs31jk08991lmj3dywbjxh9iydriifbdjj2mvy8axz23";
       libraryHaskellDepends = [
         array async base blaze-builder bytestring directory network process
         random stm text transformers zlib
       ];
       testHaskellDepends = [
         array async base blaze-builder bytestring deepseq hspec network
         QuickCheck text zlib
       ];
       benchmarkHaskellDepends = [
         base blaze-builder bytestring deepseq gauge text
       ];
       homepage = "https://github.com/fpco/streaming-commons";
       description = "Common lower-level functions needed by various streaming data libraries";
       license = stdenv.lib.licenses.mit;
     }) {};

  "superbuffer" = callPackage
    ({ mkDerivation, async, base, buffer-builder, bytestring, criterion
     , HTF, QuickCheck, stdenv
     }:
     mkDerivation {
       pname = "superbuffer";
       version = "0.3.1.1";
       sha256 = "0y3c2v2ca5lzz6265bcn9g04j6aihm7kw8w91ywfl7bkg1agp9fp";
       libraryHaskellDepends = [ base bytestring ];
       testHaskellDepends = [ async base bytestring HTF QuickCheck ];
       benchmarkHaskellDepends = [
         async base buffer-builder bytestring criterion
       ];
       homepage = "https://github.com/agrafix/superbuffer#readme";
       description = "Efficiently build a bytestring from smaller chunks";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "system-fileio" = callPackage
    ({ mkDerivation, base, bytestring, chell, stdenv, system-filepath
     , temporary, text, time, transformers
     }:
     mkDerivation {
       pname = "system-fileio";
       version = "0.3.16.3";
       sha256 = "1484hcl27s2qcby8ws5djj11q9bz68bspcifz9h5gii2ndy70x9i";
       libraryHaskellDepends = [
         base bytestring system-filepath text time
       ];
       testHaskellDepends = [
         base bytestring chell system-filepath temporary text time
         transformers
       ];
       homepage = "https://github.com/fpco/haskell-filesystem";
       description = "Consistent filesystem interaction across GHC versions (deprecated)";
       license = stdenv.lib.licenses.mit;
     }) {};

  "system-filepath" = callPackage
    ({ mkDerivation, base, bytestring, chell, chell-quickcheck, deepseq
     , QuickCheck, stdenv, text
     }:
     mkDerivation {
       pname = "system-filepath";
       version = "0.4.13.4";
       sha256 = "1yy5zsmmimhg6iaw9fmpwrxvxrgi5s6bfyqfihdsnx4bjvn7sp9l";
       libraryHaskellDepends = [ base bytestring deepseq text ];
       testHaskellDepends = [
         base bytestring chell chell-quickcheck QuickCheck text
       ];
       homepage = "https://github.com/fpco/haskell-filesystem";
       description = "High-level, byte-based file and directory path manipulations (deprecated)";
       license = stdenv.lib.licenses.mit;
     }) {};

  "tasty" = callPackage
    ({ mkDerivation, ansi-terminal, async, base, clock, containers, mtl
     , optparse-applicative, stdenv, stm, tagged, unbounded-delays
     }:
     mkDerivation {
       pname = "tasty";
       version = "1.1.0.3";
       sha256 = "14riid753hjqr6lca1kgxpnvq0wykf0k3qc5jpag42hh8bszav22";
       libraryHaskellDepends = [
         ansi-terminal async base clock containers mtl optparse-applicative
         stm tagged unbounded-delays
       ];
       homepage = "https://github.com/feuerbach/tasty";
       description = "Modern and extensible testing framework";
       license = stdenv.lib.licenses.mit;
     }) {};

  "template-haskell" = callPackage
    ({ mkDerivation, base, ghc-boot-th, pretty, stdenv }:
     mkDerivation {
       pname = "template-haskell";
       version = "2.11.1.0";
       sha256 = "171ngdd93i9prp9d5a4ix0alp30ahw2dvdk7i8in9mzscnv41csz";
       libraryHaskellDepends = [ base ghc-boot-th pretty ];
       description = "Support library for Template Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "temporary" = callPackage
    ({ mkDerivation, base, base-compat, directory, exceptions, filepath
     , stdenv, tasty, tasty-hunit, transformers
     }:
     mkDerivation {
       pname = "temporary";
       version = "1.2.1.1";
       sha256 = "1wq0rc71mp0lw7pkpcbhglf636ni46xnlpsmx6yz8acmwmqj8xsm";
       libraryHaskellDepends = [
         base directory exceptions filepath transformers
       ];
       testHaskellDepends = [
         base base-compat directory filepath tasty tasty-hunit
       ];
       homepage = "https://github.com/feuerbach/temporary";
       description = "Portable temporary file and directory support";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "terminal-size" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "terminal-size";
       version = "0.3.2.1";
       sha256 = "0n4nvj3dbj9gxfnprgish45asn9z4dipv9j98s8i7g2n8yb3xhmm";
       libraryHaskellDepends = [ base ];
       description = "Get terminal window height and width";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "test-framework" = callPackage
    ({ mkDerivation, ansi-terminal, ansi-wl-pprint, base, bytestring
     , containers, hostname, HUnit, libxml, old-locale, QuickCheck
     , random, regex-posix, semigroups, stdenv, time, xml
     }:
     mkDerivation {
       pname = "test-framework";
       version = "0.8.2.0";
       sha256 = "1hhacrzam6b8f10hyldmjw8pb7frdxh04rfg3farxcxwbnhwgbpm";
       libraryHaskellDepends = [
         ansi-terminal ansi-wl-pprint base containers hostname old-locale
         random regex-posix semigroups time xml
       ];
       testHaskellDepends = [
         ansi-terminal ansi-wl-pprint base bytestring containers hostname
         HUnit libxml old-locale QuickCheck random regex-posix semigroups
         time xml
       ];
       homepage = "http://haskell.github.io/test-framework/";
       description = "Framework for running and organising tests, with HUnit and QuickCheck support";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "text" = callPackage
    ({ mkDerivation, array, base, binary, bytestring, deepseq, directory
     , ghc-prim, HUnit, integer, QuickCheck, quickcheck-unicode, random
     , stdenv, test-framework, test-framework-hunit
     , test-framework-quickcheck2
     }:
     mkDerivation {
       pname = "text";
       version = "1.2.3.0";
       sha256 = "06iir7q99rnffzxi8gagn8w1k9m49368sbidgz634fv1gxib3q10";
       libraryHaskellDepends = [
         array base binary bytestring deepseq ghc-prim integer
       ];
       testHaskellDepends = [
         array base binary bytestring deepseq directory ghc-prim HUnit
         integer QuickCheck quickcheck-unicode random test-framework
         test-framework-hunit test-framework-quickcheck2
       ];
       doCheck = false;
       homepage = "https://github.com/haskell/text";
       description = "An efficient packed Unicode text type";
       license = stdenv.lib.licenses.bsd2;
     }) {};

  "text-short" = callPackage
    ({ mkDerivation, base, binary, bytestring, deepseq, hashable
     , quickcheck-instances, semigroups, stdenv, tasty, tasty-hunit
     , tasty-quickcheck, text
     }:
     mkDerivation {
       pname = "text-short";
       version = "0.1.1";
       sha256 = "1c912nn1xqqvg27rndb8qvqwhw4iivhr19qjkgy3nfbi6krzkvsm";
       libraryHaskellDepends = [
         base binary bytestring deepseq hashable semigroups text
       ];
       testHaskellDepends = [
         base binary quickcheck-instances tasty tasty-hunit tasty-quickcheck
         text
       ];
       description = "Memory-efficient representation of Unicode text strings";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "tf-random" = callPackage
    ({ mkDerivation, base, primitive, random, stdenv, time }:
     mkDerivation {
       pname = "tf-random";
       version = "0.5";
       sha256 = "0445r2nns6009fmq0xbfpyv7jpzwv0snccjdg7hwj4xk4z0cwc1f";
       libraryHaskellDepends = [ base primitive random time ];
       description = "High-quality splittable pseudorandom number generator";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "th-lift-instances" = callPackage
    ({ mkDerivation, base, bytestring, containers, QuickCheck, stdenv
     , template-haskell, text, th-lift, vector
     }:
     mkDerivation {
       pname = "th-lift-instances";
       version = "0.1.11";
       sha256 = "1f56cp6ckcalld5jchv0kxpjkwcsixd7smd0g7r8cg67ppx6m90x";
       libraryHaskellDepends = [
         base bytestring containers template-haskell text th-lift vector
       ];
       testHaskellDepends = [
         base bytestring containers QuickCheck template-haskell text vector
       ];
       homepage = "http://github.com/bennofs/th-lift-instances/";
       description = "Lift instances for template-haskell for common data types";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "time" = callPackage
    ({ mkDerivation, base, deepseq, QuickCheck, random, stdenv, tasty
     , tasty-hunit, tasty-quickcheck, unix
     }:
     mkDerivation {
       pname = "time";
       version = "1.8.0.3";
       sha256 = "0mbz76v74q938ramsgipgsvk8hvnplcnffplaq439z202zkyar1h";
       libraryHaskellDepends = [ base deepseq ];
       testHaskellDepends = [
         base deepseq QuickCheck random tasty tasty-hunit tasty-quickcheck
         unix
       ];
       homepage = "https://github.com/haskell/time";
       description = "A time library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "transformers" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "transformers";
       version = "0.5.5.0";
       sha256 = "198ric8gr1y58scckr468d11y2g45mzc5pkaa40shj7xgj1bh7mi";
       libraryHaskellDepends = [ base ];
       description = "Concrete functor and monad transformers";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "transient" = callPackage
    ({ mkDerivation, atomic-primops, base, bytestring, containers
     , directory, mtl, random, stdenv, stm, time, transformers
     }:
     mkDerivation {
       pname = "transient";
       version = "0.6.0.1";
       sha256 = "1k3zh4ahzzmj5ni0jyahzhfhbnvksa1ybq93541faa4g98h44ggy";
       libraryHaskellDepends = [
         base bytestring containers directory mtl random stm time
         transformers
       ];
       testHaskellDepends = [
         atomic-primops base bytestring containers directory mtl random stm
         time transformers
       ];
       homepage = "https://github.com/transient-haskell/transient";
       description = "composing programs with multithreading, events and distributed computing";
       license = stdenv.lib.licenses.mit;
     }) {};

  "trifecta" = callPackage
    ({ mkDerivation, ansi-terminal, ansi-wl-pprint, array, base
     , blaze-builder, blaze-html, blaze-markup, bytestring, Cabal
     , cabal-doctest, charset, comonad, containers, deepseq, doctest
     , fail, fingertree, ghc-prim, hashable, lens, mtl, parsers
     , profunctors, QuickCheck, reducers, semigroups, stdenv
     , transformers, unordered-containers, utf8-string
     }:
     mkDerivation {
       pname = "trifecta";
       version = "1.7.1.1";
       sha256 = "13n6a3fdxngnzsjnhfrzigv1c2g0xm6lqkjcnirpc37sd0rpby31";
       setupHaskellDepends = [ base Cabal cabal-doctest ];
       libraryHaskellDepends = [
         ansi-terminal ansi-wl-pprint array base blaze-builder blaze-html
         blaze-markup bytestring charset comonad containers deepseq fail
         fingertree ghc-prim hashable lens mtl parsers profunctors reducers
         semigroups transformers unordered-containers utf8-string
       ];
       testHaskellDepends = [ base doctest parsers QuickCheck ];
       homepage = "http://github.com/ekmett/trifecta/";
       description = "A modern parser combinator library with convenient diagnostics";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "turtle" = callPackage
    ({ mkDerivation, ansi-wl-pprint, async, base, bytestring, clock
     , containers, criterion, directory, doctest, exceptions, foldl
     , hostname, managed, optional-args, optparse-applicative, process
     , semigroups, stdenv, stm, system-fileio, system-filepath
     , temporary, text, time, transformers
     }:
     mkDerivation {
       pname = "turtle";
       version = "1.5.10";
       sha256 = "0c2bfwfj1pf3s4kjr4k9g36166pj9wfpp2rrs5blzh77hjmak4rs";
       libraryHaskellDepends = [
         ansi-wl-pprint async base bytestring clock containers directory
         exceptions foldl hostname managed optional-args
         optparse-applicative process semigroups stm system-fileio
         system-filepath temporary text time transformers
       ];
       testHaskellDepends = [ base doctest system-filepath temporary ];
       benchmarkHaskellDepends = [ base criterion text ];
       description = "Shell programming, Haskell-style";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "typed-process" = callPackage
    ({ mkDerivation, async, base, base64-bytestring, bytestring, hspec
     , process, stdenv, stm, temporary, transformers
     }:
     mkDerivation {
       pname = "typed-process";
       version = "0.2.2.0";
       sha256 = "0c6gvgvjyncbni9a5bvpbglknd4yclr3d3hfg9bhgahmkj40dva2";
       libraryHaskellDepends = [
         async base bytestring process stm transformers
       ];
       testHaskellDepends = [
         async base base64-bytestring bytestring hspec process stm temporary
         transformers
       ];
       homepage = "https://haskell-lang.org/library/typed-process";
       description = "Run external processes, with strong typing of streams";
       license = stdenv.lib.licenses.mit;
     }) {};

  "unbounded-delays" = callPackage
    ({ mkDerivation, base, stdenv }:
     mkDerivation {
       pname = "unbounded-delays";
       version = "0.1.1.0";
       sha256 = "1ir9fghbrc214c97bwafk5ck6cacxz1pdnq4i18p604d1b8zg9wa";
       libraryHaskellDepends = [ base ];
       homepage = "https://github.com/basvandijk/unbounded-delays";
       description = "Unbounded thread delays and timeouts";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "unix-time" = callPackage
    ({ mkDerivation, base, binary, bytestring, doctest, hspec
     , old-locale, old-time, QuickCheck, stdenv, time
     }:
     mkDerivation {
       pname = "unix-time";
       version = "0.3.7";
       sha256 = "1qdlc9raih8s0m3x8x3n7q3ngh4faw2alv9l78sp6gnx648k0c8i";
       libraryHaskellDepends = [ base binary bytestring old-time ];
       testHaskellDepends = [
         base bytestring doctest hspec old-locale old-time QuickCheck time
       ];
       description = "Unix time parser/formatter and utilities";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "unliftio" = callPackage
    ({ mkDerivation, async, base, deepseq, directory, filepath, hspec
     , process, stdenv, stm, time, transformers, unliftio-core
     }:
     mkDerivation {
       pname = "unliftio";
       version = "0.2.7.1";
       sha256 = "1rif0r52qw2g8kxnbxpcdsmy925py47f8gspfvkbp16nrpxk7k63";
       libraryHaskellDepends = [
         async base deepseq directory filepath process stm time transformers
         unliftio-core
       ];
       testHaskellDepends = [
         async base deepseq directory filepath hspec process stm time
         transformers unliftio-core
       ];
       homepage = "https://github.com/fpco/unliftio/tree/master/unliftio#readme";
       description = "The MonadUnliftIO typeclass for unlifting monads to IO (batteries included)";
       license = stdenv.lib.licenses.mit;
     }) {};

  "unordered-containers" = callPackage
    ({ mkDerivation, base, bytestring, ChasingBottoms, containers
     , criterion, deepseq, deepseq-generics, hashable, hashmap, HUnit
     , mtl, QuickCheck, random, stdenv, test-framework
     , test-framework-hunit, test-framework-quickcheck2
     }:
     mkDerivation {
       pname = "unordered-containers";
       version = "0.2.9.0";
       sha256 = "0l4264p0av12cc6i8gls13q8y27x12z2ar4x34n3x59y99fcnc37";
       libraryHaskellDepends = [ base deepseq hashable ];
       testHaskellDepends = [
         base ChasingBottoms containers hashable HUnit QuickCheck
         test-framework test-framework-hunit test-framework-quickcheck2
       ];
       benchmarkHaskellDepends = [
         base bytestring containers criterion deepseq deepseq-generics
         hashable hashmap mtl random
       ];
       homepage = "https://github.com/tibbe/unordered-containers";
       description = "Efficient hashing-based container types";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "uri-bytestring" = callPackage
    ({ mkDerivation, attoparsec, base, base-compat, blaze-builder
     , bytestring, containers, criterion, deepseq, deepseq-generics
     , fail, generics-sop, HUnit, network-uri, QuickCheck
     , quickcheck-instances, semigroups, stdenv, tasty, tasty-hunit
     , tasty-quickcheck, template-haskell, transformers
     }:
     mkDerivation {
       pname = "uri-bytestring";
       version = "0.3.0.1";
       sha256 = "10bg6ia6l2blfb5068ppbnkk46linnda0c79yq99ls4j1x91wwgw";
       libraryHaskellDepends = [
         attoparsec base blaze-builder bytestring containers fail
         template-haskell
       ];
       testHaskellDepends = [
         attoparsec base base-compat blaze-builder bytestring containers
         generics-sop HUnit QuickCheck quickcheck-instances semigroups tasty
         tasty-hunit tasty-quickcheck transformers
       ];
       benchmarkHaskellDepends = [
         base blaze-builder bytestring criterion deepseq deepseq-generics
         network-uri
       ];
       homepage = "https://github.com/Soostone/uri-bytestring";
       description = "Haskell URI parsing as ByteStrings";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "validity" = callPackage
    ({ mkDerivation, base, hspec, stdenv }:
     mkDerivation {
       pname = "validity";
       version = "0.7.0.0";
       sha256 = "0xribw98amafihw87ddajk6vlirp7w9b26lrnjgq7jfm4710j95f";
       libraryHaskellDepends = [ base ];
       testHaskellDepends = [ base hspec ];
       homepage = "https://github.com/NorfairKing/validity#readme";
       description = "Validity typeclass";
       license = stdenv.lib.licenses.mit;
     }) {};

  "vector" = callPackage
    ({ mkDerivation, base, deepseq, ghc-prim, HUnit, primitive
     , QuickCheck, random, semigroups, stdenv, template-haskell
     , test-framework, test-framework-hunit, test-framework-quickcheck2
     , transformers
     }:
     mkDerivation {
       pname = "vector";
       version = "0.12.0.1";
       sha256 = "0yrx2ypiaxahvaz84af5bi855hd3107kxkbqc8km29nsp5wyw05i";
       libraryHaskellDepends = [
         base deepseq ghc-prim primitive semigroups
       ];
       testHaskellDepends = [
         base HUnit QuickCheck random template-haskell test-framework
         test-framework-hunit test-framework-quickcheck2 transformers
       ];
       homepage = "https://github.com/haskell/vector";
       description = "Efficient Arrays";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "vector-th-unbox" = callPackage
    ({ mkDerivation, base, data-default, stdenv, template-haskell
     , vector
     }:
     mkDerivation {
       pname = "vector-th-unbox";
       version = "0.2.1.6";
       sha256 = "be87d4a6f1005ee2d0de6adf521e05c9e83c441568a8a8b60c79efe24ae90235";
       libraryHaskellDepends = [ base template-haskell vector ];
       testHaskellDepends = [ base data-default vector ];
       description = "Deriver for Data.Vector.Unboxed using Template Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "vinyl" = callPackage
    ({ mkDerivation, array, base, criterion, doctest, ghc-prim, hspec
     , lens, linear, microlens, mwc-random, primitive
     , should-not-typecheck, singletons, stdenv, tagged, vector
     }:
     mkDerivation {
       pname = "vinyl";
       version = "0.8.1.1";
       sha256 = "0gwgsk7xf64291s6crvzlry1bvcvwaqmvxpl605id4bb099kqfnh";
       libraryHaskellDepends = [ array base ghc-prim ];
       testHaskellDepends = [
         base doctest hspec lens microlens should-not-typecheck singletons
       ];
       benchmarkHaskellDepends = [
         base criterion linear microlens mwc-random primitive tagged vector
       ];
       description = "Extensible Records";
       license = stdenv.lib.licenses.mit;
     }) {};

  "wai-app-static" = callPackage
    ({ mkDerivation, base, blaze-html, blaze-markup, bytestring
     , containers, cryptonite, directory, file-embed, filepath, hspec
     , http-date, http-types, memory, mime-types, mockery, network
     , old-locale, optparse-applicative, stdenv, template-haskell
     , temporary, text, time, transformers, unix-compat
     , unordered-containers, wai, wai-extra, warp, zlib
     }:
     mkDerivation {
       pname = "wai-app-static";
       version = "3.1.6.2";
       sha256 = "0gnwq6ad5m8w8sqq4dzpz23l5rjdphfsf8h9h27lrvv1prkabc6h";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         base blaze-html blaze-markup bytestring containers cryptonite
         directory file-embed filepath http-date http-types memory
         mime-types old-locale optparse-applicative template-haskell text
         time transformers unordered-containers wai wai-extra warp zlib
       ];
       executableHaskellDepends = [
         base bytestring containers directory mime-types text
       ];
       testHaskellDepends = [
         base bytestring filepath hspec http-date http-types mime-types
         mockery network old-locale temporary text time transformers
         unix-compat wai wai-extra zlib
       ];
       homepage = "http://www.yesodweb.com/book/web-application-interface";
       description = "WAI application for static serving";
       license = stdenv.lib.licenses.mit;
     }) {};

  "wai-extra" = callPackage
    ({ mkDerivation, aeson, ansi-terminal, base, base64-bytestring
     , blaze-builder, bytestring, case-insensitive, containers, cookie
     , data-default-class, deepseq, directory, fast-logger, hspec
     , http-types, HUnit, iproute, lifted-base, network, old-locale
     , resourcet, stdenv, streaming-commons, stringsearch, text, time
     , transformers, vault, void, wai, wai-logger, word8, zlib
     }:
     mkDerivation {
       pname = "wai-extra";
       version = "3.0.22.0";
       sha256 = "0rwksl5jkhkgd10qi0wvhfw28g1qci60pc6chrv5bg0w0xqkv532";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         aeson ansi-terminal base base64-bytestring blaze-builder bytestring
         case-insensitive containers cookie data-default-class deepseq
         directory fast-logger http-types iproute lifted-base network
         old-locale resourcet streaming-commons stringsearch text time
         transformers vault void wai wai-logger word8 zlib
       ];
       testHaskellDepends = [
         base blaze-builder bytestring case-insensitive cookie fast-logger
         hspec http-types HUnit resourcet text time transformers wai zlib
       ];
       homepage = "http://github.com/yesodweb/wai";
       description = "Provides some basic WAI handlers and middleware";
       license = stdenv.lib.licenses.mit;
     }) {};

  "wai-logger" = callPackage
    ({ mkDerivation, base, blaze-builder, byteorder, bytestring
     , case-insensitive, doctest, fast-logger, http-types, network
     , old-locale, stdenv, time, wai
     }:
     mkDerivation {
       pname = "wai-logger";
       version = "2.3.1";
       sha256 = "0ldx9jiq70ga2clsrg1sw5jsy76n4s6kzs3785qs87gbj5dqfdip";
       libraryHaskellDepends = [
         base blaze-builder byteorder bytestring case-insensitive
         fast-logger http-types network old-locale time wai
       ];
       testHaskellDepends = [ base doctest ];
       description = "A logging system for WAI";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "warp" = callPackage
    ({ mkDerivation, array, async, auto-update, base, bsb-http-chunked
     , bytestring, case-insensitive, containers, directory, doctest
     , gauge, ghc-prim, hashable, hspec, http-client, http-date
     , http-types, http2, HUnit, iproute, lifted-base, network, process
     , QuickCheck, semigroups, silently, stdenv, stm, streaming-commons
     , text, time, transformers, vault, wai, word8
     }:
     mkDerivation {
       pname = "warp";
       version = "3.2.22";
       sha256 = "03jrby2q3xb16xgbmlk3yl36g1mnwq56lj62whks438568626nv4";
       libraryHaskellDepends = [
         array async auto-update base bsb-http-chunked bytestring
         case-insensitive containers ghc-prim hashable http-date http-types
         http2 iproute network semigroups stm streaming-commons text time
         vault wai word8
       ];
       testHaskellDepends = [
         array async auto-update base bsb-http-chunked bytestring
         case-insensitive containers directory doctest ghc-prim hashable
         hspec http-client http-date http-types http2 HUnit iproute
         lifted-base network process QuickCheck semigroups silently stm
         streaming-commons text time transformers vault wai word8
       ];
       benchmarkHaskellDepends = [
         auto-update base bytestring containers gauge hashable http-date
         http-types network semigroups
       ];
       homepage = "http://github.com/yesodweb/wai";
       description = "A fast, light-weight web server for WAI applications";
       license = stdenv.lib.licenses.mit;
     }) {};

  "websockets" = callPackage
    ({ mkDerivation, attoparsec, base, base64-bytestring, binary
     , bytestring, bytestring-builder, case-insensitive, containers
     , criterion, entropy, HUnit, network, QuickCheck, random, SHA
     , stdenv, streaming-commons, test-framework, test-framework-hunit
     , test-framework-quickcheck2, text
     }:
     mkDerivation {
       pname = "websockets";
       version = "0.12.5.1";
       sha256 = "1v9zmd34bmh0y02njff4n1vkp1d5jdpq9dlva0z7sr0glv8c3drz";
       isLibrary = true;
       isExecutable = true;
       libraryHaskellDepends = [
         attoparsec base base64-bytestring binary bytestring
         bytestring-builder case-insensitive containers entropy network
         random SHA streaming-commons text
       ];
       testHaskellDepends = [
         attoparsec base base64-bytestring binary bytestring
         bytestring-builder case-insensitive containers entropy HUnit
         network QuickCheck random SHA streaming-commons test-framework
         test-framework-hunit test-framework-quickcheck2 text
       ];
       benchmarkHaskellDepends = [
         attoparsec base base64-bytestring binary bytestring
         bytestring-builder case-insensitive containers criterion entropy
         network random SHA text
       ];
       doCheck = false;
       homepage = "http://jaspervdj.be/websockets";
       description = "A sensible and clean way to write WebSocket-capable servers in Haskell";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "word8" = callPackage
    ({ mkDerivation, base, bytestring, criterion, hspec, stdenv }:
     mkDerivation {
       pname = "word8";
       version = "0.1.3";
       sha256 = "12jx7f13d2h1djq4fh4dyrab61sm49mj1w61j3rzp2vjfm696c16";
       libraryHaskellDepends = [ base ];
       testHaskellDepends = [ base hspec ];
       benchmarkHaskellDepends = [ base bytestring criterion ];
       description = "Word8 library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "x509-system" = callPackage
    ({ mkDerivation, base, bytestring, containers, directory, filepath
     , mtl, pem, process, stdenv, x509, x509-store
     }:
     mkDerivation {
       pname = "x509-system";
       version = "1.6.6";
       sha256 = "06a4m9c7vlr9nhp9gmqbb46arf0yj1dkdm4nip03hzy67spdmp20";
       libraryHaskellDepends = [
         base bytestring containers directory filepath mtl pem process x509
         x509-store
       ];
       homepage = "http://github.com/vincenthz/hs-certificate";
       description = "Handle per-operating-system X.509 accessors and storage";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "xhtml" = callPackage
    ({ mkDerivation, base, semigroups, stdenv }:
     mkDerivation {
       pname = "xhtml";
       version = "3000.2.2.1";
       sha256 = "0939kwpinq6l4n3nyvd1gzyl7f83gymw0wzqndlgy1yc7q0nkj2w";
       libraryHaskellDepends = [ base semigroups ];
       homepage = "https://github.com/haskell/xhtml";
       description = "An XHTML combinator library";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "yesod" = callPackage
    ({ mkDerivation, aeson, base, blaze-html, blaze-markup, bytestring
     , conduit, containers, data-default-class, directory, fast-logger
     , HsYAML, monad-logger, resourcet, semigroups, shakespeare, stdenv
     , streaming-commons, template-haskell, text, transformers
     , unordered-containers, wai, wai-extra, wai-logger, warp
     , yesod-core, yesod-form, yesod-persistent
     }:
     mkDerivation {
       pname = "yesod";
       version = "1.6.0";
       sha256 = "0wx77nbpzdh40p1bm527kimfj48vs9d2avpvvz2w42zi3pz2y94a";
       libraryHaskellDepends = [
         aeson base blaze-html blaze-markup bytestring conduit containers
         data-default-class directory fast-logger HsYAML monad-logger
         resourcet semigroups shakespeare streaming-commons template-haskell
         text transformers unordered-containers wai wai-extra wai-logger
         warp yesod-core yesod-form yesod-persistent
       ];
       homepage = "http://www.yesodweb.com/";
       description = "Creation of type-safe, RESTful web applications";
       license = stdenv.lib.licenses.mit;
     }) {};

  "yesod-core" = callPackage
    ({ mkDerivation, aeson, async, auto-update, base, blaze-html
     , blaze-markup, byteable, bytestring, case-insensitive, cereal
     , clientsession, conduit, conduit-extra, containers, cookie
     , deepseq, fast-logger, gauge, hspec, hspec-expectations
     , http-types, HUnit, monad-logger, mtl, network, parsec
     , path-pieces, random, resourcet, rio, shakespeare, stdenv
     , streaming-commons, template-haskell, text, time, transformers
     , unliftio, unordered-containers, vector, wai, wai-extra
     , wai-logger, warp, word8
     }:
     mkDerivation {
       pname = "yesod-core";
       version = "1.6.6";
       sha256 = "0xahf6m5c7mkl74p0gimy4wb5w4s3lh92wwxmk517fbq666c92kb";
       libraryHaskellDepends = [
         aeson auto-update base blaze-html blaze-markup byteable bytestring
         case-insensitive cereal clientsession conduit conduit-extra
         containers cookie deepseq fast-logger http-types monad-logger mtl
         parsec path-pieces random resourcet rio shakespeare
         template-haskell text time transformers unliftio
         unordered-containers vector wai wai-extra wai-logger warp word8
       ];
       testHaskellDepends = [
         async base bytestring clientsession conduit conduit-extra
         containers cookie hspec hspec-expectations http-types HUnit network
         path-pieces random resourcet shakespeare streaming-commons
         template-haskell text transformers unliftio wai wai-extra warp
       ];
       benchmarkHaskellDepends = [
         base blaze-html bytestring gauge shakespeare text
       ];
       homepage = "http://www.yesodweb.com/";
       description = "Creation of type-safe, RESTful web applications";
       license = stdenv.lib.licenses.mit;
     }) {};

  "yesod-static" = callPackage
    ({ mkDerivation, async, attoparsec, base, base64-bytestring
     , blaze-builder, byteable, bytestring, conduit, containers
     , cryptonite, cryptonite-conduit, css-text, data-default, directory
     , exceptions, file-embed, filepath, hashable, hjsmin, hspec
     , http-types, HUnit, memory, mime-types, old-time, process
     , resourcet, stdenv, template-haskell, text, time, transformers
     , unordered-containers, wai, wai-app-static, wai-extra, yesod-core
     , yesod-test
     }:
     mkDerivation {
       pname = "yesod-static";
       version = "1.6.0";
       sha256 = "03l8jjn3pw7j38i91hakf1lgr4lf2lc610a783i7zhmr9f9ga2xx";
       libraryHaskellDepends = [
         async attoparsec base base64-bytestring blaze-builder byteable
         bytestring conduit containers cryptonite cryptonite-conduit
         css-text data-default directory exceptions file-embed filepath
         hashable hjsmin http-types memory mime-types old-time process
         resourcet template-haskell text time transformers
         unordered-containers wai wai-app-static yesod-core
       ];
       testHaskellDepends = [
         async base base64-bytestring byteable bytestring conduit containers
         cryptonite cryptonite-conduit data-default directory exceptions
         file-embed filepath hjsmin hspec http-types HUnit memory mime-types
         old-time process resourcet template-haskell text time transformers
         unordered-containers wai wai-app-static wai-extra yesod-core
         yesod-test
       ];
       homepage = "http://www.yesodweb.com/";
       description = "Static file serving subsite for Yesod Web Framework";
       license = stdenv.lib.licenses.mit;
     }) {};

  "zip-archive" = callPackage
    ({ mkDerivation, array, base, binary, bytestring, Cabal, containers
     , digest, directory, filepath, HUnit, mtl, pretty, process, stdenv
     , temporary, text, time, zlib
     }:
     mkDerivation {
       pname = "zip-archive";
       version = "0.3.3";
       sha256 = "0kf8xyac168bng8a0za2jwrbss7a4ralvci9g54hnvl0gkkxx2lq";
       isLibrary = true;
       isExecutable = true;
       setupHaskellDepends = [ base Cabal ];
       libraryHaskellDepends = [
         array base binary bytestring containers digest directory filepath
         mtl pretty text time zlib
       ];
       testHaskellDepends = [
         base bytestring directory filepath HUnit process temporary time
       ];
       homepage = "http://github.com/jgm/zip-archive";
       description = "Library for creating and modifying zip archives";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "zlib" = callPackage
    ({ mkDerivation, base, bytestring, QuickCheck, stdenv, tasty
     , tasty-hunit, tasty-quickcheck
     }:
     mkDerivation {
       pname = "zlib";
       version = "0.6.1.2";
       sha256 = "1fx2k2qmgm2dj3fkxx2ry945fpdn02d4dkihjxma21xgdiilxsz4";
       libraryHaskellDepends = [ base bytestring ];
       testHaskellDepends = [
         base bytestring QuickCheck tasty tasty-hunit tasty-quickcheck
       ];
       description = "Compression and decompression in the gzip and zlib formats";
       license = stdenv.lib.licenses.bsd3;
     }) {};

  "zlib-bindings" = callPackage
    ({ mkDerivation, base, bytestring, hspec, QuickCheck, stdenv, zlib
     }:
     mkDerivation {
       pname = "zlib-bindings";
       version = "0.1.1.5";
       sha256 = "02ciywlz4wdlymgc3jsnicz9kzvymjw1www2163gxidnz4wb8fy8";
       libraryHaskellDepends = [ base bytestring zlib ];
       testHaskellDepends = [ base bytestring hspec QuickCheck zlib ];
       homepage = "http://github.com/snoyberg/zlib-bindings";
       description = "Low-level bindings to the zlib package. (deprecated)";
       license = stdenv.lib.licenses.bsd3;
     }) {};

}
