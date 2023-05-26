#!/bin/bash


usage() {
    echo 'Usage (check mode)'
    echo "      $0 -d [dest_dir]"
    echo ''
    echo '      (install mode)'
    echo "      $0 -s [src_dir] -d [dest_dir]"
    echo ''
    echo '          src_dir  has to be the dir where GOG installed Magic Carpet 2'
    echo '          dst_dir  has to be the dir where remc2 will search for the game assets'
    echo ''
    echo '  the install mode needs the "p7zip" and "bchunk" packages to be installed'
}

check_CD_Files() {
    cat << EOF | sha256sum --quiet --check 
a8d2aa84b8ffc7d5f7313c244ca45d632d748e19370c4744788818ab1b4b4b67  ./SOUND/MPU401.MDI
d258ed5119eaf3c1499ddd49536efab238d228ef5ff60a49c0caf710f613d19a  ./SOUND/ESFM.MDI
03d90c1c0e5c029b9016e593fce2ce3d4ceb6f67d016d291821031f0406388f8  ./SOUND/AILDRVR.LST
13b77fefc77060472c8c60f4816406a86a01f6a673dd2fb041d2ad02ccc10f56  ./SOUND/ADLIBG.MDI
e7034fb38cd05821bb0960537745db75348c193c7a9889373bbcc86eb1cac17f  ./SOUND/ULTRA.MDI
4e63a94e272f37907910cc2a73120d2d21f3651a66bd06fcac7e80c93af55478  ./SOUND/ULTRA.DIG
a1a9470e8f16811a6e9a83f1766a5c76080b27948d4d9d9a124e4f41948d0ada  ./SOUND/TANDY.MDI
dba5958ae8f3aae53f3b9e3fa792bfef75a020b185e7884e344c7238ff2ee2a2  ./SOUND/SOUND.DAT
9136ab36e22a6bf3140180a4e8cabe025fd678f3e30338bb90209c1921834196  ./SOUND/SNDSYS.DIG
f541a45fc4f5c4c9a5f68c6addcd451a261b0b4b20a00239d4c8e47320ff31c0  ./SOUND/SNDSCAPE.MDI
a1459763f2fdcb1ada4f9fc6d28c9ea33077c00dad91b5809ee899f5a1b6c05c  ./SOUND/SNDSCAPE.DIG
2aa48568783f6c41df8dfb7e699181299e306fa330415a178fc48b23036c9a77  ./SOUND/SBPRO2.MDI
a08018190b4a4d34b5ca07323be1d5563275b8d0f2d080bb7211c94938fb2a41  ./SOUND/SBPRO1.MDI
250c3afdb960a8b3c6fb268e7e610db4a2a43f626c0e1ddee7ff952150a94dae  ./SOUND/SBPRO.DIG
41191272282f2a88b3d3769c7c0aafab318e214afd393363b12834e9cbf19bc9  ./SOUND/SBLASTER.MDI
16bf4c0911f6ac6591ebf57eea77c209b22a4033e42b764b01708f4538ee4381  ./SOUND/SBLASTER.DIG
492d59bf2da69488d4cf44788c431f3866224d4b5a336999e9f8a3ae780b0c2c  ./SOUND/SBAWE32.MDI
c8a1e7a0e14c8b696e665520e338711e4c20cc3bb4733f83527add41dd6f6b38  ./SOUND/SB16.DIG
758ab4bed39c360554abecb8f12fc26e8c24d02c4c2de27eb0030c8e01b1d89b  ./SOUND/SAMPLE.OPL
758ab4bed39c360554abecb8f12fc26e8c24d02c4c2de27eb0030c8e01b1d89b  ./SOUND/SAMPLE.AD
d4e03dd5313e02291df43d41be2d289f7006a30ed24a195d8e872518999566bf  ./SOUND/RAP10.DIG
63cc6ba6c0bebf80ebb073cfbef2b0de1ce508d006a94180095a0223ac4bb33c  ./SOUND/PROAUDIO.DIG
db6d71b5d197b23755470044adb62f1ca21d0687b8e915286d20dd220e3db6d9  ./SOUND/PASPLUS.MDI
a4e458908be7f51fbefbafdcbe52a918b2bca2933e58469fe27f6cd346181aae  ./SOUND/PAS.MDI
a3f9d21fbcf134afcc4cee9cf46f29b11c8a3b573aefa33cc8595faec5f4b90e  ./SOUND/OPL3.MDI
4c0365a62c555fcca735ab4d32e4fab8ef36114b15dc2cf1d020b2bb9ae86c23  ./SOUND/NULL.MDI
3549b18c75b1812618b775e8b76f1ead312acfe4d6f5c8029d8cb696a70dbeb5  ./SOUND/MUSIC.DAT
a8d2aa84b8ffc7d5f7313c244ca45d632d748e19370c4744788818ab1b4b4b67  ./SOUND/MT32MPU.MDI
cca38c28eabe00b88e4bddd627fa68a68b2559029098b777129ca00201831a9c  ./SOUND/JAMMER.DIG
da43c8496d1bed17d46b1917c503daa5740d198a9ac245abd48df213b430f80f  ./SOUND/BULLFROG.SBK
294a7de77d88a7f38f58b32fc7166ced87a4c44e6c9be760f78b1724744d7161  ./SOUND/ADRV688.DIG
6c5f2faacf426b5c0fd127bd5d0e8b3b11a59b7ec22bb3b0017d7cfe6ae0a4aa  ./SOUND/ADLIB.MDI
211da20b316b8e570b21ea6eabb5ecc2b6db44e5d2f3bc97e31f182084af67e4  ./DATA/MWEBN0-0.DAT
2fb809fa6f63f0e29103ca5cff62b91b6b89e54d4ad59c245a52574ea1cd2159  ./DATA/MWEBD0-0.TAB
2fb809fa6f63f0e29103ca5cff62b91b6b89e54d4ad59c245a52574ea1cd2159  ./DATA/MWEBN0-0.TAB
060343d7d224d0e075c6f451e2c2e6ccbcfeb547d00e4fe0f2e5e81860fdd009  ./DATA/PALC-0.DAT
783b188547d1cdf5c9d74355666145b33acc306f5419befd6ec6c023c7845eb5  ./DATA/SKYC0-0.DAT
65e19a22fb0ebb765bdf3b212773b70df2662ebdc8551a8f32db1634513f8ac6  ./DATA/SFONT1.TAB
88174c57f506e9aa99fbec3624cfe3e170c0b3b133318fa48e8c702e3fada2fa  ./DATA/SKYD0-0.DAT
944112ef6eb54e042889c9cc841ed1d7bdb129c38c1c61ce4c8b8e81589f466b  ./DATA/SKYN0-0.DAT
6b0e53ff4d110a2420d3bc32bf3c8dca1cf2f2ffc0e5381a7de98126d88148e7  ./DATA/SMALTIT.DAT
21667b495a325109e686083f6d27ea8be011bb63c20cdca12c0051d98c8407b9  ./DATA/SMALTIT.PAL
61a960af1f43f5fbe6aaf112a5b731ac25a02d8a27358bd6762c5d5d0ee837e7  ./DATA/SMATITL2.DAT
fbc94bc241c483c371b04782082f7f4bdfb7c7cd707955dbdfbe5bf90f4cde7c  ./DATA/SMATITL2.PAL
0e1c5acb84fcc29c5408967be25c0d1739bf4badec503021cef2e71c5e21a244  ./DATA/SMATITLE.DAT
bb4ff35777bb1a5366a504edfc03e7fe3676a44c1aca39aeb46118a1bcf0730f  ./DATA/BUTTON.DAT
e256f72b4dec07531584b15ee2417c457029ae4303fd73043f0f5d0225e68903  ./DATA/BL32F0-0.DAT
7065c63f39233435a2934397f075c495ae2b6107a98d7d499082f9731d9dacdd  ./DATA/CLRC-0.DAT
e064a1520e96f65c13fde9a05918d240ee4f708ab6aefc793ec8b391f220c05e  ./DATA/BUILD0-0.TAB
c66f50207e74761e29cb83d95db906134548dd4b0828afc2ab23171d871c64a8  ./DATA/SPTEXT.DAT
bea0e7b42743b903244b3bcbad74974f34ff01c5f12767c6c98fd352cf3b7d42  ./DATA/CLRD-0.DAT
3cae38afec25ad067f3947819729ad89cb0d688d7922fb3039ea87dfddd16720  ./DATA/BL32C0-0.DAT
9d19b298f7a5a8d23579f08a229f959a6e1030e65c1c4dd40ab26b3265e3907b  ./DATA/DFONT0.DAT
3db5d9a763dedafbe3077eeeef47431da0b5d397e311f6ee46719a0fc51e8e5d  ./DATA/BUILD0-0.DAT
b5a9652a1078998dc0a6d1de53d9359d5b691fc77e4b401395e65ffd9d056f16  ./DATA/TABLESC.DAT
95e40b86b946fb8a929e61951d66b9d6a3b5b215a669b296d43ec71e7f20c6f5  ./DATA/DFONT0.TAB
7948053923f29c6c13bcdb248f016c6e0fa75e9dd34c348e9d2bfe1dcd0f5079  ./DATA/BL16N0-0.DAT
95e40b86b946fb8a929e61951d66b9d6a3b5b215a669b296d43ec71e7f20c6f5  ./DATA/DFONT1.TAB
4e872b6c8bf364b1c8e452e37007869bab653011008807455b24934e620db841  ./DATA/BLOCK32.DAT
ed5f22bfa9371020663ead4c50ecdbcf6973e640c76433bb60a58ca3d9ccd43c  ./DATA/TITBASF.DAT
2540e4e24d8e81a5ab9c13b4cbc15ff3c033541c02f7652d58128581f014d4c5  ./DATA/ETEXT.DAT
5b02c7f60673d6628a29d00838dda4efd8e45c0d7be4509df061c2666988ff6b  ./DATA/BL16F0-0.DAT
efc06dc2e6c2b65eba4847ac47326e171c018ddea0c00062eec1dbc8d3410917  ./DATA/FONT0.TAB
a06939f9ea3d1f730363ac5eb235fb4f47b78b4993857a2b2dcb8fe66dc66995  ./DATA/BLOCK16.DAT
4aef0bfa2317402a6b29e1ef324b01c316280e10f0a0a58ea4cbacd5d4d58841  ./DATA/TMAPS0-0.TAB
2f7686a23c0dc455ba52d188902f3a704df17cb78c000a09965762fa3e5e5c9f  ./DATA/FONT1.DAT
e492f775843f62feece9a6b943f9d8e321ab800ebcceb7f169b187b70016dc11  ./DATA/BL16C0-0.DAT
59b69930cff142f255cc04222d0cd0e9ef12793cf51037929e846f3514d5cf33  ./DATA/FONT2.DAT
1c4a7fdef5d4b811f871441f0380faaacd6e5e689e73fc4628bf8c5b51ea6f00  ./DATA/BLDGPRM.DAT
55b2ed64aaee111f9c6ff9d174bc14f35999a24a81400d76bcf2cdaac01f8ca6  ./DATA/TMAPS2-0.DAT
0a22f6d5a2cd2901ade9b566ac1c6126cc0c0fb267bfaa76df393a532751f4f8  ./DATA/FONT2.TAB
7c650583244f81e295be17c5f5ae9b64c98e716d895a6404c828a0267d97c1f9  ./DATA/SFONT1.DAT
53e907a450181afe51b6b728d9c2960caad7570ee5a30b613e0ef7a005609cb3  ./DATA/SCREENS/HSCREEN0.DAT
aa41212b512d51420d4766b9ae3fe2cf61a384c15fb7ed23182d5db5dacf69f4  ./DATA/FTDEFN.DAT
6bcb87b4d2bcbc9c4fa4d4f6a485b64e6537f143bb2551819d2dde3e19c82a9a  ./DATA/FTDEFD.DAT
9e820bfae5f164f899e61d22a8335d0bc503b145f85e866a66f5b1052aa59812  ./DATA/GTD2.DAT
463b39465891080f78a25d705e4ee106cad4091295ab67eecd2d51c7d44c16dc  ./DATA/FTEXT.DAT
21dc8d7819eea57bd2ef937800503a2a28ee025a44fc63ce883e11523aea88a2  ./DATA/TMAPS2-0.TAB
54e59d75ea91475cc008b923b6fe424e753b772472ec494463abab6784e55b28  ./DATA/GTDEFD.DAT
570d5c1a3aab222ad377bf17e6b25966600b2da240eef1beb994ed5bb067919b  ./DATA/GTDEFC.DAT
7873d66aaabc3a661e063e826d5d0a11d51d93f68aa2f9d85088c23f2bb7eff5  ./DATA/FTDEFC.DAT
afd2124f8e72a905f5e2edd831b0e4476fb440bd1e656ac906b749f57d768e18  ./DATA/GTEXT.DAT
6c90c2c46fbd5232c224fa8675f854b10bdf3a0484185534d531e19af4111be9  ./DATA/GTDEFN.DAT
22afd08167ae415138548f99901ea037bdc2b48f56c6f3b2dbcfe9743d73c8f0  ./DATA/TMAPS1-0.TAB
a7a5cc6d95bb17b886efd249f66c626f8cb519eb74a415537720e5ae2c6becea  ./DATA/HFONT3.TAB
13c86835a85e456d24f1ab715dcfd0910731d60d63f5cc9ba832c7d097ff84c2  ./DATA/HFONT3.DAT
b091204ec21c0cf99716f3ae5c426a37113e57dda48a0d4d2eef98167e6ed0ff  ./DATA/TMAPS1-0.DAT
9aac669d7582f9f3eed90d4e74494498222080d9d5e8537b6c1c9a888d48c9fe  ./DATA/HSPRC0-0.TAB
1ee5a06aa820604577b8e04768997fd4d2bc2d1d71212ab38620a2d6c69cfee7  ./DATA/HSPRC0-0.DAT
8be4f9f82b40e81d858ec061eceac109c3d39ef145b2ab3638639d9fd372cb94  ./DATA/FONT1.TAB
515eccfebef1a49cb37dace118faf79490fae7f42cdf8c7d5c4149208f101b53  ./DATA/HSPRD0-0.TAB
d8fc64b0a432502292e07d8e40673266d9b444277189c76d80e15b06e2bf8364  ./DATA/HSPRD0-0.DAT
84af85f568e2b909a5a881a3beb7b0d4dfdbe7d3b7a89d572a49a35ff7413074  ./DATA/TMAPS0-0.DAT
9aac669d7582f9f3eed90d4e74494498222080d9d5e8537b6c1c9a888d48c9fe  ./DATA/HSPRN0-0.TAB
1e1f874ee11d773b84758a37d92986cd6b7c4f86e8900cbc6c30cc8a9aed1e8a  ./DATA/HSPRN0-0.DAT
d9eac616bf5f38d87fe71c8a291d987ef88686ddb024a945a2056dffc0228b4f  ./DATA/TITLE3.DAT
eb9535a4df48f1f37847f80879e1d20721c70bd9cec28cffba11b7e23bbeebdf  ./DATA/HWEBC0-0.TAB
fbcfe5f528e08ddc119a94f98fc5254aa8ae80f242606dd9679d2cd6fdfb0dee  ./DATA/HWEBC0-0.DAT
4cc190bd69abc5eb0b372e00ccc0d85512d9c0504bf4f32af18504c4aa2f6891  ./DATA/FONT0.DAT
5fe811d99836404538bde526fc614cc45d5191410c24f071f3f62498859ee75d  ./DATA/HWEBD0-0.TAB
0e0d8624e02098c3c60863691ccdc60d2b9f8117a641b87c22e6bd486aff004d  ./DATA/HWEBD0-0.DAT
f88974baf68f728fb534a4dab35397b9cb3ca2f424019bbde36858eebbf97495  ./DATA/TABLESN.DAT
eb9535a4df48f1f37847f80879e1d20721c70bd9cec28cffba11b7e23bbeebdf  ./DATA/HWEBN0-0.TAB
fbcfe5f528e08ddc119a94f98fc5254aa8ae80f242606dd9679d2cd6fdfb0dee  ./DATA/HWEBN0-0.DAT
493fe71a5da221ba442663672bc97592fd158fb938d30847ebff1b49a550ad66  ./DATA/TABLESD.DAT
1f32faad04fc2feca78dcfbc1723bfe4b1b4bd04379b9f3a73962809744b38d9  ./DATA/LEVELS.DAT
7135375fe914e1b431a1345834c842a086f84f94d4ba46d1866e400ab1fefece  ./DATA/ITEXT.DAT
af4a8b8a2618fd93970cbd832fb39adec0baaeb985748c7f011d1eacd0b03177  ./DATA/DFONT1.DAT
cac2f8c5a7977cfe7303d115e83b7d6b8f44656e33ed8a6cca052c3d32b59c31  ./DATA/MSPRC0-0.TAB
7e8aa789f585bf3cc64d12f44b9268b609d87e5ca6fe5f22f8be90986f42b627  ./DATA/MSPRC0-0.DAT
2ebe405f179a938f181fb1d4aa18b3d54c6d81af550163c7c5aa710bf59e0af6  ./DATA/TABLES.DAT
47fe03bbd99e1975755a8e47401977965b5ef63fe427a755a2f481ed393117ea  ./DATA/MSPRD0-0.TAB
a81783458f1b81da262d60bc1f4bc28012137437f2fcedb75af441a4fc777656  ./DATA/MSPRD0-0.DAT
cc16832708123adde69790b41364331b5710dbf34668e6a26bba6c12b936bc93  ./DATA/SWTEXT.DAT
12f79e74ec7c18c7c42bd3430d80831639f86650efceb2c97ccf8786c035f939  ./DATA/MSPRN0-0.TAB
2a890388fba9f094604e9f082a1d2dcbd0995a089b39f5442b4841056ed25abc  ./DATA/MSPRN0-0.DAT
bd66f4d2887798c91e8da0fbbc09fbffca1c6c93adf49b5c4d818f282ae51f49  ./DATA/CLRN-0.DAT
2fb809fa6f63f0e29103ca5cff62b91b6b89e54d4ad59c245a52574ea1cd2159  ./DATA/MWEBC0-0.TAB
d4d69babd648008aac40413e6089e27bbe32e6b2a5be4311eb10b1aaa33fc5de  ./DATA/BL32N0-0.DAT
063f4273ebfc27305d028b3b0d34226549417661e9ab1183368b9bb5ddd79fd1  ./DATA/PALD-0.DAT
3a55f7e9b1d56fc03cd005ff4776401d39d86d83c136f6632b196529e559f7ad  ./DATA/MWEBD0-0.DAT
c06e3d020a21b9f5c02038a6df8ea6b85cb75d4706bad96e0a3483a45f3197b5  ./DATA/MWEBC0-0.DAT
c83f900a3d91b68e968f20cc484c8e0ca9a2578211c4d058a747d7f8db2880b4  ./DATA/PALF-0.DAT
08aa0178c7fab683d6c375484c0c3c3a7cebabda241a3492550bb6cbc89f5261  ./DATA/PALETTE.DAT
7b426f0104f282d91bf7da904ed978e809135e12e0dfebd845e4a582d52b51cc  ./DATA/SPELLS.DAT
6b55d0714b939e8bd25cef89466806299dbae933f2f2f96e0cf8402fc607d16f  ./DATA/PALN-0.DAT
028ca5b0a6c6642bc15822fb128332f47179ddee3b3e6ab5169fbbbcd4c6c6d9  ./DATA/PALLOGO.DAT
e9ea5f0e3edb57d74c5a2b0dbf402d8ae536f1021edaa44d91a94cf1a3fb51c0  ./DATA/SMATITLE.PAL
36c88fb4afd0c23120653f9e83af3d7e2e221b15c5133c08931ea702d092bdfa  ./DATA/POINTERS.DAT
8ffe20306596ee6cebe0b1bbaeb2256a63bcae33cd964521874e211ad6d86a85  ./DATA/PALTIT3.DAT
7a8725015160a2020d04979e22edeb0d4ea8ca005222a0696e3483011f98550a  ./DATA/BUTTON.TAB
bd27506ad2896a334bba762e3416760e6bd9756ade395a766faee436bac1a632  ./DATA/SEARCH.DAT
f5d21ef30f8305a78319f99f901a2d43d6c4abff2a08d2e7623e994b8802a9c9  ./DATA/POINTERS.TAB
6038fcdd2f345a043c0de3656b96d4fd03129f96e0acc4d6a219f7fe665a02dc  ./INTRO/INTRO2.DAT
ac2ba892c12c3b99484607d871a99a42960725e0a35650ebcd7379fd6bd38a84  ./INTRO/INTRO.DAT
99febabe09b5f7e5eb7774b71270b386d2c37ff1fce56aef30003c42afa3d51b  ./INTRO/INTEL.DAT
47fbaa90ab0be7358663359280c8e7c9ae984594a8e36a00a7f2edcf1bb60408  ./INTRO/CUT6.DAT
e19f099702b98c85510ae0f4d577853598a2b02e1197ef90f5b29e8528002f9a  ./INTRO/CUT5.DAT
ab0eabd1ee553415d77b144f1c8c01c0e8c92b2670259cc69f26b0816de3399e  ./INTRO/CUT4.DAT
6d0700cbfac37fc5c3b6e39e99b1d2161633e8a397883b9ae2b7c0e932a2e263  ./INTRO/CUT3.DAT
a3c949ae0a425f8154bf1001d5bc137bb5b2bbd3fdaba99f775274183fbc227d  ./INTRO/CUT2.DAT
e62344bf43ffd105b918f58c836976ab03bf8da6d32f7d2b03381626c12f63b0  ./INTRO/CUT1.DAT
956e34d4c63eec3cd9c2928cf473f6228c5fbefd3cb01ebd921730d1e55dab65  ./LANGUAGE/L6.TXT
7cc2973da3c4fda57869780aead58ad0dc0ff81be6fbe56d66341fc01d657723  ./LANGUAGE/L5.TXT
436d81e0511966d96bc26a07db50bfc6199680b60f880d07373af27d2c8a5426  ./LANGUAGE/L4.TXT
c927a388ca4c66ef00cc23a7493743324f2f63bfc8bbd9842c7ec1d0b5fd4d7c  ./LANGUAGE/L3.TXT
9fdea4dc68846a9cdd0e8367d08a0c01ad62a6e745d7291d80d72ce7a7a063d4  ./LANGUAGE/L2.TXT
02b5d72bd1794bced34ad3a79aeec410da1bb7c81e35cbff446df2f28bb33ab2  ./LANGUAGE/L1.TXT
9fdea4dc68846a9cdd0e8367d08a0c01ad62a6e745d7291d80d72ce7a7a063d4  ./LANGUAGE/D2.TXT
179a65f04d4aa7bc147cfd56ffb63a0da400dfd85542eb0fbda10265d6bc1bea  ./LEVELS/LEVELS.TAB
3b7fae5d7c350486a4f62ad4b2e9fa2e4e52023a216b8a7f043ce02439b50222  ./LEVELS/LEVELS.DAT
EOF
}

