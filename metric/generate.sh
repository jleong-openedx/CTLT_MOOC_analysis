cd /home/yourdirectory/CTLT_MOOC_analysis/metric/

/home/yourdirectory/anaconda2/bin/jupyter nbconvert --execute multi_courses_all.ipynb --ExecutePreprocessor.kernel_name=python --ExecutePreprocessor.timeout=-1 --ExecutePreprocessor.allow_errors=True

/home/yourdirectory/anaconda2/bin/jupyter nbconvert --execute multi_courses_current.ipynb --ExecutePreprocessor.kernel_name=python --ExecutePreprocessor.timeout=-1 --ExecutePreprocessor.allow_errors=True

COURSE_ARRAY=(
    'UBC__CPEN221__2016W1'
    'UBC__CPSC110__2015W1'
    'UBC__CPSC110__2016S'
    'UBC__CPSC110__2016W1'
    'UBC__ELEC463_101__2016W1'
    'UBC__IndEduSI1__2015_S1'
    'UBC__PHYS100_98A__2016SA'
    'UBC__POLI377APSC377__2016W1'
    'UBC__WOOD491_201__2016W2'    
    'UBCx__Biobank1x__1T2017'
    'UBCx__China300_1x__1T2016'    
    'UBCx__China300_1x__3T2015'    
    'UBCx__China300_2x__1T2016'
    'UBCx__China300_2x__3T2015'    
    'UBCx__China300x__3T2014'    
    'UBCx__Climate1x__1T2016'
    'UBCx__Climate1x__2T2016'
    'UBCx__Climate101x__3T2015'
    'UBCx__CW1_1x__1T2016'    
    'UBCx__CW1_1x__3T2016'    
    'UBCx__CW1_2x__1T2016'
    'UBCx__CW1_2x__3T2016'    
    'UBCx__FamBiz1x__1T2017'
    'UBCx__Forest222x__1T2015'    
    'UBCx__IndEdu200x__1T2015'
    'UBCx__IndEdu200x__3T2015'    
    'UBCx__ITSx__1T2016'    
    'UBCx__ITSx__2T2015'
    'UBCx__ITSx__3T2016'    
    'UBCx__Marketing1x__3T2015'    
    'UBCx__Marketing5501x__2T2015'    
    'UBCx__Phot1x__1T2016'    
    'UBCx__Phot1x__2T2015'    
    'UBCx__Phot1x__3T2015'    
    'UBCx__Phot1x__3T2016'        
    'UBCx__PHYS100__2015W1'        
    'UBCx__PSYC_1x__3T2016'    
    'UBCx__PSYC_2x__3T2016'    
    'UBCx__PSYC_3x__3T2016'    
    'UBCx__PSYC_4x__1T2017'    
    'UBCx__PSYC_5x__1T2017'            
    'UBCx__SPD1x__1T2016'    
    'UBCx__SPD1x__2T2015'    
    'UBCx__SPD1x__2T2016'    
    'UBCx__SPD2x__2T2015'    
    'UBCx__SPD2x__2T2016'        
    'UBCx__SPD3x__2T2016'    
    'UBCx__UseGen_1x__1T2016'    
    'UBCx__UseGen_1x__3T2015'    
    'UBCx__UseGen_2x__1T2016'    
    'UBCx__UseGen_2x__3T2015'    
    'UBCx__Water201x_2__2T2015'    
    'UBCx__Water201x__3T2014'
)

for arraycourse in "${COURSE_ARRAY[@]}"
do
  export current_course=$arraycourse
  /home/yourdirectory/anaconda2/bin/jupyter nbconvert --execute $current_course coursepage.ipynb --ExecutePreprocessor.kernel_name=python
  mv coursepage.html $current_course.html
done
