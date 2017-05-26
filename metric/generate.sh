cd /home/yourdirectory/CTLT_MOOC_analysis/metric/

/home/yourdirectory/anaconda2/bin/jupyter nbconvert --execute multi_courses_all.ipynb --ExecutePreprocessor.kernel_name=python --ExecutePreprocessor.timeout=-1 --ExecutePreprocessor.allow_errors=True

/home/yourdirectory/anaconda2/bin/jupyter nbconvert --execute multi_courses_current.ipynb --ExecutePreprocessor.kernel_name=python --ExecutePreprocessor.timeout=-1 --ExecutePreprocessor.allow_errors=True

COURSE_ARRAY=(
    'UBCx__Angus01__2015'
    'UBCx__AS1__2014_W1'
    'UBCx__ASTR310__2016_W1'
    'UBCx__ASTR311__2016_W1_99A'
    'UBCx__ASTR311__2016_W1_99C'
    'UBCx__ASTR333__2016_W1'
    'UBCx__BIOB01__2015W2'
    'UBCx__Biobank1x__1T2017'
    'UBCx__Biobank1x__2T2017'
    'UBCx__BlendedLearning101__2015'
    'UBCx__China300_1x__1T2016'
    'UBCx__China300_1x__3T2015'
    'UBCx__China300_1x__3T2016'
    'UBCx__China300_2x__1T2016'
    'UBCx__China300_2x__3T2015'
    'UBCx__China300_2x__3T2016'
    'UBCx__China300x__3T2014'
    'UBCx__CIVL498A__2015W1'
    'UBCx__Climate101x__3T2015'
    'UBCx__Climate1x__1T2016'
    'UBCx__Climate1x__2T2016'
    'UBCx__Climate1x__2T2017'
    'UBCx__Climate1x__3T2016'
    'UBCx__CLSx__2015'
    'UBCx__CPEN221__2015W1'
    'UBCx__CPSC1101__2014W1'
    'UBCx__CW1_1x__1T2016'
    'UBCx__CW1_1x__1T2017'
    'UBCx__CW1_1x__3T2016'
    'UBCx__CW1_1x__3T2017'
    'UBCx__CW1_2x__1T2016'
    'UBCx__CW1_2x__1T2017'
    'UBCx__CW1_2x__3T2016'
    'UBCx__CW1_3x__1T2017'
    'UBCx__DBSB1__2014'
    'UBCx__DHRM100__2015_T1'
    'UBCx__EcodesignX__1T2017'
    'UBCx__EcodesignX__2T2017'    
    'UBCx__EECE259__2015'
    'UBCx__EECE311Sec001__2015W1'
    'UBCx__ELEC311_101__2015W1'
    'UBCx__ETEC565a_b__2015'
    'UBCx__ETEC565a_b_Donna_Marie__2015'
    'UBCx__ETEC565a_b_Grant__2015'
    'UBCx__ETEC565a_b_Laurie__2015'
    'UBCx__ETEC565a_b_Sylvain__2015'
    'UBCx__ETEC565ab_Harbor__2015'
    'UBCx__ETEC580stu__2015'
    'UBCx__FamBiz1x__1T2017'
    'UBCx__FamBiz1x__2016'
    'UBCx__FamEnter1x__2016'
    'UBCx__Forest222x__1T2015'
    'UBCx__Forest222x__2014_W2'
    'UBCx__Forestx__2015'
    'UBCx__Genetics101x__SB1'    
    'UBCx__HtC1x__2T2017'
    'UBCx__HtC2x__2T2017'
    'UBCx__HtC_CDx__2T2017'
    'UBCx__HtC_SDx__2T2017'
    'UBCx__IndEdu200x__1T2015'
    'UBCx__IndEdu200x__1T2017'
    'UBCx__IndEdu200x__3T2015'
    'UBCx__IndEdu200x__3T2017'
    'UBCx__ISB1__2015'
    'UBCx__ITSx__1T2016'
    'UBCx__ITSx__1T2017'
    'UBCx__ITSx__2015'
    'UBCx__ITSx__2T2015'
    'UBCx__ITSx__3T2016'    
    'UBCx__LFS1__2014_W1'
    'UBCx__LIBR_ITL__2015'
    'UBCx__LRS1__2014WT1'
    'UBCx__MacBeth01__2015'
    'UBCx__Marketing1x__3T2015'
    'UBCx__Marketing2x__June2015'
    'UBCx__Marketing5501x__2015preview'
    'UBCx__Marketing5501x__2T2015'
    'UBCx__Marketing5502x__3T2015'
    'UBCx__Marketing5503x__3T2015'
    'UBCx__Marketingx__1002015'
    'UBCx__MINE101__2015_01'
    'UBCx__MINE480__2016_W1'
    'UBCx__MS101__2015_T1'
    'UBCx__MSB1__2014'
    'UBCx__NJR101__2015W2'
    'UBCx__PAW2_0__2016'
    'UBCx__Ph100v3__2015'
    'UBCx__Phot1x__1T2016'
    'UBCx__Phot1x__1T2017'
    'UBCx__Phot1x__2T2015'
    'UBCx__Phot1x__2T2017'
    'UBCx__Phot1x__3T2015'
    'UBCx__Phot1x__3T2016'
    'UBCx__Photonics100__2014T2'
    'UBCx__Photonics101__P1'
    'UBCx__PHYS100__2015W1'
    'UBCx__POLI360A_003__2015W1'
    'UBCx__POLI377APSC377__2015W1'
    'UBCx__PS1x__2014_W1'
    'UBCx__PSYC101__2015W1'
    'UBCx__PSYC101Sec003__2015W1'
    'UBCx__PSYC101Sec003n__2015W1'
    'UBCx__PSYC101Sec004__2015W1'
    'UBCx__PSYC101Sec004n__2015W1'
    'UBCx__PSYC101Sec005__2015W1'
    'UBCx__PSYC101Sec005n__2015W1'
    'UBCx__PSYC102Sec004__2015W2'
    'UBCx__PSYC102Sec004n__2015W2'
    'UBCx__PSYC_0x__2T2017'
    'UBCx__PSYC_1x__2T2017'
    'UBCx__PSYC_1x__3T2016'
    'UBCx__PSYC_2x__2T2017'
    'UBCx__PSYC_2x__3T2016'
    'UBCx__PSYC_3x__2T2017'
    'UBCx__PSYC_3x__3T2016'
    'UBCx__PSYC_4x__1T2017'
    'UBCx__PSYC_4x__2T2017'
    'UBCx__PSYC_5x__1T2017'
    'UBCx__PSYC_5x__2T2017'
    'UBCx__PSYC_6x__1T2017'
    'UBCx__PSYC_6x__2T2017'
    'UBCx__PsycTLEF__2015'
    'UBCx__PSYCx__2015'
    'UBCx__ReligionX__1T2017'
    'UBCx__ReligionX__3T2017' 
    'UBCx__S01__2015_03'
    'UBCx__Sens01__2015_03'
    'UBCx__SoftConst1x__3T2017'
    'UBCx__SoftConst2x__3T2017'
    'UBCx__SoftEng1x__1T2018'
    'UBCx__SoftEngPrjx__1T2018'
    'UBCx__SPD1__2016T2'
    'UBCx__SPD1x__1T2016'
    'UBCx__SPD1x__2T2015'
    'UBCx__SPD1x__2T2016'
    'UBCx__SPD2x__2T2015'
    'UBCx__SPD2x__2T2016'
    'UBCx__SPD3x__2T2016'
    'UBCx__SPD3x__3T2015'
    'UBCx__TOC01__2015W2'
    'UBCx__URO__2015'
    'UBCx__UsefulGeneticsx__2015W1'
    'UBCx__UseGen_1x__1T2016'
    'UBCx__UseGen_1x__3T2015'
    'UBCx__UseGen_2x__1T2016'
    'UBCx__UseGen_2x__3T2015'
    'UBCx__Water201x_2__2T2015'
    'UBCx__Water201x__3T2014'   
    'UBC__ADRR_01__2017'
    'UBC__APFN0001__2015W2'
    'UBC__APFN0002__2015W2'
    'UBC__APFN0003__2015W2'
    'UBC__APFN0004__2015W2'
    'UBC__APFN0005__2015W2'
    'UBC__APFN0006__2015W2'
    'UBC__APFN_Cafe__2015W2'
    'UBC__ASTR311_98A__2017SA'
    'UBC__ASTR311_98S__2016S'    
    'UBC__CIVL200_98A__2016SA'
    'UBC__CIVL200__2015WA'
    'UBC__CIVL200__2017_SA'
    'UBC__CIVL202__2016W'
    'UBC__CIVL498_598__2016W'
    'UBC__COMM465_102__2016W1'
    'UBC__CPEN211__2015T1'
    'UBC__CPEN211__2016W1'
    'UBC__CPEN221__2016W1'
    'UBC__CPEN411__2015W1'
    'UBC__CPINTRO__2016S'
    'UBC__CPSC100__2016W1'
    'UBC__CPSC103_101__2016W1'
    'UBC__CPSC103_201__2016W2'
    'UBC__CPSC103_V01__2017S'
    'UBC__CPSC110_101__2016W2'
    'UBC__CPSC110__2015W1'
    'UBC__CPSC110__2015W2'
    'UBC__CPSC110__2016S'
    'UBC__CPSC110__2016W1'
    'UBC__CPSC210_101__2016W1'
    'UBC__CPSC210__2015W2'
    'UBC__CPSC210__2016_S2'
    'UBC__CPSC210__2016W1'
    'UBC__CPSC210__2016W2'
    'UBC__CPSC213__2016W2'
    'UBC__CPSC313_202__2016W2'
    'UBC__CPSC314_101__2016W1'
    'UBC__CPSC317_001__2016W1'
    'UBC__CPSC317_201__2016W2'
    'UBC__CPSC421__2016'
    'UBC__CRWR200__2017'
    'UBC__CRWR509K_003__2016W1'
    'UBC__CS_HCI_101__2015_T2'
    'UBC__DHRMC101__2015W2'
    'UBC__DHRMC101__2016W1'
    'UBC__DHRMC101_DFP__2016_W1'
    'UBC__EECE476__2014_T2'    
    'UBC__ELEC311_101__2016W1'
    'UBC__ELEC413_201__2015W2'
    'UBC__ELEC463_101__2016W1'
    'UBC__ELEC463_201__2015W2'
    'UBC__EOSC329_101__2016_W1'
    'UBC__ESEOW01__2016'
    'UBC__ET101__2017T1'
    'UBC__ETEC533__2016W2'
    'UBC__ETEC565__2016'
    'UBC__ETEC565A1__2016W'
    'UBC__ETEC565A2__2016'
    'UBC__ETEC565A_64B__2016'
    'UBC__FGL9__2016_S2'
    'UBC__FIPR101_001__2016W1'
    'UBC__FIPR233_001__2016W1'
    'UBC__FIPR436A_001__2016W1'
    'UBC__FNH300_001__2016W1'
    'UBC__FSP02__2015W2'
    'UBC__FSP03__2015W2'
    'UBC__FSP04__2015W2'
    'UBC__FSP05__2015W2'
    'UBC__FSP06__2015W2'
    'UBC__FSP07__2016'
    'UBC__FSP08__2016'
    'UBC__FSP09__2016W1'
    'UBC__FSP10__2016'
    'UBC__FSP11__2016W2'
    'UBC__FSP_01__2015W2'
    'UBC__FTEJA01__2016S'    
    'UBC__HIST346_001__2016W1_2'
    'UBC__HIST388_201__2016W2'
    'UBC__hub001__2016'
    'UBC__HUB002__2016'
    'UBC__HUB003__2016'
    'UBC__HUB004__2016'
    'UBC__HUB005__2016'
    'UBC__IHHS101__2016'
    'UBC__IHHS101__2016W2'
    'UBC__IHHS101__2017W'
    'UBC__IL101__2016'
    'UBC__IndEduSI1__2015_S1'
    'UBC__INMR101_001_2__2016W2'
    'UBC__INMR101_001__2016W2'
    'UBC__KNI01__2016'
    'UBC__LAW281_001__2016_T1'
    'UBC__LAW281_002__2016_T1'
    'UBC__Law281__2015_T1'
    'UBC__LAW281__2016_W1'
    'UBC__LAW430_001__2016_T2'
    'UBC__LAW430_001__2016W2'
    'UBC__LAW503d__2016_W2'
    'UBC__LING201_001__2016W2'
    'UBC__LING300__2016W'
    'UBC__LLED200__2016'
    'UBC__LLED200__2016W1'
    'UBC__LLED200W1__2016W1'
    'UBC__LLED220__2016W1'
    'UBC__LVCT__2016W'
    'UBC__MATH210__2015W2'
    'UBC__MD101__2016_W1'
    'UBC__MET565A__2015S'
    'UBC__MIDW325_001__2016W2'
    'UBC__MINE480__2016_W2'
    'UBC__MRDP__2016'
    'UBC__PHRM100_001__2016W1'
    'UBC__PHTH545_001__2016W1'    
    'UBC__PHYS1002015W2__2015W2'
    'UBC__PHYS1002016W1__2016W1'
    'UBC__PHYS100_103__2016W1'
    'UBC__PHYS100_98A__2016SA'
    'UBC__PHYS100_98C__2016'
    'UBC__PHYS546__2015W1'
    'UBC__Phys_100v3__2015'
    'UBC__POLI377__2016W1'
    'UBC__POLI377APSC377__2016W1'
    'UBC__PSYC101_003__2016W1'
    'UBC__PSYC101_004__2016W1'
    'UBC__PSYC_2x__2016_2017'
    'UBC__R101__2014W2'
    'UBC__RCG01__2016W1'
    'UBC__RDP__2016W'
    'UBC__RSOT545_001__2016W1_2'
    'UBC__SB101__2014S2'
    'UBC__SFL_Workshop__2016W1'
    'UBC__SLS01__2015'    
    'UBC__SOIL515_001__2016_W1'
    'UBC__SPD2__2016T1'
    'UBC__SPPH409__2017W'
    'UBC__SPPH481A__2016Summer'
    'UBC__SWE__2017'
    'UBC__TBLE101__2016W2'
    'UBC__TLEFVanLibInstructors__2016W1'
    'UBC__TLEFVanLibLibrarians__2016W1'
    'UBC__VISA_110_002__2015W2'
    'UBC__WCode__2016'
    'UBC__WOOD491_201__2016W2'
)

for arraycourse in "${COURSE_ARRAY[@]}"
do
  export current_course=$arraycourse
  /home/yourdirectory/anaconda2/bin/jupyter nbconvert --execute $current_course coursepage.ipynb --ExecutePreprocessor.kernel_name=python
  mv coursepage.html $current_course.html
done