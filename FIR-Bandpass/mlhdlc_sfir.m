function [y_out, delayed_xout] = mlhdlc_sfir(x_in, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, h15, h16, h17, h18, h19, h20, h21, h22, h23, h24, h25, h26, h27, h28, h29, h30, h31, h32, h33, h34, h35, h36, h37, h38, h39, h40, h41, h42, h43, h44, h45, h46, h47, h48, h49, h50, h51, h52, h53, h54, h55, h56, h57, h58, h59, h60, h61, h62, h63, h64, h65, h66, h67, h68, h69, h70, h71, h72, h73, h74, h75, h76, h77, h78, h79, h80, h81, h82, h83, h84, h85, h86, h87, h88, h89, h90, h91, h92, h93, h94, h95, h96, h97, h98, h99, h100, h101, h102, h103, h104, h105, h106, h107, h108, h109, h110, h111, h112, h113, h114, h115, h116, h117, h118, h119, h120, h121, h122, h123, h124, h125, h126, h127, h128, h129, h130, h131, h132, h133, h134, h135, h136, h137, h138, h139, h140, h141, h142, h143, h144, h145, h146, h147, h148, h149, h150, h151, h152, h153, h154, h155, h156, h157, h158, h159, h160)
% Symmetric FIR Filter

% declare and initialize the delay registers
persistent ud1 ud2 ud3 ud4 ud5 ud6 ud7 ud8 ud9 ud10 ud11 ud12 ud13 ud14 ud15 ud16 ud17 ud18 ud19 ud20 ud21 ud22 ud23 ud24 ud25 ud26 ud27 ud28 ud29 ud30 ud31 ud32 ud33 ud34 ud35 ud36 ud37 ud38 ud39 ud40 ud41 ud42 ud43 ud44 ud45 ud46 ud47 ud48 ud49 ud50 ud51 ud52 ud53 ud54 ud55 ud56 ud57 ud58 ud59 ud60 ud61 ud62 ud63 ud64 ud65 ud66 ud67 ud68 ud69 ud70 ud71 ud72 ud73 ud74 ud75 ud76 ud77 ud78 ud79 ud80 ud81 ud82 ud83 ud84 ud85 ud86 ud87 ud88 ud89 ud90 ud91 ud92 ud93 ud94 ud95 ud96 ud97 ud98 ud99 ud100 ud101 ud102 ud103 ud104 ud105 ud106 ud107 ud108 ud109 ud110 ud111 ud112 ud113 ud114 ud115 ud116 ud117 ud118 ud119 ud120 ud121 ud122 ud123 ud124 ud125 ud126 ud127 ud128 ud129 ud130 ud131 ud132 ud133 ud134 ud135 ud136 ud137 ud138 ud139 ud140 ud141 ud142 ud143 ud144 ud145 ud146 ud147 ud148 ud149 ud150 ud151 ud152 ud153 ud154 ud155 ud156 ud157 ud158 ud159 ud160;
if isempty(ud1)
ud1 = 0 ;ud2 = 0 ;ud3 = 0 ;ud4 = 0 ;ud5 = 0 ;ud6 = 0 ;ud7 = 0 ;ud8 = 0 ;ud9 = 0 ;ud10 = 0 ;ud11 = 0 ;ud12 = 0 ;ud13 = 0 ;ud14 = 0 ;ud15 = 0 ;ud16 = 0 ;ud17 = 0 ;ud18 = 0 ;ud19 = 0 ;ud20 = 0 ;ud21 = 0 ;ud22 = 0 ;ud23 = 0 ;ud24 = 0 ;ud25 = 0 ;ud26 = 0 ;ud27 = 0 ;ud28 = 0 ;ud29 = 0 ;ud30 = 0 ;ud31 = 0 ;ud32 = 0 ;ud33 = 0 ;ud34 = 0 ;ud35 = 0 ;ud36 = 0 ;ud37 = 0 ;ud38 = 0 ;ud39 = 0 ;ud40 = 0 ;ud41 = 0 ;ud42 = 0 ;ud43 = 0 ;ud44 = 0 ;ud45 = 0 ;ud46 = 0 ;ud47 = 0 ;ud48 = 0 ;ud49 = 0 ;ud50 = 0 ;ud51 = 0 ;ud52 = 0 ;ud53 = 0 ;ud54 = 0 ;ud55 = 0 ;ud56 = 0 ;ud57 = 0 ;ud58 = 0 ;ud59 = 0 ;ud60 = 0 ;ud61 = 0 ;ud62 = 0 ;ud63 = 0 ;ud64 = 0 ;ud65 = 0 ;ud66 = 0 ;ud67 = 0 ;ud68 = 0 ;ud69 = 0 ;ud70 = 0 ;ud71 = 0 ;ud72 = 0 ;ud73 = 0 ;ud74 = 0 ;ud75 = 0 ;ud76 = 0 ;ud77 = 0 ;ud78 = 0 ;ud79 = 0 ;ud80 = 0 ;ud81 = 0 ;ud82 = 0 ;ud83 = 0 ;ud84 = 0 ;ud85 = 0 ;ud86 = 0 ;ud87 = 0 ;ud88 = 0 ;ud89 = 0 ;ud90 = 0 ;ud91 = 0 ;ud92 = 0 ;ud93 = 0 ;ud94 = 0 ;ud95 = 0 ;ud96 = 0 ;ud97 = 0 ;ud98 = 0 ;ud99 = 0 ;ud100 = 0 ;ud101 = 0 ;ud102 = 0 ;ud103 = 0 ;ud104 = 0 ;ud105 = 0 ;ud106 = 0 ;ud107 = 0 ;ud108 = 0 ;ud109 = 0 ;ud110 = 0 ;ud111 = 0 ;ud112 = 0 ;ud113 = 0 ;ud114 = 0 ;ud115 = 0 ;ud116 = 0 ;ud117 = 0 ;ud118 = 0 ;ud119 = 0 ;ud120 = 0 ;ud121 = 0 ;ud122 = 0 ;ud123 = 0 ;ud124 = 0 ;ud125 = 0 ;ud126 = 0 ;ud127 = 0 ;ud128 = 0 ;ud129 = 0 ;ud130 = 0 ;ud131 = 0 ;ud132 = 0 ;ud133 = 0 ;ud134 = 0 ;ud135 = 0 ;ud136 = 0 ;ud137 = 0 ;ud138 = 0 ;ud139 = 0 ;ud140 = 0 ;ud141 = 0 ;ud142 = 0 ;ud143 = 0 ;ud144 = 0 ;ud145 = 0 ;ud146 = 0 ;ud147 = 0 ;ud148 = 0 ;ud149 = 0 ;ud150 = 0 ;ud151 = 0 ;ud152 = 0 ;ud153 = 0 ;ud154 = 0 ;ud155 = 0 ;ud156 = 0 ;ud157 = 0 ;ud158 = 0 ;ud159 = 0 ;ud160 = 0 ;
end

