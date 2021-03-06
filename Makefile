CC=iverilog
OUT=run.out

all:
	echo "make {register32, mux32, regfile}"

register32: register32.v register32.t.v
	$(CC) -o $(OUT) register32.t.v && ./$(OUT)

mux32: mux32.v mux32.t.v
	$(CC) -o $(OUT) mux32.t.v && ./$(OUT)

regfile: regfile.v regfile.t.v
	$(CC) -o $(OUT) regfile.t.v && ./$(OUT)

clean:
	rm -r $(OUT)
