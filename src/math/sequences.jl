# 1 / factorial(i)

# how many terms are to be used 
const nused_inv_fact_accu = 16
const nused_inv_fact_perf = nused_inv_fact_accu - 2

const inv_fact_accu = (
  Double(1.0,0.0),
  Double(0.5,0.0),
  Double(0.16666666666666666,9.25185853854297e-18),
  Double(0.041666666666666664,2.3129646346357427e-18),
  Double(0.008333333333333333,1.1564823173178714e-19),
  Double(0.001388888888888889,-5.300543954373577e-20),
  Double(0.0001984126984126984,1.7209558293420705e-22),
  Double(2.48015873015873e-5,2.1511947866775882e-23),
  Double(2.7557319223985893e-6,-1.858393274046472e-22),
  Double(2.755731922398589e-7,2.3767714622250297e-23),
  Double(2.505210838544172e-8,-1.448814070935912e-24),
  Double(2.08767569878681e-9,-1.20734505911326e-25),
  Double(1.6059043836821613e-10,1.2585294588752098e-26),
  Double(1.1470745597729725e-11,2.0655512752830745e-28),
  Double(7.647163731819816e-13,7.03872877733453e-30),
  Double(4.779477332387385e-14,4.399205485834081e-31),
  Double(2.8114572543455206e-15,1.6508842730861433e-31),
  Double(1.5619206968586225e-16,1.1910679660273754e-32),
  Double(8.22063524662433e-18,2.2141894119604265e-34),
  Double(4.110317623312165e-19,1.4412973378659527e-36),
  Double(1.9572941063391263e-20,-1.3643503830087908e-36),
  Double(8.896791392450574e-22,-7.911402614872376e-38),
  Double(3.868170170630684e-23,-8.843177655482344e-40),
  Double(1.6117375710961184e-24,-3.6846573564509766e-41),
  Double(6.446950284384474e-26,-1.9330404233703465e-42),
  Double(2.4795962632247976e-27,-1.2953730964765229e-43),
  Double(9.183689863795546e-29,1.4303150396787322e-45),
  Double(3.279889237069838e-30,1.5117542744029879e-46),
  Double(1.1309962886447716e-31,1.0498015412959506e-47),
  Double(3.7699876288159054e-33,2.5870347832750324e-49),
  Double(1.216125041553518e-34,5.586290567888806e-51),
  Double(3.8003907548547434e-36,1.7457158024652518e-52)
);

const ninv_fact_accu = length(inv_fact_accu)

const ninv_fact_perf = ninv_fact_accu
const inv_fact_perf = map(FastDouble, inv_fact_accu);

# [exp(i) for i in 1:64]