% access the previous value of states/registers

a1 = ud1;
a2 = ud2;
a3 = ud3;
a4 = ud4;
a5 = ud5;
a6 = ud6;
a7 = ud7;
a8 = ud8;
a9 = ud9;
a10 = ud10;
a11 = ud11;
a12 = ud12;
a13 = ud13;
a14 = ud14;
a15 = ud15;
a16 = ud16;
a17 = ud17;
a18 = ud18;
a19 = ud19;
a20 = ud20;
a21 = ud21;
a22 = ud22;
a23 = ud23;
a24 = ud24;
a25 = ud25;
a26 = ud26;
a27 = ud27;
a28 = ud28;
a29 = ud29;
a30 = ud30;
a31 = ud31;
a32 = ud32;
a33 = ud33;
a34 = ud34;
a35 = ud35;
a36 = ud36;
a37 = ud37;
a38 = ud38;
a39 = ud39;
a40 = ud40;
a41 = ud41;
a42 = ud42;
a43 = ud43;
a44 = ud44;
a45 = ud45;
a46 = ud46;
a47 = ud47;
a48 = ud48;
a49 = ud49;
a50 = ud50;
a51 = ud51;
a52 = ud52;
a53 = ud53;
a54 = ud54;
a55 = ud55;
a56 = ud56;
a57 = ud57;
a58 = ud58;
a59 = ud59;
a60 = ud60;
a61 = ud61;
a62 = ud62;
a63 = ud63;
a64 = ud64;
a65 = ud65;
a66 = ud66;
a67 = ud67;
a68 = ud68;
a69 = ud69;
a70 = ud70;
a71 = ud71;
a72 = ud72;
a73 = ud73;
a74 = ud74;
a75 = ud75;
a76 = ud76;
a77 = ud77;
a78 = ud78;
a79 = ud79;
a80 = ud80;
a81 = ud81;
a82 = ud82;
a83 = ud83;
a84 = ud84;
a85 = ud85;
a86 = ud86;
a87 = ud87;
a88 = ud88;
a89 = ud89;
a90 = ud90;
a91 = ud91;
a92 = ud92;
a93 = ud93;
a94 = ud94;
a95 = ud95;
a96 = ud96;
a97 = ud97;
a98 = ud98;
a99 = ud99;
a100 = ud100;
a101 = ud101;
a102 = ud102;
a103 = ud103;
a104 = ud104;
a105 = ud105;
a106 = ud106;
a107 = ud107;
a108 = ud108;
a109 = ud109;
a110 = ud110;
a111 = ud111;
a112 = ud112;
a113 = ud113;
a114 = ud114;
a115 = ud115;
a116 = ud116;
a117 = ud117;
a118 = ud118;
a119 = ud119;
a120 = ud120;
a121 = ud121;
a122 = ud122;
a123 = ud123;
a124 = ud124;
a125 = ud125;
a126 = ud126;
a127 = ud127;
a128 = ud128;
a129 = ud129;
a130 = ud130;
a131 = ud131;
a132 = ud132;
a133 = ud133;
a134 = ud134;
a135 = ud135;
a136 = ud136;
a137 = ud137;
a138 = ud138;
a139 = ud139;
a140 = ud140;
a141 = ud141;
a142 = ud142;
a143 = ud143;
a144 = ud144;
a145 = ud145;
a146 = ud146;
a147 = ud147;
a148 = ud148;
a149 = ud149;
a150 = ud150;
a151 = ud151;
a152 = ud152;
a153 = ud153;
a154 = ud154;
a155 = ud155;
a156 = ud156;
a157 = ud157;
a158 = ud158;
a159 = ud159;
a160 = ud160;

