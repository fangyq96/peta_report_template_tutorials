#!/bin/sh
#Email:liujilong@genomics.cn
#Description:
#Edit History:
#2020-04-09 17:05:10  File created.
# $1 is the ipynb model file
# $2 is the mutation file path
papermill model.ipynb -  -p  mutation data_mutation.txt |jupyter-nbconvert --stdin --stdout --TagRemovePreprocessor.enabled=True  --TagRemovePreprocessor.remove_cell_tags="['parameters','hide','injected-parameters']" --TagRemovePreprocessor.remove_input_tags="['output']"  --to html 1>output.html