const exp_int_accu = (
 Double(2.718281828459045, 1.4456468917292502e-16),
 Double(7.38905609893065, -1.7971139497839148e-16),
 Double(20.085536923187668, -1.8275625525512858e-16),
 Double(54.598150033144236, 2.8741578015844115e-15),
 Double(148.4131591025766, 3.4863514900464198e-15),
 Double(403.4287934927351, 1.2359628024450387e-14),
 Double(1096.6331584284585, 9.869752640434095e-14),
 Double(2980.9579870417283, -2.7103295816873633e-14),
 Double(8103.083927575384, -2.1530877621067177e-13),
 Double(22026.465794806718, -1.3780134700517372e-12),
 Double(59874.14171519782, 1.7895764888916994e-12), 
 Double(162754.79141900392, 5.30065881322063e-12),
 Double(442413.3920089205, 1.2118711752313224e-11),
 Double(1.2026042841647768e6, -1.5000525764327354e-11),
 Double(3.2690173724721107e6, -3.075806431120808e-11),
 Double(8.886110520507872e6, 5.321182483501564e-10),
 Double(2.41549527535753e7, -7.203995068362157e-10),
 Double(6.565996913733051e7, 1.4165536846555444e-9),
 Double(1.7848230096318725e8, 1.333018530234341e-8),
 Double(4.851651954097903e8, 4.880277289790406e-10),
 Double(1.3188157344832146e9, 8.043448618843281e-8),
 Double(3.584912846131592e9, -2.3519384005402157e-7),
 Double(9.744803446248903e9, -6.74501500127677e-7),
 Double(2.648912212984347e10, 7.670395527778119e-7),
 Double(7.200489933738588e10, -6.992440211033874e-6),
 Double(1.9572960942883878e11, -1.1364989227123904e-5),
 Double(5.3204824060179865e11, -2.8335783945658822e-5),
 Double(1.446257064291475e12, 7.602079742299693e-5),
 Double(3.931334297144042e12, 8.220112058084352e-5),
 Double(1.0686474581524463e13, -0.0007436345313492586),
 Double(2.9048849665247426e13, -0.0005501643178883202),
 Double(7.896296018268069e13, 0.007660978022635108),
 Double(2.1464357978591606e14, 0.002124297761531261),
 Double(5.834617425274549e14, 0.006402902734610391),
 Double(1.5860134523134308e15, -0.02187035537422534),
 Double(4.311231547115195e15, 0.22711342229285691),
 Double(1.1719142372802612e16, -0.6912270602088098),
 Double(3.1855931757113756e16, 0.22032867170129863),
 Double(8.659340042399374e16, 2.953606932719265),
 Double(2.3538526683702e17, -14.592100089250966),
 Double(6.398434935300549e17, 37.22266340351557),
 Double(1.739274941520501e18, 55.394681303611236),
 Double(4.727839468229346e18, 257.4744575627443),
 Double(1.2851600114359308e19, -12.1907003678569),
 Double(3.4934271057485095e19, 436.0347972334061),
 Double(9.496119420602448e19, 5929.133649117119),
 Double(2.5813128861900675e20, -15192.714199784727),
 Double(7.016735912097631e20, 30185.471599886117),
 Double(1.9073465724950998e21, -98786.90015904616),
 Double(5.184705528587072e21, 419031.45332293346),
 Double(1.4093490824269389e22, -614323.8566876298),
 Double(3.831008000716577e22, -661524.304512138),
 Double(1.0413759433029089e23, -7.520901270665062e6), 
 Double(2.830753303274694e23, -4.711377645198593e6),
 Double(7.694785265142018e23, -3.868399744098706e7),
 Double(2.091659496012996e24, 5.079641515721467e7),
 Double(5.685719999335932e24, 2.0801558082063326e8),
 Double(1.545538935590104e25, 1.2092033491117463e8),
 Double(4.2012104037905144e25, -1.7624059056928084e9),
 Double(1.1420073898156842e26, 4.912247462314477e9),
 Double(3.10429793570192e26, 3.39761293411071e9),
 Double(8.438356668741454e26, 6.5719328084037315e10),
 Double(2.29378315946961e27, -7.566162968773138e10),
 Double(6.235149080811617e27, 1.3899738872492847e11),
);

const n_exp_int_accu = length(exp_int_accu)

const n_exp_int_perf = n_exp_int_accu
const exp_int_perf = map(FastDouble, exp_int_accu);


# npio32[idx] = (idx-1)*pi / 32