% multiplier chain
m1 = h1 * a1; m2 = h2 * a2; m3 = h3 * a3; m4 = h4 * a4;
m5 = h5 * a5; m6 = h6 * a6; m7 = h7 * a7; m8 = h8 * a8;
m9 = h9 * a9; m10 = h10 * a10; m11 = h11 * a11; m12 = h12 * a12; 
m13 = h13 * a13; m14 = h14 * a14; m15 = h15 * a15; m16 = h16 * a16;
m17 = h17 * a17; m18 = h18 * a18; m19 = h19 * a19; m20 = h20 * a20;
m21 = h21 * a21; m22 = h22 * a22; m23 = h23 * a23; m24 = h24 * a24;
m25 = h25 * a25; m26 = h26 * a26; m27 = h27 * a27; m28 = h28 * a28; 
m29 = h29 * a29; m30 = h30 * a30; m31 = h31 * a31; m32 = h32 * a32; 
m33 = h33 * a33; m34 = h34 * a34; m35 = h35 * a35; m36 = h36 * a36; 
m37 = h37 * a37; m38 = h38 * a38; m39 = h39 * a39; m40 = h40 * a40; 
m41 = h41 * a41; m42 = h42 * a42; m43 = h43 * a43; m44 = h44 * a44;
m45 = h45 * a45; m46 = h46 * a46; m47 = h47 * a47; m48 = h48 * a48; 
m49 = h49 * a49; m50 = h50 * a50; m51 = h51 * a51; m52 = h52 * a52; 
m53 = h53 * a53; m54 = h54 * a54; m55 = h55 * a55; m56 = h56 * a56; 
m57 = h57 * a57; m58 = h58 * a58; m59 = h59 * a59; m60 = h60 * a60; 
m61 = h61 * a61; m62 = h62 * a62; m63 = h63 * a63; m64 = h64 * a64; 
m65 = h65 * a65; m66 = h66 * a66; m67 = h67 * a67; m68 = h68 * a68; 
m69 = h69 * a69; m70 = h70 * a70; m71 = h71 * a71; m72 = h72 * a72;
m73 = h73 * a73; m74 = h74 * a74; m75 = h75 * a75; m76 = h76 * a76; 
m77 = h77 * a77; m78 = h78 * a78; m79 = h79 * a79; m80 = h80 * a80;
m81 = h81 * a81; m82 = h82 * a82; m83 = h83 * a83; m84 = h84 * a84; 
m85 = h85 * a85; m86 = h86 * a86; m87 = h87 * a87; m88 = h88 * a88;
m89 = h89 * a89; m90 = h90 * a90; m91 = h91 * a91; m92 = h92 * a92;
m93 = h93 * a93; m94 = h94 * a94; m95 = h95 * a95; m96 = h96 * a96;
m97 = h97 * a97; m98 = h98 * a98; m99 = h99 * a99; m100 = h100 * a100; 
m101 = h101 * a101; m102 = h102 * a102; m103 = h103 * a103; m104 = h104 * a104; 
m105 = h105 * a105; m106 = h106 * a106; m107 = h107 * a107; m108 = h108 * a108; 
m109 = h109 * a109; m110 = h110 * a110; m111 = h111 * a111; m112 = h112 * a112; 
m113 = h113 * a113; m114 = h114 * a114; m115 = h115 * a115; m116 = h116 * a116; 
m117 = h117 * a117; m118 = h118 * a118; m119 = h119 * a119; m120 = h120 * a120; 
m121 = h121 * a121; m122 = h122 * a122; m123 = h123 * a123; m124 = h124 * a124; 
m125 = h125 * a125; m126 = h126 * a126; m127 = h127 * a127; m128 = h128 * a128; 
m129 = h129 * a129; m130 = h130 * a130; m131 = h131 * a131; m132 = h132 * a132; 
m133 = h133 * a133; m134 = h134 * a134; m135 = h135 * a135; m136 = h136 * a136; 
m137 = h137 * a137; m138 = h138 * a138; m139 = h139 * a139; m140 = h140 * a140; 
m141 = h141 * a141; m142 = h142 * a142; m143 = h143 * a143; m144 = h144 * a144; 
m145 = h145 * a145; m146 = h146 * a146; m147 = h147 * a147; m148 = h148 * a148; 
m149 = h149 * a149; m150 = h150 * a150; m151 = h151 * a151; m152 = h152 * a152; 
m153 = h153 * a153; m154 = h154 * a154; m155 = h155 * a155; m156 = h156 * a156;
m157 = h157 * a157; m158 = h158 * a158; m159 = h159 * a159; m160 = h160 * a160; 


