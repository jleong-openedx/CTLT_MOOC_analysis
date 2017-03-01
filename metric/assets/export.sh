cd /home/justinleong/Desktop/CTLT_MOOC_analysis/metric/assets
for file in *.ipynb; do
  jupyter nbconvert --execute $file --ExecutePreprocessor.kernel_name=python --ExecutePreprocessor.timeout=-1
  mv ${file%.*}.html './assets'
done
