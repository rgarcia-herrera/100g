for i in $(ls -d /scratch/inmegen/100g/wg_GATK/perIndividuoGATK/*); do sample=$(echo $i | rev | cut -d "/" -f 1 | rev);  echo  "bsub -o out-$sample -e err-$sample -J $sample \"cd  /scratch/inmegen/100g/variants-statistics; awk 'BEGIN {FS=\\\"\\\t\\\"}; {a=\\\$4}{b=\\\$5}{if (a == \\\"A\\\" || a == \\\"C\\\" || a == \\\"T\\\" || a == \\\"G\\\") print}' /scratch/inmegen/100g/wg_GATK/perIndividuoGATK/${sample}/${sample}.ann.canon.vcf  | awk 'BEGIN {FS=\\\"\t\\\"}; {a=\\\$5}{if (a == \\\"A\\\" || a == \\\"C\\\" || a == \\\"T\\\" || a == \\\"G\\\") print}' | wc -l >SNV-variants-${sample}.txt \""; done >count-snv-variants.sh
