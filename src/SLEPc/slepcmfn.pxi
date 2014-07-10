cdef extern from * nogil:

    ctypedef char* SlepcMFNType "const char*"
    SlepcMFNType MFNKRYLOV

    ctypedef enum SlepcMFNConvergedReason "MFNConvergedReason":
        MFN_CONVERGED_TOL
        MFN_DIVERGED_ITS
        MFN_DIVERGED_BREAKDOWN
        MFN_CONVERGED_ITERATING

    int MFNCreate(MPI_Comm,SlepcMFN*)
    int MFNDestroy(SlepcMFN*)
    int MFNReset(SlepcMFN)
    int MFNView(SlepcMFN,PetscViewer)

    int MFNSetType(SlepcMFN,SlepcMFNType)
    int MFNGetType(SlepcMFN,SlepcMFNType*)
    int MFNSetFunction(SlepcMFN,SlepcFunction)
    int MFNGetFunction(SlepcMFN,SlepcFunction*)
    int MFNSetOperator(SlepcMFN,PetscMat)
    int MFNGetOperator(SlepcMFN,PetscMat*)
    int MFNSetOptionsPrefix(SlepcMFN,char*)
    int MFNGetOptionsPrefix(SlepcMFN,char*[])
    int MFNSetFromOptions(SlepcMFN)
    int MFNAppendOptionsPrefix(SlepcMFN,char*)
    int MFNSetUp(SlepcMFN)
    int MFNSolve(SlepcMFN,PetscVec,PetscVec)

    int MFNSetBV(SlepcMFN,SlepcBV)
    int MFNGetBV(SlepcMFN,SlepcBV*)
    int MFNSetDS(SlepcMFN,SlepcDS)
    int MFNGetDS(SlepcMFN,SlepcDS*)
    int MFNSetTolerances(SlepcMFN,PetscReal,PetscInt)
    int MFNGetTolerances(SlepcMFN,PetscReal*,PetscInt*)
    int MFNSetDimensions(SlepcMFN,PetscInt)
    int MFNGetDimensions(SlepcMFN,PetscInt*)
    int MFNSetScaleFactor(SlepcMFN,PetscScalar)
    int MFNGetScaleFactor(SlepcMFN,PetscScalar*)

    int MFNMonitorCancel(SlepcMFN)
    int MFNGetIterationNumber(SlepcMFN,PetscInt*)

    int MFNGetConvergedReason(SlepcMFN,SlepcMFNConvergedReason*)