% adder chain
%a5 = m1 + m2; a6 = m3 + m4;

% filtered output
total1 =   m130 +  m131 +  m132 +  m133 +  m134 +  m135 +  m136 +  m137 +  m138 +  m139 +  m140 +  m141 +  m142 +  m143 +  m144 +  m145 +  m146 +  m147 +  m148 +  m149 +  m150 +  m151 +  m152 +  m153 +  m154 +  m155 +  m156 +  m157 +  m158 +  m159 +  m160;
total2 =  m95 +  m96 +  m97 +  m98 +  m99 +  m100 +  m101 +  m102 +  m103 +  m104 +  m105 +  m106 +  m107 +  m108 +  m109 +  m110 +  m111 +  m112 +  m113 +  m114 +  m115 +  m116 +  m117 +  m118 +  m119 +  m120 +  m121 +  m122 +  m123 +  m124 +  m125 +  m126 +  m127 +  m128 +  m129 ;
total3 = m60 +  m61 +  m62 +  m63 +  m64 +  m65 +  m66 +  m67 +  m68 +  m69 +  m70 +  m71 +  m72 +  m73 +  m74 +  m75 +  m76 +  m77 +  m78 +  m79 +  m80 +  m81 +  m82 +  m83 +  m84 +  m85 +  m86 +  m87 +  m88 +  m89 +  m90 +  m91 +  m92 +  m93 +  m94;
total4 = m1 +  m2 +  m3 +  m4 +  m5 +  m6 +  m7 +  m8 +  m9 +  m10 +  m11 +  m12 +  m13 +  m14 +  m15 +  m16 +  m17 +  m18 +  m19 +  m20 +  m21 +  m22 +  m23 +  m24 +  m25 +  m26 +  m27 +  m28 +  m29 +  m30 +  m31 +  m32 +  m33 +  m34 +  m35 +  m36 +  m37 +  m38 +  m39 +  m40 +  m41 +  m42 +  m43 +  m44 +  m45 +  m46 +  m47 +  m48 +  m49 +  m50 +  m51 +  m52 +  m53 +  m54 +  m55 +  m56 +  m57 +  m58 +  m59  ;
y_out = total1 + total2 + total3 + total4;
% delayout input signal
delayed_xout = ud8;

