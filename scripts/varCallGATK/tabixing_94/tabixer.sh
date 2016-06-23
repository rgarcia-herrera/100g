bsub -q high -e %J_gzip.err -o %J_gzip.out -J output_1.vcf "bgzip -c /scratch/inmegen/100g/wg_GATK/test3/output_1.vcf > /scratch/inmegen/100g/wg_GATK/test3/output_1.vcf.gz && tabix -p vcf /scratch/inmegen/100g/wg_GATK/test3/output_1.vcf.gz"
bsub -q high -e %J_gzip.err -o %J_gzip.out -J output_2.vcf "bgzip -c /scratch/inmegen/100g/wg_GATK/test3/output_2.vcf > /scratch/inmegen/100g/wg_GATK/test3/output_2.vcf.gz && tabix -p vcf /scratch/inmegen/100g/wg_GATK/test3/output_2.vcf.gz"
bsub -q high -e %J_gzip.err -o %J_gzip.out -J output_3.vcf "bgzip -c /scratch/inmegen/100g/wg_GATK/test3/output_3.vcf > /scratch/inmegen/100g/wg_GATK/test3/output_3.vcf.gz && tabix -p vcf /scratch/inmegen/100g/wg_GATK/test3/output_3.vcf.gz"
bsub -q high -e %J_gzip.err -o %J_gzip.out -J output_5.vcf "bgzip -c /scratch/inmegen/100g/wg_GATK/test3/output_5.vcf > /scratch/inmegen/100g/wg_GATK/test3/output_5.vcf.gz && tabix -p vcf /scratch/inmegen/100g/wg_GATK/test3/output_5.vcf.gz"