const npio32_accu = (
Double(0.0, 0.0),
Double(0.09817477042468103, 3.827021247335479e-18),
Double(0.19634954084936207, 7.654042494670958e-18),
Double(0.2945243112740431, 1.1481063742006436e-17),
Double(0.39269908169872414, 1.5308084989341915e-17),
Double(0.4908738521234052, 1.9135106236677395e-17),
Double(0.5890486225480862, 2.296212748401287e-17),
Double(0.6872233929727672, 2.678914873134835e-17),
Double(0.7853981633974483, 3.061616997868383e-17),
Double(0.8835729338221293, 3.444319122601931e-17),
Double(0.9817477042468103, 3.827021247335479e-17),
Double(1.0799224746714915, -6.89250687418254e-17),
Double(1.1780972450961724, 4.592425496802574e-17),
Double(1.2762720155208536, -6.127102624715443e-17),
Double(1.3744467859455345, 5.35782974626967e-17),
Double(1.4726215563702156, -5.3616983752483455e-17),
Double(1.5707963267948966, 6.123233995736766e-17),
Double(1.6689710972195777, -4.5962941257812514e-17),
Double(1.7671458676442586, 6.888638245203862e-17),
Double(1.8653206380689398, -3.830889876314156e-17),
Double(1.9634954084936207, 7.654042494670958e-17),
Double(2.061670178918302, -3.06548562684706e-17),
Double(2.159844949342983, -1.378501374836508e-16),
Double(2.2580197197676637, 1.9904379115123167e-16),
Double(2.356194490192345, 9.184850993605148e-17),
Double(2.454369260617026, -1.5346771279128684e-17),
Double(2.552544031041707, -1.2254205249430885e-16),
Double(2.650718801466388, 2.1435187614057358e-16),
Double(2.748893571891069, 1.071565949253934e-16),
Double(2.84706834231575, -3.868628978676964e-20),
Double(2.9452431127404313, -1.0723396750496691e-16),
Double(3.0434178831651124, -2.144292487201471e-16),
Double(3.141592653589793, 1.2246467991473532e-16),
Double(3.2397674240144743, 1.5269398699555146e-17),
Double(3.3379421944391554, -9.192588251562503e-17),
Double(3.4361169648638366, -1.991211637308052e-16),
Double(3.5342917352885173, 1.3777276490407724e-16),
Double(3.6324665057131984, 3.057748368889706e-17),
Double(3.7306412761378795, -7.661779752628312e-17),
Double(3.8288160465625607, -1.838130787414633e-16),
Double(3.9269908169872414, 1.5308084989341916e-16),
Double(4.025165587411923, -3.9820364117182366e-16),
Double(4.123340357836604, -6.13097125369412e-17),
Double(4.221515128261284, 2.755842160979412e-16),
Double(4.319689898685966, -2.757002749673016e-16),
Double(4.417864669110647, 6.11936536675809e-17),
Double(4.516039439535327, 3.9808758230246333e-16),
Double(4.614214209960009, -1.5319690876277947e-16),
Double(4.71238898038469, 1.8369701987210297e-16),
Double(4.810563750809371, -3.675874711931398e-16),
Double(4.908738521234052, -3.069354255825737e-17),
Double(5.006913291658733, 3.062003860766251e-16),
Double(5.105088062083414, -2.450841049886177e-16),
Double(5.203262832508095, 9.180982364626472e-17),
Double(5.301437602932776, 4.2870375228114717e-16),
Double(5.399612373357457, -1.2258073878409563e-16),
Double(5.497787143782138, 2.143131898507868e-16),
Double(5.5959619142068195, -3.36971301214456e-16),
Double(5.6941366846315, -7.737257957353928e-20),
Double(5.792311455056181, 3.368165560553089e-16),
Double(5.8904862254808625, -2.1446793500993382e-16),
Double(5.988660995905543, 1.2242599362494854e-16),
Double(6.086835766330225, -4.288584974402942e-16),
Double(6.1850105367549055, -9.19645688054118e-17),
#Double(6.283185307179586, 2.4492935982947064e-16)
);

const n_npio32_accu = length(npio32_accu)

const n_npio32_perf = n_npio32_accu
const npio32_perf = map(FastDouble, npio32_accu);

# sin_npio32[idx] = sin( (idx-1)*pi / 32 )

