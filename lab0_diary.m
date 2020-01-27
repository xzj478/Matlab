C = [2 3 5];
x = -6:2:6;
y = C(1)*x.^2 + C(2)*x. + C(3)
 y = C(1)*x.^2 + C(2)*x. + C(3)
                         ↑
{Error: Invalid use of operator.
} 
y = C(1)*x.^2 + C(2)*x + C(3)

y =

    59    25     7     5    19    49    95

plot(x,y)
x = -6:2:6;
x = -6:0.01:6;
y = C(1)*x.^2 + C(2)*x + C(3)

y =

  Columns 1 through 12

   59.0000   58.7902   58.5808   58.3718   58.1632   57.9550   57.7472   57.5398   57.3328   57.1262   56.9200   56.7142

  Columns 13 through 24

   56.5088   56.3038   56.0992   55.8950   55.6912   55.4878   55.2848   55.0822   54.8800   54.6782   54.4768   54.2758

  Columns 25 through 36

   54.0752   53.8750   53.6752   53.4758   53.2768   53.0782   52.8800   52.6822   52.4848   52.2878   52.0912   51.8950

  Columns 37 through 48

   51.6992   51.5038   51.3088   51.1142   50.9200   50.7262   50.5328   50.3398   50.1472   49.9550   49.7632   49.5718

  Columns 49 through 60

   49.3808   49.1902   49.0000   48.8102   48.6208   48.4318   48.2432   48.0550   47.8672   47.6798   47.4928   47.3062

  Columns 61 through 72

   47.1200   46.9342   46.7488   46.5638   46.3792   46.1950   46.0112   45.8278   45.6448   45.4622   45.2800   45.0982

  Columns 73 through 84

   44.9168   44.7358   44.5552   44.3750   44.1952   44.0158   43.8368   43.6582   43.4800   43.3022   43.1248   42.9478

  Columns 85 through 96

   42.7712   42.5950   42.4192   42.2438   42.0688   41.8942   41.7200   41.5462   41.3728   41.1998   41.0272   40.8550

  Columns 97 through 108

   40.6832   40.5118   40.3408   40.1702   40.0000   39.8302   39.6608   39.4918   39.3232   39.1550   38.9872   38.8198

  Columns 109 through 120

   38.6528   38.4862   38.3200   38.1542   37.9888   37.8238   37.6592   37.4950   37.3312   37.1678   37.0048   36.8422

  Columns 121 through 132

   36.6800   36.5182   36.3568   36.1958   36.0352   35.8750   35.7152   35.5558   35.3968   35.2382   35.0800   34.9222

  Columns 133 through 144

   34.7648   34.6078   34.4512   34.2950   34.1392   33.9838   33.8288   33.6742   33.5200   33.3662   33.2128   33.0598

  Columns 145 through 156

   32.9072   32.7550   32.6032   32.4518   32.3008   32.1502   32.0000   31.8502   31.7008   31.5518   31.4032   31.2550

  Columns 157 through 168

   31.1072   30.9598   30.8128   30.6662   30.5200   30.3742   30.2288   30.0838   29.9392   29.7950   29.6512   29.5078

  Columns 169 through 180

   29.3648   29.2222   29.0800   28.9382   28.7968   28.6558   28.5152   28.3750   28.2352   28.0958   27.9568   27.8182

  Columns 181 through 192

   27.6800   27.5422   27.4048   27.2678   27.1312   26.9950   26.8592   26.7238   26.5888   26.4542   26.3200   26.1862

  Columns 193 through 204

   26.0528   25.9198   25.7872   25.6550   25.5232   25.3918   25.2608   25.1302   25.0000   24.8702   24.7408   24.6118

  Columns 205 through 216

   24.4832   24.3550   24.2272   24.0998   23.9728   23.8462   23.7200   23.5942   23.4688   23.3438   23.2192   23.0950

  Columns 217 through 228

   22.9712   22.8478   22.7248   22.6022   22.4800   22.3582   22.2368   22.1158   21.9952   21.8750   21.7552   21.6358

  Columns 229 through 240

   21.5168   21.3982   21.2800   21.1622   21.0448   20.9278   20.8112   20.6950   20.5792   20.4638   20.3488   20.2342

  Columns 241 through 252

   20.1200   20.0062   19.8928   19.7798   19.6672   19.5550   19.4432   19.3318   19.2208   19.1102   19.0000   18.8902

  Columns 253 through 264

   18.7808   18.6718   18.5632   18.4550   18.3472   18.2398   18.1328   18.0262   17.9200   17.8142   17.7088   17.6038

  Columns 265 through 276

   17.4992   17.3950   17.2912   17.1878   17.0848   16.9822   16.8800   16.7782   16.6768   16.5758   16.4752   16.3750

  Columns 277 through 288

   16.2752   16.1758   16.0768   15.9782   15.8800   15.7822   15.6848   15.5878   15.4912   15.3950   15.2992   15.2038

  Columns 289 through 300

   15.1088   15.0142   14.9200   14.8262   14.7328   14.6398   14.5472   14.4550   14.3632   14.2718   14.1808   14.0902

  Columns 301 through 312

   14.0000   13.9102   13.8208   13.7318   13.6432   13.5550   13.4672   13.3798   13.2928   13.2062   13.1200   13.0342

  Columns 313 through 324

   12.9488   12.8638   12.7792   12.6950   12.6112   12.5278   12.4448   12.3622   12.2800   12.1982   12.1168   12.0358

  Columns 325 through 336

   11.9552   11.8750   11.7952   11.7158   11.6368   11.5582   11.4800   11.4022   11.3248   11.2478   11.1712   11.0950

  Columns 337 through 348

   11.0192   10.9438   10.8688   10.7942   10.7200   10.6462   10.5728   10.4998   10.4272   10.3550   10.2832   10.2118

  Columns 349 through 360

   10.1408   10.0702   10.0000    9.9302    9.8608    9.7918    9.7232    9.6550    9.5872    9.5198    9.4528    9.3862

  Columns 361 through 372

    9.3200    9.2542    9.1888    9.1238    9.0592    8.9950    8.9312    8.8678    8.8048    8.7422    8.6800    8.6182

  Columns 373 through 384

    8.5568    8.4958    8.4352    8.3750    8.3152    8.2558    8.1968    8.1382    8.0800    8.0222    7.9648    7.9078

  Columns 385 through 396

    7.8512    7.7950    7.7392    7.6838    7.6288    7.5742    7.5200    7.4662    7.4128    7.3598    7.3072    7.2550

  Columns 397 through 408

    7.2032    7.1518    7.1008    7.0502    7.0000    6.9502    6.9008    6.8518    6.8032    6.7550    6.7072    6.6598

  Columns 409 through 420

    6.6128    6.5662    6.5200    6.4742    6.4288    6.3838    6.3392    6.2950    6.2512    6.2078    6.1648    6.1222

  Columns 421 through 432

    6.0800    6.0382    5.9968    5.9558    5.9152    5.8750    5.8352    5.7958    5.7568    5.7182    5.6800    5.6422

  Columns 433 through 444

    5.6048    5.5678    5.5312    5.4950    5.4592    5.4238    5.3888    5.3542    5.3200    5.2862    5.2528    5.2198

  Columns 445 through 456

    5.1872    5.1550    5.1232    5.0918    5.0608    5.0302    5.0000    4.9702    4.9408    4.9118    4.8832    4.8550

  Columns 457 through 468

    4.8272    4.7998    4.7728    4.7462    4.7200    4.6942    4.6688    4.6438    4.6192    4.5950    4.5712    4.5478

  Columns 469 through 480

    4.5248    4.5022    4.4800    4.4582    4.4368    4.4158    4.3952    4.3750    4.3552    4.3358    4.3168    4.2982

  Columns 481 through 492

    4.2800    4.2622    4.2448    4.2278    4.2112    4.1950    4.1792    4.1638    4.1488    4.1342    4.1200    4.1062

  Columns 493 through 504

    4.0928    4.0798    4.0672    4.0550    4.0432    4.0318    4.0208    4.0102    4.0000    3.9902    3.9808    3.9718

  Columns 505 through 516

    3.9632    3.9550    3.9472    3.9398    3.9328    3.9262    3.9200    3.9142    3.9088    3.9038    3.8992    3.8950

  Columns 517 through 528

    3.8912    3.8878    3.8848    3.8822    3.8800    3.8782    3.8768    3.8758    3.8752    3.8750    3.8752    3.8758

  Columns 529 through 540

    3.8768    3.8782    3.8800    3.8822    3.8848    3.8878    3.8912    3.8950    3.8992    3.9038    3.9088    3.9142

  Columns 541 through 552

    3.9200    3.9262    3.9328    3.9398    3.9472    3.9550    3.9632    3.9718    3.9808    3.9902    4.0000    4.0102

  Columns 553 through 564

    4.0208    4.0318    4.0432    4.0550    4.0672    4.0798    4.0928    4.1062    4.1200    4.1342    4.1488    4.1638

  Columns 565 through 576

    4.1792    4.1950    4.2112    4.2278    4.2448    4.2622    4.2800    4.2982    4.3168    4.3358    4.3552    4.3750

  Columns 577 through 588

    4.3952    4.4158    4.4368    4.4582    4.4800    4.5022    4.5248    4.5478    4.5712    4.5950    4.6192    4.6438

  Columns 589 through 600

    4.6688    4.6942    4.7200    4.7462    4.7728    4.7998    4.8272    4.8550    4.8832    4.9118    4.9408    4.9702

  Columns 601 through 612

    5.0000    5.0302    5.0608    5.0918    5.1232    5.1550    5.1872    5.2198    5.2528    5.2862    5.3200    5.3542

  Columns 613 through 624

    5.3888    5.4238    5.4592    5.4950    5.5312    5.5678    5.6048    5.6422    5.6800    5.7182    5.7568    5.7958

  Columns 625 through 636

    5.8352    5.8750    5.9152    5.9558    5.9968    6.0382    6.0800    6.1222    6.1648    6.2078    6.2512    6.2950

  Columns 637 through 648

    6.3392    6.3838    6.4288    6.4742    6.5200    6.5662    6.6128    6.6598    6.7072    6.7550    6.8032    6.8518

  Columns 649 through 660

    6.9008    6.9502    7.0000    7.0502    7.1008    7.1518    7.2032    7.2550    7.3072    7.3598    7.4128    7.4662

  Columns 661 through 672

    7.5200    7.5742    7.6288    7.6838    7.7392    7.7950    7.8512    7.9078    7.9648    8.0222    8.0800    8.1382

  Columns 673 through 684

    8.1968    8.2558    8.3152    8.3750    8.4352    8.4958    8.5568    8.6182    8.6800    8.7422    8.8048    8.8678

  Columns 685 through 696

    8.9312    8.9950    9.0592    9.1238    9.1888    9.2542    9.3200    9.3862    9.4528    9.5198    9.5872    9.6550

  Columns 697 through 708

    9.7232    9.7918    9.8608    9.9302   10.0000   10.0702   10.1408   10.2118   10.2832   10.3550   10.4272   10.4998

  Columns 709 through 720

   10.5728   10.6462   10.7200   10.7942   10.8688   10.9438   11.0192   11.0950   11.1712   11.2478   11.3248   11.4022

  Columns 721 through 732

   11.4800   11.5582   11.6368   11.7158   11.7952   11.8750   11.9552   12.0358   12.1168   12.1982   12.2800   12.3622

  Columns 733 through 744

   12.4448   12.5278   12.6112   12.6950   12.7792   12.8638   12.9488   13.0342   13.1200   13.2062   13.2928   13.3798

  Columns 745 through 756

   13.4672   13.5550   13.6432   13.7318   13.8208   13.9102   14.0000   14.0902   14.1808   14.2718   14.3632   14.4550

  Columns 757 through 768

   14.5472   14.6398   14.7328   14.8262   14.9200   15.0142   15.1088   15.2038   15.2992   15.3950   15.4912   15.5878

  Columns 769 through 780

   15.6848   15.7822   15.8800   15.9782   16.0768   16.1758   16.2752   16.3750   16.4752   16.5758   16.6768   16.7782

  Columns 781 through 792

   16.8800   16.9822   17.0848   17.1878   17.2912   17.3950   17.4992   17.6038   17.7088   17.8142   17.9200   18.0262

  Columns 793 through 804

   18.1328   18.2398   18.3472   18.4550   18.5632   18.6718   18.7808   18.8902   19.0000   19.1102   19.2208   19.3318

  Columns 805 through 816

   19.4432   19.5550   19.6672   19.7798   19.8928   20.0062   20.1200   20.2342   20.3488   20.4638   20.5792   20.6950

  Columns 817 through 828

   20.8112   20.9278   21.0448   21.1622   21.2800   21.3982   21.5168   21.6358   21.7552   21.8750   21.9952   22.1158

  Columns 829 through 840

   22.2368   22.3582   22.4800   22.6022   22.7248   22.8478   22.9712   23.0950   23.2192   23.3438   23.4688   23.5942

  Columns 841 through 852

   23.7200   23.8462   23.9728   24.0998   24.2272   24.3550   24.4832   24.6118   24.7408   24.8702   25.0000   25.1302

  Columns 853 through 864

   25.2608   25.3918   25.5232   25.6550   25.7872   25.9198   26.0528   26.1862   26.3200   26.4542   26.5888   26.7238

  Columns 865 through 876

   26.8592   26.9950   27.1312   27.2678   27.4048   27.5422   27.6800   27.8182   27.9568   28.0958   28.2352   28.3750

  Columns 877 through 888

   28.5152   28.6558   28.7968   28.9382   29.0800   29.2222   29.3648   29.5078   29.6512   29.7950   29.9392   30.0838

  Columns 889 through 900

   30.2288   30.3742   30.5200   30.6662   30.8128   30.9598   31.1072   31.2550   31.4032   31.5518   31.7008   31.8502

  Columns 901 through 912

   32.0000   32.1502   32.3008   32.4518   32.6032   32.7550   32.9072   33.0598   33.2128   33.3662   33.5200   33.6742

  Columns 913 through 924

   33.8288   33.9838   34.1392   34.2950   34.4512   34.6078   34.7648   34.9222   35.0800   35.2382   35.3968   35.5558

  Columns 925 through 936

   35.7152   35.8750   36.0352   36.1958   36.3568   36.5182   36.6800   36.8422   37.0048   37.1678   37.3312   37.4950

  Columns 937 through 948

   37.6592   37.8238   37.9888   38.1542   38.3200   38.4862   38.6528   38.8198   38.9872   39.1550   39.3232   39.4918

  Columns 949 through 960

   39.6608   39.8302   40.0000   40.1702   40.3408   40.5118   40.6832   40.8550   41.0272   41.1998   41.3728   41.5462

  Columns 961 through 972

   41.7200   41.8942   42.0688   42.2438   42.4192   42.5950   42.7712   42.9478   43.1248   43.3022   43.4800   43.6582

  Columns 973 through 984

   43.8368   44.0158   44.1952   44.3750   44.5552   44.7358   44.9168   45.0982   45.2800   45.4622   45.6448   45.8278

  Columns 985 through 996

   46.0112   46.1950   46.3792   46.5638   46.7488   46.9342   47.1200   47.3062   47.4928   47.6798   47.8672   48.0550

  Columns 997 through 1008

   48.2432   48.4318   48.6208   48.8102   49.0000   49.1902   49.3808   49.5718   49.7632   49.9550   50.1472   50.3398

  Columns 1009 through 1020

   50.5328   50.7262   50.9200   51.1142   51.3088   51.5038   51.6992   51.8950   52.0912   52.2878   52.4848   52.6822

  Columns 1021 through 1032

   52.8800   53.0782   53.2768   53.4758   53.6752   53.8750   54.0752   54.2758   54.4768   54.6782   54.8800   55.0822

  Columns 1033 through 1044

   55.2848   55.4878   55.6912   55.8950   56.0992   56.3038   56.5088   56.7142   56.9200   57.1262   57.3328   57.5398

  Columns 1045 through 1056

   57.7472   57.9550   58.1632   58.3718   58.5808   58.7902   59.0000   59.2102   59.4208   59.6318   59.8432   60.0550

  Columns 1057 through 1068

   60.2672   60.4798   60.6928   60.9062   61.1200   61.3342   61.5488   61.7638   61.9792   62.1950   62.4112   62.6278

  Columns 1069 through 1080

   62.8448   63.0622   63.2800   63.4982   63.7168   63.9358   64.1552   64.3750   64.5952   64.8158   65.0368   65.2582

  Columns 1081 through 1092

   65.4800   65.7022   65.9248   66.1478   66.3712   66.5950   66.8192   67.0438   67.2688   67.4942   67.7200   67.9462

  Columns 1093 through 1104

   68.1728   68.3998   68.6272   68.8550   69.0832   69.3118   69.5408   69.7702   70.0000   70.2302   70.4608   70.6918

  Columns 1105 through 1116

   70.9232   71.1550   71.3872   71.6198   71.8528   72.0862   72.3200   72.5542   72.7888   73.0238   73.2592   73.4950

  Columns 1117 through 1128

   73.7312   73.9678   74.2048   74.4422   74.6800   74.9182   75.1568   75.3958   75.6352   75.8750   76.1152   76.3558

  Columns 1129 through 1140

   76.5968   76.8382   77.0800   77.3222   77.5648   77.8078   78.0512   78.2950   78.5392   78.7838   79.0288   79.2742

  Columns 1141 through 1152

   79.5200   79.7662   80.0128   80.2598   80.5072   80.7550   81.0032   81.2518   81.5008   81.7502   82.0000   82.2502

  Columns 1153 through 1164

   82.5008   82.7518   83.0032   83.2550   83.5072   83.7598   84.0128   84.2662   84.5200   84.7742   85.0288   85.2838

  Columns 1165 through 1176

   85.5392   85.7950   86.0512   86.3078   86.5648   86.8222   87.0800   87.3382   87.5968   87.8558   88.1152   88.3750

  Columns 1177 through 1188

   88.6352   88.8958   89.1568   89.4182   89.6800   89.9422   90.2048   90.4678   90.7312   90.9950   91.2592   91.5238

  Columns 1189 through 1200

   91.7888   92.0542   92.3200   92.5862   92.8528   93.1198   93.3872   93.6550   93.9232   94.1918   94.4608   94.7302

  Column 1201

   95.0000

