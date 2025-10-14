module {
  smt.solver() : () -> () {
    %c5 = smt.int.constant 5
    %0 = smt.int2bv %c5 : !smt.bv<4>
  }
}