const sin_npio32_accu = (
Double(0.0, 0.0),
Double(0.0980171403295606, -1.634582362244256e-18),
Double(0.19509032201612828, -7.99107906846173e-18),
Double(0.2902846772544624, -1.892797870777425e-17),
Double(0.3826834323650898, -1.0050772696461588e-17),
Double(0.47139673682599764, 6.5166781360690145e-18),
Double(0.5555702330196022, 4.709410940561677e-17),
Double(0.6343932841636455, 1.0420901929280035e-17),
Double(0.7071067811865476, -4.833646656726457e-17),
Double(0.773010453362737, -3.256590703364977e-17),
Double(0.8314696123025452, 1.4073856984728037e-18),
Double(0.881921264348355, -1.9843248405890568e-17),
Double(0.9238795325112867, 1.7645047084336677e-17),
Double(0.9569403357322088, 4.05538698618757e-17),
Double(0.9807852804032304, 1.8546939997825006e-17),
Double(0.9951847266721969, -4.2486913678304403e-17),
Double(1.0, -1.1210807766491662e-66),
Double(0.9951847266721969, -4.248691367830441e-17),
Double(0.9807852804032304, 1.8546939997825003e-17),
Double(0.9569403357322088, 4.05538698618757e-17),
Double(0.9238795325112867, 1.7645047084336674e-17),
Double(0.881921264348355, -1.9843248405890562e-17),
Double(0.8314696123025452, 1.4073856984728124e-18),
Double(0.773010453362737, -3.256590703364977e-17),
Double(0.7071067811865476, -4.833646656726456e-17),
Double(0.6343932841636455, 1.0420901929280033e-17),
Double(0.5555702330196022, 4.7094109405616756e-17),
Double(0.47139673682599764, 6.516678136069009e-18),
Double(0.3826834323650898, -1.0050772696461588e-17),
Double(0.2902846772544624, -1.892797870777425e-17),
Double(0.19509032201612828, -7.991079068461768e-18),
Double(0.0980171403295606, -1.6345823622442887e-18),
Double(-2.9947698097183397e-33, 1.1124542208633653e-49),
Double(-0.0980171403295606, 1.6345823622442521e-18),
Double(-0.19509032201612828, 7.991079068461727e-18),
Double(-0.2902846772544624, 1.892797870777424e-17),
Double(-0.3826834323650898, 1.0050772696461581e-17),
Double(-0.47139673682599764, -6.5166781360690145e-18),
Double(-0.5555702330196022, -4.709410940561676e-17),
Double(-0.6343932841636455, -1.0420901929280028e-17),
Double(-0.7071067811865476, 4.833646656726456e-17),
Double(-0.773010453362737, 3.2565907033649785e-17),
Double(-0.8314696123025452, -1.407385698472802e-18),
Double(-0.881921264348355, 1.9843248405890578e-17),
Double(-0.9238795325112867, -1.7645047084336662e-17),
Double(-0.9569403357322088, -4.05538698618757e-17),
Double(-0.9807852804032304, -1.8546939997825006e-17),
Double(-0.9951847266721969, 4.248691367830441e-17),
Double(-1.0, 3.068418716632831e-65),
Double(-0.9951847266721969, 4.248691367830441e-17),
Double(-0.9807852804032304, -1.8546939997825003e-17),
Double(-0.9569403357322088, -4.0553869861875694e-17),
Double(-0.9238795325112867, -1.7645047084336668e-17),
Double(-0.881921264348355, 1.9843248405890565e-17),
Double(-0.8314696123025452, -1.407385698472797e-18),
Double(-0.773010453362737, 3.256590703364977e-17),
Double(-0.7071067811865476, 4.833646656726457e-17),
Double(-0.6343932841636455, -1.0420901929280039e-17),
Double(-0.5555702330196022, -4.709410940561676e-17),
Double(-0.47139673682599764, -6.516678136069028e-18),
Double(-0.3826834323650898, 1.0050772696461658e-17),
Double(-0.2902846772544624, 1.8927978707774248e-17),
Double(-0.19509032201612828, 7.991079068461796e-18),
Double(-0.0980171403295606, 1.6345823622442672e-18),
#Double(5.989539619436679e-33, -2.2249084417267306e-49)
);

const n_sin_npio32_accu = length(sin_npio32_accu)

const n_sin_npio32_perf = n_sin_npio32_accu
const sin_npio32_perf = map(FastDouble, sin_npio32_accu);

# cos_npio32[idx] = cos( (idx-1)*pi / 32 )

