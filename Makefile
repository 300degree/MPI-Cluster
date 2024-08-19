MPICC = mpicc
MPIRUN = mpirun
CFLAGS = -g -Wall -std=c17

mpicc:
	$(MPICC) $(CFLAGS) ./main.c -o mpi-cluster

mpirun:
	$(MPIRUN) --host master:2,slave:2 -np 4 ./mpi-cluster