check_GAME() {
    cat << EOF | sha256sum --quiet --check 
84af85f568e2b909a5a881a3beb7b0d4dfdbe7d3b7a89d572a49a35ff7413074  ./NETHERW/CDATA/TMAPS0-0.DAT
4aef0bfa2317402a6b29e1ef324b01c316280e10f0a0a58ea4cbacd5d4d58841  ./NETHERW/CDATA/TMAPS0-0.TAB
b091204ec21c0cf99716f3ae5c426a37113e57dda48a0d4d2eef98167e6ed0ff  ./NETHERW/CDATA/TMAPS1-0.DAT
22afd08167ae415138548f99901ea037bdc2b48f56c6f3b2dbcfe9743d73c8f0  ./NETHERW/CDATA/TMAPS1-0.TAB
55b2ed64aaee111f9c6ff9d174bc14f35999a24a81400d76bcf2cdaac01f8ca6  ./NETHERW/CDATA/TMAPS2-0.DAT
21dc8d7819eea57bd2ef937800503a2a28ee025a44fc63ce883e11523aea88a2  ./NETHERW/CDATA/TMAPS2-0.TAB
3b7fae5d7c350486a4f62ad4b2e9fa2e4e52023a216b8a7f043ce02439b50222  ./NETHERW/CLEVELS/LEVELS.DAT
179a65f04d4aa7bc147cfd56ffb63a0da400dfd85542eb0fbda10265d6bc1bea  ./NETHERW/CLEVELS/LEVELS.TAB
6c5f2faacf426b5c0fd127bd5d0e8b3b11a59b7ec22bb3b0017d7cfe6ae0a4aa  ./NETHERW/SOUND/ADLIB.MDI
13b77fefc77060472c8c60f4816406a86a01f6a673dd2fb041d2ad02ccc10f56  ./NETHERW/SOUND/ADLIBG.MDI
294a7de77d88a7f38f58b32fc7166ced87a4c44e6c9be760f78b1724744d7161  ./NETHERW/SOUND/ADRV688.DIG
03d90c1c0e5c029b9016e593fce2ce3d4ceb6f67d016d291821031f0406388f8  ./NETHERW/SOUND/AILDRVR.LST
d258ed5119eaf3c1499ddd49536efab238d228ef5ff60a49c0caf710f613d19a  ./NETHERW/SOUND/ESFM.MDI
cca38c28eabe00b88e4bddd627fa68a68b2559029098b777129ca00201831a9c  ./NETHERW/SOUND/JAMMER.DIG
a8d2aa84b8ffc7d5f7313c244ca45d632d748e19370c4744788818ab1b4b4b67  ./NETHERW/SOUND/MPU401.MDI
a8d2aa84b8ffc7d5f7313c244ca45d632d748e19370c4744788818ab1b4b4b67  ./NETHERW/SOUND/MT32MPU.MDI
4c0365a62c555fcca735ab4d32e4fab8ef36114b15dc2cf1d020b2bb9ae86c23  ./NETHERW/SOUND/NULL.MDI
a3f9d21fbcf134afcc4cee9cf46f29b11c8a3b573aefa33cc8595faec5f4b90e  ./NETHERW/SOUND/OPL3.MDI
a4e458908be7f51fbefbafdcbe52a918b2bca2933e58469fe27f6cd346181aae  ./NETHERW/SOUND/PAS.MDI
db6d71b5d197b23755470044adb62f1ca21d0687b8e915286d20dd220e3db6d9  ./NETHERW/SOUND/PASPLUS.MDI
63cc6ba6c0bebf80ebb073cfbef2b0de1ce508d006a94180095a0223ac4bb33c  ./NETHERW/SOUND/PROAUDIO.DIG
d4e03dd5313e02291df43d41be2d289f7006a30ed24a195d8e872518999566bf  ./NETHERW/SOUND/RAP10.DIG
c8a1e7a0e14c8b696e665520e338711e4c20cc3bb4733f83527add41dd6f6b38  ./NETHERW/SOUND/SB16.DIG
492d59bf2da69488d4cf44788c431f3866224d4b5a336999e9f8a3ae780b0c2c  ./NETHERW/SOUND/SBAWE32.MDI
16bf4c0911f6ac6591ebf57eea77c209b22a4033e42b764b01708f4538ee4381  ./NETHERW/SOUND/SBLASTER.DIG
41191272282f2a88b3d3769c7c0aafab318e214afd393363b12834e9cbf19bc9  ./NETHERW/SOUND/SBLASTER.MDI
250c3afdb960a8b3c6fb268e7e610db4a2a43f626c0e1ddee7ff952150a94dae  ./NETHERW/SOUND/SBPRO.DIG
a08018190b4a4d34b5ca07323be1d5563275b8d0f2d080bb7211c94938fb2a41  ./NETHERW/SOUND/SBPRO1.MDI
2aa48568783f6c41df8dfb7e699181299e306fa330415a178fc48b23036c9a77  ./NETHERW/SOUND/SBPRO2.MDI
a1459763f2fdcb1ada4f9fc6d28c9ea33077c00dad91b5809ee899f5a1b6c05c  ./NETHERW/SOUND/SNDSCAPE.DIG
f541a45fc4f5c4c9a5f68c6addcd451a261b0b4b20a00239d4c8e47320ff31c0  ./NETHERW/SOUND/SNDSCAPE.MDI
9136ab36e22a6bf3140180a4e8cabe025fd678f3e30338bb90209c1921834196  ./NETHERW/SOUND/SNDSYS.DIG
a1a9470e8f16811a6e9a83f1766a5c76080b27948d4d9d9a124e4f41948d0ada  ./NETHERW/SOUND/TANDY.MDI
4e63a94e272f37907910cc2a73120d2d21f3651a66bd06fcac7e80c93af55478  ./NETHERW/SOUND/ULTRA.DIG
e7034fb38cd05821bb0960537745db75348c193c7a9889373bbcc86eb1cac17f  ./NETHERW/SOUND/ULTRA.MDI
EOF
}

