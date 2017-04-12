cd /home/yourdirectory/CTLT_MOOC_analysis/metric/assets
for file in *.ipynb; do
  /home/yourdirectory/anaconda2/bin/jupyter nbconvert --execute $file --ExecutePreprocessor.kernel_name=python --ExecutePreprocessor.timeout=-1 --ExecutePreprocessor.allow_errors=True
  mv ${file%.*}.html './assets'
done