y = C(1)*x.^2 + C(2)*x + C(3);
plot(x,y)

plot(x,y)
x2 = -6:0.01:6;
y2 = C(1)*x.^2 + C(2)*x + C(3);
plot(x2,y2)
y2 = C(1)*x2.^2 + C(2)*x2 + C(3);
plot(x2,y2)

plot(x2,y2,x,y)
x.
 x.
   ↑
{Error: Invalid expression. Check for missing or extra characters.
} 
3*x.
 3*x.
     ↑
{Error: Invalid expression. Check for missing or extra characters.
} 
x.*3

ans =

  Columns 1 through 12

  -18.0000  -17.9700  -17.9400  -17.9100  -17.8800  -17.8500  -17.8200  -17.7900  -17.7600  -17.7300  -17.7000  -17.6700

  Columns 13 through 24

  -17.6400  -17.6100  -17.5800  -17.5500  -17.5200  -17.4900  -17.4600  -17.4300  -17.4000  -17.3700  -17.3400  -17.3100

  Columns 25 through 36

  -17.2800  -17.2500  -17.2200  -17.1900  -17.1600  -17.1300  -17.1000  -17.0700  -17.0400  -17.0100  -16.9800  -16.9500

  Columns 37 through 48

  -16.9200  -16.8900  -16.8600  -16.8300  -16.8000  -16.7700  -16.7400  -16.7100  -16.6800  -16.6500  -16.6200  -16.5900

  Columns 49 through 60

  -16.5600  -16.5300  -16.5000  -16.4700  -16.4400  -16.4100  -16.3800  -16.3500  -16.3200  -16.2900  -16.2600  -16.2300

  Columns 61 through 72

  -16.2000  -16.1700  -16.1400  -16.1100  -16.0800  -16.0500  -16.0200  -15.9900  -15.9600  -15.9300  -15.9000  -15.8700

  Columns 73 through 84

  -15.8400  -15.8100  -15.7800  -15.7500  -15.7200  -15.6900  -15.6600  -15.6300  -15.6000  -15.5700  -15.5400  -15.5100

  Columns 85 through 96

  -15.4800  -15.4500  -15.4200  -15.3900  -15.3600  -15.3300  -15.3000  -15.2700  -15.2400  -15.2100  -15.1800  -15.1500

  Columns 97 through 108

  -15.1200  -15.0900  -15.0600  -15.0300  -15.0000  -14.9700  -14.9400  -14.9100  -14.8800  -14.8500  -14.8200  -14.7900

  Columns 109 through 120

  -14.7600  -14.7300  -14.7000  -14.6700  -14.6400  -14.6100  -14.5800  -14.5500  -14.5200  -14.4900  -14.4600  -14.4300

  Columns 121 through 132

  -14.4000  -14.3700  -14.3400  -14.3100  -14.2800  -14.2500  -14.2200  -14.1900  -14.1600  -14.1300  -14.1000  -14.0700

  Columns 133 through 144

  -14.0400  -14.0100  -13.9800  -13.9500  -13.9200  -13.8900  -13.8600  -13.8300  -13.8000  -13.7700  -13.7400  -13.7100

  Columns 145 through 156

  -13.6800  -13.6500  -13.6200  -13.5900  -13.5600  -13.5300  -13.5000  -13.4700  -13.4400  -13.4100  -13.3800  -13.3500

  Columns 157 through 168

  -13.3200  -13.2900  -13.2600  -13.2300  -13.2000  -13.1700  -13.1400  -13.1100  -13.0800  -13.0500  -13.0200  -12.9900

  Columns 169 through 180

  -12.9600  -12.9300  -12.9000  -12.8700  -12.8400  -12.8100  -12.7800  -12.7500  -12.7200  -12.6900  -12.6600  -12.6300

  Columns 181 through 192

  -12.6000  -12.5700  -12.5400  -12.5100  -12.4800  -12.4500  -12.4200  -12.3900  -12.3600  -12.3300  -12.3000  -12.2700

  Columns 193 through 204

  -12.2400  -12.2100  -12.1800  -12.1500  -12.1200  -12.0900  -12.0600  -12.0300  -12.0000  -11.9700  -11.9400  -11.9100

  Columns 205 through 216

  -11.8800  -11.8500  -11.8200  -11.7900  -11.7600  -11.7300  -11.7000  -11.6700  -11.6400  -11.6100  -11.5800  -11.5500

  Columns 217 through 228

  -11.5200  -11.4900  -11.4600  -11.4300  -11.4000  -11.3700  -11.3400  -11.3100  -11.2800  -11.2500  -11.2200  -11.1900

  Columns 229 through 240

  -11.1600  -11.1300  -11.1000  -11.0700  -11.0400  -11.0100  -10.9800  -10.9500  -10.9200  -10.8900  -10.8600  -10.8300

  Columns 241 through 252

  -10.8000  -10.7700  -10.7400  -10.7100  -10.6800  -10.6500  -10.6200  -10.5900  -10.5600  -10.5300  -10.5000  -10.4700

  Columns 253 through 264

  -10.4400  -10.4100  -10.3800  -10.3500  -10.3200  -10.2900  -10.2600  -10.2300  -10.2000  -10.1700  -10.1400  -10.1100

  Columns 265 through 276

  -10.0800  -10.0500  -10.0200   -9.9900   -9.9600   -9.9300   -9.9000   -9.8700   -9.8400   -9.8100   -9.7800   -9.7500

  Columns 277 through 288

   -9.7200   -9.6900   -9.6600   -9.6300   -9.6000   -9.5700   -9.5400   -9.5100   -9.4800   -9.4500   -9.4200   -9.3900

  Columns 289 through 300

   -9.3600   -9.3300   -9.3000   -9.2700   -9.2400   -9.2100   -9.1800   -9.1500   -9.1200   -9.0900   -9.0600   -9.0300

  Columns 301 through 312

   -9.0000   -8.9700   -8.9400   -8.9100   -8.8800   -8.8500   -8.8200   -8.7900   -8.7600   -8.7300   -8.7000   -8.6700

  Columns 313 through 324

   -8.6400   -8.6100   -8.5800   -8.5500   -8.5200   -8.4900   -8.4600   -8.4300   -8.4000   -8.3700   -8.3400   -8.3100

  Columns 325 through 336

   -8.2800   -8.2500   -8.2200   -8.1900   -8.1600   -8.1300   -8.1000   -8.0700   -8.0400   -8.0100   -7.9800   -7.9500

  Columns 337 through 348

   -7.9200   -7.8900   -7.8600   -7.8300   -7.8000   -7.7700   -7.7400   -7.7100   -7.6800   -7.6500   -7.6200   -7.5900

  Columns 349 through 360

   -7.5600   -7.5300   -7.5000   -7.4700   -7.4400   -7.4100   -7.3800   -7.3500   -7.3200   -7.2900   -7.2600   -7.2300

  Columns 361 through 372

   -7.2000   -7.1700   -7.1400   -7.1100   -7.0800   -7.0500   -7.0200   -6.9900   -6.9600   -6.9300   -6.9000   -6.8700

  Columns 373 through 384

   -6.8400   -6.8100   -6.7800   -6.7500   -6.7200   -6.6900   -6.6600   -6.6300   -6.6000   -6.5700   -6.5400   -6.5100

  Columns 385 through 396

   -6.4800   -6.4500   -6.4200   -6.3900   -6.3600   -6.3300   -6.3000   -6.2700   -6.2400   -6.2100   -6.1800   -6.1500

  Columns 397 through 408

   -6.1200   -6.0900   -6.0600   -6.0300   -6.0000   -5.9700   -5.9400   -5.9100   -5.8800   -5.8500   -5.8200   -5.7900

  Columns 409 through 420

   -5.7600   -5.7300   -5.7000   -5.6700   -5.6400   -5.6100   -5.5800   -5.5500   -5.5200   -5.4900   -5.4600   -5.4300

  Columns 421 through 432

   -5.4000   -5.3700   -5.3400   -5.3100   -5.2800   -5.2500   -5.2200   -5.1900   -5.1600   -5.1300   -5.1000   -5.0700

  Columns 433 through 444

   -5.0400   -5.0100   -4.9800   -4.9500   -4.9200   -4.8900   -4.8600   -4.8300   -4.8000   -4.7700   -4.7400   -4.7100

  Columns 445 through 456

   -4.6800   -4.6500   -4.6200   -4.5900   -4.5600   -4.5300   -4.5000   -4.4700   -4.4400   -4.4100   -4.3800   -4.3500

  Columns 457 through 468

   -4.3200   -4.2900   -4.2600   -4.2300   -4.2000   -4.1700   -4.1400   -4.1100   -4.0800   -4.0500   -4.0200   -3.9900

  Columns 469 through 480

   -3.9600   -3.9300   -3.9000   -3.8700   -3.8400   -3.8100   -3.7800   -3.7500   -3.7200   -3.6900   -3.6600   -3.6300

  Columns 481 through 492

   -3.6000   -3.5700   -3.5400   -3.5100   -3.4800   -3.4500   -3.4200   -3.3900   -3.3600   -3.3300   -3.3000   -3.2700

  Columns 493 through 504

   -3.2400   -3.2100   -3.1800   -3.1500   -3.1200   -3.0900   -3.0600   -3.0300   -3.0000   -2.9700   -2.9400   -2.9100

  Columns 505 through 516

   -2.8800   -2.8500   -2.8200   -2.7900   -2.7600   -2.7300   -2.7000   -2.6700   -2.6400   -2.6100   -2.5800   -2.5500

  Columns 517 through 528

   -2.5200   -2.4900   -2.4600   -2.4300   -2.4000   -2.3700   -2.3400   -2.3100   -2.2800   -2.2500   -2.2200   -2.1900

  Columns 529 through 540

   -2.1600   -2.1300   -2.1000   -2.0700   -2.0400   -2.0100   -1.9800   -1.9500   -1.9200   -1.8900   -1.8600   -1.8300

  Columns 541 through 552

   -1.8000   -1.7700   -1.7400   -1.7100   -1.6800   -1.6500   -1.6200   -1.5900   -1.5600   -1.5300   -1.5000   -1.4700

  Columns 553 through 564

   -1.4400   -1.4100   -1.3800   -1.3500   -1.3200   -1.2900   -1.2600   -1.2300   -1.2000   -1.1700   -1.1400   -1.1100

  Columns 565 through 576

   -1.0800   -1.0500   -1.0200   -0.9900   -0.9600   -0.9300   -0.9000   -0.8700   -0.8400   -0.8100   -0.7800   -0.7500

  Columns 577 through 588

   -0.7200   -0.6900   -0.6600   -0.6300   -0.6000   -0.5700   -0.5400   -0.5100   -0.4800   -0.4500   -0.4200   -0.3900

  Columns 589 through 600

   -0.3600   -0.3300   -0.3000   -0.2700   -0.2400   -0.2100   -0.1800   -0.1500   -0.1200   -0.0900   -0.0600   -0.0300

  Columns 601 through 612

         0    0.0300    0.0600    0.0900    0.1200    0.1500    0.1800    0.2100    0.2400    0.2700    0.3000    0.3300

  Columns 613 through 624

    0.3600    0.3900    0.4200    0.4500    0.4800    0.5100    0.5400    0.5700    0.6000    0.6300    0.6600    0.6900

  Columns 625 through 636

    0.7200    0.7500    0.7800    0.8100    0.8400    0.8700    0.9000    0.9300    0.9600    0.9900    1.0200    1.0500

  Columns 637 through 648

    1.0800    1.1100    1.1400    1.1700    1.2000    1.2300    1.2600    1.2900    1.3200    1.3500    1.3800    1.4100

  Columns 649 through 660

    1.4400    1.4700    1.5000    1.5300    1.5600    1.5900    1.6200    1.6500    1.6800    1.7100    1.7400    1.7700

  Columns 661 through 672

    1.8000    1.8300    1.8600    1.8900    1.9200    1.9500    1.9800    2.0100    2.0400    2.0700    2.1000    2.1300

  Columns 673 through 684

    2.1600    2.1900    2.2200    2.2500    2.2800    2.3100    2.3400    2.3700    2.4000    2.4300    2.4600    2.4900

  Columns 685 through 696

    2.5200    2.5500    2.5800    2.6100    2.6400    2.6700    2.7000    2.7300    2.7600    2.7900    2.8200    2.8500

  Columns 697 through 708

    2.8800    2.9100    2.9400    2.9700    3.0000    3.0300    3.0600    3.0900    3.1200    3.1500    3.1800    3.2100

  Columns 709 through 720

    3.2400    3.2700    3.3000    3.3300    3.3600    3.3900    3.4200    3.4500    3.4800    3.5100    3.5400    3.5700

  Columns 721 through 732

    3.6000    3.6300    3.6600    3.6900    3.7200    3.7500    3.7800    3.8100    3.8400    3.8700    3.9000    3.9300

  Columns 733 through 744

    3.9600    3.9900    4.0200    4.0500    4.0800    4.1100    4.1400    4.1700    4.2000    4.2300    4.2600    4.2900

  Columns 745 through 756

    4.3200    4.3500    4.3800    4.4100    4.4400    4.4700    4.5000    4.5300    4.5600    4.5900    4.6200    4.6500

  Columns 757 through 768

    4.6800    4.7100    4.7400    4.7700    4.8000    4.8300    4.8600    4.8900    4.9200    4.9500    4.9800    5.0100

  Columns 769 through 780

    5.0400    5.0700    5.1000    5.1300    5.1600    5.1900    5.2200    5.2500    5.2800    5.3100    5.3400    5.3700

  Columns 781 through 792

    5.4000    5.4300    5.4600    5.4900    5.5200    5.5500    5.5800    5.6100    5.6400    5.6700    5.7000    5.7300

  Columns 793 through 804

    5.7600    5.7900    5.8200    5.8500    5.8800    5.9100    5.9400    5.9700    6.0000    6.0300    6.0600    6.0900

  Columns 805 through 816

    6.1200    6.1500    6.1800    6.2100    6.2400    6.2700    6.3000    6.3300    6.3600    6.3900    6.4200    6.4500

  Columns 817 through 828

    6.4800    6.5100    6.5400    6.5700    6.6000    6.6300    6.6600    6.6900    6.7200    6.7500    6.7800    6.8100

  Columns 829 through 840

    6.8400    6.8700    6.9000    6.9300    6.9600    6.9900    7.0200    7.0500    7.0800    7.1100    7.1400    7.1700

  Columns 841 through 852

    7.2000    7.2300    7.2600    7.2900    7.3200    7.3500    7.3800    7.4100    7.4400    7.4700    7.5000    7.5300

  Columns 853 through 864

    7.5600    7.5900    7.6200    7.6500    7.6800    7.7100    7.7400    7.7700    7.8000    7.8300    7.8600    7.8900

  Columns 865 through 876

    7.9200    7.9500    7.9800    8.0100    8.0400    8.0700    8.1000    8.1300    8.1600    8.1900    8.2200    8.2500

  Columns 877 through 888

    8.2800    8.3100    8.3400    8.3700    8.4000    8.4300    8.4600    8.4900    8.5200    8.5500    8.5800    8.6100

  Columns 889 through 900

    8.6400    8.6700    8.7000    8.7300    8.7600    8.7900    8.8200    8.8500    8.8800    8.9100    8.9400    8.9700

  Columns 901 through 912

    9.0000    9.0300    9.0600    9.0900    9.1200    9.1500    9.1800    9.2100    9.2400    9.2700    9.3000    9.3300

  Columns 913 through 924

    9.3600    9.3900    9.4200    9.4500    9.4800    9.5100    9.5400    9.5700    9.6000    9.6300    9.6600    9.6900

  Columns 925 through 936

    9.7200    9.7500    9.7800    9.8100    9.8400    9.8700    9.9000    9.9300    9.9600    9.9900   10.0200   10.0500

  Columns 937 through 948

   10.0800   10.1100   10.1400   10.1700   10.2000   10.2300   10.2600   10.2900   10.3200   10.3500   10.3800   10.4100

  Columns 949 through 960

   10.4400   10.4700   10.5000   10.5300   10.5600   10.5900   10.6200   10.6500   10.6800   10.7100   10.7400   10.7700

  Columns 961 through 972

   10.8000   10.8300   10.8600   10.8900   10.9200   10.9500   10.9800   11.0100   11.0400   11.0700   11.1000   11.1300

  Columns 973 through 984

   11.1600   11.1900   11.2200   11.2500   11.2800   11.3100   11.3400   11.3700   11.4000   11.4300   11.4600   11.4900

  Columns 985 through 996

   11.5200   11.5500   11.5800   11.6100   11.6400   11.6700   11.7000   11.7300   11.7600   11.7900   11.8200   11.8500

  Columns 997 through 1008

   11.8800   11.9100   11.9400   11.9700   12.0000   12.0300   12.0600   12.0900   12.1200   12.1500   12.1800   12.2100

  Columns 1009 through 1020

   12.2400   12.2700   12.3000   12.3300   12.3600   12.3900   12.4200   12.4500   12.4800   12.5100   12.5400   12.5700

  Columns 1021 through 1032

   12.6000   12.6300   12.6600   12.6900   12.7200   12.7500   12.7800   12.8100   12.8400   12.8700   12.9000   12.9300

  Columns 1033 through 1044

   12.9600   12.9900   13.0200   13.0500   13.0800   13.1100   13.1400   13.1700   13.2000   13.2300   13.2600   13.2900

  Columns 1045 through 1056

   13.3200   13.3500   13.3800   13.4100   13.4400   13.4700   13.5000   13.5300   13.5600   13.5900   13.6200   13.6500

  Columns 1057 through 1068

   13.6800   13.7100   13.7400   13.7700   13.8000   13.8300   13.8600   13.8900   13.9200   13.9500   13.9800   14.0100

  Columns 1069 through 1080

   14.0400   14.0700   14.1000   14.1300   14.1600   14.1900   14.2200   14.2500   14.2800   14.3100   14.3400   14.3700

  Columns 1081 through 1092

   14.4000   14.4300   14.4600   14.4900   14.5200   14.5500   14.5800   14.6100   14.6400   14.6700   14.7000   14.7300

  Columns 1093 through 1104

   14.7600   14.7900   14.8200   14.8500   14.8800   14.9100   14.9400   14.9700   15.0000   15.0300   15.0600   15.0900

  Columns 1105 through 1116

   15.1200   15.1500   15.1800   15.2100   15.2400   15.2700   15.3000   15.3300   15.3600   15.3900   15.4200   15.4500

  Columns 1117 through 1128

   15.4800   15.5100   15.5400   15.5700   15.6000   15.6300   15.6600   15.6900   15.7200   15.7500   15.7800   15.8100

  Columns 1129 through 1140

   15.8400   15.8700   15.9000   15.9300   15.9600   15.9900   16.0200   16.0500   16.0800   16.1100   16.1400   16.1700

  Columns 1141 through 1152

   16.2000   16.2300   16.2600   16.2900   16.3200   16.3500   16.3800   16.4100   16.4400   16.4700   16.5000   16.5300

  Columns 1153 through 1164

   16.5600   16.5900   16.6200   16.6500   16.6800   16.7100   16.7400   16.7700   16.8000   16.8300   16.8600   16.8900

  Columns 1165 through 1176

   16.9200   16.9500   16.9800   17.0100   17.0400   17.0700   17.1000   17.1300   17.1600   17.1900   17.2200   17.2500

  Columns 1177 through 1188

   17.2800   17.3100   17.3400   17.3700   17.4000   17.4300   17.4600   17.4900   17.5200   17.5500   17.5800   17.6100

  Columns 1189 through 1200

   17.6400   17.6700   17.7000   17.7300   17.7600   17.7900   17.8200   17.8500   17.8800   17.9100   17.9400   17.9700

  Column 1201

   18.0000