mv_files() {
    entry="${1}"
    [ -z "${entry}" ] && return
    chmod 644 "${entry}"
    newentry=$(echo "${entry}" | tr '[:lower:]' '[:upper:]')
    if [ "${entry}" != "${newentry}" ] && [ -n "${newentry}" ]; then
        mv -- "${entry}" "${newentry}"
    fi
}

mv_dirs() {
    entry="${1}"
    [ -z "${entry}" ] && return
    chmod 755 "${entry}"
    newentry=$(echo "${entry}" | tr '[:lower:]' '[:upper:]')
    if [ "${entry}" != "${newentry}" ] && [ -n "${newentry}" ]; then
        mv -- "${entry}" "${newentry}"
    fi
}

GOOD=$'\e[32;01m'
BAD=$'\e[31;01m'
BRACKET=$'\e[34;01m'
NORMAL=$'\e[0m'
ENDCOL=$'\e[A\e['$(( COLS - 8 ))'C'

ebegin() {
    echo -e " ${GOOD}*${NORMAL} $*"
}

eend() {
    local retval="${1:-0}" efunc="${2:-eerror}" msg
    shift 2

    if [[ ${retval} == "0" ]] ; then
        msg="${BRACKET}[ ${GOOD}ok${BRACKET} ]${NORMAL}"
    else
        msg="${BRACKET}[ ${BAD}!!${BRACKET} ]${NORMAL} $*"
    fi
    echo -e "${ENDCOL} ${msg}"
}