const cos_npio32_accu = (
Double(1.0, 0.0),
Double(0.9951847266721969, -4.248691367830441e-17),
Double(0.9807852804032304, 1.8546939997825006e-17),
Double(0.9569403357322088, 4.05538698618757e-17),
Double(0.9238795325112867, 1.7645047084336677e-17),
Double(0.881921264348355, -1.9843248405890562e-17),
Double(0.8314696123025452, 1.407385698472803e-18),
Double(0.773010453362737, -3.256590703364977e-17),
Double(0.7071067811865476, -4.833646656726457e-17),
Double(0.6343932841636455, 1.0420901929280033e-17),
Double(0.5555702330196022, 4.709410940561676e-17),
Double(0.47139673682599764, 6.5166781360690214e-18),
Double(0.3826834323650898, -1.0050772696461586e-17),
Double(0.2902846772544624, -1.8927978707774255e-17),
Double(0.19509032201612828, -7.99107906846173e-18),
Double(0.0980171403295606, -1.634582362244275e-18),
Double(-1.4973849048591698e-33, 5.562271104316826e-50),
Double(-0.0980171403295606, 1.6345823622442537e-18),
Double(-0.19509032201612828, 7.991079068461728e-18),
Double(-0.2902846772544624, 1.892797870777425e-17),
Double(-0.3826834323650898, 1.0050772696461583e-17),
Double(-0.47139673682599764, -6.516678136069013e-18),
Double(-0.5555702330196022, -4.709410940561675e-17),
Double(-0.6343932841636455, -1.0420901929280036e-17),
Double(-0.7071067811865476, 4.833646656726457e-17),
Double(-0.773010453362737, 3.2565907033649766e-17),
Double(-0.8314696123025452, -1.407385698472808e-18),
Double(-0.881921264348355, 1.984324840589056e-17),
Double(-0.9238795325112867, -1.7645047084336677e-17),
Double(-0.9569403357322088, -4.05538698618757e-17),
Double(-0.9807852804032304, -1.8546939997825012e-17),
Double(-0.9951847266721969, 4.2486913678304403e-17),
Double(-1.0, 4.484323106596665e-66),
Double(-0.9951847266721969, 4.248691367830441e-17),
Double(-0.9807852804032304, -1.8546939997825003e-17),
Double(-0.9569403357322088, -4.0553869861875694e-17),
Double(-0.9238795325112867, -1.7645047084336674e-17),
Double(-0.881921264348355, 1.9843248405890562e-17),
Double(-0.8314696123025452, -1.4073856984728047e-18),
Double(-0.773010453362737, 3.2565907033649766e-17),
Double(-0.7071067811865476, 4.8336466567264573e-17),
Double(-0.6343932841636455, -1.042090192928005e-17),
Double(-0.5555702330196022, -4.709410940561677e-17),
Double(-0.47139673682599764, -6.51667813606904e-18),
Double(-0.3826834323650898, 1.0050772696461555e-17),
Double(-0.2902846772544624, 1.8927978707774258e-17),
Double(-0.19509032201612828, 7.991079068461733e-18),
Double(-0.0980171403295606, 1.6345823622442535e-18),
Double(-7.8337969295008e-33, 5.173596326540973e-49),
Double(0.0980171403295606, -1.63458236224422e-18),
Double(0.19509032201612828, -7.991079068461725e-18),
Double(0.2902846772544624, -1.8927978707774227e-17),
Double(0.3826834323650898, -1.0050772696461569e-17),
Double(0.47139673682599764, 6.516678136069015e-18),
Double(0.5555702330196022, 4.7094109405616774e-17),
Double(0.6343932841636455, 1.0420901929280038e-17),
Double(0.7071067811865476, -4.833646656726457e-17),
Double(0.773010453362737, -3.256590703364977e-17),
Double(0.8314696123025452, 1.4073856984728055e-18),
Double(0.881921264348355, -1.984324840589057e-17),
Double(0.9238795325112867, 1.7645047084336705e-17),
Double(0.9569403357322088, 4.05538698618757e-17),
Double(0.9807852804032304, 1.8546939997825018e-17),
Double(0.9951847266721969, -4.248691367830441e-17),
#Double(1.0, -1.7937292426403932e-65)
);

