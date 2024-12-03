MPICC = mpicc
MPIRUN = mpirun
CFLAGS = -Wall -std=c17

mpicc:
	$(MPICC) $(CFLAGS) ./main.c -o mpi-cluster

mpirun:
	$(MPIRUN) --host master:2,slave:2 ./mpi-cluster