check_inst() {
    prefix="${1}"
    err=false

    [ -e "${prefix}/CD_Files" ] || {
        echo "${BAD}error${NORMAL}: 'CD_Files' directory not found in '${prefix}'"
        err=true
    }

    [ -e "${prefix}/GAME" ] || {
        echo "${BAD}error${NORMAL}: 'GAME' directory not found in '${prefix}'"
        err=true
    }

    ${err} && {
        usage
        exit 1
    }

    ebegin "     CD_Files directory"
    pushd "${prefix}/CD_Files/" > /dev/null || exit 1 

    find ./ -type d | tac | while read -r line; do
        mv_dirs "${line}"
    done
    find ./ -type f | tac | while read -r line; do
        mv_files "${line}"
    done

    if check_CD_Files; then
        eend
    else
        echo ''
        eend 1 failed
    fi

    popd > /dev/null || exit 1

    ebegin "     GAME directory"
    pushd "${prefix}/GAME/" > /dev/null || exit 1 

    find ./ -type d | tac | while read -r line; do
        mv_dirs "${line}"
    done
    find ./ -type f | tac | while read -r line; do
        mv_files "${line}"
    done

    if check_GAME; then
        eend
    else
        eend 1 failed
    fi

    popd > /dev/null || exit 1
}

unset src
unset dst