x = -6:2:6;
x.*
 x.*
    ↑
{Error: Invalid expression. Check for missing or extra characters.
} 
x.*3

ans =

   -18   -12    -6     0     6    12    18

y = C(1)*x.^2 + x.*C(2) + C(3);
plot(x,y)
plot(x,y,'g',x2,y2,':')
plot(x,y,'g',x2,y2,'o')
plot(x,y,'og:',x2,y2,'og:')
plot(x,y,'g:',x2,y2,'g:')
help plot
 <strong>plot</strong>   Linear plot. 
    <strong>plot</strong>(X,Y) plots vector Y versus vector X. If X or Y is a matrix,
    then the vector is plotted versus the rows or columns of the matrix,
    whichever line up.  If X is a scalar and Y is a vector, disconnected
    line objects are created and plotted as discrete points vertically at
    X.
 
    <strong>plot</strong>(Y) plots the columns of Y versus their index.
    If Y is complex, <strong>plot</strong>(Y) is equivalent to <strong>plot</strong>(real(Y),imag(Y)).
    In all other uses of <strong>plot</strong>, the imaginary part is ignored.
 
    Various line types, plot symbols and colors may be obtained with
    <strong>plot</strong>(X,Y,S) where S is a character string made from one element
    from any or all the following 3 columns:
 
           b     blue          .     point              -     solid
           g     green         o     circle             :     dotted
           r     red           x     x-mark             -.    dashdot 
           c     cyan          +     plus               --    dashed   
           m     magenta       *     star             (none)  no line
           y     yellow        s     square
           k     black         d     diamond
           w     white         v     triangle (down)
                               ^     triangle (up)
                               <     triangle (left)
                               >     triangle (right)
                               p     pentagram
                               h     hexagram
                          
    For example, <strong>plot</strong>(X,Y,'c+:') plots a cyan dotted line with a plus 
    at each data point; <strong>plot</strong>(X,Y,'bd') plots blue diamond at each data 
    point but does not draw any line.
 
    <strong>plot</strong>(X1,Y1,S1,X2,Y2,S2,X3,Y3,S3,...) combines the plots defined by
    the (X,Y,S) triples, where the X's and Y's are vectors or matrices 
    and the S's are strings.  
 
    For example, <strong>plot</strong>(X,Y,'y-',X,Y,'go') plots the data twice, with a
    solid yellow line interpolating green circles at the data points.
 
    The <strong>plot</strong> command, if no color is specified, makes automatic use of
    the colors specified by the axes ColorOrder property.  By default,
    <strong>plot</strong> cycles through the colors in the ColorOrder property.  For
    monochrome systems, <strong>plot</strong> cycles over the axes LineStyleOrder property.
 
    Note that RGB colors in the ColorOrder property may differ from
    similarly-named colors in the (X,Y,S) triples.  For example, the 
    second axes ColorOrder property is medium green with RGB [0 .5 0],
    while <strong>plot</strong>(X,Y,'g') plots a green line with RGB [0 1 0].
 
    If you do not specify a marker type, <strong>plot</strong> uses no marker. 
    If you do not specify a line style, <strong>plot</strong> uses a solid line.
 
    <strong>plot</strong>(AX,...) plots into the axes with handle AX.
 
    <strong>plot</strong> returns a column vector of handles to lineseries objects, one
    handle per plotted line. 
 
    The X,Y pairs, or X,Y,S triples, can be followed by 
    parameter/value pairs to specify additional properties 
    of the lines. For example, <strong>plot</strong>(X,Y,'LineWidth',2,'Color',[.6 0 0]) 
    will create a plot with a dark red line width of 2 points.
 
    Example
       x = -pi:pi/10:pi;
       y = tan(sin(x)) - sin(tan(x));
       plot(x,y,'--rs','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)
 
    See also <a href="matlab:help plottools">plottools</a>, <a href="matlab:help semilogx">semilogx</a>, <a href="matlab:help semilogy">semilogy</a>, <a href="matlab:help loglog">loglog</a>, <a href="matlab:help plotyy">plotyy</a>, <a href="matlab:help plot3">plot3</a>, <a href="matlab:help grid">grid</a>,
    <a href="matlab:help title">title</a>, <a href="matlab:help xlabel">xlabel</a>, <a href="matlab:help ylabel">ylabel</a>, <a href="matlab:help axis">axis</a>, <a href="matlab:help axes">axes</a>, <a href="matlab:help hold">hold</a>, <a href="matlab:help legend">legend</a>, <a href="matlab:help subplot">subplot</a>, <a href="matlab:help scatter">scatter</a>.

    <a href="matlab:doc plot">Reference page for plot</a>
    <a href="matlab:matlab.internal.language.introspective.overloads.displayOverloads('plot')">Other functions named plot</a>

plot(x,y,'bh',x2,y2,'g:')
plot(x,y,'bd',x2,y2,'g')
plot(x,y,'bd-.',x2,y2,'g-')
plot(x,y,'bd-.',x2,y2,'r*-')
plot(x,y,'bd-.',x2,y2,'r--')
plot(x,y,'bd-.',x2,y2,'r-')
plot(x,y,'b+-.',x2,y2,'r-')
plot(x,y,'bh-.',x2,y2,'r-')
stem(x,y)
stairs(x,y)
bar(x,y)
plot(x,y)
Exception in thread "AWT-EventQueue-0" java.lang.NullPointerException
	at com.mathworks.page.plottool.propertyinspectormanager.PropertyInspectorManager$3.run(PropertyInspectorManager.java:203)
	at java.awt.event.InvocationEvent.dispatch(InvocationEvent.java:311)
	at java.awt.EventQueue.dispatchEventImpl(EventQueue.java:756)
	at java.awt.EventQueue.access$500(EventQueue.java:97)
	at java.awt.EventQueue$3.run(EventQueue.java:709)
	at java.awt.EventQueue$3.run(EventQueue.java:703)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.security.ProtectionDomain$JavaSecurityAccessImpl.doIntersectionPrivilege(ProtectionDomain.java:80)
	at java.awt.EventQueue.dispatchEvent(EventQueue.java:726)
	at java.awt.EventDispatchThread.pumpOneEventForFilters(EventDispatchThread.java:201)
	at java.awt.EventDispatchThread.pumpEventsForFilter(EventDispatchThread.java:116)
	at java.awt.EventDispatchThread.pumpEventsForHierarchy(EventDispatchThread.java:105)
	at java.awt.EventDispatchThread.pumpEvents(EventDispatchThread.java:101)
	at java.awt.EventDispatchThread.pumpEvents(EventDispatchThread.java:93)
	at java.awt.EventDispatchThread.run(EventDispatchThread.java:82)
plot(x,y)
my_plot(x,y)
plot(x,y)
close all
plot(x2,y2)
hold on
bars(x,y)
{Undefined function or variable 'bars'.
} 
bar(x,y)
stem(x,y,'r')
hold off
stem(x,y,'r')
stairs(x,y,'b')
hold on
stem(x,y,'r')
hold off
xlabel(''x axis)
 xlabel(''x axis)
          ↑
{Error: Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or other syntax error. To
construct matrices, use brackets instead of parentheses.
} 
xlabel('x axis')
ylabel('U,V')
title('My graph')
grid
legend('plot', 'stairs', 'stem')
[Warning: Ignoring extra legend entries.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>set_children_and_strings', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 646)" style="font-weight:bold">legend>set_children_and_strings</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',646,0)">line 646</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 316)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',316,0)">line 316</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',259,0)">line 259</a>)] 
legend('stairs', 'stem')
gtext('\leftarrow my first graph')
gtext('\alpha \omega \Omega')
gtext('U_{max} U^{min}')
edit
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous
Lissajous_fun(1,1)
Lissajous_fun(1,10000)
Lissajous_fun(1,10000)
Lissajous_fun_anim(1,1)
Lissajous_fun_anim(1,10000)
Lissajous_fun_anim(1,2)
Lissajous_fun_anim(1,2)
Lissajous_fun_anim(1,2)
Lissajous_fun_anim(1,10000)
Lissajous_fun_anim(1,10000)
Lissajous_fun_anim(1,10000)
Lissajous_fun_anim(1,2)
Lissajous_fun_anim(1,2)
<a href="matlab: opentoline('/home/user/lecture_1/Lissajous_fun_anim.m',11,1)">11  </a>end
if system_dependent('IsDebugMode')==1, dbquit; end
Lissajous_fun_anim(1,10)
Lissajous_fun_anim(1,100)
Lissajous_fun_anim(1,1000)
Lissajous_fun_anim(1,10000)
diary off