const tan_npio32_accu  = (
    Double(0.0, 0.0),
    Double(0.09849140335716425, 5.3100671162822435e-18),
    Double(0.198912367379658, 8.391794477636538e-19),
    Double(0.3033466836073424, -1.2766990847826405e-17),
    Double(0.41421356237309503, 1.4349369327986523e-17),
    Double(0.5345111359507917, -5.2626469389262167e-17),
    Double(0.6681786379192989, 4.1042270233610004e-17),
    Double(0.8206787908286604, -2.2923147594675738e-17),
    Double(1.0, 0.0),
    Double(1.2185035255879764, -2.1244788699148428e-17),
    Double(1.496605762665489, 6.974100888958305e-17),
    Double(1.8708684117893895, 2.945807107795785e-17),
    Double(2.414213562373095, 1.2537167179050217e-16),
    Double(3.2965582089383205, -9.53295779936916e-17),
    Double(5.027339492125848, 2.95379181037367e-17),
    Double(10.15317038760886, 5.362306887894472e-16),
    Double(Inf, -Inf),
    Double(-10.15317038760886, -5.362306887894472e-16),
    Double(-5.027339492125848, -2.95379181037367e-17),
    Double(-3.2965582089383205, 9.53295779936916e-17),
    Double(-2.414213562373095, -1.2537167179050217e-16),
    Double(-1.8708684117893895, -2.945807107795785e-17),
    Double(-1.496605762665489, -6.974100888958305e-17),
    Double(-1.2185035255879764, 2.1244788699148428e-17),
    Double(-1.0, 0.0),
    Double(-0.8206787908286604, 2.2923147594675738e-17),
    Double(-0.6681786379192989, -4.1042270233610004e-17),
    Double(-0.5345111359507917, 5.2626469389262167e-17),
    Double(-0.41421356237309503, -1.4349369327986523e-17),
    Double(-0.3033466836073424, 1.2766990847826405e-17),
    Double(-0.198912367379658, -8.391794477636538e-19),
    Double(-0.09849140335716425, -5.3100671162822435e-18),
    Double(0.0, 0.0),
    Double(0.09849140335716425, 5.3100671162822435e-18),
    Double(0.198912367379658, 8.391794477636538e-19),
    Double(0.3033466836073424, -1.2766990847826405e-17),
    Double(0.41421356237309503, 1.4349369327986523e-17),
    Double(0.5345111359507917, -5.2626469389262167e-17),
    Double(0.6681786379192989, 4.1042270233610004e-17),
    Double(0.8206787908286604, -2.2923147594675738e-17),
    Double(1.0, 0.0),
    Double(1.2185035255879764, -2.1244788699148428e-17),
    Double(1.496605762665489, 6.974100888958305e-17),
    Double(1.8708684117893895, 2.945807107795785e-17),
    Double(2.414213562373095, 1.2537167179050217e-16),
    Double(3.2965582089383205, -9.53295779936916e-17),
    Double(5.027339492125848, 2.95379181037367e-17),
    Double(10.15317038760886, 5.362306887894472e-16),
    Double(-Inf, 0.0),
    Double(-10.15317038760886, -5.362306887894472e-16),
    Double(-5.027339492125848, -2.95379181037367e-17),
    Double(-3.2965582089383205, 9.53295779936916e-17),
    Double(-2.414213562373095, -1.2537167179050217e-16),
    Double(-1.8708684117893895, -2.945807107795785e-17),
    Double(-1.496605762665489, -6.974100888958305e-17),
    Double(-1.2185035255879764, 2.1244788699148428e-17),
    Double(-1.0, 0.0),
    Double(-0.8206787908286604, 2.2923147594675738e-17),
    Double(-0.6681786379192989, -4.1042270233610004e-17),
    Double(-0.5345111359507917, 5.2626469389262167e-17),
    Double(-0.41421356237309503, -1.4349369327986523e-17),
    Double(-0.3033466836073424, 1.2766990847826405e-17),
    Double(-0.198912367379658, -8.391794477636538e-19),
    Double(-0.09849140335716425, -5.3100671162822435e-18),
    Double(0.0, 0.0),
#    Double(0.09849140335716425, 5.3100671162822435e-18)
);

const n_cos_npio32_accu = length(cos_npio32_accu)

const n_cos_npio32_perf = n_cos_npio32_accu
const cos_npio32_perf = map(FastDouble, cos_npio32_accu);