[ $# == 0 ] && {
    usage
    exit 1
}

while (( "$#" )); do
    if [ "$1" = "-s" ]; then
        shift;
        src="$1"
        shift;
    elif [ "$1" = "-d" ]; then
        shift;
        dst="$1"
        shift
    elif [ "$1" = "-h" ]; then
        shift;
        usage
    else
        if [ -e "$1" ]; then
            dst="$1"
        else
            echo "${BAD}error${NORMAL}: invalid destination directory"
            usage
            exit 1
        fi
        break;
    fi
done

[ -n "${src}" ] && [ ! -e "${src}" ] && {
    echo "${BAD}error${NORMAL}: invalid source directory"
    usage
    exit 1
}

# src is a directory
[ -n "${src}" ] && [ -d "${src}" ] &&  [ -n "${dst}" ] && {
    # copy over from src to dst

    err=false
    # check is needed binaries exist
    7z -h > /dev/null || {
        echo "${BAD}error${NORMAL}: the 'p7zip' package needs to be installed"
        err=true
    }

    bchunk -h >/dev/null 2>&1 || {
        echo "${BAD}error${NORMAL}: the 'bchunk' package needs to be installed"
        err=true
    }

    ${err} && exit 1

    # ok copy files
    mkdir -p "${dst}" || {
        echo "${BAD}error${NORMAL}: cannot create destination directory"
        exit 1
    }
    cp -r "${src}/GAME" "${dst}"
    mkdir -p "${dst}/CD_Files"
    mkdir -p "${dst}/speech"
    if [ -e "${src}/game.gog" ] && [ -e "${src}/game.ins" ]; then
        pushd "${dst}/CD_Files" > /dev/null || exit 1
        bchunk "${src}/game.gog" "${src}/game.ins" track > /dev/null
        7z x -y -bso0 track01.iso
        rm -f track01.iso
        mv -f track*.cdr ../speech/
        popd > /dev/null || exit 1 
    else
        echo "${BAD}error${NORMAL}: game.gog, game.ins are missing from '${src}'"
        exit 1
    fi

    check_inst "${dst}"
    exit $?
}