% update the delay line

ud160 = ud159;
ud159 = ud158;
ud158 = ud157;
ud157 = ud156;
ud156 = ud155;
ud155 = ud154;
ud154 = ud153;
ud153 = ud152;
ud152 = ud151;
ud151 = ud150;
ud150 = ud149;
ud149 = ud148;
ud148 = ud147;
ud147 = ud146;
ud146 = ud145;
ud145 = ud144;
ud144 = ud143;
ud143 = ud142;
ud142 = ud141;
ud141 = ud140;
ud140 = ud139;
ud139 = ud138;
ud138 = ud137;
ud137 = ud136;
ud136 = ud135;
ud135 = ud134;
ud134 = ud133;
ud133 = ud132;
ud132 = ud131;
ud131 = ud130;
ud130 = ud129;
ud129 = ud128;
ud128 = ud127;
ud127 = ud126;
ud126 = ud125;
ud125 = ud124;
ud124 = ud123;
ud123 = ud122;
ud122 = ud121;
ud121 = ud120;
ud120 = ud119;
ud119 = ud118;
ud118 = ud117;
ud117 = ud116;
ud116 = ud115;
ud115 = ud114;
ud114 = ud113;
ud113 = ud112;
ud112 = ud111;
ud111 = ud110;
ud110 = ud109;
ud109 = ud108;
ud108 = ud107;
ud107 = ud106;
ud106 = ud105;
ud105 = ud104;
ud104 = ud103;
ud103 = ud102;
ud102 = ud101;
ud101 = ud100;
ud100 = ud99;
ud99 = ud98;
ud98 = ud97;
ud97 = ud96;
ud96 = ud95;
ud95 = ud94;
ud94 = ud93;
ud93 = ud92;
ud92 = ud91;
ud91 = ud90;
ud90 = ud89;
ud89 = ud88;
ud88 = ud87;
ud87 = ud86;
ud86 = ud85;
ud85 = ud84;
ud84 = ud83;
ud83 = ud82;
ud82 = ud81;
ud81 = ud80;
ud80 = ud79;
ud79 = ud78;
ud78 = ud77;
ud77 = ud76;
ud76 = ud75;
ud75 = ud74;
ud74 = ud73;
ud73 = ud72;
ud72 = ud71;
ud71 = ud70;
ud70 = ud69;
ud69 = ud68;
ud68 = ud67;
ud67 = ud66;
ud66 = ud65;
ud65 = ud64;
ud64 = ud63;
ud63 = ud62;
ud62 = ud61;
ud61 = ud60;
ud60 = ud59;
ud59 = ud58;
ud58 = ud57;
ud57 = ud56;
ud56 = ud55;
ud55 = ud54;
ud54 = ud53;
ud53 = ud52;
ud52 = ud51;
ud51 = ud50;
ud50 = ud49;
ud49 = ud48;
ud48 = ud47;
ud47 = ud46;
ud46 = ud45;
ud45 = ud44;
ud44 = ud43;
ud43 = ud42;
ud42 = ud41;
ud41 = ud40;
ud40 = ud39;
ud39 = ud38;
ud38 = ud37;
ud37 = ud36;
ud36 = ud35;
ud35 = ud34;
ud34 = ud33;
ud33 = ud32;
ud32 = ud31;
ud31 = ud30;
ud30 = ud29;
ud29 = ud28;
ud28 = ud27;
ud27 = ud26;
ud26 = ud25;
ud25 = ud24;
ud24 = ud23;
ud23 = ud22;
ud22 = ud21;
ud21 = ud20;
ud20 = ud19;
ud19 = ud18;
ud18 = ud17;
ud17 = ud16;
ud16 = ud15;
ud15 = ud14;
ud14 = ud13;
ud13 = ud12;
ud12 = ud11;
ud11 = ud10;
ud10 = ud9;
ud9 = ud8;
ud8 = ud7;
ud7 = ud6;
ud6 = ud5;
ud5 = ud4;
ud4 = ud3;
ud3 = ud2;
ud2 = ud1;
ud1 = x_in;
end