const tan_npio32_accu  = (
    Double(0.0, 0.0),
    Double(0.09849140335716425, 5.3100671162822435e-18),
    Double(0.198912367379658, 8.391794477636538e-19),
    Double(0.3033466836073424, -1.2766990847826405e-17),
    Double(0.41421356237309503, 1.4349369327986523e-17),
    Double(0.5345111359507917, -5.2626469389262167e-17),
    Double(0.6681786379192989, 4.1042270233610004e-17),
    Double(0.8206787908286604, -2.2923147594675738e-17),
    Double(1.0, 0.0),
    Double(1.2185035255879764, -2.1244788699148428e-17),
    Double(1.496605762665489, 6.974100888958305e-17),
    Double(1.8708684117893895, 2.945807107795785e-17),
    Double(2.414213562373095, 1.2537167179050217e-16),
    Double(3.2965582089383205, -9.53295779936916e-17),
    Double(5.027339492125848, 2.95379181037367e-17),
    Double(10.15317038760886, 5.362306887894472e-16),
    Double(Inf, -Inf),
    Double(-10.15317038760886, -5.362306887894472e-16),
    Double(-5.027339492125848, -2.95379181037367e-17),
    Double(-3.2965582089383205, 9.53295779936916e-17),
    Double(-2.414213562373095, -1.2537167179050217e-16),
    Double(-1.8708684117893895, -2.945807107795785e-17),
    Double(-1.496605762665489, -6.974100888958305e-17),
    Double(-1.2185035255879764, 2.1244788699148428e-17),
    Double(-1.0, 0.0),
    Double(-0.8206787908286604, 2.2923147594675738e-17),
    Double(-0.6681786379192989, -4.1042270233610004e-17),
    Double(-0.5345111359507917, 5.2626469389262167e-17),
    Double(-0.41421356237309503, -1.4349369327986523e-17),
    Double(-0.3033466836073424, 1.2766990847826405e-17),
    Double(-0.198912367379658, -8.391794477636538e-19),
    Double(-0.09849140335716425, -5.3100671162822435e-18),
    Double(0.0, 0.0),
    Double(0.09849140335716425, 5.3100671162822435e-18),
    Double(0.198912367379658, 8.391794477636538e-19),
    Double(0.3033466836073424, -1.2766990847826405e-17),
    Double(0.41421356237309503, 1.4349369327986523e-17),
    Double(0.5345111359507917, -5.2626469389262167e-17),
    Double(0.6681786379192989, 4.1042270233610004e-17),
    Double(0.8206787908286604, -2.2923147594675738e-17),
    Double(1.0, 0.0),
    Double(1.2185035255879764, -2.1244788699148428e-17),
    Double(1.496605762665489, 6.974100888958305e-17),
    Double(1.8708684117893895, 2.945807107795785e-17),
    Double(2.414213562373095, 1.2537167179050217e-16),
    Double(3.2965582089383205, -9.53295779936916e-17),
    Double(5.027339492125848, 2.95379181037367e-17),
    Double(10.15317038760886, 5.362306887894472e-16),
    Double(-Inf, 0.0),
    Double(-10.15317038760886, -5.362306887894472e-16),
    Double(-5.027339492125848, -2.95379181037367e-17),
    Double(-3.2965582089383205, 9.53295779936916e-17),
    Double(-2.414213562373095, -1.2537167179050217e-16),
    Double(-1.8708684117893895, -2.945807107795785e-17),
    Double(-1.496605762665489, -6.974100888958305e-17),
    Double(-1.2185035255879764, 2.1244788699148428e-17),
    Double(-1.0, 0.0),
    Double(-0.8206787908286604, 2.2923147594675738e-17),
    Double(-0.6681786379192989, -4.1042270233610004e-17),
    Double(-0.5345111359507917, 5.2626469389262167e-17),
    Double(-0.41421356237309503, -1.4349369327986523e-17),
    Double(-0.3033466836073424, 1.2766990847826405e-17),
    Double(-0.198912367379658, -8.391794477636538e-19),
    Double(-0.09849140335716425, -5.3100671162822435e-18),
    Double(0.0, 0.0),
#    Double(0.09849140335716425, 5.3100671162822435e-18)
);

const n_tan_npio32_accu = length(tan_npio32_accu)

const n_tan_npio32_perf = n_tan_npio32_accu
const tan_npio32_perf = map(FastDouble, tan_npio32_accu);


const tan_coeff_accu = (
   Double(1.0, 0.0),
   Double(0.3333333333333333, 1.850371707708594e-17),
   Double(0.13333333333333333, 1.8503717077085942e-18),
   Double(0.05396825396825397, -2.5552752154071065e-18),
   Double(0.021869488536155203, -1.7377829530067485e-19),
   Double(0.008863235529902197, -7.63300580171831e-19),
   Double(0.003592128036572481, -1.253823608406629e-19),
   Double(0.0014558343870513183, -6.214492640136062e-20),
   Double(0.000590027440945586, 3.478690842383652e-20),
   Double(0.00023912911424355248, 3.564613898329782e-21),
   Double(9.691537956929451e-5, -6.2386628755632464e-21),
   Double(3.927832388331683e-5, 1.3737015743076767e-21),
   Double(1.5918905069328964e-5, 1.0427554807190543e-21),
   Double(6.451689215655431e-6, 1.1519922496640058e-22),
   Double(2.6147711512907546e-6, -9.313685621299801e-23),
   Double(1.0597268320104654e-6, 2.3670525505213632e-24),
);


const n_tan_coeff_accu = length(tan_coeff_accu)
const n_tan_coeff_perf = n_tan_coeff_accu
const tan_coeff_perf = map(FastDouble, tan_coeff_accu);
