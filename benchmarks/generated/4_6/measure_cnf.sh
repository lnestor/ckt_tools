for FILE in benchmarks/generated/4_6/*.v; do
  cat $FILE | tr -d ":\\" | sed "s/Lucas Nestor/LucasNestor/" > benchmarks/generated/4_6/temp.v
  python3 ckt_tools/ckt2cnf.py benchmarks/generated/4_6/temp.v
done
