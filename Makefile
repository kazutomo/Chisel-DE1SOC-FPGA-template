

all: Foobar.v

sof output_files/Simple.sof: Foobar.v
	quartus_sh --flow compile Simple.qpf

Foobar.v: Foobar.scala
	sbt "test:runMain foobar.TestMain"


clean:
	rm -rf project target test_run_dir generated *.class
	rm -rf *.fir *.anno.json


distclean: clean
	rm -rf *~ c5_pin_model_dump.txt
	rm -rf db incremental_db  output_files
	rm -f Foobar.v