# src is a cdrom drive
[ -n "${src}" ] &&  [ -n "${dst}" ] && echo "${src}" | grep -q '^/dev' && {

    err=false
    # check is needed binaries exist
    7z -h > /dev/null || {
        echo "${BAD}error${NORMAL}: the 'p7zip' package needs to be installed"
        err=true
    }

    bchunk -h >/dev/null 2>&1 || {
        echo "${BAD}error${NORMAL}: the 'bchunk' package needs to be installed"
        err=true
    }

    cdrdao disk-info --device "${src}" >/dev/null 2>&1 || {
        echo "${BAD}error${NORMAL}: the 'cdrdao' package needs to be installed"
        err=true
    }

    ${err} && exit 1

    # ok copy files
    mkdir -p "${dst}" || {
        echo "${BAD}error${NORMAL}: cannot create destination directory"
        exit 1
    }
    mkdir -p "${dst}/CD_Files"
    mkdir -p "${dst}/GAME/NETHERW/CDATA"
    mkdir -p "${dst}/GAME/NETHERW/CLEVELS"
    mkdir -p "${dst}/GAME/NETHERW/LANGUAGE"
    mkdir -p "${dst}/GAME/NETHERW/SAVE"
    mkdir -p "${dst}/GAME/NETHERW/SHOTS"
    mkdir -p "${dst}/GAME/NETHERW/SOUND"
    mkdir -p "${dst}/speech"

    pushd "${dst}" > /dev/null || exit 1
    cdrdao read-cd --device "${src}" --read-raw --datafile image.bin image.toc
    toc2cue image.toc image.cue
    popd > /dev/null || exit 1

    pushd "${dst}/CD_Files" > /dev/null || exit 1
    bchunk ../image.bin ../image.cue track
    7z x -y -bso0 track01.iso
    rm -f track01.iso
    mv -f track*.cdr ../speech/
    popd > /dev/null || exit 1 

    rm -f image.bin image.cue image.toc

    cp -f "${dst}/CD_Files/DATA/TMAPS"* "${dst}/GAME/NETHERW/CDATA/"
    cp -f "${dst}/CD_Files/LEVELS/"* "${dst}/GAME/NETHERW/CLEVELS/"
    cp -f "${dst}/CD_Files/SOUND/"* "${dst}/GAME/NETHERW/SOUND/"
    rm -f "${dst}/GAME/NETHERW/SOUND/*.DAT"

    check_inst "${dst}"
    exit $?
}


[ -n "${dst}" ] && [ ! -e "${dst}" ] && {
    echo "${BAD}error${NORMAL}: destination directory '${dst}' can't be accessed "
    exit 1
}

[ -n "${dst}" ] && [ -e "${dst}" ] && {
    check_inst "${dst}"
    exit $?
}

